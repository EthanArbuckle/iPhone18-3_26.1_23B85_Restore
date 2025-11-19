uint64_t sub_1002F67C8(uint64_t a1, void *a2)
{
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E0AC();
  sub_10076830C();
  sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter);
  v7 = sub_100761A8C();
  sub_10075E0AC();
  sub_100761A7C();
  sub_10075E0AC();
  v8 = sub_100761A8C();
  v9 = sub_1002F6B5C(v6, v8, a2);
  result = (*(v4 + 8))(v6, v3);
  if (__OFSUB__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 == 0x8000000000000001 && v9 == -1)
  {
    goto LABEL_12;
  }

  v11 = (v7 - 1) % v9;
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    result = sub_10075E09C();
    if (!__OFSUB__(v7, v12))
    {
      return result >= v7 - v12;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1002F69B0(uint64_t a1)
{
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100952110);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100784500;
  *(v6 + 32) = sub_10075E0AC();
  *(v6 + 40) = a1;
  sub_10075E01C();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_10076830C();
    sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter);
    sub_100761B2C();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1002F6B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a2;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = v6[2];
  v13(&v21 - v11, a1, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 0;
  if (v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v25 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
    v22 = v6[1];
    v22(v12, v5);
    ObjectType = swift_getObjectType();
    v24 = a3;
    v18 = [a3 traitCollection];
    (v13)(v8, a1, v5);
    v19 = v14(v8, v5);
    if (v19 == enum case for Shelf.ContentType.artwork(_:) || v19 == enum case for Shelf.ContentType.ribbonBar(_:) || v19 == enum case for Shelf.ContentType.ribbonFlow(_:) || v19 == enum case for Shelf.ContentType.paragraph(_:) || v19 == enum case for Shelf.ContentType.footnote(_:) || v19 == enum case for Shelf.ContentType.titledParagraph(_:) || v19 == enum case for Shelf.ContentType.reviewsContainer(_:) || v19 == enum case for Shelf.ContentType.reviewSummary(_:) || v19 == enum case for Shelf.ContentType.editorialLink(_:) || v19 == enum case for Shelf.ContentType.quote(_:) || v19 == enum case for Shelf.ContentType.framedArtwork(_:) || v19 == enum case for Shelf.ContentType.screenshots(_:) || v19 == enum case for Shelf.ContentType.appShowcase(_:) || v19 == enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) || v19 == enum case for Shelf.ContentType.linkableText(_:) || v19 == enum case for Shelf.ContentType.framedVideo(_:) || v19 == enum case for Shelf.ContentType.productDescription(_:) || v19 == enum case for Shelf.ContentType.banner(_:) || v19 == enum case for Shelf.ContentType.roundedButton(_:) || v19 == enum case for Shelf.ContentType.titledButtonStack(_:) || v19 == enum case for Shelf.ContentType.smallStoryCard(_:) || v19 == v25 || v19 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v19 == enum case for Shelf.ContentType.upsellBreakout(_:) || v19 == enum case for Shelf.ContentType.smallBreakout(_:) || v19 == enum case for Shelf.ContentType.arcadeFooter(_:) || v19 == enum case for Shelf.ContentType.editorialQuote(_:) || v19 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v19 == enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) || v19 == enum case for Shelf.ContentType.preorderDisclaimer(_:) || v19 == enum case for Shelf.ContentType.privacyHeader(_:) || v19 == enum case for Shelf.ContentType.privacyFooter(_:) || v19 == enum case for Shelf.ContentType.privacyCategory(_:) || v19 == enum case for Shelf.ContentType.privacyDefinition(_:) || v19 == enum case for Shelf.ContentType.heroCarousel(_:) || v19 == enum case for Shelf.ContentType.unifiedMessage(_:) || (v22(v8, v5), (sub_1007706FC() & 1) == 0))
    {
    }

    else
    {
      v20 = sub_10077071C();

      if ((v20 & 1) == 0)
      {
        return sub_100413DB0(v26, v24, a1);
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1002F7034(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_10076F7FC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10000A570(a1, v53);
  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v19 = sub_100766E0C();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_10000A570(v21, v53);
          sub_10000CF78(v53, v53[3]);
          v23 = v48;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10000CFBC(v23, &qword_1009492E0);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10000CF78(v44, v44[3]);
            sub_10076FE2C();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10000CFBC(v10, &qword_1009492E0);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              sub_10076F7DC();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = sub_10076F7CC();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_1002F90EC(v27, v40);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10000CFBC(v31, &qword_1009632C0);
              }

              else
              {
                sub_10076F7BC();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              sub_10076F78C();

              sub_1007660EC();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10000CFBC(v32, &qword_1009632C0);
              v35(v34, v37);
            }

            else
            {
              sub_10000CFBC(v27, &qword_1009632C0);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10000CFBC(v51, &unk_100952120);
  }
}

uint64_t sub_1002F7684(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_10076F7FC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10000A570(a1, v53);
  sub_10000A5D4(&qword_1009575A0);
  sub_10000A5D4(&qword_100952118);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v19 = sub_100766E0C();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_10000A570(v21, v53);
          sub_10000CF78(v53, v53[3]);
          v23 = v48;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10000CFBC(v23, &qword_1009492E0);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10000CF78(v44, v44[3]);
            sub_10076FE2C();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10000CFBC(v10, &qword_1009492E0);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              sub_10076F7DC();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = sub_10076F7CC();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_1002F90EC(v27, v40);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10000CFBC(v31, &qword_1009632C0);
              }

              else
              {
                sub_10076F7BC();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              sub_10076F78C();

              sub_10076610C();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10000CFBC(v32, &qword_1009632C0);
              v35(v34, v37);
            }

            else
            {
              sub_10000CFBC(v27, &qword_1009632C0);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10000CFBC(v51, &unk_100952120);
  }
}

void sub_1002F7C70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_10000A5D4(&qword_1009632C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v96 = &v86 - v13;
  v14 = sub_10076B5BC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v99 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v101 = &v86 - v18;
  v19 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v19 - 8);
  v93 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v94 = &v86 - v22;
  __chkstk_darwin(v23);
  v98 = &v86 - v24;
  v25 = sub_10076F7FC();
  v102 = *(v25 - 8);
  v103 = v25;
  __chkstk_darwin(v25);
  v92 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v95 = &v86 - v28;
  __chkstk_darwin(v29);
  v97 = &v86 - v30;
  if (sub_10075E0BC() >= 2)
  {
    v88 = v11;
    v89 = *(v4 + 16);
    v31 = sub_10076830C();
    v90 = sub_1002F90A4(&qword_10094D928, &type metadata accessor for PurchasesContentPresenter);
    v100 = a2;
    v32 = sub_100761AEC();
    v110 = sub_100016F40(0, &qword_10094D1D0);
    v109[0] = a1;
    v33 = a1;
    v91 = v32;
    sub_10076756C();
    sub_10000CD74(v109);
    swift_getObjectType();
    v34 = swift_conformsToProtocol2();
    v104 = a4;
    v105 = v31;
    if (v34 && v33)
    {
      sub_100767D5C();
      v87 = v15;
      sub_10076F64C();
      v35 = v33;
      sub_10076FC1C();
      v36 = v109[0];
      swift_getObjectType();
      v37 = sub_100765B4C();
      v38 = v14;
      v39 = v5;
      v40 = v35;
      sub_100767CFC();

      v5 = v39;
      v14 = v38;

      v15 = v87;
    }

    v108 = v33;
    v41 = v33;
    sub_10000A5D4(&qword_1009520D8);
    if (swift_dynamicCast())
    {
      sub_100012498(v106, v109);
      sub_100767D5C();
      sub_10076F64C();
      sub_10076FC1C();
      v42 = *&v106[0];
      sub_10000CF78(v109, v110);
      sub_10076818C();

      sub_10000CD74(v109);
    }

    else
    {
      v107 = 0;
      memset(v106, 0, sizeof(v106));
      sub_10000CFBC(v106, &unk_1009520E0);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v33)
    {
      sub_100764FAC();
      v43 = v41;
      sub_10076F63C();
      v44 = v109[0];
      if (v109[0])
      {
        v45 = v43;
        v46 = v44;
        sub_100764F5C();

        v43 = v46;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v33)
    {
      swift_getObjectType();
      v47 = v41;
      sub_100768BFC();
    }

    swift_getObjectType();
    v48 = swift_conformsToProtocol2();
    if (v48 && v33)
    {
      v49 = v48;
      ObjectType = swift_getObjectType();
      v51 = *(v49 + 8);
      v52 = v41;
      v51(ObjectType, v49);
    }

    if (v91)
    {
      swift_getObjectType();
      v53 = swift_conformsToProtocol2();
      if (v53 && v33)
      {
        v54 = v53;
        v55 = swift_getObjectType();
        v56 = *(v54 + 40);
        v57 = v41;
        v56(v55, v54);
      }

      v58 = sub_10075E0AC();
      v59 = sub_10062B9AC(v58);
      sub_10075E0AC();
      if (v59)
      {
        sub_100761B4C();
        v60 = v98;
        sub_10076B6FC();
        v62 = v102;
        v61 = v103;
        if ((*(v102 + 48))(v60, 1, v103) == 1)
        {

          sub_10000CFBC(v60, &qword_1009492E0);
        }

        else
        {
          v73 = v97;
          (*(v62 + 32))(v97, v60, v61);
          if (*(v5 + 112))
          {

            sub_10076610C();
          }

          (*(v62 + 8))(v73, v61);
        }

        return;
      }

      v63 = v101;
      sub_100761A7C();
      sub_10075E0AC();
      v64 = sub_100761A3C();
      v65 = v99;
      (*(v15 + 16))(v99, v63, v14);
      v66 = (*(v15 + 88))(v65, v14);
      if (v66 == enum case for Shelf.ContentType.smallLockup(_:) || v66 == enum case for Shelf.ContentType.mediumLockup(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.largeLockup(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v66 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v66 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.editorialCard(_:) || v66 == enum case for Shelf.ContentType.videoCard(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.brick(_:) || v66 == enum case for Shelf.ContentType.categoryBrick(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.reviews(_:) || v66 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v66 == enum case for Shelf.ContentType.framedVideo(_:) || v66 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v66 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v66 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v66 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v66 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v66 == enum case for Shelf.ContentType.posterLockup(_:) || v66 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        goto LABEL_51;
      }

      if (v66 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        goto LABEL_56;
      }

      if (v66 == enum case for Shelf.ContentType.appPromotion(_:))
      {
LABEL_51:
        if (v64)
        {
          goto LABEL_56;
        }
      }

      else
      {
        (*(v15 + 8))(v65, v14);
      }

      v67 = sub_100761A9C();
      if (sub_10075E0AC() < v67)
      {
        v68 = sub_10075E09C();
        sub_10075E0AC();
        if (v68 < sub_100761A8C())
        {
          sub_100761B3C();
          sub_10000CF78(v109, v110);
          v69 = v94;
          sub_10076FE2C();
          v70 = v102;
          v71 = *(v102 + 48);
          v72 = v103;
          if (v71(v69, 1, v103) == 1)
          {
            (*(v15 + 8))(v101, v14);
            sub_10000CFBC(v69, &qword_1009492E0);
          }

          else
          {
            (*(v70 + 32))(v95, v69, v72);
            sub_10075E0AC();
            sub_100761B4C();
            v74 = v93;
            sub_10076B6FC();
            if (v71(v74, 1, v72) == 1)
            {
              sub_10000CFBC(v74, &qword_1009492E0);
              v75 = 1;
              v76 = v96;
            }

            else
            {
              v76 = v96;
              sub_10076F7DC();
              (*(v70 + 8))(v74, v72);
              v75 = 0;
            }

            v77 = v88;
            v78 = sub_10076F7CC();
            v79 = *(v78 - 8);
            (*(v79 + 56))(v76, v75, 1, v78);
            if (*(v5 + 112))
            {
              sub_1002F90EC(v76, v77);
              v80 = (*(v79 + 48))(v77, 1, v78);

              if (v80 == 1)
              {
                sub_10000CFBC(v77, &qword_1009632C0);
              }

              else
              {
                sub_10076F7BC();
                (*(v79 + 8))(v77, v78);
              }

              v84 = v95;
              v85 = v92;
              sub_10076F78C();

              sub_10076610C();

              v83 = v102;
              v82 = v103;
              (*(v102 + 8))(v85, v103);
              v81 = *(v5 + 112);
            }

            else
            {
              v81 = 0;
              v83 = v102;
              v82 = v103;
              v84 = v95;
            }

            sub_1002F7684(v109, v81);

            sub_10000CFBC(v96, &qword_1009632C0);
            (*(v83 + 8))(v84, v82);
            (*(v15 + 8))(v101, v14);
          }

          sub_10000CD74(v109);
          return;
        }
      }

LABEL_56:
      (*(v15 + 8))(v63, v14);
    }
  }
}

id sub_1002F8B08(uint64_t a1)
{
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076593C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076823C())
  {
    sub_10076829C();
    v10 = sub_10076592C();
    v24[0] = v11;
    v24[1] = v10;
    (*(v7 + 8))(v9, v6);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v3 + 16))(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v13 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v3 + 32))(v14 + v13, v5, v2);

    v15 = sub_10076FF6C();

    aBlock[4] = sub_1002F8FF0;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10067F350;
    aBlock[3] = &unk_100890C00;
    v16 = _Block_copy(aBlock);
    v17 = [objc_opt_self() contextualActionWithStyle:1 title:v15 handler:v16];

    _Block_release(v16);

    sub_10000A5D4(&unk_100942870);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1007841E0;
    *(v18 + 32) = v17;
    sub_100016F40(0, &unk_1009632F0);
    v19 = v17;
    isa = sub_1007701AC().super.isa;

    v21 = [objc_opt_self() configurationWithActions:isa];

    [v21 setPerformsFirstActionWithFullSwipe:0];
  }

  else
  {
    sub_100016F40(0, &unk_1009632F0);
    v22 = sub_1007701AC().super.isa;
    v21 = [objc_opt_self() configurationWithActions:v22];
  }

  return v21;
}

uint64_t sub_1002F8EF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002F8F2C()
{
  v1 = sub_10075E11C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1002F8FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_10075E11C();

  return sub_1002F173C(a1, a2, a3);
}

uint64_t sub_1002F908C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002F90A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002F90EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009632C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F915C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002F9194()
{
  v1 = sub_10075E11C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1002F9230(uint64_t a1)
{
  sub_10075E11C();

  return sub_1002F69B0(a1);
}

double sub_1002F92CC(uint64_t a1, void *a2)
{
  v27 = sub_100766A2C();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766A4C();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10076997C();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_1002FCA30();
  v12 = sub_10076DDDC();
  swift_allocObject();
  v13 = sub_10076DD9C();
  if (sub_100766A1C())
  {
    v23 = a1;
    v24 = v7;
    sub_100016F40(0, &qword_100942F00);
    if (qword_100940FD0 != -1)
    {
      swift_once();
    }

    v14 = sub_10076D3DC();
    sub_10000A61C(v14, qword_1009A1D68);
    v15 = [a2 traitCollection];
    sub_100770B3C();

    v16 = sub_10076C04C();
    *(&v37 + 1) = v16;
    v38 = sub_1002FEEA4(&qword_100943230, &type metadata accessor for Feature);
    v17 = sub_10000DB7C(&v36);
    (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
    sub_10076C90C();
    sub_10000CD74(&v36);
    sub_10076996C();
    sub_10076994C();
    (*(v25 + 8))(v11, v26);
    v7 = v24;
    a1 = v23;
  }

  else
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
  }

  (*(v4 + 16))(v6, a1, v27);
  v34 = v12;
  v35 = &protocol witness table for LayoutViewPlaceholder;
  v33 = v13;
  swift_allocObject();

  v18 = sub_10076DDBC();
  v31 = v12;
  v32 = &protocol witness table for LayoutViewPlaceholder;
  v30 = v18;
  sub_100016E2C(&v36, v29, &qword_10094BB30);
  sub_100766A3C();
  sub_1002FEEA4(&qword_100952180, &type metadata accessor for MixedMediaLockupLayout);
  sub_10076D2AC();
  v20 = v19;

  (*(v28 + 8))(v9, v7);
  sub_10000CFBC(&v36, &qword_10094BB30);
  return v20;
}

double sub_1002F9808(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v58 = a3;
  v57 = a2;
  v65 = a1;
  v63 = sub_100766A4C();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10076997C();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007669EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v64 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  v17 = sub_10000A5D4(&qword_1009451E8);
  __chkstk_darwin(v17 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v52 - v21;
  v60 = sub_100766A2C();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v66 = &v52 - v25;
  swift_getObjectType();
  sub_1002FCA30();
  (*(v9 + 56))(v22, 1, 1, v8);
  sub_100016E2C(v22, v19, &qword_1009451E8);
  v26 = *(v9 + 48);
  if (v26(v19, 1, v8) == 1)
  {
    (*(v4 + 224))();
    if (v26(v19, 1, v8) != 1)
    {
      sub_10000CFBC(v19, &qword_1009451E8);
    }
  }

  else
  {
    (*(v9 + 32))(v16, v19, v8);
  }

  v27 = *(v9 + 16);
  v27(v13, v16, v8);
  v28 = (*(v9 + 88))(v13, v8);
  if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    if (qword_10093FB10 != -1)
    {
      swift_once();
    }

    sub_10000A570(qword_10099DB28, &v72);
  }

  else if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_10093FB08 != -1)
    {
      swift_once();
    }

    sub_10000A570(qword_10099DB00, &v72);
  }

  else
  {
    if (qword_10093FB10 != -1)
    {
      swift_once();
    }

    sub_10000A570(qword_10099DB28, &v72);
    (*(v9 + 8))(v13, v8);
  }

  v27(v64, v16, v8);
  sub_10000A570(&v72, v71);
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940FD0 != -1)
  {
    swift_once();
  }

  v29 = sub_10076D3DC();
  sub_10000A61C(v29, qword_1009A1D68);
  v55 = a4;
  v30 = [a4 traitCollection];
  sub_100770B3C();

  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v31 = sub_10076D9AC();
  v32 = sub_10000A61C(v31, qword_1009A2350);
  v69 = v31;
  v70 = &protocol witness table for StaticDimension;
  v33 = sub_10000DB7C(v68);
  (*(*(v31 - 8) + 16))(v33, v32, v31);
  v34 = v65;
  sub_100766A0C();
  sub_10000CD74(&v72);
  (*(v9 + 8))(v16, v8);
  sub_10000CFBC(v22, &qword_1009451E8);
  v35 = sub_10076DDDC();
  swift_allocObject();
  v36 = sub_10076DD9C();
  if (v58)
  {
    v37 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v37 = v57 & 0xFFFFFFFFFFFFLL;
    }

    v38 = v55;
    if (!v37 && (v34 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_27:

    v39 = [v38 traitCollection];
    sub_100770B3C();

    v40 = sub_10076C04C();
    *(&v73 + 1) = v40;
    v74 = sub_1002FEEA4(&qword_100943230, &type metadata accessor for Feature);
    v41 = sub_10000DB7C(&v72);
    (*(*(v40 - 8) + 104))(v41, enum case for Feature.measurement_with_labelplaceholder(_:), v40);
    sub_10076C90C();
    sub_10000CD74(&v72);
    v42 = v52;
    sub_10076996C();
    sub_10076994C();
    (*(v53 + 8))(v42, v54);
    goto LABEL_28;
  }

  v38 = v55;
  if (v34)
  {
    goto LABEL_27;
  }

LABEL_25:
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
LABEL_28:
  v43 = v59;
  v44 = v66;
  v45 = v60;
  (*(v59 + 16))(v56, v66, v60);
  v71[3] = v35;
  v71[4] = &protocol witness table for LayoutViewPlaceholder;
  v71[0] = v36;
  swift_allocObject();

  v46 = sub_10076DDBC();
  v69 = v35;
  v70 = &protocol witness table for LayoutViewPlaceholder;
  v68[0] = v46;
  sub_100016E2C(&v72, v67, &qword_10094BB30);
  v47 = v61;
  sub_100766A3C();
  sub_1002FEEA4(&qword_100952180, &type metadata accessor for MixedMediaLockupLayout);
  v48 = v63;
  sub_10076D2AC();
  v50 = v49;

  (*(v62 + 8))(v47, v48);
  sub_10000CFBC(&v72, &qword_10094BB30);
  (*(v43 + 8))(v44, v45);
  return v50;
}

unint64_t sub_1002FA308(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, void, uint64_t, uint64_t), uint64_t a5, void *a6)
{
  v7 = v6;
  v237 = a5;
  v246 = a4;
  v257 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&qword_10094A428);
  __chkstk_darwin(v10 - 8);
  v219 = &v215 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v224 = &v215 - v13;
  v236 = sub_10076B6EC();
  v248 = *(v236 - 8);
  __chkstk_darwin(v236);
  v15 = &v215 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v16 - 8);
  v232 = &v215 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v233 = &v215 - v19;
  v20 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v20 - 8);
  v231 = &v215 - v21;
  v22 = sub_1007611EC();
  __chkstk_darwin(v22 - 8);
  v223 = &v215 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v222 = &v215 - v25;
  __chkstk_darwin(v26);
  v228 = &v215 - v27;
  __chkstk_darwin(v28);
  v227 = &v215 - v29;
  v230 = sub_10076121C();
  v229 = *(v230 - 8);
  __chkstk_darwin(v230);
  v221 = &v215 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v226 = &v215 - v32;
  v235 = sub_10076481C();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v225 = &v215 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v250 = &v215 - v35;
  v218 = type metadata accessor for ScreenshotDisplayConfiguration();
  v217 = *(v218 - 8);
  __chkstk_darwin(v218);
  v242 = &v215 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_10076D39C();
  v265 = *(v256 - 8);
  __chkstk_darwin(v256);
  v247 = &v215 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_10076357C();
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v238 = &v215 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10076350C();
  v261 = *(v39 - 8);
  v262 = v39;
  __chkstk_darwin(v39);
  v216 = &v215 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v251 = (&v215 - v42);
  __chkstk_darwin(v43);
  v260 = &v215 - v44;
  v259 = sub_1007673CC();
  v266 = *(v259 - 8);
  __chkstk_darwin(v259);
  v241 = &v215 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v267 = &v215 - v47;
  v245 = sub_10076664C();
  v244 = *(v245 - 8);
  __chkstk_darwin(v245);
  v243 = &v215 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v49 - 8);
  v220 = &v215 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v255 = &v215 - v52;
  __chkstk_darwin(v53);
  v268 = &v215 - v54;
  v55 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v55 - 8);
  v264 = &v215 - v56;
  v57 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v57 - 8);
  v269 = &v215 - v58;
  v59 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v59 - 8);
  v263 = &v215 - v60;
  v61 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v61 - 8);
  v258 = &v215 - v62;
  v63 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v63 - 8);
  v65 = (&v215 - v64);
  v66 = sub_1007627FC();
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v69 = &v215 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10000A5D4(&qword_100952188);
  __chkstk_darwin(v70 - 8);
  v72 = &v215 - v71;
  v73 = sub_10000A5D4(&qword_1009451E8);
  *&v74 = __chkstk_darwin(v73 - 8).n128_u64[0];
  v76 = &v215 - v75;
  v77 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_pageTraits] = v77;
  swift_unknownObjectRelease();
  v253 = a1;
  sub_1007627EC();
  v78 = (*(v67 + 48))(v72, 1, v66);
  v254 = v7;
  v249 = v15;
  if (v78 == 1)
  {
    sub_10000CFBC(v72, &qword_100952188);
    v79 = sub_1007669EC();
    (*(*(v79 - 8) + 56))(v76, 1, 1, v79);
  }

  else
  {
    (*(v67 + 16))(v69, v72, v66);
    v80 = (*(v67 + 88))(v69, v66);
    if (v80 == enum case for MixedMediaLockup.LockupPosition.top(_:))
    {
      v81 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      v82 = sub_1007669EC();
      (*(*(v82 - 8) + 104))(v76, v81, v82);
    }

    else
    {
      v83 = v80;
      v84 = enum case for MixedMediaLockup.LockupPosition.bottom(_:);
      v82 = sub_1007669EC();
      v85 = *(*(v82 - 8) + 104);
      if (v83 == v84)
      {
        v85(v76, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v82);
      }

      else
      {
        v85(v76, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v82);
        (*(v67 + 8))(v69, v66);
      }
    }

    (*(v67 + 8))(v72, v66);
    sub_1007669EC();
    (*(*(v82 - 8) + 56))(v76, 0, 1, v82);
    v7 = v254;
  }

  v86 = ObjectType;
  v87 = OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  swift_beginAccess();
  sub_1002FCC3C(v76, &v7[v87]);
  swift_endAccess();
  [v7 setNeedsLayout];
  sub_10000CFBC(v76, &qword_1009451E8);
  v88 = *&v7[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_lockupView];
  v89 = sub_10000A5D4(&qword_100945590);
  (*(*(v89 - 8) + 56))(v65, 1, 1, v89);
  v90 = sub_10075F78C();
  v91 = v258;
  (*(*(v90 - 8) + 56))(v258, 1, 1, v90);
  v92 = sub_1007628DC();
  v93 = v263;
  (*(*(v92 - 8) + 56))(v263, 1, 1, v92);
  v94 = sub_10000A5D4(&unk_100946750);
  v95 = v269;
  (*(*(v94 - 8) + 56))(v269, 1, 1, v94);
  v96 = sub_10076C54C();
  v97 = v264;
  (*(*(v96 - 8) + 56))(v264, 1, 1, v96);
  v98 = v88;
  v99 = v253;
  sub_1004D0A60(v253, v98, v65, v257, 0, 0, v91, v93, v97, v95);
  sub_10000CFBC(v97, &unk_100949290);
  v98[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10026202C();
  [v98 setNeedsLayout];

  sub_10000CFBC(v95, &qword_10094F730);
  sub_10000CFBC(v93, &unk_1009492A0);
  sub_10000CFBC(v91, &unk_10094D210);
  v100 = sub_10000CFBC(v65, &unk_100946760);
  v101 = (*(v86 + 192))(v100);
  v264 = 0;
  v102 = v268;
  if ((v101 & 1) == 0)
  {
    goto LABEL_19;
  }

  result = sub_10076280C();
  if (result >> 62)
  {
    v104 = result;
    v105 = sub_10077158C();
    result = v104;
    if (v105)
    {
      goto LABEL_13;
    }

LABEL_18:

    v264 = 0;
    goto LABEL_19;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((result & 0xC000000000000001) != 0)
  {
    v264 = sub_10077149C();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_90;
    }

    v264 = *(result + 32);
  }

LABEL_19:
  if (((*(v86 + 216))() & 1) == 0)
  {
    v106 = 0;
    v263 = 0;
    goto LABEL_30;
  }

  result = sub_10076288C();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

LABEL_28:

    v263 = 0;
    goto LABEL_29;
  }

  v107 = result;
  v108 = sub_10077158C();
  result = v107;
  if (!v108)
  {
    goto LABEL_28;
  }

