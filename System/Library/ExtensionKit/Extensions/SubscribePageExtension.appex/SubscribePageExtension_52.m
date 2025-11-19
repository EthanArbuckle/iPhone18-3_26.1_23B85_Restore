uint64_t sub_1005E3FB8(uint64_t a1)
{
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_1009253E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007A6580;
  *(v6 + 32) = sub_100741784();
  *(v6 + 40) = a1;
  sub_1007416F4();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    sub_100745134();
    swift_unknownObjectRelease();
  }

  return (*(v3 + 8))(v5, v2);
}

void sub_1005E4134(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v35 = a3;
  v8 = *v4;
  v9 = sub_1007417F4();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  __chkstk_darwin(v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100930BC0);
  __chkstk_darwin(v13 - 8);
  v14 = sub_10000C518(&unk_100925370);
  v36 = *(v14 - 8);
  v37 = v14;
  __chkstk_darwin(v14);
  v16 = v32 - v15;
  isa = sub_100741704().super.isa;
  v18 = [a4 cellForItemAtIndexPath:isa];

  if (v18)
  {
    v34 = a4;
    swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = v19;
      v21 = v5[2];
      v22 = *(v8 + 96);
      v32[1] = *(v8 + 80);
      v32[2] = v21;
      v32[0] = v22;
      sub_100745144();
      v33 = *(v39 + 2);
      v33(v12, a1, v38);
      sub_100752ED4();
      v40 = v5[3];

      sub_10000C518(&qword_100925350);
      sub_10017C038();
      sub_100752944();
      ObjectType = swift_getObjectType();
      v24 = (*(v20 + 88))(v41, v16, v35, ObjectType, v20);
      v25 = v24;
      if (v24)
      {
        sub_1007450D4();
        v26 = v34;
        if ((v25 & 2) == 0)
        {
LABEL_5:
          if ((v25 & 4) == 0)
          {
LABEL_7:

            (*(v36 + 8))(v16, v37);
            sub_10000C620(v41);
            return;
          }

LABEL_6:
          sub_10000C518(&unk_1009405F0);
          v27 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1007A5A00;
          v33((v28 + v27), a1, v38);
          v29 = sub_100753294().super.isa;

          [v26 reloadItemsAtIndexPaths:v29];

          v18 = v29;
          goto LABEL_7;
        }
      }

      else
      {
        v26 = v34;
        if ((v24 & 2) == 0)
        {
          goto LABEL_5;
        }
      }

      v31 = sub_100741704().super.isa;
      [v26 deselectItemAtIndexPath:v31 animated:1];

      if ((v25 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    a4 = v34;
  }

  sub_1007450D4();
  v39 = sub_100741704().super.isa;
  [a4 deselectItemAtIndexPath:v39 animated:1];
  v30 = v39;
}

uint64_t sub_1005E45A4(uint64_t a1)
{
  v2 = sub_10074E984();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 != enum case for Shelf.ContentType.artwork(_:) && v7 != enum case for Shelf.ContentType.ribbonBar(_:) && v7 != enum case for Shelf.ContentType.ribbonFlow(_:) && v7 != enum case for Shelf.ContentType.paragraph(_:) && v7 != enum case for Shelf.ContentType.footnote(_:) && v7 != enum case for Shelf.ContentType.titledParagraph(_:) && v7 != enum case for Shelf.ContentType.reviewsContainer(_:) && v7 != enum case for Shelf.ContentType.reviewSummary(_:) && v7 != enum case for Shelf.ContentType.editorialLink(_:) && v7 != enum case for Shelf.ContentType.quote(_:) && v7 != enum case for Shelf.ContentType.framedArtwork(_:) && v7 != enum case for Shelf.ContentType.screenshots(_:) && v7 != enum case for Shelf.ContentType.appShowcase(_:) && v7 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v7 != enum case for Shelf.ContentType.linkableText(_:) && v7 != enum case for Shelf.ContentType.framedVideo(_:) && v7 != enum case for Shelf.ContentType.productDescription(_:) && v7 != enum case for Shelf.ContentType.banner(_:) && v7 != enum case for Shelf.ContentType.roundedButton(_:) && v7 != enum case for Shelf.ContentType.titledButtonStack(_:) && v7 != enum case for Shelf.ContentType.smallStoryCard(_:) && v7 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v7 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v7 != enum case for Shelf.ContentType.upsellBreakout(_:) && v7 != enum case for Shelf.ContentType.smallBreakout(_:) && v7 != enum case for Shelf.ContentType.arcadeFooter(_:) && v7 != enum case for Shelf.ContentType.editorialQuote(_:) && v7 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v7 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v7 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v7 != enum case for Shelf.ContentType.privacyHeader(_:) && v7 != enum case for Shelf.ContentType.privacyFooter(_:) && v7 != enum case for Shelf.ContentType.privacyCategory(_:) && v7 != enum case for Shelf.ContentType.privacyDefinition(_:) && v7 != enum case for Shelf.ContentType.heroCarousel(_:) && v7 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    (*(v3 + 8))(v6, v2);
    if (sub_1007537E4())
    {
      v8 = sub_100753804() ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

uint64_t sub_1005E4998(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_10074E984();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  result = 0;
  if (v12 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v12 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v11, v7);
    swift_getObjectType();
    v15 = [a3 traitCollection];
    v16 = (*(*v3 + 696))(a1, v15);

    if (v16)
    {
      return sub_10034EF90(a2, a3, a1);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1005E4B64(uint64_t a1, void *a2)
{
  v38 = a2;
  v4 = *v2;
  v5 = sub_10074E984();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v36 - v9;
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  v14 = v2[2];
  sub_100741784();
  v15 = *(v4 + 80);
  sub_100745084();
  sub_100741784();
  v39 = v15;
  v40 = v14;
  v16 = sub_100745044();
  (*(v6 + 16))(v10, v13, v5);
  v17 = (*(v6 + 88))(v10, v5);
  if (v17 == enum case for Shelf.ContentType.smallLockup(_:) || v17 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v33 = v17 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v17 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v33 || v17 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_8;
  }

  if (v17 == enum case for Shelf.ContentType.editorialCard(_:) || v17 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_6;
  }

  v19 = 1;
  if (v17 == enum case for Shelf.ContentType.brick(_:) || v17 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.reviews(_:) || v17 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v17 == enum case for Shelf.ContentType.framedVideo(_:) || v17 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v17 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v17 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v17 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v17 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v17 == enum case for Shelf.ContentType.posterLockup(_:) || v17 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_6:
    v19 = v16;
    goto LABEL_9;
  }

  if (v17 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v19 = v16;
    if (v17 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v6 + 8))(v10, v5);
      v19 = 0;
    }
  }

LABEL_9:
  v22 = *(v6 + 8);
  v20 = v6 + 8;
  v21 = v22;
  v22(v13, v5);
  v23 = sub_100741784();
  if (v19)
  {
    v24 = sub_1007450E4();
    result = sub_100741774();
    if (!__OFADD__(result, 1))
    {
      if (v24)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v24 != -1)
        {
          return (result + 1) % v24 == 0;
        }

        goto LABEL_58;
      }

      goto LABEL_54;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v26 = sub_1005E5ABC(v23);
  v36[1] = v20;
  v27 = v26;
  sub_100741784();
  v28 = v37;
  sub_100745084();
  v36[0] = a1;
  sub_100741784();
  v29 = sub_100745094();
  v30 = sub_1005E4998(v28, v29, v38);
  result = v21(v28, v5);
  if (__OFSUB__(v27, 1))
  {
    goto LABEL_53;
  }

  if (!v30)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v27 == 0x8000000000000001 && v30 == -1)
  {
    goto LABEL_59;
  }

  v31 = (v27 - 1) % v30;
  v32 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
    goto LABEL_56;
  }

  result = sub_100741774();
  if (__OFSUB__(v27, v32))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  return result >= v27 - v32;
}

uint64_t sub_1005E5098(uint64_t a1, void *a2)
{
  v14 = a2;
  v2 = sub_10074E984();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741784();
  v6 = sub_100745094();
  sub_100741784();
  sub_100745084();
  sub_100741784();
  v7 = sub_100745094();
  v8 = sub_1005E4998(v5, v7, v14);
  result = (*(v3 + 8))(v5, v2);
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 == 0x8000000000000001 && v8 == -1)
  {
    goto LABEL_14;
  }

  v11 = (v6 - 1) % v8;
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    result = sub_100741774();
    if (!__OFSUB__(v6, v12))
    {
      return result >= v6 - v12;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1005E5268()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_1005E52C0()
{
  sub_1005E5268();

  return swift_deallocClassInstance();
}

double sub_1005E530C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v22 = a1;
  v21[0] = sub_1007504F4();
  v4 = *(v21[0] - 8);
  __chkstk_darwin(v21[0]);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100750B04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for TitleHeaderView.TextConfiguration(0) + 24);
  v16 = sub_100750534();
  (*(*(v16 - 8) + 16))(v10, a2 + v15, v16);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v23[3] = v7;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_10000D134(v23);
  (*(v8 + 16))(v17, v10, v7);
  sub_100750B14();
  (*(v8 + 8))(v10, v7);
  sub_100750AF4();
  if (v22)
  {
    sub_10074F2A4();
    sub_100750504();
    sub_100750474();
    v19 = v18;
    (*(v4 + 8))(v6, v21[0]);
  }

  else
  {
    v19 = 0.0;
  }

  (*(v12 + 8))(v14, v11);
  return v19;
}

void sub_1005E561C()
{
  sub_100752AE4();
  if (*(v0 + 112))
  {

    sub_100749574();
  }
}

uint64_t sub_1005E5678(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_10092AB88);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_1007416B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v24 = a1;
  sub_100016B4C(a1, v9, &qword_10092AB88);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_10000C8CC(v9, &qword_10092AB88);
    if (v2[14])
    {

      sub_100749574();
    }

    swift_beginAccess();
    v2[7] = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = (*(v11 + 32))(v15, v9, v10);
    v21[1] = v21;
    v26 = v2[3];
    __chkstk_darwin(v17);
    v22 = v16;
    v21[-2] = v15;
    v21[-1] = v2;

    sub_10000C518(&qword_100925350);
    v21[0] = 0;
    sub_10017C038();
    v16 = v22;
    sub_100752474();

    (*(v11 + 8))(v15, v10);
  }

  sub_1005D9CD0();
  sub_100016B4C(v24, v6, &qword_10092AB88);
  if (v16(v6, 1, v10) == 1)
  {
    return sub_10000C8CC(v6, &qword_10092AB88);
  }

  v19 = v23;
  v20 = (*(v11 + 32))(v23, v6, v10);
  v25 = v2[3];
  __chkstk_darwin(v20);
  v21[-2] = v19;
  v21[-1] = v2;

  sub_10000C518(&qword_100925350);
  sub_10017C038();
  sub_100752474();

  return (*(v11 + 8))(v19, v10);
}

uint64_t sub_1005E5ABC(uint64_t a1)
{
  if (sub_1007450A4() <= a1 || (sub_100745054() & 1) != 0)
  {
    return 0;
  }

  v2 = sub_100745094();
  if (sub_1005DABF0())
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1005E5B78(uint64_t a1, void *a2)
{
  v44 = a2;
  v3 = sub_10074E984();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v33[-v7];
  __chkstk_darwin(v9);
  v40 = &v33[-v10];
  v11 = sub_1007521F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100016C60(0, &qword_100926D00);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  v15 = sub_1007537A4();
  v16 = v14;
  v17 = v8;
  (*(v12 + 8))(v16, v11);
  sub_10016993C(v15, a1);

  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v38 = v4 + 32;
  v39 = v4 + 16;
  v37 = v4 + 88;
  v36 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
  v34 = enum case for Shelf.ContentType.informationRibbon(_:);
  v41 = a1;
  v42 = (v4 + 8);

  v24 = 0;
  v35 = v4;
  while (v21)
  {
LABEL_10:
    v26 = v40;
    v27 = *(v4 + 16);
    v27(v40, *(v41 + 48) + *(v4 + 72) * (__clz(__rbit64(v21)) | (v24 << 6)), v3);
    (*(v4 + 32))(v17, v26, v3);
    v28 = v43;
    v27(v43, v17, v3);
    v29 = (*(v4 + 88))(v28, v3);
    if (v29 == v36)
    {
      type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    }

    else if (v29 == v34)
    {
      type metadata accessor for InformationRibbonCollectionViewCell();
    }

    else
    {
      (*v42)(v43, v3);
      if (!sub_10034E47C())
      {
        goto LABEL_4;
      }
    }

    if (v44)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_10074E964();
      v31 = v17;
      v32 = sub_100753064();

      [v44 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v32];

      v17 = v31;
      v4 = v35;
    }

LABEL_4:
    v21 &= v21 - 1;
    result = (*v42)(v17, v3);
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
    }

    v21 = *(v18 + 8 * v25);
    ++v24;
    if (v21)
    {
      v24 = v25;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

double sub_1005E5F94(void *a1)
{
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v2 = sub_100750B04();
  sub_10000D0FC(v2, qword_1009820C8);
  v3 = [a1 traitCollection];
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A5CF0;
  *(v4 + 32) = v3;
  v5 = v3;
  v6 = sub_100751044();
  sub_100750544();
  v8 = v7;

  return v8;
}

void sub_1005E60B0(void *a1)
{
  [a1 reloadData];

  sub_1005DA0EC(a1);
}

uint64_t sub_1005E60F4(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_100752914();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10000C824(a1, v53);
  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v19 = sub_10074A234();
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
          sub_10000C824(v21, v53);
          sub_10000C888(v53, v53[3]);
          v23 = v48;
          sub_100752F24();
          sub_10000C620(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10000C8CC(v23, &unk_100925380);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10000C888(v44, v44[3]);
            sub_100752F24();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10000C8CC(v10, &unk_100925380);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              sub_1007528F4();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = sub_1007528E4();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_100016B4C(v27, v40, &qword_10093FDE0);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10000C8CC(v31, &qword_10093FDE0);
              }

              else
              {
                sub_1007528D4();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              sub_1007528A4();

              sub_100749544();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10000C8CC(v32, &qword_10093FDE0);
              v35(v34, v37);
            }

            else
            {
              sub_10000C8CC(v27, &qword_10093FDE0);
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

    return sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10000C8CC(v51, &unk_1009253F0);
  }
}

uint64_t sub_1005E674C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005E6784()
{
  v1 = sub_1007417F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1005E6820(uint64_t a1)
{
  sub_1007417F4();

  return sub_1005E3FB8(a1);
}

uint64_t sub_1005E6910()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1005E6974()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005E6A18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005E6A30()
{
  v1 = sub_1007416B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1005E6AF4()
{
  v1 = *(sub_1007416B4() - 8);
  v2 = *(v0 + 16);
  sub_100741674(((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = v3;
  [v2 insertSections:v3];
}

uint64_t sub_1005E6BD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005E6C18(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_100752914();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10000C824(a1, v53);
  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_1009253E8);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100012160(v51, v54);
    sub_10000C888(v54, v54[3]);
    v19 = sub_10074A234();
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
          sub_10000C824(v21, v53);
          sub_10000C888(v53, v53[3]);
          v23 = v48;
          sub_100752F24();
          sub_10000C620(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10000C8CC(v23, &unk_100925380);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10000C888(v44, v44[3]);
            sub_100752F24();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10000C8CC(v10, &unk_100925380);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              sub_1007528F4();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = sub_1007528E4();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_100016B4C(v27, v40, &qword_10093FDE0);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10000C8CC(v31, &qword_10093FDE0);
              }

              else
              {
                sub_1007528D4();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              sub_1007528A4();

              sub_100749564();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10000C8CC(v32, &qword_10093FDE0);
              v35(v34, v37);
            }

            else
            {
              sub_10000C8CC(v27, &qword_10093FDE0);
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

    return sub_10000C620(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10000C8CC(v51, &unk_1009253F0);
  }
}

void sub_1005E720C(void *a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = v2;
  v102 = *v2;
  v6 = sub_10000C518(&qword_10093FDE0);
  __chkstk_darwin(v6 - 8);
  v90 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = v86 - v9;
  v10 = sub_10074E984();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v96 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v98 = v86 - v14;
  v15 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v15 - 8);
  v91 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v97 = v86 - v18;
  __chkstk_darwin(v19);
  v95 = v86 - v20;
  v21 = sub_100752914();
  v99 = *(v21 - 8);
  v100 = v21;
  __chkstk_darwin(v21);
  v89 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v92 = v86 - v24;
  __chkstk_darwin(v25);
  v94 = v86 - v26;
  if (sub_100741794() >= 2)
  {
    v88 = v11;
    v86[3] = v2[2];
    v27 = *(v102 + 96);
    v86[2] = *(v102 + 80);
    v86[1] = v27;
    v28 = sub_1007450F4();
    v29 = sub_100016C60(0, &qword_100925390);
    v107 = v29;
    v106[0] = a1;
    v30 = a1;
    v87 = v28;
    sub_10074A994();
    sub_10000C620(v106);
    swift_getObjectType();
    v31 = swift_conformsToProtocol2();
    v101 = a2;
    if (v31 && v30)
    {
      sub_10074B184();
      sub_100752764();
      v32 = v30;
      v86[0] = v29;
      v33 = v32;
      sub_100752D34();
      v34 = v106[0];
      swift_getObjectType();
      v35 = sub_100748FB4();
      v36 = v33;
      sub_10074B124();
    }

    v105 = v30;
    v37 = v30;
    sub_10000C518(&qword_1009253A8);
    if (swift_dynamicCast())
    {
      sub_100012160(v103, v106);
      sub_10074B184();
      sub_100752764();
      sub_100752D34();
      v38 = *&v103[0];
      sub_10000C888(v106, v107);
      sub_10074B594();

      sub_10000C620(v106);
    }

    else
    {
      v104 = 0;
      memset(v103, 0, sizeof(v103));
      sub_10000C8CC(v103, &unk_1009253B0);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v30)
    {
      sub_100748464();
      v39 = v37;
      sub_100752754();
      v40 = v106[0];
      if (v106[0])
      {
        v41 = v39;
        v42 = v40;
        sub_100748414();

        v39 = v42;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v30)
    {
      swift_getObjectType();
      v43 = v37;
      sub_10074BFF4();
    }

    swift_getObjectType();
    v44 = swift_conformsToProtocol2();
    v45 = v88;
    if (v44 && v30)
    {
      v46 = v44;
      ObjectType = swift_getObjectType();
      v48 = *(v46 + 8);
      v49 = v37;
      v48(ObjectType, v46);
    }

    if (v87)
    {
      swift_getObjectType();
      v50 = swift_conformsToProtocol2();
      if (v50 && v30)
      {
        v51 = v50;
        v52 = swift_getObjectType();
        v53 = *(v51 + 40);
        v54 = v37;
        v53(v52, v51);
      }

      sub_100741784();
      v55 = sub_1005DABF0();
      sub_100741784();
      if (v55)
      {
        sub_100745154();
        v56 = v95;
        sub_10074EAC4();
        v58 = v99;
        v57 = v100;
        if ((*(v99 + 48))(v56, 1, v100) == 1)
        {

          sub_10000C8CC(v56, &unk_100925380);
        }

        else
        {
          v70 = v94;
          (*(v58 + 32))(v94, v56, v57);
          if (v3[14])
          {

            sub_100749564();
          }

          (*(v58 + 8))(v70, v57);
        }

        return;
      }

      v59 = v98;
      sub_100745084();
      sub_100741784();
      v60 = sub_100745044();
      v61 = v96;
      (*(v45 + 16))(v96, v59, v10);
      v62 = (*(v45 + 88))(v61, v10);
      v63 = v97;
      if (v62 == enum case for Shelf.ContentType.smallLockup(_:) || v62 == enum case for Shelf.ContentType.mediumLockup(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.largeLockup(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v62 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v62 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.editorialCard(_:) || v62 == enum case for Shelf.ContentType.videoCard(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.brick(_:) || v62 == enum case for Shelf.ContentType.categoryBrick(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.reviews(_:) || v62 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v62 == enum case for Shelf.ContentType.framedVideo(_:) || v62 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v62 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v62 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v62 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v62 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v62 == enum case for Shelf.ContentType.posterLockup(_:) || v62 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.appPromotion(_:))
      {
LABEL_51:
        if (v60)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v85 = v97;
        (*(v45 + 8))(v61, v10);
        v63 = v85;
      }

      v64 = v63;
      v65 = sub_1007450A4();
      if (sub_100741784() < v65)
      {
        v66 = sub_100741774();
        sub_100741784();
        if (v66 < sub_100745094())
        {
          sub_100745144();
          sub_10000C888(v106, v107);
          sub_100752F24();
          v67 = v64;
          v68 = v99;
          v69 = v100;
          v101 = *(v99 + 48);
          if (v101(v67, 1, v100) == 1)
          {
            (*(v45 + 8))(v59, v10);
            sub_10000C8CC(v67, &unk_100925380);
          }

          else
          {
            (*(v68 + 32))(v92, v67, v69);
            sub_100741784();
            sub_100745154();
            v71 = v91;
            sub_10074EAC4();
            v72 = v3;
            if (v101(v71, 1, v69) == 1)
            {
              sub_10000C8CC(v71, &unk_100925380);
              v73 = 1;
              v74 = v93;
            }

            else
            {
              v75 = v93;
              sub_1007528F4();
              v74 = v75;
              (*(v68 + 8))(v71, v69);
              v73 = 0;
            }

            v76 = sub_1007528E4();
            v77 = *(v76 - 8);
            (*(v77 + 56))(v74, v73, 1, v76);
            if (v72[14])
            {
              v78 = v90;
              sub_100016B4C(v74, v90, &qword_10093FDE0);
              v79 = (*(v77 + 48))(v78, 1, v76);

              if (v79 == 1)
              {
                sub_10000C8CC(v78, &qword_10093FDE0);
              }

              else
              {
                sub_1007528D4();
                (*(v77 + 8))(v78, v76);
              }

              v84 = v89;
              v83 = v92;
              sub_1007528A4();

              sub_100749564();

              v82 = v99;
              v81 = v100;
              (*(v99 + 8))(v84, v100);
              v80 = v72[14];
            }

            else
            {
              v80 = 0;
              v82 = v99;
              v81 = v100;
              v83 = v92;
            }

            sub_1005E6C18(v106, v80);

            sub_10000C8CC(v93, &qword_10093FDE0);
            (*(v82 + 8))(v83, v81);
            (*(v45 + 8))(v98, v10);
          }

          sub_10000C620(v106);
          return;
        }
      }

LABEL_56:
      (*(v45 + 8))(v59, v10);
    }
  }
}

uint64_t sub_1005E8108(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v56 = sub_10074F654();
  v60 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  __chkstk_darwin(v16);
  v59 = &v44 - v17;
  sub_10000C518(&qword_100923E90);
  v18 = *(sub_10074F584() - 8);
  v57 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v49 = v20;
  *(v20 + 16) = xmmword_1007A7250;
  v21 = v20 + v19;
  v22 = a1;
  v61 = a1;
  sub_10001CC10();
  sub_10074F614();
  v61 = 15.0;
  sub_10074F614();
  v61 = 0.0;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v54 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v28 = *(v60 + 104);
  v60 += 104;
  v55 = v28;
  v29 = v56;
  (v28)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v61) = 0;
  sub_10074F614();
  v61 = 0.0;
  sub_10074F614();
  v58 = v15;
  v52 = v12;
  sub_10074F544();
  v61 = a1;
  sub_10074F614();
  v61 = 15.0;
  sub_10074F614();
  v61 = 0.0;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v32 = v54;
  v55(v6, v54, v29);
  LOBYTE(v61) = 0;
  v50 = v4;
  sub_10074F614();
  v61 = 0.0;
  v53 = v9;
  sub_10074F614();
  v33 = v57;
  v51 = v21;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  sub_10074F544();
  v45 = 2 * v33;
  v61 = v22;
  sub_10074F614();
  v61 = 20.0;
  sub_10074F614();
  v61 = 0.0;
  sub_10074F614();
  v46 = vdupq_n_s64(0x4041000000000000uLL);
  v34 = v6;
  *v6 = v46;
  v35 = v32;
  v36 = v32;
  v37 = v55;
  v38 = v56;
  v55(v6, v36, v56);
  LOBYTE(v61) = 0;
  sub_10074F614();
  v61 = 0.0;
  sub_10074F614();
  v39 = v45;
  v40 = v34;
  sub_10074F544();
  v41 = v57;
  v45 = v39 + v57;
  v61 = v22;
  sub_10074F614();
  v61 = 20.0;
  sub_10074F614();
  v61 = 0.0;
  sub_10074F614();
  *v40 = v46;
  v37(v40, v35, v38);
  sub_1007535A4();
  LOBYTE(v61) = 0;
  sub_10074F614();
  v61 = 0.0;
  sub_10074F614();
  sub_10074F544();
  v45 = 4 * v41;
  v61 = 3.0;
  sub_10074F614();
  v61 = 24.0;
  sub_10074F614();
  v61 = 0.0;
  sub_10074F614();
  v46 = vdupq_n_s64(0x404A000000000000uLL);
  *v40 = v46;
  v42 = v56;
  v37(v40, v54, v56);
  LOBYTE(v61) = 0;
  sub_10074F614();
  v61 = 0.0;
  sub_10074F614();
  sub_10074F544();
  v61 = 3.0;
  sub_10074F614();
  v61 = 24.0;
  sub_10074F614();
  v61 = 0.0;
  sub_10074F614();
  *v40 = v46;
  v55(v40, v54, v42);
  LOBYTE(v61) = 0;
  sub_10074F614();
  v61 = 0.0;
  sub_10074F614();
  sub_10074F544();
  return v49;
}

id sub_1005E8AD4()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.17 controlPoint2:{0.0, 0.83, 0.83}];
  qword_100940670 = result;
  return result;
}

uint64_t sub_1005E8B20()
{
  v0 = sub_100743B54();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000C518(&qword_100940720);
  sub_100039C50(v4, qword_100940678);
  sub_10000D0FC(v4, qword_100940678);
  v6[0] = 0x3FF0000000000000;
  v6[1] = 0;
  *v3 = xmmword_1007CCB90;
  (*(v1 + 104))(v3, enum case for TimingCurve.controlPoints(_:), v0);
  return sub_100743E74();
}

uint64_t sub_1005E8C8C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750B04();
  sub_100039C50(v3, a2);
  sub_10000D0FC(v3, a2);
  v4 = sub_100750304();
  v9[3] = v4;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v9);
  if (qword_1009215C8 != -1)
  {
    swift_once();
  }

  v6 = sub_100750534();
  v7 = sub_10000D0FC(v6, qword_100981E90);
  (*(*(v6 - 8) + 16))(v5, v7, v6);
  (*(*(v4 - 8) + 104))(v5, enum case for FontSource.useCase(_:), v4);
  return sub_100750B14();
}

char *sub_1005E8DD8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem] = 0;
  v9 = &v4[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_pagingProgress];
  *v9 = 0;
  *(v9 + 4) = 514;
  v9[10] = 0;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView;
  type metadata accessor for HeroCarouselItemBackgroundView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_gradientView;
  type metadata accessor for HeroGradientView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView] = 0;
  v12 = &v4[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayBottomInset] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for HeroCarouselItemView();
  v13 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v17 setClipsToBounds:1];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_gradientView]];
  v18 = sub_1005E901C();
  [v17 addSubview:v18];

  v19 = *&v17[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView];
  if (v19)
  {
    v20 = v19;
    [v17 addSubview:v20];
  }

  return v17;
}

