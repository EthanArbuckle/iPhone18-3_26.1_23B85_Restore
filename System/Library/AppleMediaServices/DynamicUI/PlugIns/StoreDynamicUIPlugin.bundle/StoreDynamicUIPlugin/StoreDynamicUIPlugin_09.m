void sub_EA488(void *a1)
{
  v2 = [a1 lockup];
  if (v2)
  {
    v3 = v2;
    v15 = [v2 id];
    v4 = [v3 kind];
    v5 = [v3 metrics];
    v6 = [v3 icon];
    v7 = sub_EB3B4(v3, &selRef_heading);
    v9 = v8;
    v10 = sub_EB3B4(v3, &selRef_ageRating);
    v12 = v11;
    v13 = [v3 offer];
    v14 = objc_allocWithZone(ASCLockup);
    v16 = sub_EB254(v15, v4, v5, v6, v7, v9, 0, 0, 0, 0, v10, v12, v13);
    [a1 setLockup:v16];
  }
}

void sub_EA690()
{
  [v0 setNeedsLayout];
  v1 = [v0 superview];
  [v1 setNeedsLayout];
}

void sub_EA75C(void *a1)
{
  v54 = a1;
  v2 = sub_139954();
  __chkstk_darwin(v2 - 8);
  sub_9EC0();
  v53 = v4 - v3;
  v5 = sub_4948(&unk_19EBC0);
  __chkstk_darwin(v5 - 8);
  v51 = &v47 - v6;
  if (qword_19A018 != -1)
  {
    swift_once();
  }

  v7 = sub_139A14();
  v56 = sub_4910(v7, qword_1B2B00);
  v8 = sub_4948(&unk_19E010);
  sub_1399C4();
  v52 = v8;
  *(swift_allocObject() + 16) = xmmword_13E660;
  v55 = type metadata accessor for ServiceDetailView();
  v60 = v55;
  v59[0] = v1;
  v9 = v1;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    sub_13BB84();
  }

  sub_139994();

  sub_3C04(v59);
  sub_139974();
  swift_getErrorValue();
  v12 = v57;
  v13 = v58;
  v60 = v58;
  v14 = sub_CC08(v59);
  (*(*(v13 - 1) + 16))(v14, v12, v13);
  sub_139984();
  sub_CC68(v59, &unk_1A06F0);
  sub_1399E4();

  v15 = *&v9[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_adamId];
  if (v15)
  {
    v16 = *&v9[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_bundleID + 8];
    if (v16)
    {
      v50 = *&v9[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_bundleID];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v18 = objc_opt_self();
      v19 = v15;

      v20 = [v18 bundleForClass:ObjCClassFromMetadata];
      if (*&v9[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupArtwork])
      {
        v49 = v19;

        v21 = v51;
        sub_1397D4();

        v22 = sub_1397E4();
        if (sub_52E0(v21, 1, v22) == 1)
        {

          sub_CC68(v21, &unk_19EBC0);
        }

        else
        {
          v23 = v20;
          v48 = sub_1397C4();
          v25 = v24;
          (*(*(v22 - 8) + 8))(v21, v22);
          if (v25)
          {
            sub_CACC(0, &unk_1A0710);
            v26 = v23;
            v27 = v25;
            v20 = v23;
            v28 = sub_111044(v48, v27, v23, 0);
            if (v28)
            {
              v29 = v28;

              sub_CACC(0, &qword_1A0708);
              v30 = sub_EAF74(v29, ASCArtworkDecorationRoundedRectPrerendered);

              v19 = v49;
LABEL_23:
              v42 = ASCLockupKindApp;
              v43 = objc_allocWithZone(ASCLockup);
              v44 = v30;
              v45 = v19;
              v46 = sub_EB254(v45, v42, 0, v30, 0, 0, 0, 0, 0, 0, 0, 0, 0);
              [v54 setLockup:v46];

              return;
            }
          }

          else
          {

            v20 = v23;
          }
        }

        v19 = v49;
      }

      *(swift_allocObject() + 16) = xmmword_13E650;
      v60 = v55;
      v59[0] = v9;
      v31 = v9;
      v32 = AMSLogKey();
      if (v32)
      {
        v33 = v32;
        sub_13BB84();
      }

      sub_139994();

      sub_3C04(v59);
      sub_139944();
      v61._countAndFlagsBits = 0xD000000000000028;
      v61._object = 0x8000000000151DA0;
      sub_139934(v61);
      v60 = sub_CACC(0, &qword_19B790);
      v59[0] = v19;
      v34 = v19;
      sub_139924();
      sub_CC68(v59, &unk_1A06F0);
      v62._countAndFlagsBits = 0x656C646E7562202CLL;
      v62._object = 0xEC000000203A6449;
      sub_139934(v62);
      v60 = &type metadata for String;
      v59[0] = v50;
      v59[1] = v16;

      sub_139924();
      sub_CC68(v59, &unk_1A06F0);
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      sub_139934(v63);
      sub_139964();
      sub_1399E4();

      sub_CACC(0, &qword_1A0700);
      v35 = sub_E1028();
      v36 = [objc_allocWithZone(ISImageDescriptor) initWithSize:64.0 scale:{64.0, 3.0}];
      v37 = [v35 prepareImageForDescriptor:v36];
      if (v37)
      {
        v38 = v37;
        v39 = [v37 CGImage];
        if (v39)
        {
          v40 = v39;
          v41 = [objc_allocWithZone(UIImage) initWithCGImage:v39];
          sub_CACC(0, &qword_1A0708);
          v30 = sub_EAF74(v41, ASCArtworkDecorationRoundedRect);

          goto LABEL_23;
        }
      }

      v30 = 0;
      goto LABEL_23;
    }
  }
}

id sub_EAF74(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:a1 decoration:a2];

  return v4;
}

void sub_EB044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v6 = *(a4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner);
  if (v6)
  {

    v6(v7);
    sub_C9FC(v6);
  }

  a5[2](a5, 0);

  _Block_release(a5);
}

id sub_EB180()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner);
  if (v1)
  {

    v1(v2);
    v3 = sub_17208();
    sub_C9FC(v3);
  }

  v4 = [objc_opt_self() defaultPresentationContext];

  return v4;
}

id sub_EB254(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a6)
  {
    v18 = sub_13BB54();
  }

  else
  {
    v18 = 0;
  }

  if (a8)
  {
    v19 = sub_13BB54();
  }

  else
  {
    v19 = 0;
  }

  if (a10)
  {
    v20 = sub_13BB54();
  }

  else
  {
    v20 = 0;
  }

  if (a12)
  {
    v21 = sub_13BB54();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v24 initWithID:a1 kind:a2 metrics:a3 icon:a4 heading:v18 title:v19 subtitle:v20 ageRating:v21 offer:a13];

  swift_unknownObjectRelease();
  return v22;
}

uint64_t sub_EB3B4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_13BB84();
  }

  return sub_17208();
}

char *sub_EB410(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, double a6, double a7)
{
  v11 = sub_13A434();
  v45[3] = v11;
  v45[4] = &protocol witness table for StaticDimension;
  v12 = sub_CC08(v45);
  (*(*(v11 - 8) + 32))(v12, a1, v11);
  *&a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_additionalMetrics] = 0;
  a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentAlignment] = 0;
  v13 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailLabel;
  sub_139BB4();
  v14 = objc_opt_self();
  v15 = [v14 ams_primaryText];
  v16 = sub_13A2A4();
  v43 = v16;
  v44 = &protocol witness table for FontSource;
  *sub_CC08(v42) = UIFontTextStyleSubheadline;
  v17 = *(*(v16 - 8) + 104);
  v17();
  v18 = UIFontTextStyleSubheadline;
  *&a5[v13] = sub_139BA4();
  v19 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailTop];
  v19[3] = &type metadata for Double;
  v19[4] = &protocol witness table for Double;
  *v19 = 0;
  v20 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_adamId;
  *&a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_adamId] = 0;
  v21 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_bundleID];
  *v21 = 0;
  v21[1] = 0;
  v22 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_contentMaxWidth];
  *v22 = 0;
  v22[8] = 1;
  *&a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupView] = 0;
  *&a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupArtwork] = 0;
  v23 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_postActionRunner];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_titleLabel;
  v25 = [v14 ams_primaryText];
  v43 = v16;
  v44 = &protocol witness table for FontSource;
  *sub_CC08(v42) = UIFontTextStyleHeadline;
  v17();
  v26 = UIFontTextStyleHeadline;
  *&a5[v24] = sub_139BA4();
  v27 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_applyCachedArtwork];
  *v27 = 0;
  v27[1] = 0;
  a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_isLockupFocused] = 0;
  v28 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_lockupSize];
  v29 = sub_139CF4();
  *v28 = 0;
  v28[1] = 0;
  v30 = objc_allocWithZone(v29);
  *&a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView] = sub_139CE4();
  sub_4B14(v45, &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_spacingDimension]);
  v31 = &a5[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkSize];
  *v31 = a6;
  v31[1] = a7;
  v32 = *&a5[v20];
  *&a5[v20] = a2;
  v33 = a2;

  *v21 = a3;
  v21[1] = a4;

  v41.receiver = a5;
  v41.super_class = type metadata accessor for ServiceDetailView();
  v34 = objc_msgSendSuper2(&v41, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v35 = *&v34[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_artworkImageView];
  v36 = v34;
  [v36 addSubview:v35];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_titleLabel]];
  [v36 addSubview:*&v36[OBJC_IVAR____TtC20StoreDynamicUIPlugin17ServiceDetailView_detailLabel]];
  sub_EA054();
  sub_EA1A8();

  sub_3C04(v45);
  return v36;
}

uint64_t sub_EB7DC()
{
  swift_weakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_EB810()
{

  sub_3C04(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_EB864()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_EB8B8(int a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v136 = a7;
  LODWORD(v135) = a1;
  v120 = sub_13A314();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_13A514();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  *&v131 = v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_13A4B4();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v134 = COERCE_DOUBLE(sub_13A4C4());
  v125 = *(v134 - 8);
  __chkstk_darwin(v134);
  v124 = v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = COERCE_DOUBLE(sub_13A454());
  v132 = *(*&v133 - 8);
  __chkstk_darwin(*&v133);
  v123 = v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v130 = COERCE_DOUBLE(sub_13A4F4());
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v116 = v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v122 = v112 - v21;
  v22 = sub_13C114();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0((a3 + 40), *(a3 + 64));
  if (sub_13A364())
  {
    v26 = 0;
  }

  else
  {
    sub_162F0((a3 + 40), *(a3 + 64));
    v26 = sub_13A324();
  }

  sub_162F0((a3 + 80), *(a3 + 104));
  if (sub_13A364())
  {
    v27 = 0;
  }

  else
  {
    sub_162F0((a3 + 80), *(a3 + 104));
    v27 = sub_13A324();
  }

  sub_2DAFC(a3 + 120, &v144);
  v28 = v145;
  sub_CC68(&v144, &unk_1A0730);
  if ((v26 | v27))
  {
    v113 = v27;
    v114 = v14;
    v115 = v13;
    v29 = *(a3 + 160);
    v30 = *(a3 + 240);
    v31 = *(a3 + 248);
    sub_162F0((a3 + 216), v30);
    sub_20038(v30, v31);
    sub_13A404();
    v33 = v32;
    v34 = v28;
    v35 = *(v23 + 8);
    v35(v25, v22);
    *&v112[1] = v29;
    v36 = v29 + v33;
    v117 = v34;
    if (v34)
    {
      v37 = *(a3 + 264);
      v38 = *(a3 + 240);
      v39 = *(a3 + 248);
      sub_162F0((a3 + 216), v38);
      sub_20038(v38, v39);
      sub_13A404();
      v41 = v40;
      v35(v25, v22);
      v42 = v37 + v41;
    }

    else
    {
      v42 = 0.0;
    }

    *&v112[2] = v42;
    sub_13BE34();
    sub_13BE44();
    v45 = *(a3 + 200);
    v46 = *(a3 + 208);
    sub_162F0((a3 + 176), v45);
    sub_20038(v45, v46);
    v121 = a2;
    sub_13A404();
    v48 = v47;
    v35(v25, v22);
    if (v26)
    {
      v49 = *(a3 + 64);
      v50 = *(a3 + 72);
      v51 = sub_162F0((a3 + 40), v49);
      v145 = v49;
      v146 = *(v50 + 8);
      v52 = sub_CC08(&v144);
      (*(*(v49 - 8) + 16))(v52, v51, v49);
      v142 = &type metadata for Double;
      v143 = &protocol witness table for Double;
      v140 = 0;
      v141 = 0;
      v139 = 0u;
      v138 = 0u;
      v53 = v123;
      v54 = v133;
      (*(*&v132 + 104))(v123, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), COERCE_DOUBLE(*&v133));
      v55 = v125;
      v56 = v124;
      v57 = v134;
      (*(v125 + 104))(v124, enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:), v134);
      sub_4948(&qword_19AFE8);
      v58 = v127;
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_140280;
      sub_13A484();
      v137 = v59;
      sub_9A68(&qword_1A0740, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
      sub_4948(&qword_19AFF0);
      sub_1D268();
      v60 = v126;
      v61 = v128;
      sub_13BF64();
      sub_13A4E4();
      (*(v58 + 8))(v60, v61);
      (*(v55 + 8))(v56, v57);
      (*(*&v132 + 8))(v53, COERCE_DOUBLE(*&v54));
      sub_CC68(&v138, &qword_19AFF8);
      sub_3C04(&v141);
      sub_3C04(&v144);
      sub_58ABC(0, 1, 1, _swiftEmptyArrayStorage);
      v63 = v62;
      v65 = *(v62 + 16);
      v64 = *(v62 + 24);
      v66 = v117;
      if (v65 >= v64 >> 1)
      {
        sub_58ABC(v64 > 1, v65 + 1, 1, v62);
        v63 = v109;
      }

      v63[2] = v65 + 1;
      (*(v129 + 32))(v63 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v65, v122, v130);
    }

    else
    {
      v63 = _swiftEmptyArrayStorage;
      v66 = v117;
    }

    if (v113)
    {
      v67 = *(a3 + 104);
      v68 = *(a3 + 112);
      v69 = sub_162F0((a3 + 80), v67);
      v145 = v67;
      v146 = *(v68 + 8);
      v70 = sub_CC08(&v144);
      (*(*(v67 - 8) + 16))(v70, v69, v67);
      v142 = &type metadata for CGFloat;
      v143 = &protocol witness table for CGFloat;
      v141 = v48;
      v140 = 0;
      v139 = 0u;
      v138 = 0u;
      v71 = v132;
      v72 = v123;
      (*(*&v132 + 104))(v123, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), COERCE_DOUBLE(*&v133));
      v73 = v125;
      v74 = v124;
      (*(v125 + 104))(v124, enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:), v134);
      sub_4948(&qword_19AFE8);
      v75 = v127;
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_140280;
      sub_13A484();
      v137 = v76;
      sub_9A68(&qword_1A0740, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
      sub_4948(&qword_19AFF0);
      sub_1D268();
      v77 = v126;
      v78 = v128;
      sub_13BF64();
      v79 = v116;
      sub_13A4E4();
      (*(v75 + 8))(v77, v78);
      (*(v73 + 8))(v74, v134);
      (*(*&v71 + 8))(v72, COERCE_DOUBLE(*&v133));
      sub_CC68(&v138, &qword_19AFF8);
      sub_3C04(&v141);
      sub_3C04(&v144);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_58ABC(0, v63[2] + 1, 1, v63);
        v63 = v110;
      }

      v81 = v63[2];
      v80 = v63[3];
      v82 = v115;
      v83 = v114;
      v84 = v131;
      v66 = v117;
      if (v81 >= v80 >> 1)
      {
        sub_58ABC(v80 > 1, v81 + 1, 1, v63);
        v63 = v111;
      }

      v63[2] = v81 + 1;
      (*(v129 + 32))(v63 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v81, v79, v130);
    }

    else
    {
      v82 = v115;
      v83 = v114;
      v84 = v131;
    }

    sub_13A4D4();
    sub_13A464();
    v87 = v85;
    v88 = v86;
    if ((LOBYTE(v135) & 1) == 0)
    {
      goto LABEL_47;
    }

    v89 = *(a3 + 256);
    v90 = *(a3 + 168);
    *v112 = v36;
    *&v134 = v86;
    if (v89)
    {
      if (v86 >= v90)
      {
        v94 = *(a3 + 272);
        if (v86 >= v94)
        {
          v135 = *(a3 + 272);
          sub_162F0(a3, *(a3 + 24));
          v157.origin.x = a4;
          v157.origin.y = a5;
          v157.size.width = a6;
          v105 = v136;
          v157.size.height = v136;
          CGRectGetMinX(v157);
          v158.origin.x = a4;
          v158.origin.y = a5;
          v158.size.width = a6;
          v158.size.height = v105;
          CGRectGetMinY(v158);
          sub_13BE44();
          sub_13A354();
          if (v66)
          {
            sub_2DAFC(a3 + 120, &v144);
            if (v145)
            {
              sub_162F0(&v144, v145);
              v159.origin.x = a4;
              v159.origin.y = a5;
              v159.size.width = a6;
              v106 = v136;
              v159.size.height = v136;
              CGRectGetMaxX(v159);
              v160.origin.x = a4;
              v160.origin.y = a5;
              v160.size.width = a6;
              v160.size.height = v106;
              CGRectGetMinY(v160);
              sub_13BE44();
              sub_13A354();
              sub_3C04(&v144);
            }

            else
            {
              sub_CC68(&v144, &unk_1A0730);
            }
          }

          v88 = *&v134;
          goto LABEL_46;
        }

        v135 = v85;
        v91 = a5;
        v92 = a6;
        v93 = v136;
      }

      else
      {
        v135 = v85;
        v91 = a5;
        v92 = a6;
        v93 = v136;
        v94 = *(a3 + 272);
      }

      sub_103E90(_swiftEmptyArrayStorage, v90, v94, *&v134);
      v133 = v103;
      sub_162F0(a3, *(a3 + 24));
      v153.origin.x = a4;
      v153.origin.y = v91;
      v153.size.width = v92;
      v153.size.height = v93;
      CGRectGetMinX(v153);
      v154.origin.x = a4;
      v154.origin.y = v91;
      v154.size.width = v92;
      v154.size.height = v93;
      CGRectGetMinY(v154);
      a6 = v92;
      a5 = v91;
      sub_13BE44();
      sub_13A354();
      if (v66)
      {
        sub_2DAFC(a3 + 120, &v144);
        if (v145)
        {
          v104 = v136;
          v133 = round((v133 - v94) * 0.5);
          sub_162F0(&v144, v145);
          v155.origin.x = a4;
          v155.origin.y = v91;
          v155.size.width = v92;
          v155.size.height = v104;
          CGRectGetMaxX(v155);
          v156.origin.x = a4;
          v156.origin.y = v91;
          v156.size.width = v92;
          v156.size.height = v104;
          CGRectGetMinY(v156);
          a5 = v91;
          sub_13BE44();
          sub_13A354();
          sub_3C04(&v144);
        }

        else
        {
          sub_CC68(&v144, &unk_1A0730);
        }
      }

      v88 = *&v134;
      sub_103E90(_swiftEmptyArrayStorage, v90, v94, *&v134);
    }

    else
    {
      v135 = v85;
      v95 = *(a3 + 272);
      sub_103E90(_swiftEmptyArrayStorage, v90, v95, v86);
      v130 = v96;
      v97 = a4;
      v98 = v136;
      sub_162F0(a3, *(a3 + 24));
      v149.origin.x = v97;
      v149.origin.y = a5;
      v149.size.width = a6;
      v149.size.height = v98;
      CGRectGetMinX(v149);
      v150.origin.x = v97;
      v150.origin.y = a5;
      v150.size.width = a6;
      v150.size.height = v98;
      CGRectGetMinY(v150);
      v131 = v97;
      v132 = a5;
      v133 = a6;
      v99 = v95;
      sub_13BE44();
      sub_13A354();
      if (v66)
      {
        sub_2DAFC(a3 + 120, &v144);
        if (v145)
        {
          sub_162F0(&v144, v145);
          v100 = v131;
          v151.origin.x = v131;
          v101 = v132;
          v151.origin.y = v132;
          *&v130 = v95;
          v102 = v133;
          v151.size.width = v133;
          v151.size.height = v98;
          CGRectGetMaxX(v151);
          v152.origin.x = v100;
          v152.origin.y = v101;
          v152.size.width = v102;
          v152.size.height = v98;
          CGRectGetMinY(v152);
          v99 = *&v130;
          sub_13BE44();
          sub_13A354();
          sub_3C04(&v144);
        }

        else
        {
          sub_CC68(&v144, &unk_1A0730);
        }
      }

      v88 = *&v134;
      sub_103E90(_swiftEmptyArrayStorage, v90, v99, *&v134);
      a6 = v133;
      a5 = v132;
      a4 = v131;
    }

    v87 = v135;
LABEL_46:
    v36 = *v112;
    sub_13BE34();
    sub_13BE44();
    v107 = v118;
    sub_13A474();
    (*(v119 + 8))(v107, v120);
LABEL_47:
    sub_103E90(_swiftEmptyArrayStorage, *(a3 + 168), *(a3 + 272), v88);
    if (v66)
    {
      v161.origin.x = a4;
      v161.origin.y = a5;
      v161.size.width = a6;
      v161.size.height = v136;
      Width = CGRectGetWidth(v161);
      (*(v83 + 8))(COERCE_DOUBLE(*&v84), v82);
    }

    else
    {
      (*(v83 + 8))(COERCE_DOUBLE(*&v84), v82);
      return v36 + v87;
    }

    return Width;
  }

  if (LOBYTE(v135))
  {
    sub_162F0(a3, *(a3 + 24));
    v147.origin.x = a4;
    v147.origin.y = a5;
    v147.size.width = a6;
    v43 = v136;
    v147.size.height = v136;
    CGRectGetMinX(v147);
    v148.origin.x = a4;
    v148.origin.y = a5;
    v148.size.width = a6;
    v148.size.height = v43;
    CGRectGetMinY(v148);
    sub_13BE44();
    sub_13A354();
  }

  return *(a3 + 160);
}

uint64_t type metadata accessor for ServiceOption()
{
  result = qword_1A07C8;
  if (!qword_1A07C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_ECEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a3;
  v6 = sub_4948(&qword_19A420);
  __chkstk_darwin(v6 - 8);
  v102 = &v95 - v7;
  v101 = sub_4948(&qword_19A350);
  sub_9F94();
  __chkstk_darwin(v8);
  v103 = &v95 - v9;
  v107 = sub_13B584();
  v109 = *(v107 - 8);
  __chkstk_darwin(v107);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v13);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v14);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v15);
  sub_18C34();
  sub_18B60();
  __chkstk_darwin(v16);
  v17 = type metadata accessor for ServiceOption();
  sub_9F94();
  __chkstk_darwin(v18);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v108 = swift_initStackObject();
  v21 = sub_BB310();
  v23 = v3;
  v100 = v11;
  v120 = a2;
  if (v3)
  {

    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  *v20 = v21;
  *(v20 + 1) = v22;
  v105 = v22;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_139DB4();
  if (v23)
  {

    sub_18B90();
    sub_928C(v119, &qword_19E960);
LABEL_6:
    sub_13BAB4();
    sub_EE0DC();
    sub_EDD48(v24, v25);
    sub_9F18();
    *v26 = 0x6C6961746564;
    v26[1] = 0xE600000000000000;
    v26[2] = v17;
    sub_2B538();
    (*(v27 + 104))();
    swift_willThrow();
    v28 = *(v109 + 8);
    v29 = sub_EE138();
    v28(v29);

    sub_EE104();
    goto LABEL_7;
  }

  v28 = *(v109 + 8);
  v42 = sub_EE138();
  v28(v42);
  sub_EE18C();
LABEL_7:
  *(v20 + 1) = sub_EE14C();
  *(v20 + 2) = v30;
  *(v20 + 6) = v111;
  v31 = sub_BB310();
  v104 = v28;
  *&v110[0] = v31;
  *(&v110[0] + 1) = v32;
  sub_13BFB4();
  v98 = a1;
  sub_13B594();
  v33 = sub_13B564();
  v96 = 0;
  if (v33)
  {
LABEL_10:
    sub_13BAB4();
    sub_EE0DC();
    sub_EDD48(v35, v36);
    sub_9F18();
    *v37 = 0xD000000000000011;
    v37[1] = 0x800000000014E730;
    v37[2] = v17;
    sub_2B538();
    (*(v38 + 104))();
    swift_willThrow();
    sub_EE0F4();
    v39();

    v40 = sub_13B7A4();
    v41 = v103;
    sub_53A8(v103, 1, 1, v40);
    goto LABEL_13;
  }

  v34 = v102;
  sub_7738();
  if (sub_52E0(v34, 1, v101) == 1)
  {
    sub_928C(v34, &qword_19A420);
    goto LABEL_10;
  }

  sub_EE0F4();
  v43();
  v44 = v34;
  v41 = v103;
  sub_92E4(v44, v103);
LABEL_13:
  sub_92E4(v41, &v20[v17[10]]);
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_EE0DC();
    sub_EDD48(v45, v46);
    sub_18B70();
    *v47 = 1868983913;
    v47[1] = 0xE400000000000000;
    v47[2] = v17;
    sub_2B538();
    (*(v48 + 104))();
    swift_willThrow();
    sub_EE0F4();
    v49();

    sub_EE104();
  }

  else
  {
    sub_139DB4();
    sub_EE0F4();
    v76();
    sub_EE18C();
  }

  *(v20 + 56) = sub_EE14C();
  *(v20 + 72) = v50;
  *(v20 + 11) = v111;
  v51 = sub_BB458();
  v52 = v120;
  v20[v17[12]] = v51 & 1;
  sub_EE178();
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_EE0DC();
    sub_EDD48(v53, v54);
    sub_18B70();
    *v55 = 0x6575676573;
    v55[1] = 0xE500000000000000;
    v55[2] = v17;
    sub_2B538();
    (*(v56 + 104))();
    swift_willThrow();
    sub_EE124();
    sub_EE0F4();
    v57();

    sub_EE104();
  }

  else
  {
    sub_139BC4();
    sub_EE124();
    sub_EE0F4();
    v88();
    sub_EE18C();
  }

  v58 = &v20[v17[11]];
  v59 = v110[1];
  *v58 = v110[0];
  *(v58 + 1) = v59;
  *(v58 + 4) = v111;
  v60 = v99;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_22;
  }

  sub_895C();
  if (*(&v110[0] + 1) == 1)
  {
    sub_928C(v110, &qword_1A0768);
LABEL_22:
    sub_13BAB4();
    sub_EE0DC();
    sub_EDD48(v61, v62);
    sub_18B70();
    *v63 = 0x65636976726573;
    v63[1] = 0xE700000000000000;
    v63[2] = v17;
    sub_2B538();
    (*(v64 + 104))();
    swift_willThrow();
    sub_EE124();
    sub_EE0F4();
    v65();

    v66 = 0;
    v67 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
    v72 = 0uLL;
    v73 = 0uLL;
    v74 = 0uLL;
    v75 = 0uLL;
    goto LABEL_24;
  }

  sub_EE124();
  sub_EE0F4();
  v77();
  v67 = sub_EE14C();
  v69 = v111;
  v70 = v112;
  v71 = v113;
  v72 = v114;
  v73 = v115;
  v74 = v116;
  v75 = v117;
  v66 = v118;