LABEL_22:
  if ((result & 0xC000000000000001) != 0)
  {
    v263 = sub_10077149C();
    goto LABEL_25;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v263 = *(result + 32);

LABEL_25:

LABEL_29:
  v106 = sub_10076281C();
LABEL_30:
  v269 = v106;
  v258 = sub_10076283C();
  v109 = v243;
  sub_10076662C();
  sub_1002FEEA4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v110 = v245;
  v111 = sub_10077124C();
  (*(v244 + 8))(v109, v110);
  if (v111)
  {
    v112 = 1;
  }

  else
  {
    v113 = ASKDeviceTypeGetCurrent();
    sub_100224EB8();

    v112 = 0;
  }

  v114 = *(v265 + 56);
  v265 += 56;
  v246 = v114;
  v114(v102, v112, 1, v256);
  v115 = v267;
  sub_10076285C();
  v99 = *&v7[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView];
  v116 = sub_10076283C();
  v117 = sub_10076281C();
  v118 = ASKDeviceTypeGetCurrent();
  v119 = v260;
  v121 = v263;
  v120 = v264;
  (*(v86 + 456))(v116, v117, v264, v263, v118, v115);

  v271[3] = &type metadata for CGFloat;
  v271[4] = &protocol witness table for CGFloat;
  v271[0] = 0x4021000000000000;
  sub_10000A570(v271, v270);
  v97 = *(v261 + 16);
  (v97)(v251, v119, v262);
  if (v269 | v258)
  {
    sub_10076D3AC();
    v93 = v249;
    v122 = v120;
    v65 = &off_100911000;
  }

  else
  {
    result = sub_10057F8EC(v120, v121, 0, 1);
    v122 = v120;
    if (result >> 62)
    {
      v192 = result;
      v123 = sub_10077158C();
      result = v192;
    }

    else
    {
      v123 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v93 = v249;
    v65 = &off_100911000;
    if (v123)
    {
      if ((result & 0xC000000000000001) != 0)
      {
        sub_10077149C();
        goto LABEL_40;
      }

      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_40:

        sub_10076BEFC();
        sub_10076D3AC();

        goto LABEL_43;
      }

LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    sub_10076D3AC();
  }

LABEL_43:
  sub_100016E2C(v268, v255, &unk_1009467E0);
  v124 = v238;
  sub_10076354C();
  sub_10000CD74(v271);
  v125 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v126 = v239;
  v127 = &v99[v125];
  v128 = v240;
  (*(v239 + 24))(v127, v124, v240);
  swift_endAccess();
  [v99 v65[194]];
  (*(v126 + 8))(v124, v128);
  if (v122)
  {
    v129 = sub_1007601CC();
  }

  else
  {
    v129 = 0;
  }

  sub_1007601EC();
  v130 = v242;
  sub_10007AFB4(v129, v242);

  v131 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_100125E2C(v130, &v99[v131]);
  swift_endAccess();
  sub_10057D9D0();
  sub_100125E90(v130);
  if (v122)
  {
    v122 = sub_1007601CC();
  }

  v132 = v241;
  *&v99[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform] = v122;

  sub_10057DBD4();

  v133 = v266;
  v134 = v259;
  (*(v266 + 16))(v132, v267, v259);
  v135 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v133 + 24))(&v99[v135], v132, v134);
  swift_endAccess();
  [v99 v65[194]];
  v136 = *(v133 + 8);
  v266 = v133 + 8;
  v251 = v136;
  v136(v132, v134);
  if (!v269)
  {
    if (!v263)
    {
      goto LABEL_94;
    }

    result = sub_10076C41C();
    if (!(result >> 62))
    {
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

LABEL_93:

LABEL_94:
      v195 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
      v196 = *&v99[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
      if (v196)
      {
        [v196 removeFromSuperview];
        v197 = *&v99[v195];
      }

      else
      {
        v197 = 0;
      }

      v156 = v254;
      v157 = v248;
      *&v99[v195] = 0;

      v152 = v65;
      [v99 v65[194]];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_103;
      }

      v199 = Strong;
      sub_1002FEEA4(&qword_100942810, type metadata accessor for VideoView);
      v200 = [v199 superview];
      if (v200)
      {
        v201 = v200;
        sub_100016F40(0, &qword_1009441F0);
        v202 = v99;
        v203 = sub_100770EEC();

        v157 = v248;
        if ((v203 & 1) == 0)
        {
          goto LABEL_103;
        }

        v204 = swift_unknownObjectWeakLoadStrong();
        if (!v204)
        {
          goto LABEL_103;
        }

        v199 = v204;
        [v204 removeFromSuperview];
      }

LABEL_103:
      swift_unknownObjectWeakAssign();
      v205 = swift_unknownObjectWeakLoadStrong();
      if (v205)
      {
        v206 = v205;
        [v99 addSubview:v205];
      }

      sub_10057E5D8();
      [v99 v65[194]];
      goto LABEL_106;
    }

LABEL_92:
    v193 = result;
    v194 = sub_10077158C();
    result = v193;
    if (v194)
    {
LABEL_62:
      if ((result & 0xC000000000000001) != 0)
      {
        v255 = sub_10077149C();
      }

      else
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v255 = *(result + 32);
      }

      v159 = v216;
      v160 = v262;
      (v97)(v216, v260, v262);
      v161 = v261;
      v162 = (*(v261 + 88))(v159, v160);
      v163 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
      (*(v161 + 8))(v159, v160);
      if (v162 == v163)
      {
        v164 = 1;
        v156 = v254;
        v93 = v249;
        v165 = v224;
      }

      else
      {
        v167 = sub_10076C40C();
        v165 = v224;
        sub_10007AFB4(v167, v224);

        v164 = 0;
        v156 = v254;
        v93 = v249;
      }

      v168 = v217;
      v169 = v218;
      (*(v217 + 56))(v165, v164, 1, v218);
      (*(v229 + 104))(v221, enum case for VideoFillMode.scaleAspectFill(_:), v230);
      sub_10076B84C();
      sub_10076BEFC();
      v170 = v220;
      sub_10076D3AC();

      v246(v170, 0, 1, v256);
      sub_10076B7EC();
      sub_10076B82C();
      LODWORD(v265) = sub_10076B7FC();
      sub_10076B7DC();
      sub_10076B83C();
      v171 = v219;
      sub_100016E2C(v165, v219, &qword_10094A428);
      if ((*(v168 + 48))(v171, 1, v169) == 1)
      {
        sub_10000CFBC(v171, &qword_10094A428);
      }

      else
      {
        sub_100125E90(v171);
      }

      sub_1007647FC();
      sub_100762F0C();
      sub_10076F5CC();
      v172 = v271[0];
      sub_10076B7CC();
      v173 = v231;
      sub_10076B85C();
      v174 = sub_10075DB7C();
      (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
      v175 = v233;
      sub_10076B81C();
      v176 = v232;
      sub_10076B80C();
      type metadata accessor for VideoView();
      sub_1002FEEA4(&qword_100942810, type metadata accessor for VideoView);
      v265 = v172;
      v177 = sub_100762EEC();
      sub_10000CFBC(v176, &unk_10094C030);
      sub_10000CFBC(v175, &unk_10094C030);
      sub_10000CFBC(v173, &unk_1009435D0);
      sub_10000CFBC(v271, &qword_100943310);
      v178 = swift_unknownObjectWeakLoadStrong();
      if (!v178)
      {
        goto LABEL_79;
      }

      v179 = v178;
      v180 = [v178 superview];
      if (v180)
      {
        v181 = v180;
        sub_100016F40(0, &qword_1009441F0);
        v182 = v99;
        v183 = sub_100770EEC();

        v156 = v254;
        if ((v183 & 1) == 0)
        {
          goto LABEL_79;
        }

        v184 = swift_unknownObjectWeakLoadStrong();
        if (!v184)
        {
          goto LABEL_79;
        }

        v179 = v184;
        [v184 removeFromSuperview];
      }

LABEL_79:
      swift_unknownObjectWeakAssign();
      v185 = swift_unknownObjectWeakLoadStrong();
      if (v185)
      {
        v186 = v185;
        [v99 addSubview:v185];
      }

      sub_10057E5D8();
      [v99 setNeedsLayout];

      v187 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
      v188 = *&v99[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
      v157 = v248;
      v189 = v224;
      if (v188)
      {
        [v188 removeFromSuperview];
        v190 = *&v99[v187];
      }

      else
      {
        v190 = 0;
      }

      v191 = v235;
      *&v99[v187] = 0;

      v152 = &off_100911000;
      [v99 setNeedsLayout];

      (*(v234 + 8))(v225, v191);
      sub_10000CFBC(v189, &qword_10094A428);
      goto LABEL_106;
    }

    goto LABEL_93;
  }

  (*(v229 + 104))(v226, enum case for VideoFillMode.scaleAspectFill(_:), v230);

  sub_10076B84C();
  sub_10076BEFC();
  v137 = v93;
  v138 = v255;
  sub_10076D3AC();

  v246(v138, 0, 1, v256);
  sub_10076B7EC();
  sub_10076B82C();
  sub_10076B7FC();
  sub_10076B7DC();
  sub_10076B83C();
  v93 = v137;
  sub_1007647FC();
  sub_100762F0C();
  sub_10076F5CC();
  sub_10076B7CC();
  v139 = v231;
  sub_10076B85C();
  v140 = sub_10075DB7C();
  (*(*(v140 - 8) + 56))(v139, 0, 1, v140);
  v141 = v233;
  sub_10076B81C();
  v142 = v232;
  sub_10076B80C();
  type metadata accessor for VideoView();
  sub_1002FEEA4(&qword_100942810, type metadata accessor for VideoView);
  v143 = sub_100762EEC();
  sub_10000CFBC(v142, &unk_10094C030);
  sub_10000CFBC(v141, &unk_10094C030);
  sub_10000CFBC(v139, &unk_1009435D0);
  sub_10000CFBC(v271, &qword_100943310);
  v144 = swift_unknownObjectWeakLoadStrong();
  if (v144)
  {
    v145 = v144;
    v146 = [v144 superview];
    if (v146)
    {
      v147 = v146;
      sub_100016F40(0, &qword_1009441F0);
      v148 = v99;
      v149 = sub_100770EEC();

      if ((v149 & 1) == 0)
      {
        goto LABEL_55;
      }

      v150 = swift_unknownObjectWeakLoadStrong();
      if (!v150)
      {
        goto LABEL_55;
      }

      v145 = v150;
      [v150 removeFromSuperview];
    }
  }

LABEL_55:
  swift_unknownObjectWeakAssign();
  v151 = swift_unknownObjectWeakLoadStrong();
  v152 = &off_100911000;
  if (v151)
  {
    v153 = v151;
    [v99 addSubview:v151];
  }

  sub_10057E5D8();
  [v99 setNeedsLayout];

  v154 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
  v155 = *&v99[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
  v156 = v254;
  v157 = v248;
  if (v155)
  {
    [v155 removeFromSuperview];
    v158 = *&v99[v154];
  }

  else
  {
    v158 = 0;
  }

  v166 = v235;
  *&v99[v154] = 0;

  [v99 setNeedsLayout];

  (*(v234 + 8))(v250, v166);
LABEL_106:
  v207 = v152;
  [v99 v152[194]];

  (*(v261 + 8))(v260, v262);
  v208 = *&v156[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_taglineLabel];
  sub_10076B6AC();
  sub_1002FEEA4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v209 = v236;
  v210 = sub_10077124C();
  v211 = *(v157 + 8);
  v211(v93, v209);
  if ((v210 & 1) != 0 && ((*(ObjectType + 472))(v253), v212))
  {
    v213 = sub_10076FF6C();
    v207 = 0x100911000;
  }

  else
  {
    v213 = 0;
  }

  [v208 setText:v213];

  sub_10076B6AC();
  v214 = sub_10077124C();
  v211(v93, v209);
  v156[OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace] = v214 & 1;
  [v156 *(v207 + 1552)];
  [v156 *(v207 + 1552)];

  v251(v267, v259);
  return sub_10000CFBC(v268, &unk_1009467E0);
}

void sub_1002FC7FC(void *a1)
{
  type metadata accessor for SmallLockupView();
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v2 = sub_100763ADC();
  v3 = sub_10000A61C(v2, qword_10099DDA0);
  swift_getObjectType();
  sub_100262AD0(v3, a1);
}

void sub_1002FC8FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_lockupView);
  sub_100264A9C(a1, a2);
}

double sub_1002FCA30()
{
  v0 = sub_10076357C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D39C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ASKDeviceTypeGetCurrent();
  sub_100224EB8();

  sub_10057CD00(v7, v3);
  sub_1007635AC();
  sub_1002FEEA4(&qword_10094A408, &type metadata accessor for LockupMediaLayout);
  sub_10076DBDC();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_1002FCC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009451E8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1002FCCAC(char *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v135 = a5;
  v126 = sub_100766A4C();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10076997C();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1007669EC();
  v136 = *(v131 - 8);
  __chkstk_darwin(v131);
  v132 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v109 = &v103 - v12;
  __chkstk_darwin(v13);
  v110 = &v103 - v14;
  v123 = sub_100766A2C();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v119 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v134 = &v103 - v17;
  v118 = sub_10076350C();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v19 - 8);
  v115 = &v103 - v20;
  v121 = sub_1007673CC();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v133 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1007627FC();
  v130 = *(v113 - 8);
  __chkstk_darwin(v113);
  v104 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000A5D4(&qword_100952188);
  __chkstk_darwin(v23 - 8);
  v129 = &v103 - v24;
  v25 = sub_10000A5D4(&qword_1009451E8);
  __chkstk_darwin(v25 - 8);
  v114 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v137 = &v103 - v28;
  v29 = sub_10076664C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076662C();
  sub_1002FEEA4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v33 = sub_10077124C();
  v34 = *(v30 + 8);
  v34(v32, v29);
  v35 = *(v5 + 472);
  v128 = a1;
  v36 = a1;
  v37 = v5;
  v112 = v5 + 472;
  v111 = v35;
  v127 = (v35)(v36);
  v39 = v38;
  sub_10076661C();
  v40 = sub_10077124C();
  v34(v32, v29);
  if ((v33 & 1) == 0)
  {
    sub_1002F9808(v40 & 1, v127, v39, v135);

    return a2;
  }

  v41 = v128;
  v127 = sub_10076283C();
  v42 = (*(v5 + 216))();
  v43 = v5;
  if (v42)
  {
    v108 = sub_10076281C();
  }

  else
  {
    v108 = 0;
  }

  v44 = v131;
  v45 = v136;
  v46 = v130;
  v47 = v129;
  if (((*(v5 + 192))() & 1) == 0)
  {
LABEL_16:
    v130 = 0;
    if ((v42 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v48 = v41;
  v49 = sub_10076280C();
  if (v49 >> 62)
  {
    v48 = v49;
    v50 = sub_10077158C();
    v49 = v48;
    if (v50)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_9:
  if ((v49 & 0xC000000000000001) != 0)
  {
    v130 = sub_10077149C();
  }

  else
  {
    if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v130 = *(v49 + 32);
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  v48 = v41;
  v51 = sub_10076288C();
  if (v51 >> 62)
  {
    v52 = v51;
    v53 = sub_10077158C();
    v51 = v52;
    if (v53)
    {
      goto LABEL_19;
    }
  }

  else if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    if ((v51 & 0xC000000000000001) != 0)
    {
      v129 = sub_10077149C();
      goto LABEL_22;
    }

    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v129 = *(v51 + 32);

LABEL_22:

      goto LABEL_26;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
    goto LABEL_44;
  }

LABEL_25:
  v129 = 0;
LABEL_26:
  v54 = (v111)(v41);
  v131 = v55;
  sub_1007627EC();
  v56 = v113;
  v57 = (*(v46 + 48))(v47, 1, v113);
  v112 = v54;
  if (v57 == 1)
  {
    sub_10000CFBC(v47, &qword_100952188);
    v58 = 1;
  }

  else
  {
    v59 = v104;
    (*(v46 + 16))(v104, v47, v56);
    v60 = (*(v46 + 88))(v59, v56);
    if (v60 == enum case for MixedMediaLockup.LockupPosition.top(_:))
    {
      (*(v45 + 104))(v137, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v44);
    }

    else
    {
      v61 = *(v45 + 104);
      if (v60 == enum case for MixedMediaLockup.LockupPosition.bottom(_:))
      {
        v61(v137, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v44);
      }

      else
      {
        v61(v137, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v44);
        (*(v46 + 8))(v104, v56);
      }
    }

    (*(v46 + 8))(v47, v56);
    v58 = 0;
  }

  (*(v45 + 56))(v137, v58, 1, v44);
  v62 = v133;
  sub_10076285C();
  v63 = ASKDeviceTypeGetCurrent();
  v113 = type metadata accessor for LockupMediaView();
  v64 = sub_10076D39C();
  v65 = v115;
  (*(*(v64 - 8) + 56))(v115, 1, 1, v64);
  v66 = *(v37 + 456);
  v67 = v116;
  v68 = v127;
  v69 = v108;
  v70 = v130;
  v71 = v43;
  v72 = v129;
  v128 = v63;
  v111 = v71;
  v66(v127, v108, v130, v129, v63, v62);
  v73 = v135;
  swift_getObjectType();
  sub_100141F14(v68, v69, v70, v72, v65, v67, v73, v62);
  (*(v117 + 8))(v67, v118);
  sub_10000CFBC(v65, &unk_1009467E0);
  v74 = v114;
  sub_100016E2C(v137, v114, &qword_1009451E8);
  v75 = v136;
  v76 = *(v136 + 48);
  v77 = v136;
  if (v76(v74, 1, v44) == 1)
  {
    v41 = v110;
    v111[28]();
    v78 = v76(v74, 1, v44);
    v79 = v109;
    v80 = v131;
    if (v78 != 1)
    {
      sub_10000CFBC(v74, &qword_1009451E8);
    }
  }

  else
  {
    v41 = v110;
    (*(v75 + 32))(v110, v74, v44);
    v79 = v109;
    v80 = v131;
  }

  v48 = *(v77 + 16);
  v48(v79, v41, v44);
  v81 = (*(v77 + 88))(v79, v44);
  if (v81 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    v43 = v80;
    if (qword_10093FB10 != -1)
    {
      swift_once();
    }

    v82 = qword_10099DB28;
    goto LABEL_45;
  }

  v43 = v80;
  if (v81 != enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_10093FB10 != -1)
    {
      swift_once();
    }

    sub_10000A570(qword_10099DB28, &v143);
    (*(v77 + 8))(v79, v44);
    goto LABEL_49;
  }

  if (qword_10093FB08 != -1)
  {
    goto LABEL_62;
  }

LABEL_44:
  v82 = qword_10099DB00;
LABEL_45:
  sub_10000A570(v82, &v143);
LABEL_49:
  v83 = v135;
  v48(v132, v41, v44);
  sub_10000A570(&v143, v142);
  sub_100016F40(0, &qword_100942F00);
  if (qword_100940FD0 != -1)
  {
    swift_once();
  }

  v84 = sub_10076D3DC();
  sub_10000A61C(v84, qword_1009A1D68);
  v85 = [v83 traitCollection];
  sub_100770B3C();

  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v86 = sub_10076D9AC();
  v87 = sub_10000A61C(v86, qword_1009A2350);
  v140 = v86;
  v141 = &protocol witness table for StaticDimension;
  v88 = sub_10000DB7C(&v139);
  (*(*(v86 - 8) + 16))(v88, v87, v86);
  sub_100766A0C();
  sub_10000CD74(&v143);
  (*(v136 + 8))(v41, v44);
  v89 = sub_10076DDDC();
  swift_allocObject();
  v90 = sub_10076DD9C();
  if (v43)
  {

    v91 = [v83 traitCollection];
    sub_100770B3C();

    v92 = sub_10076C04C();
    *(&v144 + 1) = v92;
    v145 = sub_1002FEEA4(&qword_100943230, &type metadata accessor for Feature);
    v93 = sub_10000DB7C(&v143);
    (*(*(v92 - 8) + 104))(v93, enum case for Feature.measurement_with_labelplaceholder(_:), v92);
    sub_10076C90C();
    sub_10000CD74(&v143);
    v94 = v105;
    sub_10076996C();
    sub_10076994C();
    (*(v106 + 8))(v94, v107);
  }

  else
  {
    v131 = 0;
    v145 = 0;
    v143 = 0u;
    v144 = 0u;
  }

  v95 = v128;
  v96 = v122;
  v97 = v134;
  v98 = v123;
  (*(v122 + 16))(v119, v134, v123);
  v142[3] = v89;
  v142[4] = &protocol witness table for LayoutViewPlaceholder;
  v142[0] = v90;
  swift_allocObject();

  v99 = sub_10076DDBC();
  v140 = v89;
  v141 = &protocol witness table for LayoutViewPlaceholder;
  v139 = v99;
  sub_100016E2C(&v143, v138, &qword_10094BB30);
  v100 = v124;
  sub_100766A3C();
  sub_1002FEEA4(&qword_100952180, &type metadata accessor for MixedMediaLockupLayout);
  v101 = v126;
  sub_10076D2AC();

  (*(v125 + 8))(v100, v101);
  sub_10000CFBC(&v143, &qword_10094BB30);
  (*(v96 + 8))(v97, v98);
  (*(v120 + 8))(v133, v121);
  sub_10000CFBC(v137, &qword_1009451E8);
  return a2;
}

unint64_t sub_1002FE0E4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10076350C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v9 - 8);
  v61 = &v49 - v10;
  v11 = sub_1007673CC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076BF6C();
  __chkstk_darwin(v15 - 8);
  sub_10000A570(a1, v65);
  sub_10000A5D4(&unk_100942830);
  sub_10076289C();
  result = swift_dynamicCast();
  if (result)
  {
    v57 = v7;
    v58 = v6;
    v59 = v12;
    v17 = v64;
    v18 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_pageTraits);
    if (!v18)
    {
    }

    v56 = v11;

    swift_unknownObjectRetain();
    v19 = sub_10076BB5C();

    v60 = v3;
    if (v19)
    {
      v21 = qword_10093FBE0;
      v22 = *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      if (v21 != -1)
      {
        swift_once();
      }

      v23 = sub_100763ADC();
      sub_10000A61C(v23, qword_10099DDA0);
      sub_1007639AC();
      [v22 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v22 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_10075FD2C();
      sub_1002FEEA4(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760B8C();
    }

    v24 = ObjectType;
    v25 = (*(ObjectType + 192))(v20);
    if (v25)
    {
      result = sub_10076280C();
      if (result >> 62)
      {
        v27 = result;
        v28 = sub_10077158C();
        result = v27;
        if (v28)
        {
          goto LABEL_12;
        }
      }

      else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_12:
        if ((result & 0xC000000000000001) != 0)
        {
          v26 = sub_10077149C();
        }

        else
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_36;
          }

          v26 = *(result + 32);
        }

LABEL_20:
        v29 = (*(v24 + 216))(v25);
        v54 = v26;
        v55 = a2;
        v53 = v18;
        if ((v29 & 1) == 0)
        {
          v31 = v14;
          v50 = sub_10076283C();
          v32 = 0;
          v33 = 0;
LABEL_31:
          v36 = v31;
          sub_10076285C();
          v37 = ASKDeviceTypeGetCurrent();
          type metadata accessor for MixedMediaLockupCollectionViewCell();
          sub_10076422C();
          v51 = type metadata accessor for LockupMediaView();
          v52 = v17;
          v38 = sub_10076D39C();
          v39 = v61;
          (*(*(v38 - 8) + 56))(v61, 1, 1, v38);
          v40 = v62;
          v41 = v50;
          v42 = v33;
          v43 = v33;
          v44 = v54;
          v45 = v37;
          (*(ObjectType + 456))(v50, v43, v54, v32, v37, v36);
          v46 = v53;
          swift_getObjectType();
          sub_100141F14(v41, v42, v44, v32, v39, v40, v46, v36);

          (*(v57 + 8))(v40, v58);
          sub_10000CFBC(v39, &unk_1009467E0);
          v47 = *(v60 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView);
          v48 = [v46 traitCollection];
          sub_100140784(v41, v42, v44, v32, v48, v55, v36);

          swift_unknownObjectRelease();

          return (*(v59 + 8))(v36, v56);
        }

        result = sub_10076288C();
        if (result >> 62)
        {
          v34 = result;
          v35 = sub_10077158C();
          result = v34;
          if (v35)
          {
            goto LABEL_23;
          }
        }

        else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_23:
          if ((result & 0xC000000000000001) != 0)
          {
            v30 = sub_10077149C();
            goto LABEL_26;
          }

          if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v30 = *(result + 32);

LABEL_26:
            v31 = v14;

LABEL_30:
            v50 = sub_10076283C();
            v33 = sub_10076281C();
            v32 = v30;
            goto LABEL_31;
          }

LABEL_36:
          __break(1u);
          return result;
        }

        v31 = v14;

        v30 = 0;
        goto LABEL_30;
      }
    }

    v26 = 0;
    goto LABEL_20;
  }

  return result;
}