char *sub_1005E901C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView];
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    v6 = objc_allocWithZone(type metadata accessor for ModuleOverlayGradientBlurView());
    v7 = v0;
    v8 = sub_10065886C(v5 == 1);
    v9 = *&v0[v1];
    *&v7[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1005E90D0()
{
  v1 = sub_100754724();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    if (qword_100921A20 != -1)
    {
      swift_once();
    }

    v8 = sub_100750B04();
    sub_10000D0FC(v8, qword_1009406A8);
    sub_1007502D4();
    sub_100750564();
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    if (qword_100921A18 != -1)
    {
      swift_once();
    }

    v9 = sub_100750B04();
    sub_10000D0FC(v9, qword_100940690);
    sub_1007502D4();
    sub_100750564();
    (*(v2 + 8))(v5, v1);
    sub_1005E92E8();
  }
}

double sub_1005E92E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView);
  v2 = 0.0;
  if (v1)
  {
    type metadata accessor for CarouselItemSingleModuleOverlay();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = v1;
      sub_10062860C();
      v7 = v6;
      [v4 frame];
      sub_1006F23AC(v8, v9);
LABEL_6:
      v17 = v10;

      return v7 + v17 + *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayBottomInset);
    }

    type metadata accessor for CarouselItemCollectionModuleOverlay();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = v1;
      sub_10062860C();
      v7 = v14;
      [v12 frame];
      sub_10016C23C(v15, v16);
      goto LABEL_6;
    }
  }

  return v2;
}

void sub_1005E94D4()
{
  v1 = v0;
  v2 = sub_10074A324();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeroCarouselItemView();
  v47.receiver = v0;
  v47.super_class = v6;
  objc_msgSendSuper2(&v47, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_gradientView];
  [v1 bounds];
  [v7 setFrame:?];
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView];
  [v1 bounds];
  [v8 setBounds:{0.0, 0.0}];
  [v1 bounds];
  MidX = CGRectGetMidX(v48);
  [v1 bounds];
  [v8 setCenter:{MidX, CGRectGetMidY(v49)}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView;
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1005E9BB4();
    [v12 setBounds:{0.0, 0.0, v13, v14}];

    v15 = *&v1[v10];
    if (v15)
    {
      v16 = v15;
      [v16 setCenter:sub_1005E9EB4()];
    }
  }

  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem])
  {

    v17 = sub_100745D64();

    if (v17)
    {
      sub_10074A344();

      v18 = sub_10074A314();
      (*(v3 + 8))(v5, v2);
      if (v18)
      {
        [v1 bounds];
        CGRectGetHeight(v50);
        sub_1005E90D0();
        v19 = sub_1005E901C();
        [v1 bounds];
        sub_100753B14();
        [v19 setFrame:?];

        v20 = sub_1005E92E8();
        sub_1005E90D0();
        v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView];
        v23 = OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_effectVisibilityThreshold;
        *&v22[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_effectVisibilityThreshold] = v20 / v21;
        if ((v22[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_style] & 1) == 0)
        {
          v46 = _swiftEmptyArrayStorage;
          v24 = v22;
          sub_10001E46C(0, 5, 0);
          v25 = v46;
          v26 = *&v22[v23];
          v27 = 0.0;
          v29 = v46[2];
          v28 = v46[3];
          v30 = v28 >> 1;
          v31 = v29 + 1;
          if (v28 >> 1 <= v29)
          {
            *&v45 = 0.0;
            sub_10001E46C((v28 > 1), v29 + 1, 1);
            v27 = *&v45;
            v25 = v46;
            v28 = v46[3];
            v30 = v28 >> 1;
          }

          *(v25 + 16) = v31;
          *(v25 + 8 * v29 + 32) = v27 * v26;
          v32 = *&v22[v23];
          v46 = v25;
          v33 = v29 + 2;
          if (v30 <= v31)
          {
            *&v45 = v32;
            sub_10001E46C((v28 > 1), v33, 1);
            v32 = *&v45;
            v25 = v46;
          }

          *(v25 + 16) = v33;
          *(v25 + 8 * v31 + 32) = 0.25 * v32;
          v34 = *&v22[v23];
          v46 = v25;
          v36 = *(v25 + 16);
          v35 = *(v25 + 24);
          v37 = v35 >> 1;
          v38 = v36 + 1;
          if (v35 >> 1 <= v36)
          {
            *&v45 = v34;
            sub_10001E46C((v35 > 1), v36 + 1, 1);
            v34 = *&v45;
            v25 = v46;
            v35 = v46[3];
            v37 = v35 >> 1;
          }

          *(v25 + 16) = v38;
          *(v25 + 8 * v36 + 32) = 0.5 * v34;
          v39 = *&v22[v23];
          v46 = v25;
          v40 = v36 + 2;
          if (v37 <= v38)
          {
            *&v45 = v39;
            sub_10001E46C((v35 > 1), v40, 1);
            v39 = *&v45;
            v25 = v46;
          }

          *(v25 + 16) = v40;
          *(v25 + 8 * v38 + 32) = 0.75 * v39;
          v41 = *&v22[v23];
          v42 = 1.0;
          v46 = v25;
          v44 = *(v25 + 16);
          v43 = *(v25 + 24);
          if (v44 >= v43 >> 1)
          {
            *&v45 = 1.0;
            sub_10001E46C((v43 > 1), v44 + 1, 1);
            v42 = *&v45;
            v25 = v46;
          }

          *(v25 + 16) = v44 + 1;
          *(v25 + 8 * v44 + 32) = v42 * v41;
          sub_100037D2C(v25);
        }
      }
    }
  }
}

id sub_1005E9A08(id a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HeroCarouselItemView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    return [v1 setNeedsLayout];
  }

  v5 = sub_100753094();
  v7 = v6;
  if (v5 == sub_100753094() && v7 == v8)
  {
  }

  v10 = sub_100754754();

  if ((v10 & 1) == 0)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

double sub_1005E9BB4()
{
  v1 = v0;
  v2 = sub_10074F6E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v9 = sub_10074F704();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 bounds];
  v23[2] = v15;
  v23[3] = v14;
  v23[1] = v16;
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2);
  [v1 bounds];
  (*(v3 + 16))(v5, v8, v2);
  v17 = 0.0;
  sub_1004E97E0(0.0);
  sub_10074F6B4();
  (*(v3 + 8))(v8, v2);
  sub_10074F664();
  (*(v10 + 8))(v13, v9);
  sub_100753B14();
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView];
  if (v20)
  {
    [v20 sizeThatFits:{v18, v19}];
    return v21;
  }

  return v17;
}

double sub_1005E9EB4()
{
  v1 = v0;
  v2 = sub_10074A454();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v49 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074A464();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100940728);
  __chkstk_darwin(v6 - 8);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_10074F6E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = sub_10074F704();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18).n128_u64[0];
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 bounds];
  v51 = v24;
  v52 = v23;
  (*(v12 + 104))(v17, enum case for PageGrid.Direction.vertical(_:), v11);
  [v1 bounds];
  (*(v12 + 16))(v14, v17, v11);
  v55 = 0.0;
  sub_1004E97E0(0.0);
  sub_10074F6B4();
  (*(v12 + 8))(v17, v11);
  sub_10074F664();
  (*(v19 + 8))(v22, v18);
  sub_100753B14();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView];
  if (v33)
  {
    [v33 bounds];
    v55 = v34 * 0.5;
  }

  if (!*&v1[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem] || (, v35 = sub_100745D64(), , !v35))
  {
    (*(v53 + 56))(v10, 1, 1, v54);
    sub_10000C8CC(v10, &qword_100940728);
    goto LABEL_9;
  }

  v36 = v46;
  sub_10074A474();

  v37 = v49;
  sub_10074A414();
  (*(v47 + 8))(v36, v48);
  v38 = [v1 traitCollection];
  sub_10074A444();

  v40 = v53;
  v39 = v54;
  v41 = *(v53 + 8);
  v41(v37, v54);
  (*(v40 + 56))(v10, 0, 1, v39);
  v42 = v50;
  sub_1005EBC04(v10, v50);
  v43 = (*(v40 + 88))(v42, v39);
  if (v43 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
LABEL_9:
    v57.origin.x = v26;
    v57.origin.y = v28;
    v57.size.width = v30;
    v57.size.height = v32;
    MidX = v55 + CGRectGetMinX(v57);
    goto LABEL_10;
  }

  if (v43 != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
  {
    if (v43 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
    {
      v59.origin.x = v26;
      v59.origin.y = v28;
      v59.size.width = v30;
      v59.size.height = v32;
      MidX = CGRectGetMaxX(v59) - v55;
      goto LABEL_10;
    }

    v41(v42, v39);
    goto LABEL_9;
  }

  v56.origin.x = v26;
  v56.origin.y = v28;
  v56.size.width = v30;
  v56.size.height = v32;
  MidX = CGRectGetMidX(v56);
LABEL_10:
  v58.origin.x = v26;
  v58.origin.y = v28;
  v58.size.width = v30;
  v58.size.height = v32;
  CGRectGetMaxY(v58);
  return MidX;
}

id sub_1005EA524()
{
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_pagingProgress;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_pagingProgress + 8) && *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_pagingProgress + 8) != 1)
  {

    return [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView) setTransform:{&v13, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];
  }

  v2 = sub_100754754();

  if (v2)
  {
    return [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView) setTransform:{&v13, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];
  }

  if (*(v1 + 8) && *(v1 + 8) == 1)
  {
  }

  else
  {
    v4 = sub_100754754();

    if ((v4 & 1) == 0)
    {
      if (*(v1 + 9))
      {
        v11 = sub_100754754();

        if ((v11 & 1) == 0)
        {
          v6 = *v1;
          goto LABEL_17;
        }
      }

      else
      {
      }

      v10 = 1.0 - *v1;
      goto LABEL_22;
    }
  }

  if (*(v1 + 9))
  {
    v5 = sub_100754754();

    if (v5)
    {
      goto LABEL_16;
    }

    v10 = *v1;
LABEL_22:
    v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView);
    [v7 center];
    v9 = v10 * (v12 * 0.3);
    goto LABEL_23;
  }

LABEL_16:
  v6 = 1.0 - *v1;
LABEL_17:
  v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView);
  [v7 center];
  v9 = v8 * -0.3 * v6;
LABEL_23:
  CGAffineTransformMakeTranslation(&v13, v9, 0.0);
  return [v7 setTransform:{&v13, *&v13.a, *&v13.c, *&v13.tx}];
}

void sub_1005EA828()
{
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_pagingProgress;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_pagingProgress + 8) && *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_pagingProgress + 8) != 1)
  {

LABEL_9:
    v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView);
    if (v6)
    {
      *&v28.a = 0x3FF0000000000000uLL;
      v28.c = 0.0;
      v28.d = 1.0;
      *&v28.tx = 0uLL;
      [v6 setTransform:&v28];
    }

    return;
  }

  v2 = sub_100754754();

  if (v2)
  {
    goto LABEL_9;
  }

  v3 = OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView;
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView);
  if (v4)
  {
    if (*(v1 + 8) && *(v1 + 8) == 1)
    {
      v5 = v4;

      goto LABEL_12;
    }

    v7 = sub_100754754();
    v8 = v4;

    if (v7)
    {
LABEL_12:
      if (*(v1 + 9))
      {
        v13 = sub_100754754();

        if ((v13 & 1) == 0)
        {
          v17 = *v1;
          [v4 center];
          v16 = v18 * -0.3 * v17;
          goto LABEL_21;
        }
      }

      else
      {
      }

      v14 = 1.0 - *v1;
      [v4 center];
      v16 = v14 * (v15 * 0.3);
LABEL_21:
      CGAffineTransformMakeTranslation(&v28, v16, 0.0);
      [v4 setTransform:&v28];
LABEL_25:

      goto LABEL_26;
    }

    if (*(v1 + 9))
    {
      v9 = sub_100754754();

      if ((v9 & 1) == 0)
      {
        v10 = *v1;
        [v8 center];
        v12 = v10 * (v11 * 0.3);
LABEL_24:
        CGAffineTransformMakeTranslation(&v28, v12, 0.0);
        [v8 setTransform:&v28];
        goto LABEL_25;
      }
    }

    else
    {
    }

    v19 = 1.0 - *v1;
    [v8 center];
    v12 = v20 * -0.3 * v19;
    goto LABEL_24;
  }