LABEL_24:
  *(v20 + 6) = v67;
  *(v20 + 7) = v68;
  *(v20 + 8) = v69;
  *(v20 + 9) = v70;
  *(v20 + 10) = v71;
  *(v20 + 11) = v72;
  *(v20 + 12) = v73;
  *(v20 + 13) = v74;
  *(v20 + 14) = v75;
  *(v20 + 30) = v66;
  sub_EE178();
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_EE0DC();
    sub_EDD48(v78, v79);
    sub_9F18();
    *v80 = 0x656C746974;
    v80[1] = 0xE500000000000000;
    v80[2] = v17;
    sub_2B538();
    (*(v81 + 104))();
    swift_willThrow();

    v82 = sub_EE160();
    v84 = *(v83 - 256);
    v85 = v104;
    (v104)(v82, v84);
    v85(v60, v84);
    v86 = v96;
    sub_13B5A4();
    sub_9F94();
    (*(v87 + 8))(v52);

    sub_928C((v20 + 16), &qword_19E960);
    if (!v86)
    {
      sub_928C((v20 + 56), &qword_19E960);
    }

    sub_928C((v20 + 96), &qword_1A0760);
    if (!v86)
    {
      sub_9238((v20 + 288));
      sub_928C(&v20[v17[10]], &qword_19A350);
    }

    return sub_928C(&v20[v17[11]], &unk_19E320);
  }

  else
  {
    sub_139DB4();
    v89 = sub_EE160();
    v91 = *(v90 - 256);
    v92 = v104;
    (v104)(v89, v91);
    v92(v60, v91);
    sub_EE18C();
    sub_9414(v110, (v20 + 248));
    sub_EDD90(v20, v97);
    sub_13B5A4();
    sub_9F94();
    (*(v93 + 8))(v52);
    return sub_EDDF4(v20);
  }
}

uint64_t sub_EDD48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_EDD90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceOption();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_EDDF4(uint64_t a1)
{
  v2 = type metadata accessor for ServiceOption();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_EDE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 272);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_4948(&qword_19A350);
    v9 = a1 + *(a3 + 40);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_EDF0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 272) = (a2 - 1);
  }

  else
  {
    v7 = sub_4948(&qword_19A350);
    v8 = v5 + *(a4 + 40);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

void sub_EDF98()
{
  sub_189DC(319, &qword_19AE28);
  if (v0 <= 0x3F)
  {
    sub_248F4(319, &qword_19AE40, &qword_19AE48);
    if (v1 <= 0x3F)
    {
      sub_189DC(319, &qword_1A07D8);
      if (v2 <= 0x3F)
      {
        sub_18A28();
        if (v3 <= 0x3F)
        {
          sub_54D0();
          if (v4 <= 0x3F)
          {
            sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

double sub_EE104()
{
  *(v0 - 288) = 0;
  result = 0.0;
  *(v0 - 304) = 0u;
  *(v0 - 320) = 0u;
  return result;
}

uint64_t sub_EE18C()
{

  return sub_9414((v0 - 160), v0 - 320);
}

void sub_EE1A4()
{
  v1 = v0;
  swift_getKeyPath();
  sub_4948(&qword_1A0870);
  sub_13B5E4();

  if (*&v47[8])
  {
    v2 = memcpy(__dst, v47, sizeof(__dst));
    v10 = sub_EE8A4(v2, v3, v4, v5, v6, v7, v8, v9, *v47, *&v47[8], *&v47[16], *&v47[24], *&v47[32], *&v47[40], *&v47[48], *&v47[56], *&v47[64], *&v47[72], *&v47[80], *&v47[88], *&v47[96], *&v47[104], *&v47[112], *&v47[120], *&v47[128], *&v47[136], *&v47[144], __dst[0]);
    sub_EFEE0(v10, v11);
    sub_4D9A0(__dst);
  }

  else
  {
    sub_CC68(v47, &qword_1A0760);
  }

  swift_getKeyPath();
  sub_EE870();

  if (*&v47[24])
  {
    sub_9414(v47, __dst);
    sub_EE88C();
    v20 = sub_EE8A4(v12, v13, v14, v15, v16, v17, v18, v19, *v47, *&v47[8], *&v47[16], *&v47[24], *&v47[32], *&v47[40], *&v47[48], *&v47[56], *&v47[64], *&v47[72], *&v47[80], *&v47[88], *&v47[96], *&v47[104], *&v47[112], *&v47[120], *&v47[128], *&v47[136], *&v47[144], __dst[0]);
    v21(v20);
    sub_3C04(__dst);
  }

  else
  {
    sub_CC68(v47, &qword_19E960);
  }

  swift_getKeyPath();
  sub_EE870();

  if (*&v47[24])
  {
    sub_9414(v47, __dst);
    sub_EE88C();
    v30 = sub_EE8A4(v22, v23, v24, v25, v26, v27, v28, v29, *v47, *&v47[8], *&v47[16], *&v47[24], *&v47[32], *&v47[40], *&v47[48], *&v47[56], *&v47[64], *&v47[72], *&v47[80], *&v47[88], *&v47[96], *&v47[104], *&v47[112], *&v47[120], *&v47[128], *&v47[136], *&v47[144], __dst[0]);
    v31(v30);
    sub_3C04(__dst);
  }

  else
  {
    sub_CC68(v47, &qword_19E960);
  }

  swift_getKeyPath();
  sub_13B5E4();

  v40 = sub_EE8A4(v32, v33, v34, v35, v36, v37, v38, v39, *v47, *&v47[8], *&v47[16], *&v47[24], *&v47[32], *&v47[40], *&v47[48], *&v47[56], *&v47[64], *&v47[72], *&v47[80], *&v47[88], *&v47[96], *&v47[104], *&v47[112], *&v47[120], *&v47[128], *&v47[136], *&v47[144], __dst[0]);
  v41(v40);
  sub_3C04(__dst);
  swift_getKeyPath();
  sub_4948(&qword_19C4C8);
  sub_314E0();
  sub_13BAD4();

  v42 = __dst[0];
  swift_getKeyPath();
  sub_EE870();

  if (v42)
  {
    if (v42 == 1)
    {
      v43 = v47[0];
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    v43 = 1;
  }

  v44 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_isToggled;
  swift_beginAccess();
  v1[v44] = v43;
  sub_EF02C();
  v45 = [v1 contentView];
  swift_getKeyPath();
  sub_EE870();

  if (*&v47[8])
  {
    v46 = sub_13BB54();
  }

  else
  {
    v46 = 0;
  }

  [v45 setAccessibilityLabel:v46];
}

uint64_t sub_EE57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ServiceOptionComponent();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_EE5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ServiceOptionComponent();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, v9, a5);
}

uint64_t sub_EE64C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.isHighlightableWithoutSegue.getter(a1, WitnessTable);
}

uint64_t sub_EE6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.apply(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_EE71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.didSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_EE798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return ComponentCell.shouldSelect(contentsOf:with:asPartOf:)(a1, a2, a3, a4, WitnessTable);
}

unint64_t sub_EE818()
{
  result = qword_19F228;
  if (!qword_19F228)
  {
    type metadata accessor for ServiceOption();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19F228);
  }

  return result;
}

uint64_t sub_EE870()
{

  return sub_13B5E4();
}

UIFontTextStyle sub_EE8B0()
{
  v0 = sub_13A3E4();
  sub_7E5D8(v0, qword_1B2B80);
  v1 = sub_4910(v0, qword_1B2B80);
  *v1 = UIFontTextStyleCaption1;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleCaption1;
}

id sub_EE960(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_13BB54();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

id sub_EE9D0(double a1, double a2, double a3, double a4)
{
  v9 = sub_13A2A4();
  sub_9E94();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_9EC0();
  v47 = v14 - v13;
  v49 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_detailLabel;
  sub_139BB4();
  v48 = objc_opt_self();
  v15 = [v48 ams_primaryText];
  *(&v70 + 1) = v9;
  v71 = &protocol witness table for FontSource;
  *sub_CC08(&v69) = UIFontTextStyleCaption1;
  v16 = v11[13];
  v16();
  v17 = UIFontTextStyleCaption1;
  *&v4[v49] = sub_F2668();
  v50 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_infoLabel;
  v18 = [v48 ams_secondaryText];
  *(&v70 + 1) = v9;
  v71 = &protocol witness table for FontSource;
  *sub_CC08(&v69) = v17;
  v16();
  v19 = v4;
  *&v4[v50] = sub_F2668();
  v20 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_titleLabel;
  v21 = [v48 ams_primaryText];
  *(&v70 + 1) = v9;
  v71 = &protocol witness table for FontSource;
  *sub_CC08(&v69) = UIFontTextStyleHeadline;
  v51 = v16;
  v16();
  v22 = UIFontTextStyleHeadline;
  *&v4[v20] = sub_139BA4();
  v23 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_containerView;
  *&v19[v23] = [objc_allocWithZone(AMSUICommonView) init];
  v24 = &v19[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_contentViewContentInsets];
  __asm { FMOV            V0.2D, #16.0 }

  *v24 = _Q0;
  v24[1] = _Q0;
  v30 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_gridView;
  type metadata accessor for ServicesGridView();
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  *&v19[v30] = sub_117788(0, 1, &v69, 0, 0, 1, 0, 1, &v66);
  v31 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_selectedStatusView;
  *&v19[v31] = [objc_allocWithZone(AMSUICommonImageView) init];
  v32 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_separatorView;
  *&v19[v32] = [objc_allocWithZone(AMSUICommonView) init];
  v33 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_metrics;
  *(&v70 + 1) = &type metadata for Double;
  v71 = &protocol witness table for Double;
  *&v69 = 0;
  *(&v67 + 1) = &type metadata for CGFloat;
  v68 = &protocol witness table for CGFloat;
  *&v66 = 0x4028000000000000;
  v64 = &type metadata for CGFloat;
  v65 = &protocol witness table for CGFloat;
  v62 = &protocol witness table for Double;
  *&v63 = 0x4036000000000000;
  v61 = &type metadata for Double;
  *&v60 = 0;
  if (qword_19A098 != -1)
  {
    swift_once();
  }

  v34 = &v19[v33];
  v35 = sub_13A3E4();
  v45 = sub_4910(v35, qword_1B2B80);
  v44 = *(*(v35 - 8) + 16);
  v46 = v19;
  v44(v47, v45, v35);
  v43 = enum case for FontSource.useCase(_:);
  (v51)(v47);
  v36 = sub_13A434();
  v58 = v36;
  v59 = &protocol witness table for StaticDimension;
  sub_CC08(&v57);
  v55 = v9;
  v56 = &protocol witness table for FontSource;
  v37 = sub_CC08(&v54);
  v38 = v11[2];
  v38(v37, v47, v9);
  sub_13A444();
  v39 = v11[1];
  v39(v47, v9);
  v44(v47, v45, v35);
  (v51)(v47, v43, v9);
  v55 = v36;
  v56 = &protocol witness table for StaticDimension;
  sub_CC08(&v54);
  v53[3] = v9;
  v53[4] = &protocol witness table for FontSource;
  v40 = sub_CC08(v53);
  v38(v40, v47, v9);
  sub_13A444();
  v39(v47, v9);
  *(v34 + 264) = &type metadata for CGFloat;
  *(v34 + 240) = 0x4014000000000000;
  *(v34 + 304) = &type metadata for CGFloat;
  *(v34 + 312) = &protocol witness table for CGFloat;
  *(v34 + 272) = &protocol witness table for CGFloat;
  *(v34 + 280) = 0x4024000000000000;
  sub_21520(&v69, v34);
  sub_21520(&v66, v34 + 40);
  sub_21520(&v63, v34 + 80);
  sub_21520(&v60, v34 + 120);
  sub_21520(&v57, v34 + 160);
  sub_21520(&v54, v34 + 200);
  *(v34 + 320) = 1;
  v46[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_isToggled] = 0;
  v52.receiver = v46;
  v52.super_class = type metadata accessor for ServiceOptionComponent();
  v41 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  sub_EFFA0();

  return v41;
}

void sub_EF02C()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_isToggled;
  sub_57304();
  if (*(v0 + v1) != 1)
  {
    sub_F0404();
    sub_F037C();
    v12 = [v0 contentView];
    v13 = [v12 layer];

    if (qword_19A0C0 != -1)
    {
      swift_once();
    }

    [v13 setBorderWidth:*&qword_1A0898];

    v14 = [v0 contentView];
    v15 = [v14 layer];

    if (qword_19A0B8 != -1)
    {
      swift_once();
    }

    [v15 setBorderColor:qword_1A0890];

    v10 = [v0 contentView];
    [v10 setAccessibilityTraits:UIAccessibilityTraitButton];
    goto LABEL_15;
  }

  sub_F0558();
  sub_F0388();
  v2 = [v0 contentView];
  v3 = [v2 layer];

  [v3 setBorderWidth:2.0];
  v4 = [v0 contentView];
  v5 = [v4 layer];

  v6 = [v0 tintColor];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 CGColor];

    [v5 setBorderColor:v8];
    v9 = [v0 contentView];
    v10 = v9;
    v11 = UIAccessibilityTraitButton;
    if (UIAccessibilityTraitButton)
    {
      if ((UIAccessibilityTraitSelected & ~UIAccessibilityTraitButton) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (!UIAccessibilityTraitSelected)
    {
      v11 = 0;
      goto LABEL_14;
    }

    v11 = UIAccessibilityTraitSelected | UIAccessibilityTraitButton;
LABEL_14:
    [v9 setAccessibilityTraits:v11];
LABEL_15:

    return;
  }

  __break(1u);
}

uint64_t sub_EF2F8()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_isToggled;
  sub_57304();
  return *(v0 + v1);
}

void sub_EF32C(char a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_isToggled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_EF02C();
}

uint64_t sub_EF380()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for ServiceOptionComponent();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  sub_4ACC4();
  (*(v1 + 392))();
  sub_117FB4();
  sub_4ACC4();
  (*(v2 + 392))();
  sub_4ACC4();
  return (*(v3 + 392))();
}

uint64_t sub_EF4F4()
{
  sub_13A314();
  sub_9E94();
  v31 = v2;
  v32 = v1;
  __chkstk_darwin(v1);
  sub_9EC0();
  v30 = v4 - v3;
  v52.receiver = v0;
  v52.super_class = type metadata accessor for ServiceOptionComponent();
  objc_msgSendSuper2(&v52, "layoutSubviews");
  v5 = [v0 contentView];
  [v5 bounds];
  sub_1D3D0();

  v6 = sub_35BE8();
  [v7 v8];
  sub_F1570(&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_metrics], &v51);
  v9 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_titleLabel];
  v34 = sub_139BB4();
  sub_1D3B8();
  v35 = sub_9A68(v10, v11);
  v33 = v9;
  v12 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_selectedStatusView];
  v37 = sub_CACC(0, &qword_19C568);
  v38 = &protocol witness table for UIView;
  v36 = v12;
  v13 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_infoLabel];
  v40 = v34;
  v41 = v35;
  v39 = v13;
  v14 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_gridView];
  v46 = type metadata accessor for ServicesGridView();
  v47 = &protocol witness table for UIView;
  v45 = v14;
  v15 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_separatorView];
  v49 = sub_CACC(0, &qword_19E9B0);
  v50 = &protocol witness table for UIView;
  v16 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_detailLabel];
  v48 = v15;
  v43 = v34;
  v44 = v35;
  v42 = v16;
  v17 = v9;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = [v0 contentView];
  [v23 bounds];
  sub_1D3D0();

  sub_27C54();
  sub_13BE34();
  sub_1D3D0();
  v24 = [v0 contentView];
  sub_35BE8();
  ServiceOptionComponentLayout.placeChildren(relativeTo:in:)(v25, v26, v27, v28);

  (*(v31 + 8))(v30, v32);
  return sub_F25A4(&v33);
}

id sub_EF850()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceOptionComponent();
  return objc_msgSendSuper2(&v2, "isHighlighted");
}

void sub_EF8D8(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ServiceOptionComponent();
  objc_msgSendSuper2(&v3, "setHighlighted:", a1 & 1);
  sub_EF920();
}

void sub_EF920()
{
  v1 = v0;
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    v6 = sub_139A24();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      sub_EFA38([v1 isHighlighted]);
    }
  }
}

void sub_EFA38(char a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_F154C;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_E2448;
  v6[3] = &unk_18CF50;
  v5 = _Block_copy(v6);

  [v2 animateWithDuration:v5 animations:0.25];
  _Block_release(v5);
}

void sub_EFB44(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong contentView];

    if (a2)
    {
      if (qword_19A0B0 != -1)
      {
        swift_once();
      }

      v6 = &qword_1A0888;
    }

    else
    {
      if (qword_19A0A0 != -1)
      {
        swift_once();
      }

      v6 = &qword_1A0878;
    }

    [v5 setBackgroundColor:*v6];
  }
}

void sub_EFC48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceOptionComponent();
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_isToggled;
  swift_beginAccess();
  *(v0 + v1) = *(v0 + v1);
  sub_EF02C();
}

void sub_EFCF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_139A34();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for ServiceOptionComponent();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  if (!_UISolariumEnabled() || ((*(v6 + 104))(v10, enum case for FlagKeys.Solarium(_:), v4), v11 = sub_139A24(), (*(v6 + 8))(v10, v4), (v11 & 1) == 0))
  {
    v12 = [v2 contentView];
    v13 = [objc_opt_self() ams_shadow];
    v14 = [v13 CGColor];

    v15 = sub_4AD60();
    sub_12BE00(v14, v15, v16, v17, v18);
  }
}

uint64_t sub_EFEE0(uint64_t a1, uint64_t a2)
{
  sub_4948(&qword_19C2E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_140280;
  *(inited + 56) = &type metadata for MarketingItemService;
  *(inited + 64) = &off_18B6B8;
  v5 = swift_allocObject();
  *(inited + 32) = v5;
  sub_4D8D4(a1, v5 + 16);
  sub_1180F8(inited, a2);
  swift_setDeallocating();
  return sub_118CF8();
}

id sub_EFFA0()
{
  v1 = v0;
  v2 = sub_139A34();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v9 = [v0 contentView];
  if (qword_19A0A0 != -1)
  {
    swift_once();
  }

  [v9 setBackgroundColor:qword_1A0878];

  v10 = sub_3F15C();
  if (qword_19A0A8 != -1)
  {
    swift_once();
  }

  sub_127EDC(*&qword_1A0880);

  v11 = sub_3F15C();
  v12 = [v11 layer];

  [v12 setBorderWidth:2.0];
  if (!_UISolariumEnabled() || ((*(v4 + 104))(v8, enum case for FlagKeys.Solarium(_:), v2), v13 = sub_139A24(), (*(v4 + 8))(v8, v2), (v13 & 1) == 0))
  {
    v14 = sub_3F15C();
    v15 = [objc_opt_self() ams_shadow];
    v16 = [v15 CGColor];

    v17 = sub_4AD60();
    sub_12BE00(v16, v17, v18, v19, v20);
  }

  v21 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_containerView];
  v22 = [objc_opt_self() ams_clear];
  [v21 setBackgroundColor:v22];

  v23 = sub_3F15C();
  [v23 addSubview:v21];

  v24 = [v21 layer];
  [v24 setMasksToBounds:1];

  v25 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_selectedStatusView];
  [v25 setContentMode:2];
  [v21 addSubview:v25];
  sub_F264C(OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_titleLabel);
  sub_F264C(OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_infoLabel);
  sub_F264C(OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_gridView);
  sub_F264C(OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_separatorView);
  sub_F264C(OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_detailLabel);
  sub_F06AC();
  sub_F06EC();
  v26 = sub_3F15C();
  [v26 setIsAccessibilityElement:1];

  v27 = sub_3F15C();
  v28 = UIAccessibilityTraitButton;
  [v27 setAccessibilityTraits:UIAccessibilityTraitButton];

  [v25 setIsAccessibilityElement:1];
  return [v25 setAccessibilityTraits:v28];
}

id sub_F0394(char a1, char a2)
{
  [*(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_detailLabel) setHidden:a1 & 1];
  result = [*(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_separatorView) setHidden:a1 & 1];
  *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_metrics + 320) = a2;
  return result;
}

void sub_F0404()
{
  v1 = v0;
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:22.0];
  sub_CACC(0, &unk_1A0710);
  v3 = v2;
  v4 = sub_EE960(0x656C63726963, 0xE600000000000000, v2);
  v5 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_selectedStatusView);
  if (v4)
  {
    v6 = objc_opt_self();
    v7 = v4;
    v8 = [v6 ams_secondaryText];
    v9 = [v7 imageWithTintColor:v8 renderingMode:1];
  }

  else
  {
    v9 = 0;
  }

  [v5 setImage:v9];
}

void sub_F0558()
{
  v1 = v0;
  v2 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:22.0];
  sub_CACC(0, &unk_1A0710);
  v3 = v2;
  v4 = sub_EE960(0xD000000000000015, 0x800000000014EC50, v2);
  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_selectedStatusView];
  if (v4)
  {
    v7 = v4;
    v8 = [v1 tintColor];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v7 imageWithTintColor:v8 renderingMode:1];
  }

  else
  {
    v10 = 0;
  }

  [v6 setImage:v10];
}

void sub_F06EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_separatorView);
  v2 = [objc_opt_self() ams_mediaBorder];
  [v1 setBackgroundColor:v2];
}

double sub_F0768(double a1, double a2, float a3)
{
  sub_F1570(&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_metrics], &v42);
  v6 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_titleLabel];
  v25 = sub_139BB4();
  sub_1D3B8();
  v26 = sub_9A68(v7, v8);
  v24[0] = v6;
  v9 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_selectedStatusView];
  v28 = sub_CACC(0, &qword_19C568);
  v29 = &protocol witness table for UIView;
  v27 = v9;
  v10 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_infoLabel];
  v31 = v25;
  v32 = v26;
  v30 = v10;
  v11 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_gridView];
  v37 = type metadata accessor for ServicesGridView();
  v38 = &protocol witness table for UIView;
  v36 = v11;
  v12 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_separatorView];
  v40 = sub_CACC(0, &qword_19E9B0);
  v41 = &protocol witness table for UIView;
  v13 = *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceOptionComponent_detailLabel];
  v39 = v12;
  v34 = v25;
  v35 = v26;
  v33 = v13;
  v14 = v6;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  sub_27C54();
  sub_13BE64();
  v20 = [v3 contentView];
  sub_F15CC(v20, v24);

  sub_27C54();
  sub_13BE74();
  if (a3 == 1000.0)
  {
    v22 = a1;
  }

  else
  {
    v22 = v21;
  }

  sub_F25A4(v24);
  return v22;
}

id sub_F0A48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceOptionComponent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void (*sub_F0B98(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = *v1;
  swift_beginAccess();
  return sub_F0C00;
}

void sub_F0C00(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_EF02C();
  }
}