id sub_1002FE8B8(uint64_t a1, void *a2)
{
  v3 = sub_10076B6EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  sub_10076B6AC();
  sub_1002FEEA4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v9 = sub_10077124C();
  (*(v4 + 8))(v6, v3);
  v10 = sub_1002F9808(v9 & 1, 0, 0xE000000000000000, a2);
  v11 = objc_opt_self();
  v12 = [v11 absoluteDimension:v8];
  v13 = [v11 absoluteDimension:v10];
  v14 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() itemWithLayoutSize:v14];
  v16 = objc_opt_self();
  sub_10000A5D4(&unk_100942870);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007841E0;
  *(v17 + 32) = v15;
  sub_100016F40(0, &qword_100952C70);
  v18 = v15;
  isa = sub_1007701AC().super.isa;

  v20 = [v16 verticalGroupWithLayoutSize:v14 subitems:isa];

  return v20;
}

void sub_1002FEB7C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FB6C();
  sub_10075FD2C();
  sub_1002FEEA4(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34MixedMediaLockupCollectionViewCell_mediaView);
  v3 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *&v2[v3];
  if (v4 >> 62)
  {
    v5 = sub_10077158C();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:
    v13 = v2;
    goto LABEL_12;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v17 = v2;
  v6 = v2;

  v7 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = sub_10077149C();
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    type metadata accessor for BorderedScreenshotView();
    sub_1002FEEA4(&qword_10094A410, type metadata accessor for BorderedScreenshotView);
    v10 = v9;
    sub_10077140C();
    sub_100760BEC();
    sub_100016C74(v18);
    v11 = *&v10[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
    v19.value.super.isa = 0;
    v19.is_nil = 0;
    sub_10075FCEC(v19, v12);
  }

  while (v5 != v7);

  v2 = v17;
LABEL_12:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [*(Strong + qword_1009602D0) setImage:0];
    type metadata accessor for VideoView();
    sub_1002FEEA4(&qword_100957FA0, type metadata accessor for VideoView);
    v16 = v15;
    sub_10077140C();
    sub_100760BEC();

    sub_100016C74(v18);
  }

  else
  {
  }
}

uint64_t sub_1002FEEA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002FEEF4()
{
  result = qword_100950D08;
  if (!qword_100950D08)
  {
    type metadata accessor for LargeLockupCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950D08);
  }

  return result;
}

double sub_1002FEF4C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076462C();
  sub_10076460C();
  sub_10076C2FC();
  (*(v1 + 8))(v3, v0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1002D803C();
  v5 = v4;
  swift_unknownObjectRelease_n();
  return v5;
}

id sub_1002FF074()
{
  result = [objc_opt_self() _effectWithBlurRadius:50.0 scale:0.125];
  if (result)
  {
    qword_100952190 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1002FF0C4()
{
  result = [objc_opt_self() colorEffectSaturate:2.0];
  qword_100952198 = result;
  return result;
}

void sub_1002FF104()
{
  sub_100016F40(0, &qword_100952240);
  v0 = [objc_opt_self() blackColor];
  v1 = [swift_getObjCClassFromMetadata() effectCompositingColor:v0 withMode:23 alpha:1.0];

  if (v1)
  {
    qword_1009521A0 = v1;
  }

  else
  {
    __break(1u);
  }
}

id sub_1002FF1A0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v111 = sub_10076F9AC();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v115 = sub_100760B4C();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076D1AC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = sub_10076D9AC();
  v17 = *(v109 - 1);
  __chkstk_darwin(v109);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v20 - 8);
  v108 = &v107 - v21;
  v22 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_itemLayoutContext;
  v23 = sub_10076341C();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance] = 0;
  v24 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupContentBackgroundView;
  v25 = [objc_allocWithZone(UIView) init];
  v113 = objc_opt_self();
  v26 = [v113 systemBackgroundColor];
  [v25 setBackgroundColor:v26];

  *&v5[v24] = v25;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView] = 0;
  v27 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel;
  sub_1007626BC();
  *&v5[v27] = sub_10076269C();
  v28 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerLabelPresenter];
  *v29 = 0u;
  v29[1] = 0u;
  v30 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel;
  *&v5[v30] = sub_10076269C();
  v31 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel;
  *&v5[v31] = sub_10076269C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  v107 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView;
  v32 = sub_10076C43C();
  (*(*(v32 - 8) + 56))(v108, 1, 1, v32);
  *v16 = UIFontTextStyleFootnote;
  (*(v14 + 104))(v16, enum case for FontSource.textStyle(_:), v13);
  *(&v122 + 1) = v13;
  v123 = &protocol witness table for FontSource;
  v33 = sub_10000DB7C(&v121);
  (*(v14 + 16))(v33, v16, v13);
  v34 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  (*(v14 + 8))(v16, v13);
  (*(v114 + 104))(v112, enum case for WordmarkView.Alignment.center(_:), v115);
  v35 = v109;
  *(&v122 + 1) = v109;
  v123 = &protocol witness table for StaticDimension;
  v36 = sub_10000DB7C(&v121);
  (*(v17 + 16))(v36, v19, v35);
  v37 = objc_allocWithZone(sub_100760B6C());
  v38 = sub_100760B3C();
  (*(v17 + 8))(v19, v35);
  *&v5[v107] = v38;
  v39 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton;
  v40 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v39] = sub_1001E89B8(0);
  v41 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel;
  *&v5[v41] = sub_10076269C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight] = 0;
  v42 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer;
  *&v5[v42] = [objc_allocWithZone(UIView) init];
  v43 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurEffect;
  *&v5[v43] = [objc_opt_self() effectWithStyle:7];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView] = 0;
  v44 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize];
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView;
  sub_10075FD2C();
  *&v5[v45] = sub_10075FB3C();
  v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer] = 0;
  v46 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleText];
  *v47 = 0;
  v47[1] = 0;
  v48 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_theme;
  v49 = enum case for ProductPageTheme.infer(_:);
  v50 = sub_100762A7C();
  (*(*(v50 - 8) + 104))(&v5[v48], v49, v50);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] = 0;
  sub_10076486C();
  v51 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_networkObservation];
  *v51 = 0u;
  *(v51 + 1) = 0u;
  *(v51 + 4) = 0;
  v52 = &v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerTapHandler];
  *v52 = 0;
  v52[1] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce] = 1;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = 0;
  v120.receiver = v5;
  v120.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v120, "initWithFrame:", a1, a2, a3, a4);
  v54 = [v53 contentView];
  v55 = [v54 layer];

  [v55 setAllowsGroupBlending:0];
  v56 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel;
  [*(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel) setHidden:1];
  v57 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel;
  [*(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel) setHidden:1];
  [*(v53 + v56) setLineBreakMode:4];
  v58 = *(v53 + v56);
  sub_100016F40(0, &qword_100942F10);
  v59 = v58;
  v60 = sub_100770D1C();
  [v59 setTextColor:v60];

  *&v115 = v56;
  [*(v53 + v56) setUserInteractionEnabled:1];
  v61 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v53 action:"developerLabelTapped:"];
  v112 = v61;

  [*(v53 + v56) addGestureRecognizer:v61];
  [*(v53 + v57) setLineBreakMode:4];
  v62 = *(v53 + v57);
  v63 = sub_100770D1C();
  [v62 setTextColor:v63];

  [*(v53 + v57) setUserInteractionEnabled:1];
  v109 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v53 action:"taglineLabelTapped:"];
  v64 = *(v53 + v57);
  v65 = v57;
  v107 = v57;
  [v64 addGestureRecognizer:v109];
  v66 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton;
  swift_unknownObjectWeakAssign();
  v114 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel;
  v67 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel);
  v68 = sub_100770D1C();
  [v67 setTextColor:v68];

  v108 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView;
  v69 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v70 = v69;
  sub_10076F95C();
  sub_10000CFBC(&v118, &unk_1009434C0);
  sub_10000CFBC(&v121, &unk_1009434C0);
  sub_100770B9C();

  v71 = *(v110 + 8);
  v72 = v111;
  v71(v11, v111);
  v110 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel;
  v73 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v74 = v73;
  sub_10076F95C();
  sub_10000CFBC(&v118, &unk_1009434C0);
  sub_10000CFBC(&v121, &unk_1009434C0);
  sub_100770B9C();

  v71(v11, v72);
  v75 = *(v53 + v115);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v76 = v75;
  sub_10076F95C();
  sub_10000CFBC(&v118, &unk_1009434C0);
  sub_10000CFBC(&v121, &unk_1009434C0);
  sub_100770B9C();

  v71(v11, v72);
  v77 = *(v53 + v65);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v78 = v77;
  sub_10076F95C();
  sub_10000CFBC(&v118, &unk_1009434C0);
  sub_10000CFBC(&v121, &unk_1009434C0);
  sub_100770B9C();

  v71(v11, v72);
  v79 = *(v53 + v66);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v80 = v79;
  sub_10076F95C();
  sub_10000CFBC(&v118, &unk_1009434C0);
  sub_10000CFBC(&v121, &unk_1009434C0);
  sub_100770B9C();

  v71(v11, v72);
  v81 = *(v53 + v114);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v82 = v81;
  sub_10076F95C();
  sub_10000CFBC(&v118, &unk_1009434C0);
  sub_10000CFBC(&v121, &unk_1009434C0);
  sub_100770B9C();

  v71(v11, v72);
  v83 = [v53 contentView];
  v84 = v113;
  v85 = [v113 clearColor];
  [v83 setBackgroundColor:v85];

  v86 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer;
  v87 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer);
  v88 = [v84 clearColor];
  [v87 setBackgroundColor:v88];

  v89 = [v53 contentView];
  [v89 addSubview:*(v53 + v86)];

  v90 = [v53 contentView];
  [v90 addSubview:*(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupContentBackgroundView)];

  v91 = [v53 contentView];
  [v91 addSubview:*&v108[v53]];

  v92 = [v53 contentView];
  [v92 addSubview:*(v53 + v110)];

  v93 = [v53 contentView];
  [v93 addSubview:*(v53 + v115)];

  v94 = [v53 contentView];
  [v94 addSubview:*(v53 + v66)];

  v95 = [v53 contentView];
  [v95 addSubview:*(v53 + v114)];

  v96 = [v53 contentView];
  [v96 addSubview:*(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView)];

  v97 = [v53 contentView];
  [v97 addSubview:*(v53 + v107)];

  sub_100300494();
  sub_10000A570(v53 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_networkInquiry, &v118);
  sub_10000CF78(&v118, *(&v119 + 1));
  v98 = sub_100016F40(0, &qword_1009471F0);
  v99 = sub_10077068C();
  v117[3] = v98;
  v117[4] = &protocol witness table for OS_dispatch_queue;
  v117[0] = v99;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10076185C();

  sub_10000CD74(v117);
  v100 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_networkObservation;
  swift_beginAccess();
  sub_10030D64C(&v121, v53 + v100);
  swift_endAccess();
  sub_10000CD74(&v118);
  sub_10000A5D4(&unk_100945BF0);
  v101 = swift_allocObject();
  v115 = xmmword_100783DD0;
  *(v101 + 16) = xmmword_100783DD0;
  *(v101 + 32) = sub_10076E3EC();
  *(v101 + 40) = &protocol witness table for UITraitLayoutDirection;
  v102 = ObjectType;
  *(&v122 + 1) = ObjectType;
  *&v121 = v53;
  v103 = v53;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(&v121);
  v104 = swift_allocObject();
  *(v104 + 16) = v115;
  *(v104 + 32) = sub_10076E4CC();
  *(v104 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(&v122 + 1) = v102;
  *&v121 = v103;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(&v121);
  v105 = swift_allocObject();
  *(v105 + 16) = v115;
  *(v105 + 32) = sub_10076E59C();
  *(v105 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v103;
}

void sub_100300494()
{
  v1 = sub_100762A7C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_theme;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == enum case for ProductPageTheme.infer(_:))
  {
    sub_1003068D0();
    return;
  }

  if (v6 == enum case for ProductPageTheme.blue(_:))
  {
    v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = qword_10093FFD0;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = qword_10099EAF8;
    goto LABEL_13;
  }

  if (v6 == enum case for ProductPageTheme.orange(_:))
  {
    v11 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = qword_10093FFD8;
    v9 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v10 = qword_10099EB00;
LABEL_13:
    [v9 setTextColor:v10];

LABEL_14:
    v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel);
    sub_100016F40(0, &qword_100942F10);
    v14 = v0;
    v15 = sub_100770CFC();
    [v13 setTextColor:v15];

    v16 = *(v14 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
    v17 = sub_100770D1C();
    [v16 setTextColor:v17];

    v18 = *(v14 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView);
    v19 = sub_100770D1C();
    [v18 setTintColor:v19];

    v20 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v21 = *(v14 + v20);
    if (v21)
    {
      v22 = v21;
      v23 = sub_100770D0C();
      [v22 setTextColor:v23];
    }

    return;
  }

  if (v6 == enum case for ProductPageTheme.white(_:))
  {
    v24 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel);
    sub_100016F40(0, &qword_100942F10);
    v25 = v0;
    v26 = sub_100770CFC();
    [v24 setTextColor:v26];

    v27 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_10093FFE0 != -1)
    {
      v31 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
      swift_once();
      v27 = v31;
    }

    v28 = qword_10099EB08;
    [v27 setTextColor:qword_10099EB08];
    [*(v25 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView) setTintColor:v28];
    v29 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v30 = *(v25 + v29);
    if (v30)
    {
      [v30 setTextColor:v28];
    }
  }

  else
  {
    sub_1003068D0();
    (*(v2 + 8))(v4, v1);
  }
}

void sub_1003008BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10000CF78((Strong + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_networkInquiry), *(Strong + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_networkInquiry + 24));
    if ((sub_10076184C() & 1) == 0)
    {
      v2 = v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible];
      v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] = 0;
      sub_10030244C(v2);
    }
  }
}

void sub_100300958()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView];
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView];
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  if (v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v5 = [v0 traitCollection];
    v6 = sub_1007706EC();

    if (v6)
    {
      sub_1003029A8();
    }

    else
    {
      sub_100303440();
    }

    sub_1003037E0();
  }
}

id sub_100300A78()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v2 = v0;
    sub_10075ED0C();

    swift_unknownObjectRelease();
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ProductLockupCollectionViewCell()
{
  result = qword_100952208;
  if (!qword_100952208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100300E78(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView) = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer);
    v7 = v5;
    [v6 insertSubview:v7 atIndex:0];
  }

LABEL_4:
}

void sub_100300F34(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView);
  if (v3)
  {
    v4 = *(*&v3[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v14 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView);
    if (a1)
    {
      sub_10030D5FC(&qword_100942810, type metadata accessor for VideoView);
      v5 = v2;
      v6 = v14;
      v7 = [v5 superview];
      if (v7)
      {
        v8 = v7;
        sub_100016F40(0, &qword_1009441F0);
        v9 = v4;
        v10 = sub_100770EEC();

        if (v10)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    else
    {
      v11 = v3;
    }

    v12 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v2;
    v13 = v2;
    sub_100453A30(v12);

    if (v2)
    {
      *&v13[qword_1009602C8 + 8] = &off_10088D2D8;
      swift_unknownObjectWeakAssign();
    }

    a1 = v14;
  }
}

uint64_t sub_1003010E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(*(v1 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = result;
    v5 = v2;
    return v4;
  }

  return result;
}

uint64_t (*sub_10030116C(uint64_t *a1))(id *a1, char a2)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4 && (v5 = *(*(*(v4 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents)) != 0)
  {
    type metadata accessor for VideoView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_10030121C;
}

uint64_t sub_10030121C(id *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + a1[1]);
  if (a2)
  {
    if (v3)
    {
      v4 = *(*&v3[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
      v25 = *a1;
      if (v2)
      {
        sub_10030D5FC(&qword_100942810, type metadata accessor for VideoView);
        v5 = v25;
        v6 = v3;
        v7 = [v5 superview];
        if (v7)
        {
          v8 = v7;
          sub_100016F40(0, &qword_1009441F0);
          v9 = v4;
          v10 = sub_100770EEC();

          if (v10)
          {
            [v5 removeFromSuperview];
          }
        }

        else
        {
        }
      }

      else
      {
        v18 = v3;
        v5 = 0;
      }

      v20 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
      *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v25;
      v21 = v5;
      sub_100453A30(v20);

      if (v25)
      {
        *&v21[qword_1009602C8 + 8] = &off_10088D2D8;
        swift_unknownObjectWeakAssign();
      }
    }
  }

  else if (v3)
  {
    v11 = *(*&v3[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v26 = *a1;
    if (v2)
    {
      sub_10030D5FC(&qword_100942810, type metadata accessor for VideoView);
      v12 = v26;
      v13 = v3;
      v14 = [v12 superview];
      if (v14)
      {
        v15 = v14;
        sub_100016F40(0, &qword_1009441F0);
        v16 = v11;
        v17 = sub_100770EEC();

        if (v17)
        {
          [v12 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    else
    {
      v19 = v3;
      v12 = 0;
    }

    v22 = *&v11[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v11[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v26;
    v23 = v12;
    sub_100453A30(v22);

    if (v26)
    {
      *&v23[qword_1009602C8 + 8] = &off_10088D2D8;
      swift_unknownObjectWeakAssign();
    }
  }

  return _objc_release_x2();
}

void sub_100301570(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *&v2[*a2];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = a1;
  v7 = a1;

  if (a1)
  {
    [v2 addSubview:v7];
  }
}

void sub_100301614()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v1)
  {
    v2 = v0;
    v3 = v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber];
    sub_100016F40(0, &qword_100942F10);
    v10 = v1;
    v4 = sub_100770D1C();
    [v10 setTextColor:v4];

    if (v3 == 1)
    {
      if (qword_100940028 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_10099EBC0];
      v5 = [v2 contentView];
      v6 = [v5 traitCollection];

      [v6 userInterfaceStyle];
      sub_10076FF9C();
      v7 = sub_10076FF6C();

      v8 = [v10 layer];
      v9 = v7;
      [v8 setCompositingFilter:v9];
    }

    else
    {
      if (qword_100940020 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_10099EBB8];
      v9 = [v10 layer];
      [v9 setCompositingFilter:0];
    }
  }
}

void sub_100301868()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  if (v5)
  {
    v6 = v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber];
    sub_100016F40(0, &qword_100942F10);
    v7 = v5;
    v8 = sub_100770D1C();
    [v7 setTextColor:v8];

    if (v6 == 1)
    {
      if (qword_100940C18 != -1)
      {
        swift_once();
      }

      v9 = sub_10076D3DC();
      v10 = sub_10000A61C(v9, qword_1009A1240);
      v11 = *(v9 - 8);
      (*(v11 + 16))(v4, v10, v9);
      (*(v11 + 56))(v4, 0, 1, v9);
      sub_1007625DC();
      [v7 setTextAlignment:1];
      v12 = [v1 contentView];
      v13 = [v12 traitCollection];

      [v13 userInterfaceStyle];
      sub_10076FF9C();
      v14 = sub_10076FF6C();

      v15 = [v7 layer];
      v16 = v14;
      [v15 setCompositingFilter:v16];
    }

    else
    {
      if (qword_100940C10 != -1)
      {
        swift_once();
      }

      v17 = sub_10076D3DC();
      v18 = sub_10000A61C(v17, qword_1009A1228);
      v19 = *(v17 - 8);
      (*(v19 + 16))(v4, v18, v17);
      (*(v19 + 56))(v4, 0, 1, v17);
      sub_1007625DC();
      v16 = [v7 layer];
      [v16 setCompositingFilter:0];
    }
  }
}

void sub_100301BE0(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_10076771C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v53 - v13;
  if (v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer] != v3)
  {
    if (v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer])
    {
      if (qword_100940C08 != -1)
      {
        swift_once();
      }

      v15 = sub_10076D3DC();
      v16 = sub_10000A61C(v15, qword_1009A1210);
      v17 = *(v15 - 8);
      v18 = *(v17 + 16);
      v53 = v16;
      v60 = v18;
      v61 = v17 + 16;
      (v18)(v14);
      v19 = *(v17 + 56);
      v62 = v17 + 56;
      v59 = v19;
      v19(v14, 0, 1, v15);
      if (qword_100940180 != -1)
      {
        swift_once();
      }

      v20 = sub_10000A5D4(&unk_10094C370);
      sub_10000A61C(v20, qword_10099EFF8);
      v63 = v2;
      v21 = v2;
      v57 = v20;
      sub_10075FDCC();

      v22 = *(v5 + 104);
      v56 = enum case for DirectionalTextAlignment.none(_:);
      v58 = v5 + 104;
      v55 = v22;
      v22(v7);
      v54 = sub_1007626BC();
      v23 = objc_allocWithZone(v54);
      v24 = sub_1007626AC();
      v25 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v26 = *&v21[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
      if (v26)
      {
        [v26 removeFromSuperview];
        v27 = *&v21[v25];
      }

      else
      {
        v27 = 0;
      }

      *&v21[v25] = v24;
      v31 = v24;

      v60(v14, v53, v15);
      v59(v14, 0, 1, v15);
      sub_1007625DC();
      v32 = [v21 contentView];
      [v32 addSubview:v31];

      [v21 setNeedsLayout];
      v33 = *&v21[v25];
      v34 = &selRef_initWithTabBarSystemItem_tag_;
      if (v33)
      {
        if (*&v21[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText + 8])
        {
          v35 = v33;

          v36 = sub_10076FF6C();
        }

        else
        {
          v35 = v33;
          v36 = 0;
        }

        v34 = &selRef_initWithTabBarSystemItem_tag_;
        [v35 setText:v36];
      }

      if (v21[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] == 1)
      {
        if (qword_100940C18 != -1)
        {
          swift_once();
        }

        v40 = qword_1009A1240;
      }

      else
      {
        if (qword_100940C10 != -1)
        {
          swift_once();
        }

        v40 = qword_1009A1228;
      }

      v41 = sub_10000A61C(v15, v40);
      v60(v10, v41, v15);
      v59(v10, 0, 1, v15);
      if (qword_100940188 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v57, qword_10099F010);
      v63 = v21;
      v42 = v21;
      sub_10075FDCC();

      v55(v7, v56, v4);
      v43 = objc_allocWithZone(v54);
      v44 = sub_1007626AC();
      v45 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v46 = *&v42[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
      if (v46)
      {
        [v46 removeFromSuperview];
        v47 = *&v42[v45];
      }

      else
      {
        v47 = 0;
      }

      *&v42[v45] = v44;
      v48 = v44;

      sub_100301868();
      v49 = [v42 contentView];
      [v49 addSubview:v48];

      [v42 setNeedsLayout];
      v50 = *&v42[v45];
      if (v50)
      {
        if (*&v42[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleText + 8])
        {
          v51 = v50;

          v52 = sub_10076FF6C();
        }

        else
        {
          v51 = v50;
          v52 = 0;
        }

        [v51 v34[250]];
      }

      [*&v42[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel] setHidden:1];
      sub_100300494();
    }

    else
    {
      v28 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v29 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
      if (v29)
      {
        [v29 removeFromSuperview];
        v30 = *&v2[v28];
      }

      else
      {
        v30 = 0;
      }

      *&v2[v28] = 0;

      [v2 setNeedsLayout];
      v37 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v38 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
      if (v38)
      {
        [v38 removeFromSuperview];
        v39 = *&v2[v37];
      }

      else
      {
        v39 = 0;
      }

      *&v2[v37] = 0;

      [v2 setNeedsLayout];
    }

    [v2 setNeedsLayout];
  }
}

id sub_100302384(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = &v4[*a3];
  *v6 = a1;
  *(v6 + 1) = a2;

  v7 = *&v4[*a4];
  if (v7)
  {
    if (*(v6 + 1))
    {
      v8 = v7;

      v9 = sub_10076FF6C();
    }

    else
    {
      v8 = v7;
      v9 = 0;
    }

    [v8 setText:v9];
  }

  return [v4 setNeedsLayout];
}

void sub_10030244C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (!v2)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible) == (a1 & 1))
  {
    return;
  }

  v22 = v2;
  if ([v22 isHidden])
  {
    if ((*(v1 + v3) & 1) == 0)
    {

      return;
    }
  }

  else if (!*(v1 + v3))
  {
    v4 = 1.0;
    tx = 0.0;
    ty = 0.0;
    [v22 setHidden:{0, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000}];
    goto LABEL_11;
  }

  v4 = 0.0;
  CGAffineTransformMakeTranslation(&aBlock, 0.0, 2.0);
  tx = aBlock.tx;
  ty = aBlock.ty;
  [v22 setHidden:{0, *&aBlock.a, *&aBlock.b, *&aBlock.c, *&aBlock.d}];
LABEL_11:
  [v22 setAlpha:v4];
  *&aBlock.a = v20;
  *&aBlock.c = v21;
  aBlock.tx = tx;
  aBlock.ty = ty;
  [v22 setTransform:&aBlock];
  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow);
  if (v7)
  {
    v7[OBJC_IVAR____TtC20ProductPageExtension11ChevronView_shouldAnimate] = (*(v1 + v3) & 1) == 0;
    v8 = v7;
    sub_10054E180();
  }

  if (*(v1 + v3))
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v22;
  v12 = objc_allocWithZone(UIViewPropertyAnimator);
  *&aBlock.tx = sub_10030D47C;
  *&aBlock.ty = v11;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10009AEDC;
  *&aBlock.d = &unk_100890EE0;
  v13 = _Block_copy(&aBlock);
  v14 = v22;

  v15 = [v12 initWithDuration:v9 curve:v13 animations:0.2];
  _Block_release(v13);

  aBlock.a = 1.0;
  aBlock.b = 0.0;
  aBlock.c = 0.0;
  aBlock.d = 1.0;
  aBlock.tx = 0.0;
  aBlock.ty = 0.0;
  [v14 setTransform:&aBlock];

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  *&aBlock.tx = sub_10030D4C4;
  *&aBlock.ty = v17;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10017722C;
  *&aBlock.d = &unk_100890F30;
  v18 = _Block_copy(&aBlock);
  v19 = v14;

  [v15 addCompletion:v18];
  _Block_release(v18);
  [v15 startAnimation];
}

void sub_100302830(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible;
    v6 = 0.0;
    if (*(Strong + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible))
    {
      v6 = 1.0;
    }

    [a2 setAlpha:v6];
    if (v4[v5])
    {
      v7 = xmmword_10078D220;
      v8 = xmmword_10078CF00;
      v9 = 0uLL;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v10, 0.0, 2.0);
      v8 = *&v10.a;
      v7 = *&v10.c;
      v9 = *&v10.tx;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [a2 setTransform:&v10];
  }
}

void sub_10030290C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible) & 1) == 0)
    {
      [a3 setHidden:1];
      [a3 setText:0];
      [v5 setNeedsLayout];
    }
  }
}