LABEL_26:
  if (*(v1 + 10) == 1)
  {
    v21 = *(v0 + v3);
    if (v21)
    {
      if (*(v1 + 9))
      {
        v22 = sub_100754754();
        v23 = v21;

        if ((v22 & 1) == 0)
        {
          if (qword_100921A10 != -1)
          {
            swift_once();
          }

          v24 = sub_10000C518(&qword_100940720);
          sub_10000D0FC(v24, qword_100940678);
          sub_100743E54();
          a = v28.a;
          v21 = v23;
LABEL_37:
          [v21 setAlpha:a];

          return;
        }
      }

      else
      {
        v26 = v21;
      }

      if (qword_100921A10 != -1)
      {
        swift_once();
      }

      v27 = sub_10000C518(&qword_100940720);
      sub_10000D0FC(v27, qword_100940678);
      sub_100743E54();
      a = v28.a;
      goto LABEL_37;
    }
  }
}

void sub_1005EAD48(int a1, double a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView];
  v6 = BYTE1(a1);
  if (v5)
  {
    if (BYTE1(a1))
    {
      v7 = sub_100754754();
      v8 = v5;

      v9 = 1.0;
      if (v7)
      {
        v9 = 0.0;
      }
    }

    else
    {
      v8 = v5;

      v9 = 0.0;
    }

    [v8 setAlpha:v9];
  }

  if (qword_100921A08 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100940670 timingParameters:0.33];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a2;
  *(v11 + 32) = a1;
  *(v11 + 34) = BYTE2(a1) & 1;
  v16[4] = sub_1005EBBC8;
  v16[5] = v11;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1000CF7B0;
  v16[3] = &unk_10087D1C0;
  v12 = _Block_copy(v16);
  v13 = v2;

  [v10 addAnimations:v12];
  _Block_release(v12);
  if (v6)
  {
    v14 = sub_100754754();

    v15 = 0.166;
    if ((v14 & 1) == 0)
    {
      v15 = 0.0;
    }
  }

  else
  {

    v15 = 0.166;
  }

  [v10 startAnimationAfterDelay:v15];
}

void sub_1005EB004(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView);
  if (v2)
  {
    if (HIBYTE(a2))
    {
      v3 = sub_100754754();
      v5 = v2;

      v4 = 0.0;
      if (v3)
      {
        v4 = 1.0;
      }
    }

    else
    {
      v5 = v2;

      v4 = 1.0;
    }

    [v5 setAlpha:v4];
  }
}

void sub_1005EB118(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10074A464();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074A454();
  v60 = *(v9 - 8);
  v61 = v9;
  __chkstk_darwin(v9);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  __chkstk_darwin(v14);
  v62 = &v57 - v15;
  v16 = sub_10074A324();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem] = a1;

  v63 = a2;
  sub_10006F224(a1, a2);
  if (*&v2[v20] && (, v21 = sub_100745D64(), , v21) && (sub_10074A344(), , v22 = sub_10074A314(), (*(v17 + 8))(v19, v16), (v22 & 1) != 0))
  {
    v23 = sub_1005E901C();
    [v23 setHidden:0];

    if (sub_100745D64())
    {
      sub_10074A474();

      sub_10074A414();
      (*(v57 + 8))(v8, v58);
      v25 = v60;
      v24 = v61;
      v26 = v62;
      (*(v60 + 32))(v62, v13, v61);
      v27 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView];
      v28 = v59;
      (*(v25 + 16))(v59, v26, v24);
      v29 = OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_alignment;
      swift_beginAccess();
      v30 = *(v25 + 24);
      v31 = v27;
      v30(&v27[v29], v28, v24);
      swift_endAccess();
      sub_100658FD8();

      v32 = *(v25 + 8);
      v32(v28, v24);
      v32(v62, v24);
    }
  }

  else
  {
    v33 = sub_1005E901C();
    [v33 setHidden:1];
  }

  v34 = v63;
  v35 = sub_1005EB8F8();
  v37 = v35;
  v38 = v36;
  v39 = &v3[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView];
  v40 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView];
  if (v35)
  {
    if (v35 == v40 || !v40)
    {
      *v39 = v35;
      *(v39 + 1) = v36;
      v41 = (v39 + 8);
      v42 = v35;

LABEL_13:
      [v3 addSubview:{v42, v57, v58}];

      goto LABEL_14;
    }
  }

  else if (!v40)
  {
    *v39 = 0;
    *(v39 + 1) = v36;
    v41 = (v39 + 8);
    v56 = 0;
    goto LABEL_14;
  }

  [*&v3[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView] removeFromSuperview];
  v43 = *v39;
  *v39 = v37;
  *(v39 + 1) = v38;
  v41 = (v39 + 8);
  v42 = v37;

  if (v37)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (sub_100745D64() && (v44 = sub_10074A334(), , v44))
  {
    v45 = *v39;
    if (*v39)
    {
      v46 = *v41;
      ObjectType = swift_getObjectType();
      swift_unknownObjectWeakInit();
      v48 = swift_allocObject();
      *(v48 + 16) = v34;
      *(v48 + 24) = v44;
      v49 = *(v46 + 16);
      v50 = v45;

      v49(sub_1005EBB88, v48, ObjectType, v46);

      swift_unknownObjectWeakDestroy();
    }

    else
    {
    }
  }

  else
  {
    v51 = *v39;
    if (*v39)
    {
      v52 = *v41;
      v53 = swift_getObjectType();
      v54 = *(v52 + 16);
      v55 = v51;
      v54(0, 0, v53, v52);
    }
  }
}

uint64_t sub_1005EB6E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000C8CC(v6, &unk_100923960);
  }

  sub_1003C0E00(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

id sub_1005EB824()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselItemView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1005EB8F8()
{
  v0 = sub_10074A324();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100745D64())
  {
    sub_10074A344();
    v4 = (*(v1 + 88))(v3, v0);
    if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.materialText(_:))
    {
      type metadata accessor for CarouselItemMaterialTextOverlay();
      v5 = &off_10087A0D8;
    }

    else if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.text(_:))
    {
      type metadata accessor for CarouselItemTextOverlay();
      v5 = &off_100869F98;
    }

    else if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.lockup(_:))
    {
      type metadata accessor for CarouselItemLockupOverlay();
      v5 = &off_100872BF0;
    }

    else if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.collectionLockup(_:))
    {
      type metadata accessor for CarouselItemCollectionLockupOverlay(0);
      v5 = &off_1008765D0;
    }

    else if (v4 == enum case for HeroCarouselItemOverlay.OverlayType.singleModule(_:))
    {
      type metadata accessor for CarouselItemSingleModuleOverlay();
      v5 = &off_10086DDF8;
    }

    else
    {
      if (v4 != enum case for HeroCarouselItemOverlay.OverlayType.collectionModule(_:))
      {
        (*(v1 + 8))(v3, v0);
        v6 = 0;
        goto LABEL_16;
      }

      type metadata accessor for CarouselItemCollectionModuleOverlay();
      v5 = &off_100882CB0;
    }

    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    swift_getObjectType();
    (v5[4])();
LABEL_16:

    return v6;
  }

  return 0;
}

uint64_t sub_1005EBB48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005EBB90()
{

  return _swift_deallocObject(v0, 35, 7);
}

uint64_t sub_1005EBBEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005EBC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100940728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1005EBC74()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem) = 0;
  v1 = v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_pagingProgress;
  *v1 = 0;
  *(v1 + 8) = 514;
  *(v1 + 10) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView;
  type metadata accessor for HeroCarouselItemBackgroundView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_gradientView;
  type metadata accessor for HeroGradientView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView____lazy_storage___moduleGradientView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayBottomInset) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t type metadata accessor for AccountButton()
{
  result = qword_1009407B0;
  if (!qword_1009407B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005EBDC0()
{
  sub_1005F1FE0();
  if (v0 <= 0x3F)
  {
    sub_100741454();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1005EBEE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100016C60(0, &qword_100940838);
  v2 = sub_1007532A4();

  v1(v2);
}

uint64_t sub_1005EBF64()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.personCropCircle(_:), v0, v2);
  v5 = sub_100743AE4();
  result = (*(v1 + 8))(v4, v0);
  qword_100940740 = v5;
  return result;
}

uint64_t sub_1005EC05C()
{
  sub_100016C60(0, &qword_100923500);
  result = sub_100753DC4();
  qword_100940748 = result;
  return result;
}

uint64_t sub_1005EC0A0()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752E44();
  sub_100039C50(v4, qword_100940750);
  sub_10000D0FC(v4, qword_100940750);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100752E34();
}

uint64_t (*sub_1005EC1FC(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1005F2AD0;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10011C13C;
}

void sub_1005EC28C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = qword_100940780;
    if (*&Strong[qword_100940780])
    {

      if (sub_100752254())
      {
        goto LABEL_16;
      }

      v6 = [v4 backgroundImageForState:0];
      if (v6)
      {
      }

      else
      {
        v7 = v4[qword_100940768];
        v4[qword_100940768] = 0;
        if (v7 == 1)
        {
          v8 = [v4 layer];
          [v8 setBorderColor:0];

          v9 = [v4 layer];
          [v9 setBorderWidth:0.0];

          [v4 setNeedsDisplay];
        }

        if (qword_100921A28 != -1)
        {
          swift_once();
        }

        [v4 setImage:qword_100940740 forState:0];
        [v4 alpha];
        if (v10 <= COERCE_DOUBLE(1))
        {
          v11 = objc_opt_self();
          v12 = swift_allocObject();
          *(v12 + 16) = v4;
          aBlock[4] = sub_1002CD324;
          aBlock[5] = v12;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000CF7B0;
          aBlock[3] = &unk_10087D2D8;
          v13 = _Block_copy(aBlock);
          v14 = v4;

          [v11 animateWithDuration:4 delay:v13 options:0 animations:0.33 completion:0.0];
          _Block_release(v13);
        }
      }

      *&v4[v5] = 0;

      if ((a2 & 1) == 0)
      {
LABEL_16:
      }

      else
      {
        v15 = swift_unknownObjectWeakLoadStrong();

        if (v15)
        {
          *(v15 + qword_100925BE8) = 0;
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
    }
  }
}

void sub_1005EC558()
{
  sub_10000C8CC(v0 + qword_100982860, &unk_100940810);
  sub_10000C4F0(v0 + qword_100982868);

  v1 = qword_100940788;
  v2 = sub_100741454();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_1009407A8);
}

id sub_1005EC640()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AccountButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1005EC6B8(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  [v4 removeObserver:v3];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for AccountButton();
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_1005EC744(uint64_t a1)
{
  sub_10000C8CC(a1 + qword_100982860, &unk_100940810);
  sub_10000C4F0(a1 + qword_100982868);

  v2 = qword_100940788;
  v3 = sub_100741454();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_1009407A8);
}

uint64_t sub_1005EC830()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000C518(&qword_100940840);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1007533D4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1007533B4();
  v6 = v0;
  v7 = sub_1007533A4();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  v8[5] = ObjectType;
  sub_1000A0C18(0, 0, v4, &unk_1007CCD78, v8);
}

uint64_t sub_1005EC968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_10000C518(&qword_100940840);
  v5[20] = swift_task_alloc();
  v5[21] = sub_1007533B4();
  v5[22] = sub_1007533A4();
  v7 = sub_100753384();
  v5[23] = v7;
  v5[24] = v6;

  return _swift_task_switch(sub_1005ECA3C, v7, v6);
}

uint64_t sub_1005ECA3C()
{
  v1 = [objc_opt_self() defaultService];
  v0[25] = v1;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1005ECB7C;
  v2 = swift_continuation_init();
  v0[17] = sub_10000C518(&qword_100940868);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1005ECDC0;
  v0[13] = &unk_10087D5A8;
  v0[14] = v2;
  [v1 shouldUseModernUpdatesWithCompletionBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005ECB7C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return _swift_task_switch(sub_1005ECC84, v2, v1);
}

uint64_t sub_1005ECC84()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v10 = *(v0 + 144);

  v3 = *(v0 + 208);

  v4 = sub_1007533D4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v10;
  v6 = sub_1007533A4();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  *(v7 + 32) = v3;
  *(v7 + 40) = v10;
  sub_1000A0C18(0, 0, v2, &unk_1007CCD90, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1005ECDC0(uint64_t a1, char a2)
{
  **(*(*sub_10000C888((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_1005ECE1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 88) = a5;
  *(v5 + 180) = a4;
  sub_100752404();
  *(v5 + 96) = swift_task_alloc();
  sub_1007533B4();
  *(v5 + 104) = sub_1007533A4();
  v7 = sub_100753384();
  *(v5 + 112) = v7;
  *(v5 + 120) = v6;

  return _swift_task_switch(sub_1005ECEE4, v7, v6);
}

uint64_t sub_1005ECEE4()
{
  if (*(v0 + 180) == 1)
  {
    if (qword_100921A38 != -1)
    {
      swift_once();
    }

    v1 = sub_100752E44();
    *(v0 + 128) = v1;
    *(v0 + 136) = sub_10000D0FC(v1, qword_100940750);
    *(v0 + 144) = sub_10000C518(&qword_100923930);
    v2 = *(sub_100752454() - 8);
    *(v0 + 152) = *(v2 + 72);
    *(v0 + 176) = *(v2 + 80);
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_100752434();
    sub_1007523A4();
    sub_100752CE4();

    v3 = sub_1007425B4();
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    v4[1] = sub_1005ED2F8;

    return BaseObjectGraph.inject<A>(_:)(v0 + 72, v3, v3);
  }

  else
  {

    if (qword_100921A38 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 88);
    v6 = sub_100752E44();
    sub_10000D0FC(v6, qword_100940750);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_100752434();
    sub_1007523A4();
    sub_100752CE4();

    v7 = [objc_opt_self() defaultCenter];
    sub_1007422F4();
    v8 = sub_1007422D4();
    [v7 addObserver:v5 selector:"refreshUpdatesCount" name:v8 object:0];

    if (*(v5 + qword_1009407A8))
    {
      sub_1005EF4B4();
    }

    else
    {
      sub_1005F088C();
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1005ED2F8()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_1005ED4D8;
  }

  else
  {
    v5 = sub_1005ED434;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005ED434()
{
  v1 = v0[11];

  v2 = qword_1009407A8;
  v3 = *(v1 + qword_1009407A8);
  *(v1 + qword_1009407A8) = v0[9];

  if (*(v1 + v2))
  {
    sub_1005EF4B4();
  }

  else
  {
    sub_1005F088C();
  }

  sub_1005EFB7C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005ED4D8()
{

  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523F4();
  v7._object = 0x8000000100786D80;
  v7._countAndFlagsBits = 0xD000000000000024;
  sub_1007523E4(v7);
  swift_getErrorValue();
  v1 = v0[6];
  v2 = v0[7];
  v0[5] = v2;
  v3 = sub_10000D134(v0 + 2);
  (*(*(v2 - 8) + 16))(v3, v1, v2);
  sub_1007523C4();
  sub_10000C8CC((v0 + 2), &unk_100923520);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  sub_1007523E4(v8);
  sub_100752414();
  sub_100752D04();

  v4 = v0[1];

  return v4();
}

void sub_1005ED674(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = qword_100940798;
  v6 = *&v2[qword_100940798];
  if (a2)
  {
    if (v6)
    {
      v8 = v6;
      sub_10011BB14(a1, a2);
    }

    else
    {
      v9 = objc_allocWithZone(type metadata accessor for CountBadgeView());
      v10 = sub_10011B550(0, a1, a2);
      [v3 addSubview:v10];
      v8 = *&v3[v5];
      *&v3[v5] = v10;
    }

    [v3 setNeedsLayout];
  }

  else
  {
    if (v6)
    {
      [v6 removeFromSuperview];
      v6 = *&v2[v5];
    }

    *&v2[v5] = 0;
  }
}

void sub_1005ED778()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for AccountButton();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v13);
  [v0 bounds];
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = floor(Height * 0.5);
  v4 = [v0 layer];
  [v4 cornerRadius];
  v6 = v5;

  if (vabdd_f64(v6, v3) > COERCE_DOUBLE(1))
  {
    v7 = [v0 layer];
    [v7 setCornerRadius:v3];
  }

  v8 = *&v0[qword_100940798];
  if (v8)
  {
    v9 = v8;
    [v0 frame];
    [v9 sizeThatFits:{v10, v11}];
    [v0 bounds];
    CGRectGetMaxX(v15);
    [v0 bounds];
    CGRectGetMinY(v16);
    [v0 bounds];
    sub_100753B24();
    [v9 setFrame:?];
  }
}

void sub_1005ED930(void *a1)
{
  v1 = a1;
  sub_1005ED778();
}

void sub_1005ED978(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for AccountButton();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, "invalidateIntrinsicContentSize");
  v2 = &v1[qword_100940790];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
}

double sub_1005ED9E4(void *a1)
{
  v1 = a1;
  sub_1005EDA28();
  v3 = v2;

  return v3;
}

void sub_1005EDA28()
{
  v1 = sub_100750304();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v0[qword_100940790];
  if (v0[qword_100940790 + 16])
  {
    if (qword_100920E48 != -1)
    {
      swift_once();
    }

    v6 = sub_100750534();
    v7 = sub_10000D0FC(v6, qword_100980828);
    v8 = [v0 traitCollection];
    (*(*(v6 - 8) + 16))(v4, v7, v6);
    (*(v2 + 104))(v4, enum case for FontSource.useCase(_:), v1);
    v19[3] = v1;
    v19[4] = &protocol witness table for FontSource;
    v9 = sub_10000D134(v19);
    (*(v2 + 16))(v9, v4, v1);
    sub_10074FC54();
    v11 = v10;
    (*(v2 + 8))(v4, v1);
    sub_10000C620(v19);
    v12 = floor(v11);
    Main = JUScreenClassGetMain();

    if (Main == 1)
    {
      v14 = v12 + -5.0;
    }

    else
    {
      v14 = v12;
    }

    [v0 bounds];
    Width = CGRectGetWidth(v20);
    [v0 bounds];
    Height = CGRectGetHeight(v21);
    if (Height >= Width)
    {
      Height = Width;
    }

    if (Height >= v14 || Height <= 0.0)
    {
      Height = v14;
    }

    *v5 = Height;
    v5[1] = Height;
    *(v5 + 16) = 0;
  }
}

void sub_1005EDCD4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v1 - 8);
  v52 = &v43 - v2;
  v47 = sub_100742CF4();
  v44 = *(v47 - 8);
  __chkstk_darwin(v47);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1007493D4();
  v5 = *(v46 - 8);
  __chkstk_darwin(v46);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10074A304();
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_100752614();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v15 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v15 - 8);
  v17 = &v43 - v16;
  v18 = sub_10074F4D4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_opt_self() ams_shieldSignInOrCreateFlows];
  v53 = v17;
  v54 = v0;
  if (v22)
  {
    v23 = v5;
    v24 = v4;
    sub_1007491E4();
    sub_1007526E4();
    v25 = v57;
    v26 = sub_1007491C4();

    if (v26)
    {
      if (qword_100921A38 != -1)
      {
        swift_once();
      }

      v27 = sub_100752E44();
      sub_10000D0FC(v27, qword_100940750);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A6580;
      sub_100752434();
      sub_1007523A4();
      sub_100752CE4();

      sub_1005EE83C(v26);

      return;
    }

    v4 = v24;
    v5 = v23;
    v17 = v53;
  }

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  (*(v19 + 104))(v21, enum case for FlowPage.account(_:), v18);
  v28 = sub_100741264();
  (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
  v29 = sub_100743FE4();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  v55 = 0u;
  v56 = 0u;
  sub_1005EE57C();
  v30 = v49;
  ObjectType = *(v45 + 104);
  ObjectType(v10, enum case for FlowPresentationContext.infer(_:), v49);
  (*(v5 + 104))(v50, enum case for FlowAnimationBehavior.infer(_:), v46);
  (*(v44 + 104))(v4, enum case for FlowOrigin.inapp(_:), v47);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v31 = sub_100742C84();
  v32 = ASKDeviceTypeGetCurrent();
  v33 = sub_100753094();
  v35 = v34;
  if (v33 == sub_100753094() && v35 == v36)
  {

    v37 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
  }

  else
  {
    v38 = sub_100754754();

    v37 = &enum case for FlowPresentationContext.presentModal(_:);
    if (v38)
    {
      v37 = &enum case for FlowPresentationContext.presentModalFormSheet(_:);
    }
  }

  ObjectType(v51, *v37, v30);
  sub_100742C64();
  v39 = *(v54 + qword_100940770);
  v40 = sub_10000C518(&unk_100923210);
  v41 = v52;
  sub_1007526C4();
  v42 = *(v40 - 8);
  if ((*(v42 + 48))(v41, 1, v40) == 1)
  {

    sub_10000C8CC(v41, &unk_100923960);
  }

  else
  {
    sub_1003C1424(v31, 1, v39, v41);

    (*(v42 + 8))(v41, v40);
  }
}

uint64_t sub_1005EE57C()
{
  v0 = sub_100752874();
  __chkstk_darwin(v0 - 8);
  sub_10000C518(&qword_10092C208);
  v1 = sub_100752C84();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007A5A00;
  sub_100752C44();
  sub_1001A994C(v4);
  swift_setDeallocating();
  (*(v2 + 8))(v4 + v3, v1);
  swift_deallocClassInstance();
  sub_100414AE8(_swiftEmptyArrayStorage);
  sub_1007465E4();
  swift_allocObject();
  sub_1007465D4();
  sub_10000C518(&unk_10092C210);
  sub_1007524D4();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_100743EC4();
  sub_100752864();
  sub_100752604();
}

void sub_1005EE7F4(void *a1)
{
  v1 = a1;
  sub_1005EDCD4();
}

void sub_1005EE83C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(AAUISignInController) init];
  [v4 setServiceType:AIDAServiceTypeStore];
  [v4 setDelegate:v1];
  if (qword_100921A38 != -1)
  {
    swift_once();
  }

  v5 = sub_100752E44();
  sub_10000D0FC(v5, qword_100940750);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_100752434();
  sub_1007523A4();
  sub_100752CE4();

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = ObjectType;
  v11[4] = sub_1005F33BC;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1005171C8;
  v11[3] = &unk_10087D558;
  v8 = _Block_copy(v11);
  v9 = a1;
  v10 = v4;

  [v10 prepareInViewController:v9 completion:v8];
  _Block_release(v8);
}

id sub_1005EEAE8(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v9 = sub_100752E44();
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_100745B04();
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100752614();
  __chkstk_darwin(v18 - 8);
  if (a1)
  {
    if (qword_100921A38 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v9, qword_100940750);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    return [a3 presentViewController:a4 animated:1 completion:0];
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  v40 = v14;
  v20 = sub_100741124();
  v21 = [v20 domain];
  v22 = sub_100753094();
  v24 = v23;

  if (v22 == sub_100753094() && v24 == v25)
  {

    goto LABEL_12;
  }

  v26 = sub_100754754();

  if (v26)
  {
LABEL_12:
    if ([v20 code] == -7005)
    {
      if (qword_100921A38 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v9, qword_100940750);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A6580;
      sub_1007523A4();
      *(&v47 + 1) = sub_100016C60(0, &unk_100928750);
      *&v46 = v20;
      v27 = v20;
      sub_100752424();
      sub_10000C8CC(&v46, &unk_100923520);
      sub_100752D04();

      v49._object = 0x8000000100785F10;
      v49._countAndFlagsBits = 0xD000000000000017;
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      sub_1007458B4(v49, v51);
      v50._countAndFlagsBits = 0xD00000000000002ALL;
      v50._object = 0x8000000100785F30;
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      sub_1007458B4(v50, v52);
      sub_1007525F4();
      (*(v41 + 104))(v17, enum case for AlertActionStyle.normal(_:), v15);
      sub_100743144();
      swift_allocObject();
      v28 = sub_100743114();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = *(Strong + qword_100940770);
        v31 = Strong;

        v32 = sub_10000C518(&unk_100923210);
        v33 = v40;
        sub_1007526C4();
        v34 = *(v32 - 8);
        if ((*(v34 + 48))(v33, 1, v32) == 1)
        {

          return sub_10000C8CC(v33, &unk_100923960);
        }

        else
        {
          sub_1003C1660(v28, 1, v30, v33);

          return (*(v34 + 8))(v33, v32);
        }
      }

      else
      {
      }
    }
  }

LABEL_19:
  if (qword_100921A38 != -1)
  {
    swift_once();
  }

  v35 = sub_10000D0FC(v9, qword_100940750);
  v36 = v43;
  (*(v43 + 16))(v11, v35, v9);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  if (a2)
  {
    swift_getErrorValue();
    v37 = v44;
    v38 = v45;
    *(&v47 + 1) = v45;
    v39 = sub_10000D134(&v46);
    (*(*(v38 - 8) + 16))(v39, v37, v38);
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  sub_100752424();
  sub_10000C8CC(&v46, &unk_100923520);
  sub_100752D04();

  return (*(v36 + 8))(v11, v9);
}

void sub_1005EF454(char *a1)
{
  v1 = *&a1[qword_1009407A8];
  v2 = a1;
  if (v1)
  {
    sub_1005EF4B4();
  }

  else
  {
    sub_1005F088C();
  }
}

void sub_1005EF4B4()
{
  v1 = sub_10000C518(&qword_100940840);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + qword_1009407A8);
  if (v4)
  {
    v5 = sub_1007533D4();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1007533B4();
    v7 = v4;

    v8 = sub_1007533A4();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    v9[5] = v6;

    sub_1000A0C18(0, 0, v3, &unk_1007CCD68, v9);
  }

  else
  {
    if (qword_100921A38 != -1)
    {
      swift_once();
    }

    v10 = sub_100752E44();
    sub_10000D0FC(v10, qword_100940750);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();
  }
}

uint64_t sub_1005EF764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a5;
  v6 = sub_100742434();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[11] = v7;
  v5[12] = sub_1007533B4();
  v5[13] = sub_1007533A4();
  v8 = swift_task_alloc();
  v5[14] = v8;
  *v8 = v5;
  v8[1] = sub_1005EF888;

  return AppUpdatesDataSource.getUpdatesCounts()(v7);
}

