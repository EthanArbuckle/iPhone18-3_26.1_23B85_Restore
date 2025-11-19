double sub_100437AE4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = v4[2];
  v6 = v4[4];
  v7 = v4[5];
  v18 = v4[3];
  v19 = v6;
  v20 = v7;
  v8 = v4[1];
  v15 = *v4;
  v16 = v8;
  v17 = v5;
  sub_100361E70(&v15, v14);
  v9 = v18;
  v10 = v19;
  v11 = v16;
  a2[2] = v17;
  a2[3] = v9;
  v12 = v20;
  a2[4] = v10;
  a2[5] = v12;
  result = *&v15;
  *a2 = v15;
  a2[1] = v11;
  return result;
}

uint64_t sub_100437B98(_OWORD *a1, void *a2, void (*a3)(void))
{
  v6 = v3 + *a2;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 72);
  v10 = *(v6 + 80);
  v11 = *(v6 + 88);
  v12 = a1[3];
  *(v6 + 32) = a1[2];
  *(v6 + 48) = v12;
  v13 = a1[5];
  *(v6 + 64) = a1[4];
  *(v6 + 80) = v13;
  v14 = a1[1];
  *v6 = *a1;
  *(v6 + 16) = v14;
  sub_100361E70(a1, v16);

  sub_10043EC60(v9, v10, v11);
  a3();
  return sub_100361ECC(a1);
}

uint64_t (*NowPlaying.TrackTitleStackView.subtitleAttributes.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100437CBC;
}

uint64_t sub_100437CD4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_100437D18()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView;
  v2 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor:v9];

    [v0 addSubview:v8];
    v10 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