void sub_1003029A8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIVisualEffectView) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView;
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView) = v2;

  v5 = *(v0 + v3);
  if (v5)
  {
    sub_10000A5D4(&unk_100942870);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100785D70;
    v7 = qword_10093FDB8;
    v8 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_100952190;
    *(v6 + 32) = qword_100952190;
    v10 = qword_10093FDC0;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_100952198;
    *(v6 + 40) = qword_100952198;
    sub_100016F40(0, &qword_1009492C0);
    v13 = v12;
    isa = sub_1007701AC().super.isa;

    [v8 setBackgroundEffects:isa];
  }

  v15 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView) = 0;

  v16 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView) = 0;

  v17 = [objc_allocWithZone(UIVisualEffectView) init];
  sub_10000A5D4(&unk_100942870);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007841E0;
  if (qword_10093FDC8 != -1)
  {
    swift_once();
  }

  v19 = qword_1009521A0;
  *(v18 + 32) = qword_1009521A0;
  sub_100016F40(0, &qword_1009492C0);
  v20 = v19;
  v21 = sub_1007701AC().super.isa;

  [v17 setBackgroundEffects:v21];

  v22 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  v96 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = v17;
  v97 = v17;

  v23 = type metadata accessor for GradientView();
  v24 = [objc_allocWithZone(v23) init];
  v25 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView;
  v26 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView) = v24;

  v27 = *(v1 + v25);
  v28 = &off_100911000;
  if (v27)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100786040;
    v30 = objc_opt_self();
    v31 = v27;
    *(v29 + 32) = [v30 clearColor];
    v32 = [v30 blackColor];
    v33 = [v32 colorWithAlphaComponent:0.5];

    *(v29 + 40) = v33;
    v34 = [v30 blackColor];
    v35 = [v34 colorWithAlphaComponent:0.85];

    *(v29 + 48) = v35;
    v28 = &off_100911000;
    *(v29 + 56) = [v30 blackColor];
    *&v31[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v29;

    sub_1001C05B8();

    v36 = *(v1 + v25);
    if (v36)
    {
      v37 = v36;
      sub_1001C0414(&off_1008831A0);

      v38 = *(v1 + v25);
      if (v38)
      {
        v39 = v38;
        v40 = [v39 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v41 = *(v1 + v25);
        if (v41)
        {
          v42 = v41;
          v43 = [v42 layer];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v44 = *(v1 + v3);
  if (v44)
  {
    v45 = [v44 v28[274]];
    v46 = *(v1 + v25);
    if (v46)
    {
      v47 = [v46 v28[274]];
      objc_opt_self();
      v48 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v48 = 0;
    }

    [v45 setMask:v48];
  }

  v49 = [objc_allocWithZone(v23) init];
  v50 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView;
  v51 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = v49;

  v52 = *(v1 + v50);
  if (v52)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_100786040;
    v54 = objc_opt_self();
    v55 = v52;
    *(v53 + 32) = [v54 clearColor];
    v56 = [v54 blackColor];
    v57 = v23;
    v58 = v28;
    v59 = [v56 colorWithAlphaComponent:0.4];

    *(v53 + 40) = v59;
    v60 = [v54 blackColor];
    v61 = [v60 colorWithAlphaComponent:0.68];

    *(v53 + 48) = v61;
    v28 = v58;
    v23 = v57;
    v62 = [v54 blackColor];
    v63 = [v62 colorWithAlphaComponent:0.8];

    *(v53 + 56) = v63;
    *&v55[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v53;

    sub_1001C05B8();

    v64 = *(v1 + v50);
    if (v64)
    {
      v65 = v64;
      sub_1001C0414(&off_1008831E0);

      v66 = *(v1 + v50);
      if (v66)
      {
        v67 = v66;
        v68 = [v67 v28[274]];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v69 = *(v1 + v50);
        if (v69)
        {
          v70 = v69;
          v71 = [v70 v28[274]];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v72 = *(v1 + v96);
  if (v72)
  {
    v73 = [v72 v28[274]];
    v74 = *(v1 + v50);
    if (v74)
    {
      v75 = [v74 v28[274]];
      objc_opt_self();
      v76 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v76 = 0;
    }

    [v73 setMask:v76];
  }

  v77 = [objc_allocWithZone(v23) init];
  v78 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v79 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = v77;

  v80 = *(v1 + v78);
  if (v80)
  {
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_100784DC0;
    v82 = objc_opt_self();
    v83 = v80;
    *(v81 + 32) = [v82 blackColor];
    *(v81 + 40) = [v82 blackColor];
    *(v81 + 48) = [v82 blackColor];
    *&v83[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v81;

    sub_1001C05B8();

    v84 = *(v1 + v78);
    if (v84)
    {
      v85 = v84;
      sub_1001C0414(&off_100883220);

      v86 = *(v1 + v78);
      if (v86)
      {
        v87 = v86;
        v88 = [v87 v28[274]];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v89 = *(v1 + v78);
        if (v89)
        {
          v90 = v89;
          v91 = [v90 v28[274]];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v92 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer) v28[274]];
  v93 = *(v1 + v78);
  if (v93)
  {
    v94 = [v93 v28[274]];
    objc_opt_self();
    v95 = swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    v95 = 0;
  }

  v98 = v95;
  [v92 setMask:?];
}

void sub_100303440()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurEffect)];
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView) = v5;

  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;

  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView;
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView) = v8;

  v11 = *(v1 + v9);
  if (v11)
  {
    v12 = objc_allocWithZone(UIColor);
    v13 = v11;
    v14 = [v12 initWithWhite:1.0 alpha:0.1];
    [v13 setBackgroundColor:v14];
  }

  sub_10075F99C();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView;
  v17 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView) = v15;

  v18 = *(v1 + v16);
  if (v18)
  {
    v19 = qword_10093F890;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_10076BCFC();
    v22 = sub_10000A61C(v21, qword_10099D450);
    v23 = *(v21 - 8);
    (*(v23 + 16))(v4, v22, v21);
    (*(v23 + 56))(v4, 0, 1, v21);
    sub_10075F97C();

    v24 = *(v1 + v16);
    if (v24)
    {
      v25 = [v24 layer];
      v26 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView) layer];
      v27 = [v26 maskedCorners];

      [v25 setMaskedCorners:v27];
      v28 = *(v1 + v16);
      if (v28)
      {
        v29 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView);
        v30 = v28;
        [v29 _continuousCornerRadius];
        [v30 _setContinuousCornerRadius:?];

        v31 = *(v1 + v16);
        if (v31)
        {
          [v31 setAutoresizingMask:18];
        }
      }
    }
  }

  v32 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;

  v33 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;

  v34 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;

  v35 = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer) layer];
  [v35 setMask:0];
}

void sub_1003037E0()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
    v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer];
      v4 = v2;
      [v3 insertSubview:v15 aboveSubview:v4];
      v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v5)
      {
        v6 = v5;
        [v3 insertSubview:v6 aboveSubview:v4];
      }
    }

    else
    {
      v7 = v1;
      v8 = [v0 contentView];
      [v8 insertSubview:v7 atIndex:0];

      v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v9)
      {
        [*&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v9 atIndex:0];
      }
    }

    v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView];
    if (v10)
    {
      [*&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v10 aboveSubview:v15];
    }

    v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView];
    v12 = v15;
    if (v11)
    {
      v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer];
      v14 = v11;
      [v13 insertSubview:v14 aboveSubview:v15];

      v12 = v15;
    }
  }
}

uint64_t sub_100303990()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_10077164C();
  v179 = *(v181 - 8);
  *&v7 = __chkstk_darwin(v181).n128_u64[0];
  v180 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190.receiver = v1;
  v190.super_class = ObjectType;
  objc_msgSendSuper2(&v190, "layoutSubviews", v7);
  if ([*&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel] isHidden])
  {
    v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel];
    if ([v9 isHidden])
    {
      [v9 setHidden:0];
    }
  }

  v10 = &selRef_initWithTabBarSystemItem_tag_;
  v11 = [v1 traitCollection];
  v12 = sub_10077071C();

  sub_10030ACEC(v1, v1);
  sub_10030B244(v1, v1);
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
  v14 = [v1 contentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16 + 0.0;
  v24 = v18 + 0.0;
  v178 = v20;
  v25 = v20 + 0.0;
  v26 = v13 + v22;
  v27 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v28 = [v1 traitCollection];
    v29 = sub_1007706FC();

    if (v29)
    {
      v30 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView;
      v31 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
      if (v31)
      {
        v32 = qword_100940198;
        v33 = v31;
        if (v32 != -1)
        {
          swift_once();
        }

        v34 = sub_10000A5D4(&unk_100945BD0);
        sub_10000A61C(v34, qword_10099F040);
        v35 = v180;
        sub_10076D17C();
        sub_10075FE7C();
        v37 = v36;
        v38 = *(v179 + 8);
        *&v183 = v179 + 8;
        y = *&v38;
        v38(v35, v181);
        [v33 _setCornerRadius:v37];

        v39 = *&v1[v30];
        if (v39)
        {
          v40 = [v39 contentView];
          v41 = [v40 layer];

          if (qword_1009401B0 != -1)
          {
            swift_once();
          }

          [v41 setBorderColor:qword_10099F088];

          v42 = *&v1[v30];
          if (v42)
          {
            v43 = [v42 contentView];
            v44 = [v43 layer];

            if (qword_1009401A0 != -1)
            {
              swift_once();
            }

            v45 = sub_10000A5D4(&unk_100945BD0);
            sub_10000A61C(v45, qword_10099F058);
            v46 = v180;
            sub_10076D17C();
            sub_10075FE7C();
            v48 = v47;
            (*&y)(v46, v181);
            v49 = [v1 traitCollection];
            [v49 displayScale];
            v51 = v50;

            [v44 setBorderWidth:v48 / v51];
          }
        }
      }
    }

    v185 = sub_1003047E0(v189, v23, v24, v25, v26);
    v186 = v52;
    v187 = v53;
    v188 = v54;
    v55 = v13 + v52;
    v10 = &selRef_initWithTabBarSystemItem_tag_;
  }

  else
  {
    v56 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
    if (v56)
    {
      v57 = [v56 contentView];
      v58 = [v57 layer];

      [v58 setBorderWidth:0.0];
    }

    if (v12)
    {
      v59 = sub_1003054A8(v189, v23, v24, v25);
    }

    else
    {
      v59 = sub_100305B14(v189, v23, v24, v25, v26);
    }

    v55 = v60;
    v185 = v59;
    v186 = v60;
    v187 = v61;
    v188 = v62;
  }

  v63 = v13;
  v191.origin.x = v23;
  v191.origin.y = v24;
  v191.size.width = v25;
  v191.size.height = v26;
  v64 = CGRectGetMaxY(v191) - v55;
  v192.origin.x = v23;
  v192.origin.y = v24;
  v192.size.width = v25;
  v192.size.height = v26;
  MinX = CGRectGetMinX(v192);
  v193.origin.y = v24;
  v66 = v23;
  v193.origin.x = v23;
  v193.size.width = v25;
  v193.size.height = v26;
  y = v193.origin.y;
  v67 = v55;
  Width = CGRectGetWidth(v193);
  sub_10000CF78(v189, v189[3]);
  v176 = MinX;
  v177 = v64;
  v175 = Width;
  v69 = v67;
  sub_10076DFCC();
  (*(v4 + 8))(v6, v3);
  v70 = [v1 v10[274]];
  v71 = sub_1007706FC();

  v72 = qword_10099E000;
  v183 = v63;
  if ((v71 & 1) != 0 && v1[v27] == 1)
  {
    if (v26 >= v178)
    {
      v73 = v25;
    }

    else
    {
      v73 = v26;
    }

    if (v73 <= 31.0)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v73 * 0.5;
    }

    sub_10075FC7C();
    v75 = CGRectGetMinY(v194) + -34.0;
    v76 = 30.0;
    if (v73 <= 60.0)
    {
      v76 = v74;
    }

    v77 = v75 - v76;
    v78 = v66;
    v195.origin.x = v66;
    v79 = y;
    v195.origin.y = y;
    v195.size.width = v25;
    v195.size.height = v26;
    MidY = CGRectGetMidY(v195);
    v81 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
    if (v77 >= MidY)
    {
      v63 = v183;
      if (v81)
      {
        v82 = *(*(v81 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
        v91 = &v82[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
        v92 = v82[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride + 8];
        *v91 = 0;
        v91[8] = 1;
        if ((v92 & 1) == 0)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v63 = v183;
      if (v81)
      {
        v82 = *(*(v81 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
        v83 = &v82[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
        MidY = *&v82[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
        v84 = v82[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride + 8];
        *v83 = v77;
        *(v83 + 8) = 0;
        if ((v84 & 1) != 0 || v77 != MidY)
        {
LABEL_45:
          [v82 setNeedsLayout];
        }
      }
    }
  }

  else
  {
    v85 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
    v78 = v66;
    v79 = y;
    if (v85)
    {
      v86 = *(*(*(v85 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
      if (v86)
      {
        type metadata accessor for VideoView();
        v87 = swift_dynamicCastClass();
        if (v87)
        {
          v88 = v87 + qword_1009A2510;
          v89 = *(v87 + qword_1009A2510 + 16);
          *v88 = 0;
          *(v88 + 8) = 0;
          *(v88 + 16) = 1;
          if ((v89 & 1) == 0)
          {
            v90 = v86;
            sub_1005ED780();
          }
        }
      }
    }
  }

  v93 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer];
  [v93 setFrame:{v78, v79, v25, v26}];
  v94 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v95 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView];
  if (v95)
  {
    v96 = v95;
    [v93 bounds];
    [v96 setFrame:?];
  }

  v97 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView;
  v98 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
  if (v1[v27] == 1)
  {
    if (v98)
    {
      v99 = v98;
      [v1 bounds];
      v100 = CGRectGetMinX(v196);
      [v1 bounds];
      v101 = CGRectGetWidth(v197);
      [v1 bounds];
      [v99 setFrame:{v100, 0.0, v101, v63 + CGRectGetHeight(v198)}];

      v102 = *&v1[v97];
      if (v102)
      {
        v103 = v102;
        v104 = [v1 traitCollection];
        v105 = sub_1007706FC();

        v106 = 418.0;
        if (v105)
        {
          v106 = 0.0;
        }

        *&v103[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset] = v106;
        v107 = *&v103[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView];
        v108 = *(v107 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount);
        *(v107 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount) = v106;
        if (v106 != v108)
        {
          sub_1004526E4();
        }
      }
    }

    v109 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView];
    if (v109)
    {
      v110 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
      v111 = v109;
      if (v110)
      {
        [v110 bounds];
      }

      else
      {
        v112 = 0.0;
        v113 = 0.0;
        v114 = 0.0;
        v115 = 0.0;
      }

      [v111 setFrame:{v112, v113, v114, v115}];
    }

    v128 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView];
    if (v128)
    {
      v129 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      v119 = v128;
      if (v129)
      {
        [v129 bounds];
      }

      else
      {
        v125 = 0.0;
        v127 = 0.0;
        v123 = 0.0;
        v126 = 0.0;
      }

      goto LABEL_71;
    }
  }

  else if (v98)
  {
    v116 = 0.0;
    if (*&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight] != 0.0)
    {
      goto LABEL_64;
    }

    if (qword_100940068 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10099EC70, qword_10099EC88);
    v117 = v180;
    sub_1000FF02C();
    sub_10076D40C();
    v116 = v118;
    (*(v179 + 8))(v117, v181);
    v98 = *&v1[v97];
    v72 = qword_10099E000;
    if (v98)
    {
LABEL_64:
      v119 = v98;
      [v1 bounds];
      v120 = CGRectGetMinX(v199);
      [v1 bounds];
      v121 = CGRectGetWidth(v200);
      v201.origin.x = v176;
      v201.origin.y = v177;
      v201.size.width = v175;
      v201.size.height = v69;
      MinY = CGRectGetMinY(v201);
      v123 = v121;
      v124 = MinY;
      v125 = v120;
      v126 = v124 - v116;
      v127 = 0.0;
LABEL_71:
      [v119 setFrame:{v125, v127, v123, v126}];
    }
  }

  v130 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupContentBackgroundView];
  v131 = [v1 contentView];
  [v131 bounds];
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;

  v202.origin.x = v133;
  v202.origin.y = v135;
  v202.size.width = v137;
  v202.size.height = v139;
  v140 = CGRectGetMinX(v202);
  v141 = v72[145];
  v142 = *&v1[v141];
  v143 = 0.0;
  MaxY = 0.0;
  if (v142)
  {
    [v142 frame];
    MaxY = CGRectGetMaxY(v203);
  }

  v145 = [v1 contentView];
  [v145 bounds];
  v147 = v146;
  v149 = v148;
  v151 = v150;
  v153 = v152;

  v204.origin.x = v147;
  v204.origin.y = v149;
  v204.size.width = v151;
  v204.size.height = v153;
  v154 = CGRectGetWidth(v204);
  v155 = [v1 contentView];
  [v155 bounds];
  v157 = v156;
  v159 = v158;
  v161 = v160;
  v163 = v162;

  v205.origin.x = v157;
  v205.origin.y = v159;
  v205.size.width = v161;
  v205.size.height = v163;
  Height = CGRectGetHeight(v205);
  v165 = *&v1[v141];
  if (v165)
  {
    [v165 frame];
    v143 = CGRectGetMaxY(v206);
  }

  v166 = v183;
  [v130 setFrame:{v140, MaxY, v154, v183 + Height - v143}];
  v167 = *&v1[v94];
  if (v167)
  {
    v168 = v167;
    [v1 bounds];
    v169 = v166 + CGRectGetHeight(v207);
    v170 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton];
    v171 = type metadata accessor for OfferButton();
    v184.receiver = v170;
    v184.super_class = v171;
    objc_msgSendSuper2(&v184, "frame");
    v172 = CGRectGetMinY(v208) / v169;
    sub_10000A5D4(&unk_100952260);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783C60;
    *(inited + 32) = v172;
    *(inited + 40) = 1.0 - v166 / v169;
    *(inited + 48) = 0x3FF0000000000000;
    sub_1001C0414(inited);
  }

  return sub_10000CFBC(&v185, &qword_100952258);
}

double sub_1003047E0(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v153 = a5;
  v148 = a1;
  v8 = sub_10077164C();
  v149 = *(v8 - 8);
  v150 = v8;
  __chkstk_darwin(v8);
  v10 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v11);
  v152 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v134 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v134 - v18;
  v20 = [v5 contentView];
  [v20 layoutMargins];

  v21 = [v6 contentView];
  [v21 layoutMargins];
  v23 = v22;

  v24 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
  v25 = [v6 contentView];
  [v25 layoutMargins];
  v27 = v26;

  v28 = &v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize];
  v29 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize];
  v30 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize + 8];
  v147 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight;
  v31 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight];
  v146 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight;
  v32 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  if (qword_10093FFC0 != -1)
  {
    swift_once();
  }

  v145 = sub_10000A61C(v11, qword_10099EAC8);
  sub_10030D4CC(v145, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  *(v19 + 4) = v29;
  *(v19 + 5) = v30;
  *(v19 + 1) = v23;
  *(v19 + 2) = v24;
  *(v19 + 3) = v27;
  *v19 = 0;
  v178 = &type metadata for CGFloat;
  v179 = &protocol witness table for CGFloat;
  *&v176 = v31;
  v33 = v11[15];
  sub_10000CD74(&v19[v33]);
  sub_100012498(&v176, &v19[v33]);
  v178 = &type metadata for CGFloat;
  v179 = &protocol witness table for CGFloat;
  *&v176 = v32;
  v34 = v11[16];
  sub_10000CD74(&v19[v34]);
  sub_100012498(&v176, &v19[v34]);
  *&v176 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel];
  v151 = v176;
  v35 = [v6 traitCollection];
  v36 = sub_1007706FC();

  v37 = v19;
  if (v36)
  {
    sub_10076D17C();
    sub_10075FE7C();
    (*(v149 + 8))(v10, v150);
  }

  sub_100770ACC();
  sub_100770ACC();
  v38 = v151;
  [v151 measurementsWithFitting:v6 in:?];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = sub_1007626BC();
  v181.var0 = v40;
  v181.var1 = v42;
  v181.var2 = v44;
  v181.var3 = v46;
  v48 = sub_10076D71C(v181);

  v150 = v37;
  if (v48 >= 2)
  {
    v49 = *v28;
    v50 = *(v28 + 1);
    v51 = *&v6[v147];
    v52 = *&v6[v146];
    sub_10030D4CC(v145, v15, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    *(v15 + 4) = v49;
    *(v15 + 5) = v50;
    *(v15 + 1) = v23;
    *(v15 + 2) = v24;
    *(v15 + 3) = v27;
    *v15 = 0;
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = v51;
    v53 = v11[15];
    sub_10000CD74(&v15[v53]);
    sub_100012498(&v176, &v15[v53]);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = v52;
    v54 = v11[16];
    sub_10000CD74(&v15[v54]);
    sub_100012498(&v176, &v15[v54]);
    if (qword_1009400E0 != -1)
    {
      swift_once();
    }

    v55 = sub_10000A5D4(&unk_100945BD0);
    v56 = sub_10000A61C(v55, qword_10099EE18);
    v57 = *(*(v55 - 8) + 24);
    v57(&v15[v11[7]], v56, v55);
    if (qword_1009400D0 != -1)
    {
      swift_once();
    }

    v58 = sub_10000A61C(v55, qword_10099EDE8);
    v57(&v15[v11[6]], v58, v55);
    if (qword_1009400F8 != -1)
    {
      swift_once();
    }

    v59 = sub_10000A61C(v55, qword_10099EE60);
    v57(&v15[v11[8]], v59, v55);
    if (qword_1009400A0 != -1)
    {
      swift_once();
    }

    v60 = sub_10000A5D4(&unk_100952280);
    v61 = sub_10000A61C(v60, qword_10099ED58);
    (*(*(v60 - 8) + 24))(&v15[v11[13]], v61, v60);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = 0x401C000000000000;
    v37 = v150;
    sub_10030D59C(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v62 = v11[9];
    sub_10000CD74(&v15[v62]);
    sub_100012498(&v176, &v15[v62]);
    sub_10030D534(v15, v37, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    if (qword_10093FFF8 != -1)
    {
      swift_once();
    }

    v63 = sub_10000A5D4(&unk_100950EE0);
    sub_10000A61C(v63, qword_10099EB40);
    v175 = v6;
    v64 = v6;
    sub_10075FDCC();

    v65 = v176;
    v38 = v151;
    [v151 setFont:v176];
  }

  sub_10030D4CC(v37, v152, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v66 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView];
  if (v66)
  {
    v146 = sub_100016F40(0, &qword_1009441F0);
    v145 = &protocol witness table for UIView;
  }

  else
  {
    v145 = 0;
    v146 = 0;
  }

  v67 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView];
  v68 = sub_100016F40(0, &qword_1009441F0);
  v173 = v68;
  v174 = &protocol witness table for UIView;
  if (v67)
  {
    v69 = v66;
    v70 = v67;
  }

  else
  {
    v71 = objc_allocWithZone(UIView);
    v72 = v66;
    v70 = [v71 init];
  }

  *&v172 = v70;
  v151 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  v147 = v66;
  if (v151)
  {
    v144 = sub_100016F40(0, &qword_100952278);
    v143 = &protocol witness table for UIView;
  }

  else
  {
    v143 = 0;
    v144 = 0;
  }

  v73 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView];
  v170 = sub_100760B6C();
  v171 = &protocol witness table for UIView;
  *&v169 = v73;
  v74 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView];
  v167 = sub_10075FD2C();
  v168 = &protocol witness table for UIView;
  *&v166 = v74;
  v164 = v47;
  v165 = &protocol witness table for UILabel;
  v162 = &protocol witness table for UILabel;
  *&v163 = v38;
  v75 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel];
  v149 = v47;
  v161 = v47;
  *&v160 = v75;
  v76 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton];
  v158 = type metadata accessor for OfferButton();
  v159 = &protocol witness table for UIView;
  *&v157 = v76;
  v77 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v78 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
  v142 = v77;
  if (v78)
  {
    v79 = v77;
    v80 = v78;
    v81 = v67;
    v82 = v151;
    v83 = v73;
    v84 = v74;
    v85 = v75;
    v86 = v76;
    [v80 transform];
    v176 = 0x3FF0000000000000uLL;
    v177 = 0;
    v178 = 0x3FF0000000000000;
    v179 = 0;
    v180 = 0;
    if (sub_10077062C())
    {
      *(&v155 + 1) = v68;
      v156 = &protocol witness table for UIView;
      *&v154 = v80;
      v87 = v149;
      goto LABEL_32;
    }

    sub_100770BAC();
  }

  else
  {
    v156 = 0;
    v154 = 0u;
    v155 = 0u;
    v88 = v77;
    v89 = v67;
    v90 = v151;
    v91 = v73;
    v92 = v74;
    v93 = v75;
    v94 = v76;
  }

  v87 = v149;