uint64_t sub_1005EF888()
{
  *(*v1 + 120) = v0;

  v3 = sub_100753384();
  if (v0)
  {
    v4 = sub_1005EFA98;
  }

  else
  {
    v4 = sub_1005EF9E4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1005EF9E4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1005F0504();
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1005EFA98()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = qword_100940798;
    v4 = *(Strong + qword_100940798);
    if (v4)
    {
      [v4 removeFromSuperview];
      v5 = *&v2[v3];
    }

    else
    {
      v5 = 0;
    }

    *&v2[v3] = 0;
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1005EFB7C()
{
  v1 = sub_10000C518(&qword_100940840);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_10000C518(&qword_100940848);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = *(v0 + qword_1009407A8);
  if (v11)
  {
    v20 = v11;
    sub_100742594();
    v12 = sub_1007533D4();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v7, v10, v4);
    sub_1007533B4();

    v14 = sub_1007533A4();
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = &protocol witness table for MainActor;
    (*(v5 + 32))(v16 + v15, v7, v4);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;

    sub_1000A0C18(0, 0, v3, &unk_1007CCD48, v16);

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_100921A38 != -1)
    {
      swift_once();
    }

    v18 = sub_100752E44();
    sub_10000D0FC(v18, qword_100940750);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();
  }
}

uint64_t sub_1005EFF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_100742434();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_10000C518(&qword_100940850);
  v5[10] = swift_task_alloc();
  v7 = sub_10000C518(&unk_100940858);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = sub_1007533B4();
  v5[15] = sub_1007533A4();
  v9 = sub_100753384();
  v5[16] = v9;
  v5[17] = v8;

  return _swift_task_switch(sub_1005F010C, v9, v8);
}

uint64_t sub_1005F010C()
{
  sub_10000C518(&qword_100940848);
  sub_1007533E4();
  swift_beginAccess();
  v1 = sub_1007533A4();
  v0[18] = v1;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1005F0204;
  v3 = v0[10];
  v4 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v3, v1, &protocol witness table for MainActor, v4);
}

uint64_t sub_1005F0204()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_1005F0348, v3, v2);
}

uint64_t sub_1005F0348()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_1005F0504();
    }

    (*(v0[8] + 8))(v0[9], v0[7]);
    v8 = sub_1007533A4();
    v0[18] = v8;
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_1005F0204;
    v10 = v0[10];
    v11 = v0[11];

    return AsyncStream.Iterator.next(isolation:)(v10, v8, &protocol witness table for MainActor, v11);
  }
}

uint64_t sub_1005F0504()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000C518(&qword_100940840);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_100742424();
  v6 = sub_1007533D4();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1007533B4();
  v7 = v0;
  v8 = sub_1007533A4();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  v9[5] = v5;
  v9[6] = ObjectType;
  sub_1000A0C18(0, 0, v4, &unk_1007CCD30, v9);
}

uint64_t sub_1005F064C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1007533B4();
  v5[4] = sub_1007533A4();
  v7 = sub_100753384();

  return _swift_task_switch(sub_1005F06E4, v7, v6);
}

uint64_t sub_1005F06E4()
{
  v1 = v0[3];
  v2 = v0[2];

  if (*(v2 + qword_1009407A0) == v1)
  {
    if (qword_100921A38 != -1)
    {
      swift_once();
    }

    v3 = sub_100752E44();
    sub_10000D0FC(v3, qword_100940750);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();
  }

  else
  {
    *(v2 + qword_1009407A0) = v0[3];
    sub_1005F0ED8();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1005F088C()
{
  sub_10000C518(&qword_100940830);
  v0 = sub_100752DE4();
  sub_1007422F4();
  v1 = sub_1007422E4();
  v8 = sub_1005F2EE8;
  v9 = v0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1005EBEE0;
  v7 = &unk_10087D440;
  v2 = _Block_copy(v6);

  [v1 getUpdatesWithCompletionBlock:v2];
  _Block_release(v2);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = sub_100016C60(0, &qword_100926D00);

  v4 = sub_100753774();
  v7 = v3;
  v8 = &protocol witness table for OS_dispatch_queue;
  v6[0] = v4;
  sub_100752D64();

  sub_10000C620(v6);
}

uint64_t sub_1005F0A74(unint64_t *a1)
{
  v2 = sub_1007521E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752224();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v12 = result;
  if (v10 >> 62)
  {
    result = sub_100754664();
    v13 = result;
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v3;
  v34 = v2;
  v31 = v5;
  v32 = v6;
  v29 = v9;
  v30 = v7;
  if (!v13)
  {
    goto LABEL_19;
  }

  if (v13 < 1)
  {
    __break(1u);
    return result;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = (v10 & 0xC000000000000001) != 0 ? sub_100754574() : *(v10 + 8 * v15 + 32);
    v17 = v16;
    v18 = [v16 updateState];
    if (!v18 || v18 == 3 || v18 == 4)
    {
      break;
    }

LABEL_8:
    if (v13 == ++v15)
    {
      goto LABEL_20;
    }
  }

  v19 = [v17 autoUpdateEnabled];

  if (v19)
  {
    goto LABEL_8;
  }

  if (!__OFADD__(v14++, 1))
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_19:
  v14 = 0;
LABEL_20:
  sub_100016C60(0, &qword_100926D00);
  v21 = sub_100753774();
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  *(v22 + 24) = v14;
  aBlock[4] = sub_1005F2F58;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10087D490;
  v23 = _Block_copy(aBlock);
  v24 = v12;

  v25 = v29;
  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750);
  sub_10002DDC8(&qword_1009236C0, &unk_10092F750);
  v26 = v31;
  v27 = v34;
  sub_1007543A4();
  sub_100753784();
  _Block_release(v23);

  (*(v33 + 8))(v26, v27);
  return (*(v30 + 8))(v25, v32);
}

void sub_1005F0E50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = qword_100940798;
    v3 = *(Strong + qword_100940798);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *&v1[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v1[v2] = 0;
  }
}

void sub_1005F0ED8()
{
  v1 = v0;
  v2 = *(v0 + qword_100940778);
  if (v2)
  {
    v3 = v2;
    v4 = sub_10074D7E4();
  }

  else
  {
    v4 = 0;
  }

  v5 = qword_1009407A0;
  v6 = *(v1 + qword_1009407A0);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
  }

  else if (qword_100921A38 == -1)
  {
    goto LABEL_6;
  }

  swift_once();
LABEL_6:
  v8 = sub_100752E44();
  sub_10000D0FC(v8, qword_100940750);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A79C0;
  sub_1007523A4();
  v9 = *(v1 + v5);
  v17 = &type metadata for Int;
  v16[0] = v9;
  sub_100752424();
  sub_10000C8CC(v16, &unk_100923520);
  sub_1007523A4();
  v17 = &type metadata for Int;
  v16[0] = v4;
  sub_100752424();
  sub_10000C8CC(v16, &unk_100923520);
  sub_1007523A4();
  v17 = &type metadata for Int;
  v16[0] = v7;
  sub_100752424();
  sub_10000C8CC(v16, &unk_100923520);
  sub_1007523A4();
  sub_100752CE4();

  if (v7 < 1)
  {
    v13 = 0;
    v15 = 0;
  }

  else
  {
    v10 = objc_opt_self();
    sub_100016C60(0, &qword_10092BE20);
    isa = sub_100753FA4(v7).super.super.isa;
    v12 = [v10 localizedStringFromNumber:isa numberStyle:1];

    v13 = sub_100753094();
    v15 = v14;
  }

  sub_1005ED674(v13, v15);
}

void sub_1005F1214(void *a1)
{
  v1 = a1;
  sub_1005F1264(1);
}

void sub_1005F1264(char a1)
{
  v2 = [objc_opt_self() sharedStore];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  v6[4] = sub_1005F3668;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10044D80C;
  v6[3] = &unk_10087D418;
  v5 = _Block_copy(v6);

  [v2 profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:v5 completion:44.0];
  _Block_release(v5);
}

void sub_1005F138C(void *a1, uint64_t a2, char a3)
{
  v5 = sub_100741454();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (!a1)
    {
      if (a3)
      {
        sub_1007413F4();
        sub_100741444();
        v25 = sub_1007413E4();
        v26 = *(v6 + 8);
        v26(v8, v5);
        v26(v11, v5);
        v27 = v13[qword_100940768];
        v13[qword_100940768] = 0;
        if (v27 == 1)
        {
          v28 = [v13 layer];
          [v28 setBorderColor:0];

          v29 = [v13 layer];
          [v29 setBorderWidth:0.0];

          [v13 setNeedsDisplay];
        }

        if (qword_100921A28 != -1)
        {
          swift_once();
        }

        [v13 setImage:qword_100940740 forState:0];
        [v13 alpha];
        if (v30 <= COERCE_DOUBLE(1))
        {
          if (v25)
          {
            v31 = objc_opt_self();
            v32 = swift_allocObject();
            *(v32 + 16) = v13;
            v47 = sub_1005F3644;
            v48 = v32;
            aBlock = _NSConcreteStackBlock;
            v44 = 1107296256;
            v45 = sub_1000CF7B0;
            v46 = &unk_10087D328;
            v33 = _Block_copy(&aBlock);
            v13 = v13;

            [v31 animateWithDuration:4 delay:v33 options:0 animations:0.33 completion:0.0];
            _Block_release(v33);
          }

          else
          {
            [v13 setAlpha:1.0];
          }
        }
      }

LABEL_23:

      return;
    }

    v14 = a1;
    [v13 intrinsicContentSize];
    UIGraphicsBeginImageContextWithOptions(v49, 0, 0.0);
    [v13 intrinsicContentSize];
    [v14 drawInRect:{0.0, 0.0, v15, v16}];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    sub_1007413F4();
    sub_100741444();
    v18 = sub_1007413E4();
    v19 = *(v6 + 8);
    v19(v8, v5);
    v19(v11, v5);
    [v13 setImage:v17 forState:0];
    [v13 alpha];
    if (v20 <= COERCE_DOUBLE(1))
    {
      if (v18)
      {
        v21 = objc_opt_self();
        v22 = swift_allocObject();
        *(v22 + 16) = v13;
        v47 = sub_1005F3644;
        v48 = v22;
        aBlock = _NSConcreteStackBlock;
        v44 = 1107296256;
        v45 = sub_1000CF7B0;
        v46 = &unk_10087D378;
        v23 = _Block_copy(&aBlock);
        v24 = v13;

        [v21 animateWithDuration:4 delay:v23 options:0 animations:0.33 completion:0.0];

        _Block_release(v23);
LABEL_16:
        v34 = v13[qword_100940768];
        v13[qword_100940768] = 1;
        if ((v34 & 1) == 0)
        {
          v35 = [v13 layer];
          if (qword_100921A30 != -1)
          {
            swift_once();
          }

          v36 = [qword_100940748 CGColor];
          [v35 setBorderColor:v36];

          v37 = [v13 layer];
          v38 = [v13 traitCollection];
          sub_100751364();
          v40 = v39;

          [v37 setBorderWidth:v40];
          [v13 setNeedsDisplay];
        }

        v41 = qword_100940780;
        if (*&v13[qword_100940780])
        {

          sub_100752274();

          *&v13[v41] = 0;

          return;
        }

        goto LABEL_23;
      }

      [v13 setAlpha:1.0];
    }

    goto LABEL_16;
  }
}

void sub_1005F1A24(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AccountButton();
  v4 = v7.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", v5);
  [v4 invalidateIntrinsicContentSize];
  v6 = [v4 backgroundImageForState:0];
  if (v6)
  {

    sub_1005F1264(1);
  }
}

id sub_1005F1AD0(char a1)
{
  v3 = [v1 layer];
  v4 = v3;
  if (a1)
  {
    if (qword_100921A30 != -1)
    {
      swift_once();
    }

    v5 = [qword_100940748 CGColor];
    [v4 setBorderColor:v5];

    v6 = [v1 layer];
    v7 = [v1 traitCollection];
    sub_100751364();
    v9 = v8;

    [v6 setBorderWidth:v9];
  }

  else
  {
    [v3 setBorderColor:0];

    v6 = [v1 layer];
    [v6 setBorderWidth:0.0];
  }

  return [v1 setNeedsDisplay];
}

void sub_1005F1C40(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for AccountButton();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "_dynamicUserInterfaceTraitDidChange");
  sub_1005F1AD0(v1[qword_100940768]);
}

uint64_t sub_1005F1CA8(char *a1)
{
  v2 = sub_100740EA4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100740E84();
  v6 = *&a1[qword_1009407A8];
  v7 = a1;
  if (v6)
  {
    sub_1005EF4B4();
  }

  else
  {
    sub_1005F088C();
  }

  return (*(v3 + 8))(v5, v2);
}

