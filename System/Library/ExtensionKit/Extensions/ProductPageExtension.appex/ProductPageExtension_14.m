uint64_t sub_10019C330()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 delegate];

    if (v3)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        type metadata accessor for SearchResultsCollectionViewDelegate();
        v4 = swift_dynamicCastClass();
        if (v4)
        {
          v5 = v4;
          v6 = sub_1000FD934(_swiftEmptyArrayStorage);
          v7 = OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
          swift_beginAccess();
          *(v5 + v7) = v6;

          *(v5 + OBJC_IVAR____TtC20ProductPageExtension35SearchResultsCollectionViewDelegate_isFirstItemFullWidth) = 2;
        }
      }

      swift_unknownObjectRelease();
    }
  }

  v12.receiver = v0;
  v12.super_class = type metadata accessor for SearchCollectionViewLayout();
  objc_msgSendSuper2(&v12, "prepareLayout");
  v8 = &v0[OBJC_IVAR____TtC20ProductPageExtension26SearchCollectionViewLayout_pendingPrepareObserver];
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26SearchCollectionViewLayout_pendingPrepareObserver];
  if (v9)
  {

    v9(v0);
    sub_1000167E0(v9);
    v10 = *v8;
  }

  else
  {
    v10 = 0;
  }

  *v8 = 0;
  v8[1] = 0;
  return sub_1000167E0(v10);
}

id sub_10019C4F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchCollectionViewLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10019C55C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099D6D8);
  sub_10000A61C(v4, qword_10099D6D8);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_10019C6DC()
{
  result = qword_10094BC38;
  if (!qword_10094BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BC38);
  }

  return result;
}

unint64_t sub_10019C730(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t static AppEventDetailPageLayout.prefersCompactAccessibilityLayout(in:)()
{
  if (sub_10077071C())
  {
    return sub_1007706EC() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t AppEventDetailPageLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10076D39C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppEventDetailPageLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = sub_10076D39C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppEventDetailPageLayout.Metrics.contentHorizontalMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 20);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.formattedDateTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 24);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleFormattedDateTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 28);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 32);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 36);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v6 = (v2 + *(result + 40));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppEventDetailPageLayout.Metrics.muteButtonSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 44);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 48);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleKindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 52);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 56);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.titleTrailingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 60);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleOverlayBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 64);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v6 = (v2 + *(result + 68));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 72);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonLeadingContentInset.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 76);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonBaseline.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 80);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.detailTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 84);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleDetailTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 88);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleContentContainerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 92);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.requirementsTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 96);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleRequirementsTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 100);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.notifyMeButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 104);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleNotifyMeButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 108);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.separatorTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 112);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.separatorBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 116);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleSeparatorTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 120);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleSeparatorBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 124);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.lockupBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 128);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleLockupBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 132);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.init(artworkAspectRatio:contentHorizontalMargin:formattedDateTopMargin:accessibleFormattedDateTopMargin:closeButtonTopMargin:closeButtonLeadingMargin:closeButtonSize:muteButtonSpace:kindTopSpace:accessibleKindTopSpace:titleTopSpace:titleTrailingMargin:accessibleOverlayBottomSpace:shareButtonSize:accessibleShareButtonTopSpace:shareButtonLeadingContentInset:shareButtonBaseline:detailTopSpace:accessibleDetailTopSpace:accessibleContentContainerTopSpace:requirementsTopSpace:accessibleRequirementsTopSpace:notifyMeButtonTopSpace:accessibleNotifyMeButtonTopSpace:separatorTopSpace:separatorBottomSpace:accessibleSeparatorTopSpace:accessibleSeparatorBottomSpace:lockupBottomSpace:accessibleLockupBottomSpace:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, __int128 *a21, __int128 *a22, __int128 *a23, __int128 *a24, __int128 *a25, __int128 *a26, __int128 *a27, __int128 *a28, __int128 *a29, __int128 *a30, __int128 *a31, __int128 *a32, __int128 *a33)
{
  v44 = sub_10076D39C();
  (*(*(v44 - 8) + 32))(a9, a1, v44);
  v45 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_100012498(a2, a9 + v45[5]);
  sub_100012498(a3, a9 + v45[6]);
  sub_100012498(a4, a9 + v45[7]);
  sub_100012498(a5, a9 + v45[8]);
  sub_100012498(a6, a9 + v45[9]);
  v46 = (a9 + v45[10]);
  *v46 = a10;
  v46[1] = a11;
  sub_100012498(a7, a9 + v45[11]);
  sub_100012498(a8, a9 + v45[12]);
  sub_100012498(a14, a9 + v45[13]);
  sub_100012498(a15, a9 + v45[14]);
  sub_100012498(a16, a9 + v45[15]);
  sub_100012498(a17, a9 + v45[16]);
  v47 = (a9 + v45[17]);
  *v47 = a12;
  v47[1] = a13;
  sub_100012498(a18, a9 + v45[18]);
  sub_100012498(a19, a9 + v45[19]);
  sub_100012498(a20, a9 + v45[20]);
  sub_100012498(a21, a9 + v45[21]);
  sub_100012498(a22, a9 + v45[22]);
  sub_100012498(a23, a9 + v45[23]);
  sub_100012498(a24, a9 + v45[24]);
  sub_100012498(a25, a9 + v45[25]);
  sub_100012498(a26, a9 + v45[26]);
  sub_100012498(a27, a9 + v45[27]);
  sub_100012498(a28, a9 + v45[28]);
  sub_100012498(a29, a9 + v45[29]);
  sub_100012498(a30, a9 + v45[30]);
  sub_100012498(a31, a9 + v45[31]);
  sub_100012498(a32, a9 + v45[32]);
  v48 = a9 + v45[33];

  return sub_100012498(a33, v48);
}

uint64_t sub_10019E1C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppEventDetailPageLayout.init(metrics:shadowView:cardContentView:borderView:contentContainerView:mediaContainerView:artworkView:videoView:gradientBlurView:mediaReplicationView:overlayContentContainerView:contentBackgroundBlurView:formattedDateView:closeButtonView:kindLabel:titleLabel:shareButtonView:detailLabel:requirementsLabel:notifyMeButton:separatorView:lockupView:isCollapsing:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, __int128 *a14, uint64_t a15, __int128 *a16, __int128 *a17, uint64_t a18, __int128 *a19, uint64_t a20, uint64_t a21, __int128 *a22, __int128 *a23, char a24)
{
  sub_10019EB78(a1, a9);
  v29 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_100012498(a2, a9 + v29[5]);
  sub_100012498(a3, a9 + v29[6]);
  sub_100012498(a4, a9 + v29[7]);
  sub_100012498(a5, a9 + v29[8]);
  sub_100012498(a6, a9 + v29[9]);
  sub_100012498(a7, a9 + v29[10]);
  v30 = a9 + v29[11];
  v31 = *(a8 + 16);
  *v30 = *a8;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a8 + 32);
  v32 = a9 + v29[12];
  v33 = *(a10 + 16);
  *v32 = *a10;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a10 + 32);
  v34 = a9 + v29[13];
  v35 = *(a11 + 16);
  *v34 = *a11;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a11 + 32);
  sub_100012498(a12, a9 + v29[14]);
  v36 = a9 + v29[15];
  v37 = *(a13 + 16);
  *v36 = *a13;
  *(v36 + 16) = v37;
  *(v36 + 32) = *(a13 + 32);
  sub_100012498(a14, a9 + v29[16]);
  v38 = a9 + v29[17];
  v39 = *(a15 + 16);
  *v38 = *a15;
  *(v38 + 16) = v39;
  *(v38 + 32) = *(a15 + 32);
  sub_100012498(a16, a9 + v29[18]);
  sub_100012498(a17, a9 + v29[19]);
  v40 = a9 + v29[20];
  v41 = *(a18 + 16);
  *v40 = *a18;
  *(v40 + 16) = v41;
  *(v40 + 32) = *(a18 + 32);
  sub_100012498(a19, a9 + v29[21]);
  v42 = a9 + v29[22];
  v43 = *(a20 + 16);
  *v42 = *a20;
  *(v42 + 16) = v43;
  *(v42 + 32) = *(a20 + 32);
  v44 = a9 + v29[23];
  v45 = *(a21 + 16);
  *v44 = *a21;
  *(v44 + 16) = v45;
  *(v44 + 32) = *(a21 + 32);
  sub_100012498(a22, a9 + v29[24]);
  result = sub_100012498(a23, a9 + v29[25]);
  *(a9 + v29[26]) = a24;
  return result;
}

uint64_t sub_10019EB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AppEventDetailPageLayout.prefersCompactAccessibilityTitleLayout(in:)(void *a1)
{
  if ((sub_1007706EC() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_10077087C();

  return v3 & 1;
}

uint64_t AppEventDetailPageLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 traitCollection];
  v11 = sub_1007706FC();

  if (v11)
  {
    sub_10019ED7C(a1, a2, a3, a4, a5);
    goto LABEL_8;
  }

  v12 = [a1 traitCollection];
  if (sub_10077071C())
  {
    v13 = sub_1007706EC();

    if (v13)
    {
      sub_1001A0774(a1, a2, a3, a4, a5);
      goto LABEL_8;
    }
  }

  else
  {
  }

  sub_1001A1E08(a1, v14, v15, a4, a5);
LABEL_8:

  return sub_10076D1BC();
}