LABEL_32:
  v95 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow];
  if (v95)
  {
    v149 = type metadata accessor for ChevronView();
    v141 = &protocol witness table for UIView;
  }

  else
  {
    v141 = 0;
    v149 = 0;
  }

  v96 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView];
  v97 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerView];
  v98 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView];
  if (v98)
  {
    v139 = sub_10075F99C();
    v140 = &protocol witness table for UIView;
  }

  else
  {
    v139 = 0;
    v140 = 0;
  }

  if (v97)
  {
    v99 = v68;
  }

  else
  {
    v99 = 0;
  }

  if (v97)
  {
    v100 = &protocol witness table for UIView;
  }

  else
  {
    v100 = 0;
  }

  v137 = v100;
  v138 = v99;
  if (v96)
  {
    v101 = v68;
  }

  else
  {
    v101 = 0;
  }

  if (v96)
  {
    v102 = &protocol witness table for UIView;
  }

  else
  {
    v102 = 0;
  }

  v135 = v102;
  v136 = v101;
  v103 = v142;
  v104 = &protocol witness table for UILabel;
  if (!v142)
  {
    v104 = 0;
  }

  v134 = v104;
  if (!v142)
  {
    v87 = 0;
  }

  v105 = type metadata accessor for ProductLockupInlineUberLayout(0);
  v106 = v148;
  v148[3] = v105;
  v106[4] = sub_10030D5FC(&qword_100952270, type metadata accessor for ProductLockupInlineUberLayout);
  v107 = sub_10000DB7C(v106);
  sub_10030D534(v152, v107, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v108 = (v107 + v105[5]);
  v109 = v146;
  *v108 = v147;
  v108[1] = 0;
  v108[2] = 0;
  v108[3] = v109;
  v108[4] = v145;
  sub_100012498(&v172, v107 + v105[6]);
  v110 = (v107 + v105[7]);
  *v110 = v151;
  v110[1] = 0;
  v111 = v143;
  v112 = v144;
  v110[2] = 0;
  v110[3] = v112;
  v110[4] = v111;
  sub_100012498(&v169, v107 + v105[10]);
  sub_100012498(&v166, v107 + v105[8]);
  sub_100012498(&v163, v107 + v105[9]);
  sub_100012498(&v160, v107 + v105[11]);
  v113 = v107 + v105[12];
  *(v113 + 4) = 0;
  *v113 = 0u;
  *(v113 + 1) = 0u;
  sub_100012498(&v157, v107 + v105[13]);
  v114 = (v107 + v105[14]);
  *v114 = v103;
  v114[1] = 0;
  v114[2] = 0;
  v114[3] = v87;
  v114[4] = v134;
  v115 = v107 + v105[15];
  v116 = v155;
  *v115 = v154;
  *(v115 + 1) = v116;
  *(v115 + 4) = v156;
  v117 = (v107 + v105[16]);
  *v117 = v95;
  v117[1] = 0;
  v118 = v149;
  v117[2] = 0;
  v117[3] = v118;
  v117[4] = v141;
  v119 = (v107 + v105[17]);
  *v119 = v96;
  v119[1] = 0;
  v120 = v135;
  v121 = v136;
  v119[2] = 0;
  v119[3] = v121;
  v119[4] = v120;
  v122 = (v107 + v105[18]);
  *v122 = v97;
  v122[1] = 0;
  v123 = v137;
  v124 = v138;
  v122[2] = 0;
  v122[3] = v124;
  v122[4] = v123;
  v125 = (v107 + v105[19]);
  *v125 = v98;
  v125[1] = 0;
  v127 = v139;
  v126 = v140;
  v125[2] = 0;
  v125[3] = v127;
  v125[4] = v126;
  v128 = v98;
  v129 = v95;
  v130 = v96;
  v131 = v97;
  v132 = sub_100307EA8(v6, v107, a4);
  sub_10030D59C(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  return v132;
}

double sub_1003054A8(uint64_t *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v71 - v13;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize];
  v86 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize + 8];
  v84 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight];
  v85 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v83 = v12;
  v15 = [v5 contentView];
  [v15 layoutMargins];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (qword_10093FFC8 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v8, qword_10099EAE0);
  __chkstk_darwin(v24);
  *&v25 = v86.n128_u64[0];
  *&v26 = v85.n128_u64[0];
  *(&v25 + 1) = v84.n128_u64[0];
  *(&v26 + 1) = v83.n128_u64[0];
  *(&v71 - 4) = v25;
  *(&v71 - 3) = v26;
  *(&v71 - 4) = v17;
  *(&v71 - 3) = v19;
  *(&v71 - 2) = v21;
  *(&v71 - 1) = v23;
  sub_10030D5FC(&qword_10094C398, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_10076C13C();
  v27 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v27)
  {
    v28 = v27;
    if (([v28 isHidden] & 1) == 0)
    {
      [v28 transform];
      v107 = 0x3FF0000000000000;
      v108 = 0;
      v109 = 0;
      v110 = 0x3FF0000000000000;
      v111 = 0;
      v112 = 0;
      if (sub_10077062C())
      {
        v105 = sub_100016F40(0, &qword_1009441F0);
        v106 = &protocol witness table for UIView;

        v104[0] = v28;
      }

      else
      {
        sub_100770BAC();
      }

      goto LABEL_7;
    }
  }

  v29 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v105 = sub_1007626BC();
  v106 = &protocol witness table for UIView;
  v104[0] = v29;
  v30 = v29;
LABEL_7:
  v86.n128_u64[0] = v10;
  sub_10030D4CC(v14, v10, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  v31 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView];
  v102 = sub_10075FD2C();
  v103 = &protocol witness table for UIView;
  v85.n128_u64[0] = v31;
  *&v101 = v31;
  v32 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel];
  v33 = sub_1007626BC();
  v99 = v33;
  v100 = &protocol witness table for UILabel;
  v84.n128_u64[0] = v32;
  v97 = &protocol witness table for UILabel;
  *&v98 = v32;
  v34 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel];
  v35 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel];
  v96 = v33;
  v82 = v35;
  v83.n128_u64[0] = v34;
  v94 = &protocol witness table for UILabel;
  *&v95 = v34;
  v93 = v33;
  *&v92 = v35;
  v36 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v37 = *&v5[v36];
  v38 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton];
  v90 = type metadata accessor for OfferButton();
  v91 = &protocol witness table for UIView;
  v81 = v38;
  *&v89 = v38;
  sub_10000A570(v104, v88);
  v39 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v40 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v80 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView];
  if (v80)
  {
    v78 = sub_100016F40(0, &qword_1009441F0);
    v79 = &protocol witness table for UIView;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v41 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerView];
  v87 = v14;
  if (v41)
  {
    v76 = sub_100016F40(0, &qword_1009441F0);
    v77 = &protocol witness table for UIView;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  if (v40)
  {
    v42 = v33;
  }

  else
  {
    v42 = 0;
  }

  if (v40)
  {
    v43 = &protocol witness table for UILabel;
  }

  else
  {
    v43 = 0;
  }

  v74 = v43;
  v75 = v42;
  if (v39)
  {
    v44 = &protocol witness table for UILabel;
  }

  else
  {
    v44 = 0;
  }

  v72 = v40;
  v73 = v44;
  if (v39)
  {
    v45 = v33;
  }

  else
  {
    v45 = 0;
  }

  v71 = v45;
  v46 = v37 == 0;
  v47 = v37;
  if (v37)
  {
    v48 = &protocol witness table for UILabel;
  }

  else
  {
    v48 = 0;
  }

  v49 = v39;
  if (v46)
  {
    v50 = 0;
  }

  else
  {
    v50 = v33;
  }

  v51 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  a1[3] = v51;
  a1[4] = sub_10030D5FC(&unk_100952290, type metadata accessor for ProductLockupAccessibilityLayout);
  v52 = sub_10000DB7C(a1);
  sub_10030D534(v86.n128_i64[0], v52 + *(v51 + 64), type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_100012498(&v101, v52);
  sub_100012498(&v98, (v52 + 5));
  sub_100012498(&v95, (v52 + 10));
  sub_100012498(&v92, (v52 + 15));
  v52[20] = v47;
  v52[21] = 0;
  v52[22] = 0;
  v52[23] = v50;
  v52[24] = v48;
  sub_100012498(&v89, (v52 + 25));
  *(v52 + 15) = 0u;
  *(v52 + 16) = 0u;
  v52[34] = 0;
  sub_100012498(v88, (v52 + 35));
  v52[40] = v49;
  v52[41] = 0;
  v53 = v71;
  v54 = v72;
  v52[42] = 0;
  v52[43] = v53;
  v52[44] = v73;
  v52[45] = v54;
  v52[46] = 0;
  v52[47] = 0;
  v55 = v74;
  v52[48] = v75;
  v52[49] = v55;
  v56 = v80;
  v52[50] = v80;
  v52[51] = 0;
  v58 = v78;
  v57 = v79;
  v52[52] = 0;
  v52[53] = v58;
  v52[54] = v57;
  v52[55] = v41;
  v52[56] = 0;
  v52[57] = 0;
  v59 = v77;
  v52[58] = v76;
  v52[59] = v59;
  v60 = v41;
  v61 = v85.n128_u64[0];
  v62 = v84.n128_u64[0];
  v63 = v83.n128_u64[0];
  v64 = v82;
  v65 = v47;
  v66 = v81;
  v67 = v49;
  v68 = v54;
  v69 = v56;
  sub_10030C210(v5, v52, a4);
  sub_10030D59C(v87, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_10000CD74(v104);
  return a4;
}

double sub_100305B14(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v125 = a1;
  v9 = sub_10000A5D4(&qword_10094C3A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v108 - v10;
  v129 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v129);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v108 - v15;
  __chkstk_darwin(v17);
  v19 = &v108 - v18;
  *&v126 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v20 = *(v126 - 8);
  *&v21 = __chkstk_darwin(v126).n128_u64[0];
  v23 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
  v25 = &selRef_initWithTabBarSystemItem_tag_;
  v127 = v13;
  v128 = v23;
  if (!v24)
  {
LABEL_4:
    v27 = [v6 v25[274]];
    sub_10036364C(v27, v19);

    sub_10030D4CC(&v19[*(v129 + 19)], v23, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
    sub_10030D59C(v19, type metadata accessor for ProductLockupLayout.Metrics);
    v28 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
    v147 = sub_1007626BC();
    v148 = &protocol witness table for UIView;
    v146[0] = v28;
    v29 = [v28 text];
    if (v29)
    {
      v30 = v29;
      v31 = sub_10076FF9C();
      v123 = v32;
      v124 = v31;
    }

    else
    {
      v123 = 0;
      v124 = 0;
    }

    v41 = v126;
    goto LABEL_19;
  }

  v26 = v24;
  if ([v26 isHidden])
  {

    v25 = &selRef_initWithTabBarSystemItem_tag_;
    goto LABEL_4;
  }

  v124 = v20;
  v23[3] = &type metadata for Double;
  v23[4] = &protocol witness table for Double;
  *v23 = 0;
  v33 = v23;
  if (qword_100940020 != -1)
  {
    swift_once();
  }

  v149 = qword_10099EBB8;
  v34 = v126;
  v35 = qword_10099EBB8;
  sub_10000A5D4(&unk_100943120);
  sub_100016F40(0, &qword_100942F00);
  sub_10075FE0C();
  v36 = (v23 + *(v34 + 24));
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  *v36 = 0x7FF0000000000000;
  if (qword_100940120 != -1)
  {
    swift_once();
  }

  v37 = sub_10076D9AC();
  v38 = sub_10000A61C(v37, qword_10099EED8);
  v39 = (v33 + *(v34 + 28));
  v39[3] = v37;
  v39[4] = &protocol witness table for StaticDimension;
  v40 = sub_10000DB7C(v39);
  (*(*(v37 - 8) + 16))(v40, v38, v37);
  [v26 transform];
  v149 = 0x3FF0000000000000;
  v150 = 0;
  v151 = 0;
  v152 = 0x3FF0000000000000;
  v153 = 0;
  v154 = 0;
  if (sub_10077062C())
  {
    v147 = sub_100016F40(0, &qword_1009441F0);
    v148 = &protocol witness table for UIView;
    v146[0] = v26;
  }

  else
  {
    sub_100770BAC();
  }

  v20 = v124;
  v42 = [v26 text];
  v23 = v128;
  v41 = v126;
  if (v42)
  {
    v43 = v42;
    v44 = sub_10076FF9C();
    v123 = v45;
    v124 = v44;
  }

  else
  {

    v123 = 0;
    v124 = 0;
  }

  v13 = v127;
LABEL_19:
  v126 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize];
  *&v46 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight];
  *(&v46 + 1) = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v122 = v46;
  v47 = [v6 contentView];
  [v47 layoutMargins];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  sub_10030D4CC(v23, v11, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  (*(v20 + 56))(v11, 0, 1, v41);
  v56 = [v6 traitCollection];
  v57 = sub_10036364C(v56, v19);
  __chkstk_darwin(v57);
  v58 = v122;
  *(&v108 - 5) = v126;
  *(&v108 - 4) = v58;
  *(&v108 - 6) = v49;
  *(&v108 - 5) = v51;
  *(&v108 - 4) = v53;
  *(&v108 - 3) = v55;
  *(&v108 - 2) = v11;
  sub_10030D5FC(&qword_10094C3A8, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10076C13C();

  sub_10030D59C(v19, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10000CFBC(v11, &qword_10094C3A0);
  v129 = v16;
  sub_10030D4CC(v16, v13, type metadata accessor for ProductLockupLayout.Metrics);
  v59 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView];
  v144 = sub_10075FD2C();
  v145 = &protocol witness table for UIView;
  *&v126 = v59;
  *&v143 = v59;
  v60 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel];
  v61 = sub_1007626BC();
  v141 = v61;
  v142 = &protocol witness table for UILabel;
  v139 = &protocol witness table for UILabel;
  *&v140 = v60;
  v62 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel];
  v63 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel];
  v138 = v61;
  v121 = v62;
  *&v122 = v60;
  v136 = &protocol witness table for UILabel;
  *&v137 = v62;
  v135 = v61;
  v120 = v63;
  *&v134 = v63;
  v64 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v65 = *&v6[v64];
  v66 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton];
  v132 = type metadata accessor for OfferButton();
  v133 = &protocol witness table for UIView;
  v119 = v66;
  *&v131 = v66;
  sub_10000A570(v146, v130);
  v67 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v68 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v117 = v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer];
  v118 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView];
  if (v118)
  {
    v115 = sub_100016F40(0, &qword_1009441F0);
    v116 = &protocol witness table for UIView;
  }

  else
  {
    v115 = 0;
    v116 = 0;
  }

  v69 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerView];
  if (v69)
  {
    v113 = sub_100016F40(0, &qword_1009441F0);
    v114 = &protocol witness table for UIView;
  }

  else
  {
    v113 = 0;
    v114 = 0;
  }

  if (v68)
  {
    v70 = v61;
  }

  else
  {
    v70 = 0;
  }

  if (v68)
  {
    v71 = &protocol witness table for UILabel;
  }

  else
  {
    v71 = 0;
  }

  v111 = v71;
  v112 = v70;
  if (v67)
  {
    v72 = &protocol witness table for UILabel;
  }

  else
  {
    v72 = 0;
  }

  if (v67)
  {
    v73 = v61;
  }

  else
  {
    v73 = 0;
  }

  v109 = v73;
  v110 = v72;
  if (v65)
  {
    v74 = &protocol witness table for UILabel;
  }

  else
  {
    v74 = 0;
  }

  if (v65)
  {
    v75 = v61;
  }

  else
  {
    v75 = 0;
  }

  v76 = type metadata accessor for ProductLockupLayout(0);
  v77 = v125;
  v125[3] = v76;
  v77[4] = sub_10030D5FC(&unk_1009522B0, type metadata accessor for ProductLockupLayout);
  v78 = sub_10000DB7C(v77);
  sub_10030D534(v127, v78, type metadata accessor for ProductLockupLayout.Metrics);
  sub_100012498(&v143, v78 + v76[5]);
  sub_100012498(&v140, v78 + v76[6]);
  sub_100012498(&v137, v78 + v76[7]);
  sub_100012498(&v134, v78 + v76[8]);
  v79 = (v78 + v76[9]);
  *v79 = v65;
  v79[1] = 0;
  v79[2] = 0;
  v79[3] = v75;
  v79[4] = v74;
  v80 = v78 + v76[10];
  *(v80 + 4) = 0;
  *v80 = 0u;
  *(v80 + 1) = 0u;
  sub_100012498(&v131, v78 + v76[11]);
  sub_100012498(v130, v78 + v76[12]);
  v81 = (v78 + v76[13]);
  *v81 = v67;
  v81[1] = 0;
  v83 = v109;
  v82 = v110;
  v81[2] = 0;
  v81[3] = v83;
  v81[4] = v82;
  v84 = (v78 + v76[14]);
  *v84 = v68;
  v84[1] = 0;
  v85 = v111;
  v86 = v112;
  v84[2] = 0;
  v84[3] = v86;
  v84[4] = v85;
  *(v78 + v76[15]) = v117;
  v87 = (v78 + v76[16]);
  v88 = v123;
  *v87 = v124;
  v87[1] = v88;
  v89 = (v78 + v76[17]);
  v90 = v118;
  *v89 = v118;
  v89[1] = 0;
  v92 = v115;
  v91 = v116;
  v89[2] = 0;
  v89[3] = v92;
  v89[4] = v91;
  v93 = (v78 + v76[18]);
  *v93 = v69;
  v93[1] = 0;
  v95 = v113;
  v94 = v114;
  v93[2] = 0;
  v93[3] = v95;
  v93[4] = v94;
  v96 = v69;
  v97 = v126;
  v98 = v122;
  v99 = v121;
  v100 = v120;
  v101 = v65;
  v102 = v119;
  v103 = v67;
  v104 = v68;
  v105 = v90;
  v106 = sub_100308F70(v6, v78, a4, a5);
  sub_10030D59C(v129, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10030D59C(v128, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_10000CD74(v146);
  return v106;
}

uint64_t sub_1003065E8(double *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v20 = sub_10000A5D4(&qword_10094C3A0);
  __chkstk_darwin(v20 - 8);
  v22 = &v29 - v21;
  v23 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[14] = a3;
  a1[15] = a4;
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  *&v30 = a5;
  sub_10000CD74((a1 + 4));
  sub_100012498(&v30, (a1 + 4));
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  *&v30 = a6;
  sub_10000CD74((a1 + 9));
  sub_100012498(&v30, (a1 + 9));
  *a1 = a7;
  a1[1] = a8;
  a1[2] = a9;
  a1[3] = a10;
  sub_100016E2C(a2, v22, &qword_10094C3A0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_10000CFBC(v22, &qword_10094C3A0);
  }

  sub_10030D534(v22, v26, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  return sub_1002CDE88(v26, a1 + *(v28 + 76));
}

uint64_t sub_100306820(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  a1[14] = a2;
  a1[15] = a3;
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a4;
  sub_10000CD74((a1 + 4));
  sub_100012498(&v16, (a1 + 4));
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a5;
  sub_10000CD74((a1 + 9));
  result = sub_100012498(&v16, (a1 + 9));
  *a1 = a6;
  a1[1] = a7;
  a1[2] = a8;
  a1[3] = a9;
  return result;
}

void sub_1003068D0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
  if (v2)
  {
    sub_100016F40(0, &qword_100942F10);
    v3 = v2;
    v4 = sub_100770CFC();
    [v3 setTextColor:v4];
  }

  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel);
  sub_100016F40(0, &qword_100942F10);
  v6 = sub_100770CFC();
  [v5 setTextColor:v6];

  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
  v8 = sub_100770D1C();
  [v7 setTextColor:v8];

  v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView);
  v10 = sub_100770D1C();
  [v9 setTintColor:v10];

  v11 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12)
  {
    v13 = v12;
    v14 = sub_100770D0C();
    [v13 setTextColor:v14];
  }
}