id sub_F0C34()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = &selRef_ams_quaternarySystemFillColor;
  }

  else
  {
    v5 = &selRef_ams_componentBackground;
  }

  result = [objc_opt_self() *v5];
  qword_1A0878 = result;
  return result;
}

uint64_t sub_F0D60()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 26.0, (v5 & 1) == 0))
  {
    v6 = 18.0;
  }

  qword_1A0880 = *&v6;
  return result;
}

id sub_F0E64()
{
  result = [objc_opt_self() ams_primarySystemFillColor];
  qword_1A0888 = result;
  return result;
}

void sub_F0EA0()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled() && ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v4 = sub_139A24(), (*(v1 + 8))(v3, v0), (v4 & 1) != 0))
  {
    v5 = [objc_opt_self() systemGrayColor];
    v6 = [v5 colorWithAlphaComponent:0.25];
  }

  else
  {
    v6 = [objc_opt_self() ams_clear];
  }

  v7 = [v6 CGColor];

  qword_1A0890 = v7;
}

uint64_t sub_F1028()
{
  v0 = sub_139A34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UISolariumEnabled();
  if (!result || ((*(v1 + 104))(v3, enum case for FlagKeys.Solarium(_:), v0), v5 = sub_139A24(), result = (*(v1 + 8))(v3, v0), v6 = 1.0, (v5 & 1) == 0))
  {
    v6 = 2.0;
  }

  qword_1A0898 = *&v6;
  return result;
}

id sub_F112C()
{
  v0 = objc_opt_self();
  v1 = [v0 absoluteDimension:340.0];
  v2 = [v0 absoluteDimension:340.0];
  v3 = [objc_opt_self() sizeWithWidthDimension:v1 heightDimension:v2];

  return v3;
}

id sub_F11E0()
{
  v0 = sub_139A34();
  sub_9E94();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_9EC0();
  v6 = v5 - v4;
  v7 = sub_1D4CC();
  swift_getObjectType();
  v8 = sub_BBC00();
  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = 200.0;
  }

  else
  {
    v9 = 32.0;
  }

  if (_UISolariumEnabled() && ((*(v2 + 104))(v6, enum case for FlagKeys.Solarium(_:), v0), v10 = sub_139A24(), (*(v2 + 8))(v6, v0), (v10 & 1) != 0))
  {
    [sub_1D4CC() contentSize];
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = sub_1D4CC();
    swift_getObjectType();
    sub_BBC90();
    v15 = v14;
    swift_unknownObjectRelease();
    v16 = v12 - (v15 + v15);
  }

  else
  {
    [sub_1D4CC() contentSize];
    v18 = v17;
    swift_unknownObjectRelease();
    v16 = v18 - v9;
  }

  if (v16 <= 360.0)
  {
    v19 = v16;
  }

  else
  {
    v19 = 360.0;
  }

  v20 = objc_opt_self();
  v21 = [v20 absoluteDimension:v19];
  v22 = [v20 estimatedDimension:50.0];
  v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

  return v23;
}

uint64_t sub_F146C()
{

  sub_3C04(v0 + 48);
  if (*(v0 + 112))
  {
    sub_3C04(v0 + 88);
  }

  if (*(v0 + 152))
  {
    sub_3C04(v0 + 128);
  }

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_F14DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_F1514()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_F1558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_F15CC(uint64_t a1, void *a2)
{
  v95 = sub_13A4F4();
  v4 = *(v95 - 8);
  v114 = v95 - 8;
  v115 = v4;
  v117 = v4;
  __chkstk_darwin(v95 - 8);
  v86 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = v83 - v7;
  v96 = sub_13A514();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_13A4C4();
  v121 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_13A4B4();
  v110 = *(v112 - 8);
  v120 = v110;
  __chkstk_darwin(v112);
  v99 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_13A454();
  v122 = *(v119 - 8);
  __chkstk_darwin(v119);
  v100 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_13C114();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[43];
  v16 = a2[44];
  sub_162F0(a2 + 40, v17);
  sub_20038(v17, v16);
  sub_13A404();
  v18 = *(v13 + 8);
  v18(v15, v12);
  v19 = a2[38];
  v20 = a2[39];
  sub_162F0(a2 + 35, v19);
  sub_20038(v19, v20);
  sub_13A404();
  v18(v15, v12);
  v21 = a2[33];
  v22 = a2[34];
  sub_162F0(a2 + 30, v21);
  sub_20038(v21, v22);
  sub_13A404();
  v18(v15, v12);
  sub_162F0(a2, a2[3]);
  v92 = a1;
  sub_13A384();
  sub_13BE64();
  sub_4948(&qword_19AFE0);
  v115 = *(v115 + 72);
  v23 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v24 = swift_allocObject();
  v88 = xmmword_13E650;
  *(v24 + 16) = xmmword_13E650;
  v90 = v23;
  v89 = v24;
  v102 = v24 + v23;
  v101 = a2;
  v25 = a2[13];
  v26 = a2[14];
  v27 = sub_162F0(a2 + 10, v25);
  *(&v128 + 1) = v25;
  v28 = v118;
  v129 = *(v26 + 8);
  v29 = sub_CC08(&v127);
  (*(*(v25 - 8) + 16))(v29, v27, v25);
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v113 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v97 = *(v122 + 104);
  v114 = v122 + 104;
  v97(v100);
  v111 = sub_4948(&qword_19AFE8);
  v30 = *(v110 + 72);
  v31 = v112;
  v32 = v120;
  v33 = *(v120 + 80);
  v110 = (v33 + 32) & ~v33;
  v85 = v110 + 3 * v30;
  v34 = swift_allocObject();
  v84 = xmmword_13E660;
  *(v34 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v123 = v34;
  v109 = sub_9A68(&qword_1A0740, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v108 = sub_4948(&qword_19AFF0);
  v107 = sub_1D268();
  v35 = v99;
  sub_13BF64();
  v106 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v36 = v121;
  v37 = v121 + 104;
  v98 = *(v121 + 104);
  v38 = v116;
  v98(v116);
  v39 = v100;
  sub_13A4E4();
  v40 = *(v36 + 8);
  v121 = v36 + 8;
  v105 = v40;
  v40(v38, v28);
  v41 = *(v32 + 8);
  v120 = v32 + 8;
  v104 = v41;
  v41(v35, v31);
  v42 = *(v122 + 8);
  v122 += 8;
  v103 = v42;
  v43 = v39;
  v44 = v119;
  v42(v39, v119);
  sub_1D2CC(&v124);
  sub_3C04(&v127);
  v129 = 0;
  v127 = 0u;
  v128 = 0u;
  (v97)(v39, v113, v44);
  v83[1] = v33;
  v45 = swift_allocObject();
  *(v45 + 16) = v88;
  sub_13A484();
  v87 = v30;
  v46 = v37;
  sub_13A4A4();
  *&v124 = v45;
  v47 = v118;
  sub_13BF64();
  v48 = v98;
  v49 = v119;
  v50 = v35;
  *&v88 = v46;
  (v98)(v38, v106, v47);
  v51 = v101;
  sub_13A4E4();
  v105(v38, v47);
  v52 = v51;
  v104(v50, v31);
  v103(v43, v49);
  sub_1D2CC(&v127);
  if (*(v51 + 560) == 1)
  {
    v102 = 2 * v87;
    v53 = v49;
    v54 = v48;
    sub_162F0(v51 + 15, v51[18]);
    sub_13A324();
    sub_162F0(v51 + 25, v51[28]);
    sub_13A374();
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
    v55 = v97;
    (v97)(v43, v113, v49);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_140280;
    sub_13A484();
    v123 = v56;
    v57 = v112;
    sub_13BF64();
    v58 = v116;
    v59 = v118;
    (v54)(v116, v106, v118);
    sub_13A4E4();
    v105(v58, v59);
    v104(v50, v57);
    v103(v43, v53);
    sub_1D2CC(&v124);
    sub_3C04(&v127);
    v60 = v89;
    v62 = *(v89 + 16);
    v61 = *(v89 + 24);
    if (v62 >= v61 >> 1)
    {
      sub_58ABC(v61 > 1, v62 + 1, 1, v89);
      v60 = v81;
    }

    *(v60 + 16) = v62 + 1;
    v63 = *(v117 + 32);
    v117 += 32;
    v63(v60 + v90 + v62 * v115, v91, v95);
    v64 = v52[18];
    v65 = v52[19];
    v66 = sub_162F0(v52 + 15, v64);
    *(&v128 + 1) = v64;
    v129 = *(v65 + 8);
    v67 = sub_CC08(&v127);
    (*(*(v64 - 8) + 16))(v67, v66, v64);
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
    v68 = v119;
    (v55)(v43, v113, v119);
    v69 = swift_allocObject();
    *(v69 + 16) = v84;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v123 = v69;
    v70 = v99;
    v71 = v112;
    sub_13BF64();
    v72 = v116;
    v73 = v118;
    (v98)(v116, v106, v118);
    v74 = v86;
    sub_13A4E4();
    v105(v72, v73);
    v104(v70, v71);
    v103(v43, v68);
    sub_1D2CC(&v124);
    sub_3C04(&v127);
    v76 = *(v60 + 16);
    v75 = *(v60 + 24);
    if (v76 >= v75 >> 1)
    {
      sub_58ABC(v75 > 1, v76 + 1, 1, v60);
      v60 = v82;
    }

    *(v60 + 16) = v76 + 1;
    v63(v60 + v90 + v76 * v115, v74, v95);
    v77 = v93;
  }

  else
  {
    v77 = v93;
  }

  sub_13A4D4();
  sub_13A464();
  v79 = v78;
  (*(v94 + 8))(v77, v96);
  return v79;
}

id sub_F264C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + a1);
  v6 = *(v3 + 3576);

  return [v2 v6];
}

uint64_t sub_F2668()
{

  return sub_139BA4();
}

uint64_t ServiceOptionComponentLayout.Metrics.init(titleTopSpace:titleTrailingSpace:selectionStatusDimension:selectionStatusTopSpace:disclaimerTopSpace:detailTopSpace:separatorTopSpace:gridTopSpace:expanded:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, char a10)
{
  sub_9414(a1, a9);
  sub_9414(a2, a9 + 40);
  sub_9414(a3, a9 + 80);
  sub_9414(a4, a9 + 120);
  sub_9414(a5, a9 + 160);
  sub_9414(a6, a9 + 200);
  sub_9414(a7, a9 + 240);
  result = sub_9414(a8, a9 + 280);
  *(a9 + 320) = a10;
  return result;
}

uint64_t ServiceOptionComponentLayout.init(metrics:titleView:selectionStatusView:disclaimerView:gridView:separatorView:detailView:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  memcpy((a8 + 240), __src, 0x141uLL);
  sub_9414(a2, a8);
  sub_9414(a3, a8 + 40);
  sub_9414(a4, a8 + 80);
  sub_9414(a7, a8 + 120);
  sub_9414(a6, a8 + 200);

  return sub_9414(a5, a8 + 160);
}

uint64_t ServiceOptionComponentLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D2>, CGFloat a4@<D3>)
{
  v5 = v4;
  v139 = a2;
  v141 = sub_13A314();
  sub_9E94();
  v140 = v9;
  __chkstk_darwin(v10);
  sub_21548();
  sub_2159C(v11);
  v137 = sub_13A514();
  sub_9E94();
  v136 = v12;
  __chkstk_darwin(v13);
  sub_21548();
  sub_2159C(v14);
  v133 = sub_13A4F4();
  v158 = *(v133 - 8);
  v165 = v158;
  __chkstk_darwin(v133);
  v126 = v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  sub_2159C(v123 - v17);
  v160 = sub_13A4C4();
  sub_9E94();
  v168 = v18;
  __chkstk_darwin(v19);
  sub_21548();
  sub_2159C(v20);
  v166 = sub_13A4B4();
  v155 = *(v166 - 8);
  v156 = v166 - 8;
  v163 = v155;
  __chkstk_darwin(v166 - 8);
  sub_21548();
  sub_2159C(v21);
  v162 = sub_13A454();
  sub_9E94();
  v167 = v22;
  __chkstk_darwin(v23);
  sub_21548();
  sub_2159C(v24);
  sub_13C114();
  sub_9E94();
  v26 = v25;
  __chkstk_darwin(v27);
  v28 = v4[43];
  v29 = v5[44];
  sub_162F0(v5 + 40, v28);
  sub_20038(v28, v29);
  sub_F4C44();
  sub_13A404();
  v154 = v30;
  v31 = *(v26 + 8);
  v32 = sub_F4CCC();
  v31(v32);
  sub_F4C54(v5 + 45);
  sub_F4C44();
  sub_13A404();
  v157 = v33;
  v34 = sub_F4CCC();
  v31(v34);
  sub_F4C54(v5 + 35);
  sub_F4C44();
  sub_13A404();
  v35 = sub_F4CCC();
  v31(v35);
  sub_F4C54(v5 + 30);
  sub_F4C44();
  sub_13A404();
  v153 = v36;
  v37 = sub_F4CCC();
  v31(v37);
  sub_162F0(v5, v5[3]);
  sub_13A384();
  v39 = v38;
  sub_162F0(v5, v5[3]);
  v174.origin.x = sub_F4C00();
  CGRectGetMinX(v174);
  v175.origin.x = sub_F4C00();
  CGRectGetMinY(v175);
  sub_F4C00();
  sub_13BE44();
  sub_13A354();
  sub_162F0(v5 + 5, v5[8]);
  v176.origin.x = sub_F4C00();
  CGRectGetMaxX(v176);
  v177.origin.x = sub_F4CB8();
  CGRectGetMinY(v177);
  sub_F4CB8();
  sub_13BE44();
  sub_13A354();
  v40 = v153 + v39;
  sub_13BE34();
  v134 = a1;
  v128 = a4;
  sub_13BE44();
  v42 = v41;
  v44 = v43;
  sub_4948(&qword_19AFE0);
  v158 = *(v158 + 72);
  v45 = (*(v165 + 80) + 32) & ~*(v165 + 80);
  v46 = swift_allocObject();
  v129 = xmmword_13E650;
  *(v46 + 16) = xmmword_13E650;
  v131 = v45;
  v130 = v46;
  v146 = v46 + v45;
  v161 = v5;
  v48 = v5[13];
  v47 = v5[14];
  v49 = sub_162F0(v5 + 10, v48);
  *(&v172 + 1) = v48;
  v173 = *(v47 + 8);
  v50 = sub_CC08(&v171);
  (*(*(v48 - 8) + 16))(v50, v49, v48);
  v51 = sub_5AA8C();
  v148 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v52 = *(v167 + 104);
  v142 = v167 + 104;
  v147 = v52;
  v53 = v145;
  v52(v145, v51);
  v157 = sub_4948(&qword_19AFE8);
  v54 = *(v155 + 72);
  v55 = v163;
  v155 = *(v163 + 80);
  v156 = (v155 + 32) & ~v155;
  v125 = v156 + 3 * v54;
  v56 = swift_allocObject();
  v124 = xmmword_13E660;
  *(v56 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v169 = v56;
  v154 = sub_20068();
  v153 = COERCE_DOUBLE(sub_4948(&qword_19AFF0));
  v152 = sub_1D268();
  v57 = v159;
  v58 = v166;
  sub_13BF64();
  v151 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v59 = v168;
  v60 = v168 + 104;
  v150 = *(v168 + 104);
  v61 = v164;
  v62 = v160;
  v150(v164);
  v63 = v53;
  sub_13A4E4();
  v64 = *(v59 + 8);
  v168 = v59 + 8;
  v149 = v64;
  v64(v61, v62);
  v144 = *(v55 + 8);
  v144(v57, v58);
  v65 = v167 + 8;
  v143 = *(v167 + 8);
  v66 = v162;
  v143(v63, v162);
  sub_1D2CC(&v170);
  sub_3C04(&v171);
  v173 = 0;
  v171 = 0u;
  v172 = 0u;
  v67 = v63;
  v147(v63, v148, v66);
  sub_F4C14();
  v68 = swift_allocObject();
  *(v68 + 16) = v129;
  sub_13A484();
  v127 = v54;
  v69 = v55 + 8;
  v70 = v164;
  sub_13A4A4();
  v170 = v68;
  sub_F4C2C();
  v72 = *(v71 - 256);
  sub_13BF64();
  *&v129 = v60;
  (v150)(v70, v151, v62);
  v73 = v161;
  sub_13A4E4();
  v149(v70, v62);
  v74 = v57;
  v75 = v144;
  v144(v74, v72);
  v76 = v67;
  v77 = v66;
  v78 = v143;
  v79 = v77;
  v167 = v65;
  (v143)(v67);
  sub_1D2CC(&v171);
  if (*(v73 + 560) == 1)
  {
    *&v123[2] = v40;
    v123[3] = v42;
    v146 = v44;
    v123[1] = 2 * v127;
    v163 = v69;
    sub_162F0(v73 + 15, v73[18]);
    sub_13A324();
    sub_162F0(v73 + 25, v73[28]);
    sub_13A374();
    v80 = sub_5AA8C();
    (v147)(v67, v148, v79, v80);
    sub_F4C14();
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_140280;
    sub_13A484();
    v169 = v81;
    v82 = v159;
    sub_F4C2C();
    v84 = *(v83 - 256);
    sub_13BF64();
    v85 = v160;
    sub_F4CA4();
    v86();
    sub_13A4E4();
    v149(v70, v85);
    v75(v82, v84);
    v78(v76, v79);
    sub_1D2CC(&v170);
    sub_3C04(&v171);
    v87 = v130;
    v89 = *(v130 + 16);
    v88 = *(v130 + 24);
    v90 = v148;
    v91 = v147;
    if (v89 >= v88 >> 1)
    {
      sub_58ABC(v88 > 1, v89 + 1, 1, v130);
      v87 = v121;
    }

    *(v87 + 16) = v89 + 1;
    sub_F4C8C();
    v94 = v92 + v89 * v93;
    v95 = *(v165 + 32);
    v96 = v132;
    v165 += 32;
    v132 = v95;
    v95(v94, v96, v133);
    v97 = v161[18];
    v98 = v161[19];
    v99 = sub_162F0(v161 + 15, v97);
    *(&v172 + 1) = v97;
    v173 = *(v98 + 8);
    v100 = sub_CC08(&v171);
    (*(*(v97 - 8) + 16))(v100, v99, v97);
    v101 = sub_5AA8C();
    v102 = v145;
    v103 = v162;
    v91(v145, v90, v162, v101);
    sub_F4C14();
    v104 = swift_allocObject();
    *(v104 + 16) = v124;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v169 = v104;
    v105 = v159;
    sub_F4C2C();
    v107 = *(v106 - 256);
    sub_13BF64();
    v108 = v164;
    v109 = v160;
    sub_F4CA4();
    v110();
    v111 = v126;
    sub_13A4E4();
    v149(v108, v109);
    v144(v105, v107);
    v143(v102, v103);
    sub_1D2CC(&v170);
    sub_3C04(&v171);
    v113 = *(v87 + 16);
    v112 = *(v87 + 24);
    if (v113 >= v112 >> 1)
    {
      sub_58ABC(v112 > 1, v113 + 1, 1, v87);
      v87 = v122;
    }

    v114 = v135;
    *(v87 + 16) = v113 + 1;
    sub_F4C8C();
    v132(v115 + v113 * v116, v111, v133);
    sub_13A4D4();
    v117 = v138;
    sub_13A474();
    sub_13A2D4();
    v178.origin.x = sub_2D724();
    v178.size.width = a3;
    v118 = v128;
    v178.size.height = v128;
    CGRectGetMinX(v178);
    v179.origin.x = sub_2D724();
    v179.size.width = a3;
    v179.size.height = v118;
    CGRectGetMinY(v179);
  }

  else
  {
    v114 = v135;
    sub_13A4D4();
    v117 = v138;
    sub_13A474();
    v180.origin.x = sub_2D724();
    v180.size.width = a3;
    v119 = v128;
    v180.size.height = v128;
    CGRectGetMinX(v180);
    v181.origin.x = sub_2D724();
    v181.size.width = a3;
    v181.size.height = v119;
    CGRectGetMinY(v181);
    sub_13A2D4();
  }

  sub_13A2C4();
  (*(v140 + 8))(v117, v141);
  return (*(v136 + 8))(v114, v137);
}

double ServiceOptionComponentLayout.measurements(fitting:in:)()
{
  swift_getObjectType();
  v0 = sub_2171C();

  return sub_F39D8(v0, v1);
}

double sub_F39D8(uint64_t a1, void *a2)
{
  v93 = sub_13A4F4();
  v4 = *(v93 - 8);
  v109 = v93 - 8;
  v110 = v4;
  v112 = v4;
  __chkstk_darwin(v93 - 8);
  v84 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v89 = &v80 - v7;
  v94 = sub_13A514();
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_13A4C4();
  v118 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_13A4B4();
  v106 = *(v114 - 8);
  v117 = v106;
  __chkstk_darwin(v114);
  v96 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_13A454();
  v119 = *(v111 - 8);
  __chkstk_darwin(v111);
  v97 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_13C114();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[43];
  v16 = a2[44];
  sub_162F0(a2 + 40, v17);
  sub_20038(v17, v16);
  sub_13A404();
  v18 = *(v13 + 8);
  v18(v15, v12);
  v19 = a2[38];
  v20 = a2[39];
  sub_162F0(a2 + 35, v19);
  sub_20038(v19, v20);
  sub_13A404();
  v18(v15, v12);
  v21 = a2[33];
  v22 = a2[34];
  sub_162F0(a2 + 30, v21);
  sub_20038(v21, v22);
  sub_13A404();
  v18(v15, v12);
  sub_162F0(a2, a2[3]);
  v90 = a1;
  sub_13A384();
  sub_13BE64();
  sub_4948(&qword_19AFE0);
  v110 = *(v110 + 72);
  v23 = (*(v112 + 80) + 32) & ~*(v112 + 80);
  v24 = swift_allocObject();
  v85 = xmmword_13E650;
  *(v24 + 16) = xmmword_13E650;
  v88 = v23;
  v86 = v24;
  v98 = (v24 + v23);
  v113 = a2;
  v25 = a2[13];
  v26 = a2[14];
  v27 = sub_162F0(a2 + 10, v25);
  *(&v125 + 1) = v25;
  v28 = v115;
  v126 = *(v26 + 8);
  v29 = sub_CC08(&v124);
  (*(*(v25 - 8) + 16))(v29, v27, v25);
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v108 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v95 = *(v119 + 104);
  v109 = v119 + 104;
  v30 = v97;
  v95(v97);
  v107 = sub_4948(&qword_19AFE8);
  v31 = *(v106 + 72);
  v32 = v117;
  v33 = *(v117 + 80);
  v106 = (v33 + 32) & ~v33;
  v83 = v106 + 3 * v31;
  v34 = swift_allocObject();
  v82 = xmmword_13E660;
  *(v34 + 16) = xmmword_13E660;
  sub_13A484();
  sub_13A494();
  sub_13A4A4();
  v120 = v34;
  v105 = sub_20068();
  v104 = sub_4948(&qword_19AFF0);
  v103 = sub_1D268();
  v35 = v96;
  sub_13BF64();
  v102 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v36 = v118;
  v37 = v118 + 104;
  v101 = *(v118 + 104);
  v38 = v116;
  v101(v116);
  sub_13A4E4();
  v39 = *(v36 + 8);
  v118 = v36 + 8;
  v100 = v39;
  v39(v38, v28);
  v40 = *(v32 + 8);
  v117 = v32 + 8;
  v99 = v40;
  v41 = v114;
  v40(v35, v114);
  v42 = *(v119 + 8);
  v119 += 8;
  v43 = v111;
  v42(v30, v111);
  sub_1D2CC(&v121);
  sub_3C04(&v124);
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  (v95)(v30, v108, v43);
  v87 = v33;
  v44 = swift_allocObject();
  *(v44 + 16) = v85;
  sub_13A484();
  v81 = v31;
  v45 = v113;
  sub_13A4A4();
  *&v121 = v44;
  sub_13BF64();
  v46 = v97;
  v47 = v43;
  v48 = v116;
  v49 = v115;
  *&v85 = v37;
  (v101)(v116, v102, v115);
  sub_13A4E4();
  v100(v48, v49);
  v99(v35, v41);
  v42(v46, v47);
  sub_1D2CC(&v124);
  if (*(v45 + 560) == 1)
  {
    v80 = 2 * v81;
    v50 = v113;
    v98 = v42;
    sub_162F0(v113 + 15, v113[18]);
    sub_13A324();
    sub_162F0(v50 + 25, v50[28]);
    sub_13A374();
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v51 = v95;
    (v95)(v46, v108, v47);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_140280;
    sub_13A484();
    v120 = v52;
    v53 = v114;
    sub_13BF64();
    v54 = v116;
    v55 = v115;
    (v101)(v116, v102, v115);
    sub_13A4E4();
    v100(v54, v55);
    v99(v35, v53);
    v56 = v46;
    v98(v46, v47);
    sub_1D2CC(&v121);
    sub_3C04(&v124);
    v57 = v86;
    v59 = *(v86 + 16);
    v58 = *(v86 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_58ABC(v58 > 1, v59 + 1, 1, v86);
      v57 = v78;
    }

    *(v57 + 16) = v59 + 1;
    v60 = *(v112 + 32);
    v112 += 32;
    v60(v57 + v88 + v59 * v110, v89, v93);
    v61 = v113[18];
    v62 = v113[19];
    v63 = sub_162F0(v113 + 15, v61);
    *(&v125 + 1) = v61;
    v126 = *(v62 + 8);
    v64 = sub_CC08(&v124);
    (*(*(v61 - 8) + 16))(v64, v63, v61);
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v65 = v111;
    (v51)(v46, v108, v111);
    v66 = swift_allocObject();
    *(v66 + 16) = v82;
    sub_13A484();
    sub_13A494();
    sub_13A4A4();
    v120 = v66;
    v67 = v96;
    v68 = v114;
    sub_13BF64();
    v69 = v116;
    v70 = v115;
    (v101)(v116, v102, v115);
    v71 = v84;
    sub_13A4E4();
    v100(v69, v70);
    v99(v67, v68);
    v98(v56, v65);
    sub_1D2CC(&v121);
    sub_3C04(&v124);
    v73 = *(v57 + 16);
    v72 = *(v57 + 24);
    if (v73 >= v72 >> 1)
    {
      sub_58ABC(v72 > 1, v73 + 1, 1, v57);
      v57 = v79;
    }

    *(v57 + 16) = v73 + 1;
    v60(v57 + v88 + v73 * v110, v71, v93);
    v74 = v91;
  }

  else
  {
    v74 = v91;
  }

  sub_13A4D4();
  sub_13A464();
  v76 = v75;
  (*(v92 + 8))(v74, v94);
  return v76;
}

unint64_t sub_F498C()
{
  result = qword_1A0918;
  if (!qword_1A0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0918);
  }

  return result;
}