id sub_1005F1DA4(void *a1)
{
  v1 = a1;
  sub_1005F1E1C();
  v3 = v2;

  if (v3)
  {
    v4 = sub_100753064();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1005F1E1C()
{
  v1 = *(v0 + qword_100940798);
  if (v1)
  {
    v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_countLabel];
    v3 = v1;
    v4 = [v2 text];
    if (v4)
    {
      v5 = v4;
      v6 = sub_100753094();

      return v6;
    }
  }

  return 0;
}

uint64_t sub_1005F1EB4(void *a1, uint64_t a2, void *a3)
{
  sub_100016C60(0, &qword_1009402D0);
  v5 = sub_100752F44();
  v6 = a3;
  v7 = a1;
  sub_1005F2B2C(v5);
}

void sub_1005F1F50(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1005F2D38();
}

void sub_1005F1FE0()
{
  if (!qword_1009407E8)
  {
    sub_100742A34();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_1009407E8);
    }
  }
}

char *sub_1005F2040(int a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v6 = sub_100752AC4();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v56 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100752244();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v53 = &v49[-v12];
  v51 = sub_1007521E4();
  __chkstk_darwin(v51);
  v52 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10000C518(&qword_100940808);
  __chkstk_darwin(v14 - 8);
  v16 = &v49[-v15];
  *&v3[qword_100982868 + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[qword_100940768] = 0;
  *&v3[qword_100940778] = 0;
  *&v3[qword_100940780] = 0;
  sub_100741444();
  v17 = &v3[qword_100940790];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = 1;
  v17[16] = 1;
  *&v3[qword_100940798] = 0;
  *&v3[qword_1009407A0] = 0;
  *&v3[qword_1009407A8] = 0;
  v59 = a2;
  sub_1005F2988(a2, &v3[qword_100982860]);
  *&v3[qword_100940770] = a3;
  v19 = type metadata accessor for AccountButton();
  v67.receiver = v3;
  v67.super_class = v19;

  v20 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10074D7F4();
  sub_100752764();
  v21 = v20;
  sub_100752D34();
  v22 = qword_100940778;
  v23 = *&v21[qword_100940778];
  *&v21[qword_100940778] = aBlock;

  v24 = *&v21[v22];
  if (v24)
  {
    v25 = v24;
    sub_10074D7D4();

    sub_10000C518(&qword_1009262C8);
    sub_10002DDC8(&unk_100940820, &qword_1009262C8);
    sub_100752574();
    sub_100752584();

    sub_10000C620(&aBlock);
    v18 = 0;
  }

  v26 = sub_10000C518(&qword_100926298);
  (*(*(v26 - 8) + 56))(v16, v18, 1, v26);
  sub_10000C8CC(v16, &qword_100940808);
  v27 = v21;
  sub_100747764();
  [v27 setAlpha:0.0];
  v28 = v27;
  [v28 addTarget:v28 action:"goToAccount" forControlEvents:64];
  v29 = objc_opt_self();
  v30 = [v29 defaultCenter];
  [v30 addObserver:v28 selector:"profilePictureStoreDidChange" name:ASKProfilePictureStoreDidChange object:0];

  v31 = [objc_opt_self() sharedStore];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = 0;
  v65 = sub_1005F2A68;
  v66 = v33;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_10044D80C;
  v64 = &unk_10087D238;
  v34 = _Block_copy(&aBlock);

  [v31 profilePictureForAccountOwnerWithMonogramFallbackWithPictureDiameter:v34 completion:44.0];
  _Block_release(v34);

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v50 & 1;
  v65 = sub_1005F2A8C;
  v66 = v36;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_1000CF7B0;
  v64 = &unk_10087D288;
  _Block_copy(&aBlock);
  v60 = _swiftEmptyArrayStorage;
  sub_10002DCDC();

  sub_10000C518(&unk_10092F750);
  sub_10002DDC8(&qword_1009236C0, &unk_10092F750);
  sub_1007543A4();
  sub_100752284();
  swift_allocObject();
  v37 = sub_100752264();

  *&v28[qword_100940780] = v37;

  sub_100016C60(0, &qword_100926D00);
  v38 = sub_100753774();
  sub_100752234();
  v39 = v53;
  sub_1007522B4();
  v40 = v55;
  v41 = *(v54 + 8);
  v41(v10, v55);
  sub_100753744();

  v41(v39, v40);
  v42 = [v29 defaultCenter];
  sub_100745B24();
  v43 = v28;
  v44 = sub_100745B14();
  [v42 addObserver:v43 selector:"automaticUpdatesEnabledDidChange:" name:v44 object:0];

  v45 = [v43 imageView];
  if (v45)
  {
    v46 = v45;
    [v45 setContentMode:2];
  }

  [v43 setContentHorizontalAlignment:3];

  [v43 setContentVerticalAlignment:3];
  v47 = v56;
  sub_100752A54();
  sub_100753C74();
  (*(v57 + 8))(v47, v58);
  sub_1005EC830();

  sub_10000C8CC(v59, &unk_100940810);
  return v43;
}

uint64_t sub_1005F2988(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100940810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005F29F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005F2A30()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1005F2A74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005F2A98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005F2AF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1005F2B2C(uint64_t a1)
{
  if (qword_100921A38 != -1)
  {
    swift_once();
  }

  v2 = sub_100752E44();
  sub_10000D0FC(v2, qword_100940750);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5620;
  sub_100752434();
  sub_1007523A4();
  v5[3] = sub_10000C518(&unk_10093FDD0);
  v5[0] = a1;

  sub_100752424();
  sub_10000C8CC(v5, &unk_100923520);
  sub_100752CE4();

  sub_1007491E4();
  sub_1007526E4();
  v3 = v5[0];
  v4 = sub_1007491C4();

  if (v4)
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1005F2D38()
{
  if (qword_100921A38 != -1)
  {
    swift_once();
  }

  v0 = sub_100752E44();
  sub_10000D0FC(v0, qword_100940750);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_100752434();
  sub_1007523A4();
  sub_100752CE4();

  sub_1007491E4();
  sub_1007526E4();
  v1 = sub_1007491C4();

  if (v1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1005F2F20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005F2F94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A4868;

  return sub_1005F064C(a1, v4, v5, v6, v7);
}

uint64_t sub_1005F305C()
{
  v1 = sub_10000C518(&qword_100940848);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1005F3140(uint64_t a1)
{
  v4 = *(sub_10000C518(&qword_100940848) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000A27FC;

  return sub_1005EFF74(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1005F326C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1005F32B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A4868;

  return sub_1005EF764(a1, v4, v5, v7, v6);
}

uint64_t sub_1005F3374()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1005F33D0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1005F341C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A4868;

  return sub_1005EC968(a1, v4, v5, v7, v6);
}

uint64_t sub_1005F3508()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1005F3548(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A4868;

  return sub_1005ECE1C(a1, v4, v5, v6, v7);
}

__n128 sub_1005F367C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32);
  result = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets);
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

id sub_1005F36A0()
{
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) == 4)
  {
    v1 = [v0 contentView];
    [v1 setClipsToBounds:1];
  }

  return [v0 setNeedsLayout];
}

void sub_1005F371C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    (*((swift_isaMask & *v3) + 0xE0))(v8);
    v10 = (*(a2 + 160))(ObjectType, a2);
    v11 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
    *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = v10;
    (*((swift_isaMask & *v3) + 0x1D8))(v11);
    v12 = (*(a2 + 136))(ObjectType, a2);
    sub_1005F3E54(v12);
  }
}

void sub_1005F38BC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_10074F704();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a3, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  (*((swift_isaMask & *v3) + 0xE0))(v8);
  sub_1005F3E54(a2);
  v11 = [v3 backgroundView];
  if (v11)
  {
    v12 = v11;
    v13 = sub_10074FA74();
    if (!v13)
    {
      sub_100016C60(0, &qword_100923500);
      v13 = sub_100753E64();
    }

    v14 = v13;
    [v12 setBackgroundColor:v13];
  }
}

uint64_t sub_1005F3A68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v5 = (*((swift_isaMask & *v2) + 0x268))(a1, a2);
  v7 = v6;
  v8 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v9 = *v8;
  *v8 = v5;
  v8[1] = v7;
  sub_10001B5AC(v5);
  result = sub_1000164A8(v9);
  if (v5)
  {
    v5(result);
    return sub_1000164A8(v5);
  }

  return result;
}

uint64_t sub_1005F3B80()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100749574();
  }

  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  return sub_1000164A8(v2);
}

uint64_t sub_1005F3C20(char a1)
{
  v3 = a1 & 1;
  result = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) = a1;
  if (result == v3)
  {
    return result;
  }

  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory);
  if (v5 != 7)
  {
    v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
    if (v6 != 7)
    {
      switch(v5)
      {
        case 6:
          if (v6 == 6)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        case 5:
          if (v6 == 5)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        case 4:
          if (v6 == 4)
          {
            goto LABEL_20;
          }

LABEL_16:
          if (a1)
          {
            v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
          }

          else
          {
            v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory);
          }

          v8 = result;
          (*((swift_isaMask & *v1) + 0x1D0))(v7);
          result = v8;
          goto LABEL_20;
      }

      if (v5 != v6 || (v6 - 7) >= 0xFDu)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_20:
  v9 = *((swift_isaMask & *v1) + 0x1C8);

  return v9(result);
}

uint64_t sub_1005F3D7C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_100926C40);
}

uint64_t sub_1005F3DE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_100926C40);
  return swift_endAccess();
}

uint64_t sub_1005F3E54(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory) = a1;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) & 1) != 0 || ((*((swift_isaMask & *v1) + 0x138))())
  {
    v4 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) != 7)
    {
      goto LABEL_7;
    }

    v5 = 7;
  }

  else
  {
    v4 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
  }

  *(v1 + v4) = a1;
  (*((swift_isaMask & *v1) + 0x1D8))(v5);
LABEL_7:
  v6 = *((swift_isaMask & *v1) + 0x1D0);

  return v6(v3);
}

void sub_1005F3FA0()
{
  v1 = [v0 backgroundView];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v2 bounds];
  Width = CGRectGetWidth(v17);
  v10 = [v2 subviews];
  sub_100016C60(0, &qword_100922300);
  v11 = sub_1007532A4();

  if (v11 >> 62)
  {
    v12 = sub_100754664();
    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_4:
      if (v12 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v12; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = sub_100754574();
        }

        else
        {
          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        [v14 setFrame:{v4, v6, Width, v8}];
      }
    }
  }
}

void sub_1005F4144()
{
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = 0;
  }

  else
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    v1 = v3 == 2;
  }

  v4 = [v0 layer];
  v5 = v4;
  v6 = 0.0;
  v7 = 1.0;
  if (!v1)
  {
    v7 = 0.0;
  }

  [v4 setBorderWidth:v7];

  v8 = [v0 layer];
  if (v1)
  {
    v9 = [objc_opt_self() systemWhiteColor];
    v10 = [v9 colorWithAlphaComponent:0.1];

    v11 = [v10 CGColor];
    v6 = 20.0;
  }

  else
  {
    v11 = 0;
  }

  [v8 setBorderColor:v11];

  v12 = [v0 layer];
  [v12 setCornerRadius:v6];

  v13 = [v0 layer];
  [v13 setNeedsDisplay];
}

uint64_t sub_1005F431C()
{
  swift_getObjectType();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1005F7BF0;
  *(v4 + 24) = v3;
  v9[4] = sub_100045E0C;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10011B528;
  v9[3] = &unk_10087D7F0;
  v5 = _Block_copy(v9);
  v6 = v0;
  v7 = v1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005F44B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  swift_getKeyPath();
  sub_100746914();

  (*(v5 + 56))(v13, 0, 1, v4);
  (*((swift_isaMask & *v2) + 0xE0))(v13);
  type metadata accessor for TodayCardGridTracker();
  sub_100752764();
  sub_100752D34();
  v14 = sub_1001217C4();
  sub_1005F3E54(v14);
  sub_10074FBB4();
  sub_1005F7B68(&qword_100926C60, &type metadata accessor for TodayCard);
  v15 = sub_1007468B4();
  v16 = v21;
  if (!v21)
  {
  }

  (*((swift_isaMask & *v2) + 0xD8))(v15);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {

    return sub_10000C8CC(v10, &unk_100926C40);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v18 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v18 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v19 = *(v2 + *v18);
    if (v19 == 7)
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*((swift_isaMask & *v2) + 0x1E0))(v16, v19, v7, a2);
      [v2 setNeedsLayout];

      return (*(v5 + 8))(v7, v4);
    }
  }
}

void sub_1005F48A0(uint64_t a1, unsigned __int8 a2, char a3, uint64_t a4, NSString *a5)
{
  if (a3)
  {
    sub_1000392FC(a2, a4, a5);
  }

  else
  {
    sub_100039770(a2, a4, a5);
  }
}

id sub_1005F48BC()
{
  [v0 setAccessibilityTraits:UIAccessibilityTraitButton];
  [v0 setIsAccessibilityElement:0];
  v1 = [v0 contentView];
  [v1 setIsAccessibilityElement:1];

  v2 = [v0 contentView];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v11 = sub_1005F7B48;
  v12 = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1005F5F6C;
  v10 = &unk_10087D778;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v2 setAutomationElementsBlock:v4];
  _Block_release(v4);

  v6 = sub_10074F3E4();
  v10 = v6;
  v11 = sub_1005F7B68(&qword_100926D40, &type metadata accessor for Feature.iOS);
  v7 = sub_10000D134(v9);
  (*(*(v6 - 8) + 104))(v7, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v6);
  LOBYTE(v6) = sub_10074FC74();
  result = sub_10000C620(v9);
  if ((v6 & 1) == 0)
  {
    return [v5 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  return result;
}

__n128 sub_1005F4AD4(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_1005F4B04()
{
  v1 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((swift_isaMask & *v0) + 0xD8))(v6);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10000C8CC(v3, &unk_100926C40);
  }

  (*(v5 + 32))(v8, v3, v4);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v10 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v10 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v11 = *(v0 + *v10);
  if (v11 != 7)
  {
    v12 = [v0 traitCollection];
    sub_1006E8A04(v11, v12);
  }

  return (*(v5 + 8))(v8, v4);
}

double sub_1005F4D6C()
{
  v1 = sub_10074F704();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayCardGridTracker();
  sub_100752764();
  sub_100752D34();
  v5 = sub_1001217C4();
  sub_10074FBB4();
  sub_1005F7B68(&qword_100926C60, &type metadata accessor for TodayCard);
  sub_1007468B4();
  v6 = v13;
  if (v13)
  {
    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    sub_100746914();

    v7 = v13;
    v8 = (*(v0 + 528))(v6, v5, 0, v4, v13, 0);
  }

  else
  {
    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    sub_100746914();

    v9 = v13;
    sub_100039770(v5, v4, v13);
    v8 = v10;
  }

  (*(v2 + 8))(v4, v1);
  return v8;
}

void *sub_1005F4FF4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v54[1] = swift_getObjectType();
  v10 = sub_100743584();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v14 - 8);
  v16 = v54 - v15;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_itemLayoutContext;
  v18 = sub_1007469A4();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] = 0;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  v20 = sub_10074F704();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v5[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory] = 7;
  v5[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = 7;
  v5[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isTransitioning] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled] = 1;
  v21 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[32] = 1;
  swift_weakInit();
  v22 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock];
  v23 = sub_100743034();
  *v22 = 0;
  v22[1] = 0;
  v24 = [objc_allocWithZone(v23) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_shadowView] = v24;
  v25 = type metadata accessor for BaseTodayCardCollectionViewCell();
  v55.receiver = v5;
  v55.super_class = v25;
  v26 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v32 = [v30 layer];
  [v32 setAllowsGroupOpacity:0];

  v33 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_shadowView;
  v34 = qword_100920470;
  v35 = *(v30 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_shadowView);
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_10074F0C4();
  v37 = sub_10000D0FC(v36, qword_10097E110);
  v38 = *(v36 - 8);
  (*(v38 + 16))(v16, v37, v36);
  (*(v38 + 56))(v16, 0, 1, v36);
  sub_100743014();

  v39 = *(v30 + v33);
  (*(v11 + 104))(v13, enum case for CornerStyle.continuous(_:), v10);
  v40 = v39;
  sub_100743024();

  (*(v11 + 8))(v13, v10);
  [v30 insertSubview:*(v30 + v33) atIndex:0];
  v41 = [objc_allocWithZone(UIView) init];
  [v30 setBackgroundView:v41];

  v42 = [v30 backgroundView];
  [v42 setClipsToBounds:0];

  v43 = [v30 backgroundView];
  [v43 _setContinuousCornerRadius:20.0];

  v44 = [v30 backgroundView];
  if (v44)
  {
    v45 = v44;
    sub_100016C60(0, &qword_100923500);
    v46 = sub_100753E64();
    [v45 setBackgroundColor:v46];
  }

  v47 = [v30 contentView];
  v48 = [v47 layer];

  [v48 setAllowsGroupBlending:0];
  v49 = [v30 contentView];
  [v49 setClipsToBounds:1];

  v50 = [v30 backgroundView];
  if (v50)
  {
    v51 = [v50 layer];

    [v51 setAllowsGroupBlending:0];
  }

  (*((swift_isaMask & *v30) + 0x278))();
  sub_10000C518(&unk_1009249D0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1007A5A00;
  *(v52 + 32) = sub_100751554();
  *(v52 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v30;
}

uint64_t sub_1005F5760()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for BaseTodayCardCollectionViewCell();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    [v0 bounds];
    sub_100749554();
  }

  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_shadowView);
  [v1 bounds];
  [v2 setFrame:?];
  v3 = [v1 sendSubviewToBack:v2];
  (*((swift_isaMask & *v1) + 0x1A8))(v3);
  v4 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {

    v6(v7);
    return sub_1000164A8(v6);
  }

  return result;
}

id sub_1005F59F4(void *a1, void *a2)
{
  [a1 frame];
  [a2 setFrame:?];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v5 = sub_1005F3C20(*(a1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded));
  v6 = (*((swift_isaMask & *a1) + 0x138))(v5);
  v7 = (*((swift_isaMask & *a2) + 0x140))(v6 & 1);
  v8 = (*((swift_isaMask & *a1) + 0x150))(v7);
  (*((swift_isaMask & *a2) + 0x158))(v8 & 1);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v10 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
  *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory);
  (*((swift_isaMask & *a2) + 0x1D8))(v10);
  if (*(a1 + v4))
  {
    v11 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_1005F3E54(*(a1 + v11));
  v13 = (*((swift_isaMask & *a1) + 0x190))(v12);
  (*((swift_isaMask & *a2) + 0x198))(v13 & 1);
  v14 = sub_1005F7B68(&qword_1009408F0, type metadata accessor for BaseTodayCardCollectionViewCell);
  (*((swift_isaMask & *a2) + 0x1E8))(a1, v14, 0);

  return [a2 layoutIfNeeded];
}