uint64_t sub_10019ED7C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_10077164C();
  v13 = *(v12 - 1);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 traitCollection];
  LODWORD(v177) = sub_10077071C();

  v18 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10000CF78((*&v6 + v18[5]), *(*&v6 + v18[5] + 24));
  sub_10076D23C();
  sub_10000CF78((*&v6 + v18[6]), *(*&v6 + v18[6] + 24));
  sub_10076D23C();
  sub_10000CF78((*&v6 + v18[7]), *(*&v6 + v18[7] + 24));
  sub_10076D23C();
  sub_10000CF78((*&v6 + v18[8]), *(*&v6 + v18[8] + 24));
  sub_10076D23C();
  v190.origin.x = a2;
  v190.origin.y = a3;
  v190.size.width = a4;
  v190.size.height = a5;
  CGRectGetHeight(v190);
  sub_10076D35C();
  v20 = floor(v19) + 4.0;
  v191.origin.x = a2;
  v191.origin.y = a3;
  v191.size.width = a4;
  v191.size.height = a5;
  v21 = CGRectGetHeight(v191) + 4.0;
  sub_10000CF78((*&v6 + v18[9]), *(*&v6 + v18[9] + 24));
  v181 = a1;
  sub_100770A4C();
  sub_10076D23C();
  sub_10000CF78((*&v6 + v18[10]), *(*&v6 + v18[10] + 24));
  sub_10076D23C();
  sub_100016E2C(*&v6 + v18[11], v188, &unk_10094DA00);
  if (v189)
  {
    sub_10000CF78(v188, v189);
    sub_10076D23C();
    sub_10000CD74(v188);
  }

  else
  {
    sub_10000CFBC(v188, &unk_10094DA00);
  }

  sub_100016E2C(*&v6 + v18[13], v188, &unk_10094DA00);
  v179 = a2;
  if (v189)
  {
    sub_10000CF78(v188, v189);
    v192.origin.x = a2;
    v192.origin.y = a3;
    v192.size.width = a4;
    v192.size.height = a5;
    CGRectGetWidth(v192);
    v193.origin.x = v179;
    v193.origin.y = a3;
    v193.size.width = a4;
    v193.size.height = a5;
    CGRectGetHeight(v193);
    a2 = v179;
    sub_10076D23C();
    sub_10000CD74(v188);
  }

  else
  {
    sub_10000CFBC(v188, &unk_10094DA00);
  }

  v194.origin.x = 0.0;
  v194.origin.y = 0.0;
  v194.size.width = v20;
  v194.size.height = v21;
  v22 = CGRectGetMaxX(v194) + -4.0;
  v195.origin.x = a2;
  v195.origin.y = a3;
  v195.size.width = a4;
  v195.size.height = a5;
  Width = CGRectGetWidth(v195);
  v196.origin.x = 0.0;
  v196.origin.y = 0.0;
  v196.size.width = v20;
  v196.size.height = v21;
  v24 = Width - CGRectGetWidth(v196) + 4.0;
  v197.origin.x = a2;
  v197.origin.y = a3;
  v197.size.width = a4;
  v197.size.height = a5;
  v25 = CGRectGetHeight(v197) + 4.0;
  sub_10000CF78((*&v6 + v18[14]), *(*&v6 + v18[14] + 24));
  sub_100770A4C();
  sub_10076D23C();
  v26 = v18[15];
  v176 = v6;
  sub_100016E2C(*&v6 + v26, v188, &unk_10094DA00);
  v180 = v12;
  v174 = a5;
  v175 = a3;
  if (v189)
  {
    sub_10000CF78(v188, v189);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v188);
  }

  else
  {
    sub_10000CFBC(v188, &unk_10094DA00);
  }

  v27 = a4;
  *&v28 = COERCE_DOUBLE(type metadata accessor for AppEventDetailPageLayout.Metrics(0));
  v29 = v176;
  sub_10000CF78((*&v176 + v28[5]), *(*&v176 + v28[5] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v31 = v30;
  v32 = *(v13 + 8);
  *&v183 = v13 + 8;
  v33 = v180;
  v32(v16, v180);
  v198.origin.y = 0.0;
  v198.origin.x = v22;
  v198.size.width = v24;
  v198.size.height = v25;
  v34 = CGRectGetWidth(v198) - (v31 + v31);
  v199.origin.y = 0.0;
  v199.origin.x = v22;
  v199.size.width = v24;
  v199.size.height = v25;
  Height = CGRectGetHeight(v199);
  v36 = v28[9];
  v37 = (*&v29 + v28[10]);
  v38 = *v37;
  v166 = *(v37 + 1);
  v167 = v38;
  sub_10000CF78((*&v29 + v36), *(*&v29 + v36 + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v32(v16, v33);
  v200.origin.y = 0.0;
  v200.origin.x = v31;
  v200.size.width = v34;
  v200.size.height = Height;
  CGRectGetHeight(v200);
  v39 = (*&v29 + v18[16]);
  v185 = v18;
  sub_10000CF78(v39, v39[3]);
  sub_10076D2AC();
  v41 = v40;
  v43 = v42;
  sub_10000CF78((*&v29 + v28[6]), *(*&v29 + v28[6] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v45 = v44;
  v32(v16, v33);
  v201.origin.y = 0.0;
  v201.origin.x = v31;
  v201.size.width = v34;
  v201.size.height = Height;
  MinX = CGRectGetMinX(v201);
  v202.origin.y = 0.0;
  v202.origin.x = v31;
  v202.size.width = v34;
  v202.size.height = Height;
  v47 = v45 + CGRectGetMinY(v202);
  sub_10000CF78(v39, v39[3]);
  v168 = MinX;
  v172 = v41;
  v171 = v43;
  sub_100770A4C();
  v48 = v33;
  sub_10076D23C();
  v178 = v28;
  sub_10000CF78((*&v29 + v28[8]), *(*&v29 + v28[8] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v173 = v16;
  v184 = *&v32;
  v32(v16, v33);
  v203.origin.x = v179;
  v203.origin.y = v175;
  v203.size.width = v27;
  v203.size.height = v174;
  CGRectGetMaxX(v203);
  v204.origin.y = 0.0;
  v204.origin.x = v31;
  v169 = v34;
  v204.size.width = v34;
  v182 = Height;
  v204.size.height = Height;
  CGRectGetMinY(v204);
  sub_100016E2C(*&v29 + v185[17], v188, &unk_10094DA00);
  v49 = v31;
  if (v189)
  {
    sub_10000CF78(v188, v189);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v188);
  }

  else
  {
    sub_10000CFBC(v188, &unk_10094DA00);
  }

  v205.origin.x = v168;
  v205.origin.y = v47;
  v205.size.width = v172;
  v205.size.height = v171;
  MaxY = CGRectGetMaxY(v205);
  v51 = v176;
  v52 = (*&v176 + v178[17]);
  v53 = v52[1];
  v171 = *v52;
  sub_10000CF78((*&v176 + v178[20]), *(*&v176 + v178[20] + 24));
  v54 = v173;
  sub_1000FF02C();
  sub_10076D40C();
  v168 = v55;
  v56 = v184;
  (*&v184)(v54, v48);
  v57 = v185;
  *&v172 = v185[20];
  sub_100016E2C(*&v51 + *&v172, &v186, &unk_10094DA00);
  v58 = v169;
  v170 = v27;
  v167 = v53;
  if (v187)
  {
    sub_100012498(&v186, v188);
    v59 = v49;
    if (LOBYTE(v177))
    {
      v60 = v51;
      v61 = v178;
      sub_10000CF78((*&v60 + v178[18]), *(*&v60 + v178[18] + 24));
      sub_1000FF02C();
      sub_10076D40C();
      v63 = v62;
      (*&v56)(v54, v48);
      sub_10000CF78((*&v176 + v61[19]), *(*&v176 + v61[19] + 24));
      sub_1000FF02C();
      sub_10076D40C();
      v65 = v64;
      (*&v56)(v54, v48);
      v206.origin.y = 0.0;
      v206.origin.x = v49;
      v206.size.width = v58;
      v66 = v182;
      v206.size.height = v182;
      v67 = CGRectGetMinX(v206) - v65;
      v68 = MaxY + v63;
      sub_10000CF78(v188, v189);
      v51 = v176;
      v69 = v171;
      sub_100770A4C();
      v57 = v185;
      sub_10076D23C();
      v207.origin.x = v67;
      v207.origin.y = v68;
      v207.size.width = v69;
      v207.size.height = v53;
      MaxY = CGRectGetMaxY(v207) - v168;
      sub_10000CD74(v188);
      goto LABEL_19;
    }

    sub_10000CD74(v188);
  }

  else
  {
    sub_10000CFBC(&v186, &unk_10094DA00);
    v59 = v49;
  }

  v66 = v182;
LABEL_19:
  v70 = (*&v51 + v57[18]);
  sub_10000CF78(v70, v70[3]);
  sub_10076D2AC();
  v72 = v71;
  v74 = v73;
  v75 = 12;
  if (LOBYTE(v177))
  {
    v75 = 13;
  }

  v76 = v178;
  sub_10000CF78((*&v51 + v178[v75]), *(*&v51 + v178[v75] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v78 = v77;
  v79 = v180;
  (*&v184)(v54, v180);
  v208.origin.y = 0.0;
  v208.origin.x = v59;
  v208.size.width = v58;
  v208.size.height = v66;
  v80 = CGRectGetMinX(v208);
  sub_10000CF78(v70, v70[3]);
  sub_100770A4C();
  sub_10076D23C();
  v209.origin.x = v80;
  v209.origin.y = MaxY + v78;
  v209.size.width = v72;
  v209.size.height = v74;
  v81 = CGRectGetMaxY(v209);
  sub_100016E2C(*&v51 + *&v172, v188, &unk_10094DA00);
  v82 = v189 == 0;
  sub_10000CFBC(v188, &unk_10094DA00);
  if (((v82 | LODWORD(v177)) & 1) == 0)
  {
    sub_10000CF78((*&v51 + v76[15]), *(*&v51 + v76[15] + 24));
    sub_1000FF02C();
    sub_10076D40C();
    (*&v184)(v54, v79);
  }

  v210.origin.y = 0.0;
  v210.origin.x = v59;
  v210.size.width = v58;
  v83 = v58;
  v84 = v59;
  v85 = v182;
  v210.size.height = v182;
  CGRectGetHeight(v210);
  v86 = (*&v51 + v185[19]);
  sub_10000CF78(v86, v86[3]);
  sub_10076D2AC();
  v88 = v87;
  v90 = v89;
  v166 = v91;
  sub_10000CF78((*&v51 + v76[14]), *(*&v51 + v76[14] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v93 = v92;
  (*&v184)(v54, v79);
  v211.origin.y = 0.0;
  v211.origin.x = v84;
  v211.size.width = v83;
  v211.size.height = v85;
  v94 = CGRectGetMinX(v211);
  v95 = v81 + v93;
  sub_10000CF78(v86, v86[3]);
  v176 = v84;
  sub_100770A4C();
  sub_10076D23C();
  v212.origin.x = v94;
  v212.origin.y = v95;
  v212.size.width = v88;
  v212.size.height = v90;
  v96 = CGRectGetMaxY(v212);
  sub_100016E2C(*&v51 + *&v172, &v186, &unk_10094DA00);
  if (v187)
  {
    sub_100012498(&v186, v188);
    if ((LOBYTE(v177) & 1) == 0)
    {
      v213.origin.x = v94;
      v213.origin.y = v95;
      v213.size.width = v88;
      v213.size.height = v90;
      CGRectGetMinY(v213);
      v214.origin.y = 0.0;
      v214.origin.x = v176;
      v214.size.width = v83;
      v214.size.height = v182;
      CGRectGetMaxX(v214);
      sub_10000CF78(v188, v189);
      sub_100770A4C();
      sub_10076D23C();
    }

    sub_10000CD74(v188);
  }

  else
  {
    sub_10000CFBC(&v186, &unk_10094DA00);
  }

  v97 = v184;
  v98 = v173;
  v99 = v178;
  v100 = (*&v51 + v185[21]);
  sub_10000CF78(v100, v100[3]);
  v101 = v182;
  sub_10076D2AC();
  v103 = v102;
  v105 = v104;
  sub_10000CF78((*&v51 + v99[21]), *(*&v51 + v99[21] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v107 = v106;
  (*&v97)(v98, v180);
  v215.origin.y = 0.0;
  v215.origin.x = v176;
  v215.size.width = v83;
  v215.size.height = v101;
  v108 = CGRectGetMinX(v215);
  v109 = v185;
  sub_10000CF78(v100, v100[3]);
  v110 = v83;
  sub_100770A4C();
  sub_10076D23C();
  v216.origin.x = v108;
  v216.origin.y = v96 + v107;
  v216.size.width = v103;
  v216.size.height = v105;
  v111 = CGRectGetMaxY(v216);
  sub_100016E2C(*&v51 + v109[22], &v186, &qword_10094BB30);
  if (v187)
  {
    sub_100012498(&v186, v188);
    sub_10000CF78(v188, v189);
    if (sub_10076D24C())
    {
      sub_10000CD74(v188);
      v112 = v180;
    }

    else
    {
      sub_10000CF78(v188, v189);
      v113 = sub_10076D20C();
      v112 = v180;
      if (v113)
      {
        sub_10000CF78(v188, v189);
        v114 = v182;
        sub_10076D2AC();
        v116 = v115;
        v118 = v117;
        sub_10000CF78((*&v51 + v99[24]), *(*&v51 + v99[24] + 24));
        sub_1000FF02C();
        sub_10076D40C();
        v120 = v119;
        (*&v184)(v98, v112);
        v217.origin.y = 0.0;
        v217.origin.x = v176;
        v217.size.width = v83;
        v217.size.height = v114;
        v121 = CGRectGetMinX(v217);
        sub_10000CF78(v188, v189);
        v110 = v83;
        sub_100770A4C();
        sub_10076D23C();
        v218.origin.x = v121;
        v218.origin.y = v111 + v120;
        v218.size.width = v116;
        v218.size.height = v118;
        v111 = CGRectGetMaxY(v218);
      }

      sub_10000CD74(v188);
    }

    v109 = v185;
  }

  else
  {
    sub_10000CFBC(&v186, &qword_10094BB30);
    v112 = v180;
  }

  sub_100016E2C(*&v51 + v109[23], &v186, &unk_10094DA00);
  if (v187)
  {
    sub_100012498(&v186, v188);
    sub_10000CF78(v188, v189);
    v122 = sub_10076D24C();
    v123 = v184;
    if (v122)
    {
      v177 = v111;
    }

    else
    {
      sub_10000CF78(v188, v189);
      v124 = v182;
      sub_10076D2AC();
      v126 = v125;
      v128 = v127;
      sub_10000CF78((*&v51 + v99[26]), *(*&v51 + v99[26] + 24));
      sub_1000FF02C();
      sub_10076D40C();
      v130 = v129;
      (*&v123)(v98, v112);
      v219.origin.y = 0.0;
      v219.origin.x = v176;
      v219.size.width = v83;
      v219.size.height = v124;
      v131 = CGRectGetMinX(v219);
      sub_10000CF78(v188, v189);
      v110 = v83;
      sub_100770A4C();
      sub_10076D23C();
      v220.origin.x = v131;
      v220.origin.y = v111 + v130;
      v220.size.width = v126;
      v220.size.height = v128;
      v177 = CGRectGetMaxY(v220);
    }

    sub_10000CD74(v188);
  }

  else
  {
    v177 = v111;
    sub_10000CFBC(&v186, &unk_10094DA00);
    v123 = v184;
  }

  sub_10000CF78((*&v51 + v99[32]), *(*&v51 + v99[32] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v133 = v132;
  (*&v123)(v98, v112);
  v134 = (*&v51 + v185[25]);
  v135 = v112;
  v136 = v134[3];
  v180 = v134;
  sub_10000CF78(v134, v136);
  v137 = v182;
  sub_10076D2AC();
  v139 = v138;
  sub_10000CF78((*&v51 + v99[29]), *(*&v51 + v99[29] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v141 = v140;
  (*&v123)(v98, v112);
  sub_10000CF78((*&v51 + v99[28]), *(*&v51 + v99[28] + 24));
  sub_1000FF02C();
  v142 = v181;
  sub_10076D40C();
  v144 = v143;
  (*&v123)(v98, v135);
  v145 = [v142 traitCollection];
  sub_10076E20C();
  v147 = v146;

  *&v178 = v147;
  v183 = v141;
  v184 = v139;
  v148 = v133;
  v149 = v133 + v139 + v141 + v144 + v147;
  v150 = v177;
  v151 = v177 + v149;
  v221.origin.x = v179;
  v221.origin.y = v175;
  v221.size.width = v170;
  v221.size.height = v174;
  v152 = CGRectGetHeight(v221);
  v222.origin.y = 0.0;
  v153 = v110;
  v154 = v176;
  v222.origin.x = v176;
  v222.size.width = v153;
  v222.size.height = v137;
  v179 = CGRectGetMinX(v222);
  if (v152 >= v151)
  {
    v227.origin.y = 0.0;
    v227.origin.x = v154;
    v227.size.width = v153;
    v227.size.height = v137;
    v159 = CGRectGetHeight(v227);
    v160 = v184;
    v161 = v159 - v184 - v148;
    v228.origin.y = 0.0;
    v228.origin.x = v154;
    v228.size.width = v153;
    v228.size.height = v137;
    v162 = CGRectGetWidth(v228);
    sub_10000CF78(v180, v180[3]);
    v163 = v179;
    sub_100770A4C();
    sub_10076D23C();
    v229.origin.y = 0.0;
    v229.origin.x = v154;
    v229.size.width = v153;
    v229.size.height = v137;
    CGRectGetMinX(v229);
    v230.origin.x = v163;
    v230.origin.y = v161;
    v230.size.width = v162;
    v230.size.height = v160;
    CGRectGetMinY(v230);
    v231.origin.y = 0.0;
    v231.origin.x = v154;
    v231.size.width = v153;
    v231.size.height = v137;
    CGRectGetWidth(v231);
    sub_10000CF78((*&v51 + v185[24]), *(*&v51 + v185[24] + 24));
  }

  else
  {
    v155 = v150 + v144;
    v223.origin.y = 0.0;
    v223.origin.x = v154;
    v223.size.width = v153;
    v223.size.height = v137;
    v156 = CGRectGetWidth(v223);
    sub_10000CF78((*&v51 + v185[24]), *(*&v51 + v185[24] + 24));
    v157 = v179;
    v158 = *&v178;
    sub_100770A4C();
    sub_10076D23C();
    v224.origin.y = 0.0;
    v224.origin.x = v154;
    v224.size.width = v153;
    v224.size.height = v137;
    CGRectGetMinX(v224);
    v225.origin.x = v157;
    v225.origin.y = v155;
    v225.size.width = v156;
    v225.size.height = v158;
    CGRectGetMaxY(v225);
    v226.origin.y = 0.0;
    v226.origin.x = v154;
    v226.size.width = v153;
    v226.size.height = v137;
    CGRectGetWidth(v226);
    sub_10000CF78(v180, v180[3]);
  }

  sub_100770A4C();
  return sub_10076D23C();
}

uint64_t sub_1001A0774(void *a1, double a2, double a3, CGFloat a4, double a5)
{
  v178 = sub_10077164C();
  v11 = *(v178 - 8);
  __chkstk_darwin(v178);
  v13 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D36C();
  v15 = v14;
  v16 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10000CF78((v5 + v16[9]), *(v5 + v16[9] + 24));
  sub_10076D23C();
  v191.origin.x = 0.0;
  v191.origin.y = 0.0;
  v191.size.width = a4;
  v191.size.height = v15;
  CGRectGetWidth(v191);
  v192.origin.x = 0.0;
  v192.origin.y = 0.0;
  v192.size.width = a4;
  v177 = v15;
  v192.size.height = v15;
  CGRectGetHeight(v192);
  sub_10000CF78((v5 + v16[10]), *(v5 + v16[10] + 24));
  sub_10076D23C();
  sub_100016E2C(v5 + v16[11], v189, &unk_10094DA00);
  if (v190)
  {
    sub_10000CF78(v189, v190);
    sub_10076D23C();
    sub_10000CD74(v189);
  }

  else
  {
    sub_10000CFBC(v189, &unk_10094DA00);
  }

  sub_100016E2C(v5 + v16[12], v189, &unk_10094DA00);
  if (v190)
  {
    sub_10000CF78(v189, v190);
    sub_10076D23C();
    sub_10000CD74(v189);
  }

  else
  {
    sub_10000CFBC(v189, &unk_10094DA00);
  }

  sub_10000CF78((v5 + v16[14]), *(v5 + v16[14] + 24));
  sub_10076D23C();
  v17 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v183 = v16;
  v18 = v17;
  sub_10000CF78((v5 + *(v17 + 20)), *(v5 + *(v17 + 20) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v20 = v19;
  v21 = *(v11 + 8);
  v22 = v178;
  v21(v13, v178);
  v23 = sub_100102A30(a2, a3, a4, a5, 0.0, v20);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10000CF78((v5 + v18[8]), *(v5 + v18[8] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v173 = v30;
  v174 = v13;
  v175 = v21;
  v21(v13, v22);
  v182 = v18;
  v31 = v18[10];
  v32 = v183;
  v176 = *(v5 + v31 + 8);
  v193.origin.x = v23;
  v193.origin.y = v25;
  v193.size.width = v27;
  v184 = v29;
  v193.size.height = v29;
  CGRectGetMinY(v193);
  v33 = v32[17];
  v186 = v5;
  sub_100016E2C(v5 + v33, v189, &unk_10094DA00);
  v185 = v11 + 8;
  v181 = v23;
  if (v190)
  {
    sub_10000CF78(v189, v190);
    v34 = v184;
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v189);
    v35 = a4;
    v36 = v34;
  }

  else
  {
    sub_10000CFBC(v189, &unk_10094DA00);
    v35 = a4;
    v36 = v184;
  }

  v179 = v25;
  v37 = v178;
  v38 = 0;
  v39 = 0;
  v176 = v35;
  v40 = v177;
  Height = CGRectGetHeight(*(&v35 - 2));
  v42 = (v186 + v32[18]);
  sub_10000CF78(v42, v42[3]);
  sub_10076D2AC();
  v173 = v43;
  v45 = v44;
  v46 = a1;
  v47 = [a1 traitCollection];
  v48 = sub_1007706EC();
  v49 = v27;
  v180 = v27;
  v50 = v174;
  if (v48)
  {
    v51 = [v47 preferredContentSizeCategory];
    v52 = sub_10077087C();

    v53 = v181;
    if (v52)
    {
      v54 = 16;
      v55 = v37;
      v56 = v175;
      v57 = v46;
      goto LABEL_15;
    }
  }

  else
  {

    v53 = v181;
  }

  v58 = v186;
  v59 = (v186 + v183[19]);
  sub_10000CF78(v59, v59[3]);
  v57 = v46;
  sub_10076D2AC();
  v61 = v60;
  v63 = v62;
  sub_10000CF78((v58 + v182[16]), *(v58 + v182[16] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v65 = v64;
  v66 = v37;
  v55 = v37;
  v56 = v175;
  v175(v50, v66);
  v67 = Height - v65 - v63;
  v194.origin.x = v53;
  v194.origin.y = v179;
  v194.size.width = v180;
  v194.size.height = v184;
  MinX = CGRectGetMinX(v194);
  sub_10000CF78(v59, v59[3]);
  sub_100770A4C();
  sub_10076D23C();
  v195.origin.x = MinX;
  v195.origin.y = v67;
  v195.size.width = v61;
  v49 = v180;
  v36 = v184;
  v195.size.height = v63;
  Height = CGRectGetMinY(v195);
  v54 = 14;
LABEL_15:
  v69 = v182;
  sub_10000CF78((v186 + v182[v54]), *(v186 + v182[v54] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v71 = v70;
  v72 = v56;
  v56(v50, v55);
  v73 = Height - v71 - v45;
  v196.origin.x = v53;
  v74 = v179;
  v196.origin.y = v179;
  v196.size.width = v49;
  v196.size.height = v36;
  v75 = CGRectGetMinX(v196);
  sub_10000CF78(v42, v42[3]);
  v76 = v173;
  sub_100770A4C();
  sub_10076D23C();
  v77 = v186;
  sub_10000CF78((v186 + v69[13]), *(v186 + v69[13] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v79 = v78;
  v56(v50, v55);
  v197.origin.x = v75;
  v197.origin.y = v73;
  v197.size.width = v76;
  v197.size.height = v45;
  v80 = CGRectGetMinY(v197) - v79;
  v81 = v183;
  v82 = (v77 + v183[16]);
  sub_10000CF78(v82, v82[3]);
  sub_10076D2AC();
  v84 = v83;
  v86 = v85;
  v87 = v80 - v85;
  v198.origin.x = v181;
  v198.origin.y = v74;
  v198.size.width = v49;
  v198.size.height = v36;
  v88 = CGRectGetMinX(v198);
  sub_10000CF78(v82, v82[3]);
  sub_100770A4C();
  sub_10076D23C();
  sub_10000CF78((v77 + v182[7]), *(v77 + v182[7] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v56(v50, v55);
  v199.origin.x = v88;
  v89 = v181;
  v199.origin.y = v87;
  v199.size.width = v84;
  v199.size.height = v86;
  CGRectGetMinY(v199);
  sub_100016E2C(v77 + v81[20], &v187, &unk_10094DA00);
  v90 = v55;
  if (v188)
  {
    sub_100012498(&v187, v189);
    v91 = v182;
    sub_10000CF78((v186 + v182[20]), *(v186 + v182[20] + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v72(v50, v55);
    v200.origin.x = v89;
    v200.origin.y = v179;
    v200.size.width = v180;
    v200.size.height = v184;
    CGRectGetMinX(v200);
    sub_10000CF78(v189, v190);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v189);
    v92 = v176;
  }

  else
  {
    sub_10000CFBC(&v187, &unk_10094DA00);
    v92 = v176;
    v91 = v182;
  }

  v93 = 0;
  v94 = 0;
  v95 = v177;
  MaxY = CGRectGetMaxY(*(&v92 - 2));
  v97 = [v57 traitCollection];
  if (sub_1007706EC())
  {
    v98 = [v97 preferredContentSizeCategory];
    v99 = sub_10077087C();

    if (v99)
    {
      v100 = v186;
      v101 = (v186 + v183[19]);
      sub_10000CF78(v101, v101[3]);
      v102 = v180;
      v103 = v184;
      sub_10076D2AC();
      v105 = v104;
      v177 = v106;
      sub_10000CF78((v100 + v91[23]), *(v100 + v91[23] + 24));
      sub_1000FF02C();
      sub_10076D40C();
      v108 = v107;
      v72(v50, v90);
      v201.origin.x = v181;
      v201.origin.y = v179;
      v201.size.width = v102;
      v201.size.height = v103;
      v109 = CGRectGetMinX(v201);
      v110 = MaxY + v108;
      sub_10000CF78(v101, v101[3]);
      v111 = v177;
      sub_100770A4C();
      sub_10076D23C();
      sub_10000CF78((v100 + v91[22]), *(v100 + v91[22] + 24));
      sub_1000FF02C();
      sub_10076D40C();
      v113 = v112;
      v114 = v178;
      (v72)(v50);
      v202.origin.x = v109;
      v202.origin.y = v110;
      v202.size.width = v105;
      v202.size.height = v111;
      v177 = CGRectGetMaxY(v202);
      goto LABEL_23;
    }
  }

  else
  {
  }

  v177 = MaxY;
  sub_10000CF78((v186 + v91[23]), *(v186 + v91[23] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v113 = v115;
  v114 = v55;
  v72(v50, v55);
LABEL_23:
  v116 = v183;
  v117 = v186;
  v118 = (v186 + v183[21]);
  sub_10000CF78(v118, v118[3]);
  v119 = v180;
  v120 = v184;
  sub_10076D2AC();
  v122 = v121;
  v124 = v123;
  v203.origin.x = v181;
  v203.origin.y = v179;
  v203.size.width = v119;
  v203.size.height = v120;
  v125 = CGRectGetMinX(v203);
  v126 = v113 + v177;
  sub_10000CF78(v118, v118[3]);
  sub_100770A4C();
  sub_10076D23C();
  v204.origin.x = v125;
  v204.origin.y = v126;
  v204.size.width = v122;
  v204.size.height = v124;
  v127 = CGRectGetMaxY(v204);
  sub_100016E2C(v117 + v116[22], &v187, &qword_10094BB30);
  if (!v188)
  {
    sub_10000CFBC(&v187, &qword_10094BB30);
    goto LABEL_27;
  }

  sub_100012498(&v187, v189);
  sub_10000CF78(v189, v190);
  if (sub_10076D24C())
  {
    sub_10000CD74(v189);
LABEL_27:
    v128 = v182;
    goto LABEL_31;
  }

  sub_10000CF78(v189, v190);
  v129 = sub_10076D20C();
  v128 = v182;
  if (v129)
  {
    sub_10000CF78(v189, v190);
    v130 = v180;
    v131 = v184;
    sub_10076D2AC();
    v177 = v132;
    v134 = v133;
    sub_10000CF78((v186 + v128[25]), *(v186 + v128[25] + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v136 = v135;
    v72(v50, v114);
    v205.origin.x = v181;
    v205.origin.y = v179;
    v205.size.width = v130;
    v205.size.height = v131;
    v137 = CGRectGetMinX(v205);
    sub_10000CF78(v189, v190);
    v138 = v177;
    sub_100770A4C();
    sub_10076D23C();
    v206.origin.x = v137;
    v206.origin.y = v127 + v136;
    v206.size.width = v138;
    v206.size.height = v134;
    v127 = CGRectGetMaxY(v206);
  }

  sub_10000CD74(v189);
LABEL_31:
  sub_100016E2C(v186 + v183[23], &v187, &unk_10094DA00);
  if (v188)
  {
    sub_100012498(&v187, v189);
    sub_10000CF78(v189, v190);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000CF78(v189, v190);
      v177 = v127;
      v139 = v180;
      v140 = v184;
      sub_10076D2AC();
      v142 = v141;
      v144 = v143;
      sub_10000CF78((v186 + v128[27]), *(v186 + v128[27] + 24));
      sub_1000FF02C();
      sub_10076D40C();
      v146 = v145;
      v72(v50, v114);
      v207.origin.x = v181;
      v207.origin.y = v179;
      v207.size.width = v139;
      v207.size.height = v140;
      v147 = CGRectGetMinX(v207);
      v148 = v177 + v146;
      sub_10000CF78(v189, v190);
      sub_100770A4C();
      sub_10076D23C();
      v208.origin.x = v147;
      v208.origin.y = v148;
      v208.size.width = v142;
      v208.size.height = v144;
      v127 = CGRectGetMaxY(v208);
    }

    sub_10000CD74(v189);
  }

  else
  {
    sub_10000CFBC(&v187, &unk_10094DA00);
  }

  v149 = v186;
  sub_10000CF78((v186 + v128[30]), *(v186 + v128[30] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v151 = v150;
  v72(v50, v114);
  v152 = [v57 traitCollection];
  sub_10076E20C();
  v154 = v153;

  v155 = v181;
  v209.origin.x = v181;
  v156 = v179;
  v209.origin.y = v179;
  v157 = v180;
  v209.size.width = v180;
  v158 = v184;
  v209.size.height = v184;
  v159 = CGRectGetMinX(v209);
  v177 = v127 + v151;
  v210.origin.x = v155;
  v210.origin.y = v156;
  v210.size.width = v157;
  v210.size.height = v158;
  Width = CGRectGetWidth(v210);
  v161 = v183;
  sub_10000CF78((v149 + v183[24]), *(v149 + v183[24] + 24));
  sub_100770A4C();
  sub_10076D23C();
  sub_10000CF78((v149 + v128[31]), *(v149 + v128[31] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v163 = v162;
  v72(v50, v114);
  v211.origin.x = v159;
  v211.origin.y = v177;
  v211.size.width = Width;
  v211.size.height = v154;
  v164 = v163 + CGRectGetMaxY(v211);
  v165 = v161;
  v166 = (v149 + v161[25]);
  sub_10000CF78(v166, v166[3]);
  sub_10076D2AC();
  v168 = v167;
  v212.origin.x = v155;
  v212.origin.y = v156;
  v212.size.width = v157;
  v212.size.height = v158;
  v169 = CGRectGetMinX(v212);
  v213.origin.x = v155;
  v213.origin.y = v156;
  v213.size.width = v157;
  v213.size.height = v158;
  v170 = CGRectGetWidth(v213);
  sub_10000CF78(v166, v166[3]);
  sub_100770A4C();
  sub_10076D23C();
  sub_10000CF78((v149 + v182[33]), *(v149 + v182[33] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v175(v50, v178);
  v214.origin.x = v169;
  v214.origin.y = v164;
  v214.size.width = v170;
  v214.size.height = v168;
  CGRectGetMaxY(v214);
  sub_10000CF78((v149 + v165[8]), *(v149 + v165[8] + 24));
  sub_10076D23C();
  sub_10000CF78((v149 + v165[5]), *(v149 + v165[5] + 24));
  sub_10076D23C();
  sub_10000CF78((v149 + v165[6]), *(v149 + v165[6] + 24));
  sub_10076D23C();
  sub_10000CF78((v149 + v165[7]), *(v149 + v165[7] + 24));
  return sub_10076D23C();
}

uint64_t sub_1001A1E08(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v125 = sub_10077164C();
  v10 = *(v125 - 8);
  __chkstk_darwin(v125);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D36C();
  if (v13 >= a5)
  {
    v13 = a5;
  }

  v14 = floor(v13);
  v15 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10000CF78((v5 + v15[5]), *(v5 + v15[5] + 24));
  sub_10076D23C();
  sub_10000CF78((v5 + v15[6]), *(v5 + v15[6] + 24));
  sub_10076D23C();
  sub_10000CF78((v5 + v15[7]), *(v5 + v15[7] + 24));
  sub_10076D23C();
  sub_10000CF78((v5 + v15[8]), *(v5 + v15[8] + 24));
  sub_10076D23C();
  sub_10000CF78((v5 + v15[9]), *(v5 + v15[9] + 24));
  sub_10076D23C();
  sub_10000CF78((v5 + v15[10]), *(v5 + v15[10] + 24));
  sub_10076D23C();
  sub_100016E2C(v5 + v15[11], v132, &unk_10094DA00);
  if (v133)
  {
    sub_10000CF78(v132, v133);
    sub_10076D23C();
    sub_10000CD74(v132);
  }

  else
  {
    sub_10000CFBC(v132, &unk_10094DA00);
  }

  sub_100016E2C(v5 + v15[12], v132, &unk_10094DA00);
  if (v133)
  {
    sub_10000CF78(v132, v133);
    sub_10076D23C();
    sub_10000CD74(v132);
  }

  else
  {
    sub_10000CFBC(v132, &unk_10094DA00);
  }

  sub_10000CF78((v5 + v15[14]), *(v5 + v15[14] + 24));
  sub_10076D23C();
  v16 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v128 = v15;
  v17 = v16;
  sub_10000CF78((v5 + *(v16 + 20)), *(v5 + *(v16 + 20) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v19 = v18;
  v20 = *(v10 + 8);
  v129 = v10 + 8;
  v21 = v125;
  v20(v12, v125);
  MinX = v19;
  v22 = sub_100102A30(0.0, 0.0, a4, v14, 0.0, v19);
  v121 = a4;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v17[9];
  v31 = (v5 + v17[10]);
  v32 = *v31;
  v122 = v31[1];
  v123 = v32;
  sub_10000CF78((v5 + v30), *(v5 + v30 + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v20(v12, v21);
  sub_10000CF78((v5 + v17[11]), *(v5 + v17[11] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v20(v12, v21);
  v134.origin.x = v23;
  v134.origin.y = v25;
  v134.size.width = v27;
  v134.size.height = v29;
  CGRectGetHeight(v134);
  v33 = (v5 + v128[16]);
  sub_10000CF78(v33, v33[3]);
  sub_10076D2AC();
  sub_10000CF78((v5 + v17[6]), *(v5 + v17[6] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v20(v12, v21);
  v34 = v23;
  v135.origin.x = v23;
  v135.origin.y = v25;
  v135.size.width = v27;
  v135.size.height = v29;
  CGRectGetMinX(v135);
  v136.origin.x = v23;
  v136.origin.y = v25;
  v136.size.width = v27;
  v136.size.height = v29;
  CGRectGetMinY(v136);
  sub_10000CF78(v33, v33[3]);
  v35 = v27;
  sub_100770A4C();
  sub_10076D23C();
  v127 = v17;
  v36 = v17[8];
  v37 = v128;
  sub_10000CF78((v5 + v36), *(v5 + v36 + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v126 = v20;
  v20(v12, v21);
  v137.origin.x = v34;
  v137.origin.y = v25;
  v137.size.width = v27;
  v137.size.height = v29;
  CGRectGetMinY(v137);
  sub_100016E2C(v5 + v37[17], v132, &unk_10094DA00);
  if (v133)
  {
    sub_10000CF78(v132, v133);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v132);
  }

  else
  {
    sub_10000CFBC(v132, &unk_10094DA00);
  }

  v38 = (v5 + v37[25]);
  sub_10000CF78(v38, v38[3]);
  sub_10076D2AC();
  v40 = v39;
  v41 = v127;
  sub_10000CF78((v5 + v127[32]), *(v5 + v127[32] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v43 = v42;
  v44 = v125;
  v126(v12, v125);
  v138.origin.x = v34;
  v138.origin.y = v25;
  v138.size.width = v35;
  v138.size.height = v29;
  MinX = CGRectGetMinX(v138);
  v139.origin.x = v34;
  v139.origin.y = v25;
  v139.size.width = v35;
  v139.size.height = v29;
  Height = CGRectGetHeight(v139);
  v123 = v40;
  v122 = Height - v40 - v43;
  v140.origin.x = v34;
  v140.origin.y = v25;
  v140.size.width = v35;
  v140.size.height = v29;
  Width = CGRectGetWidth(v140);
  sub_10000CF78(v38, v38[3]);
  sub_100770A4C();
  v47 = v44;
  v48 = v128;
  sub_10076D23C();
  sub_10000CF78((v5 + v41[29]), *(v5 + v41[29] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v50 = v49;
  v51 = v47;
  v52 = v126;
  v126(v12, v51);
  v53 = [a1 traitCollection];
  sub_10076E20C();
  v55 = v54;

  v141.origin.x = v34;
  v141.origin.y = v25;
  v141.size.width = v35;
  v141.size.height = v29;
  v56 = CGRectGetMinX(v141);
  v142.origin.x = MinX;
  v142.origin.y = v122;
  v142.size.width = Width;
  v57 = v34;
  v142.size.height = v123;
  v58 = CGRectGetMinY(v142) - v50 - v55;
  v143.origin.x = v57;
  v143.origin.y = v25;
  v143.size.width = v35;
  v143.size.height = v29;
  v59 = CGRectGetWidth(v143);
  sub_10000CF78((v6 + v48[24]), *(v6 + v48[24] + 24));
  MinX = v57;
  sub_100770A4C();
  sub_10076D23C();
  v144.origin.x = v56;
  v144.origin.y = v58;
  v144.size.width = v59;
  v144.size.height = v55;
  MinY = CGRectGetMinY(v144);
  v61 = v41[28];
  v62 = v125;
  sub_10000CF78((v6 + v61), *(v6 + v61 + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v64 = v63;
  v52(v12, v62);
  v65 = MinY - v64;
  sub_100016E2C(v6 + v48[23], &v130, &unk_10094DA00);
  if (!v131)
  {
    sub_10000CFBC(&v130, &unk_10094DA00);
    goto LABEL_16;
  }

  sub_100012498(&v130, v132);
  sub_10000CF78(v132, v133);
  if (sub_10076D24C())
  {
    sub_10000CD74(v132);
    v52 = v126;
LABEL_16:
    v66 = v29;
    goto LABEL_18;
  }

  sub_10000CF78(v132, v133);
  v66 = v29;
  sub_10076D2AC();
  v68 = v67;
  v70 = v69;
  v145.origin.x = MinX;
  v145.origin.y = v25;
  v145.size.width = v35;
  v145.size.height = v29;
  v71 = CGRectGetMinX(v145);
  sub_10000CF78(v132, v133);
  sub_100770A4C();
  sub_10076D23C();
  v146.origin.x = v71;
  v146.origin.y = v65 - v70;
  v146.size.width = v68;
  v146.size.height = v70;
  v72 = CGRectGetMinY(v146);
  sub_10000CF78((v6 + v127[26]), *(v6 + v127[26] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v74 = v73;
  v52 = v126;
  v126(v12, v62);
  v65 = v72 - v74;
  sub_10000CD74(v132);
LABEL_18:
  sub_100016E2C(v6 + v128[22], &v130, &qword_10094BB30);
  if (v131)
  {
    sub_100012498(&v130, v132);
    sub_10000CF78(v132, v133);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000CF78(v132, v133);
      if (sub_10076D20C())
      {
        sub_10000CF78(v132, v133);
        sub_10076D2AC();
        v76 = v75;
        v78 = v77;
        v79 = v65 - v77;
        v147.origin.x = MinX;
        v147.origin.y = v25;
        v147.size.width = v35;
        v147.size.height = v66;
        v80 = CGRectGetMinX(v147);
        sub_10000CF78(v132, v133);
        sub_100770A4C();
        sub_10076D23C();
        v148.origin.x = v80;
        v148.origin.y = v79;
        v148.size.width = v76;
        v148.size.height = v78;
        v81 = CGRectGetMinY(v148);
        sub_10000CF78((v6 + v127[24]), *(v6 + v127[24] + 24));
        sub_1000FF02C();
        sub_10076D40C();
        v83 = v82;
        v52(v12, v62);
        v65 = v81 - v83;
      }
    }

    sub_10000CD74(v132);
  }

  else
  {
    sub_10000CFBC(&v130, &qword_10094BB30);
  }

  v84 = v128;
  v85 = (v6 + v128[21]);
  sub_10000CF78(v85, v85[3]);
  sub_10076D2AC();
  v87 = v86;
  v89 = v88;
  v90 = v65 - v88;
  v149.origin.x = MinX;
  v149.origin.y = v25;
  v149.size.width = v35;
  v149.size.height = v66;
  v91 = CGRectGetMinX(v149);
  sub_10000CF78(v85, v85[3]);
  sub_100770A4C();
  sub_10076D23C();
  v150.origin.x = v91;
  v150.origin.y = v90;
  v150.size.width = v87;
  v150.size.height = v89;
  v92 = CGRectGetMinY(v150);
  v93 = v127;
  sub_10000CF78((v6 + v127[21]), *(v6 + v127[21] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v95 = v94;
  v96 = v126;
  v126(v12, v62);
  v97 = v92 - v95;
  v98 = (v6 + v93[17]);
  v99 = *v98;
  v121 = v98[1];
  *&v123 = v84[20];
  sub_100016E2C(v6 + *&v123, v132, &unk_10094DA00);
  v100 = v133;
  sub_10000CFBC(v132, &unk_10094DA00);
  if (v100)
  {
    sub_10000CF78((v6 + v127[15]), *(v6 + v127[15] + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v96(v12, v62);
  }

  v122 = v99;
  v101 = MinX;
  v151.origin.x = MinX;
  v151.origin.y = v25;
  v151.size.width = v35;
  v151.size.height = v66;
  CGRectGetHeight(v151);
  v102 = v128;
  v103 = (v6 + v128[19]);
  sub_10000CF78(v103, v103[3]);
  sub_10076D2AC();
  v105 = v104;
  v106 = v25;
  v107 = v101;
  v109 = v108;
  v120 = v110;
  v111 = v97 - v108;
  v152.origin.x = v101;
  v152.origin.y = v106;
  v152.size.width = v35;
  v152.size.height = v66;
  v112 = CGRectGetMinX(v152);
  sub_10000CF78(v103, v103[3]);
  sub_100770A4C();
  sub_10076D23C();
  v116 = v112;
  v153.origin.x = v112;
  v117 = v111;
  v153.origin.y = v111;
  v119 = v105;
  v153.size.width = v105;
  v118 = v109;
  v153.size.height = v109;
  CGRectGetMinY(v153);
  sub_10000CF78((v6 + v127[14]), *(v6 + v127[14] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v96(v12, v62);
  v113 = (v6 + v102[18]);
  sub_10000CF78(v113, v113[3]);
  sub_10076D2AC();
  v154.origin.x = v107;
  v154.origin.y = v106;
  v154.size.width = v35;
  v154.size.height = v66;
  CGRectGetMinX(v154);
  sub_10000CF78(v113, v113[3]);
  sub_100770A4C();
  sub_10076D23C();
  sub_100016E2C(v6 + *&v123, &v130, &unk_10094DA00);
  if (!v131)
  {
    return sub_10000CFBC(&v130, &unk_10094DA00);
  }

  sub_100012498(&v130, v132);
  sub_10000CF78((v6 + v127[20]), *(v6 + v127[20] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v96(v12, v62);
  v155.origin.x = v116;
  v155.origin.y = v117;
  v155.size.width = v119;
  v155.size.height = v118;
  CGRectGetMinY(v155);
  v156.origin.x = v107;
  v156.origin.y = v106;
  v156.size.width = v35;
  v156.size.height = v66;
  CGRectGetMaxX(v156);
  sub_10000CF78(v132, v133);
  sub_100770A4C();
  sub_10076D23C();
  return sub_10000CD74(v132);
}

void sub_1001A3204()
{
  type metadata accessor for AppEventDetailPageLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100102F90(319, &unk_100950F60);
    if (v1 <= 0x3F)
    {
      sub_1001A3380(319, &qword_100950F80, &qword_10094CF50);
      if (v2 <= 0x3F)
      {
        sub_100102F90(319, &qword_100953E00);
        if (v3 <= 0x3F)
        {
          sub_1001A3380(319, &unk_100950F70, &unk_100953E10);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001A3380(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10000CE78(a3);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001A3400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001A34F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1001A35B0()
{
  sub_10076D39C();
  if (v0 <= 0x3F)
  {
    sub_100102F90(319, &qword_10094BAA0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001A36B0()
{
  v1 = *(v0 + 32);
  [v1 _systemContentInset];
  v3 = v2;
  [v1 contentOffset];
  v5 = v4;
  [v1 contentInset];
  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1002085F0(Strong);
  v10 = v9;

  v11 = *(v0 + 40);
  if (v11)
  {
    v12 = fmin((v3 + v5 + v7) / (v10 - v3), 1.0);
    if (v12 < 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v12;
    }

    v11(v14, v13, 0.0);
    sub_1000167E0(v11);
  }

  sub_1001A37AC(v1);
}

void sub_1001A37AC(void *a1)
{
  v2 = v1;
  [a1 _systemContentInset];
  v5 = v4;
  [a1 contentOffset];
  v7 = v6;
  [a1 contentInset];
  v9 = v5 + v7 + v8;
  [a1 frame];
  v10 = v2[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_100208298(Strong);
  v13 = v12;
  v15 = v14;

  if (v9 >= 0.0)
  {
    v16 = -v9;
    if (-v15 - *&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset] > -v9)
    {
      v16 = -v15 - *&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset];
    }
  }

  else
  {
    v15 = fabs(v9) + v15;
    v16 = 0.0;
  }

  [v10 setFrame:{0.0, v16, v13, v15}];
  v17 = v9 * 0.28;
  if (v9 * 0.28 < 0.0)
  {
    v17 = 0.0;
  }

  v18 = *(*&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  v19 = *&v18[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
  *&v18[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = v17;
  if (v17 != v19)
  {
    [v18 setNeedsLayout];
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  sub_1002085F0(v20);
  v22 = v21;

  v23 = fmin(v9 / (v22 - v5), 1.0);
  if (v23 < 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v23;
  }

  v25 = v2[5];
  if (v25)
  {
    v26 = v2[4];

    v27 = [v26 _verticalVelocity];
    v25(v27, v24, v28);
    sub_1000167E0(v25);
  }

  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    v31 = [v29 navigationController];

    if (v31)
    {
      v32 = [v31 navigationBar];

      [v32 _setTitleOpacity:v24];
    }
  }
}

CGFloat sub_1001A3A30()
{
  v1 = v0;
  v2 = *(v0 + 32);
  [v2 _systemContentInset];
  v4 = v3;
  [v2 contentOffset];
  v6 = v5;
  [v2 contentInset];
  v8 = v4 + v6 + v7;
  [v2 frame];
  v9 = *(v1 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_100208298(Strong);
  v12 = v11;
  v14 = v13;

  if (v8 >= 0.0)
  {
    v15 = -v8;
    if (-v14 - *(v9 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset) > -v8)
    {
      v15 = -v14 - *(v9 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset);
    }
  }

  else
  {
    v14 = fabs(v8) + v14;
    v15 = 0.0;
  }

  v16 = 0;
  v17 = v12;
  v18 = v14;
  return CGRectGetHeight(*(&v15 - 1)) - v4 - *(v9 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentBottomInset);
}

uint64_t sub_1001A3B54()
{
  swift_unknownObjectWeakDestroy();

  sub_1000167E0(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchLinkView()
{
  result = qword_10094BEF0;
  if (!qword_10094BEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A3D8C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1001A3E38(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_10077149C();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_10077158C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1001A3F7C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_1001A4024()
{
  if (qword_100941370 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A2720;
  qword_10099D6F0 = qword_1009A2720;

  return v1;
}

uint64_t sub_1001A4088(void *a1)
{
  v2 = sub_10076DD3C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  sub_10076DD2C();
  if (qword_10093F978 != -1)
  {
    swift_once();
  }

  sub_10076DC9C();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v13 = [a1 preferredContentSizeCategory];
  sub_10077084C();

  sub_10076DD1C();
  v12(v8, v2);
  sub_10076DD0C();
  return (v12)(v11, v2);
}

uint64_t sub_1001A4258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  swift_getObjectType();
  v8 = [a3 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  sub_1001A55BC(v9, 0);
  sub_10011E080(a1, v27);
  sub_10000A570(a2, v23);
  v10 = sub_1001A5424(a3);
  v12 = v11;
  v25 = &type metadata for SearchLinkLayout;
  v26 = sub_10017FCFC();
  v13 = swift_allocObject();
  v24 = v13;
  v14 = sub_10017FDA0();
  v15 = swift_allocObject();
  sub_10000A570(v23, v15 + 16);
  sub_10011E080(v27, &v21);
  if (v22)
  {
    sub_100012498(&v21, v20);
    v16 = swift_allocObject();
    sub_100012498(v20, v16 + 16);
    sub_10000CD74(v23);
    sub_10017FE2C(v27);
    v17 = &type metadata for AutoAdjustingPlaceable;
    v18 = v14;
  }

  else
  {
    sub_10000CD74(v23);
    sub_10017FE2C(v27);
    v17 = 0;
    v18 = 0;
    v16 = 0;
  }

  v13[2] = v16;
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = v17;
  v13[6] = v18;
  v13[7] = v15;
  v13[10] = &type metadata for AutoAdjustingPlaceable;
  v13[11] = v14;
  v13[12] = v10;
  v13[13] = v12;
  sub_10076DF9C();
  v27[3] = sub_10076DFAC();
  v27[4] = &protocol witness table for Center;
  sub_10000DB7C(v27);
  sub_10076DFBC();
  a4[3] = sub_10076E04C();
  a4[4] = &protocol witness table for Margins;
  sub_10000DB7C(a4);
  return sub_10076E03C();
}

char *sub_1001A44A4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076DD3C();
  __chkstk_darwin(v10 - 8);
  v11 = qword_10094BEE0;
  *&v4[v11] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = qword_10094BEE8;
  sub_10076D4BC();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v36.receiver = v4;
  v36.super_class = type metadata accessor for SearchLinkView();
  v13 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v18 = qword_10094BEE0;
  v19 = qword_100941368;
  v20 = *&v17[qword_10094BEE0];
  if (v19 != -1)
  {
    swift_once();
  }

  [v20 setTintColor:qword_1009A2718];

  v21 = *&v17[v18];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  sub_10075FB8C();

  v25 = *&v17[v18];
  sub_10075FC0C();

  v26 = qword_100941380;
  v27 = *&v17[v18];
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_1009A2730;
  sub_10075FC3C();

  [v17 addSubview:*&v17[v18]];
  v29 = qword_10094BEE8;
  v30 = qword_100941350;
  v31 = *&v17[qword_10094BEE8];
  if (v30 != -1)
  {
    swift_once();
  }

  [v31 setTextColor:qword_1009A2700];

  v32 = *&v17[v29];
  v33 = [v17 traitCollection];

  sub_1001A4088(v33);
  sub_10076D49C();

  [v17 addSubview:*&v17[v29]];
  sub_10000A5D4(&unk_100945BF0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100783DD0;
  *(v34 + 32) = sub_10076E88C();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = ObjectType;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v17;
}

id sub_1001A488C(void *a1, void *a2)
{
  v4 = sub_10076DD3C();
  v5 = [a2 preferredContentSizeCategory];
  v6 = sub_10077084C() & 1;

  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = sub_10077084C() & 1;
  if (v6 != v9)
  {
    v10 = [a1 traitCollection];
    sub_1001A4088(v10);

    sub_10076D49C();
  }

  return [a1 setNeedsLayout];
}

void sub_1001A49F0(uint64_t a1)
{
  v2 = qword_10094BEE0;
  *(a1 + v2) = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = qword_10094BEE8;
  sub_10076D4BC();
  *(a1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1001A4AB0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *&v1[qword_10094BEE0];
  v5 = sub_10075FC9C();
  if (v5)
  {

    v6 = sub_10075FD2C();
    v7 = sub_1001A5CBC(&qword_10094B250, &type metadata accessor for ArtworkView);
    v5 = v4;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v31[1] = 0;
    v31[2] = 0;
  }

  v31[0] = v5;
  v31[3] = v6;
  v31[4] = v7;
  v8 = *&v2[qword_10094BEE8];
  v30[3] = sub_10076D4BC();
  v30[4] = &protocol witness table for UILabel;
  v30[0] = v8;
  v9 = v8;
  v10 = [v2 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  sub_1001A55BC(v11, 0);
  sub_10011E080(v31, v29);
  sub_10000A570(v30, v25);
  v12 = sub_1001A528C(v2);
  v14 = v13;
  v27 = &type metadata for SearchLinkLayout;
  v28 = sub_10017FCFC();
  v15 = swift_allocObject();
  v26 = v15;
  v16 = sub_10017FDA0();
  v17 = swift_allocObject();
  sub_10000A570(v25, v17 + 16);
  sub_10011E080(v29, &v23);
  if (v24)
  {
    sub_100012498(&v23, v22);
    v18 = swift_allocObject();
    sub_100012498(v22, v18 + 16);
    sub_10000CD74(v25);
    sub_10017FE2C(v29);
    v19 = &type metadata for AutoAdjustingPlaceable;
    v20 = v16;
  }

  else
  {
    sub_10000CD74(v25);
    sub_10017FE2C(v29);
    v19 = 0;
    v20 = 0;
    v18 = 0;
  }

  v15[2] = v18;
  v15[3] = 0;
  v15[4] = 0;
  v15[5] = v19;
  v15[6] = v20;
  v15[7] = v17;
  v15[10] = &type metadata for AutoAdjustingPlaceable;
  v15[11] = v16;
  v15[12] = v12;
  v15[13] = v14;
  sub_10076DF9C();
  v29[3] = sub_10076DFAC();
  v29[4] = &protocol witness table for Center;
  sub_10000DB7C(v29);
  sub_10076DFBC();
  a1[3] = sub_10076E04C();
  a1[4] = &protocol witness table for Margins;
  sub_10000DB7C(a1);
  sub_10076E03C();
  sub_10000CD74(v30);
  return sub_10017FE2C(v31);
}

void sub_1001A4D88()
{
  v1 = *(v0 + qword_10094BEE8);
}

id sub_1001A4DC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchLinkView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001A4E00(uint64_t a1)
{
  v2 = *(a1 + qword_10094BEE8);
}

id sub_1001A4E78()
{
  if (qword_100941380 != -1)
  {
    swift_once();
  }

  v0 = qword_1009A2730;

  return v0;
}

double sub_1001A4EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10037C48C(a1, a3, WitnessTable);
}

void sub_1001A4F50(void *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10037A640(a1, a2, a3, WitnessTable);
}

void sub_1001A4FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10037CBE4(a1, a3, WitnessTable);
}

uint64_t sub_1001A5020@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10037A9B8(a1, WitnessTable, a2);
}

uint64_t sub_1001A509C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10037CA40(a1, a2, a4, WitnessTable);
}

uint64_t sub_1001A5150(void *a1)
{
  a1[1] = sub_1001A5CBC(&qword_10094BF48, type metadata accessor for SearchLinkView);
  a1[2] = sub_1001A5CBC(&qword_10094BF50, type metadata accessor for SearchLinkView);
  result = sub_1001A5CBC(&unk_10094BF58, type metadata accessor for SearchLinkView);
  a1[3] = result;
  return result;
}

uint64_t sub_1001A51FC()
{
  v0 = sub_10076FF9C();
  v2 = v1;
  if (v0 == sub_10076FF9C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_10077167C();
  }

  return v5 & 1;
}

id sub_1001A528C(void *a1)
{
  if (qword_10093F978 != -1)
  {
    swift_once();
  }

  v2 = qword_10099D6F0;
  sub_10000A5D4(&qword_10094BF68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  *(inited + 40) = UIContentSizeCategorySmall;
  v4 = v2;
  v5 = UIContentSizeCategoryExtraSmall;
  v6 = UIContentSizeCategorySmall;
  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v12 = v8;
  __chkstk_darwin(v9);
  v11[2] = &v12;
  sub_1001A3F7C(sub_1001A5D20, v11, inited);
  swift_setDeallocating();
  type metadata accessor for UIContentSizeCategory(0);
  swift_arrayDestroy();

  return v4;
}

id sub_1001A5424(void *a1)
{
  if (qword_10093F978 != -1)
  {
    swift_once();
  }

  v2 = qword_10099D6F0;
  sub_10000A5D4(&qword_10094BF68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  *(inited + 40) = UIContentSizeCategorySmall;
  v4 = v2;
  v5 = UIContentSizeCategoryExtraSmall;
  v6 = UIContentSizeCategorySmall;
  v7 = [a1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v12 = v8;
  __chkstk_darwin(v9);
  v11[2] = &v12;
  sub_1001A3F7C(sub_1001A5C84, v11, inited);
  swift_setDeallocating();
  type metadata accessor for UIContentSizeCategory(0);
  swift_arrayDestroy();

  return v4;
}

double sub_1001A55BC(uint64_t a1, char a2)
{
  v3 = sub_10076FF9C();
  v5 = v4;
  if (v3 == sub_10076FF9C() && v5 == v6)
  {

    goto LABEL_16;
  }

  v8 = sub_10077167C();

  if (v8)
  {
LABEL_16:
    v19 = (a2 & 1) == 0;
    result = 9.0;
    v21 = 4.0;
    goto LABEL_17;
  }

  v9 = sub_10076FF9C();
  v11 = v10;
  if (v9 == sub_10076FF9C() && v11 == v12)
  {
    goto LABEL_13;
  }

  v14 = sub_10077167C();

  if (v14)
  {
LABEL_14:
    v19 = (a2 & 1) == 0;
    result = 10.0;
    v21 = 5.0;
    goto LABEL_17;
  }

  v15 = sub_10076FF9C();
  v17 = v16;
  if (v15 == sub_10076FF9C() && v17 == v18)
  {
LABEL_13:

    goto LABEL_14;
  }

  v22 = sub_10077167C();

  if (v22)
  {
    goto LABEL_14;
  }

  v23 = sub_10076FF9C();
  v25 = v24;
  if (v23 == sub_10076FF9C() && v25 == v26)
  {

LABEL_25:
    v19 = (a2 & 1) == 0;
    result = 11.0;
    v21 = 5.0;
    goto LABEL_17;
  }

  v27 = sub_10077167C();

  if (v27)
  {
    goto LABEL_25;
  }

  v28 = sub_10076FF9C();
  v30 = v29;
  if (v28 == sub_10076FF9C() && v30 == v31)
  {

LABEL_30:
    v19 = (a2 & 1) == 0;
    result = 12.0;
    v21 = 6.0;
    goto LABEL_17;
  }

  v32 = sub_10077167C();

  if (v32)
  {
    goto LABEL_30;
  }

  v33 = sub_10076FF9C();
  v35 = v34;
  if (v33 == sub_10076FF9C() && v35 == v36)
  {

LABEL_35:
    v19 = (a2 & 1) == 0;
    result = 13.0;
    v21 = 6.0;
    goto LABEL_17;
  }

  v37 = sub_10077167C();

  if (v37)
  {
    goto LABEL_35;
  }

  v38 = sub_10076FF9C();
  v40 = v39;
  if (v38 == sub_10076FF9C() && v40 == v41)
  {

LABEL_40:
    v19 = (a2 & 1) == 0;
    result = 14.0;
    v21 = 7.0;
LABEL_17:
    if (!v19)
    {
      return v21;
    }

    return result;
  }

  v42 = sub_10077167C();

  if (v42)
  {
    goto LABEL_40;
  }

  v43 = sub_10076FF9C();
  v45 = v44;
  if (v43 == sub_10076FF9C() && v45 == v46)
  {

    return 17.0;
  }

  v47 = sub_10077167C();

  result = 17.0;
  if ((v47 & 1) == 0)
  {
    v48 = sub_10076FF9C();
    v50 = v49;
    if (v48 == sub_10076FF9C() && v50 == v51)
    {

      return 20.0;
    }

    v52 = sub_10077167C();

    result = 20.0;
    if ((v52 & 1) == 0)
    {
      v53 = sub_10076FF9C();
      v55 = v54;
      if (v53 == sub_10076FF9C() && v55 == v56)
      {

        return 24.0;
      }

      v57 = sub_10077167C();

      result = 24.0;
      if ((v57 & 1) == 0)
      {
        v58 = sub_10076FF9C();
        v60 = v59;
        if (v58 == sub_10076FF9C() && v60 == v61)
        {

          return 28.0;
        }

        v62 = sub_10077167C();

        result = 28.0;
        if ((v62 & 1) == 0)
        {
          v63 = sub_10076FF9C();
          v65 = v64;
          if (v63 == sub_10076FF9C() && v65 == v66)
          {

            return 31.0;
          }

          v67 = sub_10077167C();

          v19 = (v67 & 1) == 0;
          result = 10.0;
          v21 = 31.0;
          goto LABEL_17;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001A5BFC()
{
  if (*(v0 + 40))
  {
    sub_10000CD74(v0 + 16);
  }

  sub_10000CD74(v0 + 56);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1001A5C4C()
{
  sub_10000CD74(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001A5CBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001A5D50()
{
  result = qword_10094BF70;
  if (!qword_10094BF70)
  {
    sub_10076388C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF70);
  }

  return result;
}

uint64_t sub_1001A5DB0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v50 = a1;
  v2 = sub_10075DD7C();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_10094BF78);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  sub_10000A5D4(&qword_100942C70);
  v49 = sub_10076FCEC();
  sub_10076F73C();
  sub_10076F72C();
  sub_10076388C();
  sub_10076385C();
  sub_10000A5D4(&qword_10094BF80);
  sub_10076F41C();

  v14 = *(v5 + 8);
  v51 = v4;
  v14(v13, v4);
  if (v53)
  {
  }

  else
  {
    sub_10076F72C();
    sub_10076385C();
    v53 = &_swiftEmptyDictionarySingleton;
    sub_10076F42C();
  }

  sub_10076F72C();
  sub_10076385C();
  sub_10076F41C();

  v46 = v14;
  v14(v9, v51);
  v15 = v53;
  v16 = v48;
  if (!v53)
  {
    goto LABEL_13;
  }

  v17 = sub_10076386C();
  if (!v15[2])
  {

    goto LABEL_12;
  }

  v19 = sub_100561E0C(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_12:

LABEL_13:
    sub_10076387C();
LABEL_14:
    sub_10076F72C();
    sub_10076385C();
    v32 = sub_10076F40C();
    if (*v31)
    {
      v33 = v31;
      v34 = sub_10076386C();
      v36 = v35;
      v37 = v43;
      sub_10075DD6C();
      sub_10075DD4C();
      v39 = v38;
      (*(v44 + 8))(v37, v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *v33;
      *v33 = 0x8000000000000000;
      sub_10024A768(v34, v36, isUniquelyReferenced_nonNull_native, v39);

      *v33 = v52;
    }

    v32(&v53, 0);

    v46(v16, v51);
    v41 = sub_10076383C();
    sub_100563DC4(v41, 1, v47);

    v30 = v49;
    sub_10076FC4C();
    goto LABEL_17;
  }

  v22 = *(v15[7] + 8 * v19);

  *&v23 = COERCE_DOUBLE(sub_10076387C());
  if ((v24 & 1) == 0)
  {
    v25 = *&v23;
    v26 = v43;
    sub_10075DD6C();
    sub_10075DD4C();
    v28 = v27;
    (*(v44 + 8))(v26, v45);
    if (v28 - v22 > v25)
    {
      goto LABEL_14;
    }
  }

  v29 = sub_10076384C();
  if (!v29)
  {
    sub_1001A633C();
    swift_allocError();
    v30 = v49;
    sub_10076FCAC();

    return v30;
  }

  sub_100563DC4(v29, 1, v47);
  v30 = v49;
  sub_10076FC4C();

LABEL_17:

  return v30;
}

unint64_t sub_1001A633C()
{
  result = qword_10094BF88;
  if (!qword_10094BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF88);
  }

  return result;
}

unint64_t sub_1001A63A4()
{
  result = qword_10094BF90;
  if (!qword_10094BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094BF90);
  }

  return result;
}

uint64_t sub_1001A63F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v5 - 8);
  v7 = v32 - v6;
  v8 = sub_10076481C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D39C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v37);
  sub_10000A5D4(&unk_100942830);
  sub_100761D1C();
  result = swift_dynamicCast();
  if (result)
  {
    v34 = a2;
    v17 = v36;
    v18 = sub_100761CEC();
    if (v18)
    {
      v33 = v13;
      v19 = *(*(*(v35 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      if (v19 && (v32[4] = v18, v20 = type metadata accessor for VideoView(), (v21 = swift_dynamicCastClass()) != 0))
      {
        v32[2] = v20;
        v32[3] = v17;
        v22 = qword_1009A2558;
        v23 = v21;
        swift_beginAccess();
        v24 = *(v9 + 16);
        v32[1] = v23;
        v24(v11, v23 + v22, v8);
        v25 = v19;
        sub_10076476C();
        (*(v9 + 8))(v11, v8);
        v26 = v33;
        if ((*(v33 + 48))(v7, 1, v12) != 1)
        {
          (*(v26 + 32))(v15, v7, v12);
          sub_10076D30C();
          sub_10076B84C();
          sub_10076BFCC();

          sub_1001A936C(&unk_100942840, type metadata accessor for VideoView);
          sub_100760B8C();

          return (*(v26 + 8))(v15, v12);
        }

        sub_10000CFBC(v7, &unk_1009467E0);
      }

      else
      {
      }
    }

    if (sub_100761CFC())
    {
      sub_10076BFCC();
      v27 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView;
      v28 = v35;
      v29 = *(v35 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView);
      sub_10076BF7C();
      sub_10075FCCC();
      [v29 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();

      v30 = *(v28 + v27);
      sub_10075FD2C();
      sub_1001A936C(&qword_100941820, &type metadata accessor for ArtworkView);
      v31 = v30;
      sub_100760B8C();
    }
  }

  return result;
}

id sub_1001A69F8(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v130 = a3;
  v131 = a1;
  v128 = a2;
  v7 = sub_100761D8C();
  v126 = *(v7 - 8);
  v127 = v7;
  __chkstk_darwin(v7);
  v124 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v125 = &v102 - v10;
  v11 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v11 - 8);
  v121 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v120 = &v102 - v14;
  v15 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v15 - 8);
  v119 = &v102 - v16;
  v17 = sub_1007611EC();
  __chkstk_darwin(v17 - 8);
  v118 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v117 = &v102 - v20;
  v21 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v21 - 8);
  v116 = &v102 - v22;
  v114 = sub_10076121C();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v115 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10076481C();
  v122 = *(v24 - 8);
  v123 = v24;
  __chkstk_darwin(v24);
  v129 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v26 - 8);
  v112 = &v102 - v27;
  v111 = sub_100768FEC();
  v106 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10000A5D4(&unk_100946750);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v102 - v29;
  v30 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v30 - 8);
  v105 = &v102 - v31;
  v104 = sub_10076A3AC();
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v34 - 8);
  v103 = &v102 - v35;
  v36 = sub_100761C9C();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10076664C();
  v41 = *(v40 - 8);
  *&v42 = __chkstk_darwin(v40).n128_u64[0];
  v44 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [a4 snapshotPageTraitEnvironment];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_pageTraits] = v45;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v5 setNeedsLayout];
  swift_unknownObjectRelease();
  sub_1007665EC();
  sub_1001A936C(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v46 = sub_10077124C();
  (*(v41 + 8))(v44, v40);
  sub_100761CAC();
  v47 = sub_100761C8C();
  (*(v37 + 8))(v39, v36);
  v48 = v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden];
  v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden] = ((v46 | v47) & 1) == 0;
  if (((v46 | v47) & 1) == v48)
  {
    if ((v46 | v47))
    {
      [v5 insertSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView] aboveSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer]];
    }

    else
    {
      [*&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView] removeFromSuperview];
    }
  }

  v49 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView];
  v50 = v49[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsTopEffect];
  v49[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsTopEffect] = v46 & 1;
  if ((v46 & 1) != v50)
  {
    v51 = 0.0;
    if (v46)
    {
      *&v51 = 1.0;
    }

    [*&v49[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_topGradient] setOpacity:v51];
    [v49 setNeedsDisplay];
  }

  v52 = sub_100761CBC();
  v53 = v130;
  if (v52)
  {
    v54 = v52;
    v55 = sub_100761CDC();
    if (v55)
    {
      v56 = v55;
      v57 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton];
      v58 = v102;
      v59 = v104;
      (*(v102 + 104))(v33, enum case for OfferButtonPresenterViewAlignment.center(_:), v104);
      (*(v58 + 56))(v105, 1, 1, v59);
      sub_1001A936C(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);

      v60 = v103;
      sub_10076759C();
      v61 = sub_10000A5D4(&qword_100945590);
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
      v62 = v106;
      v63 = v111;
      (*(v106 + 104))(v108, enum case for OfferButtonSubtitlePosition.below(_:), v111);
      (*(v62 + 56))(v112, 1, 1, v63);
      sub_1001A936C(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
      v64 = v107;
      sub_10076759C();
      sub_1001F12C8(v56, v54, 0, v60, v64, v53, 0, 0);

      (*(v109 + 8))(v64, v110);
      sub_10000CFBC(v60, &unk_100946760);
      [v57 setHidden:0];

      goto LABEL_14;
    }
  }

  [*&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton] setHidden:1];
LABEL_14:
  sub_1001A7B3C(v131, v53);
  if (sub_100761CEC())
  {
    (*(v113 + 104))(v115, enum case for VideoFillMode.scaleAspectFill(_:), v114);
    sub_10076B84C();
    sub_10076BEFC();
    v65 = v116;
    sub_10076D3AC();

    v66 = sub_10076D39C();
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    sub_10076F5CC();
    sub_10076B7CC();
    v67 = v119;
    sub_10076B85C();
    v68 = sub_10075DB7C();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    v69 = v120;
    sub_10076B81C();
    v70 = v121;
    sub_10076B80C();
    v71 = type metadata accessor for VideoView();
    sub_1001A936C(&qword_100942810, type metadata accessor for VideoView);
    v130 = v71;
    v72 = sub_100762EEC();
    sub_10000CFBC(v70, &unk_10094C030);
    sub_10000CFBC(v69, &unk_10094C030);
    sub_10000CFBC(v67, &unk_1009435D0);
    sub_10000CFBC(&v132, &qword_100943310);
    v73 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer];
    v74 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
    v75 = *(v73 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    if (v72)
    {
      v76 = v72;
      v77 = [v76 superview];
      if (v77)
      {
        v78 = v77;
        sub_100016F40(0, &qword_1009441F0);
        v79 = v75;
        v128 = v5;
        v80 = v79;
        v81 = sub_100770EEC();

        v5 = v128;
        if (v81)
        {
          [v76 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v86 = *&v75[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v75[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v72;
    v87 = v72;
    sub_100453A30(v86);

    if (*(*(v73 + v74) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
    {
      v88 = swift_dynamicCastClass();
      if (v88)
      {
        *(v88 + qword_1009602B8 + 8) = &off_1008965B8;
        swift_unknownObjectWeakAssign();
      }
    }

    (*(v122 + 8))(v129, v123);
  }

  else if (sub_100761CFC())
  {

    v82 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView];
    v83 = *(*&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v84 = *(v83 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    *(v83 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) = v82;
    v85 = v82;
    sub_100453A30(v84);

    sub_1004526E4();
  }

  sub_100761CCC();
  if (v89)
  {
    v90 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView];
    v91 = sub_10076FF6C();

    [v90 setText:v91];

    sub_100761D0C();
    v92 = v125;
    sub_100761D9C();

    v93 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsTextAlignment;
    swift_beginAccess();
    v95 = v126;
    v94 = v127;
    (*(v126 + 24))(&v5[v93], v92, v127);
    swift_endAccess();
    v96 = v124;
    (*(v95 + 16))(v124, &v5[v93], v94);
    v97 = sub_100761D7C();
    v98 = *(v95 + 8);
    v98(v96, v94);
    [v90 setTextAlignment:v97];
    v98(v92, v94);
  }

  v99 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_tapGestureRecognizer];
  v100 = sub_100761CEC();
  if (v100)
  {
  }

  [v99 setEnabled:v100 != 0];
  return [v5 setNeedsLayout];
}

uint64_t sub_1001A7B3C(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = sub_10000A5D4(&unk_10094C040);
  __chkstk_darwin(v3 - 8);
  v72 = &v61 - v4;
  v5 = sub_10000A5D4(&unk_1009467F0);
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = &v61 - v6;
  v66 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v66);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v64 = &v61 - v9;
  __chkstk_darwin(v10);
  v67 = (&v61 - v11);
  __chkstk_darwin(v12);
  v14 = (&v61 - v13);
  v15 = sub_100761DAC();
  v62 = *(v15 - 8);
  v63 = v15;
  __chkstk_darwin(v15);
  v61 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100761C9C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  __chkstk_darwin(v24);
  v26 = &v61 - v25;
  __chkstk_darwin(v27);
  v29 = &v61 - v28;
  sub_100761CAC();
  v30 = sub_100761C5C();
  v31 = *(v18 + 8);
  v31(v29, v17);
  v69 = a1;
  if (!v30)
  {
    v30 = [objc_opt_self() clearColor];
  }

  v32 = *(v74 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer);
  v33 = type metadata accessor for MediaView();
  v75.receiver = v32;
  v75.super_class = v33;
  objc_msgSendSuper2(&v75, "setBackgroundColor:", v30);
  [*(*&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) setBackgroundColor:v30];
  v34 = *&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (v34)
  {
    v35 = v34;
    [v35 setBackgroundColor:v30];
  }

  v36 = *(v74 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView);
  sub_100761CAC();
  v37 = sub_100761C8C();
  v31(v26, v17);
  v38 = v36[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsBottomEffect];
  v36[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_wantsBottomEffect] = v37 & 1;
  if ((v37 & 1) != v38)
  {
    v39 = 0.0;
    if (v37)
    {
      v39 = 1.0;
    }

    [*&v36[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_blurView] setAlpha:v39];
    [v36 setNeedsDisplay];
  }

  v40 = *(v74 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView);
  sub_100761CAC();
  v41 = sub_100761C6C();
  v31(v23, v17);
  if (!v41)
  {
    sub_100761D0C();
    v42 = v61;
    sub_100761DBC();

    v41 = sub_100666230();
    (*(v62 + 8))(v42, v63);
  }

  v43 = v66;
  [v40 setTextColor:v41];

  if (qword_1009413C8 != -1)
  {
    swift_once();
  }

  v44 = sub_10000A61C(v43, qword_1009A27E0);
  sub_1000A9194(v44, v14);
  sub_100761CAC();
  v45 = sub_100761C3C();
  v31(v20, v17);

  *v14 = v45;
  sub_100761CAC();
  v46 = sub_100761C4C();
  v31(v20, v17);

  v14[1] = v46;
  sub_100761CAC();
  v47 = sub_100761C6C();
  v31(v20, v17);

  v14[2] = v47;
  sub_100761CAC();
  v48 = sub_100761C7C();
  v31(v20, v17);

  v14[3] = v48;
  if (qword_1009413C0 != -1)
  {
    swift_once();
  }

  v49 = sub_10000A61C(v43, qword_1009A27C8);
  v50 = v67;
  sub_1000A9194(v49, v67);
  sub_100761CAC();
  v51 = sub_100761C3C();
  v31(v20, v17);

  *v50 = v51;
  sub_100761CAC();
  v52 = sub_100761C4C();
  v31(v20, v17);

  v50[1] = v52;
  sub_100761CAC();
  v53 = sub_100761C6C();
  v31(v20, v17);

  v50[2] = v53;
  sub_100761CAC();
  v54 = sub_100761C7C();
  v31(v20, v17);

  v50[3] = v54;
  sub_1000A9194(v14, v64);
  sub_1000A9194(v50, v65);
  sub_10000A5D4(&unk_100943120);
  v55 = v68;
  sub_10075FDEC();
  v56 = sub_100761D0C();
  v58 = v70;
  v57 = v71;
  v59 = v72;
  (*(v70 + 16))(v72, v55, v71);
  (*(v58 + 56))(v59, 0, 1, v57);
  sub_1006098B0(v56, v59, v73);

  sub_10000CFBC(v59, &unk_10094C040);
  (*(v58 + 8))(v55, v57);
  sub_1000A91F8(v50);
  return sub_1000A91F8(v14);
}

id sub_1001A84F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001A862C(void *a1, uint64_t a2)
{
  v5 = [a1 snapshotPageTraitEnvironment];
  *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_18AA49E3A0089529D9EAA38FB165277F36UpsellBreakoutSizingTraitEnvironment_pageTraits] = v5;
  v6 = [a1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_10077085C();
  if (v6)
  {
    sub_10000A5D4(&unk_100942870);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100785D70;
    *(v8 + 32) = [a1 traitCollection];
    v9 = objc_opt_self();
    *(v8 + 40) = [v9 traitCollectionWithPreferredContentSizeCategory:a2];
    sub_100016F40(0, &qword_100944E30);
    isa = sub_1007701AC().super.isa;

    v11 = [v9 traitCollectionWithTraitsFromCollections:isa];
  }

  else
  {
    v11 = [a1 traitCollection];
  }

  *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_18AA49E3A0089529D9EAA38FB165277F36UpsellBreakoutSizingTraitEnvironment_traitCollection] = v11;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v13, "init");
}

double sub_1001A87E4(double a1)
{
  v2 = sub_100765AEC();
  __chkstk_darwin(v2 - 8);
  v48 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100765B0C();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076997C();
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin(v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10077164C();
  v44 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(type metadata accessor for UpsellBreakoutSizingTraitEnvironment());
  v15 = UIContentSizeCategoryExtraExtraExtraLarge;
  v16 = swift_unknownObjectRetain();
  v17 = sub_1001A862C(v16, v15);
  swift_unknownObjectRelease();

  v18 = qword_1009405B8;
  v52 = *&v17[OBJC_IVAR____TtC20ProductPageExtensionP33_18AA49E3A0089529D9EAA38FB165277F36UpsellBreakoutSizingTraitEnvironment_traitCollection];
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A5D4(&unk_1009467F0);
  sub_10000A61C(v19, qword_10099FB98);
  v57[0] = v17;
  v20 = v17;
  sub_10075FDCC();

  type metadata accessor for BreakoutDetailsView(0);
  v21 = sub_100761D0C();
  v22 = v20;
  sub_100608998(v21, v13, v22, v57);

  sub_10016C4BC(v57, &v54);
  v23 = swift_allocObject();
  sub_1001A8FB8(&v54, (v23 + 16));
  v24 = sub_10076DDDC();
  swift_allocObject();
  v25 = sub_10076DD9C();
  if (sub_100761CBC() && (, sub_100761CDC()))
  {
    v43 = v13;
    v26 = v8;

    if (qword_1009405B0 != -1)
    {
      swift_once();
    }

    v27 = sub_10076D9AC();
    sub_10000A61C(v27, qword_10099FB80);
    v28 = v22;
    sub_10076D17C();
    sub_10076D40C();

    (*(v44 + 8))(v10, v26);
    swift_allocObject();
    v29 = sub_10076DDBC();

    v13 = v43;
  }

  else
  {
    v29 = 0;
  }

  sub_100761CCC();
  if (v30)
  {
    sub_100016F40(0, &qword_100942F00);
    if (qword_100941058 != -1)
    {
      swift_once();
    }

    v31 = sub_10076D3DC();
    sub_10000A61C(v31, qword_1009A1F00);
    sub_100770B3C();
    v32 = sub_10076C04C();
    *(&v55 + 1) = v32;
    v56 = sub_1001A936C(&qword_100943230, &type metadata accessor for Feature);
    v33 = sub_10000DB7C(&v54);
    (*(*(v32 - 8) + 104))(v33, enum case for Feature.measurement_with_labelplaceholder(_:), v32);
    sub_10076C90C();
    sub_10000CD74(&v54);
    v34 = v45;
    sub_10076996C();
    sub_10076994C();
    (*(v46 + 8))(v34, v47);
  }

  else
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
  }

  v35 = v22;
  sub_10047CBA8(v35, v48, a1);

  swift_allocObject();
  v36 = sub_10076DDBC();
  v37 = &protocol witness table for LayoutViewPlaceholder;
  v53[18] = v24;
  v53[19] = &protocol witness table for LayoutViewPlaceholder;
  v53[14] = &protocol witness table for LayoutViewPlaceholder;
  v53[15] = v36;
  v53[13] = v24;
  v53[10] = v25;
  if (!v29)
  {
    v24 = 0;
    v37 = 0;
    v53[6] = 0;
    v53[7] = 0;
  }

  v53[5] = v29;
  v53[8] = v24;
  v53[9] = v37;
  sub_1001A8FD8(&v54, v53);

  v38 = v49;
  sub_100765AFC();
  v39 = v35;
  sub_100765ABC();
  v41 = v40;

  (*(v50 + 8))(v38, v51);
  sub_10000CFBC(&v54, &qword_10094BB30);
  sub_10000CD74(v57);
  sub_1000A91F8(v13);
  return v41;
}

uint64_t sub_1001A8F80()
{
  sub_10000CD74(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

_OWORD *sub_1001A8FB8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1001A8FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094BB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1001A9048(double a1, uint64_t a2, void *a3)
{
  v5 = sub_100765AEC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10047CBA8(a3, v8, a1);
  sub_100765B0C();
  sub_1001A936C(&qword_10094C050, &type metadata accessor for UpsellBreakoutLayout);
  sub_10076DBDC();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  v11 = objc_opt_self();
  v12 = [v11 fractionalWidthDimension:1.0];
  v13 = [v11 absoluteDimension:v10];
  v14 = objc_opt_self();
  v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

  v16 = [objc_opt_self() itemWithLayoutSize:v15];
  v17 = objc_opt_self();
  v18 = [v11 fractionalWidthDimension:1.0];
  v19 = [v11 absoluteDimension:v10];
  v20 = [v14 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10000A5D4(&unk_100942870);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007841E0;
  *(v21 + 32) = v16;
  sub_100016F40(0, &qword_100952C70);
  v22 = v16;
  isa = sub_1007701AC().super.isa;

  v24 = [v17 horizontalGroupWithLayoutSize:v20 subitems:isa];

  return v24;
}

uint64_t sub_1001A936C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1001A93B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1001A93C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1001A9410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001A9464@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, int a6@<W7>, uint64_t a7@<X8>, double a8@<D4>, double a9@<D5>)
{
  v43 = a6;
  v44 = a5;
  v42 = a4;
  v51 = a7;
  v52 = a3;
  v49 = a1;
  v50 = a2;
  v46 = a8;
  v47 = a9;
  v41 = sub_10076EA6C();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10076B5BC();
  v53 = *(v48 - 8);
  __chkstk_darwin(v48);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076C36C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v18 = sub_10000A5D4(&qword_100942C40);
  __chkstk_darwin(v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v37 - v22;
  sub_100016E2C(v49, &v37 - v22, &qword_1009499A0);
  sub_100016E2C(v50, &v23[*(v18 + 48)], &qword_1009499A0);
  swift_getKeyPath();
  sub_10000A5D4(&unk_100946720);
  sub_10076F49C();

  v49 = v13;
  v24 = *(v13 + 104);
  v25 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v55)
  {
    v25 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v26 = *v25;
  v50 = v12;
  v24(v17, v26, v12);
  swift_getKeyPath();
  sub_10076F49C();

  v27 = *(v53 + 88);
  v45 = v11;
  v28 = v48;
  if (v27(v11) == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v29 = v23;
    v30 = v49;
    v31 = v50;
    if (v43)
    {
      v32 = 2;
    }

    else
    {
      v32 = v44;
    }

    v33 = v38;
    sub_10076202C();
    v34 = sub_10076EA4C();
    (*(v40 + 8))(v33, v41);
    if (v34 & 1) != 0 && (sub_10076204C())
    {
      v32 = 1;
    }

    (*(v30 + 16))(v39, v17, v31);
    sub_10003F1A0(v32);
    sub_10076C33C();
    (*(v30 + 8))(v17, v31);
    return sub_10000CFBC(v29, &qword_100942C40);
  }

  else
  {
    v54 = v42;
    sub_100016E2C(v23, v20, &qword_100942C40);
    v36 = *(v18 + 48);
    sub_100061E6C();
    sub_1007620BC();
    (*(v49 + 8))(v17, v50);
    sub_10000CFBC(v23, &qword_100942C40);
    sub_10000CFBC(&v20[v36], &qword_1009499A0);
    sub_10000CFBC(v20, &qword_1009499A0);
    return (*(v53 + 8))(v45, v28);
  }
}

uint64_t sub_1001A9A5C()
{
  sub_1001A9E80();

  return sub_1007620BC();
}

uint64_t sub_1001A9B40()
{
  sub_1001A9E80();

  return sub_1007620AC();
}

uint64_t sub_1001A9C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A9EDC();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1001A9C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D6>, double a9@<D7>)
{
  v23[6] = a5;
  v23[7] = a6;
  v23[5] = a4;
  *&v23[3] = a8;
  *&v23[4] = a9;
  v23[1] = a7;
  v23[2] = a1;
  v12 = sub_10000A5D4(&qword_100942C40);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v23 - v17;
  v19 = *(v9 + 2);
  v20 = *(v9 + 24);
  sub_100016E2C(a2, v23 - v17, &qword_1009499A0);
  sub_100016E2C(a3, &v18[*(v13 + 56)], &qword_1009499A0);
  v24 = *v9;
  v25 = v19;
  v26 = v20;
  sub_100016E2C(v18, v15, &qword_100942C40);
  v21 = *(v13 + 56);
  sub_1007620BC();
  sub_10000CFBC(v18, &qword_100942C40);
  sub_10000CFBC(&v15[v21], &qword_1009499A0);
  return sub_10000CFBC(v15, &qword_1009499A0);
}

unint64_t sub_1001A9E80()
{
  result = qword_10094C058;
  if (!qword_10094C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C058);
  }

  return result;
}

unint64_t sub_1001A9EDC()
{
  result = qword_10094C060;
  if (!qword_10094C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C060);
  }

  return result;
}

uint64_t CrossLinkLockupLayout.init(metrics:artworkView:lockupView:crossLinkTitleText:crossLinkSubtitleText:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  sub_1001A9FF0(a1, a6 + 160);
  sub_10000CF78(a2, a2[3]);
  sub_10076D28C();
  sub_1001AA028(a1);
  sub_100012498(a3, a6 + 40);
  sub_100012498(a4, a6 + 80);
  sub_100012498(a5, a6 + 120);

  return sub_10000CD74(a2);
}

uint64_t CrossLinkLockupLayout.Metrics.init(artworkSize:artworkMargin:subtitleSpace:numberOfLines:offerButtonSize:offerButtonMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  sub_100012498(a1, a5 + 16);
  sub_100012498(a2, a5 + 56);
  *(a5 + 96) = a3;
  *(a5 + 104) = a8;
  *(a5 + 112) = a9;

  return sub_100012498(a4, a5 + 120);
}

uint64_t TodayCardLockupLayout.Metrics.artworkMargin.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 16);

  return sub_100012498(a1, v1 + 16);
}

uint64_t CrossLinkLockupLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 56);

  return sub_100012498(a1, v1 + 56);
}

uint64_t CrossLinkLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  sub_10000CD74(v1 + 120);

  return sub_100012498(a1, v1 + 120);
}

__n128 CrossLinkLockupLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v2;
  v3 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v3;
  v4 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v4;
  v5 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v7;
  return result;
}

uint64_t CrossLinkLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v11 = [a1 traitCollection];
  v12 = sub_10077071C();

  if (v12)
  {

    return sub_1001AA3A0(a2, a3, a4, a5, a6);
  }

  else
  {

    return sub_1001AA8E4(a2, a3, a4, a5, a6);
  }
}

uint64_t sub_1001AA3A0@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v28 = a1;
  v27 = sub_10076D1FC();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10076E0BC();
  v24 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10077164C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  MinY = CGRectGetMinY(v32);
  sub_10000CF78(v5, *(v5 + 3));
  if ((sub_10076D24C() & 1) == 0)
  {
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    MinX = CGRectGetMinX(v33);
    v20 = v5[20];
    v21 = v5[21];
    sub_10000CF78(v5, *(v5 + 3));
    sub_100770A4C();
    sub_10076D23C();
    v34.origin.x = MinX;
    v34.origin.y = MinY;
    v34.size.width = v20;
    v34.size.height = v21;
    CGRectGetMaxY(v34);
    sub_10000CF78(v5 + 22, *(v5 + 25));
    sub_1000FF02C();
    sub_10076D40C();
    (*(v15 + 8))(v17, v14);
  }

  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetMinX(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  CGRectGetWidth(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMaxY(v37);
  sub_10000CF78(v5 + 5, *(v5 + 8));
  sub_100770A4C();
  sub_10076D23C();
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMaxY(v38);
  sub_10000CF78(v5 + 35, *(v5 + 38));
  sub_1000FF02C();
  sub_10076D40C();
  (*(v15 + 8))(v17, v14);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetMinX(v39);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetWidth(v40);
  sub_100770A4C();
  sub_10000A570((v5 + 10), v31);
  sub_10000A570((v5 + 15), v30);
  sub_10000A570((v5 + 27), v29);
  sub_10076E09C();
  sub_10076E0AC();
  (*(v26 + 8))(v11, v27);
  sub_10076D1BC();
  return (*(v24 + 8))(v13, v25);
}

uint64_t sub_1001AA8E4@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v29 = a1;
  v28 = sub_10076D1FC();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10076E0BC();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10077164C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectGetMinX(v33);
  sub_10000CF78(v5, *(v5 + 24));
  if ((sub_10076D24C() & 1) == 0)
  {
    v34.origin.x = a2;
    v34.origin.y = a3;
    v34.size.width = a4;
    v34.size.height = a5;
    MinX = CGRectGetMinX(v34);
    v35.origin.x = a2;
    v35.origin.y = a3;
    v35.size.width = a4;
    v35.size.height = a5;
    MidY = CGRectGetMidY(v35);
    v21 = *(v5 + 160);
    v20 = *(v5 + 168);
    v22 = floor(MidY + v20 * -0.5);
    sub_10000CF78(v5, *(v5 + 24));
    sub_100770A4C();
    sub_10076D23C();
    v36.origin.x = MinX;
    v36.origin.y = v22;
    v36.size.width = v21;
    v36.size.height = v20;
    CGRectGetMaxX(v36);
    sub_10000CF78((v5 + 176), *(v5 + 200));
    sub_1000FF02C();
    sub_10076D40C();
    (*(v15 + 8))(v17, v14);
  }

  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMaxX(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMinY(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetHeight(v39);
  sub_10000CF78((v5 + 40), *(v5 + 64));
  sub_100770A4C();
  sub_10076D23C();
  sub_10000CF78((v5 + 280), *(v5 + 304));
  sub_1000FF02C();
  sub_10076D40C();
  (*(v15 + 8))(v17, v14);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetMinY(v40);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  CGRectGetHeight(v41);
  sub_100770A4C();
  sub_10000A570(v5 + 80, v32);
  sub_10000A570(v5 + 120, v31);
  sub_10000A570(v5 + 216, v30);
  sub_10076E09C();
  sub_10076E0AC();
  (*(v27 + 8))(v11, v28);
  sub_10076D1BC();
  return (*(v25 + 8))(v13, v26);
}

uint64_t sub_1001AAE34(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1001AB0D8();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return EstimatedMeasurable<>.measurements(fitting:in:)(a1, a2, v10, a3, v11, v12);
}

unint64_t sub_1001AAEA4()
{
  result = qword_10094C068;
  if (!qword_10094C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C068);
  }

  return result;
}

uint64_t sub_1001AAF00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001AAF48(uint64_t result, int a2, int a3)
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

__n128 sub_1001AAFEC(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1001AB018(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001AB060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001AB0D8()
{
  result = qword_10094C070;
  if (!qword_10094C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C070);
  }

  return result;
}

char *sub_1001AB12C(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v73 = a3;
  v72 = a1;
  v14 = sub_10076F9AC();
  v78 = *(v14 - 8);
  v79 = v14;
  __chkstk_darwin(v14);
  v77 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10076771C();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = sub_100760B4C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v24 - 8);
  v26 = &v68 - v25;
  v27 = &v7[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerLabelPresenter];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v28 = &v7[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButtonTapHandler];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_metrics;
  v30 = sub_100763E9C();
  v31 = *(v30 - 8);
  v75 = v30;
  v76 = v31;
  v32 = *(v31 + 16);
  v74 = a2;
  v32(&v8[v29], a2, v30);
  v68 = sub_100760B6C();
  v33 = enum case for Wordmark.arcade(_:);
  v34 = sub_10076C43C();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v26, v33, v34);
  (*(v35 + 56))(v26, 0, 1, v34);
  sub_100763E8C();
  (*(v21 + 104))(v23, enum case for WordmarkView.Alignment.leading(_:), v20);
  v36 = *(&v83 + 1);
  v37 = v84;
  v38 = sub_10008B8A4(&v82, *(&v83 + 1));
  v39 = __chkstk_darwin(v38);
  v41 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41, v39);
  v43 = sub_1001AC4BC(v26, v41, v23, v68, v36, v37);
  sub_10000CD74(&v82);
  *&v8[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_wordmarkView] = v43;
  v44 = sub_10076D3DC();
  v45 = *(v44 - 8);
  v46 = v72;
  (*(v45 + 16))(v19, v72, v44);
  (*(v45 + 56))(v19, 0, 1, v44);
  (*(v70 + 104))(v69, enum case for DirectionalTextAlignment.leading(_:), v71);
  v47 = objc_allocWithZone(sub_1007626BC());
  *&v8[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_subtitleLabel] = sub_1007626AC();
  v48 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v8[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton] = sub_1001E89B8(v73);
  v49 = type metadata accessor for ArcadeLockupView();
  v81.receiver = v8;
  v81.super_class = v49;
  v50 = objc_msgSendSuper2(&v81, "initWithFrame:", a4, a5, a6, a7);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v54 = v50;
  [v54 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v54 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v55 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_wordmarkView;
  v56 = *&v54[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_wordmarkView];
  sub_1000325F0();
  v57 = v56;
  v58 = sub_100770CFC();
  [v57 setTintColor:v58];

  [v54 addSubview:*&v54[v55]];
  v59 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_subtitleLabel;
  v60 = *&v54[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_subtitleLabel];
  v61 = sub_100770D1C();
  [v60 setTextColor:v61];

  v62 = *&v54[v59];
  sub_10076266C();

  v63 = *&v54[v59];
  v82 = 0u;
  v83 = 0u;
  memset(v80, 0, sizeof(v80));
  v64 = v63;
  v65 = v77;
  sub_10076F95C();
  sub_1000258C0(v80);
  sub_1000258C0(&v82);
  sub_100770B9C();

  (*(v78 + 8))(v65, v79);
  [v54 addSubview:*&v54[v59]];
  v66 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton;
  [*&v54[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton] addTarget:v54 action:"offerButtonWasTapped" forControlEvents:64];
  [v54 addSubview:*&v54[v66]];

  (*(v76 + 8))(v74, v75);
  (*(v45 + 8))(v46, v44);
  return v54;
}

uint64_t sub_1001ABA00()
{
  v1 = v0;
  v18[0] = sub_100763E9C();
  v2 = *(v18[0] - 8);
  __chkstk_darwin(v18[0]);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100763EAC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 layoutMargins];
  sub_100770ACC();
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_wordmarkView];
  v18[17] = sub_100760B6C();
  v18[18] = &protocol witness table for UIView;
  v18[14] = v10;
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_subtitleLabel];
  v18[12] = sub_1007626BC();
  v18[13] = &protocol witness table for UILabel;
  v18[9] = v11;
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton];
  v18[7] = type metadata accessor for OfferButton();
  v18[8] = &protocol witness table for UIView;
  v18[4] = v12;
  v13 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v1[v13], v18[0]);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_100763E5C();
  sub_1001AC58C();
  sub_10076D2AC();
  (*(v6 + 8))(v9, v5);
  [v1 layoutMargins];
  return sub_100770AEC();
}

uint64_t sub_1001ABCDC()
{
  v22 = sub_10076D1FC();
  v21 = *(v22 - 8);
  __chkstk_darwin(v22);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100763E9C();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100763EAC();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArcadeLockupView();
  v32.receiver = v0;
  v32.super_class = v8;
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_wordmarkView];
  v30 = sub_100760B6C();
  v31 = &protocol witness table for UIView;
  v29 = v9;
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_subtitleLabel];
  v27 = sub_1007626BC();
  v28 = &protocol witness table for UILabel;
  v26 = v10;
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_offerButton];
  v24 = type metadata accessor for OfferButton();
  v25 = &protocol witness table for UIView;
  v23 = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v12], v18);
  v13 = v9;
  v14 = v10;
  v15 = v11;
  sub_100763E5C();
  sub_10076422C();
  v16 = v20;
  sub_100763E6C();
  (*(v21 + 8))(v16, v22);
  return (*(v5 + 8))(v7, v19);
}

id sub_1001AC230()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeLockupView()
{
  result = qword_10094C0C0;
  if (!qword_10094C0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AC37C()
{
  result = sub_100763E9C();
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

uint64_t sub_1001AC430@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  v5 = sub_100763E9C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1001AC4BC(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a5;
  v12[4] = a6;
  v9 = sub_10000DB7C(v12);
  (*(*(a5 - 8) + 32))(v9, a2, a5);
  v10 = objc_allocWithZone(a4);
  return sub_100760B3C();
}

unint64_t sub_1001AC58C()
{
  result = qword_10094C0D0;
  if (!qword_10094C0D0)
  {
    sub_100763EAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C0D0);
  }

  return result;
}

uint64_t type metadata accessor for HeaderButton()
{
  result = qword_10094C100;
  if (!qword_10094C100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001AC680()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_10094C0D8);
  v1 = sub_10000A61C(v0, qword_10094C0D8);
  if (qword_100940A10 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A0C40);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001AC748()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeaderButton();
  if (qword_10093F980 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_10094C0D8);
  (*(v1 + 16))(v3, v4, v0);
  result = sub_10076312C();
  qword_10094C0F0 = result;
  return result;
}

uint64_t sub_1001AC864()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (qword_10093F980 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_10094C0D8);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_10076312C();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id sub_1001AC9A8(void *a1)
{
  v2 = v1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for HeaderButton();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v5 != result))
  {
    v7 = *&v2[qword_10094C0F8];
    v8 = [v2 traitCollection];
    v9 = sub_10077070C();

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0.0;
    }

    if (v9)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v7;
    }

    if (v9)
    {
      v12 = -v7;
    }

    else
    {
      v12 = v7;
    }

    if ((v9 & 1) == 0)
    {
      v7 = -v7;
    }

    [v2 setContentEdgeInsets:{0.0, v11, 0.0, v10}];
    return [v2 setImageEdgeInsets:{0.0, v7, 0.0, v12}];
  }

  return result;
}

void sub_1001ACADC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1001AC9A8(a3);
}

id sub_1001ACB48(char *a1, double a2, double a3, double a4, double a5)
{
  *&a1[qword_10094C0F8] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for HeaderButton();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1001ACBC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001ACC0C(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D3DC();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
  v10[3] = v2;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v3 + 16))(v7, v5, v2);
  sub_10076C8EC();
  (*(v3 + 8))(v5, v2);
  sub_10000CD74(v10);
  return JUScreenClassGetMain();
}

id sub_1001ACDAC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SearchBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1001ACE74()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  sub_10000A5D4(&unk_100945BF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100783DD0;
  *(v5 + 32) = sub_10076E59C();
  *(v5 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_10077061C();
  swift_unknownObjectRelease();

  v6 = sub_1001ACDAC();
  v7 = [v6 searchTextField];

  v8 = objc_allocWithZone(type metadata accessor for SearchTextInputSourceTextField());
  v9 = sub_10046702C(v7);
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput] = v9;

  v11 = OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar;
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar] setDelegate:v1];
  v12 = *&v1[v11];
  sub_100510CD4();

  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton];
  sub_1007710FC();
  v25._countAndFlagsBits = 0x465F484352414553;
  v25._object = 0xEE00535245544C49;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_1007622EC(v25, v26);
  sub_1007710EC();
  v14 = sub_1005A5DB8(0xD000000000000010, 0x80000001007D7A00, 0);
  v15 = [v14 imageWithRenderingMode:2];

  sub_1007710BC();
  sub_100770FBC();
  sub_100770FFC();
  v16 = sub_10077111C();
  (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
  sub_10077114C();
  [v13 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v13 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  v17 = 0.0;
  [v13 setAlpha:0.0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_1009641D0);
  v18 = sub_100770F1C();
  [v13 addAction:v18 forControlEvents:64];

  [v13 setPointerInteractionEnabled:1];
  [*&v1[v11] _setSearchFieldContainerLayoutCustomizationDelegate:v1];
  v19 = [v1 traitCollection];
  [v19 horizontalSizeClass];
  LOBYTE(v4) = sub_1007706CC();
  [*&v1[v11] _additionalPaddingForSearchFieldAtLeadingEdge];
  v21 = v20;
  if (v4)
  {
    [v13 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v17 = v22 + 15.0;
  }

  if (v17 != v21)
  {
    v23 = *&v1[v11];
    [v23 _setAdditionalPaddingForSearchFieldAtLeadingEdge:v17];
  }
}

void sub_1001AD5E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler];
    if (v1)
    {
      v2 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton];
      v3 = Strong;
      sub_10001CE50(*&Strong[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler]);
      v4 = v2;
      v1();
      sub_1000167E0(v1);

      Strong = v4;
    }
  }
}

unint64_t sub_1001AD70C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SearchController();
  v1 = objc_msgSendSuper2(&v8, "keyCommands");
  if (v1)
  {
    v2 = v1;
    sub_100016F40(0, &unk_10094C270);
    v3 = sub_1007701BC();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = v3;
  v4 = UIKeyInputEscape;
  v10._object = 0x80000001007D7A20;
  v10._countAndFlagsBits = 0xD000000000000035;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_1007622EC(v10, v11);
  v5 = sub_10076FF6C();

  v6 = [objc_opt_self() keyCommandWithInput:v4 modifierFlags:0 action:"handleCancelKeyCommandWithCommand:" discoverabilityTitle:v5];

  sub_10077019C();
  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  return v9;
}

id sub_1001AD928(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC20ProductPageExtension16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar] = 0;
  v6 = &v3[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton;
  *&v3[v7] = [objc_opt_self() buttonWithType:1];
  if (a2)
  {
    v8 = sub_10076FF6C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SearchController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1001ADA94(void *a1)
{
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar] = 0;
  v3 = &v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton;
  *&v1[v4] = [objc_opt_self() buttonWithType:1];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SearchController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1001ADB9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001ADC64(char *a1, void *a2)
{
  v13 = [a1 traitCollection];
  v4 = [v13 horizontalSizeClass];
  v5 = v4 == [a2 horizontalSizeClass];
  v6 = v13;
  if (!v5)
  {
    v7 = sub_1007706CC();
    v8 = sub_1001ACDAC();
    [v8 _additionalPaddingForSearchFieldAtLeadingEdge];
    v10 = v9;

    v11 = 0.0;
    if (v7)
    {
      [*&a1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton] sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v11 = v12 + 15.0;
    }

    v6 = v13;
    if (v11 != v10)
    {
      [*&a1[OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar] _setAdditionalPaddingForSearchFieldAtLeadingEdge:?];
      v6 = v13;
    }
  }
}

uint64_t sub_1001ADD78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001ADDB8()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = sub_1004665E0();

  if (v7)
  {
    v8 = [v1 searchResultsController];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for SearchResultsContainerViewController();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v19 = *(v10 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
        v11 = v19;

        if (v19)
        {
          type metadata accessor for StoreCollectionViewController();
          v12 = swift_dynamicCastClass();
          if (v12)
          {
            v13 = *(v12 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
            v14 = sub_10000A5D4(&unk_1009428E0);

            sub_10076F5AC();
            v15 = *(v14 - 8);
            if ((*(v15 + 48))(v4, 1, v14) == 1)
            {
              sub_1000527AC(v4);
            }

            else
            {

              sub_100263FFC(v17, 1, v13, v4);

              (*(v15 + 8))(v4, v14);
            }

            [*&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton] setEnabled:1];

            return;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v19 = 0;
LABEL_11:
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton] setEnabled:0];

    v16 = v19;
  }
}

void sub_1001AE054(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  if ([v5 isActive])
  {
    v12 = [v5 traitCollection];
    v13 = [v12 horizontalSizeClass];

    v14 = v13 == 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = *&v6[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton];
  [v15 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v17 = v16;
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  Height = CGRectGetHeight(v41);
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  v20 = CGRectGetHeight(v43);
  v21 = [v6 traitCollection];
  v22 = sub_10077070C();

  if (!v14)
  {
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    if (v22)
    {
      MaxX = CGRectGetMaxX(*&v25);
      v30 = 15.0;
    }

    else
    {
      MaxX = CGRectGetMinX(*&v25) - v17;
      v30 = -15.0;
    }

    v23 = MaxX + v30;
    v24 = 1.0;
    goto LABEL_14;
  }

  if (v22)
  {
    if (!a1)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    [a1 frame];
    v23 = CGRectGetMaxX(v44) + 15.0 + 8.0;
    v24 = 0.0;
LABEL_14:
    v31 = MinY + (v20 - Height) * 0.5;
    v32 = swift_allocObject();
    *(v32 + 16) = v6;
    *(v32 + 24) = v23;
    *(v32 + 32) = v31;
    *(v32 + 40) = v17;
    *(v32 + 48) = Height;
    *(v32 + 56) = v24;
    v33 = v6;
    v34 = [v15 superview];
    if (v34)
    {

      [v15 setFrame:{v23, v31, v17, Height}];
      [v15 setAlpha:v24];
      v35 = 0;
LABEL_18:
      [v15 setUserInteractionEnabled:v24 > 0.0];
      v39 = sub_1001ACDAC();
      sub_100510CD4();

      sub_1000167E0(v35);
      return;
    }

    if (a1)
    {
      [a1 addSubview:v15];
      v36 = objc_opt_self();
      v37 = swift_allocObject();
      v35 = sub_1001AE650;
      *(v37 + 16) = sub_1001AE650;
      *(v37 + 24) = v32;
      v40[4] = sub_1000349FC;
      v40[5] = v37;
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 1107296256;
      v40[2] = sub_1001C5148;
      v40[3] = &unk_10088B238;
      v38 = _Block_copy(v40);

      [v36 performWithoutAnimation:v38];
      _Block_release(v38);
      LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

      if ((v36 & 1) == 0)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (a1)
  {
    [a1 frame];
    v23 = CGRectGetMinX(v45) - (v17 + 15.0 + 8.0);
    v24 = 0.0;
    goto LABEL_14;
  }

LABEL_22:
  __break(1u);
}

id sub_1001AE46C()
{
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton] setEnabled:0];
  if ([v0 delegate])
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      (*(v2 + 8))(ObjectType, v2);
    }

    swift_unknownObjectRelease();
  }

  return [v0 setActive:0];
}

id sub_1001AE554(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar] = 0;
  v3 = &v1[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton;
  *&v1[v4] = [objc_opt_self() buttonWithType:1];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v6, "initWithSearchResultsController:", a1);
}

uint64_t sub_1001AE618()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_1001AE650()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton);
  [v2 setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];

  return [v2 setAlpha:v1];
}

uint64_t sub_1001AE6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1001AE6E8(double a1, double a2, double a3, double a4)
{
  v9 = sub_10076F9AC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView] = 0;
  v13 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = sub_1001AE938();
  [v16 setClipsToBounds:1];

  v17 = [v14 contentView];
  [v17 addSubview:*&v14[OBJC_IVAR____TtC20ProductPageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView]];

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  sub_10076F95C();
  sub_10000CFBC(v19, &unk_1009434C0);
  sub_10000CFBC(v20, &unk_1009434C0);
  sub_100770B9C();

  (*(v10 + 8))(v12, v9);
  return v14;
}

id sub_1001AE938()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView);
  }

  else
  {
    type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1001AEA58(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  sub_10076C7FC();
  sub_10076AF9C();
  if (swift_dynamicCastClass())
  {
    v12 = sub_1001AE938();
    v13 = sub_10076AF8C();
    sub_10015CDFC(v13, a3, a4);

    v14 = sub_10076C38C();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a3, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10003BD64(v11, v5 + v16);
    swift_endAccess();
    sub_1003DC6B0(a2);
    v17 = [v5 backgroundView];
    if (v17)
    {
      v18 = v17;
      v19 = sub_10076C70C();
      if (!v19)
      {
        sub_1000325F0();
        v19 = sub_100770D8C();
      }

      v20 = v19;
      [v18 setBackgroundColor:v19];
    }

    [v5 setNeedsLayout];
  }

  else
  {
  }
}

void sub_1001AECB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  sub_10000A570(a1, v20);
  sub_10000A5D4(&unk_100942830);
  sub_10076C84C();
  if (swift_dynamicCast())
  {
    sub_10076C7FC();

    sub_10076AF9C();
    if (swift_dynamicCastClass())
    {
      v5 = sub_1001AE938();
      v6 = sub_10076AF8C();
      [v2 bounds];
      v21[3] = sub_10076ADDC();
      v21[4] = &protocol witness table for MediumAdLockupWithAlignedRegionBackground;
      v21[0] = v6;
      sub_10000A570(v21, v20);

      if (swift_dynamicCast())
      {
        v7 = v20[45];
        sub_10076ADCC();
        v8 = sub_10076BB5C();

        if (v8)
        {
          if (sub_10076ADBC())
          {
            v19 = v7;
            if (qword_100941428 != -1)
            {
              swift_once();
            }

            sub_10015E538();
            sub_10076C13C();
            sub_10015E58C(v20);
            sub_10076BFCC();
            v17 = OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
            v9 = *(*&v5[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
            sub_10076BF7C();
            sub_10075FCCC();
            [v9 setContentMode:sub_10076BDBC()];
            sub_100764ADC();
            sub_10075FD0C();
            v16 = v8;
            if (!sub_10076BE1C())
            {
              sub_1000325F0();
              sub_100770D5C();
            }

            sub_10075FB8C();

            v10 = *(*&v5[v17] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
            v11 = sub_10075FD2C();
            v12 = sub_10000D7F8();
            v13 = v10;
            v18 = v11;
            sub_100760B8C();

            sub_10076BFCC();
            v14 = OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
            v15 = *&v5[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView];
            sub_10076BF7C();
            sub_10075FCCC();
            [v15 setContentMode:{sub_10076BDBC(), v16, v12, v18, v19}];
            sub_100764ADC();
            sub_10075FD0C();
            if (!sub_10076BE1C())
            {
              sub_1000325F0();
              sub_100770D5C();
            }

            sub_10075FB8C();
            [*&v5[v14] setContentMode:2];
            sub_100760B8C();
          }
        }
      }

      sub_10000CD74(v21);
    }

    else
    {
    }
  }
}

void sub_1001AF120()
{
  v4 = sub_1001AE938();
  v0 = OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  v1 = *(*&v4[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FCAC();

  sub_10075FCAC();
  v2 = *(*&v4[v0] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_10000D7F8();
  v3 = v2;
  sub_100760BFC();

  sub_100760BFC();
}

void (*sub_1001AF390(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_1001AF948;
}

void sub_1001AF458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v14);
      sub_10000A5D4(&qword_1009575A0);
      sub_10076C84C();
      if (swift_dynamicCast())
      {
        sub_10076C7FC();

        sub_100761BDC();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000CFBC(v6, &qword_1009492E0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_1007660EC();

          (*(v8 + 8))(v10, v7);
        }
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

id sub_1001AF6FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell()
{
  result = qword_10094C310;
  if (!qword_10094C310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001AF7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AE938();
  sub_100653A54(a1, a2);
}

uint64_t sub_1001AF848()
{
  v0 = sub_1001AE938();
  v1 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_isDisplayingSearchAd);

  return v1;
}

uint64_t sub_1001AF890()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AF8C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001AF900()
{

  sub_10000CD74(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001AF99C(void (*a1)(void *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_100762ACC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_10094C348);
  __chkstk_darwin(v7 - 8);
  v9 = v11 - v8;
  sub_100016E2C(v1, v11 - v8, &unk_10094C348);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11[0];
  }

  return result;
}

void sub_1001AFB88(uint64_t a1, uint64_t a2)
{
  sub_100762BEC();
  sub_1001B66E4(&qword_1009624A0, &type metadata accessor for ProductTopLockup);
  sub_10076332C();
  if (v12)
  {
    v4 = sub_1001AFE30(a1, a2);
    v5 = sub_100762B8C();
    sub_1001B6160(v5, v4);

    if (sub_100762B7C() & 1) != 0 && (swift_getKeyPath(), sub_10076338C(), , v6 = sub_1007706FC(), v12, (v6) && (swift_getKeyPath(), sub_10076338C(), , v7 = sub_10077071C(), v12, (v7))
    {
      sub_1001B5A0C();
      if (qword_100941200 != -1)
      {
        swift_once();
      }

      v8 = sub_10076D9AC();
      sub_10000A61C(v8, qword_1009A2380);
      swift_getKeyPath();
      sub_10076338C();

      sub_10076DEDC();
      sub_10000A5D4(&unk_100942870);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007841E0;
      *(v9 + 32) = v12;
      v10 = v12;
      v11 = sub_10076DEEC();
      sub_10076D3EC();
    }

    else
    {
    }
  }
}

double sub_1001AFE30(uint64_t a1, uint64_t a2)
{
  v83 = *&a2;
  v3 = sub_10000A5D4(&qword_10094C340);
  __chkstk_darwin(v3 - 8);
  v67 = &v67 - v4;
  v5 = sub_10000A5D4(&unk_10094C348);
  __chkstk_darwin(v5 - 8);
  v74 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v67 - v8;
  v10 = sub_10075EBAC();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v80 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076B96C();
  v78 = *(v12 - 8);
  v79 = v12;
  __chkstk_darwin(v12);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10076C36C();
  v14 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v67 - v17;
  v19 = sub_10076C38C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v67 - v24;
  __chkstk_darwin(v26);
  v28 = &v67 - v27;
  sub_100762BEC();
  sub_1001B66E4(&qword_1009624A0, &type metadata accessor for ProductTopLockup);
  sub_10076332C();
  v29 = v86[0];
  if (v86[0])
  {
    v73 = v9;
    v84 = v22;
    v68 = v18;
    swift_getKeyPath();
    v69 = v29;
    sub_10076338C();

    sub_10076C24C();
    v30 = *(v20 + 8);
    v30(v28, v19);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C26C();
    v30(v25, v19);
    v31 = v68;
    v32 = v76;
    (*(v14 + 104))(v68, enum case for PageGrid.Direction.vertical(_:), v76);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C25C();
    v70 = v19;
    v72 = v20 + 8;
    v71 = v30;
    v30(v28, v19);
    (*(v14 + 16))(v75, v31, v32);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (*(v14 + 8))(v31, v32);
    sub_10000A5D4(&unk_10094A8C0);
    v33 = v83;
    sub_10076F5CC();
    v34 = v86[0];
    swift_getObjectType();
    v35 = v77;
    v36 = v69;
    sub_100762BBC();
    v76 = v34;
    sub_10075EE2C();
    (*(v78 + 8))(v35, v79);
    swift_getObjectType();
    v37 = v80;
    sub_10075ED1C();
    v38 = sub_1001B5A0C();
    sub_1001B08C4(v36, v37, a1, v33, v86, v38, v39);
    v40 = v82;
    v41 = *(v81 + 8);
    v41(v37, v82);
    sub_10075ED1C();
    v42 = v73;
    sub_100762AEC();
    v41(v37, v40);
    v43 = sub_100762ACC();
    v44 = *(v43 - 8);
    v45 = *(v44 + 48);
    v46 = v42;
    v47 = v45(v42, 1, v43);
    v48 = 0;
    v49 = v46;
    if (v47 != 1)
    {
      v50 = v46;
      v51 = v74;
      sub_100016E2C(v50, v74, &unk_10094C348);
      if (v45(v51, 1, v43) == 1)
      {
        v52 = &unk_10094C348;
        v53 = v51;
      }

      else
      {
        v55 = v67;
        sub_100762ABC();
        (*(v44 + 8))(v51, v43);
        v56 = sub_1007607CC();
        v57 = *(v56 - 8);
        if ((*(v57 + 48))(v55, 1, v56) != 1)
        {
          v58 = sub_1007607BC();
          (*(v57 + 8))(v55, v56);
          v48 = v58 ^ 1;
          goto LABEL_10;
        }

        v52 = &qword_10094C340;
        v53 = v55;
      }

      sub_10000CFBC(v53, v52);
      v48 = 1;
    }

LABEL_10:
    if (sub_100762B8C() && (, ((sub_100762B7C() | v48) & 1) == 0))
    {
      if (qword_100940068 != -1)
      {
        swift_once();
      }

      v60 = qword_10099EC70;
    }

    else
    {
      if (sub_100762B8C())
      {

        v59 = 0.0;
LABEL_22:
        sub_10000CF78(v86, v86[3]);
        v63 = v84;
        sub_10076C2FC();
        swift_getKeyPath();
        sub_10076338C();

        sub_10076D2BC();
        v65 = v64;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v71(v63, v70);
        v54 = v59 + v65;
        sub_10000CFBC(v49, &unk_10094C348);
        sub_10000CD74(v86);
        return v54;
      }

      v59 = 0.0;
      if (v48)
      {
        goto LABEL_22;
      }

      if (qword_100940070 != -1)
      {
        swift_once();
      }

      v60 = qword_10099EC98;
    }

    sub_10000CF78(v60, v60[3]);
    swift_getKeyPath();
    sub_10076338C();

    v61 = v85;
    sub_10076D41C();
    v59 = v62;

    goto LABEL_22;
  }

  return 0.0;
}

uint64_t sub_1001B08C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, double a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v8 = v7;
  v145 = a4;
  v146 = a2;
  v147 = a5;
  v13 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v13 - 8);
  v144 = &v119 - v14;
  v143 = sub_100768FEC();
  v138 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10000A5D4(&unk_100946750);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v139 = &v119 - v16;
  v148 = sub_10076443C();
  v137 = *(v148 - 8);
  __chkstk_darwin(v148);
  v136 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v135);
  v19 = (&v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v153 = &v119 - v21;
  v151 = sub_10076997C();
  v152 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000A5D4(&unk_10094C348);
  __chkstk_darwin(v23 - 8);
  v25 = &v119 - v24;
  v149 = sub_10076C38C();
  v26 = *(v149 - 8);
  __chkstk_darwin(v149);
  v28 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v154 = v28;
  sub_10076338C();

  v29 = a1;
  sub_100762AEC();
  v146 = v8;
  v155 = v8;
  v156 = a1;
  v157 = a3;
  v158 = v145;
  v30 = COERCE_DOUBLE(sub_1001AF99C(sub_1001B6630));
  LOBYTE(a1) = v31;
  sub_10000CFBC(v25, &unk_10094C348);
  if (a1)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v30;
  }

  v33 = sub_1001B5E80();
  if (sub_100762B7C())
  {
    v125 = v26;
    v124 = v29;
    sub_100762BAC();
    if (qword_10093FFF0 != -1)
    {
      swift_once();
    }

    v34 = sub_10000A5D4(&unk_100950EE0);
    sub_10000A61C(v34, qword_10099EB28);
    swift_getKeyPath();
    sub_10076338C();

    *&v160 = v167;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    if (qword_100940168 != -1)
    {
      swift_once();
    }

    v35 = sub_10000A5D4(&unk_10094C370);
    sub_10000A61C(v35, qword_10099EFB0);
    swift_getKeyPath();
    sub_10076338C();

    v166 = v167;
    v134 = v35;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v36 = sub_10076C04C();
    v168 = v36;
    v132 = sub_1001B66E4(&qword_100943230, &type metadata accessor for Feature);
    v169 = v132;
    v37 = sub_10000DB7C(&v167);
    v38 = *(v36 - 8);
    v39 = *(v38 + 104);
    v131 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v133 = v36;
    v130 = v39;
    v129 = v38 + 104;
    v39(v37);
    sub_10076C90C();
    sub_10000CD74(&v167);
    v40 = v150;
    sub_10076996C();
    sub_10076994C();
    v41 = *(v152 + 8);
    v152 += 8;
    v128 = v41;
    v41(v40, v151);
    sub_10076C2FC();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    sub_100630CB4();
    swift_unknownObjectRelease();
    v45 = a3;
    if (qword_10093FFC0 != -1)
    {
      swift_once();
    }

    v46 = v135;
    v47 = sub_10000A61C(v135, qword_10099EAC8);
    v48 = v153;
    sub_1001B678C(v47, v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v145 = a7;
    *(v48 + 32) = a6;
    *(v48 + 40) = a7;
    *(v48 + 8) = left;
    *(v48 + 16) = bottom;
    *(v48 + 24) = right;
    *v48 = 0;
    v164 = &type metadata for CGFloat;
    v165 = &protocol witness table for CGFloat;
    *&v163 = v32;
    v49 = v46[15];
    sub_10000CD74(v48 + v49);
    sub_10003F19C(&v163, v48 + v49);
    v164 = &type metadata for CGFloat;
    v165 = &protocol witness table for CGFloat;
    *&v163 = v33;
    v50 = v46[16];
    sub_10000CD74(v48 + v50);
    sub_10003F19C(&v163, v48 + v50);
    sub_10076C2FC();
    v51 = sub_100630CB4();
    swift_getObjectType();
    v52 = sub_100307C40(&v167, v48, v51);
    swift_unknownObjectRelease();
    if (v52)
    {
      sub_10076C2FC();
      sub_100630CB4();
      swift_unknownObjectRelease();
      sub_1001B678C(v47, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v53 = v145;
      v19[4] = a6;
      v19[5] = v53;
      v19[1] = left;
      v19[2] = bottom;
      v19[3] = right;
      *v19 = 0.0;
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = v32;
      v54 = v46[15];
      sub_10000CD74(v19 + v54);
      sub_10003F19C(&v163, v19 + v54);
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = v33;
      v55 = v46[16];
      sub_10000CD74(v19 + v55);
      sub_10003F19C(&v163, v19 + v55);
      if (qword_1009400E0 != -1)
      {
        swift_once();
      }

      v56 = sub_10000A5D4(&unk_100945BD0);
      v57 = sub_10000A61C(v56, qword_10099EE18);
      v58 = *(*(v56 - 8) + 24);
      v58(v19 + v46[7], v57, v56);
      if (qword_1009400D0 != -1)
      {
        swift_once();
      }

      v59 = sub_10000A61C(v56, qword_10099EDE8);
      v58(v19 + v46[6], v59, v56);
      if (qword_1009400F8 != -1)
      {
        swift_once();
      }

      v60 = sub_10000A61C(v56, qword_10099EE60);
      v58(v19 + v46[8], v60, v56);
      if (qword_1009400A0 != -1)
      {
        swift_once();
      }

      v61 = sub_10000A5D4(&unk_100952280);
      v62 = sub_10000A61C(v61, qword_10099ED58);
      (*(*(v61 - 8) + 24))(v19 + v46[13], v62, v61);
      v164 = &type metadata for CGFloat;
      v165 = &protocol witness table for CGFloat;
      *&v163 = 0x401C000000000000;
      v63 = v153;
      sub_1001B672C(v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
      v64 = v46[9];
      sub_10000CD74(v19 + v64);
      sub_10003F19C(&v163, v19 + v64);
      sub_1001B6654(v19, v63);
      sub_10000CF78(&v167, v168);
      if (qword_10093FFF8 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v34, qword_10099EB40);
      swift_getKeyPath();
      sub_10076338C();

      v166 = v160;
      sub_10075FDCC();
      swift_unknownObjectRelease();
      sub_10076D70C();
    }

    if (qword_100940008 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v34, qword_10099EB70);
    swift_getKeyPath();
    sub_10076338C();

    v166 = v160;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v65 = v163;
    sub_100762B1C();
    v66 = qword_100940170;
    v67 = v65;
    if (v66 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v134, qword_10099EFC8);
    swift_getKeyPath();
    v135 = v45;
    sub_10076338C();

    v166 = v163;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v68 = v133;
    v164 = v133;
    v165 = v132;
    v69 = sub_10000DB7C(&v163);
    v130(v69, v131, v68);
    sub_10076C90C();
    sub_10000CD74(&v163);
    v70 = v150;
    sub_10076996C();
    sub_10076994C();
    v128(v70, v151);
    v71 = sub_10076DDDC();
    swift_allocObject();
    v72 = sub_10076DDBC();
    swift_allocObject();
    v73 = sub_10076DDBC();
    swift_allocObject();
    v74 = sub_10076DDBC();
    swift_allocObject();
    v146 = sub_10076DDBC();
    v75 = sub_1005A5DB8(0xD000000000000013, 0x80000001007D7B10, 0);
    [v75 size];

    swift_allocObject();
    v122 = sub_10076DDBC();
    swift_allocObject();
    v121 = sub_10076DDBC();
    swift_allocObject();
    v119 = sub_10076DDBC();
    swift_allocObject();
    v120 = sub_10076DDBC();
    sub_100762B3C();
    v123 = v67;
    v127 = v72;
    v126 = v73;
    if (v77 == 1 || (v78 = v76, , !v78))
    {
      v79 = v74;
      v162 = 0;
      v161 = 0u;
      v160 = 0u;
      v85 = v153;
    }

    else
    {
      v79 = v74;
      sub_10005312C();
      if (qword_100940C18 != -1)
      {
        swift_once();
      }

      v80 = sub_10076D3DC();
      sub_10000A61C(v80, qword_1009A1240);
      swift_getKeyPath();
      sub_10076338C();

      v81 = v160;
      sub_100770B3C();

      if (qword_100940188 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v134, qword_10099F010);
      swift_getKeyPath();
      sub_10076338C();

      v159 = v160;
      sub_10075FDCC();
      swift_unknownObjectRelease();
      v82 = v133;
      *(&v161 + 1) = v133;
      v162 = v132;
      v83 = sub_10000DB7C(&v160);
      v130(v83, v131, v82);
      sub_10076C90C();
      sub_10000CD74(&v160);
      v84 = v150;
      sub_10076996C();
      sub_10076994C();
      v128(v84, v151);
      v85 = v153;
      v72 = v127;
      v73 = v126;
    }

    v91 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v92 = v147;
    v147[3] = v91;
    v92[4] = sub_1001B66E4(&unk_10094C380, type metadata accessor for ProductLockupInlineUberLayout);
    v93 = sub_10000DB7C(v92);
    sub_1001B678C(v85, v93, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v94 = (v93 + v91[5]);
    v94[3] = v71;
    v94[4] = &protocol witness table for LayoutViewPlaceholder;
    *v94 = v146;
    v95 = (v93 + v91[6]);
    v95[3] = v71;
    v95[4] = &protocol witness table for LayoutViewPlaceholder;
    *v95 = v73;
    v96 = (v93 + v91[7]);
    v96[3] = v71;
    v96[4] = &protocol witness table for LayoutViewPlaceholder;
    *v96 = v79;
    v97 = (v93 + v91[10]);
    v97[3] = v71;
    v97[4] = &protocol witness table for LayoutViewPlaceholder;
    *v97 = v72;
    swift_allocObject();

    v152 = v79;

    v98 = sub_10076DDBC();
    v99 = (v93 + v91[8]);
    v99[3] = v71;
    v99[4] = &protocol witness table for LayoutViewPlaceholder;
    *v99 = v98;
    sub_10000A570(&v167, v93 + v91[9]);
    sub_10000A570(&v163, v93 + v91[11]);
    v100 = v93 + v91[12];
    *(v100 + 4) = 0;
    *v100 = 0u;
    *(v100 + 1) = 0u;
    if (qword_10093F550 != -1)
    {
      swift_once();
    }

    v101 = v148;
    v102 = sub_10000A61C(v148, qword_10099CA98);
    v103 = v137;
    v104 = v136;
    (*(v137 + 16))(v136, v102, v101);
    swift_getKeyPath();
    sub_10076338C();

    v105 = v138;
    v106 = v143;
    (*(v138 + 104))(v140, enum case for OfferButtonSubtitlePosition.below(_:), v143);
    (*(v105 + 56))(v144, 1, 1, v106);
    sub_1001B66E4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
    v107 = v139;
    sub_10076759C();
    sub_10076440C();
    swift_unknownObjectRelease();
    (*(v141 + 8))(v107, v142);
    (*(v103 + 8))(v104, v148);
    swift_allocObject();
    v108 = sub_10076DDBC();
    v109 = (v93 + v91[13]);
    v109[3] = v71;
    v109[4] = &protocol witness table for LayoutViewPlaceholder;
    *v109 = v108;
    sub_100016E2C(&v160, v93 + v91[14], &qword_10094BB30);
    v110 = v93 + v91[15];
    *(v110 + 4) = 0;
    *v110 = 0u;
    *(v110 + 1) = 0u;
    v111 = (v93 + v91[16]);
    v111[3] = v71;
    v111[4] = &protocol witness table for LayoutViewPlaceholder;
    *v111 = v122;
    v112 = (v93 + v91[17]);
    v112[3] = v71;
    v112[4] = &protocol witness table for LayoutViewPlaceholder;
    *v112 = v121;
    v113 = (v93 + v91[18]);
    v113[3] = v71;
    v113[4] = &protocol witness table for LayoutViewPlaceholder;
    *v113 = v119;
    v114 = (v93 + v91[19]);
    v114[3] = v71;
    v114[4] = &protocol witness table for LayoutViewPlaceholder;

    *v114 = v120;
    sub_10000CFBC(&v160, &qword_10094BB30);
    sub_10000CD74(&v163);
    sub_1001B672C(v153, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    (*(v125 + 8))(v154, v149);
    return sub_10000CD74(&v167);
  }

  else
  {
    swift_getKeyPath();
    sub_10076338C();

    v86 = v167;
    v87 = sub_10077071C();

    if (v87)
    {
      v88 = type metadata accessor for ProductLockupAccessibilityLayout(0);
      v89 = v147;
      v147[3] = v88;
      v89[4] = sub_1001B66E4(&unk_10094C360, type metadata accessor for ProductLockupAccessibilityLayout);
      v90 = sub_10000DB7C(v89);
      sub_1001B2864(v29, a3, v90, a6, a7, v32, v33);
    }

    else
    {
      v116 = type metadata accessor for ProductLockupLayout(0);
      v117 = v147;
      v147[3] = v116;
      v117[4] = sub_1001B66E4(&qword_10094C358, type metadata accessor for ProductLockupLayout);
      v118 = sub_10000DB7C(v117);
      sub_1001B429C(v29, a3, v118, a6, a7, v32, v33);
    }

    return (*(v26 + 8))(v154, v149);
  }
}

uint64_t sub_1001B21AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v53 = a4;
  v49 = a3;
  v52 = a2;
  v5 = sub_10076C38C();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10094C348);
  __chkstk_darwin(v8 - 8);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v17 = sub_100762ACC();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a1, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = sub_100762B8C();
  if (v19)
  {
  }

  v20 = sub_100762B7C();
  sub_100016E2C(v16, v13, &unk_10094C348);
  if ((*(v18 + 48))(v13, 1, v17) == 1)
  {
    sub_10000CFBC(v16, &unk_10094C348);
LABEL_5:
    v21 = 0;
    v16 = v13;
    goto LABEL_31;
  }

  sub_100016E2C(v13, v10, &unk_10094C348);
  v22 = (*(v18 + 88))(v10, v17);
  if (v22 == enum case for ProductTopLockup.PrimaryBanner.askToBuy(_:))
  {
    (*(v18 + 96))(v10, v17);
    v23 = *v10;
    sub_10076148C();
    sub_10076F64C();
    sub_10076FC1C();
    if ((sub_1007612AC() & 1) == 0)
    {
      LODWORD(v49) = v19 == 0;
      v48 = sub_10076B9DC();
      v32 = v31;
      v47 = v20 ^ 1;
      v46 = type metadata accessor for LinkableHeaderCollectionViewCell();
      v33 = sub_100630CB4();
      swift_getKeyPath();
      sub_10076338C();

      sub_10076C2FC();
      v35 = v34;
      (*(v50 + 8))(v7, v51);
      ObjectType = swift_getObjectType();
      sub_100126678(v48, v35, v32, v49 & v47, v33, v46, ObjectType);
      v21 = v37;

      swift_unknownObjectRelease();

      sub_10000CFBC(v16, &unk_10094C348);
      v16 = v13;
      goto LABEL_31;
    }
  }

  else
  {
    if (v22 != enum case for ProductTopLockup.PrimaryBanner.banner(_:))
    {
      sub_10000CFBC(v16, &unk_10094C348);
      (*(v18 + 8))(v10, v17);
      goto LABEL_5;
    }

    (*(v18 + 96))(v10, v17);
    v23 = *v10;
  }

  sub_10000CFBC(v13, &unk_10094C348);
  if ((v20 & 1) == 0)
  {
    if (qword_100940078 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10099ECC0, qword_10099ECD8);
    swift_getKeyPath();
    sub_10076338C();

    v24 = *&v54[0];
    sub_10076D41C();
  }

  v25 = sub_10076B99C();
  if (v25)
  {
  }

  sub_10076B98C();
  sub_10000A5D4(&unk_10094C3B0);
  v26 = sub_1007701EC();

  if (v20)
  {
    _Q3 = xmmword_10078C3D0;
    v28 = 17.0;
    v29 = 0.0;
    v30 = 0.0;
  }

  else
  {
    v29 = 22.0;
    if (v25)
    {
      v29 = 15.0;
    }

    if (v26)
    {
      v30 = 15.0;
    }

    else
    {
      v30 = v29;
    }

    v28 = 9.0;
    if (v26)
    {
      v38 = 12.0;
    }

    else
    {
      v38 = 9.0;
    }

    __asm { FMOV            V3.2D, #15.0 }

    *&_Q3 = v38;
  }

  v54[1] = _Q3;
  v54[0] = _Q3;
  v55 = v28;
  v56 = v29;
  v57 = v28;
  v58 = v30;
  v59 = xmmword_100785070;
  v60 = xmmword_100785080;
  v43 = sub_100630CB4();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v50 + 8))(v7, v51);
  sub_10011D440(v23, v54, v43);
  v21 = v44;
  swift_unknownObjectRelease();

LABEL_31:
  result = sub_10000CFBC(v16, &unk_10094C348);
  *v53 = v21;
  return result;
}

uint64_t sub_1001B2864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v164 = a1;
  v144 = a3;
  v12 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v12 - 8);
  v142 = &v124 - v13;
  v140 = sub_100768FEC();
  v134 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100946750);
  v138 = *(v15 - 8);
  v139 = v15;
  __chkstk_darwin(v15);
  v135 = &v124 - v16;
  v137 = sub_10076443C();
  v143 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v151 = &v124 - v19;
  v131 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v131);
  v153 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_10076186C();
  v125 = *(v129 - 8);
  __chkstk_darwin(v129);
  v124 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10000A5D4(&unk_10094C330);
  v141 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v124 - v22;
  v152 = sub_10076997C();
  v165 = *(v152 - 8);
  __chkstk_darwin(v152);
  *&v163 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10076D3DC();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10005312C();
  if (qword_100940030 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A5D4(&qword_10094C390);
  sub_10000A61C(v29, qword_10099EBC8);
  swift_getKeyPath();
  sub_10076338C();

  v182[0] = v183[0];
  v146 = v29;
  sub_10075FDCC();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_10076338C();

  v30 = v183[0];
  v157 = v28;
  v31 = sub_100770B3C();

  v32 = *(v25 + 8);
  v147 = v27;
  v148 = v25 + 8;
  v158 = v24;
  v145 = v32;
  v32(v27, v24);
  sub_100762BAC();
  v33 = qword_100940160;
  v34 = v31;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A5D4(&unk_10094C370);
  sub_10000A61C(v35, qword_10099EF98);
  swift_getKeyPath();
  sub_10076338C();

  v181[0] = v183[0];
  v156 = v35;
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v36 = sub_10076C04C();
  v183[3] = v36;
  *&v162 = sub_1001B66E4(&qword_100943230, &type metadata accessor for Feature);
  v183[4] = v162;
  v37 = sub_10000DB7C(v183);
  v38 = *(v36 - 8);
  v39 = *(v38 + 104);
  v161 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v155 = v36;
  v159 = v38 + 104;
  v160 = v39;
  v39(v37);
  LOBYTE(v36) = sub_10076C90C();
  sub_10000CD74(v183);
  LOBYTE(v123) = v36 & 1;
  v40 = v163;
  v132 = v34;
  sub_10076996C();
  sub_10076994C();
  v41 = *(v165 + 8);
  v165 += 8;
  v154 = v41;
  v41(v40, v152);
  if (qword_100940040 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v146, qword_10099EBF8);
  swift_getKeyPath();
  sub_10076338C();

  v181[0] = v182[0];
  v42 = v147;
  sub_10075FDCC();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_10076338C();

  v43 = v182[0];
  v44 = sub_100770B3C();

  v145(v42, v158);
  v130 = sub_100762B1C();
  v45 = qword_100940170;
  v46 = v44;
  if (v45 != -1)
  {
    swift_once();
  }

  v128 = sub_10000A61C(v156, qword_10099EFC8);
  swift_getKeyPath();
  v127 = a2;
  sub_10076338C();

  *&v178 = v182[0];
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v47 = v155;
  v182[3] = v155;
  v182[4] = v162;
  v48 = sub_10000DB7C(v182);
  v160(v48, v161, v47);
  sub_10076C90C();
  sub_10000CD74(v182);
  v49 = v163;
  sub_10076996C();
  sub_10076994C();
  v50 = v152;
  v51 = v154;
  v154(v49, v152);
  v130 = sub_100762ADC();
  v126 = v52;
  swift_getKeyPath();
  v53 = v46;
  sub_10076338C();

  v174 = v181[0];
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v181[3] = v47;
  v181[4] = v162;
  v54 = sub_10000DB7C(v181);
  v160(v54, v161, v47);
  v55 = sub_10076C90C();
  sub_10000CD74(v181);
  LOBYTE(v123) = v55 & 1;
  v130 = v53;
  sub_10076996C();
  sub_10076994C();
  v56 = v49;
  v57 = v50;
  v51(v56, v50);
  sub_100762AFC();
  if (v58)
  {
    if (qword_100940050 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v146, qword_10099EC28);
    swift_getKeyPath();
    sub_10076338C();

    v174 = v178;
    v59 = v147;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    sub_10076338C();

    v60 = v178;
    v61 = sub_100770B3C();

    v145(v59, v158);
    v62 = qword_100940178;
    v63 = v61;
    if (v62 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v156, qword_10099EFE0);
    swift_getKeyPath();
    sub_10076338C();

    *&v171 = v178;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v64 = v155;
    *(&v179 + 1) = v155;
    v180 = v162;
    v65 = sub_10000DB7C(&v178);
    v160(v65, v161, v64);
    LOBYTE(v64) = sub_10076C90C();
    sub_10000CD74(&v178);
    LOBYTE(v123) = v64 & 1;
    v66 = v163;
    sub_10076996C();
    sub_10076994C();

    v154(v66, v50);
  }

  else
  {
    v180 = 0;
    v178 = 0u;
    v179 = 0u;
  }

  v67 = v129;
  sub_1001B65D8();
  sub_10076335C();
  swift_getKeyPath();
  sub_10076FD9C();

  v68 = v174;
  swift_getKeyPath();
  sub_10076FD9C();

  v69 = v175;
  if (v175)
  {
    v70 = v158;
    if (v68)
    {

      goto LABEL_31;
    }
  }

  else
  {
    v70 = v158;
  }

  v71 = sub_100762B5C();
  v72 = v124;
  v73 = v125;
  if (v71)
  {
    v74 = v71;
  }

  else
  {
    if (!sub_100762B4C())
    {
LABEL_29:
      v69 = 0;
      goto LABEL_30;
    }

    v74 = sub_100766AFC();
  }

  (*(v73 + 104))(v72, enum case for OfferTitleType.standard(_:), v67);
  if (!*(v74 + 16) || (v75 = sub_10061070C(v72), (v76 & 1) == 0))
  {

    (*(v73 + 8))(v72, v67);
    goto LABEL_29;
  }

  v77 = (*(v74 + 56) + 16 * v75);
  v78 = v72;
  v148 = *v77;
  v79 = v73;
  v69 = v77[1];
  v80 = *(v79 + 8);

  v80(v78, v67);

LABEL_30:
  v57 = v152;
LABEL_31:
  if (qword_100940E50 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v70, qword_1009A18E8);
  swift_getKeyPath();
  sub_10076338C();

  v81 = v174;
  sub_100770B3C();

  if (qword_100940190 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v156, qword_10099F028);
  swift_getKeyPath();
  sub_10076338C();

  *&v168 = v174;
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v82 = v155;
  v176 = v155;
  v177 = v162;
  v83 = sub_10000DB7C(&v174);
  v160(v83, v161, v82);
  LOBYTE(v82) = sub_10076C90C();
  sub_10000CD74(&v174);
  LOBYTE(v123) = v82 & 1;
  v84 = v163;
  sub_10076996C();
  sub_10076994C();
  v154(v84, v57);
  sub_10000CF78(&v174, v176);
  if (v69)
  {
  }

  sub_10076D25C();
  sub_100762B3C();
  if (v85 == 1 || (v86 = v85, , !v86))
  {
    v173 = 0;
    v171 = 0u;
    v172 = 0u;
  }

  else
  {
    if (qword_100940C08 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v158, qword_1009A1210);
    swift_getKeyPath();
    sub_10076338C();

    v87 = v171;
    sub_100770B3C();

    if (qword_100940180 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v156, qword_10099EFF8);
    swift_getKeyPath();
    sub_10076338C();

    v167 = v171;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v88 = v155;
    *(&v172 + 1) = v155;
    v173 = v162;
    v89 = sub_10000DB7C(&v171);
    v160(v89, v161, v88);
    LOBYTE(v88) = sub_10076C90C();
    sub_10000CD74(&v171);
    LOBYTE(v123) = v88 & 1;
    v90 = v163;
    sub_10076996C();
    sub_10076994C();
    v154(v90, v57);
  }

  sub_100762B3C();
  if (v92 == 1 || (v93 = v91, , !v93))
  {
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
  }

  else
  {
    if (qword_100940C10 != -1)
    {
      swift_once();
    }

    v94 = v57;
    sub_10000A61C(v158, qword_1009A1228);
    swift_getKeyPath();
    sub_10076338C();

    v95 = v168;
    sub_100770B3C();

    if (qword_100940188 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v156, qword_10099F010);
    swift_getKeyPath();
    sub_10076338C();

    v166 = v168;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v96 = v155;
    *(&v169 + 1) = v155;
    v170 = v162;
    v97 = sub_10000DB7C(&v168);
    v160(v97, v161, v96);
    v98 = sub_10076C90C();
    sub_10000CD74(&v168);
    LOBYTE(v123) = v98 & 1;
    v99 = v163;
    sub_10076996C();
    sub_10076994C();
    v154(v99, v94);
  }

  v100 = sub_10076DDDC();
  swift_allocObject();
  v165 = sub_10076DDBC();
  swift_allocObject();
  v164 = sub_10076DDBC();
  v101 = *&UIEdgeInsetsZero.top;
  v162 = *&UIEdgeInsetsZero.bottom;
  v163 = v101;
  if (qword_10093FFC8 != -1)
  {
    swift_once();
  }

  v102 = sub_10000A61C(v131, qword_10099EAE0);
  __chkstk_darwin(v102);
  *(&v124 - 8) = a4;
  *(&v124 - 7) = a5;
  *(&v124 - 6) = a6;
  *(&v124 - 5) = a7;
  v103 = v162;
  *(&v124 - 2) = v163;
  v123 = v103;
  sub_1001B66E4(&qword_10094C398, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_10076C13C();
  swift_getKeyPath();
  sub_10076338C();

  v104 = v167;
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v105 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v105 = qword_100944CA0;
  }

  v106 = v137;
  v107 = sub_10000A61C(v137, v105);
  v108 = v143;
  v109 = v133;
  (*(v143 + 16))(v133, v107, v106);

  (*(v108 + 32))(v151, v109, v106);
  v110 = *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  *&v163 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics;
  v111 = v144;
  sub_1001B678C(v153, v144 + v110, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  swift_allocObject();
  v112 = sub_10076DDBC();
  *(v111 + 24) = v100;
  *(v111 + 32) = &protocol witness table for LayoutViewPlaceholder;
  *v111 = v112;
  sub_10000A570(v183, v111 + 40);
  sub_10000A570(v181, v111 + 80);
  sub_10000A570(v182, v111 + 120);
  sub_100016E2C(&v178, v111 + 160, &qword_10094BB30);
  swift_getKeyPath();
  sub_10076338C();

  v113 = v134;
  v114 = v140;
  (*(v134 + 104))(v136, enum case for OfferButtonSubtitlePosition.below(_:), v140);
  (*(v113 + 56))(v142, 1, 1, v114);
  sub_1001B66E4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
  v115 = v135;
  sub_10076759C();
  v116 = v151;
  sub_10076440C();
  swift_unknownObjectRelease();
  (*(v138 + 8))(v115, v139);
  swift_allocObject();
  v117 = sub_10076DDBC();
  *(v111 + 224) = v100;
  *(v111 + 232) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 200) = v117;
  *(v111 + 240) = 0u;
  *(v111 + 256) = 0u;
  *(v111 + 272) = 0;
  v118 = v176;
  v119 = v177;
  v120 = sub_10000CF78(&v174, v176);
  *(v111 + 304) = v118;
  *(v111 + 312) = *(v119 + 8);
  v121 = sub_10000DB7C((v111 + 280));
  (*(*(v118 - 8) + 16))(v121, v120, v118);
  sub_100016E2C(&v171, v111 + 320, &qword_10094BB30);
  sub_100016E2C(&v168, v111 + 360, &qword_10094BB30);
  *(v111 + 424) = v100;
  *(v111 + 432) = &protocol witness table for LayoutViewPlaceholder;
  *(v111 + 400) = v165;
  *(v111 + 464) = v100;
  *(v111 + 472) = &protocol witness table for LayoutViewPlaceholder;

  *(v111 + 440) = v164;
  (*(v108 + 8))(v116, v106);
  sub_1001B672C(v153, v163);
  sub_10000CFBC(&v168, &qword_10094BB30);
  sub_10000CFBC(&v171, &qword_10094BB30);
  (*(v141 + 8))(v149, v150);
  sub_10000CFBC(&v178, &qword_10094BB30);
  sub_10000CD74(v181);
  sub_10000CD74(v182);
  sub_10000CD74(v183);
  return sub_10000CD74(&v174);
}

uint64_t sub_1001B429C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v155 = a1;
  v137 = a3;
  v12 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v12 - 8);
  v135 = v125 - v13;
  v134 = sub_100768FEC();
  v129 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100946750);
  v132 = *(v15 - 8);
  v133 = v15;
  __chkstk_darwin(v15);
  v130 = v125 - v16;
  v143 = sub_10076443C();
  v136 = *(v143 - 8);
  __chkstk_darwin(v143);
  v128 = v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = v125 - v19;
  v20 = sub_10076186C();
  v138 = *(v20 - 8);
  v139 = v20;
  __chkstk_darwin(v20);
  v126 = v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076997C();
  v23 = *(v22 - 8);
  v153 = v22;
  v154 = v23;
  __chkstk_darwin(v22);
  v149 = v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&qword_10094C3A0);
  __chkstk_darwin(v25 - 8);
  v27 = v125 - v26;
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v28);
  v30 = v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v125 - v32;
  v34 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
  swift_getKeyPath();
  sub_10076338C();

  v35 = v179[0];
  sub_10036364C(v179[0], v30);
  v156 = a4;
  v157 = a5;
  v158 = a6;
  v159 = a7;
  v36 = *&UIEdgeInsetsZero.bottom;
  v160 = *&UIEdgeInsetsZero.top;
  v161 = v36;
  v162 = v27;
  sub_1001B66E4(&qword_10094C3A8, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10076C13C();

  sub_1001B672C(v30, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10000CFBC(v27, &qword_10094C3A0);
  v150 = sub_100762BAC();
  v145 = v37;
  swift_getKeyPath();
  v38 = a2;
  sub_10076338C();

  v177[0] = v179[0];
  v39 = sub_10000A5D4(&unk_100950EE0);
  sub_10075FDCC();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_10076338C();

  *&v174 = v179[0];
  v40 = sub_10000A5D4(&unk_10094C370);
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v41 = sub_10076C04C();
  v179[3] = v41;
  v147 = sub_1001B66E4(&qword_100943230, &type metadata accessor for Feature);
  v179[4] = v147;
  v42 = sub_10000DB7C(v179);
  v43 = *(v41 - 8);
  v44 = *(v43 + 104);
  LODWORD(v152) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v148 = v41;
  v151 = v44;
  v146 = v43 + 104;
  v44(v42);
  sub_10076C90C();
  sub_10000CD74(v179);
  v45 = v149;
  sub_10076996C();
  sub_10076994C();
  v46 = *(v154 + 8);
  v154 += 8;
  v150 = v46;
  v46(v45, v153);
  v125[1] = v28;
  swift_getKeyPath();
  v141 = v38;
  sub_10076338C();

  *&v174 = v177[0];
  v145 = v33;
  v140 = v39;
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v47 = v178[0];
  v144 = sub_100762B1C();
  v127 = v48;
  v49 = qword_100940170;
  v50 = v47;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = v40;
  v125[3] = sub_10000A61C(v40, qword_10099EFC8);
  swift_getKeyPath();
  sub_10076338C();

  *&v174 = v178[0];
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v53 = v147;
  v52 = v148;
  v178[3] = v148;
  v178[4] = v147;
  v54 = sub_10000DB7C(v178);
  (v151)(v54, v152, v52);
  sub_10076C90C();
  sub_10000CD74(v178);
  v55 = v149;
  sub_10076996C();
  sub_10076994C();
  v150(v55, v153);
  v127 = sub_100762ADC();
  v125[2] = v56;
  swift_getKeyPath();
  v57 = v50;
  sub_10076338C();

  v171[0] = v177[0];
  v144 = v51;
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v177[3] = v52;
  v177[4] = v53;
  v58 = sub_10000DB7C(v177);
  (v151)(v58, v152, v52);
  sub_10076C90C();
  sub_10000CD74(v177);
  v127 = v57;
  sub_10076996C();
  sub_10076994C();
  v59 = v153;
  v150(v55, v153);
  sub_100762AFC();
  if (v60)
  {
    swift_getKeyPath();
    sub_10076338C();

    *&v167 = v171[0];
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v61 = qword_100940178;
    v62 = v174;
    if (v61 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v144, qword_10099EFE0);
    swift_getKeyPath();
    sub_10076338C();

    *&v167 = v174;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v63 = v148;
    *(&v175 + 1) = v148;
    v176 = v147;
    v64 = sub_10000DB7C(&v174);
    (v151)(v64, v152, v63);
    sub_10076C90C();
    sub_10000CD74(&v174);
    v65 = v149;
    sub_10076996C();
    sub_10076994C();

    v59 = v153;
    v150(v65, v153);
  }

  else
  {
    v176 = 0;
    v174 = 0u;
    v175 = 0u;
  }

  v66 = sub_100762B5C();
  v67 = v138;
  v68 = v139;
  v69 = v126;
  if (v66)
  {
    v70 = v66;
    v71 = v144;
  }

  else
  {
    v72 = sub_100762B4C();
    v71 = v144;
    if (!v72)
    {
      v154 = 0;
      goto LABEL_16;
    }

    v70 = sub_100766AFC();
    v67 = v138;
  }

  (*(v67 + 104))(v69, enum case for OfferTitleType.standard(_:), v68);
  if (*(v70 + 16) && (v73 = sub_10061070C(v69), (v74 & 1) != 0))
  {
    v75 = (*(v70 + 56) + 16 * v73);
    v76 = v75[1];
    v154 = *v75;
    v77 = *(v67 + 8);

    v77(v69, v139);

    v72 = v76;
  }

  else
  {

    (*(v67 + 8))(v69, v68);
    v154 = 0;
    v72 = 0;
  }

LABEL_16:
  v78 = qword_100940018;
  v141 = v72;

  if (v78 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v140, qword_10099EBA0);
  swift_getKeyPath();
  sub_10076338C();

  *&v164 = v171[0];
  sub_10075FDCC();
  swift_unknownObjectRelease();
  if (qword_100940190 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v71, qword_10099F028);
  swift_getKeyPath();
  sub_10076338C();

  v170 = v171[0];
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v79 = v148;
  v172 = v148;
  v173 = v147;
  v80 = sub_10000DB7C(v171);
  (v151)(v80, v152, v79);
  sub_10076C90C();
  sub_10000CD74(v171);
  v81 = v149;
  sub_10076996C();
  sub_10076994C();
  v150(v81, v59);
  sub_10000CF78(v171, v172);
  sub_10076D25C();
  sub_100762B3C();
  if (v82 == 1 || (v83 = v82, , !v83))
  {
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
  }

  else
  {
    sub_10005312C();
    if (qword_100940C08 != -1)
    {
      swift_once();
    }

    v84 = sub_10076D3DC();
    sub_10000A61C(v84, qword_1009A1210);
    swift_getKeyPath();
    sub_10076338C();

    v85 = v167;
    sub_100770B3C();

    if (qword_100940180 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v144, qword_10099EFF8);
    swift_getKeyPath();
    sub_10076338C();

    v170 = v167;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v86 = v148;
    *(&v168 + 1) = v148;
    v169 = v147;
    v87 = sub_10000DB7C(&v167);
    (v151)(v87, v152, v86);
    sub_10076C90C();
    sub_10000CD74(&v167);
    v88 = v149;
    sub_10076996C();
    sub_10076994C();
    v150(v88, v153);
  }

  sub_100762B3C();
  if (v90 == 1 || (v91 = v89, , !v91))
  {
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
  }

  else
  {
    sub_10005312C();
    if (qword_100940C10 != -1)
    {
      swift_once();
    }

    v92 = sub_10076D3DC();
    sub_10000A61C(v92, qword_1009A1228);
    swift_getKeyPath();
    sub_10076338C();

    v93 = v164;
    sub_100770B3C();

    if (qword_100940188 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v144, qword_10099F010);
    swift_getKeyPath();
    sub_10076338C();

    v163 = v164;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    v94 = v148;
    *(&v165 + 1) = v148;
    v166 = v147;
    v95 = sub_10000DB7C(&v164);
    (v151)(v95, v152, v94);
    sub_10076C90C();
    sub_10000CD74(&v164);
    v96 = v149;
    sub_10076996C();
    sub_10076994C();
    v150(v96, v153);
  }

  v97 = sub_10076DDDC();
  swift_allocObject();
  v153 = sub_10076DDBC();
  swift_allocObject();
  v152 = sub_10076DDBC();
  swift_getKeyPath();
  sub_10076338C();

  v98 = v170;
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v99 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v99 = qword_100944CA0;
  }

  v100 = v143;
  v101 = sub_10000A61C(v143, v99);
  v102 = v136;
  v103 = v128;
  (*(v136 + 16))(v128, v101, v100);

  (*(v102 + 32))(v142, v103, v100);
  v151 = type metadata accessor for ProductLockupLayout.Metrics;
  v104 = v137;
  sub_1001B678C(v145, v137, type metadata accessor for ProductLockupLayout.Metrics);
  swift_allocObject();
  v105 = sub_10076DDBC();
  v106 = type metadata accessor for ProductLockupLayout(0);
  v107 = (v104 + v106[5]);
  v107[3] = v97;
  v107[4] = &protocol witness table for LayoutViewPlaceholder;
  *v107 = v105;
  sub_10000A570(v179, v104 + v106[6]);
  sub_10000A570(v177, v104 + v106[7]);
  sub_10000A570(v178, v104 + v106[8]);
  sub_100016E2C(&v174, v104 + v106[9], &qword_10094BB30);
  v108 = v104 + v106[10];
  *(v108 + 32) = 0;
  *v108 = 0u;
  *(v108 + 16) = 0u;
  swift_getKeyPath();
  sub_10076338C();

  v109 = v129;
  v110 = v134;
  (*(v129 + 104))(v131, enum case for OfferButtonSubtitlePosition.below(_:), v134);
  (*(v109 + 56))(v135, 1, 1, v110);
  sub_1001B66E4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
  v111 = v130;
  sub_10076759C();
  v112 = v142;
  sub_10076440C();
  swift_unknownObjectRelease();
  (*(v132 + 8))(v111, v133);
  swift_allocObject();
  v113 = sub_10076DDBC();
  v114 = (v104 + v106[11]);
  v114[3] = v97;
  v114[4] = &protocol witness table for LayoutViewPlaceholder;
  *v114 = v113;
  v115 = v172;
  v116 = v173;
  v117 = sub_10000CF78(v171, v172);
  v118 = (v104 + v106[12]);
  v118[3] = v115;
  v118[4] = *(v116 + 8);
  v119 = sub_10000DB7C(v118);
  (*(*(v115 - 8) + 16))(v119, v117, v115);
  sub_100016E2C(&v167, v104 + v106[13], &qword_10094BB30);
  sub_100016E2C(&v164, v104 + v106[14], &qword_10094BB30);
  LOBYTE(v115) = sub_100762B2C();
  v120 = (v104 + v106[17]);
  v120[3] = v97;
  v120[4] = &protocol witness table for LayoutViewPlaceholder;
  *v120 = v153;
  v121 = (v104 + v106[18]);
  v121[3] = v97;
  v121[4] = &protocol witness table for LayoutViewPlaceholder;

  *v121 = v152;
  (*(v102 + 8))(v112, v143);
  sub_10000CFBC(&v164, &qword_10094BB30);
  sub_10000CFBC(&v167, &qword_10094BB30);
  sub_10000CFBC(&v174, &qword_10094BB30);
  sub_10000CD74(v177);
  sub_10000CD74(v178);
  sub_10000CD74(v179);
  sub_1001B672C(v145, v151);
  *(v104 + v106[15]) = v115 & 1;
  v122 = (v104 + v106[16]);
  v123 = v141;
  *v122 = v154;
  v122[1] = v123;
  return sub_10000CD74(v171);
}

double sub_1001B5A0C()
{
  v0 = sub_10000A5D4(&qword_100949638);
  __chkstk_darwin(v0 - 8);
  v2 = &v33 - v1;
  v3 = sub_100767B9C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v33 - v8;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100762BEC();
  sub_1001B66E4(&qword_1009624A0, &type metadata accessor for ProductTopLockup);
  sub_10076332C();
  if (!v38)
  {
    return 0.0;
  }

  v34 = v4;
  v35 = v2;
  v36 = v3;
  swift_getKeyPath();
  sub_10076338C();

  v33 = v38;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C24C();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v17 = v16;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C24C();
  v19 = v18;
  v15(v12, v9);
  JUScreenClassGetPortraitWidth();
  v21 = v20;
  if (sub_100762B7C())
  {
    v22 = v34;
    v23 = &enum case for ProductPageIconDimension.large(_:);
    if (v17 >= v14)
    {
      v23 = &enum case for ProductPageIconDimension.extraSmall(_:);
    }

    v24 = v36;
    (*(v34 + 104))(v6, *v23, v36);
    v25 = v37;
    (*(v22 + 32))(v37, v6, v24);
    v26 = v35;
    v27 = v33;
  }

  else
  {
    v27 = v33;
    v29 = sub_1007706FC();
    v26 = v35;
    v24 = v36;
    v22 = v34;
    v25 = v37;
    if (v29 & 1) != 0 && (sub_10077071C())
    {
      v30 = &enum case for ProductPageIconDimension.extraLargeAccessibility(_:);
    }

    else if ((sub_1007706FC() & 1) != 0 && v21 < v19)
    {
      v30 = &enum case for ProductPageIconDimension.extraLarge(_:);
    }

    else if (v17 < v14 || (sub_10077071C() & 1) != 0)
    {
      v30 = &enum case for ProductPageIconDimension.medium(_:);
    }

    else
    {
      v30 = &enum case for ProductPageIconDimension.small(_:);
    }

    (*(v22 + 104))(v25, *v30, v24);
  }

  sub_100762BDC();
  sub_100767B8C();
  v28 = v31;

  sub_10000CFBC(v26, &qword_100949638);
  (*(v22 + 8))(v25, v24);
  return v28;
}

double sub_1001B5E80()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  v4 = sub_100762B0C();
  if (v4)
  {
    v5 = v4;
    if ((sub_100762B7C() & 1) == 0)
    {
      v24 = v0;
      if (qword_100940080 != -1)
      {
        swift_once();
      }

      sub_10000CF78(qword_10099ECE8, qword_10099ED00);
      swift_getKeyPath();
      sub_10076338C();

      v6 = *&v25[0];
      sub_10076D41C();

      v0 = v24;
    }

    v7 = sub_100762B7C();
    v8 = sub_10076B99C();
    if (v8)
    {
    }

    sub_10076B98C();
    sub_10000A5D4(&unk_10094C3B0);
    v9 = sub_1007701EC();

    if (v7)
    {
      _Q3 = xmmword_10078C3D0;
      v11 = 17.0;
      v12 = 0.0;
      v13 = 0.0;
    }

    else
    {
      v12 = 22.0;
      if (v8)
      {
        v12 = 15.0;
      }

      if (v9)
      {
        v13 = 15.0;
      }

      else
      {
        v13 = v12;
      }

      v11 = 9.0;
      if (v9)
      {
        v15 = 12.0;
      }

      else
      {
        v15 = 9.0;
      }

      __asm { FMOV            V3.2D, #15.0 }

      *&_Q3 = v15;
    }

    v25[0] = _Q3;
    v25[1] = _Q3;
    v26 = v11;
    v27 = v12;
    v28 = v11;
    v29 = v13;
    v30 = xmmword_100785070;
    v31 = xmmword_100785080;
    v20 = sub_100630CB4();
    sub_10076C2FC();
    sub_10011D440(v5, v25, v20);
    v14 = v21;

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0.0;
  }

  (*(v1 + 8))(v3, v0);
  return v14;
}

double sub_1001B6160(uint64_t a1, double a2)
{
  v4 = sub_10076C38C();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v35[-v8];
  v10 = sub_10076B21C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10000A5D4(&unk_10094C330);
  __chkstk_darwin(v14);
  v17 = &v35[-v16];
  if (!a1)
  {
    return 0.0;
  }

  v37 = v15;
  v39 = v11;
  v40 = v10;
  swift_getKeyPath();

  sub_10076338C();

  v18 = v43;
  v19 = sub_1007706EC();

  if (v19)
  {
    v20 = a2;
  }

  else
  {
    v20 = 0.0;
  }

  sub_1001B65D8();
  sub_10076335C();
  v41 = a1;
  sub_10076B23C();
  swift_getKeyPath();
  v38 = v14;
  sub_10076FD9C();

  v36 = v43 ^ 1;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C26C();
  v22 = v21;
  v23 = *(v42 + 8);
  v23(v9, v4);
  swift_getKeyPath();
  sub_10076338C();

  v24 = v43;
  v25 = sub_1007706EC();

  if (v25)
  {
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C25C();
    v27 = v26;
    v23(v9, v4);
    v22 = v22 - v27;
  }

  swift_getKeyPath();
  sub_10076338C();

  v28 = v43;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C24C();
  v30 = v29;
  v23(v6, v4);
  v31 = v22 - v20;
  if (v22 - v20 < 0.0)
  {
    v31 = 0.0;
  }

  sub_10020B56C(v28, v13, v36 & 1, v30, *&v31, 0);
  v33 = v32;

  (*(v39 + 8))(v13, v40);
  (*(v37 + 8))(v17, v38);
  return v33;
}

unint64_t sub_1001B65D8()
{
  result = qword_1009624B0;
  if (!qword_1009624B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009624B0);
  }

  return result;
}

uint64_t sub_1001B6654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B66E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B672C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001B678C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B6820()
{
  v1 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_10000A5D4(&qword_10094C3E0);
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v10 - v5;
  if ([*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView) + qword_100954908) isHidden])
  {
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100784500;
    sub_10076A91C();
    sub_10076A90C();
    v10 = v7;
    sub_1001B79A4(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10000A5D4(&qword_10094AA68);
    sub_100166BA8();
    return sub_1007712CC();
  }

  else
  {
    sub_10076336C();
    sub_10076F87C();
    sub_1001B7920();
    sub_10076F83C();
    sub_10000A5D4(&qword_10094AA58);
    sub_10076A92C();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100783C60;
    sub_10076A91C();
    sub_10076A90C();
    sub_10076A8FC();
    v10 = v9;
    sub_1001B79A4(&qword_10094AA60, &type metadata accessor for SelectableShelfComponentViewReaction);
    sub_10000A5D4(&qword_10094AA68);
    sub_100166BA8();
    sub_1007712CC();
    return (*(v3 + 8))(v6, v2);
  }
}

void sub_1001B6C18(void *a1)
{
  v2 = type metadata accessor for EditorsChoiceView();
  swift_getObjectType();
  sub_100043A10(3, 0, 0, a1, 0, 1, v2);
}

uint64_t sub_1001B6C88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1001B6CE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1001B6DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1001B79A4(&qword_10094C3E8, type metadata accessor for ProductEditorsChoiceCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1001B6E70(uint64_t a1)
{
  result = sub_1001B79A4(&qword_10094C3C0, type metadata accessor for ProductEditorsChoiceCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_1001B6F10(uint64_t a1)
{
  v38 = sub_10076C38C();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10076DD3C();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  __chkstk_darwin(v9);
  v36 = sub_10076DA7C();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_10094C3D0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - v13;
  sub_100760DEC();
  sub_1001B79A4(&qword_100958F40, &type metadata accessor for EditorsChoice);
  sub_10076332C();
  if (!v43[0])
  {
    return 0.0;
  }

  v15 = v43[0];
  sub_1001B7920();
  v32[2] = a1;
  sub_10076335C();
  sub_10076FD8C();
  if (v43[0])
  {
    v32[0] = 0;
  }

  else
  {
    v17 = sub_100760DCC();
    v18 = 6;
    if ((v17 & 1) == 0)
    {
      v18 = 0;
    }

    v32[0] = v18;
  }

  v32[1] = v15;
  (*(v12 + 8))(v14, v11);
  sub_10076DDDC();
  swift_allocObject();
  v39 = sub_10076DD9C();
  sub_100760DDC();
  sub_10076DD2C();
  if (qword_100940C40 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  sub_10000A61C(v19, qword_1009A12B8);
  sub_10076DCFC();
  v20 = *(v3 + 8);
  v21 = v5;
  v22 = v33;
  v20(v21, v33);
  sub_10076DD1C();
  v20(v8, v22);
  sub_10076DA5C();
  v23 = v40;
  sub_10076DA9C();
  type metadata accessor for ProductEditorsChoiceView();
  v42[5] = v39;
  sub_10076D2DC();
  v24 = v36;
  v41[3] = v36;
  v41[4] = &protocol witness table for LabelPlaceholder;
  v25 = sub_10000DB7C(v41);
  v26 = v34;
  (*(v34 + 16))(v25, v23, v24);
  v27 = sub_100760DBC();
  sub_10038823C((v27 & 1) == 0, v43);
  sub_10000CD74(v42);
  sub_10000CD74(v41);
  sub_10000CF78(v43, v43[3]);
  swift_getKeyPath();
  v28 = v35;
  sub_10076338C();

  sub_10076C2FC();
  (*(v37 + 8))(v28, v38);
  swift_getKeyPath();
  sub_10076338C();

  v29 = v42[0];
  sub_10076E0FC();
  v16 = v30;

  (*(v26 + 8))(v40, v24);
  sub_10000CD74(v43);
  return v16;
}

uint64_t sub_1001B7558()
{
  v0 = sub_1007621EC();
  v29 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v22[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v22[-v4];
  v6 = sub_10000A5D4(&unk_100946720);
  v27 = *(v6 - 8);
  v28 = v6;
  __chkstk_darwin(v6);
  v8 = &v22[-v7];
  v9 = sub_10000A5D4(&qword_10094C3D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-v11];
  sub_100760DEC();
  sub_1001B79A4(&qword_100958F40, &type metadata accessor for EditorsChoice);
  result = sub_10076332C();
  v14 = v31;
  if (v31)
  {
    v24 = v2;
    v25 = v0;
    v26 = *(v26 + OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView);
    sub_1001B7920();
    sub_10076335C();
    sub_10076FD8C();
    if (v30)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_100760DCC() ^ 1;
    }

    v23 = v15;
    (*(v10 + 8))(v12, v9);
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    v16 = v28;
    sub_10076F49C();

    (*(v27 + 8))(v8, v16);
    v17 = v29;
    v18 = v24;
    v19 = v25;
    (*(v29 + 104))(v24, enum case for ShelfBackground.editorsChoice(_:), v25);
    v20 = sub_1007621DC();
    v21 = *(v17 + 8);
    v21(v18, v19);
    v21(v5, v19);
    sub_1005BEFA4(v14, v23 & 1, v20 & 1);
  }

  return result;
}

unint64_t sub_1001B7920()
{
  result = qword_10094C3D8;
  if (!qword_10094C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C3D8);
  }

  return result;
}

uint64_t sub_1001B79A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s5StateVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

unint64_t sub_1001B7AA0()
{
  result = qword_10094C3F0;
  if (!qword_10094C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C3F0);
  }

  return result;
}

unint64_t sub_1001B7AF8()
{
  result = qword_10094C3F8;
  if (!qword_10094C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094C3F8);
  }

  return result;
}

uint64_t sub_1001B7B4C()
{

  return swift_deallocClassInstance();
}

void sub_1001B7BA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 < 0)
  {
    v4 = sub_100227168();
    v7 = OBJC_IVAR____TtC20ProductPageExtension20PresentationLinkView_linkView;
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension20PresentationLinkView_linkView] setMetadata:a2];
    [*&v4[v7] setURL:0];
    [v4 setNeedsLayout];
    v5 = &OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell____lazy_storage___presentationLinkView;
  }

  else
  {
    v4 = sub_100227034();
    sub_1005E24EC();
    v5 = &OBJC_IVAR____TtC20ProductPageExtension22LinkCollectionViewCell____lazy_storage___standardLinkView;
  }

  v8 = *(v3 + *v5);
  v9 = v8;

  sub_100227054(v8);
}

double sub_1001B7C78(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1001B7E14();
  v11 = v10;
  v12 = sub_1001B7EC0(v9, v10, a7, a1);
  sub_1000A9094(v9, v11);
  return v12;
}

void sub_1001B7CE8()
{
  v0 = sub_1001B7E14();
  v2 = v1;
  sub_1001B7BA8(v0, v1);

  sub_1000A9094(v0, v2);
}

uint64_t sub_1001B7DCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B7E14()
{
  sub_10000A5D4(&unk_1009467A0);
  sub_10076F64C();
  sub_10076FC1C();
  sub_10075F74C();

  result = v1;
  if ((~v1 & 0xF000000000000007) == 0)
  {
  }

  return result;
}

double sub_1001B7EC0(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_10075DB7C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
    sub_100760D9C();
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1001B82AC(v10);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      if (qword_10093F660 != -1)
      {
        swift_once();
      }

      v23 = sub_10000A5D4(&qword_100947520);
      v15 = sub_10000A61C(v23, qword_100947500);
      __chkstk_darwin(v15);
      *(&v22 - 2) = v14;
      swift_beginAccess();
      sub_10076E15C();
      swift_endAccess();
      v16 = v24;
      v17 = [a3 traitCollection];
      v18 = [v17 preferredContentSizeCategory];

      [v16 setMinimumContentSizeCategory:v18];
      v19 = [a3 traitCollection];
      v20 = [v19 preferredContentSizeCategory];

      [v16 setMaximumContentSizeCategory:v20];
      [v16 setMetadata:a2];
      [v16 sizeThatFits:{a4, 1.79769313e308}];
      v24 = v16;
      swift_beginAccess();
      sub_10076E17C();
      swift_endAccess();

      (*(v12 + 8))(v14, v11);
    }
  }

  else
  {
    type metadata accessor for StandardLinkView();
    sub_100760D7C();
    sub_100760D6C();
    swift_getObjectType();
    sub_10060E650();
  }

  return a4;
}

uint64_t sub_1001B82AC(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009435D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001B8344(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

id sub_1001B83D8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_100050CC0(a1, &v16 - v6);
  v8 = sub_10075DB7C();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_10075DB1C(v10);
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  v16.receiver = v2;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithCompositionURL:", v11);

  v14 = v13;
  sub_1001B82AC(a1);
  if (v14)
  {
  }

  return v14;
}

id sub_1001B878C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10076105C();
  if (v5)
  {
    v6 = sub_10076FF6C();
  }

  else
  {
    v6 = 0;
  }

  [v3 setAccessibilityLabel:v6];

  v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_titleLabel];
  sub_10076106C();
  v8 = sub_10076FF6C();

  [v7 setText:v8];

  v9 = sub_10076107C();
  if (v9)
  {
    sub_10076BEFC();
    v25 = v10;
    v26 = v11;

    *&v12 = v25;
    *(&v12 + 1) = v26;
  }

  else
  {
    v12 = 0uLL;
  }

  v13 = &v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  *v13 = v12;
  v13[16] = v9 == 0;
  v14 = sub_10076107C();
  if (v14)
  {
  }

  v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_hasArtwork] = v14 != 0;
  v15 = sub_10076107C();
  if (v15)
  {
    sub_10004DA7C(v15, a2);
  }

  else
  {
    v16 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView];
    sub_10075FCAC();
    [v16 setHidden:1];
  }

  v17 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView];
  v18 = sub_10076103C();
  [v17 setTintColor:v18];

  v19 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_tapAction];
  if (v19)
  {
    v20 = objc_allocWithZone(UITapGestureRecognizer);

    v21 = [v20 initWithTarget:v3 action:"handleTap"];
    v22 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer];
    *&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer] = v21;
    v23 = v21;

    if (v23)
    {
      [v3 addGestureRecognizer:v23];
      sub_1000167E0(v19);
    }

    else
    {
      sub_1000167E0(v19);
    }
  }

  else if (*&v3[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer])
  {
    [v3 removeGestureRecognizer:?];
  }

  return [v3 setNeedsLayout];
}

char *sub_1001B8A20(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - v11;
  v13 = sub_10076771C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v17 - 8);
  v19 = &v59 - v18;
  v20 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v21 = sub_10076341C();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_100940FF8 != -1)
  {
    swift_once();
  }

  v23 = sub_10076D3DC();
  v24 = sub_10000A61C(v23, qword_1009A1DE0);
  v25 = *(v23 - 8);
  v63 = *(v25 + 16);
  v64 = v24;
  v63(v19);
  v62 = *(v25 + 56);
  v62(v19, 0, 1, v23);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v26 = objc_allocWithZone(sub_1007626BC());
  *&v5[v22] = sub_1007626AC();
  v27 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_shadowView;
  sub_10075F99C();
  *&v5[v27] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_roundedCornerView;
  sub_10076394C();
  *&v5[v28] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = &v5[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_hasArtwork] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_clickAction] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_objectGraph] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_gestureRecognizer] = 0;
  v30 = &v5[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_tapAction];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView;
  sub_10075FD2C();
  *&v5[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v65.receiver = v5;
  v65.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  ObjectType = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_roundedCornerView;
  v33 = *&v32[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_roundedCornerView];
  sub_100016F40(0, &qword_100942F10);
  v34 = v32;
  v35 = v33;
  v36 = sub_100770DBC();
  [v35 setBackgroundColor:v36];

  v60 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_shadowView;
  v37 = qword_10093F880;
  v38 = *&v34[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_shadowView];
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = sub_10076BCFC();
  v40 = sub_10000A61C(v39, qword_10099D420);
  v41 = *(v39 - 8);
  (*(v41 + 16))(v12, v40, v39);
  (*(v41 + 56))(v12, 0, 1, v39);
  sub_10075F97C();

  v42 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_titleLabel;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_titleLabel] setNumberOfLines:1];
  v43 = *&v34[v42];
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 labelColor];
  [v45 setTextColor:v46];

  v47 = *&v34[v42];
  (v63)(v19, v64, v23);
  v62(v19, 0, 1, v23);
  v48 = v47;
  sub_1007625DC();

  v49 = OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView;
  v50 = *&v34[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView];
  v51 = [v44 clearColor];
  sub_10075FBCC();

  v52 = [v34 contentView];
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v53 = [v34 contentView];
  [v53 addSubview:*&v34[v60]];

  v54 = [v34 contentView];
  [v54 addSubview:*(ObjectType + v32)];

  v55 = [v34 contentView];
  [v55 addSubview:*&v34[v49]];

  v56 = [v34 contentView];
  [v56 addSubview:*&v34[v42]];

  sub_10000A5D4(&unk_100945BF0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100783C60;
  *(v57 + 32) = sub_10076E3EC();
  *(v57 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v57 + 48) = sub_10076E88C();
  *(v57 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v57 + 64) = sub_10076E4CC();
  *(v57 + 72) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100770C4C();

  swift_unknownObjectRelease();

  return v34;
}

double sub_1001B91FC()
{
  v1 = v0;
  v2 = sub_10076738C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v15 - v8;
  v10 = [v0 traitCollection];
  v11 = v1[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize + 16];
  if (sub_10077071C())
  {
    sub_1001B997C(v10, v5);
  }

  else if (v11)
  {
    sub_1001B9CB4();
  }

  else
  {
    sub_1001B9D54();
  }

  (*(v3 + 32))(v9, v5, v2);
  sub_10076736C();
  v13 = v12;
  (*(v3 + 8))(v9, v2);
  return v13;
}

uint64_t sub_1001B939C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075FEEC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews", v5);
  sub_1001B9600(v16);
  sub_10000CF78(v16, v16[3]);
  [v1 bounds];
  v8 = [v1 traitCollection];
  sub_10076E0EC();

  sub_10000CD74(v16);
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_shadowView];
  [v1 bounds];
  [v9 setFrame:?];
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_roundedCornerView];
  [v1 bounds];
  [v10 setFrame:?];
  [v1 bounds];
  CGRectGetHeight(v18);
  v11 = enum case for CornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v7, enum case for CornerStyle.continuous(_:), v3);
  sub_1007638AC();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v12(v7, v11, v3);
  sub_10075F98C();
  return (v13)(v7, v3);
}

uint64_t sub_1001B9600@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10076738C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = v23 - v10;
  v12 = [v1 traitCollection];
  v13 = v2[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkSize + 16];
  if (sub_10077071C())
  {
    sub_1001B997C(v12, v7);
  }

  else if (v13)
  {
    sub_1001B9CB4();
  }

  else
  {
    sub_1001B9D54();
  }

  (*(v5 + 32))(v11, v7, v4);
  if (v2[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_hasArtwork])
  {
    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_artworkView];
    v15 = sub_10075FD2C();
    v16 = sub_1001BBCF0(&qword_10094B250, &type metadata accessor for ArtworkView);
    v17 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v23[6] = 0;
    v23[7] = 0;
  }

  v23[8] = v15;
  v23[9] = v16;
  v23[5] = v14;
  v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_titleLabel];
  v23[3] = sub_1007626BC();
  v23[4] = &protocol witness table for UILabel;
  v23[0] = v18;
  v19 = sub_1007673AC();
  swift_allocObject();
  v20 = v18;
  v21 = sub_10076739C();
  a1[3] = v19;
  result = sub_1001BBCF0(&qword_10094C5B8, &type metadata accessor for RibbonBarItemCellLayout);
  a1[4] = result;
  *a1 = v21;
  return result;
}

void sub_1001B997C(objc_class *a1@<X3>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v14[0] = sub_10076D39C();
  v3 = *(v14[0] - 8);
  __chkstk_darwin(v14[0]);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D1AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940FF8 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A1DE0);
  (*(*(v10 - 8) + 16))(v9, v11, v10);
  (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
  v12.super.isa = a1;
  isa = sub_10076D19C(v12).super.isa;
  (*(v7 + 8))(v9, v6);
  [(objc_class *)isa lineHeight];
  sub_10076D3AC();
  sub_10076D35C();
  (*(v3 + 8))(v5, v14[0]);
  v14[35] = &type metadata for Double;
  v14[36] = &protocol witness table for Double;
  v14[31] = &protocol witness table for Double;
  v14[32] = 0x4020000000000000;
  v14[30] = &type metadata for Double;
  v14[27] = 0x4024000000000000;
  v14[25] = &type metadata for Double;
  v14[26] = &protocol witness table for Double;
  v14[21] = &protocol witness table for Double;
  v14[22] = 0x402C000000000000;
  v14[20] = &type metadata for Double;
  v14[16] = &protocol witness table for Double;
  v14[17] = 0;
  v14[15] = &type metadata for Double;
  v14[11] = &protocol witness table for Double;
  v14[12] = 0;
  v14[10] = &type metadata for Double;
  v14[6] = &protocol witness table for Double;
  v14[7] = 0x4010000000000000;
  v14[5] = &type metadata for Double;
  v14[2] = 0x4010000000000000;
  sub_10076735C();
}

uint64_t sub_1001B9F94(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {

      return sub_10000CFBC(v5, &unk_100943200);
    }

    else
    {
      sub_100263BF0(a2, 1, v7, v5);

      return (*(v9 + 8))(v5, v8);
    }
  }

  return result;
}

uint64_t type metadata accessor for RibbonBarItemCollectionViewCell()
{
  result = qword_10094C5A0;
  if (!qword_10094C5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001BA23C()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001BA324()
{
  sub_10075FB6C();
  sub_10075FD2C();
  sub_1001BBCF0(&qword_100941820, &type metadata accessor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_1001BA3BC(uint64_t a1)
{
  result = sub_1001BBCF0(&qword_10094C5B0, type metadata accessor for RibbonBarItemCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

void *sub_1001BA414(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = sub_10076D1AC();
  v115 = *(v10 - 8);
  v116 = v10;
  __chkstk_darwin(v10);
  v114 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D9AC();
  v118 = *(v12 - 8);
  v119 = v12;
  __chkstk_darwin(v12);
  v117 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10000A5D4(&unk_1009680C0);
  v14 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v113 - v15;
  v140 = sub_10076D7FC();
  v16 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v138 = &v113 - v19;
  __chkstk_darwin(v20);
  v137 = &v113 - v21;
  __chkstk_darwin(v22);
  v136 = &v113 - v23;
  __chkstk_darwin(v24);
  v135 = &v113 - v25;
  __chkstk_darwin(v26);
  v134 = &v113 - v27;
  v133 = sub_10076DA7C();
  v28 = *(v133 - 8);
  __chkstk_darwin(v133);
  *&v153 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10076738C();
  v30 = *(v144 - 8);
  __chkstk_darwin(v144);
  v32 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v113 - v34;
  __chkstk_darwin(v36);
  v121 = &v113 - v37;
  __chkstk_darwin(v38);
  v122 = &v113 - v39;
  if (a1 >> 62)
  {
LABEL_55:
    v40 = sub_10077158C();
  }

  else
  {
    v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v145 = a2;
  if (v40)
  {
    v152 = v14;
    v175 = _swiftEmptyArrayStorage;
    v143 = v40;
    sub_1004BBAA4(0, v40 & ~(v40 >> 63), 0);
    if (v143 < 0)
    {
      __break(1u);
LABEL_57:
      swift_once();
      goto LABEL_43;
    }

    v130 = v35;
    v131 = v32;
    v35 = v175;
    v4 = JUMeasuringSizeExpanded[0];
    v5 = JUMeasuringSizeExpanded[1];
    v41 = sub_100016F40(0, &qword_100942F00);
    v42 = v30;
    v43 = 0;
    v44 = a1;
    v128 = a1 & 0xC000000000000001;
    v129 = v41;
    v120 = v42;
    v126 = (v42 + 32);
    v127 = v16 + 8;
    v124 = (v152 + 8);
    v125 = (v28 + 16);
    v123 = (v28 + 8);
    v132 = a1;
    v16 += 8;
    do
    {
      if (v128)
      {
        v45 = sub_10077149C();
      }

      else
      {
        v45 = *(v44 + 8 * v43 + 32);
      }

      v152 = v35;
      v46 = sub_10076106C();
      v148 = v47;
      v149 = v46;
      v48 = sub_10076107C();
      if (v48)
      {
        sub_10076BEFC();
        v50 = v49;
        v52 = v51;

        v146 = v52;
        v147 = v50;
      }

      else
      {
        v146 = 0;
        v147 = 0;
      }

      v151 = v45;
      v53 = sub_10076107C();
      if (v53)
      {
      }

      if (qword_100940FF8 != -1)
      {
        swift_once();
      }

      v54 = sub_10076D3DC();
      sub_10000A61C(v54, qword_1009A1DE0);
      v55 = sub_100770B3C();
      v56 = v139;
      sub_10076D7EC();
      v57 = v138;
      v150 = v55;
      sub_10076D7DC();
      v58 = *v16;
      v59 = v140;
      (*v16)(v56, v140);
      v60 = v137;
      sub_10076D73C();
      v58(v57, v59);
      v61 = v136;
      sub_10076D79C();
      v58(v60, v59);
      v62 = v135;
      sub_10076D78C();
      v58(v61, v59);
      sub_10076D7AC();
      v58(v62, v59);
      v63 = v145;
      sub_10076DA5C();
      sub_10076DA8C();
      if (sub_10077071C())
      {
        v64 = v131;
        sub_1001B997C(v63, v131);
        v65 = v130;
      }

      else
      {
        v65 = v130;
        v64 = v131;
        if (v48)
        {
          sub_100770A9C();
          v174 = &protocol witness table for Double;
          *(&v173 + 1) = &type metadata for Double;
          v171 = &protocol witness table for Double;
          *&v172 = 0x4020000000000000;
          v170 = &type metadata for Double;
          v169[0] = 0x4024000000000000;
          v168 = &protocol witness table for Double;
          v167 = &type metadata for Double;
          v165 = &protocol witness table for Double;
          v166 = 0x4028000000000000;
          v164 = &type metadata for Double;
          v162 = &protocol witness table for Double;
          v163 = 0x401C000000000000;
          v161 = &type metadata for Double;
          v159 = &protocol witness table for Double;
          v160 = 0x401C000000000000;
          v158 = &type metadata for Double;
          v156 = &protocol witness table for Double;
          v157 = 0;
          v155 = &type metadata for Double;
          v154 = 0;
        }

        else
        {
          v174 = &protocol witness table for Double;
          *(&v173 + 1) = &type metadata for Double;
          v171 = &protocol witness table for Double;
          *&v172 = 0x4020000000000000;
          v170 = &type metadata for Double;
          v169[0] = 0x4024000000000000;
          v168 = &protocol witness table for Double;
          v167 = &type metadata for Double;
          v165 = &protocol witness table for Double;
          v166 = 0x4024000000000000;
          v164 = &type metadata for Double;
          v162 = &protocol witness table for Double;
          v163 = 0x401C000000000000;
          v161 = &type metadata for Double;
          v159 = &protocol witness table for Double;
          v160 = 0x401C000000000000;
          v158 = &type metadata for Double;
          v156 = &protocol witness table for Double;
          v157 = 0x4024000000000000;
          v155 = &type metadata for Double;
          v154 = 0x4024000000000000;
        }

        sub_10076735C();
      }

      (*v126)(v65, v64, v144);
      if (v53)
      {
        v66 = sub_1007616FC();
        swift_allocObject();
        v67 = sub_1007616EC();
        *(&v173 + 1) = v66;
        v174 = sub_1001BBCF0(&qword_1009680E0, &type metadata accessor for EmptyPlaceable);
        *&v172 = v67;
      }

      else
      {
        v174 = 0;
        v172 = 0u;
        v173 = 0u;
      }

      v68 = v133;
      v170 = v133;
      v171 = &protocol witness table for LabelPlaceholder;
      v69 = sub_10000DB7C(v169);
      v70 = v153;
      (*v125)(v69, v153, v68);
      sub_1007673AC();
      swift_allocObject();
      *&v172 = sub_10076739C();
      sub_1001BBCF0(&unk_1009680D0, &type metadata accessor for RibbonBarItemCellLayout);
      v71 = v141;
      sub_10076D43C();
      swift_getOpaqueTypeConformance2();
      v72 = v142;
      sub_10076E0FC();
      v74 = v73;

      (*v124)(v71, v72);
      (*v123)(v70, v68);
      v35 = v152;
      v175 = v152;
      v76 = *(v152 + 2);
      v75 = *(v152 + 3);
      if (v76 >= v75 >> 1)
      {
        sub_1004BBAA4((v75 > 1), v76 + 1, 1);
        v35 = v175;
      }

      ++v43;
      *(v35 + 2) = v76 + 1;
      *&v35[8 * v76 + 32] = v74;
      a2 = v63;
      v44 = v132;
    }

    while (v143 != v43);
    v30 = v120;
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v77 = v121;
  if (sub_10077071C())
  {
    sub_1001B997C(a2, v77);
  }

  else
  {
    sub_1001B9CB4();
  }

  a1 = v122;
  v78 = v77;
  v79 = v144;
  (*(v30 + 32))(v122, v78, v144);
  sub_10076737C();
  (*(v30 + 8))(a1, v79);
  v30 = *(v35 + 2);
  if (!v30)
  {
    goto LABEL_51;
  }

  v32 = 0;
  v80 = 0.0;
  v14 = &unk_100942870;
  v28 = &unk_100784460;
  v153 = xmmword_1007841E0;
  while (1)
  {
    if (v32 >= *(v35 + 2))
    {
      __break(1u);
      goto LABEL_55;
    }

    v81 = *&v35[8 * v32 + 32];
    v5 = v80 + v81;
    if (v80 + v81 == a3)
    {
      goto LABEL_51;
    }

    if (v80 + v81 >= a3)
    {
      break;
    }

    ++v32;
    sub_1007673AC();
    sub_10076732C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    a2 = swift_allocObject();
    *(a2 + 16) = v153;
    v82 = v145;
    *(a2 + 32) = v145;
    v83 = v82;
    a1 = sub_10076DEEC();
    sub_10077036C();
    v4 = v84;

    v80 = v5 + v4;
    if (v30 == v32)
    {
      goto LABEL_51;
    }
  }

  sub_10000CF78(&v172, *(&v173 + 1));
  a2 = v145;
  sub_10076D41C();
  v86 = a3 + a4 + v85;
  if (v86 <= v5)
  {
LABEL_51:
    v107 = v35;
    goto LABEL_52;
  }

  v16 = v35;
  a3 = v86 - v5;
  v4 = (v32 + 1);
  v5 = (v86 - v5) / v4 * 0.5;
  if (qword_100940FF8 != -1)
  {
    goto LABEL_57;
  }

LABEL_43:
  v87 = sub_10076D3DC();
  v88 = sub_10000A61C(v87, qword_1009A1DE0);
  v89 = v114;
  (*(*(v87 - 8) + 16))(v114, v88, v87);
  v91 = v115;
  v90 = v116;
  (*(v115 + 104))(v89, enum case for FontSource.useCase(_:), v116);
  v170 = v90;
  v171 = &protocol witness table for FontSource;
  v92 = sub_10000DB7C(v169);
  (*(v91 + 16))(v92, v89, v90);
  v93 = v117;
  sub_10076D9BC();
  (*(v91 + 8))(v89, v90);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v94 = swift_allocObject();
  *(v94 + 16) = v153;
  *(v94 + 32) = a2;
  v95 = a2;
  v96 = sub_10076DEEC();
  v97 = v119;
  sub_10076D3EC();
  v99 = v98;

  (*(v118 + 8))(v93, v97);
  v100 = (a3 + v5 + v99) / v4;
  v101 = swift_allocObject();
  *(v101 + 16) = v153;
  *(v101 + 32) = v95;
  v102 = v95;
  v103 = sub_10076DEEC();
  sub_10077036C();
  v105 = v104;

  if (v100 < v105)
  {
    v105 = v100;
  }

  v106 = *(v16 + 2);
  if (v106)
  {
    v169[0] = _swiftEmptyArrayStorage;
    sub_1004BBAA4(0, v106, 0);
    v107 = v169[0];
    v108 = *(v169[0] + 16);
    v109 = 32;
    do
    {
      v110 = *&v16[v109];
      v169[0] = v107;
      v111 = v107[3];
      if (v108 >= v111 >> 1)
      {
        sub_1004BBAA4((v111 > 1), v108 + 1, 1);
        v107 = v169[0];
      }

      v107[2] = v108 + 1;
      *&v107[v108 + 4] = v105 + v110;
      v109 += 8;
      ++v108;
      --v106;
    }

    while (v106);
  }

  else
  {

    v107 = _swiftEmptyArrayStorage;
  }

LABEL_52:
  sub_10000CD74(&v172);
  return v107;
}