uint64_t sub_F49E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 561))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_F4A28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 552) = 0;
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
    *(result + 560) = 0;
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
      *(result + 561) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 561) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_F4B18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 321))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_F4B58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 320) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 321) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 321) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_F4C54(void *a1)
{
  sub_162F0(a1, v1);

  return sub_20038(v1, v2);
}

uint64_t sub_F4CD8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184A98;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_F4D24(char a1)
{
  if (!a1)
  {
    return 0x6853726564616568;
  }

  if (a1 == 1)
  {
    return 0x6C65685379646F62;
  }

  return 0x79646F427473616CLL;
}

uint64_t sub_F4DB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F4CD8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_F4DE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_F4D24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_F4E14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;

  v8 = sub_F4CD8(a1, a2);
  if (v8 == 3)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v9 = sub_139A14();
    sub_4910(v9, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v23 = &type metadata for ServiceOverlayPlatterLayout.BodySpacing;
    v22[0] = swift_allocObject();
    memcpy((v22[0] + 16), v3, 0x160uLL);
    sub_F5AA0(v3, __dst);
    sub_139984();
    sub_49C8(v22);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v25._countAndFlagsBits = a1;
    v25._object = a2;
    sub_13BBC4(v25);
    v26._object = 0x800000000014E6F0;
    v26._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v26);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for ServiceOverlayPlatterLayout.BodySpacing;
    a3[4] = &off_18D208;
    v10 = swift_allocObject();
    *a3 = v10;
    memcpy((v10 + 16), v3, 0x160uLL);
    return sub_F5AA0(v3, __dst);
  }

  else
  {
    v12 = v8;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v13 = sub_139A14();
    sub_4910(v13, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v23 = &type metadata for ServiceOverlayPlatterLayout.BodySpacing;
    v22[0] = swift_allocObject();
    memcpy((v22[0] + 16), v3, 0x160uLL);
    sub_F5AA0(v3, __dst);
    sub_139984();
    sub_49C8(v22);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for ServiceOverlayPlatterLayout.BodySpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v12;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v12)
    {
      if (v12 == 1)
      {
        memcpy(__dst, (v3 + 88), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v14 = swift_allocObject();
        *a3 = v14;
        v15 = (v14 + 16);
        v16 = (v3 + 88);
      }

      else
      {
        v18 = [objc_opt_self() currentDevice];
        v19 = [v18 userInterfaceIdiom];

        if (v19 == &dword_0 + 1)
        {
          memcpy(__dst, (v4 + 264), 0x58uLL);
          a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
          a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
          v20 = swift_allocObject();
          *a3 = v20;
          v15 = (v20 + 16);
          v16 = (v4 + 264);
        }

        else
        {
          memcpy(__dst, (v4 + 176), 0x58uLL);
          a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
          a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
          v21 = swift_allocObject();
          *a3 = v21;
          v15 = (v21 + 16);
          v16 = (v4 + 176);
        }
      }
    }

    else
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v17 = swift_allocObject();
      *a3 = v17;
      v15 = (v17 + 16);
      v16 = v3;
    }

    memcpy(v15, v16, 0x58uLL);
    return sub_4AB8(__dst, v22);
  }
}

void *sub_F53C4@<X0>(void *a1@<X8>)
{
  v2 = sub_139A34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  if (_UISolariumEnabled())
  {
    (*(v3 + 104))(v5, enum case for FlagKeys.Solarium(_:), v2);
    sub_139A24();
    (*(v3 + 8))(v5, v2);
  }

  v8 = &type metadata for DefaultLayoutCollectionSpacingModel;
  v9 = &protocol witness table for DefaultLayoutCollectionSpacingModel;
  sub_139F34();
  return memcpy(a1, v10, 0x160uLL);
}

uint64_t sub_F5808@<X0>(uint64_t *a1@<X8>)
{
  sub_F53C4(__src);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0x160uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_F58E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_F5808(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_F5988()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  if (v0[31])
  {
  }

  if (v0[33])
  {
  }

  if (v0[42])
  {
  }

  if (v0[44])
  {
  }

  return _swift_deallocObject(v0, 368, 7);
}

uint64_t sub_F5A38()
{
  sub_3C04(v0 + 16);
  sub_3C04(v0 + 56);
  sub_3C04(v0 + 96);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_F5AD8()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

_BYTE *storeEnumTagSinglePayload for ServiceOverlayPlatterLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xF5BF4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_F5C30()
{
  result = qword_1A0920;
  if (!qword_1A0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0920);
  }

  return result;
}

uint64_t sub_F5C84(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_184B00;
  v6._object = a2;
  v4 = sub_13C104(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_F5CD0(char a1)
{
  if (!a1)
  {
    return 0x656853656C746974;
  }

  if (a1 == 1)
  {
    return 0x6C65685379646F62;
  }

  return 0x79646F427473616CLL;
}

uint64_t sub_F5D60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F5C84(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_F5D90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_F5CD0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_F5DBC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{

  v7 = sub_F5C84(a1, a2);
  if (v7 == 3)
  {
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v8 = sub_139A14();
    sub_4910(v8, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E650;
    v19 = &type metadata for ServiceOverlayPlatterTVLayout.BodySpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_F671C(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_13BFE4(42);

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x800000000014E6D0;
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    sub_13BBC4(v21);
    v22._object = 0x800000000014E6F0;
    v22._countAndFlagsBits = 0xD000000000000010;
    sub_13BBC4(v22);
    __dst[3] = &type metadata for String;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    a3[3] = &type metadata for ServiceOverlayPlatterTVLayout.BodySpacing;
    a3[4] = &off_18D478;
    v9 = swift_allocObject();
    *a3 = v9;
    memcpy((v9 + 16), v3, 0x108uLL);
    return sub_F671C(v3, __dst);
  }

  else
  {
    v11 = v7;
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v12 = sub_139A14();
    sub_4910(v12, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v19 = &type metadata for ServiceOverlayPlatterTVLayout.BodySpacing;
    v18[0] = swift_allocObject();
    memcpy((v18[0] + 16), v3, 0x108uLL);
    sub_F671C(v3, __dst);
    sub_139984();
    sub_49C8(v18);
    __dst[3] = &type metadata for String;
    __dst[0] = 0xD00000000000001CLL;
    __dst[1] = 0x800000000014E710;
    sub_139984();
    sub_49C8(__dst);
    __dst[3] = &type metadata for ServiceOverlayPlatterTVLayout.BodySpacing.OverrideSectionIdentifier;
    LOBYTE(__dst[0]) = v11;
    sub_139984();
    sub_49C8(__dst);
    sub_1399F4();

    if (v11)
    {
      if (v11 == 1)
      {
        memcpy(__dst, (v3 + 88), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v13 = swift_allocObject();
        *a3 = v13;
        v14 = (v13 + 16);
        v15 = (v3 + 88);
      }

      else
      {
        memcpy(__dst, (v3 + 176), 0x58uLL);
        a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
        a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
        v17 = swift_allocObject();
        *a3 = v17;
        v14 = (v17 + 16);
        v15 = (v3 + 176);
      }
    }

    else
    {
      memcpy(__dst, v3, 0x58uLL);
      a3[3] = &type metadata for BoxedLayoutCollectionSpacingModel;
      a3[4] = &protocol witness table for BoxedLayoutCollectionSpacingModel;
      v16 = swift_allocObject();
      *a3 = v16;
      v14 = (v16 + 16);
      v15 = v3;
    }

    memcpy(v14, v15, 0x58uLL);
    return sub_4AB8(__dst, v18);
  }
}

void *sub_F62E0@<X0>(void *a1@<X8>)
{
  sub_139F34();
  sub_139F34();
  sub_139F34();
  return memcpy(a1, __src, 0x108uLL);
}

uint64_t sub_F64A4@<X0>(uint64_t *a1@<X8>)
{
  sub_F62E0(__src);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0x108uLL);
  a1[3] = &type metadata for BoxedLayoutSpacingModel;
  a1[4] = &protocol witness table for BoxedLayoutSpacingModel;
  *a1 = swift_allocObject();
  return sub_139E54();
}

uint64_t sub_F657C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_F64A4(a3);
  sub_13B5A4();
  sub_5224();
  (*(v5 + 8))(a2);
  sub_13B584();
  sub_5224();
  return (*(v6 + 8))(a1);
}

uint64_t sub_F6624()
{
  if (v0[9])
  {
  }

  if (v0[11])
  {
  }

  if (v0[20])
  {
  }

  if (v0[22])
  {
  }

  if (v0[31])
  {
  }

  if (v0[33])
  {
  }

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_F66B4()
{
  sub_3C04(v0 + 16);
  sub_3C04(v0 + 56);
  sub_3C04(v0 + 96);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_F6754()
{
  if (*(v0 + 72))
  {
  }

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

_BYTE *storeEnumTagSinglePayload for ServiceOverlayPlatterTVLayout.BodySpacing.OverrideSectionIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xF6870);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_F68AC()
{
  result = qword_1A0928;
  if (!qword_1A0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1A0928);
  }

  return result;
}

uint64_t sub_F6914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_13B5D4();
    v9 = a1 + *(a3 + 52);

    return sub_52E0(v9, a2, v8);
  }
}

uint64_t sub_F69B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_13B5D4();
    v8 = v5 + *(a4 + 52);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ServiceProductBadgedPageDestination()
{
  result = qword_1A0988;
  if (!qword_1A0988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F6A7C()
{
  sub_F6BAC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_AAC00(319, &unk_19EAC8);
    if (v3 <= 0x3F)
    {
      v4 = sub_AAC00(319, &qword_19AE50);
      if (v5 > 0x3F)
      {
        return v4;
      }

      else
      {
        sub_67F30();
        v1 = v6;
        if (v7 <= 0x3F)
        {
          v1 = sub_13B5D4();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_F6BAC()
{
  if (!qword_19AE30)
  {
    sub_139F94();
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_19AE30);
    }
  }
}

uint64_t sub_F6C04@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a3;
  v6 = sub_4948(&qword_19A498);
  __chkstk_darwin(v6 - 8);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v7);
  v113 = &v103 - v8;
  v9 = sub_13B5D4();
  v10 = sub_5A838(v9, &v129);
  v116 = v11;
  __chkstk_darwin(v10);
  v112 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_13B584();
  v14 = sub_5A838(v13, &v130);
  v16 = v15;
  __chkstk_darwin(v14);
  sub_2162C();
  sub_18B60();
  __chkstk_darwin(v17);
  sub_18B60();
  __chkstk_darwin(v18);
  sub_18B60();
  __chkstk_darwin(v19);
  sub_18B60();
  __chkstk_darwin(v20);
  v22 = &v103 - v21;
  __chkstk_darwin(v23);
  v25 = (&v103 - v24);
  v26 = type metadata accessor for ServiceProductBadgedPageDestination();
  sub_2B538();
  __chkstk_darwin(v27);
  v29 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v30 = swift_initStackObject();
  v120 = a2;
  v121 = a1;
  v123 = a2;
  sub_9DB8(0x6B726F77747261, 0xE700000000000000, v26, sub_F7E30, v122, v31, v32, v33);
  if (v3)
  {

    v35 = 0;
  }

  else
  {
    v35 = v34;
  }

  *v29 = v35;
  v128 = v26;
  v36 = v121;
  v37 = sub_73A8(0x6567646162, 0xE500000000000000, v26);
  v108 = v35;
  v107 = v29;
  v29[8] = v37;
  v38 = v36;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_677B8();
    v39 = swift_allocError();
    v41 = sub_F7F88(v39, v40);
    *v42 = 0xD000000000000013;
    v42[1] = 0x8000000000151EE0;
    sub_A0718(v41, v42);
    sub_2B538();
    (*(v43 + 104))();
    swift_willThrow();

    sub_C8188();
    v44 = *(v16 + 8);
    LODWORD(v22) = v44;
    v45 = v118;
    v44(v38, v118);
    v44(v25, v45);
    LODWORD(v46) = 0;
    LODWORD(v25) = 0;
    sub_F7F14();
    v52 = v107;
    goto LABEL_7;
  }

  sub_F7F94();
  v50 = *(v16 + 8);
  (v50)(v25, v118);
  v51 = sub_F7F44();
  v52 = v107;
  sub_9414(v51, (v107 + 16));
  v53 = sub_BB310();
  v105 = v50;
  v106 = v16 + 8;
  *(v52 + 56) = v53;
  *(v52 + 64) = v54;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_677B8();
    v55 = sub_9F18();
    v57 = sub_F7F88(v55, v56);
    *v58 = 0x7470697263736564;
    v58[1] = 0xEB000000006E6F69;
    sub_A0718(v57, v58);
    sub_9EF8();
    (*(v59 + 104))();
    swift_willThrow();

    sub_C8188();
    sub_F7F74();
    v45 = *(v60 - 256);
    v46 = v105;
    v105();
    (v46)(v22, v30);
    sub_F7F14();
    LODWORD(v46) = 1;
    LODWORD(v25) = 1;
    goto LABEL_7;
  }

  sub_139DB4();
  v104 = v30;
  v61 = v118;
  LODWORD(v25) = v106;
  v30 = v105;
  (v105)(v22, v118);
  v62 = sub_F7F44();
  sub_9414(v62, v52 + 72);
  v63 = v115;
  v46 = v121;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_677B8();
    v64 = sub_9F18();
    v66 = sub_F7F88(v64, v65);
    *v67 = 0xD000000000000011;
    v67[1] = 0x8000000000151F20;
    sub_A0718(v66, v67);
    sub_9EF8();
    (*(v68 + 104))();
    swift_willThrow();

    sub_C8188();
    v30(v46, v61);
    v30(v63, v61);
    LODWORD(v45) = 0;
    LODWORD(v22) = 0;
    sub_F7F64();
    goto LABEL_7;
  }

  sub_F7F94();
  sub_F7F74();
  v105();
  v69 = sub_F7F44();
  sub_9414(v69, v52 + 112);
  *(v52 + 152) = sub_BB310();
  *(v52 + 160) = v70;
  v25 = v111;
  sub_13B594();
  v71 = sub_13B564();
  v72 = v104;
  if (v71)
  {
    goto LABEL_28;
  }

  v73 = v110;
  sub_F7C64(v25, v120, v110);
  if (sub_52E0(v73, 1, v117) == 1)
  {
    sub_6BDB4(v73, &qword_19A498);
LABEL_28:
    sub_13BAB4();
    sub_677B8();
    sub_9F18();
    *v74 = 0x7274654D65676170;
    v74[1] = 0xEB00000000736369;
    sub_A0718(v74, v74);
    sub_9EF8();
    (*(v75 + 104))();
    swift_willThrow();
    sub_F7EF8();
    v76();

    v77 = v113;
    v78 = v117;
    sub_53A8(v113, 1, 1, v117);
    v79 = v112;
    sub_13B5C4();
    if (sub_52E0(v77, 1, v78) != 1)
    {
      sub_6BDB4(v77, &qword_19A498);
    }

    goto LABEL_31;
  }

  sub_F7EF8();
  v80();
  v81 = v73;
  v82 = *(v116 + 32);
  v83 = v113;
  v84 = v117;
  (v82)(v113, v81, v117);
  sub_53A8(v83, 0, 1, v84);
  v79 = v112;
  v82();
LABEL_31:
  (*(v116 + 32))(v52 + *(v128 + 52), v79, v117);
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_677B8();
    sub_9F18();
    *v85 = 0x656C746974627573;
    v85[1] = 0xE800000000000000;
    sub_A0718(v85, v85);
    sub_9EF8();
    (*(v86 + 104))();
    swift_willThrow();
    sub_F7EF8();
    v87();

    v127 = 0;
    v125 = 0u;
    v126 = 0u;
  }

  else
  {
    sub_139DB4();
    sub_F7EF8();
    v97();
    sub_9414(v124, &v125);
  }

  v88 = v126;
  *(v52 + 168) = v125;
  *(v52 + 184) = v88;
  *(v52 + 200) = v127;
  v89 = v114;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    sub_139DB4();
    v98 = sub_F7F24();
    v100 = *(v99 - 256);
    v100(v98);
    (v100)(v114, v72);
    v101 = sub_F7F44();
    sub_9414(v101, v52 + 208);
    sub_F7E38(v52, v109);
    sub_13B5A4();
    sub_2B538();
    (*(v102 + 8))(v120);
    return sub_F7E9C(v52);
  }

  v45 = sub_13BAB4();
  sub_677B8();
  v90 = sub_9F18();
  LODWORD(v30) = v89;
  v92 = sub_F7F88(v90, v91);
  *v93 = 0x656C746974;
  v93[1] = 0xE500000000000000;
  sub_A0718(v92, v93);
  sub_9EF8();
  (*(v94 + 104))();
  swift_willThrow();

  sub_C8188();
  v95 = sub_F7F24();
  v46 = *(v96 - 256);
  (v46)(v95);
  (v46)(v89, v45);
  sub_F7F64();
  LODWORD(v45) = 1;
  LODWORD(v22) = 1;
LABEL_7:
  sub_13B5A4();
  sub_2B538();
  (*(v47 + 8))(v120);

  if (v46)
  {
    result = sub_3C04(v52 + 16);
  }

  if (v25)
  {
  }

  v49 = v128;
  if (!v30)
  {
    if (!v45)
    {
      goto LABEL_13;
    }

LABEL_16:
    result = sub_3C04(v52 + 112);
    if (!v22)
    {
      return result;
    }

    goto LABEL_17;
  }

  result = sub_3C04(v52 + 72);
  if (v45)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (!v22)
  {
    return result;
  }

LABEL_17:

  sub_6BDB4(v52 + 168, &qword_19E960);
  return (*(v116 + 8))(v52 + *(v49 + 52), v117);
}

uint64_t sub_F7AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_139F94();
  (*(v11 + 16))(v13, a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  result = sub_139F84();
  *a3 = result;
  return result;
}

uint64_t sub_F7C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_13B5A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_13B584();
  v11 = __chkstk_darwin(v10);
  (*(v13 + 16))(&v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  (*(v7 + 16))(v9, a2, v6);
  sub_13B5B4();
  v14 = sub_13B5D4();
  return sub_53A8(a3, 0, 1, v14);
}

uint64_t sub_F7E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceProductBadgedPageDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F7E9C(uint64_t a1)
{
  v2 = type metadata accessor for ServiceProductBadgedPageDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F7F94()
{

  return sub_139BC4();
}

uint64_t ServiceProductBadgedPageLayout.init(metrics:contentView:titleView:subtitleView:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  memcpy(a5, __src, 0xC0uLL);
  v9 = *(a2 + 16);
  *(a5 + 192) = *a2;
  *(a5 + 208) = v9;
  *(a5 + 224) = *(a2 + 32);
  sub_9414(a3, a5 + 232);

  return sub_9414(a4, a5 + 272);
}

void ServiceProductBadgedPageLayout.Metrics.detailsMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

uint64_t ServiceProductBadgedPageLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v92 = a5;
  v93 = a4;
  v87 = a3;
  v85 = a2;
  v9 = sub_13A314();
  v10 = sub_5A838(v9, &v104);
  v84 = v11;
  __chkstk_darwin(v10);
  sub_21548();
  sub_2159C(v12);
  v13 = sub_13A4C4();
  v14 = sub_5A838(v13, &v106);
  v80 = v15;
  __chkstk_darwin(v14);
  sub_21548();
  sub_2159C(v16);
  v17 = sub_13A454();
  v18 = sub_5A838(v17, &v102);
  v95 = v19;
  __chkstk_darwin(v18);
  sub_21548();
  sub_2159C(v20);
  v21 = sub_13A4F4();
  v22 = sub_5A838(v21, &v105);
  v77 = v23;
  __chkstk_darwin(v22);
  sub_21548();
  sub_2159C(v24);
  v25 = sub_13A514();
  v26 = sub_5A838(v25, &v103);
  v81 = v27;
  __chkstk_darwin(v26);
  sub_21548();
  v29 = v28;
  v30 = sub_13A4B4();
  v31 = sub_5A838(v30, &v107);
  v90 = v32;
  __chkstk_darwin(v31);
  sub_21548();
  v96 = v33;
  v34 = sub_13C114();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v6;
  sub_2DAFC((v6 + 24), &v97);
  v72 = a1;
  if (v98)
  {
    sub_9414(&v97, &v99);
    v38 = v94;
    sub_162F0(v94 + 5, v94[8]);
    sub_F8C80();
    sub_F8C48();
    v40 = v39;
    v41 = *(v35 + 8);
    v41(v37, v34);
    sub_162F0(v38, v38[3]);
    sub_F8C80();
    sub_F8C48();
    v43 = v42;
    v41(v37, v34);
    v44 = v87;
    v108.origin.x = v87;
    v45 = v93;
    v108.origin.y = v93;
    v46 = v92;
    v108.size.width = v92;
    v108.size.height = a6;
    MinX = CGRectGetMinX(v108);
    v109.origin.x = v44;
    v109.origin.y = v45;
    v109.size.width = v46;
    v109.size.height = a6;
    Width = CGRectGetWidth(v109);
    sub_162F0(&v99, *(&v100 + 1));
    v49 = MinX;
    sub_13BE44();
    sub_13A354();
    v110.origin.x = MinX;
    v110.origin.y = v43;
    v110.size.width = Width;
    v73 = v40;
    v110.size.height = v40;
    v74 = v43 + CGRectGetHeight(v110);
    sub_3C04(&v99);
  }

  else
  {
    sub_CC68(&v97, &unk_1A0730);
    v74 = 0.0;
    v49 = 0.0;
    v43 = 0.0;
    Width = 0.0;
    v73 = 0.0;
  }

  sub_4948(&qword_19AFE8);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  *&v99 = v50;
  sub_20068();
  sub_4948(&qword_19AFF0);
  sub_1D268();
  sub_13BF64();
  v51 = v29;
  sub_13A4D4();
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v52 = v95;
  v70 = *(v95 + 104);
  v53 = v76;
  v54 = v78;
  v70(v76, enum case for VerticalFlowLayout.VerticalPlacement.top(_:));
  v69 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v55 = v80;
  v68 = *(v80 + 104);
  v56 = v79;
  v57 = v89;
  v68(v79);
  v58 = v75;
  sub_13A4E4();
  v80 = *(v55 + 8);
  (v80)(v56, *&v57);
  v67 = *(v52 + 8);
  v95 = v52 + 8;
  v67(v53, v54);
  sub_CC68(&v99, &qword_19AFF8);
  sub_13A504();
  v77 = *(v77 + 8);
  (v77)(v58, v88);
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  (v70)(v53, enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:), v54);
  v59 = v89;
  (v68)(v56, v69, *&v89);
  v60 = v94;
  v61 = v96;
  sub_13A4E4();
  (v80)(v56, *&v59);
  v67(v53, v54);
  sub_CC68(&v99, &qword_19AFF8);
  sub_13A504();
  (v77)(v58, v88);
  v62 = v87;
  v111.origin.x = v87;
  v111.origin.y = v93;
  v111.size.width = v92;
  v111.size.height = a6;
  v89 = CGRectGetMinX(v111);
  v112.origin.x = sub_F8C6C();
  CGRectGetMinY(v112);
  v71 = a6;
  v113.origin.x = v49;
  v113.origin.y = v43;
  v113.size.width = Width;
  v113.size.height = v73;
  CGRectGetMaxY(v113);
  v114.origin.x = sub_F8C6C();
  CGRectGetWidth(v114);
  v95 = v60[13];
  sub_13BE34();
  v63 = v82;
  sub_13A384();
  v64 = v83;
  sub_13A474();
  sub_13A304();
  sub_13A2D4();
  sub_13BE54();
  CGRectGetHeight(v115);
  v116.origin.x = v62;
  v116.origin.y = v93;
  v116.size.width = v92;
  v116.size.height = v71;
  CGRectGetWidth(v116);
  sub_13A2B4();
  (*(v84 + 8))(v64, v86);
  (*(v81 + 8))(v51, v63);
  return (*(v90 + 8))(v61, v91);
}

uint64_t sub_F8AB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 312))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_F8AF0(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_F8B94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_F8BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_F8C48()
{

  return sub_13A404();
}

uint64_t sub_F8C80()
{

  return sub_20038(v0, v1);
}

UIFontTextStyle sub_F8CA0()
{
  v0 = sub_13A3E4();
  sub_7E5D8(v0, qword_1A09E0);
  v1 = sub_4910(v0, qword_1A09E0);
  *v1 = UIFontTextStyleSubheadline;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleSubheadline;
}

UIFontTextStyle sub_F8D50()
{
  v0 = sub_13A3E4();
  sub_7E5D8(v0, qword_1A09F8);
  v1 = sub_4910(v0, qword_1A09F8);
  *v1 = UIFontTextStyleTitle1;
  *(v1 + 8) = UIFontWeightBold;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleTitle1;
}

uint64_t sub_F8E30(uint64_t a1, uint64_t *a2)
{
  v3 = sub_13A2A4();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  v10 = sub_13A434();
  sub_7E5D8(v10, a2);
  sub_4910(v10, a2);
  if (qword_19A0D0 != -1)
  {
    swift_once();
  }

  v11 = sub_13A3E4();
  sub_4910(v11, qword_1A09F8);
  sub_FC218();
  (*(v12 + 16))(v9);
  v13 = sub_FC1F0();
  v14(v13);
  v17[3] = v3;
  v17[4] = &protocol witness table for FontSource;
  sub_CC08(v17);
  sub_FC204();
  v15();
  sub_13A444();
  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_F8FE8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_13A2A4();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  v10 = sub_13A434();
  sub_7E5D8(v10, a2);
  sub_4910(v10, a2);
  if (qword_19A0C8 != -1)
  {
    swift_once();
  }

  v11 = sub_13A3E4();
  sub_4910(v11, qword_1A09E0);
  sub_FC218();
  (*(v12 + 16))(v9);
  v13 = sub_FC1F0();
  v14(v13);
  v17[3] = v3;
  v17[4] = &protocol witness table for FontSource;
  sub_CC08(v17);
  sub_FC204();
  v15();
  sub_13A444();
  return (*(v5 + 8))(v9, v3);
}

char *sub_F919C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_13C114();
  sub_9E94();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_9EC0();
  v16 = v15 - v14;
  v17 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_artworkFetcher];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerActionBlock];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_titleLabel;
  *&v4[v19] = sub_FA4BC();
  v20 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_subtitleLabel;
  *&v4[v20] = sub_FA5F0();
  v21 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_descriptionLabel;
  *&v4[v21] = sub_FA6EC();
  v22 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerBlur;
  *&v4[v22] = [objc_allocWithZone(AMSUICommonVisualEffectView) init];
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView] = 0;
  v23 = objc_allocWithZone(UIScrollView);
  v24 = sub_A8FE8();
  v27 = [v25 v26];
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_scrollView] = v27;
  v28 = objc_allocWithZone(UIButton);
  v29 = sub_A8FE8();
  v32 = [v30 v31];
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton] = v32;
  v33 = objc_allocWithZone(UIView);
  v34 = sub_A8FE8();
  v37 = [v35 v36];
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerView] = v37;
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [v38 ams_primaryBackground];
  [v39 setBackgroundColor:v40];

  v66.receiver = v4;
  v66.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v66, "initWithFrame:", a1, a2, a3, a4);
  sub_F95F8(v62);
  v42 = v64;
  v43 = v65;
  sub_162F0(v63, v64);
  v44 = v41;
  sub_20038(v42, v43);
  sub_13A404();
  (*(v12 + 8))(v16, v10);

  sub_FC0D0(v62);
  v45 = objc_allocWithZone(sub_139CF4());
  v46 = sub_139CE4();
  v47 = *&v44[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView];
  *&v44[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView] = v46;

  v48 = v44;
  v49 = [v38 clearColor];
  [v48 setBackgroundColor:v49];

  v50 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_scrollView;
  [*&v48[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_scrollView] setContentInsetAdjustmentBehavior:2];
  v51 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton;
  v52 = [*&v48[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton] layer];
  [v52 setCornerRadius:14.0];

  v53 = [*&v48[v51] layer];
  [v53 setMasksToBounds:1];

  [v48 addSubview:*&v48[v50]];
  sub_FC22C();
  [v48 v54];
  sub_FC22C();
  [v48 v55];
  sub_FC22C();
  [v56 v57];
  sub_FC22C();
  [v58 v59];
  sub_F99E8();
  sub_F9B20();
  sub_F9C24();
  v60 = *&v48[v50];
  [v60 setDelegate:v48];

  return v48;
}