_BYTE *sub_1005F5D10(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v7 = v3[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v8 = type metadata accessor for BaseTodayCardCollectionViewCell();
  if (v7)
  {
    v12.receiver = v3;
    v12.super_class = v8;
    return objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  }

  else
  {
    v13.receiver = v3;
    v13.super_class = v8;
    result = objc_msgSendSuper2(&v13, "hitTest:withEvent:", a1, a2, a3);
    if (result)
    {
      v10 = result;
      [v3 bounds];
      v14.x = a2;
      v14.y = a3;
      if (!CGRectContainsPoint(v15, v14))
      {
        return v10;
      }

      sub_100016C60(0, &qword_100922300);
      if (sub_100753FC4())
      {
        return v10;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return v10;
      }

      type metadata accessor for SearchAdTransparencyLabel();
      if (swift_dynamicCastClass())
      {
        return v10;
      }

      else
      {

        v11 = v3;
        return v3;
      }
    }
  }

  return result;
}

char *sub_1005F5ED8(void *a1)
{
  v1 = [a1 contentView];
  v2 = [v1 subviews];

  sub_100016C60(0, &qword_100922300);
  v3 = sub_1007532A4();

  v4 = sub_100157E28(v3);

  return v4;
}

Class sub_1005F5F6C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4.super.isa = sub_100753294().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

id sub_1005F5FE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BaseTodayCardCollectionViewCell()
{
  result = qword_1009408A0;
  if (!qword_1009408A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005F6114()
{
  sub_100291800(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_100291800(319, qword_1009265D0, &type metadata accessor for PageGrid);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1005F62A4()
{
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  return *(v0 + *v1);
}

double sub_1005F635C@<D0>(uint64_t a1@<X8>)
{
  (*((swift_isaMask & *v1) + 0x170))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1005F6548@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_100923200);
}

uint64_t sub_1005F65B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_100923200);
  return swift_endAccess();
}

uint64_t sub_1005F6684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1005F67E0()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1005F6840(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

uint64_t sub_1005F68D8()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_1005F6934(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

uint64_t sub_1005F6B4C(void *a1)
{
  a1[1] = sub_1005F7B68(&qword_1009408B8, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[2] = sub_1005F7B68(&qword_1009408C0, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[3] = sub_1005F7B68(&qword_1009408C8, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[4] = sub_1005F7B68(&qword_1009408D0, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[5] = sub_1005F7B68(&qword_1009408D8, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[6] = sub_1005F7B68(&qword_1009408E0, type metadata accessor for BaseTodayCardCollectionViewCell);
  result = sub_1005F7B68(&qword_1009408E8, type metadata accessor for BaseTodayCardCollectionViewCell);
  a1[7] = result;
  return result;
}

uint64_t sub_1005F6CA0(uint64_t a1, void *a2)
{
  v4 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016B4C(a1, v6, &unk_100926C40);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000C8CC(v6, &unk_100926C40);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_10074F694();
  sub_10074F694();
  [a2 layoutDirection];
  sub_1007539B4();
  return (*(v8 + 8))(v10, v7);
}

id sub_1005F6EC0()
{
  v1 = v0;
  v2 = sub_10074F704();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v42 - v14;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v17 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_shadowView);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) != 1)
  {
    [v17 setHidden:{0, v13}];
    v22 = [v0 backgroundView];
    if (v22)
    {
      v23 = v22;
      [v22 _setContinuousCornerRadius:20.0];
    }

    v24 = [v1 contentView];
    [v24 _setContinuousCornerRadius:20.0];

    (*((swift_isaMask & *v1) + 0xD8))();
    if ((*(v3 + 48))(v11, 1, v2))
    {
      v21 = v11;
      goto LABEL_10;
    }

    (*(v3 + 16))(v5, v11, v2);
    sub_10000C8CC(v11, &unk_100926C40);
    if (*(v1 + v16))
    {
      v34 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v34 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v35 = *(v1 + *v34);
    v36 = [v1 traitCollection];
    if (v35 != 4)
    {
      sub_10074F694();
      sub_10074F694();
    }

    [v36 layoutDirection];
    sub_1007539B4();
    v27 = v37;
    v29 = v38;
    v31 = v39;
    v33 = v40;

    (*(v3 + 8))(v5, v2);
LABEL_18:
    [v1 setLayoutMargins:{v27, v29, v31, v33}];
    return [v1 setNeedsLayout];
  }

  [v17 setHidden:{1, v13}];
  v18 = [v0 backgroundView];
  if (v18)
  {
    v19 = v18;
    [v18 _setContinuousCornerRadius:0.0];
  }

  v20 = [v1 contentView];
  [v20 _setContinuousCornerRadius:0.0];

  (*((swift_isaMask & *v1) + 0xD8))();
  if (!(*(v3 + 48))(v15, 1, v2))
  {
    (*(v3 + 16))(v8, v15, v2);
    sub_10000C8CC(v15, &unk_100926C40);
    v25 = [v1 traitCollection];
    sub_10074F694();
    sub_10074F694();
    [v25 layoutDirection];
    sub_1007539B4();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    (*(v3 + 8))(v8, v2);
    goto LABEL_18;
  }

  v21 = v15;
LABEL_10:
  sub_10000C8CC(v21, &unk_100926C40);
  return [v1 setNeedsLayout];
}

uint64_t sub_1005F73F0(uint64_t result, char a2)
{
  if (result)
  {

    sub_10074FB64();
    v3 = sub_1007451F4();

    if (v3 <= 6)
    {
      if (v3 > 3)
      {
        if (v3 == 4)
        {

          v4 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell();
          v5 = &unk_100937FC8;
          v6 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell;
          goto LABEL_37;
        }

        if (v3 != 5)
        {
          goto LABEL_16;
        }

        if (a2 == 4)
        {
          goto LABEL_35;
        }

        v8 = type metadata accessor for RiverTodayCardCollectionViewCell();
        goto LABEL_36;
      }

      if (v3 >= 2)
      {
        if (v3 != 2)
        {
          if (v3 != 3)
          {
            goto LABEL_32;
          }

LABEL_16:

          v4 = type metadata accessor for MultiAppFallbackCardCollectionViewCell();
          v5 = &unk_100937FB0;
          v6 = type metadata accessor for MultiAppFallbackCardCollectionViewCell;
          goto LABEL_37;
        }

        if (a2 == 4)
        {
          sub_10074FB64();
          sub_100747CA4();
          if (swift_dynamicCastClass())
          {
            v7 = sub_100747C64();

            if (v7)
            {
              v4 = type metadata accessor for ListTodayCardCollectionViewCell();
              v5 = &unk_1009295A0;
              v6 = type metadata accessor for ListTodayCardCollectionViewCell;
              goto LABEL_37;
            }
          }

          else
          {
          }

LABEL_35:
          v8 = type metadata accessor for MultiAppFallbackCardCollectionViewCell();
          goto LABEL_36;
        }

        v8 = type metadata accessor for ListTodayCardCollectionViewCell();
LABEL_36:
        v4 = v8;
        v5 = &unk_1009408F0;
        v6 = type metadata accessor for BaseTodayCardCollectionViewCell;
        goto LABEL_37;
      }

LABEL_21:

      v4 = type metadata accessor for StoryCardCollectionViewCell();
      v5 = &unk_100932FB8;
      v6 = type metadata accessor for StoryCardCollectionViewCell;
      goto LABEL_37;
    }

    if (v3 > 10)
    {
      switch(v3)
      {
        case 11:

          v4 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell();
          v5 = &unk_100937FA0;
          v6 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell;
          goto LABEL_37;
        case 12:

          v4 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
          v5 = &unk_100937F98;
          v6 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell;
          goto LABEL_37;
        case 13:

          v4 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
          v5 = &unk_100937F90;
          v6 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell;
          goto LABEL_37;
      }
    }

    else
    {
      switch(v3)
      {
        case 7:

          v4 = type metadata accessor for GridTodayCardCollectionViewCell();
          v5 = &unk_100937FB8;
          v6 = type metadata accessor for GridTodayCardCollectionViewCell;
          goto LABEL_37;
        case 8:
          goto LABEL_21;
        case 10:

          v4 = type metadata accessor for AppEventTodayCardCollectionViewCell();
          v5 = &unk_100937FA8;
          v6 = type metadata accessor for AppEventTodayCardCollectionViewCell;
LABEL_37:
          sub_1005F7B68(v5, v6);
          return v4;
      }
    }

LABEL_32:

    return 0;
  }

  return result;
}

uint64_t sub_1005F7760(uint64_t a1, char a2, void *a3)
{
  v6 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_10074F704();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016B4C(a1, v8, &unk_100926C40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10000C8CC(v8, &unk_100926C40);
  }

  (*(v10 + 32))(v12, v8, v9);
  if (a2 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [a3 layoutDirection];
  sub_1007539B4();
  return (*(v10 + 8))(v12, v9);
}

void sub_1005F799C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_itemLayoutContext;
  v2 = sub_1007469A4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  v4 = sub_10074F704();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled) = 1;
  v5 = v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 1;
  swift_weakInit();
  v6 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  *v6 = 0;
  v6[1] = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1005F7B10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005F7B50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005F7B68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005F7BB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1005F7C10(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_100754724();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v59 - v16;
  v18 = *(v5 + 83);
  v19 = *(v5 + 81);
  if ((v18 & 1) != 0 || v19 != 6)
  {
    v22 = v19 == 4;
    v23 = v19 == 6;
    v21 = *(v6 + 8);
  }

  else
  {
    v20 = sub_100753804();
    v21 = *(v5 + 8);
    if ((v20 & 1) == 0)
    {
      v67.origin.x = a2;
      v67.origin.y = a3;
      v67.size.width = a4;
      v67.size.height = a5;
      v68 = CGRectInset(v67, *(v5 + 8), 0.0);
      v22 = 0;
      if (v68.size.width * *(v5 + 32) > *(v5 + 40))
      {
        width = v68.size.width * *(v5 + 32);
      }

      else
      {
        width = *(v5 + 40);
      }

      v25 = 1;
      goto LABEL_13;
    }

    v22 = 0;
    v23 = 1;
  }

  v64.origin.x = a2;
  v64.origin.y = a3;
  v64.size.width = a4;
  v64.size.height = a5;
  v65 = CGRectInset(v64, v21, 0.0);
  width = v65.size.width;
  if (!v23)
  {
    v66.origin.x = a2;
    v66.origin.y = a3;
    v66.size.width = a4;
    v66.size.height = a5;
    v25 = 0;
    v26 = CGRectGetWidth(v66) - width - v21;
    goto LABEL_14;
  }

  v25 = 0;
LABEL_13:
  v69.origin.x = a2;
  v69.origin.y = a3;
  v69.size.width = a4;
  v69.size.height = a5;
  v26 = (CGRectGetWidth(v69) - width - v21) * 0.5;
LABEL_14:
  v27 = *(v6 + 84);
  v28 = *(v6 + 56);
  v63 = v21;
  if ((v27 & 1) == 0)
  {
    LODWORD(v61) = v18;
    *&v59[1] = a1;
    v30 = *(v13 + 104);
    v31 = v17;
    v59[0] = v26;
    v30(v17, enum case for FloatingPointRoundingRule.up(_:), v12);
    v32 = v62;
    v30(v62, enum case for FloatingPointRoundingRule.down(_:), v12);
    sub_100753AF4();
    v34 = v33;
    v36 = v35;
    v60 = a2;
    v37 = a3;
    v38 = a4;
    v39 = a5;
    v40 = width;
    v42 = v41;
    v44 = v43;
    v45 = *(v13 + 8);
    v45(v32, v12);
    v45(v31, v12);
    v18 = v61;
    v70.origin.x = v34;
    v70.origin.y = v36;
    v70.size.width = v42;
    width = v40;
    a5 = v39;
    a4 = v38;
    a3 = v37;
    a2 = v60;
    v70.size.height = v44;
    CGRectInset(v70, v59[0], 0.0);
    sub_100750B24();
    v62 = v46;
    if (v25)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [v28 bounds];
  v62 = v29;
  if ((v25 & 1) == 0)
  {
LABEL_18:
    v71.origin.x = a2;
    v71.origin.y = a3;
    v71.size.width = a4;
    v71.size.height = a5;
    width = CGRectGetWidth(v71);
  }

LABEL_19:
  v72.origin.x = a2;
  v72.origin.y = a3;
  v72.size.width = a4;
  v72.size.height = a5;
  Height = CGRectGetHeight(v72);
  v48 = *(v6 + 64);
  if (v48)
  {
    [*(v6 + 64) sizeThatFits:{width, Height}];
    v61 = v49;
    v51 = v50;
    if (*&v48[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView])
    {
      v52 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v61 = 0;
    v51 = 0.0;
  }

  v52 = 1;
LABEL_24:
  v53 = *(v6 + 82);
  v60 = v51;
  if (v53 == 4)
  {
    if (((v22 | v18 ^ 1 | v52) & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_29:
    v74.origin.x = a2;
    v74.origin.y = a3;
    v74.size.width = a4;
    v74.size.height = a5;
    CGRectGetMaxY(v74);
    v75.origin.x = a2;
    v75.origin.y = a3;
    v75.size.width = a4;
    v75.size.height = a5;
    CGRectGetMaxY(v75);
    if (v25)
    {
      goto LABEL_33;
    }

LABEL_30:
    v54 = a2;
    v55 = a3;
    v56 = a4;
    v57 = a5;
    if (v18)
    {
      CGRectGetMinX(*&v54);
    }

    else
    {
      CGRectGetMidX(*&v54);
    }

    goto LABEL_33;
  }

  if ((v22 | v52) == 1)
  {
    goto LABEL_29;
  }

LABEL_26:
  v73.origin.x = a2;
  v73.origin.y = a3;
  v73.size.width = a4;
  v73.size.height = a5;
  CGRectGetMaxY(v73);
  if (!v25)
  {
    goto LABEL_30;
  }

LABEL_33:
  sub_100753AA4();
  result = [v28 setFrame:?];
  if (v48)
  {
    sub_100753AA4();
    return [v48 setFrame:?];
  }

  return result;
}

__n128 sub_1005F8154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1005F8178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 85))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005F81C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 85) = 1;
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

    *(result + 85) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005F8230(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005F8250(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_1005F8298(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_100746BA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_overlayStyle;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1005FA594(&qword_10093B418, &type metadata accessor for MediaOverlayStyle);
  LOBYTE(v11) = sub_100753014();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_1005F89B8();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

char *sub_1005F84A8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100747064();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_overlayStyle;
  v19 = enum case for MediaOverlayStyle.matchSystem(_:);
  v20 = sub_100746BA4();
  (*(*(v20 - 8) + 104))(&v5[v18], v19, v20);
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_overlayView;
  *&v5[v21] = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_lockupView;
  *&v5[v22] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100921A40 != -1)
  {
    swift_once();
  }

  sub_1005FA2FC(&qword_1009828D0, &v5[OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_metrics]);
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v27 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_overlayView;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_overlayView]];
  [*&v27[v28] _setCornerRadius:1 continuous:12 maskedCorners:20.0];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_lockupView;
  v30 = qword_100920F60;
  v31 = *(*&v27[OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_100750534();
  v33 = sub_10000D0FC(v32, qword_100980B70);
  v34 = *(v32 - 8);
  (*(v34 + 16))(v17, v33, v32);
  (*(v34 + 56))(v17, 0, 1, v32);
  sub_100745BA4();

  v35 = qword_100921A48;
  v36 = *&v27[v29];
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_10000D0FC(v11, qword_1009408F8);
  (*(v12 + 16))(v14, v37, v11);
  v38 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v12 + 24))(&v36[v38], v14, v11);
  swift_endAccess();
  [v36 setNeedsLayout];

  (*(v12 + 8))(v14, v11);
  [*&v27[v29] setLayoutMargins:{12.0, 12.0, 12.0, 12.0}];
  v39 = [*&v27[v28] contentView];
  [v39 addSubview:*&v27[v29]];

  sub_1005F89B8();
  return v27;
}

void sub_1005F89B8()
{
  v1 = sub_100746BA4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v25 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_overlayView];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_overlayStyle;
  swift_beginAccess();
  v11 = *(v2 + 16);
  v11(v9, &v0[v10], v1);
  sub_1005FA334(v9);
  v27 = *(v2 + 8);
  v27(v9, v1);
  sub_100016C60(0, &qword_10092BE10);
  isa = sub_100753294().super.isa;
  v13 = v6;
  v14 = v26;

  [v25 setBackgroundEffects:isa];

  v11(v13, &v0[v10], v1);
  v11(v14, v13, v1);
  v15 = (*(v2 + 88))(v14, v1);
  if (v15 == enum case for MediaOverlayStyle.dark(_:))
  {
    v16 = 2;
    v27(v13, v1);
  }

  else if (v15 == enum case for MediaOverlayStyle.light(_:))
  {
    v16 = 1;
    v27(v13, v1);
  }

  else
  {
    v17 = v27;
    if (v15 == enum case for MediaOverlayStyle.matchSystem(_:))
    {
      v18 = [v0 traitCollection];
      v16 = [v18 userInterfaceStyle];
    }

    else
    {
      v27(v14, v1);
      v16 = 1;
    }

    v17(v13, v1);
  }

  v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_lockupView];
  [v19 setOverrideUserInterfaceStyle:v16];
  v20 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton];
  if (v16 == 2)
  {
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 whiteColor];
  }

  else
  {
    v24 = v20;
    v23 = 0;
  }

  [v20 setTintColor:v23];
}

void sub_1005F8D5C(void *a1)
{
  v2 = v1;
  v18 = a1;
  v3 = sub_100743584();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1005FA594(&qword_1009230E0, type metadata accessor for VideoView);
    v9 = [v8 superview];
    if (!v9)
    {
LABEL_6:

      goto LABEL_7;
    }

    v10 = v9;
    sub_100016C60(0, &qword_100922300);
    v11 = v1;
    v12 = sub_100753FC4();

    if (v12)
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v8 = v13;
        [v13 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    (*(v4 + 104))(v6, enum case for CornerStyle.continuous(_:), v3);
    sub_100746E34();
    (*(v4 + 8))(v6, v3);
    [v2 addSubview:v15];
    [v2 sendSubviewToBack:v15];
    [v2 setNeedsLayout];
  }

  else
  {
    v16 = v18;
  }
}

void (*sub_1005F8FD0(uint64_t *a1))(void ***a1, char a2)
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
  *(v3 + 8) = v1;
  v5 = sub_100743584();
  v4[2] = v5;
  v6 = *(v5 - 8);
  v4[3] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_videoView;
  v4[4] = v7;
  v4[5] = v8;
  *v4 = swift_unknownObjectWeakLoadStrong();
  return sub_1005F90B8;
}

void sub_1005F90B8(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1005FA594(&qword_1009230E0, type metadata accessor for VideoView);
      v7 = v4;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        v10 = v3[1];
        sub_100016C60(0, &qword_100922300);
        v11 = v10;
        v12 = sub_100753FC4();

        if (v12)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v4;
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v31 = v3[3];
      v30 = v3[4];
      v33 = v3[1];
      v32 = v3[2];
      v31[13](v30, enum case for CornerStyle.continuous(_:), v32);
      sub_100746E34();
      (v31[1])(v30, v32);
      [v33 addSubview:v29];
      [v33 sendSubviewToBack:v29];
      [v33 setNeedsLayout];
    }

    v27 = v3[4];

    v4 = *v3;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_1005FA594(&qword_1009230E0, type metadata accessor for VideoView);
    v15 = [v6 superview];
    if (v15)
    {
      v16 = v15;
      v17 = v3[1];
      sub_100016C60(0, &qword_100922300);
      v18 = v17;
      v19 = sub_100753FC4();

      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_13;
      }

      v6 = v20;
      [v20 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v24 = v3[3];
    v23 = v3[4];
    v26 = v3[1];
    v25 = v3[2];
    v24[13](v23, enum case for CornerStyle.continuous(_:), v25);
    sub_100746E34();
    (v24[1])(v23, v25);
    [v26 addSubview:v22];
    [v26 sendSubviewToBack:v22];
    [v26 setNeedsLayout];
  }

  v27 = v3[4];
LABEL_21:

  free(v27);

  free(v3);
}

void sub_1005F9454()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_lockupView];
  sub_1007477B4();
  [v1 sizeThatFits:{v2, v3}];
  v5 = v4;
  v15 = v6;
  sub_1007477B4();
  sub_100753AE4();
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_overlayView];
  sub_1007477B4();
  sub_100753B24();
  [v7 setFrame:?];
  [v1 setFrame:{0.0, 0.0, v5, v15}];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1007477B4();
    [v9 setFrame:?];
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = (v10 + qword_100982238);
    v13 = *(v10 + qword_100982238);
    v14 = *(v10 + qword_100982238 + 16);
    *v12 = 0.0;
    v12[1] = 0.0;
    v12[2] = v15;
    v12[3] = 0.0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(0, v13), vceqq_f64(*&v15, v14)))) & 1) == 0)
    {
      sub_10051B68C();
    }
  }
}