Swift::Void __swiftcall NowPlaying.TrackTitleStackView.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v82.receiver = v0;
  v82.super_class = v2;
  objc_msgSendSuper2(&v82, "layoutSubviews");
  v3 = sub_100439BC0();
  v4 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 3);
  v83[2] = *(v4 + 2);
  v83[3] = v5;
  v6 = *(v4 + 5);
  v83[4] = *(v4 + 4);
  v83[5] = v6;
  v7 = *(v4 + 1);
  v83[0] = *v4;
  v83[1] = v7;
  if (v7 == 1)
  {

    v8 = 0.0;
  }

  else
  {
    sub_100361E70(v83, v76);
    v84.origin.x = 0.0;
    v84.origin.y = 0.0;
    v84.size.width = 0.0;
    v84.size.height = 0.0;
    if (CGRectGetHeight(v84) <= 0.0 || (v85.origin.x = 0.0, v85.origin.y = 0.0, v85.size.width = 0.0, v85.size.height = 0.0, CGRectGetHeight(v85) == 1.79769313e308))
    {
      [*&v3[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v3[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    v10 = v9;
    sub_1005733D8();
    v8 = v10 + v11;
    if (v10 + v11 > 0.0)
    {
      [*&v83[0] ascender];
      v8 = v8 + v12;
    }

    if (v8 <= 0.0)
    {
      sub_100361ECC(v83);
    }

    else
    {
      [*&v83[0] descender];
      v14 = v13;
      sub_100361ECC(v83);

      v8 = v8 - v14;
    }
  }

  v15 = sub_100439F48();
  v16 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v17 = *(v16 + 3);
  v78 = *(v16 + 2);
  v79 = v17;
  v18 = *(v16 + 5);
  v80 = *(v16 + 4);
  v81 = v18;
  v19 = *(v16 + 1);
  *v76 = *v16;
  v77 = v19;
  if (v19)
  {

    v20 = 0.0;
  }

  else
  {
    sub_100361E70(v76, v70);
    v86.origin.x = 0.0;
    v86.origin.y = 0.0;
    v86.size.width = 0.0;
    v86.size.height = 0.0;
    if (CGRectGetHeight(v86) <= 0.0 || (v87.origin.x = 0.0, v87.origin.y = 0.0, v87.size.width = 0.0, v87.size.height = 0.0, CGRectGetHeight(v87) == 1.79769313e308))
    {
      [*&v15[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v15[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    v22 = v21;
    sub_1005733D8();
    v20 = v22 + v23;
    if (v22 + v23 > 0.0)
    {
      [v76[0] ascender];
      v20 = v20 + v24;
    }

    if (v20 <= 0.0)
    {
      sub_100361ECC(v76);
    }

    else
    {
      [v76[0] descender];
      v26 = v25;
      sub_100361ECC(v76);

      v20 = v20 - v26;
    }
  }

  [v1 bounds];
  Width = CGRectGetWidth(v88);
  v28 = v8 + v20;
  v29 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v30 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v30)
  {
    v31 = *(*v30 + 424);
    v32 = sub_100442120(&qword_1006F4EF8, type metadata accessor for NowPlaying.TrackTitleStackView);

    v31(v70, v1, v2, v32);

    if (v70[0])
    {
      v33 = v71;
      if (!v71)
      {

        goto LABEL_50;
      }

      v34 = *(&v71 + 1);
      v35 = *(v4 + 3);
      v72 = *(v4 + 2);
      v73 = v35;
      v36 = *(v4 + 5);
      v74 = *(v4 + 4);
      v75 = v36;
      v37 = *(v4 + 1);
      *v70 = *v4;
      v71 = v37;
      if (v37)
      {

        if (!v34)
        {
          goto LABEL_49;
        }
      }

      else
      {
        sub_1004404E4(v33);
        sub_100361E70(v70, v64);
        v89.origin.x = 0.0;
        v89.origin.y = 0.0;
        v89.size.width = 0.0;
        v89.size.height = 0.0;
        if (CGRectGetHeight(v89) <= 0.0 || (v90.origin.x = 0.0, v90.origin.y = 0.0, v90.size.width = 0.0, v90.size.height = 0.0, CGRectGetHeight(v90) == 1.79769313e308))
        {
          [*(v33 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
        }

        else
        {
          [*(v33 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{0.0, 0.0}];
        }

        v39 = v38;
        sub_1005733D8();
        v41 = v39 + v40;
        if (v39 + v40 > 0.0)
        {
          [v70[0] ascender];
          v41 = v41 + v42;
        }

        if (v41 <= 0.0)
        {
          sub_100361ECC(v70);
          if (!v34)
          {
LABEL_49:
            v93.origin.x = 0.0;
            v93.origin.y = 0.0;
            v93.size.width = Width;
            v93.size.height = v28;
            CGRectGetHeight(v93);

            sub_100440528(v33);
            goto LABEL_50;
          }
        }

        else
        {
          [v70[0] descender];
          sub_100361ECC(v70);
          if (!v34)
          {
            goto LABEL_49;
          }
        }
      }

      v43 = *(v16 + 3);
      v66 = *(v16 + 2);
      v67 = v43;
      v44 = *(v16 + 5);
      v68 = *(v16 + 4);
      v69 = v44;
      v45 = *(v16 + 1);
      *v64 = *v16;
      v65 = v45;
      if ((v45 & 1) == 0)
      {

        sub_100361E70(v64, &v63);
        v91.origin.x = 0.0;
        v91.origin.y = 0.0;
        v91.size.width = 0.0;
        v91.size.height = 0.0;
        if (CGRectGetHeight(v91) <= 0.0 || (v92.origin.x = 0.0, v92.origin.y = 0.0, v92.size.width = 0.0, v92.size.height = 0.0, CGRectGetHeight(v92) == 1.79769313e308))
        {
          [*(v34 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
        }

        else
        {
          [*(v34 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{0.0, 0.0}];
        }

        v47 = v46;
        sub_1005733D8();
        v49 = v47 + v48;
        if (v47 + v48 > 0.0)
        {
          [v64[0] ascender];
          v49 = v49 + v50;
        }

        if (v49 > 0.0)
        {
          [v64[0] descender];
        }

        sub_100361ECC(v64);
      }

      goto LABEL_49;
    }
  }

LABEL_50:
  sub_100573838();
  v51 = sub_100437D18();
  *v70 = 0u;
  v71 = 0u;
  LOBYTE(v72) = 1;
  sub_100573858();
  [v51 setFrame:?];

  v52 = *&v1[v29];
  if (v52)
  {

    [v1 bounds];
    sub_100438660(v52, v53, v54, v55, v56);
  }

  else
  {
    v57 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
    v58 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];

    [v1 bounds];
    sub_1004390AC(v57, v58, v59, v60, v61, v62);
  }

  sub_10043CC7C();
}

void *sub_100438660(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  Gliss.Transition<>.outputs(in:)(&v74, a2, a3, a4, a5);
  v9 = v76;
  v8 = v77;
  v11 = v78;
  v10 = v79;
  v13 = v80;
  v12 = v81;
  v72 = v83;
  v73 = *&v82;
  v71 = v84;
  v60 = v86;
  v61 = v85;
  v58 = v88;
  v59 = v87;
  v56 = v90;
  v57 = v89;
  v54 = v92;
  v55 = v91;
  v46 = v93;
  v69 = v95;
  v70 = v94;
  v67 = v97;
  v68 = v96;
  v65 = v99;
  v66 = v98;
  v63 = v101;
  v64 = v100;
  v52 = v103;
  v53 = v102;
  v50 = v105;
  v51 = v104;
  v48 = v107;
  v49 = v106;
  v47 = v108;
  v62 = v109;
  v14 = *(*a1 + 424);
  v15 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v16 = sub_100442120(&qword_1006F4EF8, type metadata accessor for NowPlaying.TrackTitleStackView);
  result = v14(&v74, v6, v15, v16);
  v18 = v74;
  if (v74)
  {
    v20 = v75;
    v19 = *&v76;
    v21 = v77;

    sub_1004404E4(v19);
    sub_100440528(v19);
    [v6 bounds];
    sub_1004390AC(v18, v20, v22, v23, v24, v25);
    v26 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
    [*(v18 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v9];
    if (v20)
    {
      [*(v20 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v9];
    }

    v27 = *(v18 + v26);
    v74 = v8;
    v75 = v11;
    v76 = v10;
    v77 = v13;
    v78 = v12;
    v79 = v73;
    v80 = v72;
    v81 = v71;
    v82 = v61;
    v83 = v60;
    v84 = v59;
    v85 = v58;
    v86 = v57;
    v87 = v56;
    v88 = v55;
    v89 = v54;
    [v27 setTransform3D:{&v74, v8, v11, *&v10, v13, v12}];
    if (v20)
    {
      v28 = *(v20 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v74 = v41;
      v75 = v42;
      v76 = v43;
      v77 = v44;
      v78 = v45;
      v79 = v73;
      v80 = v72;
      v81 = v71;
      v82 = v61;
      v83 = v60;
      v84 = v59;
      v85 = v58;
      v86 = v57;
      v87 = v56;
      v88 = v55;
      v89 = v54;
      [v28 setTransform3D:&v74];

      sub_1004404E4(v19);
      sub_10044288C(v18, v20, v19);

      sub_100440528(v19);
      if (!v19)
      {
        v29 = v18;
        v30 = v20;
LABEL_14:
        v40 = 0;
        return sub_1004428EC(v29, v30, v40);
      }
    }

    else
    {

      sub_1004404E4(v19);
      sub_10044288C(v18, 0, v19);

      sub_100440528(v19);
      if (!v19)
      {
        v29 = v18;
        v30 = 0;
        goto LABEL_14;
      }
    }

    [v6 bounds];
    sub_1004390AC(v19, v21, v31, v32, v33, v34);
    v35 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
    [*(v19 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v46];
    v36 = v70;
    if (v21)
    {
      [*(v21 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v46];
      v36 = v70;
    }

    v37 = *(v19 + v35);
    v74 = v36;
    v75 = v69;
    v76 = v68;
    v77 = v67;
    v78 = v66;
    v79 = v65;
    v80 = v64;
    v81 = v63;
    v82 = v53;
    v83 = v52;
    v84 = v51;
    v85 = v50;
    v86 = v49;
    v87 = v48;
    v88 = v47;
    v89 = v62;
    v38 = v36;
    [v37 setTransform3D:&v74];
    if (v21)
    {
      v39 = *(v21 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v74 = v38;
      v75 = v69;
      v76 = v68;
      v77 = v67;
      v78 = v66;
      v79 = v65;
      v80 = v64;
      v81 = v63;
      v82 = v53;
      v83 = v52;
      v84 = v51;
      v85 = v50;
      v86 = v49;
      v87 = v48;
      v88 = v47;
      v89 = v62;
      [v39 setTransform3D:&v74];
      sub_1004428EC(v18, v20, v19);
    }

    v29 = v18;
    v30 = v20;
    v40 = v19;
    return sub_1004428EC(v29, v30, v40);
  }

  return result;
}

__n128 Gliss.Transition<>.outputs(in:)@<Q0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_100009DCC(&qword_1006F4F00);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v57 - v13;
  v15 = *(*v5 + 232);
  v16 = v15(v12);
  v17 = (v15)();
  if (v17 == 2)
  {
    v18 = 1.0 - v16;
    horizontal = UIOffsetZero.horizontal;
    vertical = UIOffsetZero.vertical;
  }

  else
  {
    v21 = v17;
    v77.origin.x = a2;
    v77.origin.y = a3;
    v77.size.width = a4;
    v77.size.height = a5;
    v22 = v16 * CGRectGetWidth(v77);
    v18 = 1.0;
    vertical = 0.0;
    if (v21)
    {
      horizontal = v22;
    }

    else
    {
      horizontal = -v22;
    }
  }

  v23 = *&CATransform3DIdentity.m41;
  v72 = *&CATransform3DIdentity.m43;
  v71 = v23;
  v24 = *&CATransform3DIdentity.m31;
  v70 = *&CATransform3DIdentity.m33;
  v69 = v24;
  v25 = *&CATransform3DIdentity.m21;
  v68 = *&CATransform3DIdentity.m23;
  v67 = v25;
  v26 = *&CATransform3DIdentity.m11;
  v66 = *&CATransform3DIdentity.m13;
  v65 = v26;
  v27 = (*v5 + 432);
  v28 = *v27;
  v29 = (*v27)();
  v30 = v65;
  v31 = v66;
  v32 = v67;
  v33 = v68;
  v34 = v69;
  v35 = v70;
  v36 = v71;
  v37 = v72;
  if (v74 != 2)
  {
    (*(*v5 + 208))(v29, v65, v66, v67, v68, v69, v70, v71, v72);
    v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
    v39 = (*(*(v38 - 8) + 48))(v14, 1, v38);
    v29 = sub_10001036C(v14, &qword_1006F4F00);
    v30 = v65;
    v31 = v66;
    v32 = v67;
    v33 = v68;
    v34 = v69;
    v35 = v70;
    v36 = v71;
    v37 = v72;
    if (v39 == 1)
    {
      v29 = CATransform3DMakeScale(&v73, v16 * 0.1 + 1.0, v16 * 0.1 + 1.0, 1.0);
      v31 = *&v73.m13;
      v30 = *&v73.m11;
      v33 = *&v73.m23;
      v32 = *&v73.m21;
      v35 = *&v73.m33;
      v34 = *&v73.m31;
      v36 = *&v73.m41;
      v37 = *&v73.m43;
    }
  }

  v57 = v37;
  v58 = v36;
  v59 = v35;
  v60 = v34;
  v61 = v33;
  v62 = v32;
  v63 = v31;
  v64 = v30;
  v40 = (v15)(v29);
  if (v40 == 2)
  {
    v42 = UIOffsetZero.horizontal;
    v41 = UIOffsetZero.vertical;
    v43 = v16;
  }

  else
  {
    v44 = v40;
    v78.origin.x = a2;
    v78.origin.y = a3;
    v78.size.width = a4;
    v78.size.height = a5;
    Width = CGRectGetWidth(v78);
    v79.size.height = a5;
    v46 = horizontal;
    v47 = vertical;
    v48 = v18;
    v49 = Width;
    v79.origin.x = a2;
    v79.origin.y = a3;
    v79.size.width = a4;
    v50 = v16 * CGRectGetWidth(v79);
    v51 = v50 - v49;
    v43 = 1.0;
    v41 = 0.0;
    v52 = v49 - v50;
    v18 = v48;
    vertical = v47;
    horizontal = v46;
    if (v44)
    {
      v42 = v51;
    }

    else
    {
      v42 = v52;
    }
  }

  (v28)(&v75);
  if (v76 != 2 && (v76 & 0x100) != 0)
  {
    CATransform3DMakeScale(&v73, (v16 + -1.0) * 0.1 + 1.0, (v16 + -1.0) * 0.1 + 1.0, 1.0);
    v65 = *&v73.m11;
    v66 = *&v73.m13;
    v67 = *&v73.m21;
    v68 = *&v73.m23;
    v69 = *&v73.m31;
    v70 = *&v73.m33;
    v71 = *&v73.m41;
    v72 = *&v73.m43;
  }

  *a1 = horizontal;
  *(a1 + 8) = vertical;
  *(a1 + 16) = v18;
  *(a1 + 40) = v63;
  *(a1 + 24) = v64;
  *(a1 + 72) = v61;
  *(a1 + 56) = v62;
  *(a1 + 104) = v59;
  *(a1 + 88) = v60;
  *(a1 + 136) = v57;
  *(a1 + 120) = v58;
  *(a1 + 152) = v42;
  *(a1 + 160) = v41;
  *(a1 + 168) = v43;
  v53 = v66;
  *(a1 + 176) = v65;
  *(a1 + 192) = v53;
  v54 = v68;
  *(a1 + 208) = v67;
  *(a1 + 224) = v54;
  v55 = v70;
  *(a1 + 240) = v69;
  *(a1 + 256) = v55;
  result = v72;
  *(a1 + 272) = v71;
  *(a1 + 288) = result;
  return result;
}

void sub_1004390AC(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v14 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets + 16);
  v15 = &v6[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v16 = *(v15 + 3);
  v83[2] = *(v15 + 2);
  v83[3] = v16;
  v17 = *(v15 + 5);
  v83[4] = *(v15 + 4);
  v83[5] = v17;
  v18 = *(v15 + 1);
  v83[0] = *v15;
  v83[1] = v18;
  if (v18 == 1)
  {
    v71 = 0.0;
  }

  else
  {
    v19 = v14;
    sub_100361E70(v83, &v77);
    v84.origin.x = a3;
    v84.origin.y = a4;
    v84.size.width = a5;
    v84.size.height = a6;
    if (CGRectGetHeight(v84) <= 0.0 || (v85.origin.x = a3, v85.origin.y = a4, v85.size.width = a5, v85.size.height = a6, CGRectGetHeight(v85) == 1.79769313e308))
    {
      [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{a5, a6}];
    }

    v21 = v20;
    sub_1005733D8();
    v23 = v22;
    sub_100361ECC(v83);
    v71 = v21 + v23;
    v14 = v19;
  }

  v86.origin.x = a3;
  v86.origin.y = a4;
  v86.size.width = a5;
  v86.size.height = a6;
  Width = CGRectGetWidth(v86);
  if (a2)
  {
    top = *(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets);
    v25 = &v7[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v26 = *(v25 + 2);
    v27 = *(v25 + 3);
    v28 = *v25;
    v78 = *(v25 + 1);
    v79 = v26;
    v29 = *(v25 + 4);
    v30 = *(v25 + 5);
    v80 = v27;
    v81 = v29;
    v82 = v30;
    v77 = v28;
    LOBYTE(v25) = v78;

    v31 = 0.0;
    if ((v25 & 1) == 0)
    {
      rect = v14;
      sub_100361E70(&v77, v76);
      v87.origin.x = a3;
      v87.origin.y = a4;
      v87.size.width = a5;
      v87.size.height = a6;
      if (CGRectGetHeight(v87) <= 0.0 || (v88.origin.x = a3, v88.origin.y = a4, v88.size.width = a5, v88.size.height = a6, CGRectGetHeight(v88) == 1.79769313e308))
      {
        v32 = top;
        [*(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
      }

      else
      {
        v32 = top;
        [*(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{a5, a6}];
      }

      v34 = v33;
      sub_1005733D8();
      v36 = v35;
      sub_100361ECC(&v77);
      v31 = v34 + v36;
      v14 = rect;
      top = v32;
    }

    recta = v31;
    v89.origin.x = a3;
    v89.origin.y = a4;
    v89.size.width = a5;
    v89.size.height = a6;
    v73 = CGRectGetWidth(v89);

    v37 = 0.0;
    v72 = 0.0;
  }

  else
  {
    v38 = &v7[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    if (v38[16])
    {
      top = UIEdgeInsetsZero.top;
      v73 = 0.0;
      recta = 0.0;
      v72 = 0.0;
      v37 = 0.0;
    }

    else
    {
      top = *&sub_100439F48()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets];

      v39 = *(*&v7[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v72 = UIView.untransformedFrame.getter();
      v73 = v40;
      v37 = v41;
      recta = v42;
    }
  }

  v43 = v14 + top;
  v90.origin.x = a3;
  v90.origin.y = a4;
  v90.size.width = a5;
  v90.size.height = a6;
  CGRectGetWidth(v90);
  v91.origin.x = 0.0;
  v91.origin.y = 0.0;
  v91.size.width = Width;
  v91.size.height = v71;
  CGRectGetHeight(v91);
  v92.origin.x = v72;
  v92.size.width = v73;
  v92.origin.y = v37;
  v92.size.height = recta;
  CGRectGetHeight(v92);
  sub_100573838();
  v77 = 0u;
  v78 = 0u;
  LOBYTE(v79) = 1;
  sub_100573858();
  sub_100573898();
  MinY = CGRectGetMinY(v93);
  v94.origin.x = 0.0;
  v94.origin.y = MinY;
  v94.size.width = Width;
  v94.size.height = v71;
  MaxY = CGRectGetMaxY(v94);
  v46 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v47 = sub_100437D18();
  [v7 convertRect:v47 toCoordinateSpace:{0.0, MinY, Width, v71}];

  v48 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView;
  v49 = *&v7[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  sub_100573858();

  sub_100573898();
  UIView.untransformedFrame.setter(v50, v51, v52, v53);
  if (a2)
  {
    [v7 convertRect:*&v7[v48] toCoordinateSpace:{v72, MaxY - v43, v73, recta}];
    v54 = *&v7[v48];
    sub_100573858();

    sub_100573898();
    UIView.untransformedFrame.setter(v55, v56, v57, v58);
  }

  v59 = [v46 superview];
  if (!v59 || (v60 = v59, v61 = *&v7[v48], sub_1000D3B98(0, &qword_1006F6130), v62 = v61, v63 = sub_100573A58(), v60, v62, (v63 & 1) == 0))
  {
    [*&v7[v48] addSubview:v46];
  }

  if (a2)
  {
    v64 = *(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);

    v65 = [v64 superview];
    if (!v65 || (v66 = v65, v67 = *&v7[v48], sub_1000D3B98(0, &qword_1006F6130), v68 = v67, v69 = sub_100573A58(), v66, v68, (v69 & 1) == 0))
    {
      [*&v7[v48] addSubview:v64];
    }
  }
}

uint64_t NowPlaying.TrackTitleStackView.intrinsicContentSize.getter()
{
  v1 = sub_100439BC0();
  v2 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  swift_beginAccess();
  v3 = v2[3];
  v21[2] = v2[2];
  v21[3] = v3;
  v4 = v2[5];
  v21[4] = v2[4];
  v21[5] = v4;
  v5 = v2[1];
  v21[0] = *v2;
  v21[1] = v5;
  if ((v5 & 1) == 0)
  {
    sub_100361E70(v21, &v15);
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = 0.0;
    v22.size.height = 0.0;
    if (CGRectGetHeight(v22) <= 0.0 || (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = 0.0, v23.size.height = 0.0, CGRectGetHeight(v23) == 1.79769313e308))
    {
      [*&v1[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v1[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    sub_100361ECC(v21);
  }

  v6 = sub_100439F48();
  v7 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  swift_beginAccess();
  v8 = v7[2];
  v9 = v7[3];
  v10 = *v7;
  v16 = v7[1];
  v17 = v8;
  v11 = v7[4];
  v12 = v7[5];
  v18 = v9;
  v19 = v11;
  v20 = v12;
  v15 = v10;
  if ((v16 & 1) == 0)
  {
    sub_100361E70(&v15, v14);
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = 0.0;
    v24.size.height = 0.0;
    if (CGRectGetHeight(v24) <= 0.0 || (v25.origin.x = 0.0, v25.origin.y = 0.0, v25.size.width = 0.0, v25.size.height = 0.0, CGRectGetHeight(v25) == 1.79769313e308))
    {
      [*&v6[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v6[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    sub_100361ECC(&v15);
  }
}

id sub_1004399FC(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) removeFromSuperview];
  v3 = sub_100439BC0();
  v4 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v24[4] = *(v4 + 4);
  v24[5] = v5;
  v6 = *(v4 + 3);
  v24[2] = *(v4 + 2);
  v24[3] = v6;
  v7 = *(v4 + 1);
  v24[0] = *v4;
  v24[1] = v7;
  v8 = *(v3 + 1);
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v12 = *(v3 + 6);
  v23[4] = *(v3 + 5);
  v23[5] = v12;
  v23[2] = v10;
  v23[3] = v11;
  v23[0] = v8;
  v23[1] = v9;
  v13 = *(v3 + 2);
  v25[0] = *(v3 + 1);
  v25[1] = v13;
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v16 = *(v3 + 6);
  v25[4] = *(v3 + 5);
  v25[5] = v16;
  v25[2] = v14;
  v25[3] = v15;
  memmove(v3 + 16, v4, 0x60uLL);
  sub_100361E70(v24, v22);
  sub_100361E70(v24, v22);
  sub_100361E70(v23, v22);
  sub_100361ECC(v25);
  sub_10043DB9C(v23);
  sub_100361ECC(v23);
  sub_100361ECC(v24);

  v17 = *(*&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v18 = *&sub_100439F48()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v17 addCoordinatedMarqueeView:v18];

  v19 = *(v4 + 40);
  v22[0] = *(v4 + 24);
  v22[1] = v19;
  v22[2] = *(v4 + 56);

  sub_10043CA4C(v20, v22);

  return [v2 setNeedsLayout];
}

char *sub_100439BC0()
{
  v1 = sub_100009DCC(&qword_1006F4EF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2];
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel])
  {
    v5 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
  }

  else
  {
    v6 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v7 = type metadata accessor for NowPlaying.TrackMetadata(0);
    sub_10043A144(&v6[*(v7 + 24)], v3, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
    v9 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
    swift_beginAccess();
    v10 = *(v9 + 3);
    v16[2] = *(v9 + 2);
    v16[3] = v10;
    v11 = *(v9 + 5);
    v16[4] = *(v9 + 4);
    v16[5] = v11;
    v12 = *(v9 + 1);
    v16[0] = *v9;
    v16[1] = v12;
    type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
    swift_allocObject();
    sub_100361E70(v16, v15);
    v13 = v0;
    v5 = sub_100440BE4(v3, v16, v13);

    sub_100361ECC(v16);
    *&v0[v4] = v5;
  }

  return v5;
}

id sub_100439D9C(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) removeFromSuperview];
  v3 = sub_100439F48();
  v4 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v23[4] = *(v4 + 4);
  v23[5] = v5;
  v6 = *(v4 + 3);
  v23[2] = *(v4 + 2);
  v23[3] = v6;
  v7 = *(v4 + 1);
  v23[0] = *v4;
  v23[1] = v7;
  v8 = *(v3 + 1);
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v12 = *(v3 + 6);
  v22[4] = *(v3 + 5);
  v22[5] = v12;
  v22[2] = v10;
  v22[3] = v11;
  v22[0] = v8;
  v22[1] = v9;
  v13 = *(v3 + 2);
  v24[0] = *(v3 + 1);
  v24[1] = v13;
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v16 = *(v3 + 6);
  v24[4] = *(v3 + 5);
  v24[5] = v16;
  v24[2] = v14;
  v24[3] = v15;
  memmove(v3 + 16, v4, 0x60uLL);
  sub_100361E70(v23, v21);
  sub_100361E70(v23, v21);
  sub_100361E70(v22, v21);
  sub_100361ECC(v24);
  sub_10043DB9C(v22);
  sub_100361ECC(v22);
  sub_100361ECC(v23);

  v17 = *&sub_100439BC0()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v17 addCoordinatedMarqueeView:*(*&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view)];

  v18 = *(v4 + 40);
  v21[0] = *(v4 + 24);
  v21[1] = v18;
  v21[2] = *(v4 + 56);

  sub_10043CA4C(v19, v21);

  return [v2 setNeedsLayout];
}

char *sub_100439F48()
{
  v1 = sub_100009DCC(&qword_1006F4EF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14[-v2];
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel])
  {
    v5 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];
  }

  else
  {
    v6 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v7 = type metadata accessor for NowPlaying.TrackMetadata(0);
    sub_10000CC8C(&v6[*(v7 + 28)], v3, &qword_1006F4EF0);
    v8 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v9 = *(v8 + 3);
    v15[2] = *(v8 + 2);
    v15[3] = v9;
    v10 = *(v8 + 5);
    v15[4] = *(v8 + 4);
    v15[5] = v10;
    v11 = *(v8 + 1);
    v15[0] = *v8;
    v15[1] = v11;
    type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
    swift_allocObject();
    sub_100361E70(v15, v14);
    v12 = v0;
    v5 = sub_100440BE4(v3, v15, v12);

    sub_100361ECC(v15);
    *&v0[v4] = v5;
  }

  return v5;
}

uint64_t sub_10043A0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043A144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10043A1AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F4EF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *NowPlaying.TrackTitleStackView.transitionWillBegin(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = a1;

  v5 = sub_100437D18();
  [v5 setClipsToBounds:*&v2[v4] != 0];

  [v2 setNeedsLayout];
  v6 = *(*a1 + 424);
  v7 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v8 = sub_100442120(&qword_1006F4EF8, type metadata accessor for NowPlaying.TrackTitleStackView);
  result = v6(&v24, v2, v7, v8);
  if (v24)
  {
    v10 = v25;
    v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
    swift_beginAccess();
    v12 = *(v11 + 40);
    v24 = *(v11 + 24);
    v25 = v12;
    v26 = *(v11 + 56);

    sub_10043CA4C(v13, &v24);

    v14 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v15 = *(v14 + 40);
    v23[0] = *(v14 + 24);
    v23[1] = v15;
    v23[2] = *(v14 + 56);

    sub_10043CA4C(v16, v23);

    v17 = *(v11 + 40);
    v22[0] = *(v11 + 24);
    v22[1] = v17;
    v22[2] = *(v11 + 56);
    if (v10)
    {

      sub_10043CA4C(v18, v22);

      v19 = *(&v10 + 1);
    }

    else
    {
      sub_10043CA4C(0, v22);
      v19 = 0;
    }

    v20 = *(v14 + 40);
    v21[0] = *(v14 + 24);
    v21[1] = v20;
    v21[2] = *(v14 + 56);
    sub_10043CA4C(v19, v21);

    return sub_100440528(v10);
  }

  return result;
}

void *NowPlaying.TrackTitleStackView.transitionDidEnd(_:)(char *a1)
{
  v2 = v1;
  v215 = a1;
  v212 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v206 = *(v212 - 8);
  __chkstk_darwin(v212);
  v188 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_100009DCC(&qword_1006F4F08);
  __chkstk_darwin(v203);
  v192 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v207 = &v175 - v6;
  v7 = sub_100009DCC(&qword_1006F4EF0);
  __chkstk_darwin(v7 - 8);
  v183 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v182 = &v175 - v10;
  __chkstk_darwin(v11);
  v184 = &v175 - v12;
  __chkstk_darwin(v13);
  v194 = &v175 - v14;
  __chkstk_darwin(v15);
  v199 = &v175 - v16;
  __chkstk_darwin(v17);
  v189 = &v175 - v18;
  __chkstk_darwin(v19);
  v204 = &v175 - v20;
  __chkstk_darwin(v21);
  v208 = &v175 - v22;
  v213 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v209 = *(v213 - 8);
  __chkstk_darwin(v213);
  v201 = (&v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v202 = sub_100009DCC(&qword_1006F4F10);
  __chkstk_darwin(v202);
  v191 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v190 = &v175 - v26;
  v27 = sub_100009DCC(&qword_1006F4F00);
  __chkstk_darwin(v27 - 8);
  v185 = &v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v200 = &v175 - v30;
  __chkstk_darwin(v31);
  v187 = (&v175 - v32);
  __chkstk_darwin(v33);
  v197 = &v175 - v34;
  __chkstk_darwin(v35);
  v198 = &v175 - v36;
  __chkstk_darwin(v37);
  v186 = (&v175 - v38);
  __chkstk_darwin(v39);
  v195 = &v175 - v40;
  __chkstk_darwin(v41);
  v196 = &v175 - v42;
  v43 = sub_10056CAE8();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v193 = &v175 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100009DCC(&qword_1006F4F18);
  __chkstk_darwin(v46);
  v211 = &v175 - v47;
  v48 = sub_100009DCC(&qword_1006F4F20);
  __chkstk_darwin(v48 - 8);
  v205 = &v175 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v175 - v51;
  v55 = __chkstk_darwin(v53);
  v56 = &v175 - v54;
  v214 = v2;
  v210 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v57 = *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v57)
  {
    v58 = *(v44 + 16);
    v58(&v175 - v54, v57 + direct field offset for Gliss.Transition.id, v43, v55);
    v59 = *(v44 + 56);
    v59(v56, 0, 1, v43);
  }

  else
  {
    v59 = *(v44 + 56);
    (v59)(&v175 - v54, 1, 1, v43, v55);
    v58 = *(v44 + 16);
  }

  (v58)(v52, &v215[direct field offset for Gliss.Transition.id], v43);
  v59(v52, 0, 1, v43);
  v60 = *(v46 + 48);
  v61 = v211;
  sub_10000CC8C(v56, v211, &qword_1006F4F20);
  v62 = v61;
  sub_10000CC8C(v52, v61 + v60, &qword_1006F4F20);
  v63 = *(v44 + 48);
  if (v63(v61, 1, v43) == 1)
  {
    sub_10001036C(v52, &qword_1006F4F20);
    sub_10001036C(v56, &qword_1006F4F20);
    v64 = v63(v61 + v60, 1, v43);
    v65 = v213;
    if (v64 == 1)
    {
      sub_10001036C(v61, &qword_1006F4F20);
      v66 = v214;
LABEL_11:
      v72 = v210;
      *&v66[v210] = 0;

      v73 = sub_100437D18();
      [v73 setClipsToBounds:*&v66[v72] != 0];

      v68 = 1;
      goto LABEL_13;
    }

LABEL_9:
    sub_10001036C(v61, &qword_1006F4F18);
    v68 = 0;
    v66 = v214;
    goto LABEL_13;
  }

  v67 = v205;
  sub_10000CC8C(v61, v205, &qword_1006F4F20);
  if (v63(v61 + v60, 1, v43) == 1)
  {
    sub_10001036C(v52, &qword_1006F4F20);
    sub_10001036C(v56, &qword_1006F4F20);
    (*(v44 + 8))(v67, v43);
    v65 = v213;
    goto LABEL_9;
  }

  v69 = v193;
  (*(v44 + 32))(v193, v61 + v60, v43);
  sub_100442120(&qword_1006F4F28, &type metadata accessor for UUID);
  v70 = sub_1005727E8();
  v71 = *(v44 + 8);
  v71(v69, v43);
  sub_10001036C(v52, &qword_1006F4F20);
  sub_10001036C(v56, &qword_1006F4F20);
  v71(v67, v43);
  sub_10001036C(v62, &qword_1006F4F20);
  v66 = v214;
  v65 = v213;
  if (v70)
  {
    goto LABEL_11;
  }

  v68 = 0;
LABEL_13:
  v74 = sub_100439BC0();
  v75 = &v66[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v76 = *(v75 + 40);
  v221[0] = *(v75 + 24);
  v221[1] = v76;
  v221[2] = *(v75 + 56);
  sub_10043CA4C(v74, v221);

  v77 = sub_100439F48();
  v78 = &v66[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v79 = *(v78 + 40);
  v220[0] = *(v78 + 24);
  v220[1] = v79;
  v220[2] = *(v78 + 56);
  sub_10043CA4C(v77, v220);

  v80 = *(*v215 + 424);
  v81 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v82 = sub_100442120(&qword_1006F4EF8, type metadata accessor for NowPlaying.TrackTitleStackView);
  result = v80(&v216, v66, v81, v82);
  v84 = v212;
  if (!v216)
  {
    return result;
  }

  v85 = v217;
  v87 = v218;
  v86 = v219;
  if (!v218)
  {

    goto LABEL_67;
  }

  v211 = v217;
  v193 = v219;
  v205 = v216;
  if ((v68 & 1) == 0)
  {
    sub_1004404E4(v218);

    v101 = sub_1004404E4(v87);
    v102 = v206;
    v103 = v208;
    goto LABEL_32;
  }

  v88 = *(*v215 + 208);
  v89 = *v215 + 208;
  sub_1004404E4(v218);

  v90 = sub_1004404E4(v87);
  v91 = v196;
  v179 = v88;
  v178 = v89;
  v88(v90);
  v92 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  v177 = v92;
  v93 = v65;
  v94 = v195;
  sub_10043A144(&v66[v92], v195, type metadata accessor for NowPlaying.TrackMetadata);
  v95 = v209;
  v176 = *(v209 + 56);
  v176(v94, 0, 1, v93);
  v96 = *(v202 + 48);
  v97 = v190;
  sub_10000CC8C(v91, v190, &qword_1006F4F00);
  sub_10000CC8C(v94, v97 + v96, &qword_1006F4F00);
  v98 = *(v95 + 48);
  v99 = v98(v97, 1, v93);
  v181 = v87;
  v180 = v98;
  if (v99 != 1)
  {
    v104 = v186;
    sub_10000CC8C(v97, v186, &qword_1006F4F00);
    if (v98(v97 + v96, 1, v93) != 1)
    {
      v100 = v93;
      v107 = v201;
      sub_100274280(v97 + v96, v201, type metadata accessor for NowPlaying.TrackMetadata);
      v108 = static NowPlaying.TrackMetadata.== infix(_:_:)(v104, v107);
      sub_1002742E8(v107, type metadata accessor for NowPlaying.TrackMetadata);
      sub_10001036C(v195, &qword_1006F4F00);
      sub_10001036C(v196, &qword_1006F4F00);
      sub_1002742E8(v104, type metadata accessor for NowPlaying.TrackMetadata);
      v105 = sub_10001036C(v97, &qword_1006F4F00);
      v106 = v214;
      if ((v108 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    sub_10001036C(v195, &qword_1006F4F00);
    sub_10001036C(v196, &qword_1006F4F00);
    sub_1002742E8(v104, type metadata accessor for NowPlaying.TrackMetadata);
LABEL_23:
    v100 = v93;
    v105 = sub_10001036C(v97, &qword_1006F4F10);
    v106 = v214;
    goto LABEL_26;
  }

  sub_10001036C(v94, &qword_1006F4F00);
  sub_10001036C(v91, &qword_1006F4F00);
  if (v98(v97 + v96, 1, v93) != 1)
  {
    goto LABEL_23;
  }

  v100 = v93;
  sub_10001036C(v97, &qword_1006F4F00);
LABEL_25:
  v109 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel;
  v110 = *&v214[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
  *&v214[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = v181;
  swift_retain_n();
  sub_1004399FC(v110);

  v106 = v214;

  v105 = [*(*&v106[v109] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:1.0];
LABEL_26:
  v111 = v198;
  v179(v105);
  v112 = v197;
  sub_10043A144(&v106[v177], v197, type metadata accessor for NowPlaying.TrackMetadata);
  v176(v112, 0, 1, v100);
  v113 = *(v202 + 48);
  v114 = v191;
  sub_10000CC8C(v111, v191, &qword_1006F4F00);
  sub_10000CC8C(v112, v114 + v113, &qword_1006F4F00);
  v115 = v180;
  v116 = v180(v114, 1, v100);
  v85 = v211;
  if (v116 == 1)
  {
    sub_10001036C(v112, &qword_1006F4F00);
    sub_10001036C(v111, &qword_1006F4F00);
    v117 = v115(v114 + v113, 1, v100);
    v118 = v114;
    v65 = v100;
    v87 = v181;
    v119 = v206;
    if (v117 == 1)
    {
      sub_10001036C(v114, &qword_1006F4F00);
      v66 = v214;
      goto LABEL_64;
    }

    goto LABEL_31;
  }

  v120 = v187;
  sub_10000CC8C(v114, v187, &qword_1006F4F00);
  v121 = v115(v114 + v113, 1, v100);
  v118 = v114;
  v65 = v100;
  v119 = v206;
  if (v121 == 1)
  {
    sub_10001036C(v197, &qword_1006F4F00);
    sub_10001036C(v198, &qword_1006F4F00);
    sub_1002742E8(v120, type metadata accessor for NowPlaying.TrackMetadata);
    v87 = v181;
LABEL_31:
    v101 = sub_10001036C(v118, &qword_1006F4F10);
    v66 = v214;
    v84 = v212;
    v103 = v208;
    v102 = v119;
    goto LABEL_32;
  }

  v146 = v201;
  sub_100274280(v114 + v113, v201, type metadata accessor for NowPlaying.TrackMetadata);
  LODWORD(v202) = static NowPlaying.TrackMetadata.== infix(_:_:)(v120, v146);
  sub_1002742E8(v146, type metadata accessor for NowPlaying.TrackMetadata);
  sub_10001036C(v197, &qword_1006F4F00);
  sub_10001036C(v198, &qword_1006F4F00);
  sub_1002742E8(v120, type metadata accessor for NowPlaying.TrackMetadata);
  v85 = v211;
  v101 = sub_10001036C(v114, &qword_1006F4F00);
  v66 = v214;
  v84 = v212;
  v87 = v181;
  v103 = v208;
  v102 = v119;
  if (v202)
  {
    goto LABEL_64;
  }

LABEL_32:
  v122 = v200;
  (*(*v215 + 208))(v101);
  v123 = *(v209 + 48);
  v209 += 48;
  v202 = v123;
  if (v123(v122, 1, v65) == 1)
  {
    sub_10001036C(v122, &qword_1006F4F00);
    (*(v102 + 56))(v103, 1, 1, v84);
  }

  else
  {
    sub_10000CC8C(v122 + *(v65 + 28), v103, &qword_1006F4EF0);
    sub_1002742E8(v122, type metadata accessor for NowPlaying.TrackMetadata);
  }

  v124 = *&v66[v210];
  if (v124)
  {
    v125 = *(*v124 + 184);
    v126 = v102;

    v128 = v201;
    v125(v127);

    v129 = v204;
    sub_10000CC8C(v128 + *(v213 + 28), v204, &qword_1006F4EF0);
    sub_1002742E8(v128, type metadata accessor for NowPlaying.TrackMetadata);
  }

  else
  {
    v129 = v204;
    (*(v102 + 56))(v204, 1, 1, v84);
    v126 = v102;
  }

  v130 = *(v203 + 48);
  v131 = v208;
  v132 = v207;
  sub_10000CC8C(v208, v207, &qword_1006F4EF0);
  v133 = v132;
  sub_10000CC8C(v129, v132 + v130, &qword_1006F4EF0);
  v134 = *(v126 + 48);
  if ((v134)(v132, 1, v84) == 1)
  {
    v215 = v134;
    sub_10001036C(v129, &qword_1006F4EF0);
    v135 = v207;
    sub_10001036C(v131, &qword_1006F4EF0);
    if ((v215)(v135 + v130, 1, v84) == 1)
    {
      sub_10001036C(v135, &qword_1006F4EF0);
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v136 = v189;
  sub_10000CC8C(v133, v189, &qword_1006F4EF0);
  if ((v134)(v133 + v130, 1, v84) == 1)
  {
    sub_10001036C(v204, &qword_1006F4EF0);
    v135 = v207;
    sub_10001036C(v208, &qword_1006F4EF0);
    sub_1002742E8(v136, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_43:
    sub_10001036C(v135, &qword_1006F4F08);
    v86 = v193;
    v85 = v211;
LABEL_44:

    goto LABEL_67;
  }

  v215 = v134;
  v137 = v133 + v130;
  v138 = v188;
  sub_100274280(v137, v188, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v139 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v136, v138);
  sub_1002742E8(v138, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001036C(v204, &qword_1006F4EF0);
  sub_10001036C(v208, &qword_1006F4EF0);
  sub_1002742E8(v136, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v66 = v214;
  v84 = v212;
  sub_10001036C(v133, &qword_1006F4EF0);
  v86 = v193;
  v85 = v211;
  if ((v139 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_46:
  v140 = *&v66[v210];
  if (v140)
  {
    v141 = *(*v140 + 184);

    v143 = v201;
    v141(v142);

    v144 = v213;
    sub_10000CC8C(v143 + *(v213 + 28), v199, &qword_1006F4EF0);
    sub_1002742E8(v143, type metadata accessor for NowPlaying.TrackMetadata);
    v145 = v194;
  }

  else
  {
    (*(v206 + 56))(v199, 1, 1, v84);
    v145 = v194;
    v144 = v213;
  }

  v147 = *&v66[v210];
  if (v147)
  {
    v148 = *(*v147 + 208);

    v150 = v185;
    v148(v149);

    if ((v202)(v150, 1, v144) != 1)
    {
      v151 = v150 + *(v144 + 28);
      v152 = v150;
      v145 = v194;
      sub_10000CC8C(v151, v194, &qword_1006F4EF0);
      sub_1002742E8(v152, type metadata accessor for NowPlaying.TrackMetadata);
      goto LABEL_56;
    }

    sub_10001036C(v150, &qword_1006F4F00);
    v145 = v194;
  }

  (*(v206 + 56))(v145, 1, 1, v84);
LABEL_56:
  v153 = v84;
  v154 = *(v203 + 48);
  v155 = v199;
  v156 = v192;
  sub_10000CC8C(v199, v192, &qword_1006F4EF0);
  sub_10000CC8C(v145, v156 + v154, &qword_1006F4EF0);
  v157 = v215;
  if ((v215)(v156, 1, v153) == 1)
  {
    sub_10001036C(v145, &qword_1006F4EF0);
    v158 = v192;
    sub_10001036C(v155, &qword_1006F4EF0);
    v159 = v157(v158 + v154, 1, v153);
    v65 = v213;
    if (v159 == 1)
    {
      sub_10001036C(v158, &qword_1006F4EF0);
      v85 = v211;
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v160 = v184;
  sub_10000CC8C(v156, v184, &qword_1006F4EF0);
  v161 = v157(v156 + v154, 1, v153);
  v65 = v213;
  if (v161 == 1)
  {
    sub_10001036C(v194, &qword_1006F4EF0);
    v158 = v192;
    sub_10001036C(v199, &qword_1006F4EF0);
    sub_1002742E8(v160, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_61:
    sub_10001036C(v158, &qword_1006F4F08);
    v85 = v211;
LABEL_62:

    v86 = v193;

    goto LABEL_67;
  }

  v162 = v188;
  sub_100274280(v156 + v154, v188, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v163 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v160, v162);
  sub_1002742E8(v162, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001036C(v194, &qword_1006F4EF0);
  sub_10001036C(v199, &qword_1006F4EF0);
  sub_1002742E8(v160, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v66 = v214;
  sub_10001036C(v156, &qword_1006F4EF0);
  v85 = v211;
  if ((v163 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  v164 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel;
  v165 = *&v66[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];
  v86 = v193;
  if (v193)
  {
    *&v66[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = v193;
    swift_retain_n();
    sub_100439D9C(v165);

    v166 = *(*&v66[v164] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
    [v166 setAlpha:1.0];
  }

  else
  {
    v167 = &v66[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v168 = v182;
    sub_10000CC8C(&v167[*(v65 + 28)], v182, &qword_1006F4EF0);
    v169 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    v170 = v183;
    sub_10000CC8C(v165 + v169, v183, &qword_1006F4EF0);
    swift_beginAccess();

    sub_10043A1AC(v168, v165 + v169);
    swift_endAccess();
    sub_10043E960(v170);

    v171 = v170;
    v85 = v211;
    sub_10001036C(v171, &qword_1006F4EF0);
    v66 = v214;
    sub_10001036C(v168, &qword_1006F4EF0);
  }

LABEL_67:

  sub_10043C3DC(v172, v66);

  sub_10043C3DC(v85, v66);
  if (v87)
  {

    sub_10043C3DC(v173, v66);

    v174 = v86;
  }

  else
  {
    v174 = 0;
  }

  sub_10043C3DC(v174, v66);

  [v66 setNeedsLayout];
  sub_100440528(v87);

  return sub_100440528(v87);
}

uint64_t sub_10043C3DC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = *(result + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);

  v4 = v3;
  v5 = *&sub_100439BC0()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  sub_1000D3B98(0, &qword_1006F5218);
  LOBYTE(v3) = sub_100573A58();

  if ((v3 & 1) == 0)
  {
    v6 = v4;
    v7 = *&sub_100439F48()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

    v8 = sub_100573A58();

    if ((v8 & 1) == 0)
    {
      v9 = *(a2 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition);
      if (v9)
      {
        v10 = *(*v9 + 424);
        v11 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
        v12 = sub_100442120(&qword_1006F4EF8, type metadata accessor for NowPlaying.TrackTitleStackView);

        v10(v25, a2, v11, v12);

        if (v25[0])
        {
          v14 = v25[1];
          v13 = v25[2];
          v15 = v25[3];
          sub_1000D3B98(0, &unk_1006F6120);
          if (sub_100573A58())
          {
            goto LABEL_14;
          }

          if (v14)
          {
            v16 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
            v24 = v15;
            v17 = v6;
            v23 = v13;
            v18 = v16;
            LOBYTE(v16) = sub_100573A58();

            v15 = v24;
            v13 = v23;
            if (v16)
            {
              goto LABEL_14;
            }
          }

          if (v13)
          {
            if (sub_100573A58())
            {
LABEL_14:

              sub_100440528(v13);
            }

            if (v15)
            {
              v19 = *(v15 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
              v20 = v13;
              v21 = v6;
              v22 = v19;
              LOBYTE(v19) = sub_100573A58();

              sub_100440528(v20);
              if (v19)
              {
              }
            }

            else
            {

              sub_100440528(v13);
            }
          }

          else
          {
          }
        }
      }

      [v6 removeFromSuperview];
    }
  }
}

id NowPlaying.TrackTitleStackView.adopt(_:from:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_100009DCC(&qword_1006F4EF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043A144(a1, v13, type metadata accessor for NowPlaying.TrackMetadata);
  v14 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_10043A0E0(v13, v2 + v14);
  result = swift_endAccess();
  if (!a2)
  {
    v16 = v2;
    v17 = sub_100439BC0();
    sub_10043A144(a1 + *(v11 + 24), v10, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v18 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
    v19 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    sub_10000CC8C(&v17[v19], v7, &qword_1006F4EF0);
    swift_beginAccess();
    sub_10043A1AC(v10, &v17[v19]);
    swift_endAccess();
    sub_10043E960(v7);

    sub_10001036C(v7, &qword_1006F4EF0);
    sub_10001036C(v10, &qword_1006F4EF0);
    v20 = sub_100439F48();
    sub_10000CC8C(a1 + *(v11 + 28), v10, &qword_1006F4EF0);
    v21 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    sub_10000CC8C(&v20[v21], v7, &qword_1006F4EF0);
    swift_beginAccess();
    sub_10043A1AC(v10, &v20[v21]);
    swift_endAccess();
    sub_10043E960(v7);

    sub_10001036C(v7, &qword_1006F4EF0);
    sub_10001036C(v10, &qword_1006F4EF0);
    return [v16 setNeedsLayout];
  }

  return result;
}

void sub_10043CA4C(uint64_t a1, unsigned __int8 *a2)
{
  v5 = sub_100009DCC(&qword_1006F4F00);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  if (a1)
  {
    v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
    v9 = *(v2 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition);
    if (v9)
    {
      v10 = v2;
      v11 = *(*v9 + 256);

      v13 = v11(v12);

      if (v13 == 2)
      {
        v14 = *(v10 + v8);
        if (v14)
        {
          v15 = *(*v14 + 208);

          v15(v16);

          v17 = type metadata accessor for NowPlaying.TrackMetadata(0);
          if ((*(*(v17 - 8) + 48))(v7, 1, v17) != 1)
          {
            sub_10001036C(v7, &qword_1006F4F00);
            v18 = 0;
LABEL_11:
            [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setMarqueeEnabled:v18 withOptions:1];

            return;
          }
        }

        else
        {
          v19 = type metadata accessor for NowPlaying.TrackMetadata(0);
          (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
        }

        sub_10001036C(v7, &qword_1006F4F00);
      }
    }

    else
    {
    }

    v18 = *a2;
    goto LABEL_11;
  }
}

void sub_10043CC7C()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition])
  {
    v2 = objc_opt_self();
    v3 = [v2 disableActions];
    v4 = &selRef_avatarImageForContacts_scope_;
    [v2 setDisableActions:1];
    v5 = OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer;
    v6 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
    if (v6)
    {
      v7 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
LABEL_28:
      v44 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
      swift_beginAccess();
      v45 = v44[6];
      v46 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
      swift_beginAccess();
      if (v46[6] >= v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = v46[6];
      }

      sub_100009DCC(&qword_1006F3B50);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_100582550;
      sub_1000D3B98(0, &qword_1006F1F20);
      v49 = v6;
      *(v48 + 32) = sub_100573A28(0.0);
      [v1 bounds];
      *(v48 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:v47 / CGRectGetWidth(v58)];
      [v1 bounds];
      *(v48 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v47 / CGRectGetWidth(v59)];
      *(v48 + 56) = sub_100573A28(1.0);
      isa = sub_100572D08().super.isa;

      [v7 setLocations:isa];

      [v7 setStartPoint:{0.0, 0.5}];
      v51 = v7;
      [v51 setEndPoint:{1.0, 0.5}];
      [v1 bounds];
      [v51 setBounds:?];

      [v1 bounds];
      MidX = CGRectGetMidX(v60);
      [v1 bounds];
      [v51 setPosition:{MidX, CGRectGetMidY(v61)}];

      [v2 v4[57]];
      return;
    }

    v53 = v3;
    v56 = v2;
    v15 = [objc_allocWithZone(CAGradientLayer) init];
    sub_100009DCC(&qword_1006F06D0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10057BD80;
    v17 = objc_opt_self();
    v18 = v15;
    v19 = [v17 blackColor];
    v20 = [v19 CGColor];

    _s3__C7CGColorCMa_0(0);
    v22 = v21;
    *(v16 + 56) = v21;
    *(v16 + 32) = v20;
    v23 = [v17 clearColor];
    v24 = [v23 CGColor];

    *(v16 + 88) = v22;
    *(v16 + 64) = v24;
    v25 = [v17 clearColor];
    v26 = [v25 CGColor];

    *(v16 + 120) = v22;
    *(v16 + 96) = v26;
    v27 = [v17 blackColor];
    v28 = [v27 CGColor];

    *(v16 + 152) = v22;
    *(v16 + 128) = v28;
    v29 = sub_100572D08().super.isa;

    [v18 setColors:v29];

    [v18 setCompositingFilter:kCAFilterDestOut];
    v30 = *&v1[v5];
    if (v30)
    {
      sub_1000D3B98(0, &qword_1006F40E8);
      v31 = v18;
      v32 = v30;
      v33 = v31;
      v34 = v32;
      v35 = sub_100573A58();

      v36 = *&v1[v5];
      if ((v35 & 1) == 0)
      {
        v4 = &selRef_avatarImageForContacts_scope_;
        v6 = 0;
        if (v36)
        {
          [*&v1[v5] removeFromSuperlayer];
          v36 = *&v1[v5];
        }

LABEL_16:
        *&v1[v5] = v18;
        v7 = v18;

        v38 = *&v1[v5];
        if (v38)
        {
          if (v30)
          {
            sub_1000D3B98(0, &qword_1006F40E8);
            v39 = v30;
            v40 = v38;
            v41 = sub_100573A58();

            if (v41)
            {

LABEL_21:
              v2 = v56;
              v3 = v53;
              goto LABEL_28;
            }
          }

          else
          {
            v42 = v38;
            v39 = 0;
          }

          v2 = v56;
          v3 = v53;
          v43 = [v1 layer];
          [v43 addSublayer:v38];

          goto LABEL_28;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v37 = v18;
      v36 = 0;
    }

    v4 = &selRef_avatarImageForContacts_scope_;
    v6 = 0;
    goto LABEL_16;
  }

  v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer;
  v9 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
  if (v9)
  {
    v55 = v9;
    [v55 removeFromSuperlayer];
    v10 = *&v1[v8];
    *&v1[v8] = 0;

    v11 = *&v1[v8];
    if (v11)
    {
      sub_1000D3B98(0, &qword_1006F40E8);
      v12 = v55;
      v55 = v11;
      v13 = sub_100573A58();

      if ((v13 & 1) == 0)
      {
        v54 = [v1 layer];
        [v54 addSublayer:v55];

        v14 = v54;
        goto LABEL_23;
      }
    }

    v14 = v55;
  }

  else
  {
    v14 = 0;
  }

LABEL_23:
}

id sub_10043D39C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_100572898();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10043D434(uint64_t (*a1)(__n128))
{
  v2 = sub_10056C598();
  __chkstk_darwin(v2);
  v3 = sub_10056C628();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC(&qword_1006F4EF0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = a1(v8);
  v12 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_10000CC8C(v11 + v12, v10, &qword_1006F4EF0);
  v13 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  if ((*(*(v13 - 8) + 48))(v10, 1, v13) == 1)
  {

    return 0;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v10, v3);
    sub_10056C588();
    sub_100442120(&qword_1006F5208, &type metadata accessor for AttributedString.CharacterView);
    v15 = sub_100572B68();

    (*(v4 + 8))(v6, v3);
    return v15;
  }

  else
  {

    return *v10;
  }
}

id NowPlaying.TrackTitleStackView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10043D8AC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC17transitionContext2to9directionAF010TransitionK0VSgAC0F8MetadataV_AA5GlissO9DirectionOSgtF_0(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

double NowPlaying.TrackTitleStackView.Label.Attributes.marquee.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  *a1 = *(v1 + 24);
  v3 = *(v1 + 48);
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 40) = result;
  return result;
}

void *NowPlaying.TrackTitleStackView.Label.Attributes.action.getter()
{
  v1 = *(v0 + 72);
  sub_100442168(v1, *(v0 + 80), *(v0 + 88));
  return v1;
}

void NowPlaying.TrackTitleStackView.Label.Attributes.action.setter(void *a1, void *a2, void *a3)
{
  sub_10043EC60(v3[9], v3[10], v3[11]);
  v3[9] = a1;
  v3[10] = a2;
  v3[11] = a3;
}

void NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.fadeInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

BOOL static NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.__derived_struct_equals(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v2 = a1[3] == a2[3] && a1[4] == a2[4];
    if (v2 && a1[5] == a2[5])
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10043DA08(float64x2_t *a1, float64x2_t *a2)
{
  if (LOBYTE(a1->f64[0]) == LOBYTE(a2->f64[0]) && a1->f64[1] == a2->f64[1])
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[1], a2[1]), vceqq_f64(a1[2], a2[2])))) & 1;
  }

  else
  {
    return 0;
  }
}

double NowPlaying.TrackTitleStackView.Label.Attributes.update(_:)(void (*a1)(__int128 *))
{
  v2 = v1[3];
  v11 = v1[2];
  v12 = v2;
  v3 = v1[5];
  v13 = v1[4];
  v14 = v3;
  v4 = v1[1];
  v9 = *v1;
  v10 = v4;
  a1(&v9);
  v5 = v12;
  v1[2] = v11;
  v1[3] = v5;
  v6 = v14;
  v1[4] = v13;
  v1[5] = v6;
  result = *&v9;
  v8 = v10;
  *v1 = v9;
  v1[1] = v8;
  return result;
}

uint64_t sub_10043DB40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV23__derived_struct_equalsySbAJ_AJtFZ_0(v9, v10) & 1;
}

void sub_10043DB9C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 48);
  v55[2] = *(a1 + 32);
  v55[3] = v4;
  v5 = *(a1 + 80);
  v55[4] = *(a1 + 64);
  v55[5] = v5;
  v6 = *(a1 + 16);
  v55[0] = *a1;
  v55[1] = v6;
  v7 = sub_100009DCC(&qword_1006F4EF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - v8;
  v10 = *(v1 + 64);
  v58 = *(v1 + 48);
  v59 = v10;
  v11 = *(v1 + 96);
  v60 = *(v1 + 80);
  v61 = v11;
  v12 = *(v1 + 32);
  v56 = *(v1 + 16);
  v57 = v12;
  sub_1000D3B98(0, &unk_1006F6120);
  sub_100361E70(&v56, v54);
  if ((sub_100573A58() & 1) == 0 || (sub_100573A58() & 1) == 0 || v57 != (*(a1 + 16) & 1) || BYTE8(v57) != (*(a1 + 24) & 1) || *&v58 != *(a1 + 32) || *(&v58 + 1) != *(a1 + 40) || *&v59 != *(a1 + 48) || *(&v59 + 1) != *(a1 + 56) || *&v60 != *(a1 + 64))
  {
    goto LABEL_14;
  }

  v13 = *(&v60 + 1);
  v15 = *(a1 + 72);
  v14 = *(a1 + 80);
  v16 = *(a1 + 88);
  if (*(&v60 + 1) == 1)
  {
    sub_100442168(*(a1 + 72), *(a1 + 80), *(a1 + 88));
    sub_100361ECC(&v56);
    if (v15 == 1)
    {
      return;
    }

    sub_10043EC60(v15, v14, v16);
    goto LABEL_15;
  }

  if (v15 == 1)
  {
LABEL_14:
    sub_100361ECC(&v56);
    goto LABEL_15;
  }

  v49 = *(&v61 + 1);
  v52 = v61;
  sub_100442168(v15, v14, v16);
  v50 = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(v13, v52, v49, v15, v14, v16);
  sub_100361ECC(&v56);

  if (v50)
  {
    return;
  }

LABEL_15:
  if ((*(a1 + 72) == 1) == (*(v1 + 88) == 1))
  {
    goto LABEL_35;
  }

  v17 = *(v1 + 64);
  v54[2] = *(v1 + 48);
  v54[3] = v17;
  v18 = *(v1 + 96);
  v54[4] = *(v1 + 80);
  v54[5] = v18;
  v19 = *(v1 + 32);
  v54[0] = *(v1 + 16);
  v54[1] = v19;
  sub_100361E70(v54, &v53);
  v20 = sub_100440814(v54);
  v21 = v20;
  v23 = v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind;
  v24 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  v25 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind + 8);
  *v23 = v20;
  *(v23 + 8) = v22 & 1;
  if (v22)
  {
    if ((v25 & 1) == 0)
    {
LABEL_18:
      v26 = v20;
      goto LABEL_22;
    }
  }

  else if (v25)
  {
    goto LABEL_18;
  }

  v27 = v20;
  if ((sub_100573A58() & 1) == 0)
  {
LABEL_22:
    [v24 removeFromSuperview];
    v28 = *v23;
    v29 = [v28 superview];
    v30 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
    v31 = [v30 contentView];
    v32 = v31;
    if (v29)
    {
      if (v31)
      {
        sub_1000D3B98(0, &qword_1006F6130);
        v33 = sub_100573A58();

        if (v33)
        {
          goto LABEL_33;
        }

LABEL_30:
        v34 = [v30 contentView];
        if (v34)
        {
          v35 = v34;
          [v34 addSubview:v28];

          v36 = [v30 contentView];
          if (v36)
          {
            v37 = v36;
            [v36 bounds];
            v39 = v38;
            v41 = v40;
            v43 = v42;
            v45 = v44;

            [v28 setFrame:{v39, v41, v43, v45}];
            [v28 setAutoresizingMask:18];
            [v30 setViewForContentSize:v28];
LABEL_33:

            sub_10043ECB4();
            goto LABEL_34;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v32 = v29;
    }

    else if (!v31)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v21 = v24;
  v24 = v27;
LABEL_34:

LABEL_35:
  sub_10043E0F8(v55);
  v46 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_10000CC8C(v2 + v46, v9, &qword_1006F4EF0);
  v47 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  if ((*(*(v47 - 8) + 48))(v9, 1, v47) == 1)
  {
    sub_10001036C(v9, &qword_1006F4EF0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1002742E8(v9, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    if (EnumCaseMultiPayload == 1)
    {
      sub_10043ECB4();
    }
  }
}

uint64_t sub_10043E0F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100009DCC(&qword_1006F51E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - v5;
  v7 = sub_100009DCC(&qword_1006EFAF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v13 = sub_100573B38();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1[4];
  v71 = v1[3];
  v72 = v17;
  v18 = v1[6];
  v73 = v1[5];
  v74 = v18;
  v19 = v1[2];
  v69 = v1[1];
  v70 = v19;
  v20 = v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind;
  v21 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  if ((v20[8] & 1) == 0)
  {
    v23 = v69;
    sub_100361E70(&v69, v68);
    v24 = v21;
    [v24 setFont:v23];
    [v24 setTextColor:*(&v69 + 1)];

    v25 = *a1;
    if (!*a1)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v65 = *a1;
  v67 = v21;
  v66 = v9;
  if (!v65)
  {
    sub_100361E70(&v69, v68);
    goto LABEL_8;
  }

  v22 = *(a1 + 72);
  if (v22 <= 1)
  {
    sub_100361E70(&v69, v68);
    v21 = v67;
LABEL_8:
    v26 = v21;
    goto LABEL_9;
  }

  v75 = *(v2 + 88);
  v76 = *(v2 + 13);
  v31 = v75;
  if (v75 == 1)
  {
    sub_100361E70(&v69, v68);
    v32 = v67;
    v33 = v67;
    v34 = v22;
  }

  else
  {
    v56 = v76;
    v77 = *(&v75 + 1);
    sub_100361E70(&v69, v68);
    v32 = v67;
    v57 = v67;
    v64 = v22;
    sub_10000CC8C(&v75, v68, &qword_1006F51E8);
    sub_10001036C(&v77, &qword_1006F51F0);
    v78 = v56;
    sub_10001036C(&v78, &qword_1006EF698);
    if (v31)
    {
      sub_1000D3B98(0, &qword_1006EFB60);
      v58 = v64;
      v63 = v31;
      v59 = v58;
      v60 = sub_100573A58();
      v64 = v59;

      if (v60)
      {

        goto LABEL_9;
      }
    }
  }

  [v32 removeAction:v22 forControlEvents:0x2000];

LABEL_9:
  sub_100573B58();
  v27 = *(v14 + 48);
  if (v27(v12, 1, v13) == 1)
  {
    sub_100573B18();
    if (v27(v12, 1, v13) != 1)
    {
      sub_10001036C(v12, &qword_1006EFAF0);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  v28 = *(&v69 + 1);
  sub_100573AF8();
  v29 = *(&v73 + 1);
  v30 = v74;
  if (*(&v73 + 1) != 1 && *(&v74 + 1))
  {
    if (*(&v73 + 1))
    {
      sub_100442168(*(&v73 + 1), v74, *(&v74 + 1));

LABEL_21:
      goto LABEL_22;
    }

    if (v74)
    {
      sub_100442168(0, v74, *(&v74 + 1));

      goto LABEL_21;
    }

    v61 = *(&v74 + 1);
    sub_100573AF8();
  }

LABEL_22:
  v35 = swift_allocObject();
  v36 = v72;
  v35[3] = v71;
  v35[4] = v36;
  v37 = v74;
  v35[5] = v73;
  v35[6] = v37;
  v38 = v70;
  v35[1] = v69;
  v35[2] = v38;
  sub_100361E70(&v69, v68);
  sub_10056E2C8();
  v39 = sub_10056E2B8();
  (*(*(v39 - 8) + 56))(v6, 0, 1, v39);
  sub_100573B08();
  if (v29 == 1)
  {
    goto LABEL_27;
  }

  if (!v29)
  {
    v54 = *(&v30 + 1);
    v55 = v30;
    if (!v30)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v40 = *(&v30 + 1);
  v41 = v29;
  v42 = v30;
  [v67 addAction:v41 forControlEvents:0x2000];
  if (v30)
  {
LABEL_25:
    v43 = v30;
    v44 = v67;
    [v44 setShowsMenuAsPrimaryAction:v29 == 0];
    [v44 setMenu:v43];
    [v44 setShowsMenuFromSource:0];
  }

LABEL_26:

LABEL_27:
  v45 = v66;
  (*(v14 + 16))(v66, v16, v13);
  (*(v14 + 56))(v45, 0, 1, v13);
  v46 = v67;
  sub_100573B68();

  (*(v14 + 8))(v16, v13);
  v25 = v65;
  if (!v65)
  {
LABEL_29:
    sub_10043F754();
    goto LABEL_30;
  }

LABEL_28:
  v47 = *(v2 + 2);
  sub_1000D3B98(0, &qword_1006F4A40);
  v48 = v47;
  v49 = v25;
  v50 = sub_100573A58();

  if ((v50 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  v51 = *(v2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v52 = BYTE8(v70);
  [v51 setContentGap:*&v71];
  [v51 setMarqueeEnabled:v52 & 1];
  [v51 effectiveUserInterfaceLayoutDirection];
  sub_1005733A8();
  [v51 setFadeEdgeInsets:?];
  [v51 setHidden:v70];
  [v51 invalidateIntrinsicContentSize];
  return sub_100361ECC(&v69);
}

uint64_t sub_10043E894@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10056C658();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *a2;
  sub_1004427E4();
  v8 = v7;
  sub_10056C668();
  UIAccessibilityButtonShapesEnabled();
  sub_100442838();
  return sub_10056C668();
}

uint64_t sub_10043E960(uint64_t a1)
{
  v18 = a1;
  v2 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&qword_1006F4EF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_100009DCC(&qword_1006F4F08);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000CC8C(v1 + v13, v12, &qword_1006F4EF0);
  sub_10000CC8C(v18, &v12[v14], &qword_1006F4EF0);
  v15 = *(v3 + 48);
  if (v15(v12, 1, v2) == 1)
  {
    if (v15(&v12[v14], 1, v2) == 1)
    {
      return sub_10001036C(v12, &qword_1006F4EF0);
    }

    goto LABEL_6;
  }

  sub_10000CC8C(v12, v8, &qword_1006F4EF0);
  if (v15(&v12[v14], 1, v2) == 1)
  {
    sub_1002742E8(v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_6:
    sub_10001036C(v12, &qword_1006F4F08);
LABEL_7:
    sub_10043ECB4();
    return sub_10043F754();
  }

  sub_100274280(&v12[v14], v5, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v17 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v8, v5);
  sub_1002742E8(v5, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1002742E8(v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_10001036C(v12, &qword_1006F4EF0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_10043EC60(void *a1, void *a2, void *a3)
{
  if (a1 != 1)
  {
  }
}

id sub_10043ECB4()
{
  v1 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v79 = *(v1 - 8);
  __chkstk_darwin(v1);
  v76 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100009DCC(&qword_1006EF980);
  __chkstk_darwin(v3 - 8);
  v72 = &v68 - v4;
  v5 = sub_10056C628();
  v77 = *(v5 - 8);
  v78 = v5;
  __chkstk_darwin(v5);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v71 = &v68 - v8;
  v9 = sub_100009DCC(&qword_1006EFAF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = &v68 - v13;
  __chkstk_darwin(v14);
  v70 = &v68 - v15;
  v16 = sub_100573B38();
  v74 = *(v16 - 8);
  v75 = v16;
  __chkstk_darwin(v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v68 = &v68 - v20;
  v21 = sub_100009DCC(&qword_1006F51D0);
  __chkstk_darwin(v21 - 8);
  v23 = (&v68 - v22);
  v24 = sub_100009DCC(&qword_1006F4EF0);
  __chkstk_darwin(v24 - 8);
  v81 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  v29 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  v80 = v29;
  sub_10000CC8C(v0 + v29, v28, &qword_1006F4EF0);
  v82 = v0;
  v30 = *(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  v31 = *(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind + 8);
  v32 = v28;
  v33 = v1;
  v34 = v79;
  sub_100019B40(v32, v23, &qword_1006F4EF0);
  v35 = *(v34 + 48);
  if (v35(v23, 1, v1) == 1)
  {
    v36 = v30;
    v37 = v36;
    if (v31)
    {
      sub_100573B58();
      v39 = v74;
      v38 = v75;
      v40 = *(v74 + 48);
      if (v40(v11, 1, v75) == 1)
      {
        sub_100573B18();
        if (v40(v11, 1, v38) != 1)
        {
          sub_10001036C(v11, &qword_1006EFAF0);
        }
      }

      else
      {
        (*(v39 + 32))(v18, v11, v38);
      }

      sub_100573B28();
      (*(v77 + 56))(v72, 1, 1, v78);
      sub_100573AE8();
      v55 = v73;
      (*(v39 + 16))(v73, v18, v38);
      (*(v39 + 56))(v55, 0, 1, v38);
      sub_100573B68();

      (*(v39 + 8))(v18, v38);
    }

    else
    {
      [v36 setText:0];
      [v37 setAttributedText:0];
    }
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v77;
    v42 = v78;
    v43 = v71;
    v44 = (*(v77 + 32))(v71, v23, v78);
    if (v31)
    {
      __chkstk_darwin(v44);
      *(&v68 - 2) = v43;
      v45 = v30;
      UIButton.reconfigure(with:)(sub_100442774);

      (*(v41 + 8))(v43, v42);
    }

    else
    {
      sub_1000D3B98(0, &qword_1006F51D8);
      (*(v41 + 16))(v69, v43, v42);
      v56 = v43;
      v57 = v30;
      v58 = sub_100573668();
      [v57 setAttributedText:v58];

      (*(v41 + 8))(v56, v42);
    }
  }

  else
  {
    v79 = v1;
    v46 = *v23;
    v47 = v30;
    if (v31)
    {
      v48 = v70;
      sub_100573B58();
      v50 = v74;
      v49 = v75;
      v51 = *(v74 + 48);
      if (v51(v48, 1, v75) == 1)
      {
        v78 = v46;
        v52 = v68;
        sub_100573B18();
        v53 = v51(v48, 1, v49);
        v54 = v52;
        if (v53 != 1)
        {
          sub_10001036C(v70, &qword_1006EFAF0);
        }
      }

      else
      {
        v54 = v68;
        (*(v50 + 32))(v68, v48, v49);
      }

      sub_100573B28();
      v60 = v73;
      (*(v50 + 16))(v73, v54, v49);
      (*(v50 + 56))(v60, 0, 1, v49);
      sub_100573B68();

      (*(v50 + 8))(v54, v49);
    }

    else
    {
      v59 = sub_100572898();

      [v47 setText:v59];
    }

    v33 = v79;
  }

  v61 = v81;
  v62 = *(v82 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  sub_10000CC8C(v82 + v80, v81, &qword_1006F4EF0);
  if (v35(v61, 1, v33))
  {
    sub_10001036C(v61, &qword_1006F4EF0);
LABEL_25:
    v66 = 0;
    goto LABEL_26;
  }

  v63 = v76;
  sub_10043A144(v61, v76, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001036C(v61, &qword_1006F4EF0);
  sub_10043FE38();
  v64 = sub_100572898();

  v65 = [v64 _isNaturallyRTL];

  sub_1002742E8(v63, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if ((v65 & 1) == 0)
  {
    goto LABEL_25;
  }

  v66 = 1;
LABEL_26:
  [v62 setAnimationDirection:v66];
  return [v62 invalidateIntrinsicContentSize];
}

uint64_t sub_10043F654(uint64_t a1, uint64_t a2)
{
  v3 = sub_100009DCC(&qword_1006EF980);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_10056C628();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_100573AE8();
}

uint64_t sub_10043F754()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006F4EF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = left;
  v19 = UIEdgeInsetsZero.top;
  v16 = right;
  v17 = bottom;
  v13 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_10000CC8C(v1 + v13, v4, &qword_1006F4EF0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_10001036C(v4, &qword_1006F4EF0);
  }

  else
  {
    sub_100274280(v4, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    if (sub_10043F9BC())
    {
      CTFontGetLanguageAwareOutsets();
      result = sub_1002742E8(v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      left = v18;
      top = v19;
      right = v16;
      bottom = v17;
    }

    else
    {
      result = sub_1002742E8(v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    }
  }

  v15 = (v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets);
  *v15 = top;
  v15[1] = left;
  v15[2] = bottom;
  v15[3] = right;
  return result;
}

uint64_t sub_10043F9BC()
{
  v1 = sub_100009DCC(&qword_1006F51A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_10056C598();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10056C628();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin(v12);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10043A144(v0, v14, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_10056C588();
    sub_1004400D8(v3);
    (*(v5 + 8))(v7, v4);
    v15 = sub_100572968();
    v17 = v16;
    (*(v9 + 8))(v11, v8);
    v18 = v15;
  }

  else
  {
    v18 = *v14;
    v17 = v14[1];
  }

  v19 = String.containsExcessiveHeightCharacters.getter(v18, v17);

  return v19 & 1;
}

uint64_t NowPlaying.TrackTitleStackView.Label.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  sub_10043EC60(v2, v3, v4);
  sub_10001036C(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text, &qword_1006F4EF0);

  return v0;
}

uint64_t NowPlaying.TrackTitleStackView.Label.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  sub_10043EC60(v2, v3, v4);
  sub_10001036C(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text, &qword_1006F4EF0);

  return swift_deallocClassInstance();
}

__n128 Gliss.Transition<>.Output.transform3D.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v2;
  v3 = *(v1 + 136);
  *(a1 + 96) = *(v1 + 120);
  *(a1 + 112) = v3;
  v4 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v4;
  result = *(v1 + 56);
  v6 = *(v1 + 72);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 Gliss.Transition<>.Output.transform3D.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = v2;
  v3 = *(a1 + 112);
  *(v1 + 120) = *(a1 + 96);
  *(v1 + 136) = v3;
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 56) = result;
  *(v1 + 72) = v6;
  return result;
}

uint64_t sub_10043FE38()
{
  v1 = sub_100009DCC(&qword_1006F51A8);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_10056C598();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10056C628();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin(v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10043A144(v0, v14, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v14;
  }

  (*(v9 + 32))(v11, v14, v8);
  sub_10056C588();
  sub_1004400D8(v3);
  (*(v5 + 8))(v7, v4);
  v15 = sub_100572968();
  (*(v9 + 8))(v11, v8);
  return v15;
}

uint64_t sub_1004400D8@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v2 = sub_100009DCC(&qword_1006F51B0);
  __chkstk_darwin(v2);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = sub_10056C5E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100009DCC(&qword_1006F51B8);
  __chkstk_darwin(v25);
  v26 = v24 - v12;
  v13 = sub_100009DCC(&qword_1006F51C0);
  __chkstk_darwin(v13 - 8);
  v15 = v24 - v14;
  v16 = sub_10056C598();
  v17 = sub_100442120(&qword_1006EF970, &type metadata accessor for AttributedString.CharacterView);
  v27 = v16;
  v18 = v17;
  sub_1005731B8();
  sub_100442120(&qword_1006EF978, &type metadata accessor for AttributedString.Index);
  result = sub_1005727E8();
  if (result)
  {
    sub_100573208();
    sub_100442120(&qword_1006F51C8, &type metadata accessor for AttributedString.Index);
    result = sub_1005727C8();
    if (result)
    {
      v24[0] = v1;
      v24[1] = v18;
      v20 = *(v9 + 32);
      v20(v7, v15, v8);
      v20(&v7[*(v2 + 48)], v11, v8);
      sub_10000CC8C(v7, v4, &qword_1006F51B0);
      v21 = *(v2 + 48);
      v22 = v26;
      v20(v26, v4, v8);
      v23 = *(v9 + 8);
      v23(&v4[v21], v8);
      sub_100019B40(v7, v4, &qword_1006F51B0);
      v20((v22 + *(v25 + 36)), &v4[*(v2 + 48)], v8);
      v23(v4, v8);
      sub_1005732D8();
      return sub_10001036C(v22, &qword_1006F51B8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004404E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100440528(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v11 = a1;
    sub_1000D3B98(0, &qword_1006EFB60);
    v12 = a4;
    v13 = v11;
    LOBYTE(v11) = sub_100573A58();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    sub_1000D3B98(0, &qword_1006EFAC8);
    v14 = a5;
    v15 = a2;
    v16 = sub_100573A58();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3)
  {
    if (a6)
    {
      sub_1000D3B98(0, &qword_1006F2E60);
      v17 = a6;
      v18 = a3;
      v19 = sub_100573A58();

      if (v19)
      {
        return 1;
      }
    }
  }

  else if (!a6)
  {
    return 1;
  }

  return 0;
}

uint64_t _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV23__derived_struct_equalsySbAJ_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1000D3B98(0, &unk_1006F6120);
  if (sub_100573A58() & 1) == 0 || (sub_100573A58() & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)))
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))))) & 1) != 0 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && *(a1 + 64) == *(a2 + 64))
  {
    v5 = *(a1 + 72);
    v6 = *(a2 + 72);
    if (v5 == 1)
    {
      if (v6 == 1)
      {
        return 1;
      }
    }

    else if (v6 != 1)
    {
      v8 = *(a1 + 80);
      v7 = *(a1 + 88);
      v10 = *(a2 + 80);
      v9 = *(a2 + 88);
      v11 = v9;
      v12 = v6;
      v13 = v10;
      LOBYTE(v9) = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(v5, v8, v7, v6, v10, v9);

      if (v9)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

id sub_100440814(uint64_t a1)
{
  v2 = sub_10056E228();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100573AC8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100573B38();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v24 = *(a1 + 72);
  if (v24 == 1)
  {
    v19 = [objc_allocWithZone(UILabel) init];
    v20 = objc_opt_self();
    v16 = v19;
    v21 = [v20 clearColor];
    [v16 setBackgroundColor:v21];

    [v16 setNumberOfLines:1];
    [v16 setAdjustsFontForContentSizeCategory:1];
    [v16 _setWantsContentAwareTypesettingLanguage:1];
    sub_100361ECC(a1);
  }

  else
  {
    sub_100573B18();
    sub_100573AB8();
    (*(v4 + 104))(v6, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v3);
    sub_100573AD8();
    sub_10056E218();
    sub_100573AA8();
    v14 = [objc_opt_self() clearColor];
    v15 = sub_100573A98();
    sub_10056E208();
    v15(v25, 0);
    sub_1000D3B98(0, &qword_1006F5210);
    (*(v8 + 16))(v10, v13, v7);
    v16 = sub_100573B48();
    [v16 setContentHorizontalAlignment:4];
    v17 = [v16 titleLabel];
    if (v17)
    {
      v18 = v17;
      [v17 _setWantsContentAwareTypesettingLanguage:1];
    }

    sub_100361ECC(a1);
    (*(v8 + 8))(v13, v7);
  }

  return v16;
}

char *sub_100440BE4(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  v9 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  v10 = &v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = a2[1];
  *(v4 + 1) = *a2;
  *(v4 + 2) = v12;
  v13 = a2[5];
  *(v4 + 5) = a2[4];
  *(v4 + 6) = v13;
  v14 = a2[3];
  *(v4 + 3) = a2[2];
  *(v4 + 4) = v14;
  v15 = objc_allocWithZone(MarqueeView);
  sub_100361E70(a2, v39);
  v16 = [v15 init];
  *&v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] = v16;
  sub_100361E70(a2, v39);
  v17 = sub_100440814(a2);
  v18 = &v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind];
  *v18 = v17;
  v18[8] = v19 & 1;
  v20 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_10043A1AC(a1, &v4[v20]);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
  [*&v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] setAnimationReferenceView:a3];
  memset(v39, 0, sizeof(v39));
  sub_10043E0F8(v39);
  sub_10043ECB4();
  v22 = *v18;
  v23 = [v22 superview];
  v24 = *&v4[v21];
  v25 = [v24 contentView];
  v26 = v25;
  if (!v23)
  {
    if (!v25)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!v25)
  {
    v26 = v23;
LABEL_8:

    goto LABEL_9;
  }

  sub_1000D3B98(0, &qword_1006F6130);
  v27 = sub_100573A58();

  if (v27)
  {
    goto LABEL_12;
  }

LABEL_9:
  result = [v24 contentView];
  if (result)
  {
    v29 = result;
    [result addSubview:v22];

    result = [v24 contentView];
    if (result)
    {
      v30 = result;
      [result bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      [v22 setFrame:{v32, v34, v36, v38}];
      [v22 setAutoresizingMask:18];
      [v24 setViewForContentSize:v22];
LABEL_12:

      sub_10001036C(a1, &qword_1006F4EF0);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100440EF8()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_10043A144(v2, v0 + v1, type metadata accessor for NowPlaying.TrackMetadata);
  v3 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v22 = v6;
  *(&v22 + 1) = v8;
  LOBYTE(v23) = 0;
  BYTE8(v23) = 0;
  *&v24 = 0x4040000000000000;
  *(&v24 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v25 = leading;
  *(&v25 + 1) = bottom;
  *&v26 = trailing;
  v27 = 0uLL;
  *(&v26 + 1) = 1;
  v28[0] = v6;
  v28[1] = v8;
  v29 = 0;
  v30 = 0;
  v31 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v33 = leading;
  v34 = bottom;
  v35 = trailing;
  v37 = 0;
  v38 = 0;
  v36 = 1;
  sub_100361E70(&v22, v45);
  sub_100361ECC(v28);
  v12 = v25;
  v4[2] = v24;
  v4[3] = v12;
  v13 = v27;
  v4[4] = v26;
  v4[5] = v13;
  v14 = v23;
  *v4 = v22;
  v4[1] = v14;
  v15 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  v16 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v17 = [v7 secondaryLabelColor];
  *&v39 = v16;
  *(&v39 + 1) = v17;
  LOBYTE(v40) = 0;
  BYTE8(v40) = 0;
  *&v41 = 0x4040000000000000;
  *(&v41 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v42 = leading;
  *(&v42 + 1) = bottom;
  *&v43 = trailing;
  v44 = 0uLL;
  *(&v43 + 1) = 1;
  v45[0] = v16;
  v45[1] = v17;
  v46 = 0;
  v47 = 0;
  v48 = 0x4040000000000000;
  v49 = NSDirectionalEdgeInsetsZero.top;
  v50 = leading;
  v51 = bottom;
  v52 = trailing;
  v54 = 0;
  v55 = 0;
  v53 = 1;
  sub_100361E70(&v39, v21);
  sub_100361ECC(v45);
  v18 = v42;
  v15[2] = v41;
  v15[3] = v18;
  v19 = v44;
  v15[4] = v43;
  v15[5] = v19;
  v20 = v40;
  *v15 = v39;
  v15[1] = v20;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition) = 0;
  sub_1005740F8();
  __break(1u);
}

void *sub_1004411AC(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  if (a2)
  {
  }

  v6[5] = a2;

  for (i = 0; i != 2; ++i)
  {
    if (v6[i + 4])
    {

      sub_100572CE8();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100572D68();
      }

      sub_100572DB8();
    }
  }

  sub_100009DCC(&qword_1006F5220);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

void *sub_1004412B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  if (a2)
  {
  }

  else
  {
    a3 = 0;
  }

  v7[5] = a3;

  for (i = 0; i != 2; ++i)
  {
    if (v7[i + 4])
    {

      sub_100572CE8();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100572D68();
      }

      sub_100572DB8();
    }
  }

  sub_100009DCC(&qword_1006F5220);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

char *_s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC17transitionContext2to9directionAF010TransitionK0VSgAC0F8MetadataV_AA5GlissO9DirectionOSgtF_0(void *a1)
{
  v2 = v1;
  v110 = a1;
  v109 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v106 = *(v109 - 8);
  __chkstk_darwin(v109);
  v97 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100009DCC(&qword_1006F4F08);
  __chkstk_darwin(v107);
  v102 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v99 = &v93 - v6;
  __chkstk_darwin(v7);
  v94 = &v93 - v8;
  v9 = sub_100009DCC(&qword_1006F4EF0);
  __chkstk_darwin(v9 - 8);
  v96 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = &v93 - v12;
  __chkstk_darwin(v13);
  v93 = &v93 - v14;
  __chkstk_darwin(v15);
  v17 = &v93 - v16;
  v18 = sub_100009DCC(&qword_1006F4F00);
  __chkstk_darwin(v18 - 8);
  v20 = &v93 - v19;
  v21 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v103 = (&v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v24);
  v27 = (&v93 - v26);
  v28 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v29 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  v111 = (&v93 - v26);
  if (v29)
  {
    v30 = *(*v29 + 208);

    v30(v31);
    v27 = v111;

    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      sub_100274280(v20, v27, type metadata accessor for NowPlaying.TrackMetadata);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v22 + 56))(v20, 1, 1, v21, v25);
  }

  v32 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_10043A144(&v2[v32], v27, type metadata accessor for NowPlaying.TrackMetadata);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    sub_10001036C(v20, &qword_1006F4F00);
  }

LABEL_7:
  v33 = *&v2[v28];
  v34 = v110;
  v108 = v21;
  if (!v33 || (v35 = *(*v33 + 424), v36 = type metadata accessor for NowPlaying.TrackTitleStackView(0), v37 = sub_100442120(&qword_1006F4EF8, type metadata accessor for NowPlaying.TrackTitleStackView), , v35(&v114, v2, v36, v37), v27 = v111, , !v114))
  {
    v38 = 0;
    v39 = 0;
    goto LABEL_13;
  }

  v39 = *(&v115 + 1);
  v38 = v115;
  sub_1004404E4(v115);

  sub_100440528(v38);
  if (!v38)
  {
LABEL_13:
    v41 = v38;
    v38 = sub_100439BC0();
    goto LABEL_14;
  }

  v40 = static NowPlaying.TrackMetadata.== infix(_:_:)(v34, v27);

  if (v40)
  {

    goto LABEL_13;
  }

  v41 = v38;
LABEL_14:
  sub_10043A144(v34 + *(v108 + 24), v17, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  (*(v106 + 7))(v17, 0, 1, v109);
  v42 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 3);
  v116 = *(v42 + 2);
  v117 = v43;
  v44 = *(v42 + 5);
  v118 = *(v42 + 4);
  v119 = v44;
  v45 = *(v42 + 1);
  v114 = *v42;
  v115 = v45;
  type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
  swift_allocObject();
  v46 = v2;
  sub_100361E70(&v114, v113);
  v100 = sub_100440BE4(v17, &v114, v46);

  sub_100361ECC(&v114);
  v104 = v41;
  v105 = v39;
  v98 = v17;
  v101 = v38;
  if (!v41)
  {
    goto LABEL_28;
  }

  if (static NowPlaying.TrackMetadata.== infix(_:_:)(v34, v27))
  {

    goto LABEL_28;
  }

  v47 = *(v108 + 28);
  v48 = *(v107 + 48);
  v49 = v94;
  sub_10000CC8C(v34 + v47, v94, &qword_1006F4EF0);
  sub_10000CC8C(v27 + v47, v49 + v48, &qword_1006F4EF0);
  v50 = *(v106 + 6);
  v51 = v109;
  if (v50(v49, 1, v109) != 1)
  {
    v54 = v93;
    sub_10000CC8C(v49, v93, &qword_1006F4EF0);
    if (v50(v49 + v48, 1, v51) != 1)
    {
      v56 = v97;
      sub_100274280(v49 + v48, v97, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v57 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v54, v56);
      sub_1002742E8(v56, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      sub_1002742E8(v54, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      sub_10001036C(v49, &qword_1006F4EF0);
      v53 = v105;
      if (v57)
      {

        goto LABEL_27;
      }

LABEL_23:

      v106 = v53;
      v55 = v108;
      goto LABEL_37;
    }

    sub_1002742E8(v54, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v53 = v105;
LABEL_22:
    sub_10001036C(v49, &qword_1006F4F08);
    goto LABEL_23;
  }

  v52 = v50(v49 + v48, 1, v51);
  v53 = v105;
  if (v52 != 1)
  {
    goto LABEL_22;
  }

  sub_10001036C(v49, &qword_1006F4EF0);
LABEL_27:
  v34 = v110;
  v27 = v111;
LABEL_28:
  v55 = v108;
  v58 = *(v108 + 28);
  v59 = v27;
  v60 = *(v107 + 48);
  v61 = v34 + v58;
  v62 = v99;
  sub_10000CC8C(v61, v99, &qword_1006F4EF0);
  v63 = v59 + v58;
  v64 = v62;
  sub_10000CC8C(v63, v62 + v60, &qword_1006F4EF0);
  v50 = *(v106 + 6);
  v65 = v109;
  if (v50(v64, 1, v109) == 1)
  {
    if (v50(v64 + v60, 1, v65) == 1)
    {
      sub_10001036C(v64, &qword_1006F4EF0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v66 = v95;
  sub_10000CC8C(v64, v95, &qword_1006F4EF0);
  if (v50(v64 + v60, 1, v65) == 1)
  {
    sub_1002742E8(v66, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v55 = v108;
LABEL_33:
    sub_10001036C(v64, &qword_1006F4F08);
LABEL_36:
    v106 = sub_100439F48();
    goto LABEL_37;
  }

  v67 = v64 + v60;
  v68 = v97;
  sub_100274280(v67, v97, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v69 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v66, v68);
  sub_1002742E8(v68, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1002742E8(v66, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001036C(v64, &qword_1006F4EF0);
  v55 = v108;
  if ((v69 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_35:
  if (static NowPlaying.TrackMetadata.== infix(_:_:)(v110, v111))
  {
    goto LABEL_36;
  }

  v106 = 0;
LABEL_37:
  v70 = *(v55 + 28);
  v71 = *(v107 + 48);
  v72 = v102;
  sub_10000CC8C(v110 + v70, v102, &qword_1006F4EF0);
  sub_10000CC8C(v111 + v70, v72 + v71, &qword_1006F4EF0);
  v73 = v109;
  if (v50(v72, 1, v109) == 1)
  {
    v74 = v50(v72 + v71, 1, v73);
    v75 = v110;
    if (v74 == 1)
    {
      sub_10001036C(v72, &qword_1006F4EF0);
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v76 = v96;
  sub_10000CC8C(v72, v96, &qword_1006F4EF0);
  if (v50(v72 + v71, 1, v73) == 1)
  {
    sub_1002742E8(v76, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v75 = v110;
LABEL_42:
    sub_10001036C(v72, &qword_1006F4F08);
LABEL_43:
    v77 = v98;
    sub_10000CC8C(v75 + v70, v98, &qword_1006F4EF0);
    v78 = &v46[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v79 = *(v78 + 2);
    v80 = *(v78 + 3);
    v81 = *(v78 + 5);
    v113[4] = *(v78 + 4);
    v113[5] = v81;
    v113[3] = v80;
    v82 = *(v78 + 1);
    v113[0] = *v78;
    v113[1] = v82;
    v113[2] = v79;
    swift_allocObject();
    v83 = v46;
    sub_100361E70(v113, &v112);
    sub_100440BE4(v77, v113, v83);

    sub_100361ECC(v113);
    goto LABEL_45;
  }

  v84 = v72 + v71;
  v85 = v97;
  sub_100274280(v84, v97, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v86 = v72;
  v87 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v76, v85);
  sub_1002742E8(v85, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1002742E8(v76, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001036C(v86, &qword_1006F4EF0);
  v75 = v110;
  if ((v87 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_45:
  v88 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  v89 = &v46[v88];
  v90 = v103;
  sub_10043A144(v89, v103, type metadata accessor for NowPlaying.TrackMetadata);
  v91 = static NowPlaying.TrackMetadata.== infix(_:_:)(v75, v90);
  sub_100440528(v104);
  sub_1002742E8(v90, type metadata accessor for NowPlaying.TrackMetadata);
  sub_1002742E8(v111, type metadata accessor for NowPlaying.TrackMetadata);
  if (v91)
  {
  }

  return v101;
}

uint64_t sub_100442120(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100442168(id result, void *a2, void *a3)
{
  if (result != 1)
  {
    v4 = result;
    v5 = a3;
    v6 = v4;

    return a2;
  }

  return result;
}

uint64_t sub_100442204@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  return sub_10043A144(v3 + v4, a2, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t sub_100442280()
{
  result = type metadata accessor for NowPlaying.TrackMetadata(319);
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

uint64_t sub_100442338(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_100442388()
{
  sub_100442444();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100442444()
{
  if (!qword_1006F4FF0)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006F4FF0);
    }
  }
}

uint64_t sub_10044249C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_1004424C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1004424DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100442524(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10044258C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1004425E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100442650()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_10044268C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1004426C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004426E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 152) = v3;
  return result;
}

uint64_t sub_10044277C()
{
  v1 = *(v0 + 88);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1004427E4()
{
  result = qword_1006F51F8;
  if (!qword_1006F51F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F51F8);
  }

  return result;
}

unint64_t sub_100442838()
{
  result = qword_1006F5200;
  if (!qword_1006F5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5200);
  }

  return result;
}

uint64_t sub_10044288C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_1004404E4(a3);
  }

  return result;
}

uint64_t sub_1004428EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_100440528(a3);
  }

  return result;
}

id PassthroughView.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  if (UIViewIgnoresTouchEvents())
  {
    return 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PassthroughView();
  v7 = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    sub_100425890();
    v8 = v7;
    v9 = v3;
    v10 = sub_100573A58();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id PassthroughView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id PassthroughView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PassthroughView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id PassthroughView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *SymbolButton.__allocating_init(intent:)(int a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100442E04(a1, 2, v4);
  v5 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v6 = sub_10046FD74(v4, 0, 0);
  v7 = &v6[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v8 = *v7;
  *v7 = sub_100443100;
  v7[1] = 0;
  v9 = v6;
  sub_1000F3E14(v8);
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v10 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v10 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v11 = *v10;
  v12 = v10[1];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v11, v12);

  return v9;
}

uint64_t sub_100442E04@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v4 = sub_10056E1F8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SymbolButton.Configuration(0);
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10046FD24(v29);
  v12 = v29[5];
  *(a3 + 64) = v29[4];
  *(a3 + 80) = v12;
  *(a3 + 96) = v29[6];
  v13 = v30;
  v14 = v29[1];
  *a3 = v29[0];
  *(a3 + 16) = v14;
  v15 = v29[3];
  *(a3 + 32) = v29[2];
  *(a3 + 48) = v15;
  *(a3 + 112) = v13;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = UIFontTextStyleSubheadline;
  *(a3 + 144) = UIFontWeightSemibold;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0x3FF0000000000000;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 1;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = 1;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  v16 = v9[11];
  v17 = sub_100573998();
  (*(*(v17 - 8) + 56))(a3 + v16, 1, 1, v17);
  v18 = a3 + v9[12];
  *(v18 + 48) = 0;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *v18 = 0u;
  v19 = (a3 + v9[13]);
  *v19 = 0;
  v19[1] = 0;
  v19[2] = 1;
  *(a3 + v9[14]) = 0x4010000000000000;
  *(a3 + v9[15]) = vdupq_n_s64(0x4040000000000000uLL);
  v20 = a3 + v9[16];
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  v21 = (a3 + v9[17]);
  v22 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v21 = *&NSDirectionalEdgeInsetsZero.top;
  v21[1] = v22;
  v23 = a3 + v9[18];
  *v23 = 1;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(a3 + v9[19]) = 0x3FF0000000000000;
  *(a3 + v9[20]) = 0;
  *(a3 + v9[21]) = 2;
  v24 = UIFontTextStyleSubheadline;
  SymbolButton.Configuration.init()(v11);
  sub_100443FF4(v11, v27, v28);
  sub_100448390(a3, type metadata accessor for SymbolButton.Configuration);
  sub_10044832C(v11, a3);
  v25 = [objc_opt_self() currentTraitCollection];
  sub_10056E1D8();
  sub_100443124();
  return (*(v5 + 8))(v7, v4);
}

void sub_100443124()
{
  v1 = v0;
  v2 = sub_10056E1E8();
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 6)
  {
    if (*(v0 + 232) == 1 || (v4 = *(v0 + 256), v4 == 2))
    {
      if (sub_10056E1B8() & 1) != 0 || (sub_10056E198())
      {
        if (qword_1006EEA00 != -1)
        {
          swift_once();
        }

        v5 = static UIColor.MusicTint.pressed;
        v6 = *(v1 + 112);
        v7 = static UIColor.MusicTint.pressed;

        *(v1 + 112) = v5;
        *(v1 + 176) = v5;
      }

      else
      {

        *(v0 + 112) = 0;
        *(v0 + 176) = 0;
      }
    }

    else
    {
      v8 = objc_opt_self();
      if (v4)
      {
        v9 = v8;
        v10 = [v8 blackColor];

        *(v0 + 112) = v10;
        v11 = [v9 blackColor];

        *(v0 + 176) = v11;
        [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.05];
        UIView.Border.init(thickness:color:)();
        v13 = v12;
        v15 = v14;
        v17 = v16 & 1;

        *(v0 + 280) = v13;
        *(v0 + 288) = v17;
        *(v0 + 296) = v15;
        LOBYTE(v13) = sub_10056E1B8();
        sub_10037F988();
        v18 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(19, 19, 20, 1.0);
        if (v13)
        {
          v19 = 0x3FD5C28F5C28F5C3;
        }

        else
        {
          v19 = 0x3FD3333333333333;
        }

        sub_100374684(*(v1 + 200), *(v1 + 208));
        *(v1 + 200) = v19;
        *(v1 + 208) = v18;
      }

      else
      {
        v20 = v8;
        v21 = [v8 whiteColor];

        *(v0 + 112) = v21;
        v22 = [v20 whiteColor];

        *(v0 + 176) = v22;
        [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.05];
        UIView.Border.init(thickness:color:)();
        v24 = v23;
        v26 = v25;
        v28 = v27 & 1;

        *(v0 + 280) = v24;
        *(v0 + 288) = v28;
        *(v0 + 296) = v26;
        v29 = sub_10056E1B8();
        v30 = [v20 whiteColor];
        if (v29)
        {
          v31 = 0x3FD0A3D70A3D70A4;
        }

        else
        {
          v31 = 0x3FCC28F5C28F5C29;
        }

        sub_100374684(*(v1 + 200), *(v1 + 208));
        *(v1 + 200) = v31;
        *(v1 + 208) = v30;
      }

      *(v1 + 216) = 0;
      *(v1 + 224) = 0;
    }
  }
}

uint64_t SymbolButton.Intent.accessibilityIdentifier.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v1 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v1 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v2 = *v1;

  return v2;
}

void SymbolButton.update(to:)(int a1)
{
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100446B1C(v1 + v9, v5);
  if (*(v5 + 29) == 1)
  {
    sub_100448390(v5, type metadata accessor for SymbolButton.Configuration);
    v10 = 2;
  }

  else
  {
    v11 = v5[256];
    sub_100448390(v5, type metadata accessor for SymbolButton.Configuration);
    if (v11 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = (v11 & 1) == 0;
    }
  }

  sub_100442E04(a1, v10, v8);
  SymbolButton.setConfiguration(_:animation:updates:)(v8, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_100448390(v8, type metadata accessor for SymbolButton.Configuration);
  if (a1)
  {
    if (a1 == 1)
    {
      v12 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v12 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v12 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v13 = *v12;
  v14 = v12[1];

  type metadata accessor for SymbolButton(0);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v13, v14);
}

uint64_t SymbolButton.materialColor.getter()
{
  v1 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100446B1C(v0 + v4, v3);
  if (*(v3 + 29) == 1)
  {
    sub_100448390(v3, type metadata accessor for SymbolButton.Configuration);
    return 2;
  }

  else
  {
    v6 = v3[256];
    sub_100448390(v3, type metadata accessor for SymbolButton.Configuration);
    if (v6 == 2)
    {
      return 2;
    }

    else
    {
      return (v6 & 1) == 0;
    }
  }
}

void SymbolButton.materialColor.setter(char a1)
{
  v3 = sub_100009DCC(&qword_1006F5250);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [v1 traitCollection];
  v12 = [v11 userInterfaceIdiom];

  if (v12 != 6)
  {
    if (a1 == 2)
    {
      v20 = 0;
      v21 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 1;
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 2;
      v26 = 0;
      v27 = 0;
      sub_100443ED0(&v22, a1 & 1);
      v16 = v22;
      v20 = v24;
      v21 = v23;
      v13 = v25;
      v14 = v26;
      v15 = v27;
    }

    v17 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_100446B1C(v1 + v17, v10);
    sub_100446B80(v10[29], v10[30], v10[31]);
    v18 = v20;
    v19 = v21;
    v10[29] = v16;
    v10[30] = v19;
    v10[31] = v18;
    v10[32] = v13;
    v10[33] = v14;
    v10[34] = v15;
    SymbolButton.setConfiguration(_:animation:updates:)(v10, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    sub_100448390(v10, type metadata accessor for SymbolButton.Configuration);
    (*(v7 + 56))(v5, 1, 1, v6);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v5, 0, 0, 0, 1);
    sub_10001036C(v5, &qword_1006F5250);
  }
}

void (*SymbolButton.materialColor.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 32) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100446B1C(v1 + v8, v7);
  if (*(v7 + 232) == 1)
  {
    sub_100448390(v7, type metadata accessor for SymbolButton.Configuration);
    v9 = 2;
  }

  else
  {
    v10 = *(v7 + 256);
    sub_100448390(v7, type metadata accessor for SymbolButton.Configuration);
    if (v10 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = (v10 & 1) == 0;
    }
  }

  *(v4 + 40) = v9;
  return sub_100443B14;
}

void sub_100443B14(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  SymbolButton.materialColor.setter(*(*a1 + 40));
  free(v2);

  free(v1);
}

uint64_t SymbolButton.Intent.title.getter()
{
  v0 = sub_10056CC38();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  sub_100572818();
  (*(v2 + 16))(v5, v7, v1);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FDF00;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t SymbolButton.Intent.symbolName.getter(char a1)
{
  if (!a1)
  {
    return 0x6C69662E79616C70;
  }

  if (a1 == 1)
  {
    return 0x656C6666756873;
  }

  return 0x69732E656C707061;
}

unint64_t SymbolButton.Intent.id.getter(char a1)
{
  result = 0xD000000000000015;
  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return result;
}

uint64_t SymbolButton.Intent.actionDetailsPlayType.getter(char a1)
{
  if (a1 == 1)
  {
    return 0x41656C6666756873;
  }

  else
  {
    return 7105633;
  }
}

uint64_t SymbolButton.Intent.actionType.getter(char a1)
{
  if ((a1 & 0xFE) != 0)
  {
    return 64;
  }

  else
  {
    return 31;
  }
}

unint64_t sub_100443E9C@<X0>(unint64_t *a1@<X8>)
{
  result = SymbolButton.Intent.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100443ED0(uint64_t a1, char a2)
{
  *(a1 + 24) = (a2 & 1) == 0;
  v3 = [objc_opt_self() effectWithBlurRadius:50.0];

  *a1 = v3;
  v4 = [objc_opt_self() colorEffectSaturate:1.6];

  *(a1 + 8) = v4;
  sub_100573ED8(19);

  v6._countAndFlagsBits = sub_100572978();
  sub_100572A98(v6);

  *(a1 + 32) = 0xD000000000000011;
  *(a1 + 40) = 0x80000001005BA4D0;
  return result;
}

double sub_100443FF4(uint64_t a1, char a2, int a3)
{
  v38 = a3;
  v5 = sub_100009DCC(&qword_1006F5C30);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  sub_10046FD24(&v48);
  v56 = v48;
  v8 = v49;
  v9 = v52;
  sub_10001036C(&v56, &qword_1006F5C90);
  v10 = a2;
  v11 = *&aPlayFilshuffle[8 * a2];
  v12 = *&aAppleSil[8 * a2 + 8];
  v55 = v50;
  v13 = UIFontTextStyleSubheadline;
  sub_100448390(&v55, type metadata accessor for TextStyle);
  v14 = *(a1 + 80);
  v45[4] = *(a1 + 64);
  v45[5] = v14;
  v45[6] = *(a1 + 96);
  v46 = *(a1 + 112);
  v15 = *(a1 + 16);
  v45[0] = *a1;
  v45[1] = v15;
  v16 = *(a1 + 48);
  v45[2] = *(a1 + 32);
  v45[3] = v16;
  sub_1004483F0(v45);
  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v8;
  *(a1 + 24) = v13;
  *(a1 + 32) = v51;
  *(a1 + 48) = 6;
  *(a1 + 56) = v9;
  *(a1 + 64) = xmmword_100596F60;
  *(a1 + 80) = 1;
  *(a1 + 81) = v53;
  *(a1 + 97) = *v54;
  *(a1 + 112) = *&v54[15];
  v17 = SymbolButton.Intent.title.getter();
  v19 = v18;

  v20 = UIFontTextStyleBody;

  v21 = *(a1 + 136);
  v22 = *(a1 + 168);
  v47[2] = *(a1 + 152);
  v47[3] = v22;
  v47[4] = *(a1 + 184);
  v47[0] = *(a1 + 120);
  v47[1] = v21;
  sub_100448444(v47);
  *(a1 + 120) = v17;
  *(a1 + 128) = v19;
  *(a1 + 136) = v20;
  *(a1 + 144) = UIFontWeightSemibold;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v23 = [objc_opt_self() currentTraitCollection];
  v24 = [v23 userInterfaceIdiom];

  if (v24 != 6)
  {
    if (v38 == 2)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 1;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 2;
      v43 = 0;
      v44 = 0;
      sub_100443ED0(&v39, v38 & 1);
      v30 = v39;
      v25 = v40;
      v26 = v41;
      v27 = v42;
      v28 = v43;
      v29 = v44;
    }

    sub_100446B80(*(a1 + 232), *(a1 + 240), *(a1 + 248));
    *(a1 + 232) = v30;
    *(a1 + 240) = v25;
    *(a1 + 248) = v26;
    *(a1 + 256) = v27;
    *(a1 + 264) = v28;
    *(a1 + 272) = v29;
  }

  if (qword_1006EED20 != -1)
  {
    swift_once();
  }

  v31 = sub_100573998();
  v32 = sub_10000C49C(v31, static UIView.Corner.capsule);
  v33 = *(v31 - 8);
  (*(v33 + 16))(v7, v32, v31);
  (*(v33 + 56))(v7, 0, 1, v31);
  v34 = type metadata accessor for SymbolButton.Configuration(0);
  sub_1003745D4(v7, a1 + v34[9]);
  *(a1 + v34[12]) = qword_1005A1888[v10];
  *(a1 + v34[13]) = vdupq_n_s64(0x4048000000000000uLL);
  v35 = (a1 + v34[15]);
  result = 0.0;
  *v35 = xmmword_100596F70;
  v35[1] = xmmword_100596F70;
  return result;
}

Swift::Int static PlayIntentButtonStack.playShuffle(_:)()
{
  v0 = sub_10037D00C(&off_10069D7E0);

  return v0;
}

Swift::Int static PlayIntentButtonStack.sing(_:)()
{
  v0 = sub_10037D00C(&off_10069D808);

  return v0;
}

Swift::Int PlayIntentButtonStack.init(_:handler:)(char a1)
{
  sub_100009DCC(&qword_1006F4308);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B510;
  *(inited + 32) = a1;
  v3 = sub_10037D00C(inited);
  swift_setDeallocating();
  return v3;
}

uint64_t PlayIntentButtonStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_10056F9E8();
  v9 = sub_10056F9F8();
  sub_10056F9F8();
  if (sub_10056F9F8() != v8)
  {
    v9 = sub_10056F9F8();
  }

  *a4 = v9;
  v10 = sub_100009DCC(&qword_1006F5258);
  return sub_1004445BC(a1, a2, a3, &a4[*(v10 + 44)]);
}

uint64_t sub_1004445BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_100009DCC(&qword_1006F52F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  __chkstk_darwin(v18);
  v20 = &v25 - v19;
  sub_1004447F4(0, a1, a2, a3, &v25 - v19);
  sub_1004447F4(1, a1, a2, a3, v17);
  v21 = *(v9 + 16);
  v21(v14, v20, v8);
  v21(v11, v17, v8);
  v21(a4, v14, v8);
  v22 = sub_100009DCC(&qword_1006F52F8);
  v21(&a4[*(v22 + 48)], v11, v8);
  v23 = *(v9 + 8);
  v23(v17, v8);
  v23(v20, v8);
  v23(v11, v8);
  return (v23)(v14, v8);
}

uint64_t sub_1004447F4@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a5;
  v51 = sub_100009DCC(&qword_1006F0F00);
  __chkstk_darwin(v51);
  v50 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v48 = &v43[-v11];
  v12 = sub_10056EBD8();
  v57 = *(v12 - 8);
  __chkstk_darwin(v12);
  v56 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v55 = &v43[-v15];
  v49 = sub_100009DCC(&qword_1006F0F08);
  __chkstk_darwin(v49);
  v47 = &v43[-v16];
  v53 = sub_100009DCC(&qword_1006F5300);
  __chkstk_darwin(v53);
  v18 = &v43[-v17];
  v19 = sub_100009DCC(&qword_1006F5308);
  __chkstk_darwin(v19);
  v21 = &v43[-v20];
  v54 = v18;
  *v18 = 0x4030000000000000;
  v22 = *(a2 + 16);
  v58 = v23;
  v59 = &v43[-v20];
  if (v22)
  {
    v44 = a1;
    v45 = a3;
    v46 = a4;
    v24 = sub_100445FA8(v22, 0);
    v25 = sub_100446A20(&v60, v24 + 32, v22, a2);

    sub_10025A994();
    if (v25 != v22)
    {
      goto LABEL_8;
    }

    v19 = v58;
    v21 = v59;
    a3 = v45;
    a4 = v46;
    LOBYTE(a1) = v44;
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  v60 = v24;
  sub_10044601C(&v60);
  v26 = swift_allocObject();
  *(v26 + 16) = a1 & 1;
  *(v26 + 24) = a2;
  *(v26 + 32) = a3;
  *(v26 + 40) = a4;

  sub_100009DCC(&qword_1006F5310);
  sub_100010BC0(&qword_1006F5318, &qword_1006F5310);
  sub_100447B38();
  sub_1004480C8();
  v27 = v54;
  sub_1005708C8();
  v28 = *(a2 + 16) < 2uLL;
  sub_100019B40(v27, v21, &qword_1006F5300);
  v29 = &v21[*(v19 + 36)];
  *v29 = v28;
  v29[1] = 1;
  v30 = v57;
  v31 = *(v57 + 104);
  v32 = v55;
  v31(v55, enum case for DynamicTypeSize.xSmall(_:), v12);
  v33 = v56;
  v31(v56, enum case for DynamicTypeSize.accessibility2(_:), v12);
  sub_10044811C(&qword_1006EFB78, &type metadata accessor for DynamicTypeSize);
  if (sub_1005727C8())
  {
    v34 = *(v30 + 32);
    v35 = v48;
    v34(v48, v32, v12);
    v36 = v51;
    v34((v35 + *(v51 + 48)), v33, v12);
    v37 = v50;
    sub_10000CC8C(v35, v50, &qword_1006F0F00);
    v38 = *(v36 + 48);
    v39 = v47;
    v34(v47, v37, v12);
    v40 = *(v30 + 8);
    v40(&v37[v38], v12);
    sub_100019B40(v35, v37, &qword_1006F0F00);
    v34((v39 + *(v49 + 36)), &v37[*(v36 + 48)], v12);
    v40(v37, v12);
    sub_100448164();
    sub_100010BC0(&qword_1006F1028, &qword_1006F0F08);
    v41 = v59;
    sub_1005700D8();
    sub_10001036C(v39, &qword_1006F0F08);
    return sub_10001036C(v41, &qword_1006F5308);
  }

  __break(1u);
LABEL_8:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t PlayIntentButtonWrapper.init(intent:iconOnly:handler:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = result;
  *(a5 + 32) = 0;
  return result;
}

uint64_t sub_100444EDC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, double *a6, double a7)
{
  v42 = a6;
  v41 = a4;
  v40 = a3;
  v39 = a2;
  v38[1] = a1;
  v9 = sub_10056E988();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10056EA58();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100009DCC(&qword_1006F52D0);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = v38 - v20;
  v22 = *(v14 + 16);
  v43 = a5;
  v22(v16, a5, v13, v19);
  sub_10044811C(&qword_1006F52E0, &type metadata accessor for LayoutSubviews);
  sub_100572B98();
  v23 = *(v18 + 44);
  sub_10044811C(&qword_1006F52D8, &type metadata accessor for LayoutSubviews);
  sub_100573208();
  v24 = 0.0;
  v25 = 0.0;
  if (*&v21[v23] != v45[0])
  {
    v26 = (v10 + 16);
    v27 = (v10 + 8);
    do
    {
      v28 = sub_1005732E8();
      (*v26)(v12);
      v28(v45, 0);
      sub_100573218();
      sub_10056ED88();
      LOBYTE(v45[0]) = v29 & 1;
      v44 = v30 & 1;
      sub_10056E968();
      v32 = v31;
      v34 = v33;
      (*v27)(v12, v9);
      if (v25 <= v32)
      {
        v25 = v32;
      }

      if (v24 <= v34)
      {
        v24 = v34;
      }

      sub_100573208();
    }

    while (*&v21[v23] != v45[0]);
  }

  sub_10001036C(v21, &qword_1006F52D0);
  sub_1005731B8();
  sub_100573208();
  v35 = sub_1005731F8();
  sub_1005731B8();
  sub_100573208();
  result = sub_1005731F8();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v37 = v42;
    *v42 = v25;
    v37[1] = v25 * v35 + (result - 1) * a7;
  }

  return result;
}

void (*sub_10044540C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_10056E528();
  return sub_1003674BC;
}

uint64_t sub_100445494@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = sub_10056F9E8();
  v7 = sub_10056F9F8();
  sub_10056F9F8();
  if (sub_10056F9F8() != v6)
  {
    v7 = sub_10056F9F8();
  }

  *a1 = v7;
  v8 = sub_100009DCC(&qword_1006F5258);
  return sub_1004445BC(v3, v4, v5, &a1[*(v8 + 44)]);
}

uint64_t EnvironmentValues.playIntentButtonMaterial.getter()
{
  sub_100446C78();
  sub_10056F1A8();
  return v1;
}

uint64_t sub_100445578@<X0>(_BYTE *a1@<X8>)
{
  sub_100446C78();
  result = sub_10056F1A8();
  *a1 = v3;
  return result;
}

char *PlayIntentButtonWrapper.makeUIView(context:)()
{
  type metadata accessor for SymbolButton(0);
  v1 = SymbolButton.__allocating_init(intent:)(*v0);
  PlayIntentButtonWrapper.updateUIView(_:context:)(v1);
  return v1;
}

uint64_t PlayIntentButtonWrapper.updateUIView(_:context:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10056F198();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SymbolButton.update(to:)(*v2);
  v23 = v2[32];
  v11 = *(v2 + 3);
  v22 = v11;
  if (v23 != 1)
  {

    sub_100573438();
    v12 = sub_10056F9D8();
    sub_10056DE58();

    sub_10056F188();
    swift_getAtKeyPath();
    sub_10001036C(&v22, &qword_1006F5268);
    (*(v8 + 8))(v10, v7);
    LOBYTE(v11) = v21[40];
  }

  SymbolButton.materialColor.setter(v11);
  v13 = v2[1];
  v14 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100446B1C(a1 + v14, v6);
  v6[184] = v13;
  SymbolButton.setConfiguration(_:animation:updates:)(v6, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_100448390(v6, type metadata accessor for SymbolButton.Configuration);
  sub_100446B1C(a1 + v14, v6);
  *(v6 + 24) = 1;
  SymbolButton.setConfiguration(_:animation:updates:)(v6, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_100448390(v6, type metadata accessor for SymbolButton.Configuration);
  v15 = *(v2 + 1);
  v16 = swift_allocObject();
  v17 = *(v2 + 1);
  *(v16 + 16) = *v2;
  *(v16 + 32) = v17;
  *(v16 + 48) = v2[32];
  v18 = (a1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler);
  swift_beginAccess();
  v19 = *v18;
  *v18 = sub_100446D18;
  v18[1] = v16;
  sub_10000CC8C(&v22, v21, &qword_1006F5268);
  sub_1000E672C(v15);
  return sub_1000F3E14(v19);
}

double PlayIntentButtonWrapper.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, int a3, int a4, id a5)
{
  [a5 intrinsicContentSize];
  if ((a2 & 1) == 0)
  {
    if (result > *&a1)
    {
      v8 = result;
    }

    else
    {
      v8 = *&a1;
    }

    if (*&a1 != INFINITY)
    {
      return v8;
    }
  }

  return result;
}

char *sub_100445A40()
{
  v3 = *v0;
  type metadata accessor for SymbolButton(0);
  v1 = SymbolButton.__allocating_init(intent:)(v3);
  PlayIntentButtonWrapper.updateUIView(_:context:)(v1);
  return v1;
}

uint64_t sub_100445A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100447FC4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100445B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100447FC4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100445B64()
{
  sub_100447FC4();
  sub_10056F4D8();
  __break(1u);
}

uint64_t View.playIntentButtonMaterial(_:)()
{
  swift_getKeyPath();
  sub_100570028();
}

uint64_t sub_100445C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100447F40();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.playIntentButtonMaterial.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_100446C78();
  sub_10056F1A8();
  return sub_100445CC4;
}

uint64_t static PlayIntentLayoutHelper.Configuration.with(_:)(void (*a1)(unsigned __int16 *))
{
  v2 = 513;
  v3 = 0x4030000000000000;
  a1(&v2);
  return v2;
}

uint64_t PlayIntentLayoutHelper.configuration.setter(uint64_t result, double a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

char *PlayIntentLayoutHelper.init()()
{
  type metadata accessor for SymbolButton(0);
  v0 = SymbolButton.__allocating_init(intent:)(0);
  SymbolButton.__allocating_init(intent:)(1);
  return v0;
}

uint64_t PlayIntentLayoutHelper.layout(in:rect:)(void *a1, double *a2, void *a3, void *a4, int a5, double a6)
{
  sub_100009DCC(&qword_1006F3B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100582500;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  v13 = a3;
  v14 = a4;
  _s11MusicCoreUI22PlayIntentLayoutHelperV6layout_2in4rect13configurationySayAA12SymbolButtonCG_So6UIViewCSo6CGRectVSgAC13ConfigurationVtFZ_0(inited, a1, a2, a5, a6);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t PlaybackIntentDescriptor.configure(for:)(unsigned __int8 a1)
{
  v2 = a1;
  v3 = PlaybackIntentDescriptor.intent.getter();
  [v3 setShuffleMode:v2 == 1];
  [v3 setRepeatMode:0];

  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 36)) = v2 == 2;
  return result;
}

id MPCPlaybackIntent.configure(for:)(char a1)
{
  [v1 setShuffleMode:a1 == 1];

  return [v1 setRepeatMode:0];
}

void *sub_100445FA8(uint64_t a1, uint64_t a2)
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

  sub_100009DCC(&qword_1006F4308);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

Swift::Int sub_10044601C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1004234E0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_100574388(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_100572D98();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100446154(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100446154(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_100446908(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_100446690((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10044691C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_10044691C((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_100446690((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100446908(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_10044687C(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_100446690(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_10044687C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100446908(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_10044691C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100009DCC(&qword_1006F5358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100446A20(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_100446B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100446B80(void *result, void *a2, void *a3)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100446BDC@<X0>(_BYTE *a1@<X8>)
{
  sub_100446C78();
  result = sub_10056F1A8();
  *a1 = v3;
  return result;
}

unint64_t sub_100446C78()
{
  result = qword_1006F5260;
  if (!qword_1006F5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5260);
  }

  return result;
}

uint64_t sub_100446CCC()
{
  if (*(v0 + 24))
  {
  }

  sub_100053068(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_100446D18()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1(*(v0 + 16));
  }

  return result;
}

uint64_t sub_100446D50(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v40 = sub_10056EB58();
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10056E988();
  v36 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10056EA58();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100009DCC(&qword_1006F52D0);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v36 - v24;
  v44.origin.x = a3;
  v44.origin.y = a4;
  v44.size.width = a5;
  v44.size.height = a6;
  CGRectGetWidth(v44);
  v41 = a2;
  sub_10044811C(&qword_1006F52D8, &type metadata accessor for LayoutSubviews);
  sub_1005731B8();
  sub_100573208();
  v38 = sub_1005731F8();
  (*(v19 + 16))(v21, a1, v18);
  sub_10044811C(&qword_1006F52E0, &type metadata accessor for LayoutSubviews);
  sub_100572B98();
  v26 = *(v23 + 44);
  sub_100573208();
  if (*&v25[v26] != v42[0])
  {
    ++v37;
    v38 = (v36 + 2);
    ++v36;
    v27 = a3;
    do
    {
      v28 = sub_1005732E8();
      (*v38)(v17);
      v28(v42, 0);
      sub_100573218();
      v45.origin.x = a3;
      v45.origin.y = a4;
      v45.size.width = a5;
      v45.size.height = a6;
      CGRectGetHeight(v45);
      sub_100570AF8();
      LOBYTE(v42[0]) = 0;
      v43 = 0;
      sub_10056E978();
      LOBYTE(v42[0]) = 0;
      v43 = 0;
      v29 = v18;
      v30 = v15;
      v31 = v39;
      sub_10056E958();
      sub_10056EB48();
      v33 = v32;
      v34 = v31;
      v15 = v30;
      v18 = v29;
      (*v37)(v34, v40);
      (*v36)(v17, v15);
      v27 = v27 + v33 + a7;
      sub_100573208();
    }

    while (*&v25[v26] != v42[0]);
  }

  return sub_10001036C(v25, &qword_1006F52D0);
}

char *_s11MusicCoreUI22PlayIntentLayoutHelperV6layout_2in4rect13configurationySayAA12SymbolButtonCG_So6UIViewCSo6CGRectVSgAC13ConfigurationVtFZ_0(unint64_t a1, void *a2, double *a3, int a4, double a5)
{
  v77 = a5;
  LODWORD(v75) = a4;
  v5 = a3;
  v82 = a2;
  v8 = *a3;
  v7 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  v11 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100574178())
  {
    v15 = 0;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v80 = *&v5;
    v81 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = sub_100573F58();
      }

      else
      {
        if (v15 >= *(v16 + 16))
        {
          goto LABEL_15;
        }

        v17 = *(a1 + 8 * v15 + 32);
      }

      v18 = v17;
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ([v17 isHidden])
      {
      }

      else
      {
        sub_100573FC8();
        sub_100574008();
        sub_100574018();
        sub_100573FD8();
        v16 = v81;
      }

      ++v15;
      if (v5 == i)
      {
        v19 = v83;
        *&v5 = v80;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_18:
  v20 = v82;
  [v82 bounds];
  v80 = v22;
  v81 = v21;
  v78 = v24;
  v79 = v23;
  v25 = [v20 traitCollection];
  [v25 displayScale];

  v76 = [v20 effectiveUserInterfaceLayoutDirection];
  result = [v20 layoutMargins];
  v28 = v27;
  Width = v29;
  v32 = v31;
  LODWORD(v33) = v19 < 0 || (v19 & 0x4000000000000000) != 0;
  if (v33 == 1)
  {
    goto LABEL_90;
  }

  v34 = *(v19 + 16);
  v35 = v34 - 1;
  if (!__OFSUB__(v34, 1))
  {
    while (1)
    {
      v73 = v35;
      if (*(v5 + 32))
      {
        v8 = sub_1002DCE0C(*&v81, v80, v79, v78, v28, Width);
        v7 = v36;
        v10 = v37;
        v9 = v38;
      }

      if (v33)
      {
        *&v5 = COERCE_DOUBLE(sub_100574178());
      }

      else
      {
        v5 = *(v19 + 16);
      }

      v74 = v34;
      if (*&v5 == 0.0)
      {
        break;
      }

      v39 = 0;
      Width = 0.0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v40 = sub_100573F58();
        }

        else
        {
          if (v39 >= *(v19 + 16))
          {
            goto LABEL_85;
          }

          v40 = *(v19 + 8 * v39 + 32);
        }

        v33 = v40;
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v42 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
        swift_beginAccess();
        sub_100446B1C(v33 + v42, v13);
        v13[184] = 0;
        SymbolButton.setConfiguration(_:animation:updates:)(v13, 0, 0, 0, 1, _swiftEmptyArrayStorage);
        sub_100448390(v13, type metadata accessor for SymbolButton.Configuration);
        [v33 intrinsicContentSize];
        v28 = v43;
        sub_10056CF78();
        Width = Width + v44;
        sub_10056CF78();
        v46 = v45;

        ++v39;
        if (v41 == v5)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v74 = v32;
      result = sub_100574178();
      v32 = v74;
      v34 = result;
      v35 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_92;
      }
    }

    Width = 0.0;
    v46 = 0.0;
LABEL_38:
    v47 = LOBYTE(v75);
    v48 = BYTE1(v75);
    v49 = (v73 & ~(v73 >> 63)) * v77;
    if (BYTE1(v75))
    {
      v50 = v74;
      if (BYTE1(v75) == 1)
      {
        v51 = 0;
        Width = v49 + v46 * v74;
      }

      else
      {
        v84.origin.x = v8;
        v84.origin.y = v7;
        v84.size.width = v10;
        v84.size.height = v9;
        CGRectGetWidth(v84);
        sub_10056CF78();
        v46 = v52;
        v85.origin.x = v8;
        v85.origin.y = v7;
        v85.size.width = v10;
        v85.size.height = v9;
        Width = CGRectGetWidth(v85);
        v51 = 0;
      }
    }

    else
    {
      Width = v49 + Width;
      v51 = 1;
      v46 = 0.0;
      v50 = v74;
    }

    v86.origin.x = v8;
    v86.origin.y = v7;
    v86.size.width = v10;
    v86.size.height = v9;
    v53 = Width - CGRectGetWidth(v86);
    if (v53 < 0.0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = v53;
    }

    if ((v51 & 1) == 0 && v28 > 0.0)
    {
      sub_10056CF78();
      v46 = v46 - v54;
      v87.origin.x = v8;
      v87.origin.y = v7;
      v87.size.width = v10;
      v87.size.height = v9;
      Width = CGRectGetWidth(v87);
    }

    if (v48 != 2 && v47)
    {
      if (v47 != 1)
      {
        v92.origin.x = v8;
        v92.origin.y = v7;
        v92.size.width = v10;
        v92.size.height = v9;
        v8 = CGRectGetMaxX(v92) - Width;
        if (*&v5 != 0.0)
        {
          goto LABEL_54;
        }
      }

      v88.origin.x = v8;
      v88.origin.y = v7;
      v88.size.width = v10;
      v88.size.height = v9;
      CGRectGetWidth(v88);
      sub_10056CF58();
      v8 = v8 + v55;
    }

    if (*&v5 != 0.0)
    {
LABEL_54:
      v33 = 0;
      v56 = v50;
      v57 = 0;
      v58 = v19 & 0xC000000000000001;
      v75 = v28 / v56;
      while (1)
      {
        if (v58)
        {
          v60 = sub_100573F58();
        }

        else
        {
          if (v33 >= *(v19 + 16))
          {
            goto LABEL_87;
          }

          v60 = *(v19 + 8 * v33 + 32);
        }

        v61 = v60;
        v62 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          goto LABEL_86;
        }

        v63 = [v60 superview];
        if (!v63 || (v64 = v63, v63, v64 != v82))
        {
          [v82 addSubview:v61];
        }

        v28 = v46;
        if (v51)
        {
          [v61 intrinsicContentSize];
          v66 = v65;
          sub_10056CF78();
          v28 = v66 - v67;
        }

        sub_100573868();
        [v61 setFrame:?];
        v90.origin.x = v8;
        v90.origin.y = v7;
        v90.size.width = v28;
        v90.size.height = v9;
        CGRectGetWidth(v90);
        v91.origin.x = v8;
        v91.origin.y = v7;
        v91.size.width = v28;
        v91.size.height = v9;
        v10 = CGRectGetWidth(v91);
        if (v57)
        {

          if (v62 == v5)
          {
            if (v74 < 2)
            {
            }

LABEL_74:
            for (j = 0; ; ++j)
            {
              if (v58)
              {
                v69 = sub_100573F58();
              }

              else
              {
                if (j >= *(v19 + 16))
                {
                  goto LABEL_89;
                }

                v69 = *(v19 + 8 * j + 32);
              }

              v33 = v69;
              v70 = j + 1;
              if (__OFADD__(j, 1))
              {
                break;
              }

              v71 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
              swift_beginAccess();
              sub_100446B1C(v33 + v71, v13);
              v13[184] = 1;
              SymbolButton.setConfiguration(_:animation:updates:)(v13, 0, 0, 0, 1, _swiftEmptyArrayStorage);

              sub_100448390(v13, type metadata accessor for SymbolButton.Configuration);
              if (v70 == v5)
              {
              }
            }

            goto LABEL_88;
          }

          v57 = 1;
        }

        else
        {
          [v61 intrinsicContentSize];
          Width = v59;
          v89.origin.x = v8;
          v89.origin.y = v7;
          v89.size.width = v28;
          v89.size.height = v9;
          v28 = CGRectGetWidth(v89);

          v57 = v28 < Width;
          if (v62 == v5)
          {
            if (v28 >= Width || v74 <= 1)
            {
            }

            goto LABEL_74;
          }
        }

        v8 = v8 + v10 + v77;
        ++v33;
      }
    }
  }

LABEL_92:
  __break(1u);
  return result;
}

unint64_t sub_100447A6C()
{
  result = qword_1006F5270;
  if (!qword_1006F5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5270);
  }

  return result;
}

unint64_t sub_100447AC4()
{
  result = qword_1006F5278;
  if (!qword_1006F5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5278);
  }

  return result;
}

unint64_t sub_100447B38()
{
  result = qword_1006F5280;
  if (!qword_1006F5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5280);
  }

  return result;
}

unint64_t sub_100447B90()
{
  result = qword_1006F5288;
  if (!qword_1006F5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5288);
  }

  return result;
}

unint64_t sub_100447BE8()
{
  result = qword_1006F5290;
  if (!qword_1006F5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5290);
  }

  return result;
}

uint64_t sub_100447C6C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100447C90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100447CEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayIntentLayoutHelper.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100447E1C()
{
  sub_100010324(&qword_1006F52A8);
  sub_10056ECA8();
  sub_100010BC0(&qword_1006F52B0, &qword_1006F52A8);
  return swift_getWitnessTable();
}

unint64_t sub_100447EEC()
{
  result = qword_1006F52B8;
  if (!qword_1006F52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F52B8);
  }

  return result;
}

unint64_t sub_100447F40()
{
  result = qword_1006F52C0;
  if (!qword_1006F52C0)
  {
    sub_100010324(&qword_1006F52C8);
    sub_100447AC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F52C0);
  }

  return result;
}

unint64_t sub_100447FC4()
{
  result = qword_1006F52E8;
  if (!qword_1006F52E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F52E8);
  }

  return result;
}

uint64_t sub_100448018()
{

  return swift_deallocObject();
}

uint64_t sub_100448058@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *a1;
  KeyPath = swift_getKeyPath();
  *a2 = v7;
  *(a2 + 1) = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = 0;
}

unint64_t sub_1004480C8()
{
  result = qword_1006F5320;
  if (!qword_1006F5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5320);
  }

  return result;
}

uint64_t sub_10044811C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100448164()
{
  result = qword_1006F5328;
  if (!qword_1006F5328)
  {
    sub_100010324(&qword_1006F5308);
    sub_1004481F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5328);
  }

  return result;
}

unint64_t sub_1004481F0()
{
  result = qword_1006F5330;
  if (!qword_1006F5330)
  {
    sub_100010324(&qword_1006F5300);
    sub_100010BC0(&qword_1006F5338, &qword_1006F5340);
    sub_1004482A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5330);
  }

  return result;
}

unint64_t sub_1004482A8()
{
  result = qword_1006F5348;
  if (!qword_1006F5348)
  {
    sub_100010324(&qword_1006F5350);
    sub_100447B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5348);
  }

  return result;
}

uint64_t sub_10044832C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100448390(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *PlaylistCovers.CarouselItem.pageIndicatorImage.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

__n128 PlaylistCovers.CarouselItem.init(itemType:pageIndicatorImage:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = a1[5];
  v25 = a1[4];
  v26 = v4;
  v5 = a1[7];
  v27 = a1[6];
  v28 = v5;
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  v7 = a1[3];
  v23 = a1[2];
  v24 = v7;
  v13 = v22[0];
  v14 = v6;
  v15 = v23;
  v16 = v7;
  v17 = v25;
  v18 = v4;
  v19 = v27;
  v20 = v5;
  v21 = a2;
  v29 = a2;
  sub_10042B8F4(&v13, v12);
  sub_10044864C(v22);
  v8 = v20;
  a3[6] = v19;
  a3[7] = v8;
  a3[8].n128_u64[0] = v21;
  v9 = v16;
  a3[2] = v15;
  a3[3] = v9;
  v10 = v18;
  a3[4] = v17;
  a3[5] = v10;
  result = v14;
  *a3 = v13;
  a3[1] = result;
  return result;
}

uint64_t static PlaylistCovers.CarouselItem.CarouselItemType.__derived_enum_equals(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v32 = a1[4];
  v33 = v3;
  v4 = a1[7];
  v34 = a1[6];
  v35 = v4;
  v5 = a1[1];
  v28 = *a1;
  v29 = v5;
  v6 = a1[3];
  v30 = a1[2];
  v31 = v6;
  if (sub_1000CA8F0(&v28) == 1)
  {
    v7 = a2[5];
    v40 = a2[4];
    v41 = v7;
    v8 = a2[7];
    v42 = a2[6];
    v43 = v8;
    v9 = a2[1];
    v36 = *a2;
    v37 = v9;
    v10 = a2[3];
    v38 = a2[2];
    v39 = v10;
    v11 = sub_1000CA8F0(&v36) == 1;
  }

  else
  {
    v40 = v32;
    v41 = v33;
    v42 = v34;
    v43 = v35;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v39 = v31;
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v21 = a2[2];
    v22 = v14;
    v19 = v12;
    v20 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v25 = a2[6];
    v26 = v17;
    v23 = v15;
    v24 = v16;
    if (sub_1000CA8F0(&v19) == 1)
    {
      v11 = 0;
    }

    else
    {
      v27[4] = v23;
      v27[5] = v24;
      v27[6] = v25;
      v27[7] = v26;
      v27[0] = v19;
      v27[1] = v20;
      v27[2] = v21;
      v27[3] = v22;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)(&v36, v27);
    }
  }

  return v11 & 1;
}

uint64_t sub_100448790(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v38 = a1[4];
  v39 = v3;
  v4 = a1[7];
  v40 = a1[6];
  v41 = v4;
  v5 = a1[1];
  v34 = *a1;
  v35 = v5;
  v6 = a1[3];
  v36 = a1[2];
  v37 = v6;
  if (sub_1000CA8F0(&v34) == 1)
  {
    v7 = a2[5];
    v30 = a2[4];
    v31 = v7;
    v8 = a2[7];
    v32 = a2[6];
    v33 = v8;
    v9 = a2[1];
    v26 = *a2;
    v27 = v9;
    v10 = a2[3];
    v28 = a2[2];
    v29 = v10;
    v11 = sub_1000CA8F0(&v26) == 1;
  }

  else
  {
    v25[4] = v38;
    v25[5] = v39;
    v25[6] = v40;
    v25[7] = v41;
    v25[0] = v34;
    v25[1] = v35;
    v25[2] = v36;
    v25[3] = v37;
    v12 = a2[7];
    v23 = a2[6];
    v24 = v12;
    v13 = a2[5];
    v21 = a2[4];
    v22 = v13;
    v14 = a2[3];
    v19 = a2[2];
    v20 = v14;
    v15 = a2[1];
    v17 = *a2;
    v18 = v15;
    if (sub_1000CA8F0(&v17) == 1)
    {
      v11 = 0;
    }

    else
    {
      v30 = v21;
      v31 = v22;
      v32 = v23;
      v33 = v24;
      v26 = v17;
      v27 = v18;
      v28 = v19;
      v29 = v20;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)(v25, &v26);
    }
  }

  return v11 & 1;
}

uint64_t PlaylistCovers.CarouselItem.id.getter()
{
  v1 = v0[5];
  v7[4] = v0[4];
  v7[5] = v1;
  v2 = v0[7];
  v7[6] = v0[6];
  v7[7] = v2;
  v3 = v0[1];
  v7[0] = *v0;
  v7[1] = v3;
  v4 = v0[3];
  v7[2] = v0[2];
  v7[3] = v4;
  if (sub_1000CA8F0(v7) == 1)
  {
    return 0x6369506F746F6850;
  }

  v5 = *(&v7[0] + 1);

  return v5;
}

uint64_t PlaylistCovers.CarouselItem.hash(into:)()
{
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (sub_1000CA8F0(v6) != 1)
  {
  }

  sub_1005729F8();
}

uint64_t static PlaylistCovers.CarouselItem.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v25 = a1[4];
  v26 = v3;
  v4 = a1[7];
  v27 = a1[6];
  v28 = v4;
  v5 = a1[1];
  v21 = *a1;
  v22 = v5;
  v6 = a1[3];
  v23 = a1[2];
  v24 = v6;
  if (sub_1000CA8F0(&v21) == 1)
  {
    v7 = a2[5];
    v33 = a2[4];
    v34 = v7;
    v8 = a2[7];
    v35 = a2[6];
    v36 = v8;
    v9 = a2[1];
    v29 = *a2;
    v30 = v9;
    v10 = a2[3];
    v31 = a2[2];
    v32 = v10;
    v11 = sub_1000CA8F0(&v29) == 1;
  }

  else
  {
    v19[4] = v25;
    v19[5] = v26;
    v19[6] = v27;
    v19[7] = v28;
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v19[3] = v24;
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v31 = a2[2];
    v32 = v14;
    v29 = v12;
    v30 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v35 = a2[6];
    v36 = v17;
    v33 = v15;
    v34 = v16;
    if (sub_1000CA8F0(&v29) == 1)
    {
      v11 = 0;
    }

    else
    {
      v20[4] = v33;
      v20[5] = v34;
      v20[6] = v35;
      v20[7] = v36;
      v20[0] = v29;
      v20[1] = v30;
      v20[2] = v31;
      v20[3] = v32;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)(v19, v20);
    }
  }

  return v11 & 1;
}

double PlaylistCovers.CarouselItem.cover.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v25 = v1[4];
  v26 = v3;
  v4 = v1[7];
  v27 = v1[6];
  v28 = v4;
  v5 = v1[1];
  v22[0] = *v1;
  v22[1] = v5;
  v6 = v1[3];
  v23 = v1[2];
  v24 = v6;
  v35 = v27;
  v36 = v4;
  v33 = v25;
  v34 = v3;
  v31 = v23;
  v32 = v6;
  v29 = v22[0];
  v30 = v5;
  if (sub_1000CA8F0(&v29) == 1)
  {
    sub_1003234CC(&v37);
  }

  else
  {
    v18 = v33;
    v19 = v34;
    v20 = v35;
    v21 = v36;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    v8 = &v14;
    CFRange.init(_:)(*(&v7 - 1));
    v41 = v18;
    v42 = v19;
    v43 = v20;
    v44 = v21;
    v37 = v14;
    v38 = v15;
    v39 = v16;
    v40 = v17;
  }

  sub_1004484B8(v22, &v14);
  v9 = v42;
  a1[4] = v41;
  a1[5] = v9;
  v10 = v44;
  a1[6] = v43;
  a1[7] = v10;
  v11 = v38;
  *a1 = v37;
  a1[1] = v11;
  result = *&v39;
  v13 = v40;
  a1[2] = v39;
  a1[3] = v13;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.picker.getter@<Q0>(__n128 *a1@<X8>)
{
  sub_1003234CC(&v9);
  v2 = sub_100572898();
  v3 = [objc_opt_self() systemImageNamed:v2];

  v26[4] = v13;
  v26[5] = v14;
  v26[6] = v15;
  v26[7] = v16;
  v26[0] = v9;
  v26[1] = v10;
  v26[2] = v11;
  v26[3] = v12;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v3;
  v27 = v3;
  sub_10042B8F4(&v17, v8);
  sub_10044864C(v26);
  v4 = v24;
  a1[6] = v23;
  a1[7] = v4;
  a1[8].n128_u64[0] = v25;
  v5 = v20;
  a1[2] = v19;
  a1[3] = v5;
  v6 = v22;
  a1[4] = v21;
  a1[5] = v6;
  result = v18;
  *a1 = v17;
  a1[1] = result;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.tracksTiled(image:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10056CC38();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100572888();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v23[-v10];
  v12 = a1;
  sub_100572818();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_1006EE950 != -1)
  {
    swift_once();
  }

  v13 = qword_1006FDF00;
  sub_10056CBC8();
  v14 = sub_100572948();
  v16 = v15;
  (*(v6 + 8))(v11, v5);
  v17 = AccessibilityIdentifier.playlistEditorMetadataArtwork4Up.unsafeMutableAddressor();
  PlaylistCovers.Cover.init(image:id:accessibilityLabel:accessibilityIdentifier:)(v12, 0x6954736B63617254, 0xEB0000000064656CLL, v14, v16, *v17, v17[1], v17[2], &v24, v17[3]);
  v18.location = &v24;
  CFRange.init(_:)(v18);
  v41[4] = v28;
  v41[5] = v29;
  v41[6] = v30;
  v41[7] = v31;
  v41[0] = v24;
  v41[1] = v25;
  v41[2] = v26;
  v41[3] = v27;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v39 = v31;
  v40 = 0;
  v42 = 0;

  sub_10042B8F4(&v32, v23);
  sub_10044864C(v41);
  v19 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v19;
  *(a2 + 128) = v40;
  v20 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v20;
  v21 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v21;
  result = v33;
  *a2 = v32;
  *(a2 + 16) = result;
  return result;
}

Swift::Int PlaylistCovers.CarouselItem.hashValue.getter()
{
  sub_100574678();
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (sub_1000CA8F0(v6) != 1)
  {
  }

  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_100449054@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v9[5] = v3;
  v4 = v1[7];
  v9[6] = v1[6];
  v9[7] = v4;
  v5 = v1[1];
  v9[0] = *v1;
  v9[1] = v5;
  v6 = v1[3];
  v9[2] = v1[2];
  v9[3] = v6;
  if (sub_1000CA8F0(v9) == 1)
  {
    result = 0xEB0000000072656BLL;
    v8 = 0x6369506F746F6850;
  }

  else
  {
    v8 = *(&v9[0] + 1);
  }

  *a1 = v8;
  a1[1] = result;
  return result;
}

Swift::Int sub_1004490D8()
{
  sub_100574678();
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (sub_1000CA8F0(v6) != 1)
  {
  }

  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 24) = a1;
  return _swift_task_switch(sub_1004491AC, 0, 0);
}

uint64_t sub_1004491AC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = sub_100009DCC(&qword_1006F5360);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v5;
  v7[3] = v2;
  v7[4] = v1;
  v7[5] = v4;
  v7[6] = v3;
  v8 = sub_100009DCC(&qword_1006F5368);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1004492E8;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v6, v8, 0, 0, &unk_1005A18B8, v7, v6);
}

uint64_t sub_1004492E8()
{

  return _swift_task_switch(sub_1002DE8A0, 0, 0);
}

uint64_t sub_100449400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 1728) = a5;
  *(v7 + 1720) = a4;
  *(v7 + 1712) = a7;
  *(v7 + 1704) = a6;
  *(v7 + 1696) = a3;
  *(v7 + 1688) = a2;
  *(v7 + 1680) = a1;
  sub_100009DCC(&qword_1006F4800);
  *(v7 + 1736) = swift_task_alloc();
  *(v7 + 1744) = swift_task_alloc();
  v8 = sub_100009DCC(&qword_1006F5378);
  *(v7 + 1752) = v8;
  *(v7 + 1760) = *(v8 - 8);
  *(v7 + 1768) = swift_task_alloc();

  return _swift_task_switch(sub_100449528, 0, 0);
}

uint64_t sub_100449528()
{
  v1 = *(v0 + 1696);
  v2 = *(v1 + 16);
  *(v0 + 1776) = v2;
  if (v2)
  {
    v3 = (v0 + 1280);
    v36 = **(v0 + 1688);
    v4 = (v1 + 32);
    v5 = sub_100572F48();
    v6 = *(v5 - 8);
    v35 = *(v6 + 56);
    v34 = (v6 + 48);
    v33 = (v6 + 8);
    while (1)
    {
      v7 = *(v0 + 1744);
      v8 = *(v0 + 1728);
      v9 = *(v0 + 1720);
      v10 = *(v0 + 1712);
      v11 = *(v0 + 1704);
      v13 = v4[1];
      v12 = v4[2];
      v14 = *v4;
      *(v0 + 1328) = *(v4 + 6);
      *(v0 + 1296) = v13;
      *(v0 + 1312) = v12;
      *v3 = v14;
      v35(v7, 1, 1, v5);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      v17 = *(v0 + 1296);
      *(v15 + 32) = *v3;
      *(v15 + 48) = v17;
      *(v15 + 64) = *(v0 + 1312);
      *(v15 + 80) = *(v0 + 1328);
      *(v15 + 88) = v11;
      *(v15 + 96) = v10;
      *(v15 + 104) = v9;
      *(v15 + 112) = v8;
      sub_1002D99B0(v0 + 1280, v0 + 1448);
      sub_1002D99B0(v0 + 1280, v0 + 1504);

      v18 = swift_taskGroup_addPending();
      v19 = *(v0 + 1744);
      if (v18)
      {
        break;
      }

      sub_10001036C(v19, &qword_1006F4800);

      sub_1002D9A0C(v0 + 1280);
LABEL_4:
      v4 = (v4 + 56);
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    v20 = *(v0 + 1736);
    sub_10044A7E4(v19, v20);
    v21 = (*v34)(v20, 1, v5);
    v22 = *(v0 + 1736);
    if (v21 == 1)
    {
      sub_10001036C(*(v0 + 1736), &qword_1006F4800);
      if (*v16)
      {
LABEL_8:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_100572E78();
        v25 = v24;
        swift_unknownObjectRelease();
LABEL_11:
        v26 = swift_allocObject();
        *(v26 + 16) = &unk_1005A1B60;
        *(v26 + 24) = v15;

        sub_100009DCC(&qword_1006F5360);
        v27 = v25 | v23;
        if (v25 | v23)
        {
          v27 = v0 + 1616;
          *(v0 + 1616) = 0;
          *(v0 + 1624) = 0;
          *(v0 + 1632) = v23;
          *(v0 + 1640) = v25;
        }

        v28 = *(v0 + 1744);
        *(v0 + 1648) = 1;
        *(v0 + 1656) = v27;
        *(v0 + 1664) = v36;
        swift_task_create();

        sub_1002D9A0C(v0 + 1280);
        sub_10001036C(v28, &qword_1006F4800);
        goto LABEL_4;
      }
    }

    else
    {
      sub_100572F38();
      (*v33)(v22, v5);
      if (*v16)
      {
        goto LABEL_8;
      }
    }

    v23 = 0;
    v25 = 0;
    goto LABEL_11;
  }

LABEL_14:
  sub_100009DCC(&qword_1006F5360);
  sub_100572EB8();
  *(v0 + 1784) = _swiftEmptyDictionarySingleton;
  v29 = sub_10044A780();
  v30 = swift_task_alloc();
  *(v0 + 1792) = v30;
  *v30 = v0;
  v30[1] = sub_100449944;
  v31 = *(v0 + 1752);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 1088, v31, v29);
}

uint64_t sub_100449944()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[221];
    v4 = v2[220];
    v5 = v2[219];

    (*(v4 + 8))(v3, v5);

    v6 = CFRange.init(_:);
  }

  else
  {
    v6 = sub_100449A9C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100449A9C()
{
  v1 = (v0 + 1088);
  if (*(v0 + 1096))
  {
    v2 = v0 + 424;
    v3 = (v0 + 960);
    v115 = *(v0 + 1784);
    v4 = *(v0 + 1136);
    *(v0 + 1248) = *(v0 + 1120);
    *(v0 + 1264) = v4;
    v5 = *(v0 + 1104);
    v109 = v0 + 1088;
    v110 = v0 + 1216;
    *(v0 + 1216) = *v1;
    *(v0 + 1232) = v5;
    v6 = *(v0 + 1224);
    v7 = *(v0 + 1232);
    v8 = *(v0 + 1240);
    v9 = *(v0 + 1248);
    v10 = *(v0 + 1256);
    v11 = *(v0 + 1264);
    v114 = *(v0 + 1272);
    *(v0 + 1392) = *(v0 + 1216);
    *(v0 + 1400) = v6;
    *(v0 + 1408) = v7;
    *(v0 + 1416) = v8;
    *(v0 + 1424) = v9;
    *(v0 + 1432) = v10;
    *(v0 + 1440) = v11;
    v12 = v6;
    v13 = v7;
    v112 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v114;
    v113 = v12;
    v108 = v13;
    v111 = v112;
    v18 = v14;
    v19 = (v0 + 1392);
    v107 = v18;
    v20 = v15;
    v21 = v16;
    PlaylistCovers.Cover.init(image:representation:)(v17, (v0 + 1392), v0 + 960);
    v22 = *(v0 + 1040);
    *(v0 + 896) = *(v0 + 1024);
    *(v0 + 912) = v22;
    v23 = *(v0 + 1072);
    *(v0 + 928) = *(v0 + 1056);
    *(v0 + 944) = v23;
    v24 = *(v0 + 976);
    *(v0 + 832) = *(v0 + 960);
    *(v0 + 848) = v24;
    v25 = *(v0 + 1008);
    *(v0 + 864) = *(v0 + 992);
    *(v0 + 880) = v25;
    v26.location = v0 + 832;
    CFRange.init(_:)(v26);
    v27 = *(v0 + 896);
    v28 = *(v0 + 912);
    *(v0 + 352) = v27;
    *(v0 + 368) = v28;
    v29 = *(v0 + 928);
    v30 = *(v0 + 944);
    *(v0 + 384) = v29;
    *(v0 + 400) = v30;
    v31 = *(v0 + 832);
    v32 = *(v0 + 848);
    *(v0 + 288) = v31;
    *(v0 + 304) = v32;
    v33 = *(v0 + 864);
    v34 = *(v0 + 880);
    *(v0 + 320) = v33;
    *(v0 + 336) = v34;
    *(v0 + 424) = v31;
    *(v0 + 440) = v32;
    *(v0 + 456) = v33;
    *(v0 + 472) = v34;
    *(v0 + 488) = v27;
    *(v0 + 504) = v28;
    *(v0 + 520) = v29;
    *(v0 + 536) = v30;
    *(v0 + 552) = 0;
    *(v0 + 416) = 0;
    sub_10042B8F4(v0 + 424, v0 + 560);
    sub_10044864C(v0 + 288);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 1672) = v115;
    v36 = sub_100429E10((v0 + 1392));
    v38 = *(v115 + 16);
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      LOBYTE(v12) = v37;
      v3 = (v0 + 1672);
      if (*(*(v0 + 1784) + 24) < v41)
      {
        sub_10042A710(v41, isUniquelyReferenced_nonNull_native);
        v36 = sub_100429E10(v19);
        if ((v12 & 1) != (v42 & 1))
        {

          return sub_100574578();
        }

LABEL_24:
        if (v12)
        {
LABEL_25:
          v71 = *v3;
          v72 = *(*v3 + 56) + 136 * v36;
          *(v0 + 696) = *v72;
          v73 = *(v72 + 64);
          v75 = *(v72 + 16);
          v74 = *(v72 + 32);
          *(v0 + 744) = *(v72 + 48);
          *(v0 + 760) = v73;
          *(v0 + 712) = v75;
          *(v0 + 728) = v74;
          v77 = *(v72 + 96);
          v76 = *(v72 + 112);
          v78 = *(v72 + 80);
          *(v0 + 824) = *(v72 + 128);
          *(v0 + 792) = v77;
          *(v0 + 808) = v76;
          *(v0 + 776) = v78;
          *v72 = *v2;
          v79 = *(v2 + 16);
          v80 = *(v2 + 32);
          v81 = *(v2 + 64);
          *(v72 + 48) = *(v2 + 48);
          *(v72 + 64) = v81;
          *(v72 + 16) = v79;
          *(v72 + 32) = v80;
          v82 = *(v2 + 80);
          v83 = *(v2 + 96);
          v84 = *(v2 + 112);
          *(v72 + 128) = *(v2 + 128);
          *(v72 + 96) = v83;
          *(v72 + 112) = v84;
          *(v72 + 80) = v82;
          sub_10044864C(v0 + 696);

          sub_10001036C(v110, &qword_1006F5388);
          goto LABEL_36;
        }

LABEL_34:
        v71 = *v3;
        *(*v3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
        v89 = v71[6] + 56 * v36;
        v90 = *v19;
        v91 = *(v19 + 1);
        v92 = *(v19 + 2);
        *(v89 + 48) = *(v19 + 6);
        *(v89 + 16) = v91;
        *(v89 + 32) = v92;
        *v89 = v90;
        v93 = v71[7] + 136 * v36;
        *v93 = *v2;
        v94 = *(v2 + 16);
        v95 = *(v2 + 32);
        v96 = *(v2 + 64);
        *(v93 + 48) = *(v2 + 48);
        *(v93 + 64) = v96;
        *(v93 + 16) = v94;
        *(v93 + 32) = v95;
        v97 = *(v2 + 80);
        v98 = *(v2 + 96);
        v99 = *(v2 + 112);
        *(v93 + 128) = *(v2 + 128);
        *(v93 + 96) = v98;
        *(v93 + 112) = v99;
        *(v93 + 80) = v97;

        v100 = sub_10001036C(v110, &qword_1006F5388);
        v103 = v71[2];
        v40 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v40)
        {
          __break(1u);
          return dispatch thunk of AsyncIteratorProtocol.next()(v100, v101, v102);
        }

        v71[2] = v104;
LABEL_36:
        *(v0 + 1784) = v71;
        v105 = sub_10044A780();
        v106 = swift_task_alloc();
        *(v0 + 1792) = v106;
        *v106 = v0;
        v106[1] = sub_100449944;
        v101 = *(v0 + 1752);
        v100 = v109;
        v102 = v105;

        return dispatch thunk of AsyncIteratorProtocol.next()(v100, v101, v102);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }
    }

    v87 = v21;
    v88 = v36;
    sub_10042B950();
    v36 = v88;
    v21 = v87;
    if (v12)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v44 = *(v0 + 1776);
  (*(*(v0 + 1760) + 8))(*(v0 + 1768), *(v0 + 1752));
  v45 = *(v0 + 1104);
  *(v0 + 1152) = *v1;
  *(v0 + 1168) = v45;
  v46 = *(v0 + 1136);
  *(v0 + 1184) = *(v0 + 1120);
  *(v0 + 1200) = v46;
  v36 = sub_10001036C(v0 + 1152, &qword_1006F5388);
  if (!v44)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v3 = 0;
  v19 = (v0 + 1336);
  v2 = *(v0 + 1784);
  v17 = (*(v0 + 1696) + 32);
  v21 = _swiftEmptyArrayStorage;
  v20 = 56;
  do
  {
    v47 = *(v0 + 1776);
    v48 = &v17[56 * v3];
    v12 = v3;
    while (1)
    {
      if (v12 >= v47)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v49 = *v48;
      v50 = *(v48 + 1);
      v51 = *(v48 + 2);
      *(v0 + 1384) = *(v48 + 6);
      *(v0 + 1352) = v50;
      *(v0 + 1368) = v51;
      *v19 = v49;
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_31;
      }

      if (*(v2 + 16))
      {
        break;
      }

LABEL_11:
      ++v12;
      v48 += 56;
      if (v3 == v47)
      {
        goto LABEL_27;
      }
    }

    sub_1002D99B0(v0 + 1336, v0 + 1560);
    v52 = sub_100429E10((v0 + 1336));
    if ((v53 & 1) == 0)
    {
      v36 = sub_1002D9A0C(v0 + 1336);
      v47 = *(v0 + 1776);
      goto LABEL_11;
    }

    v54 = *(v2 + 56) + 136 * v52;
    *(v0 + 16) = *v54;
    v55 = *(v54 + 16);
    v56 = *(v54 + 32);
    v57 = *(v54 + 64);
    *(v0 + 64) = *(v54 + 48);
    *(v0 + 80) = v57;
    *(v0 + 32) = v55;
    *(v0 + 48) = v56;
    v58 = *(v54 + 80);
    v59 = *(v54 + 96);
    v60 = *(v54 + 112);
    *(v0 + 144) = *(v54 + 128);
    *(v0 + 112) = v59;
    *(v0 + 128) = v60;
    *(v0 + 96) = v58;
    sub_10042B8F4(v0 + 16, v0 + 152);
    sub_1002D9A0C(v0 + 1336);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    if ((v36 & 1) == 0)
    {
      v36 = sub_100474CC0(0, v21[2] + 1, 1, v21);
      v21 = v36;
    }

    v62 = v21[2];
    v61 = v21[3];
    if (v62 >= v61 >> 1)
    {
      v36 = sub_100474CC0((v61 > 1), v62 + 1, 1, v21);
      v21 = v36;
    }

    v63 = *(v0 + 1776);
    v21[2] = v62 + 1;
    v64 = &v21[17 * v62];
    *(v64 + 2) = *(v0 + 16);
    v65 = *(v0 + 32);
    v66 = *(v0 + 48);
    v67 = *(v0 + 80);
    *(v64 + 5) = *(v0 + 64);
    *(v64 + 6) = v67;
    *(v64 + 3) = v65;
    *(v64 + 4) = v66;
    v68 = *(v0 + 96);
    v69 = *(v0 + 112);
    v70 = *(v0 + 128);
    v64[20] = *(v0 + 144);
    *(v64 + 8) = v69;
    *(v64 + 9) = v70;
    *(v64 + 7) = v68;
  }

  while (v3 != v63);
LABEL_27:
  v85 = *(v0 + 1680);

  *v85 = v21;

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_10044A190(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v10 = *(v2 + 5);
  v9 = *(v2 + 6);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000116F0;

  return sub_100449400(a1, a2, v6, v10, v9, v7, v8);
}

unint64_t sub_10044A26C()
{
  result = qword_1006F5370;
  if (!qword_1006F5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5370);
  }

  return result;
}

uint64_t sub_10044A2C0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10044A2D8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10044A2F0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10044A324(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
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

uint64_t sub_10044A380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10044A404(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10044A454(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10044A4B8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_10044A508(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 72) = a1;
  *(v8 + 80) = a6;
  return _swift_task_switch(sub_10044A530, 0, 0);
}

uint64_t sub_10044A530()
{
  v1 = *(v0 + 13);
  v2 = *(v0 + 14);
  v4 = v0[11];
  v3 = v0[12];
  v6 = *(v0 + 9);
  v5 = *(v0 + 10);
  v7 = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 32);
  *(v6 + 48) = *(v5 + 48);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *v6 = v7;
  v10 = *(v5 + 8);
  v11 = *(v5 + 48);
  sub_10044A944();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1002D99B0(v5, (v0 + 2));
  v13 = [ObjCClassFromMetadata preferredFormat];
  v14 = static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(v10, v11, v1, v2, v13, v4, v3);

  *(v6 + 56) = v14;
  v15 = *(v0 + 1);

  return v15();
}

uint64_t sub_10044A638()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10044A6A8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[11];
  v7 = v1[12];
  v8 = *(v1 + 13);
  v9 = *(v1 + 14);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000CB98;

  return sub_10044A508(a1, v6, v7, v4, v5, (v1 + 4), v8, v9);
}

unint64_t sub_10044A780()
{
  result = qword_1006F5380;
  if (!qword_1006F5380)
  {
    sub_100010324(&qword_1006F5378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F5380);
  }

  return result;
}

uint64_t sub_10044A7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F4800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044A854()
{

  return swift_deallocObject();
}

uint64_t sub_10044A88C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CB98;

  return sub_10000C500(a1, v4);
}

unint64_t sub_10044A944()
{
  result = qword_1006F5390;
  if (!qword_1006F5390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F5390);
  }

  return result;
}

uint64_t ProgressiveBlur.makeUIView(context:)(double a1, uint64_t a2, char a3)
{
  v5 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
  v6 = type metadata accessor for ProgressiveBlurView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a1;
  v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a3;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = 0x3FD3333333333333;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = v5;
  v8 = v5;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 1.0;
  v26.size.height = 1.0;
  if (CGRectIsEmpty(v26))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a3;
  *(v11 + 56) = 0x3FD3333333333333;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10044BC70;
  *(v17 + 24) = v11;
  aBlock[4] = sub_1002AA218;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D65E4;
  aBlock[3] = &unk_1006A3EC8;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v22 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a1 scale:1.0];

LABEL_6:
      v24.receiver = v7;
      v24.super_class = v6;
      v23 = objc_msgSendSuper2(&v24, "initWithEffect:", v22);

      return v23;
    }

LABEL_5:
    v22 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t ProgressiveBlurView.__allocating_init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v10 = a2;
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = 1.0;
  v28.size.height = 1.0;
  if (CGRectIsEmpty(v28))
  {
    goto LABEL_5;
  }

  v11 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v11 setScale:1.0];
  [v11 setPreferredRange:2];
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v11 format:{0.0, 0.0, 1.0, 1.0}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v13 + 32) = _Q0;
  *(v13 + 48) = a1;
  *(v13 + 56) = a4;
  *(v13 + 64) = v10;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10044BFC4;
  *(v19 + 24) = v13;
  aBlock[4] = sub_1002DCE34;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D65E4;
  aBlock[3] = &unk_1006A3F40;
  v20 = _Block_copy(aBlock);
  v21 = v10;

  v22 = [v12 imageWithActions:v20];

  _Block_release(v20);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    if (v22)
    {
      v24 = [objc_opt_self() _effectWithVariableBlurRadius:v22 imageMask:a3 scale:1.0];

LABEL_6:
      v26.receiver = v9;
      v26.super_class = v4;
      v25 = objc_msgSendSuper2(&v26, "initWithEffect:", v24);

      return v25;
    }

LABEL_5:
    v24 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void ProgressiveBlur.updateUIView(_:context:)(uint64_t a1, double a2, uint64_t a3, char a4)
{
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = a2;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = a4;
  ProgressiveBlurView.updateEffect()();
}

void sub_10044AFB8(uint64_t a1)
{
  v2 = *(v1 + 8);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = *v1;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = v2;
  ProgressiveBlurView.updateEffect()();
}

uint64_t sub_10044AFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10044BEF4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10044B060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10044BEF4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10044B0C4()
{
  sub_10044BEF4();
  sub_10056F4D8();
  __break(1u);
}

double sub_10044B194(unsigned __int8 a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = a4();
    }

    else
    {
      v5 = a5();
    }
  }

  else if (a1)
  {
    v5 = a3();
  }

  else
  {
    v5 = a2();
  }

  v6 = v5;
  swift_beginAccess();
  return *v6;
}

uint64_t ProgressiveBlurView.init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v8 = a2;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 1.0;
  v26.size.height = 1.0;
  if (CGRectIsEmpty(v26))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a1;
  *(v11 + 56) = a4;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10044BFC4;
  *(v17 + 24) = v11;
  aBlock[4] = sub_1002DCE34;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D65E4;
  aBlock[3] = &unk_1006A3FB8;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v22 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a3 scale:1.0];

LABEL_6:
      v24.receiver = v4;
      v24.super_class = type metadata accessor for ProgressiveBlurView();
      v23 = objc_msgSendSuper2(&v24, "initWithEffect:", v22);

      return v23;
    }

LABEL_5:
    v22 = 0;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ProgressiveBlurView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ProgressiveBlurView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  ProgressiveBlurView.updateEffect()();
}

Swift::Void __swiftcall ProgressiveBlurView.updateEffect()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius];
  v10 = v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff];
  v12 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation];
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  if (CGRectIsEmpty(v21))
  {
    goto LABEL_5;
  }

  v13 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v13 setScale:1.0];
  [v13 setPreferredRange:2];
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v13 format:{v2, v4, v6, v8}];
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v4;
  *(v15 + 32) = v6;
  *(v15 + 40) = v8;
  *(v15 + 48) = v10;
  *(v15 + 56) = v11;
  *(v15 + 64) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10044BFC4;
  *(v16 + 24) = v15;
  v20[4] = sub_1002DCE34;
  v20[5] = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_1001D65E4;
  v20[3] = &unk_1006A4030;
  v17 = _Block_copy(v20);
  v12 = v12;

  v18 = [v14 imageWithActions:v17];

  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    if (v18)
    {
      v19 = [objc_opt_self() _effectWithVariableBlurRadius:v18 imageMask:v9 scale:1.0];

LABEL_6:
      [v0 setEffect:v19];

      return;
    }

LABEL_5:

    v19 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void sub_10044B8BC(void *a1, unsigned __int8 a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = [objc_allocWithZone(CAGradientLayer) init];
  [v16 setBounds:{a4, a5, a6, a7}];
  [v16 setStartPoint:{sub_10044B194(a2, CGPoint.topCenter.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.bottomCenter.unsafeMutableAddressor)}];
  [v16 setEndPoint:{sub_10044B194(a2, CGPoint.bottomCenter.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.topCenter.unsafeMutableAddressor)}];
  sub_100009DCC(&qword_1006F06D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10057B500;
  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  v20 = [v19 colorWithAlphaComponent:a8];

  v21 = [v20 CGColor];
  _s3__C7CGColorCMa_0(0);
  v23 = v22;
  *(v17 + 56) = v22;
  *(v17 + 32) = v21;
  v24 = [v18 whiteColor];
  v25 = [v24 colorWithAlphaComponent:0.0];

  v26 = [v25 CGColor];
  *(v17 + 88) = v23;
  *(v17 + 64) = v26;
  isa = sub_100572D08().super.isa;

  [v16 setColors:isa];

  sub_100009DCC(&qword_1006F3B50);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10057B4F0;
  *(v28 + 32) = a3;
  sub_10044BF48();
  v29 = a3;
  v30 = sub_100572D08().super.isa;

  [v16 setInterpolations:v30];

  v31 = [a1 CGContext];
  [v16 renderInContext:v31];
}

uint64_t sub_10044BC38()
{

  return swift_deallocObject();
}

uint64_t sub_10044BC84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ProgressiveBlurView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect:a1];

  return v3;
}

id ProgressiveBlurView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressiveBlurView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10044BD90()
{
  result = qword_1006F53B8;
  if (!qword_1006F53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F53B8);
  }

  return result;
}

unint64_t sub_10044BDE8()
{
  result = qword_1006F53C0;
  if (!qword_1006F53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F53C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProgressiveBlur(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProgressiveBlur(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_10044BEF4()
{
  result = qword_1006F53F0;
  if (!qword_1006F53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F53F0);
  }

  return result;
}

unint64_t sub_10044BF48()
{
  result = qword_1006F2E68;
  if (!qword_1006F2E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F2E68);
  }

  return result;
}

id sub_10044C190(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle:a2];
  *a3 = result;
  return result;
}

char *QRCodeOverlayViewController.init(qrCode:title:subtitle:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *&v2[v4] = [objc_allocWithZone(UIVisualEffectView) init];
  v5 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *&v2[v6] = [objc_allocWithZone(CAShapeLayer) init];
  v7 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v8 = sub_100572898();
  v9 = [objc_opt_self() _systemImageNamed:v8];

  v10 = [objc_allocWithZone(UIImageView) initWithImage:v9];
  *&v2[v7] = v10;
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *&v2[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_1006EEC78 != -1)
  {
    swift_once();
  }

  v13 = [objc_opt_self() effectForBlurEffect:qword_1006FE508];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *&v2[v15] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = 0;
  v16 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *&v2[v16] = [objc_allocWithZone(UIScrollView) init];
  v17 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *&v2[v17] = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager] = 0;
  if (a1[4] == 76)
  {
    QRCode.with(errorCorrectionLevel:)(77, v38);
    v18 = v39;
    if (v39)
    {
      v19 = v40;
      v21 = v38[1];
      v20 = v38[2];
      v22 = v38[0];
    }

    else
    {
      v20 = a1[2];
      v18 = a1[3];
      v22 = *a1;
      v21 = a1[1];
      sub_10044F8B0(a1, v36);
      v19 = 76;
    }

    v25 = &v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    *v25 = v22;
    *(v25 + 1) = v21;
    *(v25 + 2) = v20;
    *(v25 + 3) = v18;
    *(v25 + 4) = v19;
  }

  else
  {
    v23 = &v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v24 = *(a1 + 1);
    *v23 = *a1;
    *(v23 + 1) = v24;
    *(v23 + 4) = a1[4];
    sub_10044F8B0(a1, v38);
  }

  v26 = type metadata accessor for QRCodeOverlayViewController();
  v37.receiver = v2;
  v37.super_class = v26;
  v27 = objc_msgSendSuper2(&v37, "initWithNibName:bundle:", 0, 0);
  v28 = *&v27[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel];
  v29 = v27;
  v30 = v28;
  v31 = sub_100572898();

  [v30 setText:v31];

  v32 = *&v29[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel];
  v33 = sub_100572898();

  [v32 setText:v33];

  sub_100009DCC(qword_1006F1BE0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10057B510;
  *(v34 + 32) = sub_10056E2A8();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100573518();
  swift_unknownObjectRelease();

  sub_10044F98C(a1);

  return v29;
}