id sub_F95F8@<X0>(void *a1@<X8>)
{
  if (sub_BBCC4())
  {
    *(&__src[1] + 1) = &type metadata for Double;
    *&__src[2] = &protocol witness table for Double;
    *&__src[0] = 0;
    *&__src[4] = &type metadata for Double;
    *(&__src[4] + 1) = &protocol witness table for Double;
    *(&__src[2] + 1) = 0x406E400000000000;
    if (qword_19A0E8 != -1)
    {
      swift_once();
    }

    v3 = sub_13A434();
    v4 = sub_4910(v3, qword_1A0A40);
    *(&__src[8] + 1) = v3;
    *&__src[9] = &protocol witness table for StaticDimension;
    v5 = sub_CC08(&__src[7]);
    v6 = *(*(v3 - 8) + 16);
    v6(v5, v4, v3);
    if (qword_19A0F0 != -1)
    {
      swift_once();
    }

    v7 = sub_4910(v3, qword_1A0A58);
    *&__src[11] = v3;
    *(&__src[11] + 1) = &protocol witness table for StaticDimension;
    v8 = sub_CC08(&__src[9] + 1);
    v6(v8, v7, v3);
    __src[5] = xmmword_14B600;
    __src[6] = xmmword_14B610;
    v9 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView];
    if (v9)
    {
LABEL_13:
      v16 = sub_139CF4();
      v17 = &protocol witness table for UIView;
      goto LABEL_16;
    }

    v17 = 0;
    v16 = 0;
  }

  else
  {
    *(&__src[1] + 1) = &type metadata for Double;
    *&__src[2] = &protocol witness table for Double;
    *&__src[0] = 0;
    [v1 bounds];
    *&__src[4] = &type metadata for CGFloat;
    *(&__src[4] + 1) = &protocol witness table for CGFloat;
    *(&__src[2] + 1) = CGRectGetWidth(v27);
    if (qword_19A0D8 != -1)
    {
      swift_once();
    }

    v10 = sub_13A434();
    v11 = sub_4910(v10, qword_1A0A10);
    *(&__src[8] + 1) = v10;
    *&__src[9] = &protocol witness table for StaticDimension;
    v12 = sub_CC08(&__src[7]);
    v13 = *(*(v10 - 8) + 16);
    v13(v12, v11, v10);
    if (qword_19A0E0 != -1)
    {
      swift_once();
    }

    v14 = sub_4910(v10, qword_1A0A28);
    *&__src[11] = v10;
    *(&__src[11] + 1) = &protocol witness table for StaticDimension;
    v15 = sub_CC08(&__src[9] + 1);
    v13(v15, v14, v10);
    __src[5] = xmmword_14B5E0;
    __src[6] = xmmword_14B5F0;
    v9 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView];
    if (v9)
    {
      goto LABEL_13;
    }

    v16 = 0;
    v17 = 0;
  }

LABEL_16:
  v18 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_titleLabel];
  v19 = sub_CACC(0, &unk_1A0AF0);
  a1[32] = v19;
  a1[33] = &protocol witness table for UIView;
  a1[29] = v18;
  v20 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_subtitleLabel];
  a1[37] = v19;
  a1[38] = &protocol witness table for UIView;
  v24 = v20;
  a1[34] = v20;
  memcpy(a1, __src, 0xC0uLL);
  a1[24] = v9;
  a1[25] = 0;
  a1[26] = 0;
  a1[27] = v16;
  a1[28] = v17;
  v21 = v9;
  v22 = v18;

  return v24;
}

void sub_F99E8()
{
  v1 = [*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton] titleLabel];
  if (v1)
  {
    v2 = v1;
    sub_CACC(0, &unk_19EC20);
    if (qword_199FC0 != -1)
    {
      swift_once();
    }

    v3 = sub_13A3E4();
    sub_4910(v3, qword_1B2AA8);
    v4 = [v0 traitCollection];
    v5 = sub_13BE84();

    [v2 setFont:v5];
  }
}

void sub_F9B20()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton];
  v2 = [v0 tintColor];
  [v1 setBackgroundColor:v2];

  v3 = [v0 tintColor];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 ams_isLight];

    v6 = objc_opt_self();
    v7 = &selRef_blackColor;
    if (!v5)
    {
      v7 = &selRef_whiteColor;
    }

    v8 = [v6 *v7];
    [v1 setTitleColor:v8 forState:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_F9C24()
{
  v1 = sub_13C114();
  v69 = v1;
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerView];
  v7 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_descriptionLabel];
  [v6 addSubview:{v7, v3}];
  v8 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton];
  [v6 addSubview:v8];
  v9 = v0;
  sub_FB80C(v75);
  v74 = v75[2];
  sub_13A284();
  sub_13A404();
  v11 = v10;
  v12 = *(v2 + 8);
  v70 = v2 + 8;
  v71 = v12;
  v12(v5, v1);
  v13 = sub_BBCC4();
  v14 = 0.0;
  if (v13)
  {
    v14 = -20.0;
  }

  v15 = v14 - v11;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v72 = objc_opt_self();
  sub_4948(&qword_1A0B00);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_14B620;
  v17 = [v6 bottomAnchor];
  v18 = [v9 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v16 + 32) = v19;
  v20 = [v6 leadingAnchor];
  v73 = v9;
  v21 = [v9 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v16 + 40) = v22;
  v68 = v6;
  v23 = [v6 trailingAnchor];
  v24 = [v9 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v16 + 48) = v25;
  v26 = [v8 bottomAnchor];
  v27 = [v6 safeAreaLayoutGuide];
  v28 = [v27 bottomAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:v15];
  *(v16 + 56) = v29;
  v30 = v8;
  v31 = [v8 leadingAnchor];
  v32 = [v7 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v16 + 64) = v33;
  v66 = v8;
  v34 = [v8 trailingAnchor];
  v35 = v7;
  v67 = v7;
  v36 = [v7 trailingAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];

  *(v16 + 72) = v37;
  v38 = [v30 heightAnchor];
  v39 = v80;
  v40 = v81;
  sub_162F0(v79, v80);
  sub_20038(v39, v40);
  sub_13A404();
  v42 = v41;
  v43 = v69;
  v44 = v71;
  v71(v5, v69);
  v45 = [v38 constraintEqualToConstant:v42];

  *(v16 + 80) = v45;
  v46 = [v35 bottomAnchor];
  v47 = [v66 topAnchor];
  v48 = v77;
  v49 = v78;
  sub_162F0(v76, v77);
  sub_20038(v48, v49);
  sub_13A404();
  v51 = v50;
  v44(v5, v43);
  v52 = [v46 constraintEqualToAnchor:v47 constant:-v51];

  *(v16 + 88) = v52;
  v53 = v67;
  v54 = [v67 leadingAnchor];
  v55 = v68;
  v56 = [v68 leadingAnchor];
  v57 = [v54 constraintEqualToAnchor:v56 constant:v75[1]];

  *(v16 + 96) = v57;
  v58 = [v53 trailingAnchor];
  v59 = [v55 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:-v75[3]];

  *(v16 + 104) = v60;
  v61 = [v53 topAnchor];
  v62 = [v55 topAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:v75[0]];

  *(v16 + 112) = v63;
  sub_CACC(0, &qword_1A0B08);
  isa = sub_13BC14().super.isa;

  [v72 activateConstraints:isa];

  return sub_FC180(v75);
}

void sub_FA3C0()
{
  v1 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_artworkFetcher);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerActionBlock);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_titleLabel;
  *(v0 + v3) = sub_FA4BC();
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_subtitleLabel;
  *(v0 + v4) = sub_FA5F0();
  v5 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_descriptionLabel;
  *(v0 + v5) = sub_FA6EC();
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerBlur;
  *(v0 + v6) = [objc_allocWithZone(AMSUICommonVisualEffectView) init];
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView) = 0;
  sub_13C094();
  __break(1u);
}

id sub_FA4BC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setNumberOfLines:2];
  [v0 setTextAlignment:1];
  v1 = [objc_opt_self() ams_primaryText];
  [v0 setTextColor:v1];

  sub_CACC(0, &unk_19EC20);
  v2 = sub_BB1E0(UIFontTextStyleTitle1, *&UIFontWeightBold, 0);
  [v0 setFont:v2];

  [v0 setLineBreakMode:4];
  [v0 setAdjustsFontSizeToFitWidth:1];
  [v0 setMinimumScaleFactor:0.7];
  return v0;
}

id sub_FA5F0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setNumberOfLines:0];
  [v0 setLineBreakMode:0];
  [v0 setTextAlignment:1];
  v1 = [objc_opt_self() ams_primaryText];
  [v0 setTextColor:v1];

  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:0];
  [v0 setFont:v2];

  return v0;
}

uint64_t sub_FA6EC()
{
  sub_139BB4();
  v0 = [objc_opt_self() ams_secondaryText];
  v1 = sub_13A2A4();
  v5[3] = v1;
  v5[4] = &protocol witness table for FontSource;
  *sub_CC08(v5) = UIFontTextStyleFootnote;
  (*(*(v1 - 8) + 104))();
  v2 = UIFontTextStyleFootnote;
  v3 = sub_139BA4();
  sub_139B84();
  sub_139B74();
  return v3;
}

void sub_FA7E0()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_scrollView];
    v3 = v1;
    [v2 addSubview:v3];
    [v0 setNeedsLayout];
  }
}

void sub_FA870(void *a1)
{
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView;
  v4 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView;
    v5 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  sub_FA7E0();
}

uint64_t sub_FA8F4()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_13A314();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, "layoutSubviews");
  [v2 bounds];
  sub_1D3D0();
  result = CGRectIsEmpty(v37);
  if ((result & 1) == 0)
  {
    v12 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_scrollView];
    v13 = sub_5AA7C();
    [v14 v15];
    v16 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_contentView];
    if (v16)
    {
      v17 = v16;
      [v2 bounds];
      v19 = sub_FBEC4(v18);
      sub_FAB80(v17, v19, v20);
    }

    v21 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerBlur];
    v22 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerView];
    [v22 frame];
    [v21 setFrame:?];
    [v22 frame];
    CGRectGetHeight(v38);
    sub_13BE34();
    sub_1D3D0();
    sub_F95F8(v35);
    v23 = sub_5AA7C();
    ServiceProductBadgedPageLayout.placeChildren(relativeTo:in:)(v2, v24, v23, v25, v26, v1);
    sub_13A2D4();
    v28 = v27;
    v39.origin.x = sub_5AA7C();
    v39.size.height = v1;
    Height = CGRectGetHeight(v39);
    sub_13A2D4();
    v32 = v31;
    if (Height < v28)
    {
      sub_13A2D4();
      v34 = v33;
      [v22 frame];
      v30 = v34 + CGRectGetHeight(v40);
    }

    [v12 setContentSize:{v32, v30}];
    sub_FACB4(1);
    (*(v6 + 8))(v10, v4);
    return sub_FC0D0(v35);
  }

  return result;
}

void sub_FAB80(void *a1, double a2, double a3)
{
  v4 = v3;
  if (((*(&stru_68.reserved2 + (swift_isaMask & *a1)))() & 1) == 0 || ((*(&stru_68.offset + (swift_isaMask & *a1)))() == a2 ? (v9 = v8 == a3) : (v9 = 0), !v9))
  {
    (*(&stru_68.reloff + (swift_isaMask & *a1)))(a2, a3);
    v10 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_artworkFetcher);
    if (v10)
    {

      v10(v11);

      sub_C9FC(v10);
    }
  }
}

void sub_FACB4(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_scrollView];
  [v3 contentSize];
  v5 = v4;
  [v1 bounds];
  v7 = v6;
  [*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerView] frame];
  if (v7 - CGRectGetHeight(v20) < v5)
  {
    [v3 contentOffset];
    v9 = v8;
    [v3 contentSize];
    v11 = v10;
    [v1 bounds];
    v12 = v11 - CGRectGetHeight(v21);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v9 < v12;
    if (a1)
    {
      v15 = objc_opt_self();
      v18[4] = sub_FC15C;
      v18[5] = v14;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 1107296256;
      v18[2] = sub_E2448;
      v18[3] = &unk_18D800;
      v16 = _Block_copy(v18);

      [v15 animateWithDuration:4 delay:v16 options:0 animations:0.3 completion:0.0];

      _Block_release(v16);
    }

    else
    {

      sub_FBB50(v17, v9 < v12);
    }
  }
}

id sub_FAF30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_FB2E8(a1[19], a1[20], a2, a3);
  (*(&stru_158.size + (swift_isaMask & **&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_descriptionLabel])))(a1 + 9, a4);
  v11 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_titleLabel];
  sub_162F0(a1 + 26, a1[29]);
  v12 = sub_FC1D8();
  v14 = v13(v12);
  sub_FBE60(v14, v15, v11);
  sub_B0F90((a1 + 21), &v32);
  if (v33)
  {
    sub_9414(&v32, v34);
    v16 = *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_subtitleLabel];
    sub_162F0(v34, v35);
    v17 = sub_FC1D8();
    v19 = v18(v17);
    sub_FBE60(v19, v20, v16);
    sub_3C04(v34);
  }

  else
  {
    sub_CC68(&v32, &qword_19E960);
  }

  v21 = *a1;
  if (v21)
  {
    v22 = objc_allocWithZone(sub_139CF4());

    sub_A8FE8();
    v23 = sub_139CE4();
    sub_FA870(v23);
    if (qword_19A018 != -1)
    {
      swift_once();
    }

    v24 = sub_139A14();
    sub_4910(v24, qword_1B2B00);
    sub_4948(&unk_19E010);
    sub_1399C4();
    *(swift_allocObject() + 16) = xmmword_13E660;
    v35 = ObjectType;
    v34[0] = v5;
    v25 = v5;
    v26 = AMSLogKey();
    if (v26)
    {
      v27 = v26;
      sub_13BB84();
    }

    sub_139994();

    sub_3C04(v34);
    sub_139974();
    v35 = sub_139F94();
    v34[0] = v21;

    sub_139984();
    sub_CC68(v34, &unk_1A06F0);
    sub_1399F4();

    [v25 bounds];
    v29 = sub_FBEC4(v28);
    sub_FB38C(v21, v29, v30);
  }

  return [v5 setNeedsLayout];
}

id sub_FB2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerActionBlock);
  v8 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerActionBlock);
  *v7 = a3;
  v7[1] = a4;
  sub_C9FC(v8);
  v9 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerButton);

  sub_FBE00(a1, a2, 0, v9);

  return [v9 addTarget:v4 action:"didTapOffer:" forControlEvents:64];
}

void sub_FB38C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(sub_139CF4());
  v9 = sub_139CE4();
  v15 = v9;
  sub_FA870(v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 2) = v10;
  *(v12 + 3) = v11;
  *(v12 + 4) = a1;
  v13 = (v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_artworkFetcher);
  v14 = *(v4 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_artworkFetcher);
  *v13 = sub_FC0C4;
  v13[1] = v12;

  sub_C9FC(v14);

  sub_FAB80(v15, a2, a3);
}

void sub_FB504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      (*&stru_108.segname[(swift_isaMask & *v6) + 16])(a3, v5);
    }

    else
    {
    }
  }
}

uint64_t sub_FB5E0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_offerActionBlock);
  if (v2)
  {
    v3 = result;

    v2(v3);

    return sub_C9FC(v2);
  }

  return result;
}

void sub_FB6C0()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "tintColorDidChange");
  sub_F9B20();
}

id sub_FB744(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "traitCollectionDidChange:", a1);
  sub_F99E8();
  return [v1 setNeedsLayout];
}

uint64_t sub_FB80C@<X0>(double *a1@<X8>)
{
  v2 = sub_13C114();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_13A2A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_13A434();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_BBCC4();
  v14 = 20.0;
  v15 = 20.0;
  if (result)
  {
    v22 = v2;
    *v9 = UIFontTextStyleBody;
    *(v9 + 2) = 0;
    v21 = v3;
    v16 = enum case for FontUseCase.preferredFont(_:);
    v17 = sub_13A3E4();
    (*(*(v17 - 8) + 104))(v9, v16, v17);
    (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
    v24[3] = v6;
    v24[4] = &protocol witness table for FontSource;
    v18 = sub_CC08(v24);
    (*(v7 + 16))(v18, v9, v6);
    v19 = UIFontTextStyleBody;
    sub_13A444();
    (*(v7 + 8))(v9, v6);
    sub_13A284();
    sub_13A404();
    v15 = v20;
    (*(v21 + 8))(v5, v22);
    result = (*(v23 + 8))(v12, v10);
    v14 = 24.0;
  }

  *(a1 + 7) = &type metadata for Double;
  *(a1 + 8) = &protocol witness table for Double;
  a1[4] = 16.0;
  *(a1 + 12) = &type metadata for Double;
  *(a1 + 13) = &protocol witness table for Double;
  a1[9] = 50.0;
  *a1 = 16.0;
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = v14;
  return result;
}

void sub_FBB50(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerBlur);

    if (a2)
    {
      v6 = [objc_opt_self() effectWithStyle:7];
    }

    else
    {
      v6 = 0;
    }

    [v5 setEffect:v6];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin28ServiceProductBadgedPageView_footerView);

    v10 = objc_opt_self();
    v11 = &selRef_clearColor;
    if ((a2 & 1) == 0)
    {
      v11 = &selRef_ams_primaryBackground;
    }

    v12 = [v10 *v11];
    [v9 setBackgroundColor:v12];
  }
}

void sub_FBE00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_13BB54();
  [a4 setTitle:v6 forState:a3];
}

void sub_FBE60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_13BB54();

  [a3 setText:v4];
}

double sub_FBEC4(double a1)
{
  v2 = sub_13C114();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F95F8(v10);
  v6 = v12;
  v7 = v13;
  sub_162F0(v11, v12);
  sub_20038(v6, v7);
  sub_13A404();
  (*(v3 + 8))(v5, v2);
  sub_FC0D0(v10);
  return a1;
}

uint64_t sub_FC00C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_FC044()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_FC07C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_FC124()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_FC168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_FC238(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_13B974();
  sub_9E94();
  v45 = v7;
  v46 = v6;
  __chkstk_darwin(v6);
  sub_9EC0();
  v44 = (v9 - v8);
  v51 = sub_13B994();
  sub_9E94();
  v55 = v10;
  __chkstk_darwin(v11);
  sub_9EC0();
  v50 = v13 - v12;
  v14 = sub_4948(&qword_19A498);
  v15 = sub_8AD98(v14);
  __chkstk_darwin(v15);
  v54 = &v44 - v16;
  v17 = sub_13B834();
  v18 = sub_8AD98(v17);
  __chkstk_darwin(v18);
  sub_9EC0();
  v48 = v20 - v19;
  v21 = sub_13B6E4();
  sub_9E94();
  v57 = v22;
  __chkstk_darwin(v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v44 - v27;
  v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_didApply] = 0;
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_overlayViewController] = 0;
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageView] = [objc_allocWithZone(type metadata accessor for ServiceProductBadgedPageView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v56 = a1;
  sub_F7E38(a1, &v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination]);
  v47 = OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_objectGraph;
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_objectGraph] = a2;
  sub_13B7E4();
  sub_13B6B4();

  sub_13B9A4();
  v29 = v59;
  sub_13B9A4();
  sub_4948(&unk_1A16C0);
  sub_13B9A4();
  v30 = *(v57 + 16);
  v52 = v28;
  v53 = v21;
  v30(v25, v28, v21);

  swift_unknownObjectRetain();
  sub_13B814();
  swift_unknownObjectRelease();
  v31 = sub_13B5D4();
  sub_53A8(v54, 1, 1, v31);
  sub_13B884();
  swift_allocObject();
  v49 = v29;
  v32 = v51;
  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_metricsPresenter] = sub_13B844();
  v33 = v50;
  v54 = a2;
  sub_13B9A4();
  sub_139E44();

  v34 = sub_139E34();

  *&v3[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter] = v34;
  if (v34)
  {
    v36 = v44;
    v35 = v45;
    *v44 = 1;
    v37 = v46;
    (*(v35 + 104))(v36, enum case for PageRenderMetricsPresenter.ActivityStart.fetchPrimaryData(_:), v46);
    sub_A8FC0();
    v39 = *(v38 + 152);

    v39(v36);

    (*(v35 + 8))(v36, v37);
  }

  v40 = type metadata accessor for ServiceProductBadgedPageViewController();
  v58.receiver = v3;
  v58.super_class = v40;
  v41 = objc_msgSendSuper2(&v58, "init");
  [*&v41[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageView] setHidden:1];

  swift_unknownObjectRelease();
  sub_FE1A8();
  sub_FDF84(v56, v42);
  (*(v55 + 8))(v33, v32);
  (*(v57 + 8))(v52, v53);
  return v41;
}