uint64_t type metadata accessor for VideoCardView()
{
  result = qword_100940938;
  if (!qword_100940938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005F9748()
{
  result = sub_100746BA4();
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

uint64_t (*sub_1005F9820(uint64_t **a1))()
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
  v2[4] = sub_1005F8FD0(v2);
  return sub_10001BB78;
}

double sub_1005F9890(double a1)
{
  swift_getObjectType();

  return sub_1005FA0C8(a1);
}

uint64_t sub_1005F98FC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1005FA594(&qword_100940960, type metadata accessor for VideoCardView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1005F9970(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1005FA594(&qword_100940960, type metadata accessor for VideoCardView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1005F99FC(uint64_t *a1))()
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
  sub_1005FA594(&qword_100940960, type metadata accessor for VideoCardView);
  *(v3 + 32) = sub_100747DB4();
  return sub_1000181A8;
}

void sub_1005F9BF0()
{
  qword_1009828E8 = &type metadata for CGFloat;
  unk_1009828F0 = &protocol witness table for CGFloat;
  qword_1009828D0 = 0x4066000000000000;
}

uint64_t sub_1005F9C18()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_1009408F8);
  sub_10000D0FC(v0, qword_1009408F8);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005F9D7C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746F44();
  sub_100746F84();
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_1009809C0);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v18 = v6 + 16;
  v19 = v7;
  v7(v3, v5, v4);
  v8 = v1[13];
  v17 = enum case for FontSource.useCase(_:);
  v16 = v8;
  v8(v3);
  v9 = sub_100750B04();
  v24 = v9;
  v25 = &protocol witness table for StaticDimension;
  sub_10000D134(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v10 = sub_10000D134(v20);
  v11 = v1[2];
  v11(v10, v3, v0);
  sub_100750B14();
  v12 = v1[1];
  v12(v3, v0);
  sub_100746F64();
  if (qword_100920F60 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v4, qword_100980B70);
  v19(v3, v13, v4);
  v16(v3, v17, v0);
  v24 = v9;
  v25 = &protocol witness table for StaticDimension;
  sub_10000D134(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v14 = sub_10000D134(v20);
  v11(v14, v3, v0);
  sub_100750B14();
  v12(v3, v0);
  sub_100747034();
  sub_100747024();
  sub_100747004();
  sub_100747024();
  sub_100746FF4();
  v24 = sub_1007507D4();
  v25 = &protocol witness table for ZeroDimension;
  sub_10000D134(v23);
  sub_1007507C4();
  sub_100746F54();
  return sub_100746FA4();
}

double sub_1005FA0C8(double a1)
{
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007538B4();
  type metadata accessor for SmallLockupView();
  if (qword_100921A48 != -1)
  {
    swift_once();
  }

  v7 = sub_100747064();
  v8 = sub_10000D0FC(v7, qword_1009408F8);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1001CF184(v8, v6);
  swift_unknownObjectRelease();
  if (qword_100921A40 != -1)
  {
    swift_once();
  }

  sub_1005FA2FC(&qword_1009828D0, v11);
  sub_10000C888(v11, v11[3]);
  sub_100536120();
  sub_100750564();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  sub_10000C620(v11);
  return a1;
}

uint64_t sub_1005FA334(uint64_t a1)
{
  v2 = sub_100746BA4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MediaOverlayStyle.dark(_:))
  {
    v8 = [objc_opt_self() _gkGameLayerModuleVisualEffect];
    sub_100016C60(0, &qword_10092BE10);
    v9 = sub_1007532A4();
  }

  else
  {
    if (v7 == enum case for MediaOverlayStyle.light(_:))
    {
      sub_10000C518(&unk_1009231A0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007A5CF0;
      v10 = [objc_opt_self() effectWithStyle:11];
    }

    else
    {
      v11 = enum case for MediaOverlayStyle.matchSystem(_:);
      v12 = v7;
      sub_10000C518(&unk_1009231A0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007A5CF0;
      v13 = objc_opt_self();
      if (v12 != v11)
      {
        *(v9 + 32) = [v13 effectWithStyle:11];
        (*(v3 + 8))(v6, v2);
        return v9;
      }

      v10 = [v13 effectWithStyle:6];
    }

    *(v9 + 32) = v10;
  }

  return v9;
}

uint64_t sub_1005FA594(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005FA5DC()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_overlayStyle;
  v2 = enum case for MediaOverlayStyle.matchSystem(_:);
  v3 = sub_100746BA4();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_overlayView;
  *(v0 + v4) = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension13VideoCardView_lockupView;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100754644();
  __break(1u);
}

id sub_1005FA888()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 panGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout()
{
  result = qword_100940998;
  if (!qword_100940998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005FAA30()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  objc_msgSendSuper2(&v7, "prepareLayout");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 panGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 panGestureRecognizer];

    [v6 addTarget:v0 action:"panGestureRecognizedBy:"];
  }
}

void sub_1005FAC3C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v10 - 8);
  v12 = v74 - v11;
  v13 = sub_1007417F4();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v4 collectionView];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  [v19 bounds];
  v20 = [v4 layoutAttributesForElementsInRect:?];
  if (!v20 || ((v21 = v20, sub_1000E5AA4(), v22 = sub_1007532A4(), v21, v22 >> 62) ? (v23 = sub_100754664()) : (v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v23))
  {

LABEL_14:
    v36 = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
    v78.receiver = v5;
    v78.super_class = v36;
    objc_msgSendSuper2(&v78, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
    return;
  }

  v24 = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout();
  v77.receiver = v5;
  v77.super_class = v24;
  objc_msgSendSuper2(&v77, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
  v26 = v25;
  v27 = [v19 numberOfItemsInSection:0];
  v28 = v27 - 1;
  if (v27 < 1)
  {
    goto LABEL_23;
  }

  v74[1] = v26;
  [v19 frame];
  v30 = v29 + a1;
  [v5 collectionViewContentSize];
  if (v30 >= v31)
  {
    goto LABEL_23;
  }

  v32 = [v19 traitCollection];
  v33 = sub_1007537F4();

  v76 = v33;
  if (v33)
  {
    v34 = v28;
  }

  else
  {
    v34 = 0;
  }

  if (a1 > 0.0)
  {
    v35 = 0.0;
    v75 = xmmword_1007A6580;
    do
    {
      sub_10000C518(&qword_1009253E0);
      v38 = swift_allocObject();
      *(v38 + 16) = v75;
      *(v38 + 32) = 0;
      *(v38 + 40) = v34;
      sub_1007416F4();
      isa = sub_100741704().super.isa;
      (*(v14 + 8))(v17, v13);
      v40 = [v5 layoutAttributesForItemAtIndexPath:isa];

      if (!v40)
      {
        goto LABEL_23;
      }

      [v40 bounds];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v79.origin.x = v42;
      v79.origin.y = v44;
      v79.size.width = v46;
      v79.size.height = v48;
      Width = CGRectGetWidth(v79);
      if (v35 + Width * 0.5 >= a1)
      {
        break;
      }

      [v5 minimumLineSpacing];
      if (v76)
      {
        v37 = __OFSUB__(v34--, 1);
        if (v37)
        {
          __break(1u);
          goto LABEL_45;
        }
      }

      else
      {
        v37 = __OFADD__(v34++, 1);
        if (v37)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      v35 = v35 + Width + v50;
    }

    while (v35 < a1);
  }

  v51 = OBJC_IVAR____TtC22SubscribePageExtension41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
  swift_beginAccess();
  sub_10003E0A0(v5 + v51, v12);
  if ((*(v14 + 48))(v12, 1, v13))
  {
    sub_1005BFA50(v12);
    v52 = &selRef_viewSafeAreaInsetsDidChange;
    goto LABEL_40;
  }

  v53 = sub_100741774();
  sub_1005BFA50(v12);
  v52 = &selRef_viewSafeAreaInsetsDidChange;
  if (v34 != v53)
  {
    goto LABEL_40;
  }

  if (!((a3 >= 0.0) | v76 & 1))
  {
LABEL_31:
    if (!__OFSUB__(v34, 1))
    {
      v34 = (v34 - 1) & ~((v34 - 1) >> 63);
      goto LABEL_40;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (a3 <= 0.0)
  {
    if (a3 < 0.0 && ((v76 ^ 1) & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_40:
    sub_10000C518(&qword_1009253E0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1007A6580;
    *(v55 + 32) = 0;
    *(v55 + 40) = v34;
    sub_1007416F4();
    v56 = sub_100741704().super.isa;
    (*(v14 + 8))(v17, v13);
    v57 = [v5 layoutAttributesForItemAtIndexPath:v56];

    if (v57)
    {
      [v57 frame];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;

      [v19 v52[472]];
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;

      v80.origin.x = v67;
      v80.origin.y = v69;
      v80.size.width = v71;
      v80.size.height = v73;
      CGRectGetWidth(v80);
      v81.origin.x = v59;
      v81.origin.y = v61;
      v81.size.width = v63;
      v81.size.height = v65;
      CGRectGetWidth(v81);

      return;
    }

LABEL_23:

    return;
  }

  if (v76)
  {
    goto LABEL_31;
  }

LABEL_35:
  v54 = [v19 numberOfItemsInSection:0];
  if (__OFSUB__(v54, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!__OFADD__(v34, 1))
  {
    if (v34 + 1 >= v54 - 1)
    {
      v34 = v54 - 1;
    }

    else
    {
      ++v34;
    }

    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
}

id sub_1005FB2E0(void *a1)
{
  v3 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v30 - v8;
  result = [a1 state];
  if (result == 1)
  {
    v11 = [v1 collectionView];
    if (v11)
    {
      v12 = v11;
      v13 = [v1 collectionView];
      if (v13)
      {
        v14 = v13;
        [v14 bounds];
        MidX = CGRectGetMidX(v31);
        [v14 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v32.origin.x = v17;
        v32.origin.y = v19;
        v32.size.width = v21;
        v32.size.height = v23;
        MidY = CGRectGetMidY(v32);
      }

      else
      {
        MidX = 0.0;
        MidY = 0.0;
      }

      v26 = [v12 indexPathForItemAtPoint:{MidX, MidY}];

      if (v26)
      {
        sub_100741744();

        v27 = sub_1007417F4();
        (*(*(v27 - 8) + 56))(v5, 0, 1, v27);
      }

      else
      {
        v28 = sub_1007417F4();
        (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
      }

      sub_10003E130(v5, v9);
    }

    else
    {
      v25 = sub_1007417F4();
      (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    }

    v29 = OBJC_IVAR____TtC22SubscribePageExtension41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
    swift_beginAccess();
    sub_10003E1A0(v9, v1 + v29);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1005FB5E8()
{
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v0 = sub_100750B04();
  v1 = sub_10000D0FC(v0, qword_100982098);
  qword_100982938 = v0;
  unk_100982940 = &protocol witness table for StaticDimension;
  v2 = sub_10000D134(qword_100982920);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_1005FB6A4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension36BundleSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension36BundleSearchResultCollectionViewCell_bundleView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for BundleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v11 contentView];
  [v13 addSubview:*&v11[OBJC_IVAR____TtC22SubscribePageExtension36BundleSearchResultCollectionViewCell_lockupView]];

  v14 = [v11 contentView];
  [v14 addSubview:*&v11[OBJC_IVAR____TtC22SubscribePageExtension36BundleSearchResultCollectionViewCell_bundleView]];

  return v11;
}

id sub_1005FB9C0()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v38, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100009D34();
  sub_1007477B4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36BundleSearchResultCollectionViewCell_lockupView];
  v12 = sub_10017CB48();
  v14 = v13;
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  MinX = CGRectGetMinX(v39);
  v35 = v6;
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  MinY = CGRectGetMinY(v40);
  v37 = MinX;
  v16 = MinX;
  v17 = v12;
  v18 = v14;
  [v11 setFrame:v16];
  if (qword_100921A50 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_100982920, qword_100982938);
  v19 = [v1 traitCollection];
  sub_100750574();
  v21 = v20;

  v41.origin.x = v4;
  v41.origin.y = v35;
  v41.size.width = v8;
  v41.size.height = v10;
  Height = CGRectGetHeight(v41);
  v42.origin.y = MinY;
  v42.origin.x = v37;
  v42.size.width = v17;
  v42.size.height = v18;
  v23 = Height - (v21 + CGRectGetHeight(v42));
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension36BundleSearchResultCollectionViewCell_bundleView];
  v43.origin.x = v4;
  v43.origin.y = v35;
  v43.size.width = v8;
  v43.size.height = v10;
  [v24 sizeThatFits:{CGRectGetWidth(v43), v23}];
  v26 = v25;
  v28 = v27;
  v44.origin.x = v4;
  v44.origin.y = v35;
  v44.size.width = v8;
  v44.size.height = v10;
  v29 = CGRectGetMinX(v44);
  v45.origin.y = MinY;
  v45.origin.x = v37;
  v45.size.width = v17;
  v45.size.height = v18;
  MaxY = CGRectGetMaxY(v45);
  sub_10000C888(qword_100982920, qword_100982938);
  v31 = [v1 traitCollection];
  sub_100750574();
  v33 = v32;

  return [v24 setFrame:{v29, MaxY + v33, v26, v28}];
}

id sub_1005FBCBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005FBD60()
{
  v0 = sub_100742284();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074ED34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100742854())
  {
    sub_10000C518(&unk_100925780);
    sub_100752764();
    sub_100752D34();
    v11 = v0;
    swift_getObjectType();
    sub_100742894();
    sub_10074EF44();

    sub_1007424E4();
    (*(v5 + 8))(v7, v4);
    swift_getObjectType();
    sub_100742894();
    sub_10074EE44();

    sub_1007423E4();
    v8 = sub_100742234();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v1 + 8))(v3, v11);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t CrossLinkPresenter.adamId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_adamId;
  v4 = sub_10074ED34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CrossLinkPresenter.isVisible.getter()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_isVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1005FC094(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_isVisible;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = v1 + OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_view;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a1 & 1, 1, ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t CrossLinkPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_isVisible;
    swift_beginAccess();
    (*(v5 + 32))(*(v2 + v7), 1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*CrossLinkPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1005FC320;
}

void sub_1005FC320(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = v3[5];
      v5 = *(v4 + v3[6] + 8);
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_isVisible;
      swift_beginAccess();
      (*(v5 + 32))(*(v4 + v7), 1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t CrossLinkPresenter.__allocating_init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

void *CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v47 = a6;
  v52 = a5;
  v42 = a2;
  v43 = a4;
  v45 = a7;
  v46 = a10;
  v48 = *v10;
  v49 = a3;
  v14 = sub_100742284();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = v10 + OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_view;
  *(v21 + 1) = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_adamId;
  v23 = sub_10074ED34();
  v50 = *(v23 - 8);
  v51 = v23;
  (*(v50 + 16))(v11 + v22, a1);
  swift_beginAccess();
  v44 = a8;
  *(v21 + 1) = a8;
  v24 = v45;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  v53 = a9;
  v54 = a1;
  v25 = v47;
  v26 = sub_1007424E4();
  v27 = (v11 + OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_stateMachine);
  *v27 = v26;
  v27[1] = v28;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1007423E4();
  (*(v15 + 32))(v17, v20, v14);
  v29 = (*(v15 + 88))(v17, v14);
  if (v29 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v15 + 96))(v17, v14);
    v30 = sub_100745D74();
LABEL_3:
    (*(*(v30 - 8) + 8))(v17, v30);
LABEL_6:
    v31 = 1;
    goto LABEL_7;
  }

  if (v29 == enum case for LegacyAppState.updatable(_:))
  {
    (*(v15 + 8))(v17, v14);
    goto LABEL_6;
  }

  if (v29 == enum case for LegacyAppState.installing(_:))
  {
    (*(v15 + 96))(v17, v14);
    v30 = sub_1007421F4();
    goto LABEL_3;
  }

  if (v29 == enum case for LegacyAppState.openable(_:))
  {
    (*(v15 + 96))(v17, v14);

    v30 = sub_100748314();
    goto LABEL_3;
  }

  (*(v15 + 8))(v17, v14);
  v31 = 0;
LABEL_7:
  v32 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_isVisible;
  *(v11 + OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_isVisible) = v31;
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v25 & 1;
  *(v34 + 32) = v48;

  sub_1007423A4();

  if (v24)
  {
    ObjectType = swift_getObjectType();
    v36 = v44;
    v37 = *(v44 + 40);
    swift_unknownObjectRetain();
    v48 = v26;
    v37(v42, v49, v43, v52, ObjectType, v36);

    swift_unknownObjectRelease();
    v38 = swift_getObjectType();
    swift_beginAccess();
    v39 = *(v11 + v32);
    v40 = *(v36 + 32);
    swift_unknownObjectRetain();
    v40(v39, 0, v38, v36);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease_n();
    (*(v50 + 8))(v54, v51);
  }

  else
  {

    (*(v50 + 8))(v54, v51);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v11;
}

uint64_t sub_1005FCA54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005FCA8C()
{
  v0 = sub_100742284();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_1007423E4();
    (*(v1 + 32))(v3, v6, v0);
    v8 = (*(v1 + 88))(v3, v0);
    if (v8 == enum case for LegacyAppState.waiting(_:))
    {
      (*(v1 + 96))(v3, v0);
      v9 = sub_100745D74();
    }

    else
    {
      if (v8 == enum case for LegacyAppState.updatable(_:))
      {
        (*(v1 + 8))(v3, v0);
        goto LABEL_7;
      }

      if (v8 == enum case for LegacyAppState.installing(_:))
      {
        (*(v1 + 96))(v3, v0);
        v9 = sub_1007421F4();
      }

      else
      {
        if (v8 != enum case for LegacyAppState.openable(_:))
        {
          (*(v1 + 8))(v3, v0);
          v10 = 0;
          goto LABEL_8;
        }

        (*(v1 + 96))(v3, v0);

        v9 = sub_100748314();
      }
    }

    (*(*(v9 - 8) + 8))(v3, v9);
LABEL_7:
    v10 = 1;
LABEL_8:
    sub_1005FC094(v10);
  }

  return result;
}

uint64_t sub_1005FCD48()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t CrossLinkPresenter.deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_stateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1007423C4();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_adamId;
  v3 = sub_10074ED34();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10000C4F0(v1 + OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_view);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t CrossLinkPresenter.__deallocating_deinit()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_stateMachine))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1007423C4();
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_adamId;
  v3 = sub_10074ED34();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  sub_10000C4F0(v1 + OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_view);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1005FCF6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension18CrossLinkPresenter_isVisible;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t type metadata accessor for CrossLinkPresenter()
{
  result = qword_100940A10;
  if (!qword_100940A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005FD040()
{
  result = sub_10074ED34();
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

uint64_t sub_1005FD1DC()
{

  return swift_deallocClassInstance();
}

void sub_1005FD224()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  sub_100016C60(0, &qword_100923500);
  v4 = sub_100753E04();
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerBackgroundView];
  v6 = sub_100753E04();
  [v5 setBackgroundColor:v6];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 addSubview:v5];

  v9 = [v1 traitCollection];
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  if (v10 >> 62)
  {
    if (sub_100754664() >= 4)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = sub_1007537B4();

    if (v11)
    {
      return;
    }

    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
  {
    goto LABEL_7;
  }

LABEL_5:

LABEL_8:
  sub_1005FE5F8();
}

void sub_1005FD3F4()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v16, "didReceiveMemoryWarning");
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    if (sub_100754664() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    goto LABEL_6;
  }

  v5 = sub_1007537B4();

  if (v5)
  {
    return;
  }

LABEL_6:
  v6 = *&v1[v3];
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }

    goto LABEL_8;
  }

  v7 = sub_100754664();
  if (v7)
  {
LABEL_8:
    if (v7 < 1)
    {
      __break(1u);
      return;
    }

    v8 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController;

    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_100754574();
        v11 = *(v10 + 56);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);

        v11 = *(v10 + 56);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      v12 = *&v1[v8];
      if (!v12)
      {
        goto LABEL_19;
      }

      sub_100016C60(0, &qword_10092B0C0);
      v13 = v11;
      v14 = v12;
      v15 = sub_100753FC4();

      if ((v15 & 1) == 0)
      {
        v11 = *(v10 + 56);
LABEL_19:
        *(v10 + 56) = 0;

        goto LABEL_11;
      }

LABEL_10:

LABEL_11:
      if (v7 == ++v9)
      {

        return;
      }
    }
  }
}

void sub_1005FD624(uint64_t a1)
{
  v2 = v1;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v45, "traitCollectionDidChange:", a1);
  v4 = &qword_100940000;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments;
  v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  v7 = &selRef_initWithTitle_style_target_action_;
  v8 = v6 >> 62;
  if (!a1)
  {
    if (v8)
    {
      goto LABEL_45;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    while (1)
    {
LABEL_16:
      v13 = [v2 v7[129]];
      v14 = *&v2[v4[350]];
      if (v14 >> 62)
      {
        if (sub_100754664() >= 4)
        {
LABEL_18:

          goto LABEL_23;
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
      {
        goto LABEL_18;
      }

      v15 = sub_1007537B4();

      if (v15)
      {
        sub_1005FE070();
        v16 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl;
        v17 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl];
        if (v17)
        {
          [v17 removeFromSuperview];
          v18 = *&v2[v16];
        }

        else
        {
          v18 = 0;
        }

        *&v2[v16] = 0;

        goto LABEL_50;
      }

LABEL_23:
      v44 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController];
      v19 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_columnViewControllers;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (v20 >> 62)
      {
        v4 = sub_100754664();
        if (!v4)
        {
LABEL_48:
          v34 = v44;
LABEL_49:
          *&v2[v19] = _swiftEmptyArrayStorage;

          sub_1005FE5F8();
          sub_1005FE6B8();
          goto LABEL_50;
        }
      }

      else
      {
        v4 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_48;
        }
      }

      v42 = v19;
      v7 = (v20 & 0xC000000000000001);
      v43 = v44;

      v21 = 0;
      while (1)
      {
        if (v7)
        {
          v22 = sub_100754574();
        }

        else
        {
          if (v21 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v22 = *(v20 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (!v44 || (sub_100016C60(0, &qword_10092B0C0), v25 = v43, v26 = v23, v27 = sub_100753FC4(), v26, v25, (v27 & 1) == 0))
        {
          v28 = [v23 parentViewController];
          if (v28)
          {
            v29 = v28;
            sub_100016C60(0, &qword_10092B0C0);
            v30 = v2;
            v31 = sub_100753FC4();

            if (v31)
            {
              if ([v23 isViewLoaded])
              {
                v32 = [v23 view];
                if (!v32)
                {
                  goto LABEL_61;
                }

                v33 = v32;
                [v32 removeFromSuperview];
              }

              [v23 willMoveToParentViewController:0];
              [v23 removeFromParentViewController];
            }
          }
        }

        ++v21;
        if (v24 == v4)
        {

          v19 = v42;
          v34 = v43;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      if (sub_100754664())
      {
        goto LABEL_50;
      }
    }
  }

  if (v8)
  {
    if (sub_100754664() > 3)
    {
      goto LABEL_4;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > 3)
  {
LABEL_4:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = sub_1007537B4();
LABEL_10:
  v10 = [v2 traitCollection];
  v11 = *&v2[v5];
  if (v11 >> 62)
  {
    if (sub_100754664() >= 4)
    {
LABEL_12:

      if (v9)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
    goto LABEL_12;
  }

  v12 = sub_1007537B4() & 1;

  if ((v9 & 1) != v12)
  {
    goto LABEL_16;
  }

LABEL_50:
  v35 = sub_1005FE904();
  v36 = [v2 childViewControllers];
  sub_100016C60(0, &qword_10092B0C0);
  v37 = sub_1007532A4();

  if (!(v37 >> 62))
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_52;
    }

LABEL_59:

    return;
  }

  v38 = sub_100754664();
  if (!v38)
  {
    goto LABEL_59;
  }

LABEL_52:
  if (v38 >= 1)
  {
    for (i = 0; i != v38; ++i)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = sub_100754574();
      }

      else
      {
        v40 = *(v37 + 8 * i + 32);
      }

      v41 = v40;
      [v2 setOverrideTraitCollection:v35 forChildViewController:v40];
    }

    goto LABEL_59;
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

void sub_1005FDC28(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments;
  v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  if (v8 >> 62)
  {
    v9 = sub_100754664();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < 4)
  {
    v10 = sub_1007537B4();

    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (a1 != -1)
  {
    v11 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController;
    v12 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController];
    if (v12)
    {
      v13 = v12;
      v14 = [v13 parentViewController];
      if (v14)
      {
        v15 = v14;
        sub_100016C60(0, &qword_10092B0C0);
        v16 = v3;
        v17 = sub_100753FC4();

        if (v17)
        {
          if ([v13 isViewLoaded])
          {
            v18 = [v13 view];
            if (!v18)
            {
LABEL_41:
              __break(1u);
              return;
            }

            v19 = v18;
            [v18 removeFromSuperview];
          }

          [v13 willMoveToParentViewController:0];
          [v13 removeFromParentViewController];
        }
      }

      v20 = *&v3[v11];
      *&v3[v11] = 0;
    }
  }

LABEL_15:
  if (a2 == -1)
  {
    goto LABEL_32;
  }

  v21 = *&v3[v7];
  if ((v21 & 0xC000000000000001) != 0)
  {

    v22 = sub_100754574();

    v24 = *(v22 + 56);
    if (v24)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v22 = *(v21 + 8 * a2 + 32);

  v24 = *(v22 + 56);
  if (v24)
  {
LABEL_20:
    v25 = v24;
    goto LABEL_24;
  }

LABEL_23:
  v26 = (*(v22 + 40))(v23);
  v27 = *(v22 + 56);
  *(v22 + 56) = v26;
  v25 = v26;

  v24 = 0;
LABEL_24:
  v28 = v24;
  v29 = [v25 parentViewController];
  if (!v29 || (v30 = v29, sub_100016C60(0, &qword_10092B0C0), v31 = v3, v32 = sub_100753FC4(), v30, v31, (v32 & 1) == 0))
  {
    [v3 addChildViewController:v25];
    v33 = [v3 view];
    if (!v33)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v34 = v33;
    v35 = [v25 view];
    if (!v35)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v36 = v35;
    [v34 addSubview:v35];

    swift_getObjectType();
    v37 = swift_conformsToProtocol2();
    if (v37 && v25)
    {
      v38 = v37;
      ObjectType = swift_getObjectType();
      v40 = *(v38 + 16);
      v41 = v3;
      v42 = v25;
      v40(v3, &off_10087DA28, ObjectType, v38);
    }
  }

  v43 = sub_1005FE904();
  [v3 setOverrideTraitCollection:v43 forChildViewController:v25];

  v44 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController] = v25;

LABEL_32:
  [*&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl] setSelectedSegmentIndex:a2];
  v45 = [v3 view];
  if (!v45)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v46 = v45;
  [v45 bringSubviewToFront:*&v3[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerBackgroundView]];
}

void sub_1005FE070()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments;
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    v48 = v2;
    v5 = sub_100754664();
    v2 = v48;
    if (v5 >= 4)
    {
LABEL_3:

      goto _objc_release_x1;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 >= 4)
    {
      goto LABEL_3;
    }
  }

  v49 = v2;
  v6 = sub_1007537B4();

  if (v6)
  {
    v7 = *&v1[v3];
    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = &selRef_initWithTitle_style_target_action_;
      if (!v8)
      {
        goto LABEL_36;
      }

      goto LABEL_10;
    }

    v5 = sub_100754664();
    v8 = v5;
    v9 = &selRef_initWithTitle_style_target_action_;
    if (v5)
    {
LABEL_10:
      if (v8 >= 1)
      {
        v46 = v7 & 0xC000000000000001;
        v47 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_columnViewControllers;

        v10 = 0;
        v44 = xmmword_1007A7210;
        v45 = v3;
        while (1)
        {
          if (v46)
          {
            v11 = sub_100754574();
          }

          else
          {
            v11 = *(v7 + 8 * v10 + 32);
          }

          v50 = v10;
          v12 = *(v11 + 56);
          if (v12)
          {
            v13 = *(v11 + 56);
          }

          else
          {
            v14 = (*(v11 + 40))();
            v15 = *(v11 + 56);
            *(v11 + 56) = v14;
            v13 = v14;

            v12 = 0;
          }

          v16 = v12;
          v17 = [v13 parentViewController];
          if (!v17 || (v18 = v17, sub_100016C60(0, &qword_10092B0C0), v19 = v1, v20 = sub_100753FC4(), v18, v19, (v20 & 1) == 0))
          {
            [v1 addChildViewController:{v13, v44}];
            v5 = [v1 v9[134]];
            if (!v5)
            {
              goto LABEL_43;
            }

            v21 = v5;
            v5 = [v13 v9[134]];
            if (!v5)
            {
              goto LABEL_44;
            }

            v22 = v5;
            [v21 addSubview:v5];

            swift_getObjectType();
            v23 = swift_conformsToProtocol2();
            if (v23 && v13)
            {
              v24 = v23;
              ObjectType = swift_getObjectType();
              v26 = v8;
              v27 = v9;
              v28 = v7;
              v29 = *(v24 + 16);
              v30 = v1;
              v31 = v13;
              v29(v1, &off_10087DA28, ObjectType, v24);
              v7 = v28;
              v9 = v27;
              v8 = v26;
              v3 = v45;
            }
          }

          v32 = [v1 traitCollection];
          v33 = *&v1[v3];
          v34 = v47;
          if (v33 >> 62)
          {
            if (sub_100754664() >= 4)
            {
LABEL_27:

LABEL_31:
              v39 = [v1 traitCollection];
              goto LABEL_32;
            }
          }

          else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
          {
            goto LABEL_27;
          }

          v35 = sub_1007537B4();

          if ((v35 & 1) == 0)
          {
            goto LABEL_31;
          }

          sub_10000C518(&unk_1009231A0);
          v36 = swift_allocObject();
          *(v36 + 16) = v44;
          *(v36 + 32) = [v1 traitCollection];
          v37 = objc_opt_self();
          *(v36 + 40) = [v37 traitCollectionWithHorizontalSizeClass:1];
          sub_100016C60(0, &qword_1009239F8);
          isa = sub_100753294().super.isa;

          v39 = [v37 traitCollectionWithTraitsFromCollections:isa];

          v34 = v47;
LABEL_32:
          [v1 setOverrideTraitCollection:v39 forChildViewController:v13];

          swift_beginAccess();
          v40 = v13;
          sub_100753284();
          if (*((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100753304();
          }

          sub_100753344();
          swift_endAccess();

          v10 = v50 + 1;

          if (v8 == v50 + 1)
          {

            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
_objc_release_x1:
      _objc_release_x1(v5, v2);
      return;
    }

LABEL_36:
    v41 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl];
    if (v41)
    {
      v42 = v41;
      v5 = [v1 v9[134]];
      if (!v5)
      {
        goto LABEL_45;
      }

      v43 = v5;
      [v5 bringSubviewToFront:v42];
    }
  }
}

void sub_1005FE5F8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl;
  if (!*(v0 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl))
  {
    v2 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v2 addTarget:v0 action:"takeSelectedIndexFrom:" forControlEvents:4096];
    [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerBackgroundView) addSubview:v2];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }
}

void sub_1005FE6B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl);
  if (v1)
  {
    v9 = v1;
    [v9 removeAllSegments];
    v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments);
    v8 = v0;
    if (v2 >> 62)
    {
      goto LABEL_21;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v3)
    {
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = sub_100754574();
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v3 = sub_100754664();
            goto LABEL_4;
          }

          v6 = *(v2 + 8 * v4 + 32);

          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_15;
          }
        }

        if (*(v6 + 24))
        {

          v5 = sub_100753064();
        }

        else
        {
          v5 = 0;
        }

        [v9 insertSegmentWithTitle:v5 atIndex:v4 animated:{0, v8}];

        ++v4;
      }

      while (v7 != v3);
    }

    [v9 setSelectedSegmentIndex:*(v8 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedIndex)];
  }
}