void sub_100306A44(void *a1)
{
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  v4 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView;
  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView];
  if (v3)
  {
    if (v5)
    {
      v6 = v3;
      v7 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY);
      v8 = *(*(v5 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
      v9 = *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
      *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = v7;
      v10 = a1;
      if (v7 == v9)
      {
        v11 = *&v1[v4];
        if (!v11)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }

      [v8 setNeedsLayout];
      v11 = *&v1[v4];
      if (v11)
      {
LABEL_16:
        v18 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding);
        *(v11 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_isRubberbanding) = v18;
        v19 = *(v11 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
        *(v19 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding) = v18;
        if (*(*(v19 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
        {
          type metadata accessor for VideoView();
          v20 = swift_dynamicCastClass();
          if (v20)
          {
            *(v20 + qword_1009602E0) = v18;
          }
        }

        return;
      }
    }

    else
    {
      v17 = a1;
    }

LABEL_14:

    return;
  }

  if (v5)
  {
    v12 = *(*(v5 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v13 = *&v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
    *&v12[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
    if (v13 != 0.0)
    {
      [v12 setNeedsLayout];
    }

    v14 = *&v1[v4];
    if (v14)
    {
      *(v14 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_isRubberbanding) = 0;
      v15 = *(v14 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
      *(v15 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding) = 0;
      if (*(*(v15 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
      {
        type metadata accessor for VideoView();
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          *(v16 + qword_1009602E0) = 0;
        }
      }
    }
  }
}

uint64_t sub_100306DD4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) == 1)
  {
    swift_unknownObjectWeakInit();
    sub_100306E2C();
    result = swift_unknownObjectWeakDestroy();
    *(v0 + v1) = 0;
  }

  return result;
}

void sub_100306E2C()
{
  v0 = sub_10076F08C();
  __chkstk_darwin(v0);
  v1 = sub_10076F0EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel;
    v11 = [*(Strong + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel) text];
    if (v11 && (v11, ([*&v9[v10] isHidden] & 1) != 0))
    {
      sub_100016F40(0, &qword_1009471F0);
      v21 = sub_10077068C();
      sub_10076F0DC();
      sub_10076F15C();
      v20 = *(v2 + 8);
      v20(v4, v1);
      v12 = *&v9[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel];
      v13 = *&v9[v10];
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v12;
      aBlock[4] = sub_10030B624;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_100890D28;
      v19[1] = _Block_copy(aBlock);
      v22 = _swiftEmptyArrayStorage;
      sub_10030D5FC(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
      v15 = v12;
      v16 = v13;
      v17 = v15;
      sub_10000A5D4(&unk_10094E1C0);
      sub_1000852B8();
      sub_1007712CC();
      sub_10076F12C();
      swift_allocObject();
      sub_10076F10C();

      v18 = v21;
      sub_10077065C();

      v20(v7, v1);
    }

    else
    {
    }
  }
}

void sub_1003071B4(void *a1, void *a2)
{
  [a1 setAlpha:0.0];
  [a1 setHidden:0];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v16 = sub_10030B644;
  v17 = v5;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10009AEDC;
  v15 = &unk_100890D78;
  v6 = _Block_copy(&v12);
  v7 = a2;
  v8 = a1;

  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v16 = sub_10030B6C8;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000513F0;
  v15 = &unk_100890DC8;
  v10 = _Block_copy(&v12);
  v11 = v7;

  [v4 animateWithDuration:v6 animations:v10 completion:1.0];
  _Block_release(v10);
  _Block_release(v6);
}

void sub_100307370(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      [v5 setAlpha:a2];
      --v2;
    }

    while (v2);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong setNeedsLayout];
  }
}

void sub_100307408(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      __break(1u);
      return;
    }

    *&Strong[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v9;
  }

  if ((a3 & 1) != 0 && (swift_beginAccess(), (v10 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v11 = *&v10[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount];

    v12 = v11 == 0;
    v13 = *(a4 + 16);
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v12 = 0;
    v13 = *(a4 + 16);
    if (!v13)
    {
      return;
    }
  }

  v14 = (a4 + 32);
  do
  {
    v15 = *v14++;
    [v15 setHidden:v12];
    --v13;
  }

  while (v13);
}

void sub_1003076A4()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    sub_100762A7C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_100307828()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView);
  v2 = v1;
  return v1;
}

uint64_t (*sub_100307864(uint64_t **a1))()
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
  v2[4] = sub_10030116C(v2);
  return sub_100019A4C;
}

uint64_t sub_1003078D4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10030D5FC(&qword_100952238, type metadata accessor for ProductLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100307948(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10030D5FC(&qword_100952238, type metadata accessor for ProductLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1003079D4(uint64_t *a1))()
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

  v3 = v2;
  *a1 = v2;
  sub_10030D5FC(&qword_100952238, type metadata accessor for ProductLockupCollectionViewCell);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_100307A90(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView);
  if (v2 && a1)
  {
    v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView];
    v5 = v2;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      v8 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
      sub_100016F40(0, &qword_1009441F0);
      v9 = v8;
      v10 = sub_100770EEC();

      v5 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL sub_100307C40(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a3 traitCollection];
  v11 = sub_1007706FC();

  if (v11)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10076D17C();
    sub_10075FE7C();
    (*(v6 + 8))(v9, v5);
  }

  sub_100770ACC();
  sub_100770ACC();
  sub_10000CF78(a1, a1[3]);
  sub_10000CF78(a1, a1[3]);
  sub_10076D2AC();
  return sub_10076D71C(v14) > 1;
}

uint64_t sub_100307E18(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 traitCollection];
  if ((a2 & 1) == 0 || (sub_1007706FC() & 1) != 0 || [*(a3 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton) isHidden])
  {
    v6 = sub_10077070C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 1;
  }
}

double sub_100307EA8(void *a1, uint64_t a2, double a3)
{
  v6 = sub_10000A5D4(&unk_100945BD0);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = v45 - v7;
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_1007706EC();

  v48 = v9;
  if ((v14 & 1) == 0)
  {
    v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10000CF78((a2 + v15[15]), *(a2 + v15[15] + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v16 = *(v9 + 8);
    v16(v12, v8);
    sub_10000CF78((a2 + v15[16]), *(a2 + v15[16] + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v16(v12, v8);
    sub_10000CF78((a2 + v15[17]), *(a2 + v15[17] + 24));
    sub_1000FF02C();
    v17 = v49;
    sub_10076D40C();
    v16(v12, v8);
    sub_10076D17C();
    sub_10075FE7C();
    v16(v12, v8);
    sub_10000A5D4(&unk_100952280);
    sub_10075FE9C();
    sub_10076D17C();
    sub_10075FE7C();
    v16(v12, v8);
    v9 = v48;
    (*(v50 + 8))(v17, v51);
  }

  sub_100770ACC();
  v19 = v18;
  v20 = [a1 traitCollection];
  v21 = sub_1007706FC();

  if (v21)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10076D17C();
    sub_10075FE7C();
    (*(v9 + 8))(v12, v8);
  }

  v47 = v19;
  v22 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10000CF78((a2 + *(v22 + 36)), *(a2 + *(v22 + 36) + 24));
  sub_10076D2AC();
  v45[2] = v23;
  v45[4] = v24;
  v45[1] = v25;
  v45[3] = v26;
  v46 = v22;
  v27 = (a2 + *(v22 + 44));
  sub_10000CF78(v27, v27[3]);
  sub_10076D2AC();
  sub_10000CF78(v27, v27[3]);
  if (sub_10076D20C())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10076D17C();
    sub_10075FE7C();
    v29 = v28;
    (*(v9 + 8))(v12, v8);
    v54[0] = v29;
    sub_10076D42C();
  }

  sub_10035EAE8(&v52);
  if (v53)
  {
    sub_100012498(&v52, v54);
    sub_10000CF78(v54, v55);
    sub_10076D2AC();
    v30 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10000CF78((a2 + *(v30 + 44)), *(a2 + *(v30 + 44) + 24));
    sub_10076D42C();
    sub_10000CF78((a2 + *(v30 + 48)), *(a2 + *(v30 + 48) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    (*(v9 + 8))(v12, v8);
    sub_10000CD74(v54);
  }

  else
  {
    sub_10000CFBC(&v52, &unk_10094DA00);
  }

  v31 = v50;
  sub_10035EAE8(v54);
  v32 = v55;
  sub_10000CFBC(v54, &unk_10094DA00);
  if (!v32)
  {
    v33 = [a1 traitCollection];
    v34 = sub_1007706FC();

    if (v34 & 1) != 0 || (v35 = [a1 traitCollection], v36 = sub_10077071C(), v35, (v36))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      sub_10076D17C();
      sub_10075FE7C();
      (*(v9 + 8))(v12, v8);
    }
  }

  v37 = [a1 traitCollection];
  v38 = sub_1007706EC();

  if (v38)
  {
    sub_10035EAE8(v54);
    sub_10000CFBC(v54, &unk_10094DA00);
  }

  v39 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10000A5D4(&unk_100952280);
  v40 = v49;
  sub_10075FE9C();
  sub_10076D17C();
  sub_10075FE7C();
  v41 = *(v48 + 8);
  v41(v12, v8);
  (*(v31 + 8))(v40, v51);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10076D17C();
  sub_10075FE7C();
  v41(v12, v8);
  sub_10076D17C();
  sub_10075FE7C();
  v43 = v42;
  v41(v12, v8);
  v54[0] = v43;
  sub_10076D42C();
  sub_10000CF78((a2 + v39[9]), *(a2 + v39[9] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v41(v12, v8);
  sub_10000CF78((a2 + *(v46 + 52)), *(a2 + *(v46 + 52) + 24));
  sub_10076D2BC();
  sub_10000CF78((a2 + v39[15]), *(a2 + v39[15] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v41(v12, v8);
  sub_10000CF78((a2 + v39[16]), *(a2 + v39[16] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v41(v12, v8);
  return a3;
}

double sub_1003089E8(uint64_t a1, void *a2)
{
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a2 + 35, a2[38]);
  v8 = sub_10076D24C();
  v9 = 0.0;
  v10 = 0.0;
  if ((v8 & 1) == 0)
  {
    sub_10000CF78(a2 + 35, a2[38]);
    sub_10076D2AC();
    v12 = v11;
    v9 = v13;
    v14 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000CF78(&v14[*(v15 + 56)], *&v14[*(v15 + 56) + 24]);
    sub_10076D42C();
    v10 = v12 - v9 + v16;
  }

  v46 = v10;
  sub_100016E2C((a2 + 40), &v48, &qword_10094BB30);
  if (v49)
  {
    sub_100012498(&v48, v50);
    sub_10000CF78(v50, v51);
    sub_10076D2AC();
    v18 = v17;
    v9 = v19;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v47 = a1;
    sub_10000A5D4(&unk_100945BD0);
    sub_10075FDCC();
    v47 = v48;
    v20 = v18;
    sub_10076D42C();
    v22 = v21;
    sub_10000CD74(v50);
    v45 = v9;
  }

  else
  {
    sub_10000CFBC(&v48, &qword_10094BB30);
    v20 = JUMeasurementsZero[1];
    v45 = JUMeasurementsZero[3];
    v22 = 0.0;
  }

  sub_100016E2C((a2 + 45), &v48, &qword_10094BB30);
  if (v49)
  {
    sub_100012498(&v48, v50);
    sub_10000CF78(v50, v51);
    sub_10076D2AC();
    v24 = v23;
    v44 = v22;
    v9 = v25;
    v26 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000CF78(&v26[*(v27 + 64)], *&v26[*(v27 + 64) + 24]);
    sub_1000FF02C();
    sub_10076D40C();
    v29 = v28;
    (*(v5 + 8))(v7, v4);
    *&v48 = v29;
    v22 = v44;
    sub_10076D42C();
    v31 = v30;
    sub_10000CD74(v50);
    v32 = v9;
  }

  else
  {
    sub_10000CFBC(&v48, &qword_10094BB30);
    v24 = JUMeasurementsZero[1];
    v32 = JUMeasurementsZero[3];
    v31 = 0.0;
  }

  sub_10000CF78(a2 + 25, a2[28]);
  sub_10076D2BC();
  v34 = v24 - v32 + v31 + v20 - v45 + v22 + v46 + v33;
  v35 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_10000CF78(v35 + 9, *(v35 + 12));
  sub_1000FF02C();
  sub_10076D40C();
  v37 = v36;
  v38 = *(v5 + 8);
  v38(v7, v4);
  v39 = v34 + v37;
  v40 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_10000CF78(&v35[*(v40 + 68)], *&v35[*(v40 + 68) + 24]);
  sub_1000FF02C();
  sub_10076D40C();
  v42 = v41;
  v38(v7, v4);
  return v9 + v39 + v42;
}

double sub_100308F70(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_1007706FC();

  sub_10000CF78((a2 + 32), *(a2 + 56));
  sub_1000FF02C();
  sub_10076D40C();
  v15 = *(v9 + 8);
  v15(v12, v8);
  sub_10000CF78((a2 + 72), *(a2 + 96));
  sub_1000FF02C();
  sub_10076D40C();
  v15(v12, v8);
  v16 = a3 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v17 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v19[0] = a1;
  sub_10000A5D4(&unk_100945BD0);
  sub_10075FDCC();
  sub_100309254(a1, a2, v16 - *&v19[1], a4);
  sub_10000CF78((a2 + *(v17 + 96)), *(a2 + *(v17 + 96) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v15(v12, v8);
  if (v14 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_1003097D4(a1, a2, a3, a4);
  }

  return a3;
}

double sub_100309254(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_1007706FC();

  v44 = type metadata accessor for ProductLockupLayout(0);
  v15 = v44[10];
  sub_100016E2C(a2 + v15, v45, &unk_10094DA00);
  if (v46)
  {
    sub_10000CF78(v45, v46);
    sub_10076D2BC();
    v17 = v16;
    sub_10000CD74(v45);
  }

  else
  {
    sub_10000CFBC(v45, &unk_10094DA00);
    v17 = 0.0;
  }

  v18 = sub_10030A70C(a1, a2);
  sub_100016E2C(a2 + v15, v45, &unk_10094DA00);
  v19 = v46;
  sub_10000CFBC(v45, &unk_10094DA00);
  if (v19)
  {
    v20 = v44;
    if ((v14 & 1) == 0)
    {
      if (*(a2 + v44[15]))
      {
        v21 = type metadata accessor for ProductLockupLayout.Metrics(0);
        sub_10000CF78((a2 + *(v21 + 92)), *(a2 + *(v21 + 92) + 24));
        sub_1000FF02C();
        sub_10076D40C();
        v23 = v22;
        (*(v9 + 8))(v12, v8);
        v18 = v18 + v17 + v23;
      }

LABEL_9:
      if (*(a2 + v20[15]))
      {
        return v18;
      }
    }
  }

  else
  {
    v20 = v44;
    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v43 = *(a2 + 120);
  v24 = (a2 + v20[11]);
  sub_10000CF78(v24, v24[3]);
  sub_10076D2BC();
  v26 = v25;
  sub_100016E2C(a2 + v15, v45, &unk_10094DA00);
  v27 = v46;
  sub_10000CFBC(v45, &unk_10094DA00);
  if (v27)
  {
    v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10000CF78((a2 + *(v28 + 80)), *(a2 + *(v28 + 80) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    (*(v9 + 8))(v12, v8);
  }

  v29 = a2;
  v30 = v8;
  v41 = v29;
  v42 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v31 = v29 + *(v42 + 76);
  v32 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  sub_10000CF78((v31 + *(v32 + 28)), *(v31 + *(v32 + 28) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v33 = *(v9 + 8);
  v33(v12, v30);
  sub_10000CF78((v31 + *(v32 + 24)), *(v31 + *(v32 + 24) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v33(v12, v30);
  v34 = v41;
  sub_10000CF78((v41 + v44[12]), *(v41 + v44[12] + 24));
  sub_10076D2BC();
  v36 = v35;
  sub_10000CF78(v24, v24[3]);
  if (sub_10076D24C())
  {
    v26 = v36;
  }

  sub_10000CF78((v34 + *(v42 + 72)), *(v34 + *(v42 + 72) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v38 = v37;
  v33(v12, v30);
  if (v18 < v43 - v38 - v26)
  {
    v18 = v43 - v38 - v26;
  }

  return sub_1003097D4(a1, v34, a3, a4) + v18;
}

double sub_1003097D4(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_10077164C();
  v41 = *(v8 - 8);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v42[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 traitCollection];
  v13 = sub_1007706FC();

  v14 = type metadata accessor for ProductLockupLayout(0);
  sub_10000CF78((a2 + v14[11]), *(a2 + v14[11] + 24));
  sub_10076D2BC();
  v16 = v15;
  v17 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10000CF78((a2 + v17[18]), *(a2 + v17[18] + 24));
  sub_1000FF02C();
  v18 = v8;
  v19 = v41;
  sub_10076D40C();
  v21 = v20;
  v22 = *(v19 + 8);
  v22(v11, v18);
  if ((v13 & 1) != 0 || *(a2 + v14[15]) == 1)
  {
    v23 = a2 + v17[19];
    v24 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10000CF78((v23 + *(v24 + 28)), *(v23 + *(v24 + 28) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v26 = v25;
    v22(v11, v18);
    sub_100309C10(a1, a2, a3, a4, a3 - (v16 + v26));
    v28 = v27;
    v29 = sub_10030A490(a1, a2);
    if (v28 > v29)
    {
      v29 = v28;
    }
  }

  else
  {
    v30 = v14[10];
    sub_100016E2C(a2 + v30, v42, &unk_10094DA00);
    if (v43)
    {
      sub_10000CF78(v42, v43);
      sub_10076D2BC();
      v32 = v31;
      sub_10000CD74(v42);
    }

    else
    {
      sub_10000CFBC(v42, &unk_10094DA00);
      v32 = 0.0;
    }

    sub_100016E2C(a2 + v30, v42, &unk_10094DA00);
    v33 = v43;
    sub_10000CFBC(v42, &unk_10094DA00);
    if (v33)
    {
      sub_10000CF78((a2 + v17[20]), *(a2 + v17[20] + 24));
      sub_1000FF02C();
      sub_10076D40C();
      v35 = v34;
      v22(v11, v18);
    }

    else
    {
      v35 = 0.0;
    }

    v36 = a2 + v17[19];
    v37 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10000CF78((v36 + *(v37 + 28)), *(v36 + *(v37 + 28) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v39 = v38;
    v22(v11, v18);
    sub_100309C10(a1, a2, a3, a4, a3 - (v35 + v32 + v16 + v39));
  }

  return v21 + 0.0 + v29;
}

void sub_100309C10(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v8 = sub_10076997C();
  v82 = *(v8 - 8);
  v83 = v8;
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v71 - v12;
  v13 = sub_10077164C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v78 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10075D78C();
  v80 = *(v16 - 8);
  v81 = v16;
  __chkstk_darwin(v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ProductLockupLayout(0);
  v20 = (a2 + v19[11]);
  sub_10000CF78(v20, v20[3]);
  sub_10076D2BC();
  v21 = (a2 + v19[16]);
  v79 = v21[1];
  if (v79)
  {
    v74 = v14;
    v75 = v13;
    v76 = *v21;
    v22 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76));
    type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v84[0] = a1;
    sub_10000A5D4(&unk_100950EE0);
    v71 = v22;
    sub_10075FDCC();
    v23 = v87;
    v72 = v19;
    v24 = v19[15];
    v73 = a2;
    v25 = *(a2 + v24);
    sub_10000CF78(v20, v20[3]);
    if (sub_10076D24C())
    {
    }

    else
    {
      v26 = v25;
      v27 = objc_opt_self();
      v28 = v79;

      v29 = [v27 mainScreen];
      [v29 bounds];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v88.origin.x = v31;
      v88.origin.y = v33;
      v88.size.width = v35;
      v88.size.height = v37;
      Width = CGRectGetWidth(v88);
      JUScreenClassGetPortraitWidth();
      v39 = v23;
      if (Width > v40 || (sub_10075D77C(), v84[0] = v76, v84[1] = v28, sub_10002564C(), sub_1007711EC(), v42 = v41, v80[1](v18, v81), (v42)) && (!v26 || (v43 = [a1 traitCollection], v44 = sub_1007706FC(), v43, (v44)))
      {
        v45 = sub_1002D16C0();
        v46 = *(v45 + 16);
        v80 = (v82 + 8);
        LODWORD(v81) = enum case for Feature.measurement_with_labelplaceholder(_:);
        v47 = v45 + 40;
        v82 = -v46;
        v48 = -1;
        while (v82 + v48 != -1)
        {
          if (++v48 >= *(v45 + 16))
          {
            __break(1u);
            return;
          }

          v49 = v47 + 16;
          v50 = a1;
          v51 = sub_10076C04C();
          v85 = v51;
          v86 = sub_10030D5FC(&qword_100943230, &type metadata accessor for Feature);
          v52 = sub_10000DB7C(v84);
          (*(*(v51 - 8) + 104))(v52, v81, v51);
          v53 = v39;

          v54 = v39;
          sub_10076C90C();
          sub_10000CD74(v84);
          a1 = v50;
          sub_10076996C();
          sub_10030D5FC(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility);
          v55 = v83;
          sub_10076D2AC();
          v57 = v56;
          v58 = v55;
          v39 = v54;
          (*v80)(v10, v58);
          v47 = v49;
          if (v57 > a5)
          {

            goto LABEL_13;
          }
        }

        v64 = sub_10076C04C();
        v85 = v64;
        v86 = sub_10030D5FC(&qword_100943230, &type metadata accessor for Feature);
        v65 = sub_10000DB7C(v84);
        (*(*(v64 - 8) + 104))(v65, v81, v64);
        v66 = v39;
        sub_10076C90C();
        sub_10000CD74(v84);
        v67 = v77;
        sub_10076996C();
        sub_10030D5FC(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility);
        v68 = v83;
        sub_10076D2AC();
        v70 = v69;

        (*v80)(v67, v68);
        v59 = v75;
        v60 = v74;
        v61 = v73;
        v62 = v72;
        if (v70 > a5)
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_13:

        v59 = v75;
        v60 = v74;
        v61 = v73;
        v62 = v72;
LABEL_14:
        sub_10000CF78((v61 + v62[12]), *(v61 + v62[12] + 24));
        sub_10076D2AC();
        sub_10000CF78(v71, v71[3]);
        v63 = v78;
        sub_1000FF02C();
        sub_10076D40C();
        (*(v60 + 8))(v63, v59);
      }
    }
  }
}

double sub_10030A490(uint64_t a1, uint64_t a2)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProductLockupLayout(0);
  sub_100016E2C(a2 + *(v7 + 52), &v22, &qword_10094BB30);
  if (!v23)
  {
    sub_10000CFBC(&v22, &qword_10094BB30);
    return 0.0;
  }

  sub_100012498(&v22, v24);
  sub_100016E2C(a2 + *(v7 + 56), &v20, &qword_10094BB30);
  if (!v21)
  {
    sub_10000CFBC(&v20, &qword_10094BB30);
    sub_10000CD74(v24);
    return 0.0;
  }

  sub_100012498(&v20, &v22);
  sub_10000CF78(v24, v24[3]);
  sub_10076D2AC();
  v9 = v8;
  v11 = v10;
  sub_10000CF78(&v22, v23);
  sub_10076D2AC();
  v13 = v12;
  v14 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10000CF78((a2 + *(v14 + 84)), *(a2 + *(v14 + 84) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  v17 = v13 + v9 - v11 + v16;
  sub_10000CD74(&v22);
  sub_10000CD74(v24);
  return v17;
}

double sub_10030A70C(void *a1, uint64_t a2)
{
  v4 = sub_10077164C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v54 = sub_1007706FC();

  v10 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v55 = a1;
  v11 = sub_10000A5D4(&unk_100945BD0);
  sub_10075FDCC();
  v12 = *v58;
  v13 = v10;
  *&v55 = a1;
  v53 = v11;
  sub_10075FDCC();
  v14 = *v58;
  v15 = type metadata accessor for ProductLockupLayout(0);
  v16 = v15[10];
  sub_100016E2C(a2 + v16, v58, &unk_10094DA00);
  if (v59)
  {
    sub_10000CF78(v58, v59);
    sub_10076D2BC();
    sub_10000CD74(v58);
  }

  else
  {
    sub_10000CFBC(v58, &unk_10094DA00);
  }

  sub_100016E2C(a2 + v16, v58, &unk_10094DA00);
  v17 = v59;
  sub_10000CFBC(v58, &unk_10094DA00);
  if (v17)
  {
    sub_10000CF78((a2 + *(v13 + 80)), *(a2 + *(v13 + 80) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    (*(v5 + 8))(v8, v4);
  }

  v18 = (a2 + v15[6]);
  sub_10000CF78(v18, v18[3]);
  sub_10076D2AC();
  v21 = v20;
  v23 = v22;
  v24 = v19;
  v26 = v25;
  if (v12 - v19 > 0.0)
  {
    v27 = v12 - v19;
  }

  else
  {
    v27 = 0.0;
  }

  sub_10000CF78(v18, v18[3]);
  sub_10076D6EC();
  v29 = v23 - v26 + v27 + v28;
  sub_10000A570(v18, v58);
  *&v55 = a1;
  sub_10000A5D4(&unk_10094C370);
  sub_10075FDCC();
  v30 = v15[9];
  sub_100016E2C(a2 + v30, &v55, &qword_10094BB30);
  sub_10000CFBC(&v55, &qword_10094BB30);
  sub_10000CF78(v58, v59);
  v60.var0 = v21;
  v60.var1 = v23;
  v60.var2 = v24;
  v60.var3 = v26;
  sub_10076D71C(v60);
  sub_10000CD74(v58);
  v31 = (a2 + v15[8]);
  sub_10000CF78(v31, v31[3]);
  sub_10076D6DC();
  v32 = (a2 + v15[7]);
  sub_10000CF78(v32, v32[3]);
  sub_10076D6DC();
  sub_10000CF78(v31, v31[3]);
  sub_10076D2AC();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10000CF78(v32, v32[3]);
  sub_10076D2AC();
  v40 = v39;
  v41 = v14 - v36 + v34 - v38;
  v44 = v14 - v42 + v43 - v39;
  if (v41 > v44)
  {
    v45 = v41;
  }

  else
  {
    v45 = v44;
  }

  v46 = v29 + v45;
  sub_100016E2C(a2 + v30, &v55, &qword_10094BB30);
  if (v56)
  {
    sub_100012498(&v55, v58);
    v57 = a1;
    sub_10075FDCC();
    v47 = *&v55;
    sub_10000CF78(v58, v59);
    sub_10076D2AC();
    v49 = v48;
    v46 = v46 + v47 - v50 + v51 - v48;
    sub_10000CD74(v58);
  }

  else
  {
    if (v41 >= v44)
    {
      v49 = v38;
    }

    else
    {
      v49 = v40;
    }

    sub_10000CFBC(&v55, &qword_10094BB30);
  }

  return v46 + v49;
}

void sub_10030ACEC(void *a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  if (*(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_100940038 != -1)
    {
      swift_once();
    }

    v7 = sub_10076D3DC();
    v8 = sub_10000A61C(v7, qword_10099EBE0);
    v9 = *(v7 - 8);
    (*(v9 + 16))(v6, v8, v7);
    (*(v9 + 56))(v6, 0, 1, v7);
    sub_1007625DC();
    v10 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_100940008 != -1)
    {
      swift_once();
    }

    v11 = sub_10000A5D4(&unk_100950EE0);
    sub_10000A61C(v11, qword_10099EB70);
    v23 = a1;
    sub_10075FDCC();
    v12 = v24;
    [v10 setFont:v24];
  }

  else
  {
    if (qword_100940030 != -1)
    {
      swift_once();
    }

    v13 = sub_10000A5D4(&qword_10094C390);
    sub_10000A61C(v13, qword_10099EBC8);
    v24 = a1;
    sub_10075FDCC();
    v14 = sub_10076D3DC();
    v15 = *(*(v14 - 8) + 56);
    v15(v6, 0, 1, v14);
    sub_1007625DC();
    if (qword_100940040 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v13, qword_10099EBF8);
    v24 = a1;
    sub_10075FDCC();
    v15(v6, 0, 1, v14);
    sub_1007625DC();
  }

  if (qword_100940040 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A5D4(&qword_10094C390);
  sub_10000A61C(v16, qword_10099EBF8);
  v24 = a1;
  sub_10075FDCC();
  v17 = sub_10076D3DC();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 0, 1, v17);
  sub_1007625DC();
  if (qword_100940058 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v16, qword_10099EC40);
  v24 = a1;
  sub_10075FDCC();
  v18(v6, 0, 1, v17);
  sub_1007625DC();
  v19 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v20 = *(a2 + v19);
  if (v20)
  {
    v21 = qword_100940050;
    v22 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v16, qword_10099EC28);
    v23 = a1;
    sub_10075FDCC();
    v18(v6, 0, 1, v17);
    sub_1007625DC();
  }
}

void sub_10030B244(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel);
  if (*(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_100940168 != -1)
    {
      swift_once();
    }

    v5 = sub_10000A5D4(&unk_10094C370);
    v6 = qword_10099EFB0;
  }

  else
  {
    if (qword_100940160 != -1)
    {
      swift_once();
    }

    v5 = sub_10000A5D4(&unk_10094C370);
    v6 = qword_10099EF98;
  }

  sub_10000A61C(v5, v6);
  sub_10075FDCC();
  [v4 setNumberOfLines:v18];
  v7 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel);
  if (qword_100940190 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A5D4(&unk_10094C370);
  sub_10000A61C(v8, qword_10099F028);
  sub_10075FDCC();
  [v7 setNumberOfLines:v18];
  v9 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel);
  if (qword_100940170 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v8, qword_10099EFC8);
  sub_10075FDCC();
  [v9 setNumberOfLines:v18];
  v10 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
  sub_10075FDCC();
  [v10 setNumberOfLines:v18];
  v11 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if (v12)
  {
    v13 = qword_100940178;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v8, qword_10099EFE0);
    sub_10075FDCC();
    [v14 setNumberOfLines:a1];
  }

  v15 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (v15)
  {
    v16 = qword_100940158;
    v17 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v8, qword_10099EF80);
    sub_10075FDCC();
    [v17 setNumberOfLines:a1];
  }
}

uint64_t sub_10030B5E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10030B62C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10030B644()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:0.0];

  return [v1 setAlpha:1.0];
}

uint64_t sub_10030B690()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10030B6DC(uint64_t a1, uint64_t a2, int a3, void *a4, char *a5)
{
  LODWORD(v7) = a3;
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v41 = a4;
    v14 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel;
    v15 = *&a5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
    if (v15)
    {
      goto LABEL_3;
    }

    v39 = a1;
    sub_1007626BC();
    v23 = sub_10076269C();
    v24 = v23;
    v25 = *&a5[v14];
    *&a5[v14] = v23;
    if (v23)
    {
      v40 = v7;
      if (!v25)
      {
        v29 = v23;
        v30 = v24;
        if (v24)
        {
LABEL_22:
          v31 = v30;
          v32 = [a5 contentView];
          [v32 addSubview:v31];

          sub_100301614();
          goto LABEL_23;
        }

LABEL_19:

LABEL_23:
        v7 = v25;
        goto LABEL_24;
      }

      v38 = v11;
      v26 = v23;
      v7 = v25;
      v37 = v26;
      v27 = sub_100770EEC();

      if (v27)
      {

        v11 = v38;
LABEL_24:

        v24 = *&a5[v14];
        LOBYTE(v7) = v40;
        goto LABEL_25;
      }

      v11 = v38;
    }

    else
    {
      if (!v25)
      {
LABEL_25:
        if (!v24 || (memset(v43, 0, sizeof(v43)), memset(v42, 0, sizeof(v42)), v33 = v24, sub_10076F95C(), sub_10000CFBC(v42, &unk_1009434C0), sub_10000CFBC(v43, &unk_1009434C0), sub_100770B9C(), v33, (*(v11 + 8))(v13, v10), (v34 = *&a5[v14]) == 0) || ([v34 setHidden:v7 & 1], (v15 = *&a5[v14]) == 0))
        {
LABEL_28:
          [a5 setNeedsLayout];
          goto LABEL_29;
        }

LABEL_3:
        v16 = v15;
        v17 = sub_10076FF6C();
        [v16 setText:v17];

        v18 = *&a5[v14];
        if (v18)
        {
          v19 = a5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer];
          v20 = v18;
          v21 = [v41 traitCollection];
          if ((a5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber] & 1) != 0 || (v19 & 1) != 0 && (sub_1007706FC() & 1) == 0)
          {

            v22 = 1;
          }

          else
          {
            v28 = sub_10077070C();

            if (v28)
            {
              v22 = 2;
            }

            else
            {
              v22 = 0;
            }
          }

          [v20 setTextAlignment:v22];
        }

        goto LABEL_28;
      }

      v40 = v7;
      v7 = v25;
    }

    [v7 removeFromSuperview];
    v30 = *&a5[v14];
    if (v30)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_29:
  v35 = a5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible];
  a5[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] = v7 & 1;
  sub_10030244C(v35);
}

void sub_10030BA80()
{
  v1 = v0;
  v2 = sub_100760B4C();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10076D9AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v12 - 8);
  v45 = &v44 - v13;
  v14 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance) = 0;
  v16 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupContentBackgroundView;
  v17 = [objc_allocWithZone(UIView) init];
  v18 = [objc_opt_self() systemBackgroundColor];
  [v17 setBackgroundColor:v18];

  *(v1 + v16) = v17;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_uberView) = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_titleLabel;
  sub_1007626BC();
  *(v1 + v19) = sub_10076269C();
  v20 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerLabelPresenter);
  *v21 = 0u;
  v21[1] = 0u;
  v22 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel;
  *(v1 + v22) = sub_10076269C();
  v23 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel;
  *(v1 + v23) = sub_10076269C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  v44 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_wordmarkView;
  v24 = sub_10076C43C();
  (*(*(v24 - 8) + 56))(v45, 1, 1, v24);
  *v7 = UIFontTextStyleFootnote;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v50 = v4;
  v51 = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v49);
  (*(v5 + 16))(v25, v7, v4);
  v26 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  (*(v5 + 8))(v7, v4);
  (*(v47 + 104))(v46, enum case for WordmarkView.Alignment.center(_:), v48);
  v50 = v8;
  v51 = &protocol witness table for StaticDimension;
  v27 = sub_10000DB7C(v49);
  (*(v9 + 16))(v27, v11, v8);
  v28 = objc_allocWithZone(sub_100760B6C());
  v29 = sub_100760B3C();
  (*(v9 + 8))(v11, v8);
  *(v1 + v44) = v29;
  v30 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton;
  v31 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v30) = sub_1001E89B8(0);
  v32 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel;
  *(v1 + v32) = sub_10076269C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_disclosureArrow) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_bannerViewHeight) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight) = 0;
  v33 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainer;
  *(v1 + v33) = [objc_allocWithZone(UIView) init];
  v34 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurEffect;
  *(v1 + v34) = [objc_opt_self() effectWithStyle:7];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_keylineView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_shadowView) = 0;
  v35 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconSize);
  *v35 = 0;
  v35[1] = 0;
  v36 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView;
  sub_10075FD2C();
  *(v1 + v36) = sub_10075FB3C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasExpandedOffer) = 0;
  v37 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleText);
  *v38 = 0;
  v38[1] = 0;
  v39 = OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_theme;
  v40 = enum case for ProductPageTheme.infer(_:);
  v41 = sub_100762A7C();
  (*(*(v41 - 8) + 104))(v1 + v39, v40, v41);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible) = 0;
  sub_10076486C();
  v42 = v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_networkObservation;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0;
  v43 = (v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerTapHandler);
  *v43 = 0;
  v43[1] = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) = 1;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount) = 0;
  sub_10077156C();
  __break(1u);
}