void sub_FC788()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_didApply) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_overlayViewController) = 0;
  sub_13C094();
  __break(1u);
}

id sub_FC814()
{
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_overlayViewController])
  {
    return [v0 unsetChildViewController:?];
  }

  return result;
}

void sub_FC838()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    [v0 setChildViewController:v2];
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      sub_12B7E0(0, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_FC8F4(void *a1)
{
  sub_FC814();
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_overlayViewController);
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_overlayViewController) = a1;
  v4 = a1;

  sub_FC838();
}

void sub_FC95C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ServiceProductBadgedPageViewController();
  objc_msgSendSuper2(&v3, "loadView");
  v1 = [v0 view];
  v2 = [objc_opt_self() ams_primaryBackground];
  [v1 setBackgroundColor:v2];
}

void sub_FCA40()
{
  v1 = v0;
  v2 = sub_13B964();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_9EC0();
  v8 = v7 - v6;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ServiceProductBadgedPageViewController();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v9 = [v0 view];
  [v9 addSubview:*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageView]];

  sub_13B884();
  sub_13B904();
  if (*&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v10 + 168))();
    v11 = &v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination];
    v12 = *(type metadata accessor for ServiceProductBadgedPageDestination() + 52);
    sub_13B5D4();
    sub_9F94();
    (*(v13 + 16))(v8, &v11[v12]);
    (*(v4 + 104))(v8, enum case for PageRenderMetricsPresenter.ActivityEnd.fetchPrimaryDataCompleted(_:), v2);
    sub_A8FC0();
    (*(v14 + 160))(v8);
    (*(v4 + 8))(v8, v2);
  }
}

void sub_FCC78()
{
  v2 = sub_FE1C0();
  v22.receiver = v0;
  v22.super_class = v2;
  objc_msgSendSuper2(&v22, "viewDidAppear:", v1 & 1);
  sub_13B854();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v3 + 184))();
  }

  v4 = [v0 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 setNavigationBarHidden:0 animated:0];
  }

  v6 = &v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination];
  v7 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination + 56];
  v8 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination + 64];
  v21[3] = v2;
  v21[0] = v0;
  v9 = objc_allocWithZone(UIBarButtonItem);

  v10 = v0;
  v11 = sub_FE024(v7, v8, 0, v21, "dismissPressed:");
  v12 = objc_allocWithZone(type metadata accessor for ServiceBadgeView());
  v13 = sub_116774(0, v12, 20.0, 17.0, 100.0, 20.0, 20.0);
  LOBYTE(v7) = v6[8];
  v14 = [v10 traitCollection];
  sub_E67FC(v7);

  v15 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v13];
  v16 = [v10 parentViewController];
  if (v16)
  {
    v17 = v16;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v20 = [v17 navigationItem];
      [v20 setLeftBarButtonItem:v15];

      v19 = [v17 navigationItem];
      [v19 setRightBarButtonItem:v11];

      goto LABEL_10;
    }
  }

  v18 = [v10 navigationItem];
  [v18 setLeftBarButtonItem:v15];

  v19 = [v10 navigationItem];
  [v19 setRightBarButtonItem:v11];
LABEL_10:

  sub_FD804();
}

void sub_FCFA0()
{
  v3.receiver = v0;
  v3.super_class = sub_FE1C0();
  objc_msgSendSuper2(&v3, "viewDidDisappear:", v1 & 1);
  sub_13B884();
  sub_13B924();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 192))();
  }
}

void sub_FD084()
{
  v3.receiver = v0;
  v3.super_class = sub_FE1C0();
  objc_msgSendSuper2(&v3, "viewWillAppear:", v1 & 1);
  sub_13B884();
  sub_13B914();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v2 + 176))();
  }
}

uint64_t sub_FD168(char a1)
{
  v2 = v1;
  v4 = sub_13B954();
  sub_9E94();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_9EC0();
  v10 = v9 - v8;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ServiceProductBadgedPageViewController();
  objc_msgSendSuper2(&v14, "viewWillDisappear:", a1 & 1);
  sub_13B944();
  sub_13B864();
  v11 = *(v6 + 8);
  result = v11(v10, v4);
  if (*&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter])
  {
    sub_13B944();
    sub_A8FC0();
    (*(v13 + 200))(v10);
    return v11(v10, v4);
  }

  return result;
}

id sub_FD308()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ServiceProductBadgedPageViewController();
  objc_msgSendSuper2(&v3, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageView];
  sub_FD434();
  return [v1 setFrame:?];
}

void sub_FD3B0()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ServiceProductBadgedPageViewController();
  objc_msgSendSuper2(&v1, "viewDidLayoutSubviews");
  sub_FD804();
}

uint64_t sub_FD434()
{
  v1 = [v0 view];
  [v1 safeAreaInsets];

  v2 = [v0 view];
  [v2 bounds];

  return sub_13BE34();
}

void sub_FD518()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductBadgedPageViewController();
  objc_msgSendSuper2(&v2, "didReceiveMemoryWarning");
  sub_13B884();
  sub_13B934();
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageRenderPresenter])
  {
    sub_A8FC0();
    (*(v1 + 208))();
  }
}

uint64_t sub_FD5F4()
{
  sub_FDA14(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination + 16);
}

uint64_t sub_FD644()
{
  sub_FDC34();
  sub_FDA14(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination + 112);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2[3] = sub_7389C();
  v2[4] = &protocol witness table for OS_dispatch_queue;
  v2[0] = sub_13BD84();
  sub_13B9F4();

  return sub_3C04(v2);
}

void sub_FD70C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_FDCAC();
  }
}

uint64_t sub_FD778(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_13BF54();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_928C(v9, &unk_1A06F0);
}

void sub_FD804()
{
  v1 = v0;
  v2 = sub_4948(&qword_19A498);
  v3 = sub_8AD98(v2);
  __chkstk_darwin(v3);
  v5 = &v13 - v4;
  if ((*(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_didApply) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_didApply) = 1;
    v6 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_pageView);
    v7 = (v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_destination);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_objectGraph);

    sub_FAF30(v7, sub_FE014, v8, v9);

    [v6 setHidden:0];
    v10 = *(type metadata accessor for ServiceProductBadgedPageDestination() + 52);
    v11 = sub_13B5D4();
    sub_9F94();
    (*(v12 + 16))(v5, v7 + v10, v11);
    sub_53A8(v5, 0, 1, v11);
    sub_13B874();
  }
}

uint64_t sub_FD998(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_7D228(a1, v4);
    sub_FD644();

    return sub_928C(v4, &unk_1A06F0);
  }

  return result;
}

uint64_t sub_FDA14(uint64_t a1)
{
  v3 = sub_139E74();
  v4 = sub_8AD98(v3);
  __chkstk_darwin(v4);
  sub_9EC0();
  v7 = v6 - v5;
  v8 = sub_13B834();
  sub_9E94();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_9EC0();
  v14 = v13 - v12;
  sub_139E84();
  v15 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin38ServiceProductBadgedPageViewController_objectGraph);
  sub_13B6B4();
  sub_13B9A4();
  v16 = *&v20[0];
  sub_13B9A4();
  (*(v10 + 16))(v7, v14, v8);
  v17 = sub_4948(&unk_19B7E0);
  sub_53A8(v7, 0, 1, v17);
  memset(v20, 0, sizeof(v20));
  v21 = -1;
  v18 = (*(*v16 + 216))(a1, v7, v15, v20);

  sub_928C(v20, &unk_19E330);
  sub_FDF84(v7, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
  (*(v10 + 8))(v14, v8);
  return v18;
}

void sub_FDC34()
{
  v1 = [v0 view];
  [v1 setUserInteractionEnabled:0];

  v2 = objc_allocWithZone(type metadata accessor for LoadingViewController());
  v3 = sub_BBD88(2);

  sub_FC8F4(v3);
}

void sub_FDCAC()
{
  v1 = [v0 view];
  [v1 setUserInteractionEnabled:1];

  sub_FC8F4(0);
}

id sub_FDDA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductBadgedPageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ServiceProductBadgedPageViewController()
{
  result = qword_1A0B70;
  if (!qword_1A0B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_FDEC0()
{
  result = type metadata accessor for ServiceProductBadgedPageDestination();
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

uint64_t sub_FDF84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_9F94();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_FDFDC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_FE024(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_13BB54();
  }

  else
  {
    v10 = 0;
  }

  v11 = a4[3];
  if (v11)
  {
    v12 = sub_162F0(a4, a4[3]);
    v13 = *(v11 - 8);
    v14 = __chkstk_darwin(v12);
    v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_13C134();
    (*(v13 + 8))(v16, v11);
    sub_3C04(a4);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v6 initWithTitle:v10 style:a3 target:v17 action:a5];

  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_FE1C0()
{

  return type metadata accessor for ServiceProductBadgedPageViewController();
}

id sub_FE1DC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_artworkImageView;
  v11 = objc_allocWithZone(sub_139CF4());
  *&v4[v10] = sub_FE734();
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_visualEffectView;
  v13 = [objc_opt_self() effectWithStyle:8];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v5[v12] = v14;
  v17.receiver = v5;
  v17.super_class = type metadata accessor for ServiceProductCardBackgroundView();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_FE5F4();

  return v15;
}

void sub_FE304()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_artworkImageView;
  v3 = objc_allocWithZone(sub_139CF4());
  *(v0 + v2) = sub_FE734();
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_visualEffectView;
  v5 = [objc_opt_self() effectWithStyle:8];
  v6 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v5];

  *(v1 + v4) = v6;
  sub_13C094();
  __break(1u);
}

id sub_FE3FC()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ServiceProductCardBackgroundView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_artworkImageView];
  v3 = [v1 bounds];
  (*(&stru_68.reloff + (swift_isaMask & *v2)))(v3, v4, v5);
  [v1 bounds];
  [v2 setFrame:?];
  v6 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_visualEffectView];
  [v1 bounds];
  return [v6 setFrame:?];
}

id sub_FE524(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_artworkImageView);
  result = [v5 setHidden:a1 == 0];
  if (a1)
  {
    v7 = *&stru_108.segname[(swift_isaMask & *v5) + 16];

    v7(v8, a2);
  }

  return result;
}

id sub_FE5F4()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_artworkImageView]];
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin32ServiceProductCardBackgroundView_visualEffectView];

  return [v0 addSubview:v1];
}

id sub_FE690()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductCardBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_FE734()
{

  return sub_139CE4();
}

uint64_t sub_FE760@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v45 = sub_13A4C4();
  v51 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_13A454();
  v4 = *(v50 - 8);
  __chkstk_darwin(v50);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13A4B4();
  v47 = *(v7 - 8);
  __chkstk_darwin(v7);
  v49 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4948(&qword_19AFE8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  v55[0] = v9;
  sub_20068();
  sub_4948(&qword_19AFF0);
  sub_1D268();
  v46 = v7;
  sub_13BF64();
  sub_4948(&qword_19AFE0);
  v10 = *(sub_13A4F4() - 8);
  v42 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v43 = v12;
  *(v12 + 16) = xmmword_13E650;
  v36[2] = v12 + v11;
  v36[0] = v2;
  v13 = v2[53];
  v14 = v2[54];
  v15 = sub_162F0(v2 + 50, v13);
  v56 = v13;
  v57 = *(v14 + 8);
  v16 = sub_CC08(v55);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v41 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v17 = v4;
  v40 = *(v4 + 104);
  v18 = v50;
  v40(v6);
  v39 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v19 = v51;
  v38 = *(v51 + 104);
  v21 = v44;
  v20 = v45;
  v38(v44);
  v22 = v36[0];
  sub_13A4E4();
  v23 = *(v19 + 8);
  v51 = v19 + 8;
  v37 = v23;
  v24 = v21;
  v23(v21, v20);
  v25 = v17 + 8;
  v26 = *(v17 + 8);
  v36[1] = v25;
  v26(v6, v18);
  sub_1D2CC(&v52);
  sub_3C04(v55);
  v27 = v22[43];
  v28 = v22[44];
  v29 = sub_162F0(v22 + 40, v27);
  v56 = v27;
  v57 = *(v28 + 8);
  v30 = sub_CC08(v55);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v31 = v50;
  (v40)(v6, v41, v50);
  (v38)(v24, v39, v20);
  v32 = v49;
  sub_13A4E4();
  v37(v24, v20);
  v26(v6, v31);
  sub_1D2CC(&v52);
  sub_3C04(v55);
  v33 = sub_13A514();
  v34 = v48;
  v48[3] = v33;
  v34[4] = &protocol witness table for VerticalFlowLayout;
  v34[5] = &protocol witness table for VerticalFlowLayout;
  sub_CC08(v34);
  sub_13A4D4();
  return (*(v47 + 8))(v32, v46);
}

double sub_FED74()
{
  v1 = v0;
  sub_162F0(v0, v0[3]);
  sub_13A3F4();
  v3 = v2;
  sub_162F0(v1 + 5, v1[8]);
  sub_13A3F4();
  sub_162F0(v1 + 10, v1[13]);
  sub_13A3F4();
  sub_162F0(v1 + 15, v1[18]);
  sub_13A3F4();
  return v3;
}

uint64_t sub_FEE64(double a1, double a2, double a3, double a4)
{
  v9 = sub_13A314();
  sub_9E94();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_FED74();
  sub_FF33C(a1, a2, a3, a4, v15, v16);
  sub_FF464(v4 + 45);
  sub_13A384();
  v18 = v17;
  v20 = v19;
  sub_FF464(v4 + 30);
  sub_FF454();
  sub_13A3F4();
  if (v18 <= v21)
  {
    v18 = v21;
  }

  *&v24[3] = v18;
  sub_FF464(v4 + 25);
  sub_FF454();
  sub_13A3F4();
  v24[2] = v22;
  sub_FE760(v25);
  sub_FF464(v25);
  sub_FF454();
  sub_13A384();
  sub_3C04(v25);
  v24[1] = v20;
  v26.origin.x = sub_35BE8();
  CGRectGetMinX(v26);
  v27.origin.x = sub_35BE8();
  CGRectGetMinY(v27);
  sub_FE760(v25);
  sub_FF464(v25);
  sub_FF454();
  sub_13A544();
  (*(v11 + 8))(v14, v9);
  sub_3C04(v25);
  sub_162F0(v4 + 45, v4[48]);
  v28.origin.x = sub_35BE8();
  CGRectGetMinX(v28);
  v29.origin.x = sub_35BE8();
  CGRectGetMinY(v29);
  v30.origin.x = sub_35BE8();
  CGRectGetHeight(v30);
  sub_35BE8();
  sub_13BE44();
  sub_13A354();
  sub_35BE8();
  return sub_13A2B4();
}

uint64_t sub_FF130()
{
  v1 = v0;
  v2 = sub_13C114();
  sub_9E94();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_162F0(v0 + 45, v0[48]);
  sub_FF480();
  sub_13A384();
  sub_162F0(v1 + 30, v1[33]);
  sub_13A3F4();
  sub_FE760(v11);
  sub_162F0(v11, v11[3]);
  sub_FF480();
  sub_13A384();
  sub_3C04(v11);
  v8 = v0[28];
  v9 = v1[29];
  sub_162F0(v1 + 25, v1[28]);
  sub_20038(v8, v9);
  sub_13A404();
  (*(v4 + 8))(v7, v2);
  sub_FED74();
  return sub_13BE74();
}

uint64_t sub_FF360(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_FF3A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_FF4B4()
{
  qword_1A0BF0 = &type metadata for Double;
  unk_1A0BF8 = &protocol witness table for Double;
  qword_1A0BD8 = 0x4040000000000000;
  qword_1A0C18 = &type metadata for Double;
  unk_1A0C20 = &protocol witness table for Double;
  qword_1A0C00 = 0x4038000000000000;
  qword_1A0C40 = &type metadata for Double;
  unk_1A0C48 = &protocol witness table for Double;
  qword_1A0C28 = 0x4040000000000000;
  qword_1A0C68 = &type metadata for Double;
  unk_1A0C70 = &protocol witness table for Double;
  qword_1A0C50 = 0x4038000000000000;
  qword_1A0C90 = &type metadata for Double;
  unk_1A0C98 = &protocol witness table for Double;
  qword_1A0C78 = 0x4024000000000000;
  qword_1A0CB8 = &type metadata for Double;
  unk_1A0CC0 = &protocol witness table for Double;
  qword_1A0CA0 = 0x4024000000000000;
  qword_1A0CE0 = &type metadata for Double;
  unk_1A0CE8 = &protocol witness table for Double;
  qword_1A0CC8 = 0x4059000000000000;
  qword_1A0D08 = &type metadata for Double;
  unk_1A0D10 = &protocol witness table for Double;
  qword_1A0CF0 = 0;
}

id sub_FF534(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = sub_13A2A4();
  sub_7E5D8(v5, a2);
  v6 = sub_4910(v5, a2);
  v8 = *a3;
  *v6 = *a3;
  (*(*(v5 - 8) + 104))();

  return v8;
}

UIFontTextStyle sub_FF5E0()
{
  v0 = sub_13A2A4();
  sub_7E5D8(v0, qword_1A0D30);
  v1 = sub_4910(v0, qword_1A0D30);
  *v1 = UIFontTextStyleTitle2;
  *(v1 + 8) = UIFontWeightBold;
  v2 = enum case for FontUseCase.preferredFontDerivative(_:);
  v3 = sub_13A3E4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  (*(*(v0 - 8) + 104))(v1, enum case for FontSource.useCase(_:), v0);

  return UIFontTextStyleTitle2;
}

id sub_FF700(uint64_t a1, void *a2)
{
  result = [objc_opt_self() ams_primaryText];
  *a2 = result;
  return result;
}

id sub_FF744()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton;
  v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton];
  }

  else
  {
    v4 = sub_FF7A8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_FF7A8(void *a1)
{
  v2 = [objc_allocWithZone(AMSUICommonButton) init];
  v3 = [a1 tintColor];
  [v2 setBackgroundColor:v3];

  v4 = v2;
  [v4 setContentEdgeInsets:{12.0, 18.0, 12.0, 18.0}];
  v5 = [v4 titleLabel];

  if (v5)
  {
    if (qword_19A110 != -1)
    {
      swift_once();
    }

    v6 = sub_13A2A4();
    sub_4910(v6, qword_1A0D18);
    v7.super.isa = [a1 traitCollection];
    isa = v7.super.isa;
    v9 = sub_13A294(v7).super.isa;

    [v5 setFont:v9];
  }

  return v4;
}

id sub_FF8F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_descriptionLabel;
  sub_139BB4();
  if (qword_19A100 != -1)
  {
    sub_10086C();
    swift_once();
  }

  v11 = qword_19A0F8;
  v12 = qword_1A0BD0;
  if (v11 != -1)
  {
    sub_100858();
    swift_once();
  }

  v13 = sub_13A2A4();
  v14 = sub_4910(v13, qword_1A0BB8);
  v22 = sub_100898(v14, v15, v16, v17, v18, v19, v20, v21, v40, v42.receiver, v42.super_class, v43, v44, v45, v46, v47);
  v23 = *(*(v13 - 8) + 16);
  v23(v22, v14, v13);
  *&v4[v10] = sub_1007F0();
  *&v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton] = 0;
  v24 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_titleLabel;
  if (qword_19A120 != -1)
  {
    sub_100844();
    swift_once();
  }

  v25 = qword_19A118;
  v26 = qword_1A0D48;
  if (v25 != -1)
  {
    sub_100830();
    swift_once();
  }

  v27 = sub_4910(v13, qword_1A0D30);
  v35 = sub_100898(v27, v28, v29, v30, v31, v32, v33, v34, v41, v42.receiver, v42.super_class, v43, v44, v45, v46, v47);
  v23(v35, v27, v13);
  *&v4[v24] = sub_1007F0();
  v36 = &v4[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_offerAction];
  v37 = type metadata accessor for ServiceProductCardHeroView();
  *v36 = 0;
  *(v36 + 1) = 0;
  v42.receiver = v5;
  v42.super_class = v37;
  v38 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  sub_100574();

  return v38;
}

void sub_FFB40()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_descriptionLabel;
  sub_139BB4();
  if (qword_19A100 != -1)
  {
    sub_10086C();
    swift_once();
  }

  v2 = qword_19A0F8;
  v3 = qword_1A0BD0;
  if (v2 != -1)
  {
    sub_100858();
    swift_once();
  }

  v4 = sub_13A2A4();
  v5 = sub_4910(v4, qword_1A0BB8);
  v13 = sub_100898(v5, v6, v7, v8, v9, v10, v11, v12, v28, v30, v32, v34, v36, v38, v40, v42);
  v14 = *(*(v4 - 8) + 16);
  v14(v13, v5, v4);
  *(v0 + v1) = sub_1007F0();
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton) = 0;
  v15 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_titleLabel;
  if (qword_19A120 != -1)
  {
    sub_100844();
    swift_once();
  }

  v16 = qword_19A118;
  v17 = qword_1A0D48;
  if (v16 != -1)
  {
    sub_100830();
    swift_once();
  }

  v18 = sub_4910(v4, qword_1A0D30);
  v26 = sub_100898(v18, v19, v20, v21, v22, v23, v24, v25, v29, v31, v33, v35, v37, v39, v41, v43);
  v14(v26, v18, v4);
  *(v0 + v15) = sub_1007F0();
  v27 = (v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_offerAction);
  *v27 = 0;
  v27[1] = 0;
  sub_13C094();
  __break(1u);
}

uint64_t sub_FFD5C()
{
  v1 = v0;
  v2 = sub_13A314();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServiceProductCardHeroView();
  v23.receiver = v0;
  v23.super_class = v6;
  objc_msgSendSuper2(&v23, "layoutSubviews");
  if (qword_19A108 != -1)
  {
    sub_100810();
  }

  sub_1006FC(&qword_1A0BD8, v22);
  v7 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_descriptionLabel];
  v8 = sub_139BB4();
  v22[43] = v8;
  v9 = sub_270D8();
  v22[44] = v9;
  v22[40] = v7;
  v10 = v7;
  v11 = sub_FF744();
  v22[48] = sub_100758();
  v22[49] = &protocol witness table for UIView;
  v22[45] = v11;
  v12 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_titleLabel];
  v22[53] = v8;
  v22[54] = v9;
  v22[50] = v12;
  v13 = v12;
  [v1 bounds];
  sub_FEE64(v14, v15, v16, v17);
  (*(v3 + 8))(v5, v2);
  v18 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton];
  [v18 bounds];
  sub_127EDC(v19 * 0.5);

  return sub_10079C(v22);
}

double sub_FFF88()
{
  if (qword_19A108 != -1)
  {
    sub_100810();
  }

  sub_1006FC(&qword_1A0BD8, v11);
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_descriptionLabel);
  v2 = sub_139BB4();
  v13 = v2;
  v3 = sub_270D8();
  v14 = v3;
  v12 = v1;
  v4 = v1;
  v5 = sub_FF744();
  v16 = sub_100758();
  v17 = &protocol witness table for UIView;
  v15 = v5;
  v6 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_titleLabel);
  v19 = v2;
  v20 = v3;
  v18 = v6;
  v7 = v6;
  sub_FF130();
  v9 = v8;
  sub_10079C(v11);
  return v9;
}

void sub_100134()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ServiceProductCardHeroView();
  objc_msgSendSuper2(&v3, "tintColorDidChange");
  v1 = sub_FF744();
  v2 = [v0 tintColor];
  [v1 setTintColor:v2];
}

void sub_1001F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = (v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_offerAction);
  v13 = *(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_offerAction);
  *v12 = a5;
  v12[1] = a6;

  sub_A6980(v13);
  sub_B0F90(a1, &v24);
  if (v25)
  {
    sub_9414(&v24, v26);
    sub_100880();
    (*(v14 + 384))(v26, a4);
    sub_3C04(v26);
  }

  else
  {
    sub_2519C(&v24);
    [*(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_titleLabel) setHidden:1];
  }

  sub_B0F90(a2, &v24);
  if (v25)
  {
    sub_9414(&v24, v26);
    sub_100880();
    (*(v15 + 384))(v26, a4);
    sub_3C04(v26);
  }

  else
  {
    sub_2519C(&v24);
    [*(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_descriptionLabel) setHidden:1];
  }

  v16 = sub_FF744();
  [v16 setHidden:*(a3 + 24) == 0];

  v17 = OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton;
  [*(v7 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView____lazy_storage___offerButton) addTarget:v7 action:"offerButtonActionWithSender:" forControlEvents:64];
  v18 = *(v7 + v17);
  sub_B0F90(a3, v26);
  v19 = v27;
  if (v27)
  {
    v20 = v28;
    sub_162F0(v26, v27);
    v21 = *(v20 + 72);
    v22 = v18;
    v21(v19, v20);
    sub_3C04(v26);
    v23 = sub_13BB54();
  }

  else
  {
    v22 = v18;
    sub_2519C(v26);
    v23 = 0;
  }

  [v22 setTitle:v23 forState:0];
}