id sub_1005FE904()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  if (v3 >> 62)
  {
    if (sub_100754664() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    goto LABEL_7;
  }

  v4 = sub_1007537B4();

  if (v4)
  {
    sub_10000C518(&unk_1009231A0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A7210;
    *(v5 + 32) = [v1 traitCollection];
    v6 = objc_opt_self();
    *(v5 + 40) = [v6 traitCollectionWithHorizontalSizeClass:1];
    sub_100016C60(0, &qword_1009239F8);
    isa = sub_100753294().super.isa;

    v8 = [v6 traitCollectionWithTraitsFromCollections:isa];

    return v8;
  }

LABEL_7:
  v10 = [v1 traitCollection];

  return v10;
}

void sub_1005FEA98()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SegmentedViewController();
  v46.receiver = v0;
  v46.super_class = v6;
  objc_msgSendSuper2(&v46, "viewWillLayoutSubviews");
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 bounds];
  v45 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v1 pageMarginInsets];
  v17 = v16;
  v44 = v18;
  v19 = [v1 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  [v21 layoutFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v47.origin.x = v23;
  v47.origin.y = v25;
  v47.size.width = v27;
  v47.size.height = v29;
  MinY = CGRectGetMinY(v47);
  v31 = v45;
  v33 = sub_1005FEE50(v45, v11, v13, v15, MinY, v17, v32, v44);
  v35 = v34;
  v36 = [v1 traitCollection];
  LOBYTE(v21) = sub_1007537D4();

  v37 = 0.0;
  if (v21)
  {
    if (qword_100921708 != -1)
    {
      swift_once();
    }

    v38 = sub_100750B04();
    sub_10000D0FC(v38, qword_100982098);
    sub_1007502D4();
    sub_100750564();
    v37 = v39;
    (*(v3 + 8))(v5, v2);
  }

  v40 = [v1 traitCollection];
  v41 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_segments];
  if (v41 >> 62)
  {
    v42 = sub_100754664();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 < 4)
  {
    v43 = sub_1007537B4();

    if (v43)
    {
      sub_1005FF374(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
      return;
    }
  }

  else
  {
  }

  sub_1005FF1DC(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
}

double sub_1005FEE50(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v32 = a8;
  v33 = a5;
  v14 = sub_100754724();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  Width = CGRectGetWidth(v34);
  v19 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerView);
  if (v19)
  {
    v20 = v19;
    [v20 sizeThatFits:{a3, a4, *&v32, *&v33}];
    v22 = v21;
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetWidth(v35);
    sub_100753B24();
    [v20 setFrame:?];

    v23 = v22 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectorControl);
  if (v24)
  {
    v25 = v24;
    if ([v25 numberOfSegments] < 2)
    {
      [v25 setHidden:1];
    }

    else
    {
      v26 = v25;
      [v26 setHidden:0];
      [v26 sizeThatFits:{a3, a4}];
      v28 = v27;
      v36.origin.x = a1;
      v36.origin.y = a2;
      v36.size.width = a3;
      v36.size.height = a4;
      CGRectGetWidth(v36);
      sub_100753B24();
      [v26 setFrame:?];

      v23 = v23 + v28;
    }
  }

  if (v23 >= COERCE_DOUBLE(1))
  {
    if (qword_100921708 != -1)
    {
      swift_once();
    }

    v29 = sub_100750B04();
    sub_10000D0FC(v29, qword_100982098);
    sub_1007502D4();
    sub_100750564();
    (*(v15 + 8))(v17, v14);
  }

  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  CGRectGetMinX(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetMinY(v38);
  v30 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_headerBackgroundView);
  sub_100753B24();
  [v30 setFrame:?];
  return Width;
}

void sub_1005FF1DC(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_selectedViewController];
  if (v9)
  {
    v18 = v9;
    v19 = [v18 view];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    [v19 setFrame:{a1, a2, a3, a4}];

    v21 = [v18 contentScrollView];
    if (v21)
    {
      v22 = v21;
      if ([v21 contentInsetAdjustmentBehavior] != 2)
      {
        [v22 setContentInset:{a5, a6, a7, a8}];
        [v22 setScrollIndicatorInsets:{a5, a6, a7, a8}];
      }

      v23 = v22;
      [v8 setContentScrollView:v23 forEdge:15];
    }
  }

  *&v8[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_multipleScrollObserver] = 0;

  v24 = &v8[OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_navigationBarAppearanceProgress];
  *v24 = 0;
  v24[8] = 1;

  sub_1005FFA3C();
}

id sub_1005FF374(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  [v8 pageMarginInsets];
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetWidth(v39);
  sub_10016D1E4(v13);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension23SegmentedViewController_columnViewControllers;
  swift_beginAccess();
  v38 = v8;
  if (*&v8[v14] >> 62)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v33 = v14;
    v15 = *&v38[v14];
    v16 = v15 >> 62 ? sub_100754664() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v16)
    {
      break;
    }

LABEL_20:

    v26 = *&v38[v33];
    v14 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      v27 = sub_100754664();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = 0;
    while (1)
    {
      if (v27 == v28)
      {

        sub_1005FF874(_swiftEmptyArrayStorage);
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = sub_100754574();
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = [v29 contentScrollView];

      ++v28;
      if (v32)
      {
        sub_100753284();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v28 = v31;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    sub_100754664();
  }

  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = sub_100754574();
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v20 = *(v15 + 8 * v17 + 32);
    }

    v19 = v20;
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_36;
    }

    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    CGRectGetMinX(v40);
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    CGRectGetMinY(v41);
    v42.origin.x = a1;
    v42.origin.y = a2;
    v42.size.width = a3;
    v42.size.height = a4;
    CGRectGetHeight(v42);
    result = [v19 view];
    if (!result)
    {
      break;
    }

    v22 = result;
    sub_100753B24();
    [v22 setFrame:?];

    v23 = [v19 contentScrollView];
    if (v23)
    {
      v24 = v23;
      if ([v23 contentInsetAdjustmentBehavior] != 2)
      {
        [v24 contentInset];
        [v24 setContentInset:{a5, a6, a7, a8}];
        [v24 setScrollIndicatorInsets:{a5, a6, a7, a8}];
        [v24 contentOffset];
        [v24 setContentOffset:?];
      }

      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v18 = [v25 collectionViewLayout];
        [v18 invalidateLayout];
      }

      else
      {
        v18 = v19;
        v19 = v24;
      }
    }

    ++v17;
    if (v14 == v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}