double sub_10030C210(void *a1, void *a2, double a3)
{
  v6 = sub_10077164C();
  v90 = *(v6 - 8);
  __chkstk_darwin(v6);
  v89 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64));
  v9 = *v8;
  v10 = a3 - v8[1] - v8[3];
  v85 = v8[2];
  v86 = v9;
  v11 = a3 - v9 - v85;
  v12 = [a1 traitCollection];
  v13 = sub_1007706FC();

  sub_100016E2C((a2 + 30), v100, &unk_10094DA00);
  if (v101)
  {
    sub_10000CF78(v100, v101);
    sub_10076D2BC();
    v15 = v14;
    sub_10000CD74(v100);
  }

  else
  {
    sub_10000CFBC(v100, &unk_10094DA00);
    v15 = 0.0;
  }

  sub_100016E2C((a2 + 30), v100, &unk_10094DA00);
  v16 = v101;
  sub_10000CFBC(v100, &unk_10094DA00);
  v91 = a2;
  v87 = v6;
  if (v16)
  {
    v17 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000CF78((v8 + *(v17 + 48)), *(v8 + *(v17 + 48) + 24));
    v18 = v89;
    sub_1000FF02C();
    sub_10076D40C();
    v20 = v19;
    (*(v90 + 8))(v18, v6);
    if (v13)
    {
LABEL_6:
      v21 = v8;
      v22 = v10 - v15 - v20;
      goto LABEL_9;
    }
  }

  else
  {
    v20 = 0.0;
    if (v13)
    {
      goto LABEL_6;
    }
  }

  v21 = v8;
  v22 = v10;
LABEL_9:
  v88 = v22;
  v23 = v91;
  sub_10000CF78(v91 + 5, v91[8]);
  sub_10076D2AC();
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v98 = a1;
  sub_10000A5D4(&unk_100945BD0);
  sub_10075FDCC();
  *&v98 = v100[0];
  v83 = v25;
  v81 = v27;
  sub_10076D42C();
  v80 = v29;
  sub_10000CF78(v23 + 5, v23[8]);
  sub_10076D6EC();
  v79 = v30;
  v31 = v23[13];
  v78[0] = (v23 + 10);
  sub_10000CF78(v23 + 10, v31);
  sub_10076D2AC();
  v33 = v32;
  v35 = v34;
  v36 = *(v28 + 36);
  v37 = v28;
  *&v98 = a1;
  v38 = v21;
  v78[1] = v36;
  sub_10075FDCC();
  *&v98 = v100[0];
  sub_10076D42C();
  v39 = v11;
  v41 = v33 - v35 + v40;
  v42 = (v23 + 15);
  sub_10000CF78(v23 + 15, v23[18]);
  v84 = v39;
  sub_10076D2AC();
  v44 = v43;
  v46 = v45;
  v82 = v37;
  *&v98 = a1;
  sub_10075FDCC();
  *&v98 = v100[0];
  sub_10076D42C();
  v48 = v44 - v46 + v47;
  if (v48 >= v41)
  {
    sub_10000A570(v42, &v98);
    v42 = v78[0];
  }

  else
  {
    sub_10000A570(v78[0], &v98);
  }

  sub_10000A570(v42, &v96);
  v95[0] = a1;
  sub_10075FDCC();
  v49 = v100[0];
  v95[0] = a1;
  sub_10075FDCC();
  v50 = v100[0];
  if (v48 >= v41)
  {
    v51 = v100[0];
  }

  else
  {
    v51 = v49;
  }

  v95[3] = &type metadata for CGFloat;
  v95[4] = &protocol witness table for CGFloat;
  v95[0] = v51;
  if (v48 >= v41)
  {
    v50 = v49;
  }

  v93 = &type metadata for CGFloat;
  v94 = &protocol witness table for CGFloat;
  *&v92 = v50;
  sub_100012498(&v98, v100);
  sub_10000A570(v95, v102);
  sub_100012498(&v96, &v103);
  sub_100012498(&v92, &v104);
  sub_10000CD74(v95);
  sub_10000CF78(v100, v101);
  sub_10076D2AC();
  v53 = v52;
  v55 = v54;
  sub_10000CF78(v102, v102[3]);
  sub_10076D42C();
  v57 = v56;
  v58 = v91;
  sub_100016E2C((v91 + 20), &v96, &qword_10094BB30);
  v59 = v87;
  if (v97)
  {
    sub_100012498(&v96, &v98);
    sub_10000CF78(&v98, v99);
    sub_10076D2AC();
    v61 = v60;
    v63 = v62;
    v64 = v82;
    v95[0] = a1;
    sub_10075FDCC();
    v95[0] = v96;
    sub_10076D42C();
    v66 = v61 - v63 + v65;
    sub_10000CD74(&v98);
    v67 = v90;
  }

  else
  {
    sub_10000CFBC(&v96, &qword_10094BB30);
    v66 = 0.0;
    v67 = v90;
    v64 = v82;
  }

  v68 = v66 + v53 - v55 + v57 + v83 - v81 + v80 + v79 + v21[15];
  sub_10000CF78((v21 + *(v64 + 52)), *(v21 + *(v64 + 52) + 24));
  v69 = v89;
  sub_1000FF02C();
  sub_10076D40C();
  v71 = v70;
  v72 = *(v67 + 8);
  v72(v69, v59);
  v73 = v68 + v71 + sub_1003089E8(a1, v58);
  sub_10000CF78(v38 + 4, *(v38 + 7));
  sub_1000FF02C();
  sub_10076D40C();
  v75 = v74;
  v72(v69, v59);
  v76 = v85 + v86 + v73 + v75;
  sub_10000CFBC(v100, &unk_1009522A0);
  return v76;
}

id sub_10030CA7C()
{
  v1 = sub_10076F08C();
  __chkstk_darwin(v1);
  v2 = sub_10076F0EC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_developerLabel);
  result = [v7 isHidden];
  if (result)
  {
    if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_hasInlineUber) & 1) == 0)
    {
      sub_100016F40(0, &qword_1009471F0);
      v9 = sub_10077068C();
      sub_10076F0DC();
      v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_taglineLabel);
      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      *(v11 + 24) = v10;
      aBlock[4] = sub_10030D6DC;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_100890F80;
      _Block_copy(aBlock);
      v14[1] = _swiftEmptyArrayStorage;
      sub_10030D5FC(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
      v12 = v7;
      v13 = v10;
      sub_10000A5D4(&unk_10094E1C0);
      sub_1000852B8();
      sub_1007712CC();
      sub_10076F12C();
      swift_allocObject();
      sub_10076F10C();

      sub_10077065C();

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

void sub_10030CD58(char a1, void *a2, char a3, char a4, uint64_t a5)
{
  v6 = v5;
  v53 = a2;
  v11 = sub_10075EBAC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v51[-v16];
  v18 = sub_10076B96C();
  v19 = (*(*(v18 - 8) + 48))(a5, 1, v18);
  v54 = v11;
  v55 = v17;
  if (v19 == 1 || !*&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_appStateMachine])
  {
    (*(v12 + 104))(v17, enum case for LegacyAppState.unknown(_:), v11);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = v54;
    v17 = v55;
    sub_10075ED1C();
    swift_unknownObjectRelease();
  }

  v20 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerButton];
  [*&v20[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_imageView] setContentMode:1];
  if (a4)
  {
    v21 = v20;
  }

  else
  {
    v20 = 0;
  }

  v22 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v22 && v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] == 1)
  {
    goto LABEL_16;
  }

  (*(v12 + 16))(v14, v17, v11);
  v22 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v23 = [v22 text];
  if (v23)
  {
    v24 = v23;
    sub_10076FF9C();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_10075EB9C();
  (*(v12 + 8))(v14, v11);
  if (v27)
  {
    if (v26)
    {

LABEL_16:
      v28 = v22;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v22 = 0;
LABEL_19:
  sub_10000A5D4(&unk_100952248);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100783C60;
  v30 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_iconView];
  *(v29 + 32) = v30;
  *(v29 + 40) = v20;
  *(v29 + 48) = v22;
  v31 = v30;
  v32 = v31;
  if (a3)
  {
    v33 = a1 & 1;
    if (a1)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = 1.0;
    }

    [v31 setAlpha:v34];
    [v32 setHidden:a1 & 1];

    v35 = *(v29 + 40);
    [v35 setAlpha:v34];
    [v35 setHidden:v33];

    v36 = *(v29 + 48);
    [v36 setAlpha:v34];
    [v36 setHidden:v33];

    [v6 setNeedsLayout];
LABEL_31:

    (*(v12 + 8))(v55, v54);
    return;
  }

  v37 = 0.0;
  if (a1)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  [v31 setAlpha:v38];
  [v32 setHidden:0];

  v39 = *(v29 + 40);
  [v39 setAlpha:v38];
  [v39 setHidden:0];

  v40 = *(v29 + 48);
  [v40 setAlpha:v38];
  [v40 setHidden:0];

  v41 = *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (!v42)
  {
    v52 = a1 & 1;
    if ((a1 & 1) == 0)
    {
      v37 = 1.0;
    }

    v44 = *&v53;
    *&v6[OBJC_IVAR____TtC20ProductPageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v43;
    v53 = objc_opt_self();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = v37;
    *(v46 + 24) = v29;
    *(v46 + 32) = v45;
    v60 = sub_10030D41C;
    v61 = v46;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_10009AEDC;
    v59 = &unk_100890E40;
    v47 = _Block_copy(&aBlock);

    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v52;
    *(v49 + 32) = v29;
    v60 = sub_10030D468;
    v61 = v49;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_1000513F0;
    v59 = &unk_100890E90;
    v50 = _Block_copy(&aBlock);

    [v53 animateWithDuration:4 delay:v47 options:v50 animations:v44 completion:0.0];
    _Block_release(v50);
    _Block_release(v47);
    goto LABEL_31;
  }

  __break(1u);
}

uint64_t sub_10030D3A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10030D3DC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10030D428()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10030D484()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10030D4CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10030D534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10030D59C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10030D5FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030D64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009522C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030D704()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v5 = v4(ObjectType, v2);
    [v5 removeFromSuperview];
    swift_unknownObjectRelease();
  }

  if (swift_weakLoadStrong())
  {
    v6 = v1[1];
    v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind);
    v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind + 8);
    v9 = swift_unknownObjectRetain();
    sub_1006BD2F4(v9, v6, v7, v8);

    swift_unknownObjectRelease();
  }

  v10 = v0 + OBJC_IVAR____TtC20ProductPageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind;
  *v10 = 0;
  *(v10 + 8) = 1;
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectRelease();

  return swift_weakAssign();
}

uint64_t sub_10030D844()
{
  v1 = &v0[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay];
  swift_unknownObjectRetain();
  sub_1005B9F80();
  [v0 setNeedsLayout];
  swift_unknownObjectRelease();
  if (swift_weakLoadStrong())
  {
    v2 = *(v1 + 1);
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind];
    v4 = v0[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind + 8];
    v5 = swift_unknownObjectRetain();
    sub_1006BD2F4(v5, v2, v3, v4);

    swift_unknownObjectRelease();
  }

  v6 = &v0[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind];
  *v6 = 0;
  v6[8] = 1;
  *v1 = 0;
  *(v1 + 1) = 0;
  swift_unknownObjectRelease();

  return swift_weakAssign();
}