uint64_t sub_100494(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_offerAction);
  if (v2)
  {
    v3 = result;

    v2(v3);

    return sub_A6980(v2);
  }

  return result;
}

id sub_100574()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_descriptionLabel]];
  v1 = sub_FF744();
  [v0 addSubview:v1];

  v2 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin26ServiceProductCardHeroView_titleLabel];

  return [v0 addSubview:v2];
}

id sub_100634()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductCardHeroView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100758()
{
  result = qword_1A0D98;
  if (!qword_1A0D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1A0D98);
  }

  return result;
}

uint64_t sub_1007F0()
{

  return sub_139BA4();
}

uint64_t sub_100810()
{

  return swift_once();
}

uint64_t *sub_100898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  a15 = v16;
  a16 = v17;

  return sub_CC08(&a12);
}

uint64_t sub_1008B0()
{
  v1 = sub_13C114();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  sub_FF464(v0 + 85);
  sub_101530();
  if ((sub_13A364() & 1) == 0)
  {
    sub_1014D4(v0 + 10);
    sub_10150C();
    v3 = *(v2 + 8);
    v4 = sub_10153C();
    v3(v4);
    sub_1014D4(v0 + 15);
    sub_10150C();
    v5 = sub_10153C();
    v3(v5);
    sub_100DD8();
    sub_FF464(v0 + 85);
    v24.origin.x = sub_3001C();
    CGRectGetMaxX(v24);
    v25.origin.x = sub_3001C();
    CGRectGetMinY(v25);
    sub_3001C();
    sub_13BE44();
    sub_101530();
    sub_13A354();
  }

  sub_100F50();
  v6 = sub_3001C();
  v26.origin.x = sub_FF33C(v6, v7, v8, v9, v10, v11);
  CGRectGetMaxY(v26);
  sub_FF464(v0 + 95);
  sub_101530();
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(v0 + 95, v0[98]);
    sub_101548();
    v27.origin.x = sub_35BE8();
    CGRectGetWidth(v27);
    sub_1014D4(v0 + 50);
    sub_10150C();
    v12 = *(v2 + 8);
    v13 = sub_10153C();
    v12(v13);
    sub_FF464(v0 + 95);
    v28.origin.x = sub_35BE8();
    CGRectGetMinX(v28);
    sub_35BE8();
    sub_13BE44();
    sub_101530();
    sub_13A354();
    v14 = sub_35BE8();
    sub_101040(v14, v15, v16);
    sub_1014D4(v0 + 60);
    sub_10150C();
    v17 = sub_10153C();
    v12(v17);
    sub_1014D4(v0 + 65);
    sub_10150C();
    v18 = sub_10153C();
    v12(v18);
    sub_FF464(v0 + 100);
    v29.origin.x = sub_35BE8();
    CGRectGetMinX(v29);
    sub_35BE8();
    sub_13BE44();
    sub_101530();
    sub_13A354();
  }

  sub_FF464(v0 + 90);
  sub_101530();
  if ((sub_13A364() & 1) == 0)
  {
    sub_162F0(v0 + 90, v0[93]);
    sub_101548();
    v30.origin.x = sub_35BE8();
    CGRectGetWidth(v30);
    sub_1014D4(v0 + 45);
    sub_10150C();
    v19 = sub_10153C();
    v20(v19);
    sub_FF464(v0 + 90);
    v31.origin.x = sub_35BE8();
    CGRectGetMinX(v31);
    sub_35BE8();
    sub_13BE44();
    sub_101530();
    sub_13A354();
  }

  sub_FF464(v0 + 80);
  sub_101530();
  if ((sub_13A364() & 1) == 0)
  {
    sub_FF464(v0 + 80);
    v32.origin.x = sub_35BE8();
    CGRectGetMinX(v32);
    v33.origin.x = sub_35BE8();
    CGRectGetWidth(v33);
    v34.origin.x = sub_35BE8();
    CGRectGetHeight(v34);
    sub_35BE8();
    sub_13BE44();
    sub_101530();
    sub_13A354();
  }

  sub_FF464(v0 + 75);
  sub_101530();
  if ((sub_13A364() & 1) == 0)
  {
    sub_1014D4(v0);
    sub_10150C();
    v21 = sub_10153C();
    v22(v21);
    v35.origin.x = sub_35BE8();
    CGRectGetWidth(v35);
    sub_162F0(v0 + 75, v0[78]);
    v36.origin.x = sub_35BE8();
    CGRectGetMinX(v36);
    sub_35BE8();
    sub_13BE44();
    sub_13A354();
  }

  sub_35BE8();
  return sub_13A2B4();
}

double sub_100DD8()
{
  v1 = v0;
  v2 = sub_13C114();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[23];
  v7 = v1[24];
  sub_162F0(v1 + 20, v6);
  sub_20038(v6, v7);
  sub_13A404();
  v9 = v8;
  v10 = *(v3 + 8);
  v10(v5, v2);
  v11 = v1[8];
  v12 = v1[9];
  sub_162F0(v1 + 5, v11);
  sub_20038(v11, v12);
  sub_13A404();
  v10(v5, v2);
  return v9;
}

double sub_100F50()
{
  v1 = v0;
  sub_162F0(v0 + 25, v0[28]);
  sub_13A3F4();
  v3 = v2;
  sub_162F0(v1 + 30, v1[33]);
  sub_13A3F4();
  sub_162F0(v1 + 35, v1[38]);
  sub_13A3F4();
  sub_162F0(v1 + 40, v1[43]);
  sub_13A3F4();
  return v3;
}

double sub_101040(double a1, double a2, double a3)
{
  v4 = v3;
  v6 = sub_13C114();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3[58];
  v11 = v4[59];
  sub_162F0(v4 + 55, v10);
  sub_20038(v10, v11);
  sub_13A404();
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = v4[63];
  v14 = v4[64];
  sub_162F0(v4 + 60, v13);
  sub_20038(v13, v14);
  sub_13A404();
  v16 = v15;
  v12(v9, v6);
  v17 = v4[73];
  v18 = v4[74];
  sub_162F0(v4 + 70, v17);
  sub_20038(v17, v18);
  sub_13A404();
  v20 = v19;
  v12(v9, v6);
  return a3 - v16 - v20;
}

uint64_t sub_101234(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 600))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_101274(uint64_t result, int a2, int a3)
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
      *(result + 600) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 600) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_101368(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 840))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1013A8(uint64_t result, int a2, int a3)
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
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 824) = 0u;
    *(result + 760) = 0u;
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
      *(result + 840) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 840) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1014D4(void *a1)
{
  sub_162F0(a1, v1);

  return sub_20038(v1, v2);
}

uint64_t sub_10150C()
{

  return sub_13A404();
}

uint64_t sub_101548()
{

  return sub_13A394();
}

uint64_t sub_101588(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_13B5D4();
    v10 = a1 + *(a3 + 48);

    return sub_52E0(v10, a2, v9);
  }
}

void *sub_101630(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_13B5D4();
    v8 = v5 + *(a4 + 48);

    return sub_53A8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ServiceProductCardPageDestination()
{
  result = qword_1A0DF8;
  if (!qword_1A0DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1016FC()
{
  sub_F6BAC();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_248F4(319, &qword_19AE40, &qword_19AE48);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_248F4(319, &qword_19A3C8, &unk_19A3D0);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_10181C();
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        v1 = sub_13B5D4();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_10181C()
{
  if (!qword_1A07D8)
  {
    v0 = sub_13BF44();
    if (!v1)
    {
      atomic_store(v0, &qword_1A07D8);
    }
  }
}

uint64_t sub_10186C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a3;
  v6 = sub_4948(&qword_19C8C8);
  __chkstk_darwin(v6 - 8);
  v127 = &v126 - v7;
  v126 = sub_4948(&qword_19A498);
  sub_2B538();
  __chkstk_darwin(v8);
  v130 = &v126 - v9;
  sub_13B5D4();
  sub_9E94();
  v131 = v11;
  v132 = v10;
  __chkstk_darwin(v10);
  v139 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_13B584();
  sub_9E94();
  v145 = v13;
  __chkstk_darwin(v14);
  v136 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_99F78();
  __chkstk_darwin(v16);
  sub_18C34();
  v135 = v17;
  sub_99F78();
  __chkstk_darwin(v18);
  sub_18C34();
  v134 = v19;
  sub_99F78();
  __chkstk_darwin(v20);
  sub_18C34();
  v133 = v21;
  sub_99F78();
  __chkstk_darwin(v22);
  sub_18C34();
  v129 = v23;
  sub_99F78();
  __chkstk_darwin(v24);
  v26 = &v126 - v25;
  __chkstk_darwin(v27);
  __chkstk_darwin(v28);
  v29 = type metadata accessor for ServiceProductCardPageDestination();
  sub_2B538();
  __chkstk_darwin(v30);
  v32 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_139BD4();
  inited = swift_initStackObject();
  sub_139DC4();
  v140 = swift_initStackObject();
  v141 = v29;
  v142 = a1;
  v143 = a2;
  v146[2] = a2;
  sub_9DD0(0x6B726F77747261, 0xE700000000000000, v29, sub_24498, v146, v33, v34, v35);
  v128 = v26;
  if (v3)
  {

    v36 = 0;
  }

  *v32 = v36;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_6;
  }

  sub_102838();
  if (v3)
  {

    sub_18B90();
    sub_6BDB4(v157, &qword_19E960);
LABEL_6:
    sub_13BAB4();
    sub_677B8();
    v37 = sub_9F18();
    sub_102814(v37, v38);
    *v39 = 0x7470697263736564;
    v39[1] = 0xEB000000006E6F69;
    v39[2] = v141;
    sub_9EF8();
    (*(v40 + 104))();
    swift_willThrow();
    v41 = sub_102820();
    v42(v41);

    sub_1027E4();
    goto LABEL_7;
  }

  v115 = sub_102820();
  v116(v115);
  sub_102854();
LABEL_7:
  v43 = v148;
  *(v32 + 8) = v147;
  *(v32 + 24) = v43;
  *(v32 + 5) = v149;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_677B8();
    v44 = sub_9F18();
    sub_102814(v44, v45);
    *v46 = 0x746341726566666FLL;
    v46[1] = 0xEB000000006E6F69;
    v46[2] = v141;
    sub_9EF8();
    (*(v47 + 104))();
    swift_willThrow();
    v48 = sub_1027F4();
    v49(v48);

    sub_1027E4();
  }

  else
  {
    sub_139BC4();
    v117 = sub_1027F4();
    v118(v117);
    sub_102854();
  }

  v50 = v148;
  *(v32 + 88) = v147;
  *(v32 + 104) = v50;
  *(v32 + 15) = v149;
  v51 = v128;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_677B8();
    v52 = sub_9F18();
    sub_102814(v52, v53);
    *v54 = 0x746954726566666FLL;
    v54[1] = 0xEA0000000000656CLL;
    v120 = v141;
    v54[2] = v141;
    sub_9EF8();
    (*(v55 + 104))();
    swift_willThrow();
    sub_102808();
    v56(v51, v158);

    sub_1027E4();
  }

  else
  {
    sub_139DB4();
    sub_102808();
    v119(v51, v158);
    sub_102854();
    v120 = v141;
  }

  v57 = v148;
  *(v32 + 8) = v147;
  *(v32 + 9) = v57;
  *(v32 + 20) = v149;
  v58 = v129;
  sub_13B594();
  if (sub_13B564())
  {
    goto LABEL_16;
  }

  v59 = v127;
  sub_80C0();
  if (sub_52E0(v59, 1, v126) == 1)
  {
    sub_6BDB4(v59, &qword_19C8C8);
LABEL_16:
    sub_13BAB4();
    sub_677B8();
    sub_9F18();
    *v60 = 0x6B726F77747261;
    v60[1] = 0xE700000000000000;
    v60[2] = v120;
    sub_9EF8();
    (*(v61 + 104))();
    swift_willThrow();
    sub_102808();
    v62(v58, v158);

    v63 = v130;
    v64 = v132;
    sub_53A8(v130, 1, 1, v132);
    goto LABEL_17;
  }

  sub_102808();
  v67(v58, v158);
  v63 = v130;
  sub_678FC(v59, v130);
  v64 = v132;
  if (sub_52E0(v63, 1, v132) != 1)
  {
    v66 = v131;
    (*(v131 + 32))(v139, v63, v64);
    v65 = v133;
    goto LABEL_21;
  }

LABEL_17:
  v65 = v133;
  v66 = v131;
  sub_13B5C4();
  if (sub_52E0(v63, 1, v64) != 1)
  {
    sub_6BDB4(v63, &qword_19A498);
  }

LABEL_21:
  (*(v66 + 32))(&v32[*(v120 + 48)], v139, v64);
  sub_13B594();
  if (sub_13B564())
  {
LABEL_24:
    sub_13BAB4();
    sub_677B8();
    v68 = sub_9F18();
    sub_102814(v68, v69);
    *v70 = 0x65636976726573;
    v70[1] = 0xE700000000000000;
    v70[2] = v120;
    sub_9EF8();
    (*(v71 + 104))();
    swift_willThrow();
    v72 = sub_1027F4();
    v73(v72);

    v74 = 0;
    v75 = 0uLL;
    v76 = 0uLL;
    v77 = 0uLL;
    v78 = 0uLL;
    v79 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    v83 = 0uLL;
    goto LABEL_26;
  }

  sub_895C();
  if (*(&v147 + 1) == 1)
  {
    sub_6BDB4(&v147, &qword_1A0768);
    v120 = v141;
    goto LABEL_24;
  }

  sub_102808();
  v84(v65, v158);
  v75 = v147;
  v76 = v148;
  v77 = v149;
  v78 = v150;
  v79 = v151;
  v80 = v152;
  v81 = v153;
  v82 = v154;
  v83 = v155;
  v74 = v156;
LABEL_26:
  *(v32 + 168) = v75;
  *(v32 + 184) = v76;
  *(v32 + 200) = v77;
  *(v32 + 216) = v78;
  *(v32 + 232) = v79;
  *(v32 + 248) = v80;
  *(v32 + 264) = v81;
  *(v32 + 280) = v82;
  *(v32 + 296) = v83;
  *(v32 + 39) = v74;
  v85 = v134;
  v86 = v142;
  sub_13B594();
  if (sub_13B564())
  {
    sub_13BAB4();
    sub_677B8();
    v90 = sub_9F18();
    sub_102814(v90, v91);
    strcpy(v92, "serviceCaption");
    v92[15] = -18;
    v122 = v141;
    *(v92 + 2) = v141;
    sub_9EF8();
    (*(v93 + 104))();
    v87 = v85;
    swift_willThrow();
    v94 = sub_1027F4();
    v95(v94);

    v89 = 0;
    sub_1027E4();
  }

  else
  {
    v87 = 0;
    sub_139DB4();
    v88 = v85;
    v89 = 0;
    sub_102808();
    v121(v88, v158);
    sub_102854();
    v122 = v141;
  }

  v96 = v148;
  *(v32 + 20) = v147;
  *(v32 + 21) = v96;
  *(v32 + 44) = v149;
  v97 = v135;
  sub_13B594();
  v98 = sub_13B564();
  v99 = v136;
  if (v98)
  {
    goto LABEL_32;
  }

  sub_102838();
  v89 = v87;
  if (v87)
  {

    sub_18B90();
    sub_6BDB4(v157, &qword_19E960);
LABEL_32:
    sub_13BAB4();
    sub_677B8();
    v100 = sub_9F18();
    sub_102814(v100, v101);
    *v102 = 0x74695465726F7473;
    v102[1] = 0xEA0000000000656CLL;
    v102[2] = v122;
    sub_9EF8();
    (*(v103 + 104))();
    v87 = v89;
    swift_willThrow();
    sub_102808();
    v104(v97, v158);

    sub_1027E4();
    goto LABEL_33;
  }

  sub_102808();
  v123(v97, v158);
  sub_102854();
LABEL_33:
  *(v32 + 49) = v149;
  v105 = v148;
  *(v32 + 360) = v147;
  *(v32 + 376) = v105;
  sub_13B594();
  if ((sub_13B564() & 1) == 0)
  {
    sub_102838();
    if (!v87)
    {

      v124 = v144;
      v125 = v158;
      v144(v86, v158);
      v124(v99, v125);
      sub_102854();
      goto LABEL_37;
    }

    sub_18B90();
    sub_6BDB4(v157, &qword_19E960);
  }

  sub_13BAB4();
  sub_677B8();
  v106 = sub_9F18();
  sub_102814(v106, v107);
  *v108 = 0x656C746974;
  v108[1] = 0xE500000000000000;
  v108[2] = v141;
  sub_9EF8();
  (*(v109 + 104))();
  swift_willThrow();

  v110 = v144;
  v111 = v158;
  v144(v86, v158);
  v110(v99, v111);

  sub_1027E4();
LABEL_37:
  v112 = v148;
  *(v32 + 3) = v147;
  *(v32 + 4) = v112;
  *(v32 + 10) = v149;
  sub_102780(v32, v137);
  sub_13B5A4();
  sub_2B538();
  return (*(v113 + 8))(v143);
}

uint64_t sub_1026F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_13B5D4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_102780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceProductCardPageDestination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1027E4()
{
  *(v0 + 224) = 0;
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  return result;
}

uint64_t sub_102820()
{
  result = v1;
  *(v0 + 144) = *(*(v0 + 152) + 8);
  return result;
}

uint64_t sub_102838()
{

  return sub_139DB4();
}

uint64_t sub_102854()
{

  return sub_9414((v1 - 160), v0 + 192);
}

id sub_10286C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v5 = sub_13B834();
  __chkstk_darwin(v5 - 8);
  sub_9EC0();
  v6 = sub_4948(&qword_19A498);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_13B6E4();
  sub_9E94();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_didApply] = 0;
  *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_overlayViewController] = 0;
  sub_103D58(a1, &v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_destination]);
  *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_objectGraph] = a2;
  sub_13B7E4();
  sub_13B6B4();

  sub_13B9A4();
  sub_13B9A4();
  (*(v11 + 16))(v14, v17, v9);
  v18 = sub_13B5D4();
  sub_53A8(v8, 1, 1, v18);

  sub_13B824();
  sub_13B884();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_metricsPresenter] = sub_13B844();
  v19 = type metadata accessor for ServiceProductCardPageDestination();
  v20 = v25;
  (*(*(v18 - 8) + 16))(v8, v25 + *(v19 + 48), v18);
  sub_53A8(v8, 0, 1, v18);

  sub_13B874();

  v21 = type metadata accessor for ServiceProductCardPageViewController();
  v26.receiver = v2;
  v26.super_class = v21;
  v22 = objc_msgSendSuper2(&v26, "init");

  sub_103E5C();
  sub_103DBC(v20, v23);
  (*(v11 + 8))(v17, v9);
  return v22;
}

void sub_102BB8()
{
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_didApply) = 0;
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_overlayViewController) = 0;
  sub_13C094();
  __break(1u);
}

id sub_102C44()
{
  if (*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_overlayViewController])
  {
    return [v0 unsetChildViewController:?];
  }

  return result;
}

void sub_102C68()
{
  v1 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    [v0 setChildViewController:v2];
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      sub_12B7E0(0, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_102D24(void *a1)
{
  sub_102C44();
  v3 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_overlayViewController);
  *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_overlayViewController) = a1;
  v4 = a1;

  sub_102C68();
}

void sub_102D8C()
{
  v1 = [objc_allocWithZone(type metadata accessor for ServiceProductCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setView:v1];

  v2 = [v0 view];
  [v2 setAlpha:0.0];
}

void sub_102EE4(char a1)
{
  v2 = v1;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ServiceProductCardPageViewController();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
  sub_13B854();
  sub_103318();
}

uint64_t sub_10300C(char a1, SEL *a2, uint64_t (*a3)(uint64_t, void *))
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for ServiceProductCardPageViewController();
  objc_msgSendSuper2(&v9, *a2, a1 & 1);
  v7 = sub_13B884();
  return a3(v7, &protocol witness table for PageMetricsPresenter);
}

uint64_t sub_1030F4(char a1)
{
  v3 = sub_13B954();
  sub_9E94();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_9EC0();
  v9 = v8 - v7;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ServiceProductCardPageViewController();
  objc_msgSendSuper2(&v11, "viewWillDisappear:", a1 & 1);
  sub_13B944();
  sub_13B864();
  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_103240(SEL *a1, uint64_t (*a2)(uint64_t, void *))
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ServiceProductCardPageViewController();
  objc_msgSendSuper2(&v7, *a1);
  v5 = sub_13B884();
  return a2(v5, &protocol witness table for PageMetricsPresenter);
}

void sub_103318()
{
  if ((v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_didApply] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_didApply] = 1;
    v1 = [v0 view];
    v2 = type metadata accessor for ServiceProductCardView();
    sub_103E74(v1, v2);
    v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_destination;
    sub_1D450();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D450();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_objectGraph];

    sub_10675C(&v0[v3], sub_103E4C, v4, sub_103E54, v5, v6);

    v7 = [v0 view];
    sub_103E74(v7, v2);
    sub_127F80(0, 0, 1.0, 0.1);
  }
}

void sub_1034DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_103540(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_7D228(a1, v4);
    sub_1035EC();

    return sub_184DC(v4, &unk_1A06F0);
  }

  return result;
}

uint64_t sub_1035EC()
{
  sub_64264(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_destination + 88, &v4);
  if (!v5)
  {
    return sub_184DC(&v4, &unk_19E320);
  }

  sub_9414(&v4, v7);
  sub_103A10();
  sub_1037EC(v7);
  sub_1D450();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = sub_7389C();
  v2 = sub_13BD84();
  v5 = v1;
  v6 = &protocol witness table for OS_dispatch_queue;
  *&v4 = v2;
  sub_13B9F4();

  sub_3C04(v7);
  return sub_3C04(&v4);
}

void sub_1036F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_103A9C();
  }
}

uint64_t sub_103760(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_13BF54();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_184DC(v9, &unk_1A06F0);
}

uint64_t sub_1037EC(uint64_t a1)
{
  v3 = sub_139E74();
  __chkstk_darwin(v3 - 8);
  sub_9EC0();
  v6 = v5 - v4;
  v7 = sub_13B834();
  sub_9E94();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_9EC0();
  v13 = v12 - v11;
  sub_139E84();
  v14 = *(v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin36ServiceProductCardPageViewController_objectGraph);
  sub_13B6B4();
  sub_13B9A4();
  v15 = *&v19[0];
  sub_13B9A4();
  (*(v9 + 16))(v6, v13, v7);
  v16 = sub_4948(&unk_19B7E0);
  sub_53A8(v6, 0, 1, v16);
  memset(v19, 0, sizeof(v19));
  v20 = -1;
  v17 = (*(*v15 + 216))(a1, v6, v14, v19);

  sub_184DC(v19, &unk_19E330);
  sub_103DBC(v6, &type metadata accessor for ResultingActionDispatcher.MetricsBehavior);
  (*(v9 + 8))(v13, v7);
  return v17;
}

void sub_103A10()
{
  v1 = [v0 view];
  v2 = type metadata accessor for ServiceProductCardView();
  [sub_103E74(v1 v2)];

  v3 = objc_allocWithZone(type metadata accessor for LoadingViewController());
  v4 = sub_BBD88(2);

  sub_102D24(v4);
}

void sub_103A9C()
{
  v1 = [v0 view];
  v2 = type metadata accessor for ServiceProductCardView();
  [sub_103E74(v1 v2)];

  sub_102D24(0);
}

id sub_103BA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductCardPageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ServiceProductCardPageViewController()
{
  result = qword_1A0EA0;
  if (!qword_1A0EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_103CA4()
{
  result = type metadata accessor for ServiceProductCardPageDestination();
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

uint64_t sub_103D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceProductCardPageDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_103DBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_5224();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_103E10()
{
  swift_unknownObjectWeakDestroy();
  sub_1D450();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_103E74(uint64_t a1, uint64_t a2)
{

  return _swift_dynamicCastClassUnconditional(a1, a2, 0, 0, 0);
}

uint64_t sub_103E90(uint64_t result, double a2, double a3, double a4)
{
  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (a2 <= a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (a2 <= v6)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_103EC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v45 = sub_13A4C4();
  v51 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_13A454();
  v4 = *(v50 - 8);
  __chkstk_darwin(v50);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_13A4B4();
  v47 = *(v7 - 8);
  __chkstk_darwin(v7);
  v49 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4948(&qword_19AFE8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_13E660;
  sub_13A4A4();
  sub_13A494();
  sub_13A484();
  v55[0] = v9;
  sub_20068();
  sub_4948(&qword_19AFF0);
  sub_1D268();
  v46 = v7;
  sub_13BF64();
  sub_4948(&qword_19AFE0);
  v10 = *(sub_13A4F4() - 8);
  v42 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v43 = v12;
  *(v12 + 16) = xmmword_13E650;
  v36[2] = v12 + v11;
  v36[0] = v2;
  v13 = v2[53];
  v14 = v2[54];
  v15 = sub_162F0(v2 + 50, v13);
  v56 = v13;
  v57 = *(v14 + 8);
  v16 = sub_CC08(v55);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v41 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v17 = v4;
  v40 = *(v4 + 104);
  v18 = v50;
  v40(v6);
  v39 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v19 = v51;
  v38 = *(v51 + 104);
  v21 = v44;
  v20 = v45;
  v38(v44);
  v22 = v36[0];
  sub_13A4E4();
  v23 = *(v19 + 8);
  v51 = v19 + 8;
  v37 = v23;
  v24 = v21;
  v23(v21, v20);
  v25 = v17 + 8;
  v26 = *(v17 + 8);
  v36[1] = v25;
  v26(v6, v18);
  sub_1D2CC(&v52);
  sub_3C04(v55);
  v27 = v22[63];
  v28 = v22[64];
  v29 = sub_162F0(v22 + 60, v27);
  v56 = v27;
  v57 = *(v28 + 8);
  v30 = sub_CC08(v55);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v31 = v50;
  (v40)(v6, v41, v50);
  (v38)(v24, v39, v20);
  v32 = v49;
  sub_13A4E4();
  v37(v24, v20);
  v26(v6, v31);
  sub_1D2CC(&v52);
  sub_3C04(v55);
  v33 = sub_13A514();
  v34 = v48;
  v48[3] = v33;
  v34[4] = &protocol witness table for VerticalFlowLayout;
  v34[5] = &protocol witness table for VerticalFlowLayout;
  sub_CC08(v34);
  sub_13A4D4();
  return (*(v47 + 8))(v32, v46);
}

uint64_t sub_1044D8(double a1, double a2, double a3, double a4)
{
  v9 = sub_13A314();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_FED74();
  sub_FF33C(a1, a2, a3, a4, v13, v14);
  sub_FF464(v4 + 20);
  sub_FF454();
  sub_13A3F4();
  v16 = v15;
  sub_FF464(v4 + 25);
  sub_FF454();
  sub_13A3F4();
  v18 = v17;
  sub_FF464(v4 + 30);
  sub_FF454();
  sub_13A3F4();
  v28[3] = v19;
  sub_FF464(v4 + 55);
  sub_13A384();
  v28[5] = v20;
  v22 = v21;
  sub_103EC4(v29);
  sub_FF464(v29);
  sub_FF454();
  sub_13A384();
  v28[4] = v23;
  v25 = v24;
  sub_3C04(v29);
  sub_103E90(_swiftEmptyArrayStorage, v25, v16, v22);
  v28[2] = v26;
  sub_FF464(v4 + 45);
  sub_13A344();
  v28[1] = v18 + CGRectGetMaxX(v30);
  v31.origin.x = sub_35BE8();
  CGRectGetMinY(v31);
  sub_FF464(v4 + 45);
  v32.origin.x = sub_35BE8();
  CGRectGetMinX(v32);
  v33.origin.x = sub_35BE8();
  CGRectGetMinY(v33);
  v34.origin.x = sub_35BE8();
  CGRectGetHeight(v34);
  sub_35BE8();
  sub_13BE44();
  sub_13A354();
  sub_103EC4(v29);
  sub_FF464(v29);
  sub_FF454();
  sub_13A544();
  (*(v10 + 8))(v12, v9);
  sub_3C04(v29);
  sub_162F0(v4 + 55, v4[58]);
  v35.origin.x = sub_35BE8();
  CGRectGetMaxX(v35);
  v36.origin.x = sub_35BE8();
  CGRectGetMinY(v36);
  sub_35BE8();
  sub_13BE44();
  sub_13A354();
  sub_35BE8();
  return sub_13A2B4();
}

uint64_t sub_104834()
{
  sub_9B5B0(v0 + 20);
  sub_1049D8();
  sub_13A3F4();
  v2 = v1;
  sub_9B5B0(v0 + 25);
  sub_1049D8();
  sub_13A3F4();
  sub_9B5B0(v0 + 30);
  sub_1049D8();
  sub_13A3F4();
  sub_9B5B0(v0 + 55);
  sub_13A384();
  v4 = v3;
  sub_103EC4(v8);
  sub_9B5B0(v8);
  sub_1049D8();
  sub_13A384();
  v6 = v5;
  sub_3C04(v8);
  sub_103E90(_swiftEmptyArrayStorage, v6, v2, v4);
  sub_FED74();
  return sub_13BE74();
}

void sub_104A10()
{
  qword_1A0EE8 = &type metadata for Double;
  unk_1A0EF0 = &protocol witness table for Double;
  qword_1A0ED0 = 0x4028000000000000;
  qword_1A0F10 = &type metadata for Double;
  unk_1A0F18 = &protocol witness table for Double;
  qword_1A0EF8 = 0x4038000000000000;
  qword_1A0F38 = &type metadata for Double;
  unk_1A0F40 = &protocol witness table for Double;
  qword_1A0F20 = 0x4038000000000000;
  qword_1A0F60 = &type metadata for Double;
  unk_1A0F68 = &protocol witness table for Double;
  qword_1A0F48 = 0x4038000000000000;
  qword_1A0F88 = &type metadata for Double;
  unk_1A0F90 = &protocol witness table for Double;
  qword_1A0F70 = 0x403C000000000000;
  qword_1A0FB0 = &type metadata for Double;
  unk_1A0FB8 = &protocol witness table for Double;
  qword_1A0F98 = 0x4020000000000000;
  qword_1A0FD8 = &type metadata for Double;
  unk_1A0FE0 = &protocol witness table for Double;
  qword_1A0FC0 = 0x403C000000000000;
  qword_1A1000 = &type metadata for Double;
  unk_1A1008 = &protocol witness table for Double;
  qword_1A0FE8 = 0;
  qword_1A1028 = &type metadata for Double;
  unk_1A1030 = &protocol witness table for Double;
  qword_1A1010 = 0x4000000000000000;
}

UIFontTextStyle sub_104AB0()
{
  v0 = sub_13A2A4();
  sub_7E5D8(v0, qword_1A1058);
  v1 = sub_4910(v0, qword_1A1058);
  *v1 = UIFontTextStyleFootnote;
  *(v1 + 8) = UIFontWeightBold;
  v2 = enum case for FontUseCase.preferredFontDerivative(_:);
  v3 = sub_13A3E4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  (*(*(v0 - 8) + 104))(v1, enum case for FontSource.useCase(_:), v0);

  return UIFontTextStyleFootnote;
}

id sub_104BD8()
{
  v0 = objc_allocWithZone(sub_139CF4());
  v1 = sub_139CE4();
  sub_127EDC(5.0);
  v2 = [v1 layer];
  [v2 setBorderWidth:1.0];

  v3 = [v1 layer];
  v4 = [objc_opt_self() ams_mediaBorder];
  v5 = [v4 CGColor];

  [v3 setBorderColor:v5];
  return v1;
}

uint64_t sub_104CE8()
{
  sub_139BB4();
  if (qword_19A130 != -1)
  {
    swift_once();
  }

  v0 = qword_19A128;
  v1 = qword_1A0EC8;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = sub_13A2A4();
  v3 = sub_4910(v2, qword_1A0EB0);
  v7[3] = v2;
  v7[4] = &protocol witness table for FontSource;
  v4 = sub_CC08(v7);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = sub_139BA4();
  sub_139B84();
  return v5;
}

uint64_t sub_104E14()
{
  sub_139BB4();
  if (qword_19A148 != -1)
  {
    swift_once();
  }

  v0 = qword_19A140;
  v1 = qword_1A1050;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = sub_13A2A4();
  v3 = sub_4910(v2, qword_1A1038);
  v7[3] = v2;
  v7[4] = &protocol witness table for FontSource;
  v4 = sub_CC08(v7);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = sub_139BA4();
  sub_139B84();
  return v5;
}

uint64_t sub_104F40()
{
  sub_139BB4();
  if (qword_19A158 != -1)
  {
    swift_once();
  }

  v0 = qword_19A150;
  v1 = qword_1A1070;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = sub_13A2A4();
  v3 = sub_4910(v2, qword_1A1058);
  v7[3] = v2;
  v7[4] = &protocol witness table for FontSource;
  v4 = sub_CC08(v7);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  v5 = sub_139BA4();
  sub_139B84();
  return v5;
}

id sub_10506C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_artworkImageView;
  *&v4[v9] = sub_104BD8();
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_captionLabel;
  *&v4[v10] = sub_104CE8();
  v11 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_storeLabel;
  *&v4[v11] = sub_104E14();
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_titleLabel;
  *&v4[v12] = sub_104F40();
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ServiceProductCardReferenceView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_1058BC();

  return v13;
}

void sub_105154()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_artworkImageView;
  *(v0 + v1) = sub_104BD8();
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_captionLabel;
  *(v0 + v2) = sub_104CE8();
  v3 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_storeLabel;
  *(v0 + v3) = sub_104E14();
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_titleLabel;
  *(v0 + v4) = sub_104F40();
  sub_13C094();
  __break(1u);
}

uint64_t sub_105210()
{
  v1 = v0;
  v25 = sub_13A314();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServiceProductCardReferenceView();
  v27.receiver = v0;
  v27.super_class = v5;
  objc_msgSendSuper2(&v27, "layoutSubviews");
  if (qword_19A138 != -1)
  {
    sub_105AF8();
  }

  sub_105A34(&qword_1A0ED0, v26);
  v6 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_artworkImageView];
  v26[48] = sub_139CF4();
  v26[49] = &protocol witness table for UIView;
  v26[45] = v6;
  v7 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_captionLabel];
  v8 = sub_139BB4();
  v26[53] = v8;
  v9 = sub_270D8();
  v26[50] = v7;
  v10 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_storeLabel];
  v26[58] = v8;
  v26[59] = &protocol witness table for UIView;
  v26[54] = v9;
  v26[55] = v10;
  v11 = *&v1[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_titleLabel];
  v26[63] = v8;
  v26[64] = v9;
  v26[60] = v11;
  v12 = v6;
  v13 = v7;
  v14 = v10;
  v15 = v11;
  [v1 bounds];
  sub_1044D8(v16, v17, v18, v19);
  (*(v2 + 8))(v4, v25);
  v20 = [v12 frame];
  (*(&stru_68.reloff + (swift_isaMask & *v12)))(v20, v21, v22);
  return sub_105A90(v26);
}

double sub_10547C()
{
  if (qword_19A138 != -1)
  {
    sub_105AF8();
  }

  sub_105A34(&qword_1A0ED0, v14);
  v1 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_artworkImageView);
  v16 = sub_139CF4();
  v17 = &protocol witness table for UIView;
  v15 = v1;
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_captionLabel);
  v3 = sub_139BB4();
  v19 = v3;
  v4 = sub_270D8();
  v5 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_storeLabel);
  v6 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_titleLabel);
  v20 = v4;
  v21 = v5;
  v18 = v2;
  v22 = v3;
  v23 = &protocol witness table for UIView;
  v25 = v3;
  v26 = v4;
  v24 = v6;
  v7 = v1;
  v8 = v2;
  v9 = v5;
  v10 = v6;
  sub_104834();
  v12 = v11;
  sub_105A90(v14);
  return v12;
}

id sub_10564C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [*(v5 + OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_artworkImageView) setHidden:a1 == 0];
  if (a1)
  {
    sub_105AE4();
    v12 = *(v11 + 296);

    v12(v13, a5);
  }

  sub_B0F90(a2, &v18);
  if (v19)
  {
    sub_9414(&v18, v20);
    sub_105AE4();
    (*(v14 + 384))(v20, a5);
    sub_3C04(v20);
  }

  else
  {
    sub_2519C(&v18);
    sub_105B28(OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_captionLabel);
  }

  sub_B0F90(a3, &v18);
  if (v19)
  {
    sub_9414(&v18, v20);
    sub_105AE4();
    (*(v15 + 384))(v20, a5);
    sub_3C04(v20);
  }

  else
  {
    sub_2519C(&v18);
    sub_105B28(OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_titleLabel);
  }

  sub_B0F90(a4, &v18);
  if (v19)
  {
    sub_9414(&v18, v20);
    sub_105AE4();
    (*(v16 + 384))(v20, a5);
    return sub_3C04(v20);
  }

  else
  {
    sub_2519C(&v18);
    return sub_105B28(OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_storeLabel);
  }
}

id sub_1058BC()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin31ServiceProductCardReferenceView_artworkImageView]];
  v1 = sub_105B18();
  [v1 v2];
  v3 = sub_105B18();
  [v3 v4];
  v5 = sub_105B18();

  return [v5 v6];
}

id sub_105970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceProductCardReferenceView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_105AF8()
{

  return swift_once();
}

id sub_105B28@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  v5 = *(v2 + 72);

  return [v4 v5];
}

void sub_105B44()
{
  qword_1A10D8 = &type metadata for Double;
  unk_1A10E0 = &protocol witness table for Double;
  qword_1A10C0 = 0;
  qword_1A1100 = &type metadata for Double;
  unk_1A1108 = &protocol witness table for Double;
  qword_1A10E8 = 0x403A000000000000;
  qword_1A1128 = &type metadata for Double;
  unk_1A1130 = &protocol witness table for Double;
  qword_1A1110 = 0x4030000000000000;
  qword_1A1150 = &type metadata for Double;
  unk_1A1158 = &protocol witness table for Double;
  qword_1A1138 = 0x4030000000000000;
  qword_1A1178 = &type metadata for Double;
  unk_1A1180 = &protocol witness table for Double;
  qword_1A1160 = 0x403A000000000000;
  qword_1A11A0 = &type metadata for Double;
  unk_1A11A8 = &protocol witness table for Double;
  qword_1A1188 = 0;
  qword_1A11C8 = &type metadata for Double;
  unk_1A11D0 = &protocol witness table for Double;
  qword_1A11B0 = 0;
  qword_1A11F0 = &type metadata for Double;
  unk_1A11F8 = &protocol witness table for Double;
  qword_1A11D8 = 0;
  qword_1A1218 = &type metadata for Double;
  unk_1A1220 = &protocol witness table for Double;
  qword_1A1200 = 0;
  qword_1A1240 = &type metadata for Double;
  unk_1A1248 = &protocol witness table for Double;
  qword_1A1228 = 0;
  qword_1A1268 = &type metadata for Double;
  unk_1A1270 = &protocol witness table for Double;
  qword_1A1250 = 0;
  qword_1A1290 = &type metadata for Double;
  unk_1A1298 = &protocol witness table for Double;
  qword_1A1278 = 0x3FF0000000000000;
  qword_1A12B8 = &type metadata for Double;
  unk_1A12C0 = &protocol witness table for Double;
  qword_1A12A0 = 0x4038000000000000;
  qword_1A12E0 = &type metadata for Double;
  qword_1A12E8 = &protocol witness table for Double;
  qword_1A12C8 = 0;
  qword_1A1308 = &type metadata for Double;
  qword_1A1310 = &protocol witness table for Double;
  qword_1A12F0 = 0x4038000000000000;
}

id sub_105BF0()
{
  result = [objc_opt_self() ams_mediaBorder];
  qword_1A1318 = result;
  return result;
}

id sub_105C2C()
{
  v1 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView____lazy_storage___dismissButton;
  v2 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView____lazy_storage___dismissButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView____lazy_storage___dismissButton);
  }

  else
  {
    v4 = sub_105C90(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_105C90(uint64_t a1)
{
  v2 = [objc_allocWithZone(AMSUICommonButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 addTarget:a1 action:"dismissButtonActionWithSender:" forControlEvents:64];
  v3 = sub_105D20();
  [v2 setImage:v3 forState:0];

  return v2;
}

id sub_105D20()
{
  v2 = v0;
  sub_139A34();
  sub_106F78();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!_UISolariumEnabled() || ((*(v4 + 104))(v7, enum case for FlagKeys.Solarium(_:), v1), v8 = sub_139A24(), (*(v4 + 8))(v7, v1), (v8 & 1) == 0))
  {
    sub_CACC(0, &qword_19B668);
    v14 = sub_36E48();
    sub_CACC(0, &unk_1A0710);
    v15 = v14;
    v16 = sub_111044(0xD000000000000017, 0x8000000000150810, v14, 0);
    v17 = [v16 imageAsset];

    if (v17)
    {
      v18 = v17;
      v19 = [v2 traitCollection];
      v20 = [v18 imageWithTraitCollection:v19];

      v13 = [v20 imageWithRenderingMode:1];
      return v13;
    }

    return 0;
  }

  sub_CACC(0, &unk_1A0710);
  v9 = sub_105FF0();
  v10 = [v9 imageAsset];

  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [v2 traitCollection];
  v13 = [v11 imageWithTraitCollection:v12];

  return v13;
}

id sub_105FF0()
{
  v0 = sub_13BB54();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed:v0];

  return v1;
}

id sub_106054(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_artworkImageView;
  v11 = objc_allocWithZone(sub_139CF4());
  *&v4[v10] = sub_FE734();
  v12 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_backgroundView;
  v13 = objc_allocWithZone(type metadata accessor for ServiceProductCardBackgroundView());
  *&v5[v12] = sub_106F34(v13, "initWithFrame:");
  *&v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView____lazy_storage___dismissButton] = 0;
  v14 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_heroView;
  v15 = objc_allocWithZone(type metadata accessor for ServiceProductCardHeroView());
  *&v5[v14] = sub_106F34(v15, "initWithFrame:");
  v16 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_referenceView;
  v17 = objc_allocWithZone(type metadata accessor for ServiceProductCardReferenceView());
  *&v5[v16] = sub_106F34(v17, "initWithFrame:");
  v18 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_separatorView;
  v19 = sub_106F34(objc_allocWithZone(AMSUICommonView), "initWithFrame:");
  v20 = qword_19A168;
  v21 = v19;
  if (v20 != -1)
  {
    sub_106F64();
    swift_once();
  }

  [v21 setBackgroundColor:qword_1A1318];

  *&v5[v18] = v21;
  v22 = &v5[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_dismissAction];
  v23 = type metadata accessor for ServiceProductCardView();
  *v22 = 0;
  *(v22 + 1) = 0;
  v26.receiver = v5;
  v26.super_class = v23;
  v24 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  sub_106CA4();

  return v24;
}

void sub_106210()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_artworkImageView;
  v3 = objc_allocWithZone(sub_139CF4());
  *(v0 + v2) = sub_FE734();
  v4 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_backgroundView;
  v5 = objc_allocWithZone(type metadata accessor for ServiceProductCardBackgroundView());
  *(v0 + v4) = sub_106F34(v5, "initWithFrame:");
  *(v0 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView____lazy_storage___dismissButton) = 0;
  v6 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_heroView;
  v7 = objc_allocWithZone(type metadata accessor for ServiceProductCardHeroView());
  *(v0 + v6) = sub_106F34(v7, "initWithFrame:");
  v8 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_referenceView;
  v9 = objc_allocWithZone(type metadata accessor for ServiceProductCardReferenceView());
  *(v0 + v8) = sub_106F34(v9, "initWithFrame:");
  v10 = OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_separatorView;
  v11 = sub_106F34(objc_allocWithZone(AMSUICommonView), "initWithFrame:");
  v12 = qword_19A168;
  v13 = v11;
  if (v12 != -1)
  {
    sub_106F64();
    swift_once();
  }

  [v13 setBackgroundColor:qword_1A1318];

  *(v1 + v10) = v13;
  v14 = (v1 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_dismissAction);
  *v14 = 0;
  v14[1] = 0;
  sub_13C094();
  __break(1u);
}

uint64_t sub_10639C()
{
  v2 = v0;
  sub_13A314();
  sub_106F78();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ServiceProductCardView();
  v25.receiver = v0;
  v25.super_class = v8;
  objc_msgSendSuper2(&v25, "layoutSubviews");
  if (qword_19A160 != -1)
  {
    swift_once();
  }

  sub_106E84(&qword_1A10C0, v24);
  v9 = *&v0[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_artworkImageView];
  v24[78] = sub_139CF4();
  v24[79] = &protocol witness table for UIView;
  v24[75] = v9;
  v10 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_backgroundView];
  v24[83] = type metadata accessor for ServiceProductCardBackgroundView();
  v24[84] = &protocol witness table for UIView;
  v24[80] = v10;
  v11 = v9;
  v12 = v10;
  v13 = sub_105C2C();
  v24[88] = sub_CACC(0, &qword_1A0D98);
  v24[89] = &protocol witness table for UIView;
  v24[85] = v13;
  v14 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_heroView];
  v24[93] = type metadata accessor for ServiceProductCardHeroView();
  v24[94] = &protocol witness table for UIView;
  v24[90] = v14;
  v15 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_referenceView];
  v24[98] = type metadata accessor for ServiceProductCardReferenceView();
  v24[99] = &protocol witness table for UIView;
  v24[95] = v15;
  v16 = *&v2[OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_separatorView];
  v24[103] = sub_CACC(0, &qword_19E9B0);
  v24[104] = &protocol witness table for UIView;
  v24[100] = v16;
  v17 = v14;
  v18 = v15;
  v19 = v16;
  [v2 bounds];
  sub_1008B0();
  (*(v4 + 8))(v7, v1);
  v20 = [v11 bounds];
  (*(&stru_68.reloff + (swift_isaMask & *v11)))(v20, v21, v22);
  return sub_106EE0(v24);
}

void sub_10667C(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ServiceProductCardView();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  v3 = sub_105C2C();
  v4 = sub_105D20();
  [v3 setImage:v4 forState:0];
}

uint64_t sub_10675C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v13 = (v6 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_dismissAction);
  v14 = *(v6 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_dismissAction);
  *v13 = a2;
  v13[1] = a3;

  sub_A6980(v14);
  v15 = *(v8 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_artworkImageView);
  v16 = *a1;
  [v15 setHidden:*a1 == 0];
  if (v16)
  {
    v17 = *&stru_108.segname[(swift_isaMask & *v15) + 16];
    v7 = (swift_isaMask & *v15) + 296;

    v17(v18, a6);

    sub_FE524(v19, a6);
  }

  v20 = *(v8 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_heroView);
  v21 = sub_62468((a1 + 6), v61, &qword_19E960);
  sub_106F9C(v21, v22, v23, v24, v25, v26, v27, v28, v54, *(&v54 + 1), v55, *(&v55 + 1), v56, v57, *&v58[0], *(&v58[0] + 1));
  if (v7)
  {
    v37 = 0;
  }

  else
  {
    v29 = sub_62468((a1 + 1), v61, &qword_19E960);
    sub_106F9C(v29, v30, v31, v32, v33, v34, v35, v36, v54, *(&v54 + 1), v55, *(&v55 + 1), v56, v57, *&v58[0], *(&v58[0] + 1));
    sub_62468((a1 + 16), v61, &qword_19E960);
    v37 = v63 == 0;
    sub_CC68(v61, &qword_19E960);
  }

  [v20 setHidden:v37];
  sub_1001F8((a1 + 6), (a1 + 1), (a1 + 16), a6, a4, a5);
  v38 = *(v8 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_referenceView);
  v39 = sub_106F90();
  sub_62468(v39, v40, &qword_1A0760);
  v41 = v62;
  sub_CC68(v61, &qword_1A0760);
  if (v41)
  {
    v42 = 0;
  }

  else
  {
    sub_62468((a1 + 45), v61, &qword_19E960);
    v42 = v63 == 0;
    sub_CC68(v61, &qword_19E960);
  }

  [v38 setHidden:v42];
  [*(v8 + OBJC_IVAR____TtC20StoreDynamicUIPlugin22ServiceProductCardView_separatorView) setHidden:{objc_msgSend(v38, "isHidden")}];
  v43 = sub_106F90();
  sub_62468(v43, v44, v45);
  v46 = v62;
  if (v62)
  {

    sub_4D9A0(v61);
  }

  else
  {
    sub_CC68(v61, &qword_1A0760);
  }

  sub_62468((a1 + 40), v60, &qword_19E960);
  v47 = sub_106F90();
  sub_62468(v47, v48, v49);
  if (v62)
  {
    sub_62468(&v65, &v54, &qword_19E960);
    sub_4D9A0(v61);
    if (*(&v55 + 1))
    {
      sub_9414(&v54, v58);
      goto LABEL_21;
    }
  }

  else
  {
    sub_CC68(v61, &qword_1A0760);
    v54 = 0u;
    v55 = 0u;
    v56 = 0;
  }

  v50 = sub_106F90();
  sub_62468(v50, v51, v52);
  if (v62)
  {
    sub_4B14(&v64, v58);
    sub_4D9A0(v61);
  }

  else
  {
    sub_CC68(v61, &qword_1A0760);
    memset(v58, 0, sizeof(v58));
    v59 = 0;
  }

  if (*(&v55 + 1))
  {
    sub_CC68(&v54, &qword_19E960);
  }

LABEL_21:
  sub_10564C(v46, v60, v58, (a1 + 45), a6);

  sub_CC68(v58, &qword_19E960);
  return sub_CC68(v60, &qword_19E960);
}