char *sub_10030D954(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView;
  v46[0] = sub_1002091B8;
  v46[1] = 0;
  v46[2] = sub_1007333BC;
  v46[3] = 0;
  v46[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v46[5] = 0;
  v46[6] = sub_1002091B8;
  v46[7] = 0;
  v46[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v46[9] = 0;
  v46[10] = sub_100342B64;
  v46[11] = 0;
  v47 = 0x4000000000000000uLL;
  v48 = 0;
  v49 = 0x4018000000000000;
  v50 = 0;
  v51 = 1;
  v12 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *&v4[v11] = sub_1001ED0D8(v46, &v47);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey] = 0;
  v13 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView;
  v14 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *&v4[v13] = sub_1000E4B54(&off_100882C28);
  v15 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer;
  type metadata accessor for InfoLayerOverlayContainerView();
  *&v5[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode] = 0;
  v16 = &v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock];
  *v16 = 0;
  v16[1] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory] = 7;
  v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_originalSizeCategory] = 7;
  v17 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
  v18 = sub_10076C38C();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isTransitioning] = 0;
  v19 = &v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayKind];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay];
  *v20 = 0;
  v20[1] = 0;
  swift_weakInit();
  v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isExpanded] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType] = 0;
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView;
  v23 = *&v21[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
  v24 = v21;
  v25 = v23;
  [v25 _setContinuousCornerRadius:20.0];
  v26 = [v25 layer];
  [v26 setMaskedCorners:12];

  [*&v25[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView] _setCornerRadius:1 continuous:12 maskedCorners:20.0];
  v27 = *&v24[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType];
  if (v27)
  {
    v28 = *&v21[v22];
    v29 = *&v28[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType];
    *&v28[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType] = v27;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    v32 = v24[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory];
    v31 = *&v21[v22];
    if (v32 == 6 && (v33 = [v24 traitCollection], v34 = sub_10077071C(), v33, (v34 & 1) == 0))
    {
      v35 = &kCAGradientLayerRadial;
    }

    else
    {
      v35 = &kCAGradientLayerAxial;
    }

    v36 = *v35;
    v29 = *&v31[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType];
    *&v31[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType] = v36;
    v30 = v36;
  }

  sub_1000E50CC();
  [v24 addSubview:*&v21[v22]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer]];
  sub_10000A5D4(&unk_100945BF0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100783DD0;
  *(v37 + 32) = sub_10076E3EC();
  *(v37 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100783DD0;
  *(v38 + 32) = sub_10076E88C();
  *(v38 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v39 = [v24 traitCollection];
  LOBYTE(v38) = sub_10077070C();

  v40 = *&v21[v22];
  v41 = 0.13962634;
  if (v38)
  {
    v41 = -0.13962634;
  }

  v42 = *(v40 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle);
  *(v40 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle) = v41;
  if (v41 != v42)
  {
    sub_1000E53E0();
  }

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100783DD0;
  *(v43 + 32) = sub_10076E3FC();
  *(v43 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v24;
}

void sub_10030DF18()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "_continuousCornerRadius");
  v5 = v4;
  [v3 _setContinuousCornerRadius:?];
  v6 = [v3 layer];
  [v6 setMaskedCorners:12];

  [*&v3[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView] _setCornerRadius:1 continuous:12 maskedCorners:v5];
  v7 = &v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay];
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay])
  {
    v8 = *(v7 + 1);
    v9 = swift_getObjectType();
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    v11 = v10(v9, v8);
    swift_unknownObjectRelease();
    v20.receiver = v1;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, "_continuousCornerRadius");
    [v11 _setContinuousCornerRadius:?];

    if (*v7)
    {
      v12 = *(v7 + 1);
      v13 = swift_getObjectType();
      v14 = *(v12 + 16);
      swift_unknownObjectRetain();
      v15 = v14(v13, v12);
      swift_unknownObjectRelease();
      v16 = [v15 layer];

      if (v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory] == 6)
      {
        v17 = [v1 traitCollection];
        v18 = sub_10077071C();

        if (v18)
        {
          v19 = 12;
        }

        else
        {
          v19 = 15;
        }
      }

      else
      {
        v19 = 12;
      }

      [v16 setMaskedCorners:v19];
    }
  }
}

id sub_10030E194(id result)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode;
  v3 = v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode];
  v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionMode] = result;
  if (v3 != result)
  {
    v4 = result != 1;
    if (result == 4)
    {
      v4 = 0;
    }

    v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
    v5[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_includeTopGradientFade] = v4;
    if (result == 1 || result == 4)
    {
      [*&v5[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView] removeFromSuperview];
    }

    else
    {
      [v5 insertSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientMaskView] aboveSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView]];
    }

    [v5 setHidden:v1[v2] == 4];

    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_10030E29C(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_originalSizeCategory) = result;
  if (result != 7)
  {
    *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer) + OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_originalSizeCategory) = result;
    v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView);
    *(v2 + qword_10094D6B0) = result;
    *(*(v2 + qword_10094D6B8) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = result;
    *(*(v2 + qword_10094D6C0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = result;
    *(*(v2 + qword_10094D6D0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = result;
  }

  return result;
}

void sub_10030E334()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer);
  v2 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isTransitioning;
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_isTransitioning);
  v4 = OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning;
  v1[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning] = v3 & 1;
  [v1 setHidden:(v1[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] == 4) & (v3 ^ 1u)];
  v1[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isLayoutRequired] = (v1[v4] & 1) == 0;
  [v1 setNeedsLayout];
  *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView) + qword_10094D6F0) = *(v0 + v2);
  sub_1001EE26C();
}

id sub_10030E4AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v167 = a4;
  v9 = a2;
  ObjectType = swift_getObjectType();
  v156 = sub_100766EBC();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v164 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076C7EC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v166 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v168 = &v136 - v15;
  __chkstk_darwin(v16);
  v160 = &v136 - v17;
  v18 = sub_10000A5D4(&qword_10094D760);
  __chkstk_darwin(v18 - 8);
  v161 = &v136 - v19;
  v20 = sub_10000A5D4(&unk_1009434A0);
  *&v21 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v23 = &v136 - v22;
  v159 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory;
  v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory] = a2;
  v24 = *&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlayContainer];
  v24[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] = a2;
  v25 = a2;
  if (v9 == 4)
  {
    v26 = v24[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
  }

  else
  {
    v26 = 0;
  }

  [v24 setHidden:{v26 & 1, v21}];
  v27 = *&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView];
  v27[qword_10094D6A8] = v25;
  sub_1001EDB98();
  v28 = sub_10076C38C();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v23, a3, v28);
  (*(v29 + 56))(v23, 0, 1, v28);
  v30 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_10003BD64(v23, &v5[v30]);
  swift_endAccess();
  v31 = a1;
  v32 = sub_10076C6FC();
  if (v32)
  {
    v33 = a1;
    v34 = v167;
    sub_10030FB2C(v32, v33, v25, a3, v167);

    v35 = a3;
    LODWORD(v36) = v25;
    goto LABEL_73;
  }

  v165 = v25;
  v157 = v27;
  v147 = a3;
  sub_10076C7FC();
  v37 = sub_100761BCC();

  v153 = v37;
  v149 = v11;
  v148 = v12;
  if (v37)
  {
    v38 = sub_1002091B8;
    if (v165 == 4)
    {
      v38 = sub_1000082CC;
    }

    v143 = v38;
    v144 = sub_1007333BC;
    v39 = sub_1002091B8;
    if (v165 == 4)
    {
      v39 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    }

    v145 = v39;
  }

  else if (v165 == 4)
  {
    v143 = sub_1000082CC;
    v144 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v145 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v145 = sub_1002091B8;
    v144 = sub_1007333BC;
    v143 = sub_1002091B8;
  }

  v40 = sub_10076C82C();
  v152 = v41;
  v142 = sub_10076C81C();
  v158 = v42;
  v139 = sub_10076C6EC();
  v150 = v43;
  v44 = v161;
  sub_10076C75C();
  v45 = sub_10076637C();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = sub_10076C73C();
  v154 = v47;
  sub_10076C80C();
  sub_10076C77C();
  v48 = sub_10076C83C();
  v146 = v31;
  v141 = v46;
  if (!v48)
  {
    goto LABEL_22;
  }

  sub_100766D7C();
  if (!swift_dynamicCastClass())
  {
    sub_10076A0CC();
    if (swift_dynamicCastClass())
    {
      sub_10076A0AC();
      goto LABEL_20;
    }

LABEL_22:
    v140 = 0;
    v151 = 0;
    goto LABEL_23;
  }

  sub_100766D6C();
LABEL_20:
  v140 = sub_10076BB6C();
  v151 = v49;

LABEL_23:
  v50 = v165;
  v51 = v157;
  v157[qword_10094D6D8] = v153 & 1;
  v52 = *&v51[qword_10094D6C0];
  *(v52 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v53 = *&v51[qword_10094D6B8];
  sub_1001E44C4(v40, v152);
  v54 = sub_100766EAC();
  v55 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v56 = *&v53[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v50 != 4 || (v54 & 1) != 0)
  {
    v57 = [v56 text];
    if (v57)
    {
      v58 = v57;
      sub_10076FF9C();
    }

    v59 = v157;
    v60 = sub_10077002C();
    v61 = v60 & 1;

    if (v61 == [*&v53[v55] isHidden] || (v53[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v53[v55] setHidden:v61];
    }

    else
    {
      if ((v60 & 1) == 0)
      {
        [*&v53[v55] setAlpha:0.0];
        v62 = objc_opt_self();
        [v62 inheritedAnimationDuration];
        v64 = v63;
        v65 = swift_allocObject();
        *(v65 + 16) = v53;
        v173 = sub_100138CF0;
        v174 = v65;
        aBlock = _NSConcreteStackBlock;
        v170 = 1107296256;
        v138 = v60;
        v171 = sub_10009AEDC;
        v172 = &unk_1008911E8;
        v137 = _Block_copy(&aBlock);
        v66 = v53;

        v67 = swift_allocObject();
        *(v67 + 16) = v66;
        v173 = sub_100138CFC;
        v174 = v67;
        v59 = v157;
        aBlock = _NSConcreteStackBlock;
        v170 = 1107296256;
        v171 = sub_1000513F0;
        v172 = &unk_100891238;
        v68 = _Block_copy(&aBlock);
        v69 = v66;
        LOBYTE(v60) = v138;

        v70 = v62;
        v71 = v137;
        [v70 animateWithDuration:0 delay:v137 options:v68 animations:v64 completion:0.0];
        _Block_release(v68);
        _Block_release(v71);
      }

      [*&v53[v55] setHidden:v60 & 1];
      v53[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v53 setNeedsLayout];
    }
  }

  else
  {
    if (([v56 isHidden] & 1) != 0 || (v53[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v53[v55] setHidden:1];
    }

    else
    {
      [*&v53[v55] setHidden:1];
      v53[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v53 setNeedsLayout];
    }

    v59 = v157;
  }

  v72 = &v59[qword_10094D6E0];
  *v72 = v143;
  v72[1] = 0;
  v72[2] = v144;
  v72[3] = 0;
  v72[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v72[5] = 0;
  v72[6] = v145;
  v72[7] = 0;
  v72[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v72[9] = 0;
  v72[10] = sub_100342B64;
  v72[11] = 0;

  sub_1001EDE3C();
  v73 = v154;
  v74 = v52;
  if (v158)
  {
    if (v153)
    {
      if (v165 != 4)
      {
        sub_1001EF628(v161);
        v75 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
        [*(v52 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setAdjustsFontSizeToFitWidth:1];
        [*(v52 + v75) setMinimumScaleFactor:0.75];
        v76 = objc_allocWithZone(NSAttributedString);
        v77 = sub_10076FF6C();
        type metadata accessor for Key(0);
        sub_10031296C(&qword_100943320, type metadata accessor for Key);
        isa = sub_10076FE3C().super.isa;

        v79 = [v76 initWithString:v77 attributes:isa];

        v74 = v52;
        v80 = *(v52 + v75);
        v59 = v157;
        [v80 setAttributedText:v79];

        goto LABEL_53;
      }
    }

    else if (v165 != 4)
    {
      sub_1001EFB1C();
      goto LABEL_45;
    }

    sub_1001EFAF8();
LABEL_45:
    LODWORD(v145) = v165 != 4;
    v81 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
    v82 = *(v52 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    v83 = objc_allocWithZone(NSAttributedString);
    v84 = v82;
    v85 = sub_10076FF6C();
    type metadata accessor for Key(0);
    sub_10031296C(&qword_100943320, type metadata accessor for Key);
    v86 = sub_10076FE3C().super.isa;
    v74 = v52;

    v87 = [v83 initWithString:v85 attributes:v86];

    [v84 setAttributedText:v87];
    [*(v52 + v81) setAdjustsFontSizeToFitWidth:0];
    [*(v52 + v81) setMinimumScaleFactor:0.0];
    [*(v52 + v81) setAttributedText:0];
    if (v145 & 1 | ((v153 & 1) == 0) || !v151)
    {
      v59 = v157;
      v73 = v154;
      if (v150 && v157[qword_10094D6B0] == 4)
      {
        if (v165 == 4)
        {
          sub_1001E45BC(v142, v158, v139, v150);
        }

        else
        {
          sub_1001E45BC(v139, v150, v142, v158);
        }
      }

      else
      {
        sub_1001E44C4(v142, v158);
      }
    }

    else
    {
      sub_1001E44C4(v140, v151);
      v59 = v157;
      v73 = v154;
    }
  }

LABEL_53:
  v88 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v89 = *(v74 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v90 = [v89 text];
  if (v90 || (v90 = [*(v74 + v88) attributedText]) != 0)
  {

    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  v92 = v165;
  [v89 setHidden:v91];

  [v59 setNeedsLayout];
  v93 = *&v59[qword_10094D6C8];
  [v93 setImage:0];
  [v93 setHidden:1];
  if (v92 != 4 && (sub_100766E8C() & 1) == 0 && v73)
  {
    v98 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v98 = v141 & 0xFFFFFFFFFFFFLL;
    }

    v97 = v98 == 0;
    v94 = *&v59[qword_10094D6D0];
    v95 = &v94[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v96 = *&v94[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    goto LABEL_64;
  }

  v94 = *&v59[qword_10094D6D0];
  v95 = &v94[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  v96 = *&v94[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v73)
  {
    v97 = 1;
LABEL_64:
    v99 = v96;
    v73 = sub_10076FF6C();
    goto LABEL_66;
  }

  v99 = v96;
  v97 = 1;
LABEL_66:
  [v99 setText:v73];

  if (v97 == [*v95 isHidden] || (v94[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v95 setHidden:v97];
  }

  else
  {
    if (!v97)
    {
      [*v95 setAlpha:0.0];
      v100 = objc_opt_self();
      [v100 inheritedAnimationDuration];
      v102 = v101;
      v103 = swift_allocObject();
      *(v103 + 16) = v94;
      v173 = sub_100138AA8;
      v174 = v103;
      aBlock = _NSConcreteStackBlock;
      v170 = 1107296256;
      v171 = sub_10009AEDC;
      v172 = &unk_100891148;
      v104 = _Block_copy(&aBlock);
      v105 = v94;

      v106 = swift_allocObject();
      *(v106 + 16) = v105;
      v173 = sub_100138AC8;
      v174 = v106;
      v59 = v157;
      aBlock = _NSConcreteStackBlock;
      v170 = 1107296256;
      v171 = sub_1000513F0;
      v172 = &unk_100891198;
      v107 = _Block_copy(&aBlock);
      v108 = v105;

      [v100 animateWithDuration:0 delay:v104 options:v107 animations:v102 completion:0.0];
      _Block_release(v107);
      _Block_release(v104);
    }

    [*v95 setHidden:v97];
    v94[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v94 setNeedsLayout];
  }

  v34 = v167;
  v11 = v149;
  v109 = v160;
  sub_1001EE35C(v160, 1);
  [v59 setNeedsLayout];

  (*(v155 + 8))(v164, v156);
  v12 = v148;
  (*(v148 + 8))(v109, v11);
  sub_10000CFBC(v161, &qword_10094D760);
  [v5 setNeedsLayout];
  v35 = v147;
  LODWORD(v36) = v165;
  v31 = v146;
LABEL_73:
  sub_1005D2AD4(v31, v35, v36, v34);
  v110 = v166;
  if (*&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay])
  {
    v111 = v31;
    v112 = v12;
    v113 = v36;
    v36 = v11;
    v114 = *&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_overlay + 8];
    v115 = swift_getObjectType();
    v116 = *(v114 + 16);
    swift_unknownObjectRetain();
    v117 = v116(v115, v114);
    swift_unknownObjectRelease();
    v118 = [v117 layer];

    if (v5[v159] == 6)
    {
      v119 = v5;
      v120 = [v5 traitCollection];
      v121 = sub_10077071C();

      if (v121)
      {
        v122 = 12;
      }

      else
      {
        v122 = 15;
      }
    }

    else
    {
      v119 = v5;
      v122 = 12;
    }

    [v118 setMaskedCorners:v122];

    v11 = v36;
    LOBYTE(v36) = v113;
    v12 = v112;
    v5 = v119;
    v31 = v111;
    v110 = v166;
  }

  v162 = v5;
  sub_10076C80C();
  (*(v12 + 104))(v110, enum case for TodayCard.Style.white(_:), v11);
  sub_10031296C(&qword_100944B98, &type metadata accessor for TodayCard.Style);
  sub_10077018C();
  v123 = v110;
  sub_10077018C();
  if (aBlock == v175 && v170 == v176)
  {
    v124 = v31;
    v125 = 1;
  }

  else
  {
    v124 = v31;
    if (sub_10077167C())
    {
      v125 = 1;
    }

    else
    {
      v125 = 2;
    }
  }

  v126 = *(v12 + 8);
  v126(v123, v11);
  v126(v168, v11);

  v127 = v162;
  [v162 setOverrideUserInterfaceStyle:v125];
  v128 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v129 = swift_allocObject();
  swift_weakInit();
  v130 = swift_allocObject();
  *(v130 + 16) = v128;
  *(v130 + 24) = v129;
  *(v130 + 32) = v124;
  *(v130 + 40) = v36;
  *(v130 + 48) = ObjectType;
  v131 = &v127[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock];
  v132 = *&v127[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_protectionUpdateBlock];
  *v131 = sub_1003128A0;
  v131[1] = v130;

  sub_1000167E0(v132);
  v133 = *v131;
  if (*v131)
  {

    (v133)(v134);

    sub_1000167E0(v133);
  }

  else
  {
  }

  return [v127 setNeedsLayout];
}

uint64_t sub_10030FB2C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v64 = a5;
  v10 = a3;
  v11 = sub_100766EBC();
  v61 = *(v11 - 8);
  v62 = v11;
  __chkstk_darwin(v11);
  v70 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10076C7EC();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v69 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v57 - v16;
  if (v10 == 4)
  {
    v18 = 5;
  }

  else
  {
    v18 = a3;
  }

  v19 = [v6 traitCollection];
  sub_1005DE768(v18, a4, v19);
  sub_1005B1CD8(v18);
  v65 = sub_10076BFCC();

  v20 = [v6 traitCollection];
  sub_1005DE768(a3, a4, v20);
  sub_1005B1CD8(a3);
  v21 = sub_10076BFCC();

  v67 = v6;
  v22 = *&v6[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView];
  v23 = &v22[qword_10094D6A0];
  v24 = *&v22[qword_10094D6A0];
  v25 = *&v22[qword_10094D6A0 + 32];
  v26 = v22[qword_10094D6A0 + 40];
  v63 = v21;
  sub_100764ADC();
  *v23 = v24;
  *(v23 + 1) = v27;
  *(v23 + 2) = v28;
  *(v23 + 3) = 0x402C000000000000;
  *(v23 + 4) = v25;
  v23[40] = v26;
  [v22 setNeedsLayout];
  v29 = qword_10094D6C8;
  v30 = [*&v22[qword_10094D6C8] image];
  v68 = sub_10076C73C();
  v32 = v31;
  v58 = v17;
  sub_10076C80C();
  v66 = a2;
  sub_10076C77C();
  v33 = qword_10094D6B8;
  [*(*&v22[qword_10094D6B8] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setText:0];
  v34 = qword_10094D6C0;
  [*(*&v22[qword_10094D6C0] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setText:0];
  v35 = *&v22[v29];
  v57 = v30;
  [v35 setImage:v30];
  v36 = qword_10094D6D0;
  v37 = *(*&v22[qword_10094D6D0] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v38 = v37;
  if (v32)
  {
    v39 = sub_10076FF6C();
  }

  else
  {
    v39 = 0;
  }

  [v37 setText:v39];

  [*(*&v22[v33] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setHidden:1];
  [*(*&v22[v34] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setHidden:1];
  [*&v22[v29] setHidden:0];
  v40 = *(*&v22[v36] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v41 = v70;
  v42 = sub_100766E8C();
  v43 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v43 = v68 & 0xFFFFFFFFFFFFLL;
  }

  v44 = v43 == 0;
  if (v42)
  {
    v44 = 1;
  }

  if (v32)
  {
    v45 = v44;
  }

  else
  {
    v45 = 1;
  }

  [v40 setHidden:v45];

  sub_1001EDE3C();
  v46 = v59;
  v47 = v60;
  (*(v59 + 104))(v69, enum case for TodayCard.Style.white(_:), v60);
  sub_10031296C(&qword_100944B98, &type metadata accessor for TodayCard.Style);
  v48 = v58;
  sub_10077018C();
  sub_10077018C();
  if (v71[0] == v72 && v71[1] == v73)
  {
    v49 = 1;
  }

  else if (sub_10077167C())
  {
    v49 = 1;
  }

  else
  {
    v49 = 2;
  }

  v50 = *(v46 + 8);
  v50(v69, v47);

  [v22 setOverrideUserInterfaceStyle:v49];
  sub_1001EE568();
  [v22 setNeedsLayout];

  (*(v61 + 8))(v41, v62);
  v50(v48, v47);
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v51 = v67;
  v52 = v65;
  *&v67[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey] = v65;

  v72 = v22;
  type metadata accessor for TodayCardLabelsView();
  sub_10031296C(&qword_100952350, type metadata accessor for TodayCardLabelsView);
  v53 = v22;
  sub_10077140C();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v52;
  v55[4] = v66;

  sub_100760B7C();

  sub_10000CFBC(v71, &qword_100943310);

  [v51 setNeedsLayout];
}

void sub_10031028C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      v7 = sub_100312C04(a3, v6);
      sub_10030E194(v7);
      v8 = [v5 traitCollection];
      v9 = sub_100312E6C();
      v11 = v10;

      v12 = OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView;
      v13 = *&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_gradientBlurView];
      sub_1000E59A0(a3, v9, v11);

      v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_preferredGradientType];
      if (v14)
      {
        v15 = *&v5[v12];
        v16 = *&v15[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType];
        *&v15[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType] = v14;
        v17 = v14;
        v18 = v15;
      }

      else
      {
        v19 = v5[OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_sizeCategory];
        v18 = *&v5[v12];
        if (v19 == 6 && (v20 = [v5 traitCollection], v21 = sub_10077071C(), v20, (v21 & 1) == 0))
        {
          v22 = &kCAGradientLayerRadial;
        }

        else
        {
          v22 = &kCAGradientLayerAxial;
        }

        v23 = *v22;
        v16 = *&v18[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType];
        *&v18[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientType] = v23;
        v17 = v23;
      }

      sub_1000E50CC();
      [v5 setNeedsLayout];
    }

    else
    {
    }
  }
}

void sub_100310494(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_100766EBC();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076C7EC();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsArtworkFetchKey);

    if (v19)
    {
      v58 = v19;
      v54 = a6;
      sub_100764B3C();
      sub_10031296C(&qword_100952358, &type metadata accessor for ArtworkLoaderConfig);
      v20 = sub_10076FF1C();

      if (v20)
      {
        if (a4)
        {
          v21 = 0;
        }

        else
        {
          v21 = a1;
        }

        swift_beginAccess();
        v22 = swift_unknownObjectWeakLoadStrong();
        v23 = &off_100911000;
        if (v22)
        {
          v24 = v22;
          v25 = *(v22 + OBJC_IVAR____TtC20ProductPageExtension22TodayCardInfoLayerView_labelsView);

          v26 = sub_10076C73C();
          v28 = v27;
          sub_10076C80C();
          v29 = v28;
          sub_10076C77C();
          v48 = qword_10094D6B8;
          [*(*&v25[qword_10094D6B8] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setText:0];
          v47 = qword_10094D6C0;
          [*(*&v25[qword_10094D6C0] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setText:0];
          v30 = qword_10094D6C8;
          v31 = *&v25[qword_10094D6C8];
          v49 = v21;
          [v31 setImage:v21];
          v32 = qword_10094D6D0;
          v33 = *(*&v25[qword_10094D6D0] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
          v46 = v26;
          v34 = v33;
          if (v29)
          {
            v35 = v29;
            v29 = sub_10076FF6C();
          }

          else
          {
            v35 = 0;
          }

          [v33 setText:{v29, v46}];

          [*(*&v25[v48] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setHidden:1];
          [*(*&v25[v47] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label) setHidden:1];
          [*&v25[v30] setHidden:0];
          v36 = *(*&v25[v32] + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
          v37 = sub_100766E8C();
          v38 = HIBYTE(v35) & 0xF;
          if ((v35 & 0x2000000000000000) == 0)
          {
            v38 = v46 & 0xFFFFFFFFFFFFLL;
          }

          v39 = v38 == 0;
          if (v37)
          {
            v39 = 1;
          }

          v48 = v35;
          if (v35)
          {
            v40 = v39;
          }

          else
          {
            v40 = 1;
          }

          [v36 setHidden:v40];

          sub_1001EDE3C();
          v41 = v50;
          (*(v50 + 104))(v13, enum case for TodayCard.Style.white(_:), v11);
          sub_10031296C(&qword_100944B98, &type metadata accessor for TodayCard.Style);
          sub_10077018C();
          sub_10077018C();
          if (v54 == v56 && v55 == v57)
          {
            v42 = 1;
          }

          else if (sub_10077167C())
          {
            v42 = 1;
          }

          else
          {
            v42 = 2;
          }

          v43 = *(v41 + 8);
          v43(v13, v11);

          [v25 setOverrideUserInterfaceStyle:v42];
          sub_1001EE568();
          v23 = &off_100911000;
          [v25 setNeedsLayout];

          (*(v51 + 8))(v53, v52);
          v43(v16, v11);

          v21 = v49;
        }

        swift_beginAccess();
        v44 = swift_unknownObjectWeakLoadStrong();
        if (v44)
        {
          v45 = v44;
          [v44 v23[194]];
        }
      }
    }
  }
}