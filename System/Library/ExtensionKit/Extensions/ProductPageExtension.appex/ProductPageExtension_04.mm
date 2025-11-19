uint64_t sub_1000849B8(uint64_t a1)
{
  v2 = sub_10076F08C();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076F0CC();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F50C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() currentThread];
  v13 = [v12 isMainThread];

  if (v13)
  {
    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    sub_10076FCBC();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_100085204();
    v15 = sub_10077068C();
    aBlock[4] = sub_100085250;
    aBlock[5] = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100886940;
    v16 = _Block_copy(aBlock);

    sub_10076F0AC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100085270(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0);
    sub_1000852B8();
    sub_1007712CC();
    sub_10077069C();
    _Block_release(v16);

    (*(v18 + 8))(v4, v2);
    return (*(v5 + 8))(v7, v17);
  }
}

uint64_t sub_100084D60()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_10076FCBC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100084E54()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_1009459D8);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = sub_10076495C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076488C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100085194(v6);
    sub_10000A5D4(&qword_100942C70);
    (*(v1 + 104))(v3, enum case for ActionOutcome.unsupported(_:), v0);
    return sub_10076FC8C();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_10000A5D4(&unk_10094A8C0);
    sub_10076F64C();
    sub_10076FC1C();
    type metadata accessor for PromotedContentAdvertInteractionMetricsReporter();
    v15[0] = v15[1];
    v12 = swift_allocObject();
    sub_10076CCCC();
    swift_unknownObjectRetain();
    *(v12 + 16) = sub_10076CCBC();
    type metadata accessor for PromotedContentInteractionTypeProvider();
    v13 = swift_allocObject();
    *(v13 + 16) = v15[0];
    *(v12 + 24) = v13;
    sub_10000A5D4(&qword_100942C70);
    v14 = sub_10076FCEC();

    sub_100020230(v10, sub_1000851FC, v14);
    swift_unknownObjectRelease();

    (*(v8 + 8))(v10, v7);
    return v14;
  }
}

uint64_t sub_100085194(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_1009459D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100085204()
{
  result = qword_1009471F0;
  if (!qword_1009471F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009471F0);
  }

  return result;
}

uint64_t sub_100085258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100085270(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000852B8()
{
  result = qword_100945170;
  if (!qword_100945170)
  {
    sub_10000CE78(&unk_10094E1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945170);
  }

  return result;
}

uint64_t sub_10008531C(uint64_t a1)
{
  v29 = sub_1000FD520(_swiftEmptyArrayStorage);
  v2 = *(a1 + 16);
  if (!v2)
  {
    return a1;
  }

  v3 = 0;
  while (v3 < *(a1 + 16))
  {
    v4 = *(a1 + 32 + 8 * v3);
    if (!*(v4 + 16))
    {
      goto LABEL_5;
    }

    v5 = sub_100561E0C(0x6973736572706D69, 0xEC00000064496E6FLL);
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_10000CD08(*(v4 + 56) + 32 * v5, v32);
    sub_10000CD64(v32, v33);
    if (!*(v4 + 16) || (v7 = sub_100561E0C(1701667182, 0xE400000000000000), (v8 & 1) == 0) || (sub_10000CD08(*(v4 + 56) + 32 * v7, v32), !swift_dynamicCast()))
    {
      sub_10000CD74(v33);
LABEL_4:

      goto LABEL_5;
    }

    *&v32[0] = 0;
    *(&v32[0] + 1) = 0xE000000000000000;
    sub_10077151C();
    v10 = *(&v32[0] + 1);
    v9 = *&v32[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v32[0] = v29;
    v28 = v9;
    v13 = sub_100561E0C(v9, v10);
    v14 = *(v29 + 16);
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_25;
    }

    v17 = v12;
    if (*(v29 + 24) >= v16)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10024C3F0();
      }
    }

    else
    {
      sub_1002475F0(v16, isUniquelyReferenced_nonNull_native);
      v18 = sub_100561E0C(v28, v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_27;
      }

      v13 = v18;
    }

    v20 = *&v32[0];
    v29 = *&v32[0];
    if (v17)
    {
      v21 = (*(*&v32[0] + 56) + 16 * v13);
      *v21 = v30;
      v21[1] = v31;
    }

    else
    {
      *(*&v32[0] + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v22 = (v20[6] + 16 * v13);
      *v22 = v28;
      v22[1] = v10;
      v23 = (v20[7] + 16 * v13);
      *v23 = v30;
      v23[1] = v31;
      v24 = v20[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_26;
      }

      v20[2] = v26;
    }

    sub_10000CD74(v33);

LABEL_5:
    if (v2 == ++v3)
    {
      return a1;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1007716DC();
  __break(1u);
  return result;
}

uint64_t sub_100085614(uint64_t a1, uint64_t a2)
{
  sub_10003F0D4(a1, &v8);
  if (v9)
  {
    sub_10000CD64(&v8, v10);
    *&v8 = 0;
    *(&v8 + 1) = 0xE000000000000000;
    sub_10077151C();
    if (*(a2 + 16))
    {
      v3 = sub_100561E0C(v8, *(&v8 + 1));
      v5 = v4;

      if (v5)
      {
        v6 = *(*(a2 + 56) + 16 * v3);

        sub_10000CD74(v10);
        return v6;
      }
    }

    else
    {
    }

    sub_10000CD74(v10);
  }

  else
  {
    sub_1000258C0(&v8);
  }

  return 0;
}

char *sub_100085708(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_artworkPlaceholder;
  sub_10075FD2C();
  v11 = sub_10075FB4C();
  sub_1007638EC();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_smallLockupPlaceholder;
  type metadata accessor for LockupPlaceholderView();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder;
  sub_1007600FC();
  v14 = sub_1007600EC();
  v16 = sub_1004B958C(v14, v15, UIFontTextStyleSubheadline);

  *&v5[v13] = v16;
  v17 = OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_contentType;
  v18 = enum case for Shelf.ContentType.appTrailerLockup(_:);
  v19 = sub_10076B5BC();
  (*(*(v19 - 8) + 104))(&v5[v17], v18, v19);
  v5[OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] = 0;
  v24.receiver = v5;
  v24.super_class = type metadata accessor for MixedMediaLockupPlaceholderView();
  v20 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v21 = *&v20[OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_artworkPlaceholder];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_smallLockupPlaceholder]];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder]];

  return v22;
}

uint64_t sub_100085924@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v72 = sub_1007669EC();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v76 = v67 - v5;
  __chkstk_darwin(v6);
  v74 = v67 - v7;
  __chkstk_darwin(v8);
  v68 = v67 - v9;
  __chkstk_darwin(v10);
  v70 = v67 - v11;
  v12 = sub_10000A5D4(&qword_1009451E8);
  __chkstk_darwin(v12 - 8);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v73 = v67 - v16;
  __chkstk_darwin(v17);
  v19 = v67 - v18;
  __chkstk_darwin(v20);
  v22 = v67 - v21;
  v23 = sub_10076B5BC();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v67[0] = v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v67 - v27;
  v29 = OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_contentType;
  swift_beginAccess();
  v30 = *(v24 + 16);
  v30(v28, &v2[v29], v23);
  v31 = (*(v24 + 88))(v28, v23);
  if (v31 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    v32 = v71;
    v33 = v72;
    (*(v71 + 56))(v22, 1, 1, v72);
    sub_100072E70(v22, v19);
    v34 = *(v32 + 48);
    v35 = v34(v19, 1, v33);
    v67[1] = v22;
    if (v35 == 1)
    {
      v36 = v70;
      (*(v32 + 104))(v70, enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:), v33);
      v37 = v34(v19, 1, v33);
      v38 = v74;
      if (v37 != 1)
      {
        sub_100072EE0(v19);
      }
    }

    else
    {
      v36 = v70;
      (*(v32 + 32))(v70, v19, v33);
      v38 = v74;
    }

    v48 = *(v32 + 16);
    v49 = v68;
    v48(v68, v36, v33);
    v50 = (*(v32 + 88))(v49, v33);
    if (v50 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
    {
      if (qword_10093FB10 != -1)
      {
        swift_once();
      }

      sub_10000A570(qword_10099DB28, v81);
    }

    else if (v50 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_10093FB08 != -1)
      {
        swift_once();
      }

      sub_10000A570(qword_10099DB00, v81);
    }

    else
    {
      if (qword_10093FB10 != -1)
      {
        swift_once();
      }

      sub_10000A570(qword_10099DB28, v81);
      (*(v32 + 8))(v49, v33);
    }

    v48(v38, v36, v33);
    sub_10000A570(v81, v80);
    sub_100016F40(0, &qword_100942F00);
    if (qword_100940FD0 != -1)
    {
      swift_once();
    }

    v54 = sub_10076D3DC();
    sub_10000A61C(v54, qword_1009A1D68);
    v55 = [v2 traitCollection];
    sub_100770B3C();

    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v56 = sub_10076D9AC();
    v57 = sub_10000A61C(v56, qword_1009A2350);
    v78 = v56;
    v79 = &protocol witness table for StaticDimension;
    v58 = sub_10000DB7C(v77);
    (*(*(v56 - 8) + 16))(v58, v57, v56);
    sub_100766A0C();
    sub_10000CD74(v81);
    (*(v32 + 8))(v36, v33);
    v59 = &v82;
    return sub_100072EE0(*(v59 - 32));
  }

  v39 = v2;
  v40 = v72;
  if (v31 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    v41 = v39;
    v42 = v71;
    v43 = v73;
    (*(v71 + 56))(v73, 1, 1, v72);
    sub_100072E70(v43, v14);
    v44 = *(v42 + 48);
    if (v44(v14, 1, v40) == 1)
    {
      v45 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      (*(v42 + 104))(v76, enum case for MixedMediaLockupLayout.LockupPosition.top(_:), v40);
      if (v44(v14, 1, v40) != 1)
      {
        sub_100072EE0(v14);
      }

      v46 = v74;
      v47 = v76;
    }

    else
    {
      v47 = v76;
      (*(v42 + 32))(v76, v14, v40);
      v45 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
      v46 = v74;
    }

    v51 = *(v42 + 16);
    v52 = v69;
    v51(v69, v47, v40);
    v53 = (*(v42 + 88))(v52, v40);
    if (v53 == v45)
    {
      if (qword_10093FB10 != -1)
      {
        swift_once();
      }

      sub_10000A570(qword_10099DB28, v81);
    }

    else if (v53 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_10093FB08 != -1)
      {
        swift_once();
      }

      sub_10000A570(qword_10099DB00, v81);
    }

    else
    {
      if (qword_10093FB10 != -1)
      {
        swift_once();
      }

      sub_10000A570(qword_10099DB28, v81);
      (*(v42 + 8))(v52, v40);
    }

    v51(v46, v76, v40);
    sub_10000A570(v81, v80);
    sub_100016F40(0, &qword_100942F00);
    if (qword_100940FD0 != -1)
    {
      swift_once();
    }

    v60 = sub_10076D3DC();
    sub_10000A61C(v60, qword_1009A1D68);
    v61 = [v41 traitCollection];
    sub_100770B3C();

    if (qword_1009411F0 != -1)
    {
      swift_once();
    }

    v62 = sub_10076D9AC();
    v63 = sub_10000A61C(v62, qword_1009A2350);
    v78 = v62;
    v79 = &protocol witness table for StaticDimension;
    v64 = sub_10000DB7C(v77);
    (*(*(v62 - 8) + 16))(v64, v63, v62);
    sub_100766A0C();
    sub_10000CD74(v81);
    (*(v42 + 8))(v76, v40);
    v59 = &v83;
    return sub_100072EE0(*(v59 - 32));
  }

  v81[0] = 0;
  v81[1] = 0xE000000000000000;
  sub_10077145C(44);
  v66 = v67[0];
  v30(v67[0], &v39[v29], v23);
  sub_10077151C();
  (*(v24 + 8))(v66, v23);
  v84._object = 0x80000001007D1100;
  v84._countAndFlagsBits = 0xD00000000000002ALL;
  sub_1007700CC(v84);
  result = sub_10077156C();
  __break(1u);
  return result;
}

void sub_100086574()
{
  v1 = sub_10076B5BC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  v8 = OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_contentType;
  swift_beginAccess();
  v9 = *(v2 + 16);
  v9(v7, v0 + v8, v1);
  v10 = (*(v2 + 88))(v7, v1);
  if (v10 == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    type metadata accessor for AppTrailerLockupCollectionViewCell();
LABEL_5:
    v11 = ASKDeviceTypeGetCurrent();
    sub_100224EB8();

    return;
  }

  if (v10 == enum case for Shelf.ContentType.screenshotsLockup(_:))
  {
    type metadata accessor for ScreenshotsLockupCollectionViewCell();
    goto LABEL_5;
  }

  v12[1] = 0;
  v12[2] = 0xE000000000000000;
  sub_10077145C(44);
  v9(v4, v0 + v8, v1);
  sub_10077151C();
  (*(v2 + 8))(v4, v1);
  v13._object = 0x80000001007D1100;
  v13._countAndFlagsBits = 0xD00000000000002ALL;
  sub_1007700CC(v13);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1000867D8()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v40 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100766A4C();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10076D39C();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766A2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for MixedMediaLockupPlaceholderView();
  v53.receiver = v0;
  v53.super_class = v14;
  objc_msgSendSuper2(&v53, "layoutSubviews");
  sub_100085924(v13);
  sub_100086574();
  sub_10076422C();
  v34 = v6;
  sub_10076D31C();
  v16 = v15;
  v18 = v17;
  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_artworkPlaceholder];
  v20 = sub_10075FC6C();
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  v20(v52, 0);
  v22 = OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder];
  if (v1[OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder] == 1)
  {
    [v1 addSubview:*&v1[OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder]];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder] removeFromSuperview];
  }

  v24 = *(v8 + 16);
  v35 = v7;
  v24(v10, v13, v7);
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_smallLockupPlaceholder];
  v52[3] = type metadata accessor for LockupPlaceholderView();
  v52[4] = &protocol witness table for UIView;
  v52[0] = v25;
  v50 = sub_10075FD2C();
  v51 = &protocol witness table for UIView;
  v49 = v19;
  if (v1[v22] == 1)
  {
    v26 = sub_100016F40(0, &qword_100956550);
    v27 = v23;
    v28 = &protocol witness table for UILabel;
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v23 = 0;
    v45 = 0;
    v46 = 0;
  }

  v47 = v26;
  v48 = v28;
  v44 = v23;
  v29 = v25;
  v30 = v19;
  v31 = v37;
  sub_100766A3C();
  sub_10076422C();
  v32 = v40;
  sub_1007669FC();
  (*(v42 + 8))(v32, v43);
  (*(v39 + 8))(v31, v41);
  (*(v36 + 8))(v34, v38);
  return (*(v8 + 8))(v13, v35);
}

id sub_100086CD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MixedMediaLockupPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MixedMediaLockupPlaceholderView()
{
  result = qword_100945A20;
  if (!qword_100945A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100086E00()
{
  result = sub_10076B5BC();
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

void sub_100086EAC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_artworkPlaceholder;
  sub_10075FD2C();
  v3 = sub_10075FB4C();
  sub_1007638EC();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_smallLockupPlaceholder;
  type metadata accessor for LockupPlaceholderView();
  *(v1 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_supplementaryTextPlaceholder;
  sub_1007600FC();
  v6 = sub_1007600EC();
  v8 = sub_1004B958C(v6, v7, UIFontTextStyleSubheadline);

  *(v1 + v5) = v8;
  v9 = OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_contentType;
  v10 = enum case for Shelf.ContentType.appTrailerLockup(_:);
  v11 = sub_10076B5BC();
  (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension31MixedMediaLockupPlaceholderView_wantsSupplementaryTextPlaceholder) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_100087008()
{
  sub_10000A5D4(&unk_100942870);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100784DC0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 blackColor];
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.4];

  *(v0 + 40) = v3;
  v4 = [v1 blackColor];
  v5 = [v4 colorWithAlphaComponent:0.0];

  *(v0 + 48) = v5;
  qword_100945A30 = v0;
}

UIColor sub_10008710C()
{
  sub_10000A5D4(&unk_100942870);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100784DC0;
  sub_1000325F0();
  *(v0 + 32) = sub_100770E4C(0.43137, 0.43137, 0.43137, 0.6);
  *(v0 + 40) = sub_100770E4C(0.35294, 0.35294, 0.35294, 0.5);
  result.super.isa = sub_100770E4C(0.27146, 0.2665, 0.26659, 0.2).super.isa;
  *(v0 + 48) = result;
  qword_100945A38 = v0;
  return result;
}

char *sub_1000871F4()
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_colors;
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension23MultiCornerGradientView_colors);
  if (v3 >> 62)
  {
    v4 = sub_10077158C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {

    sub_1004BBAA4(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v6 _luminance];
      v9 = v8;

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_1004BBAA4((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      _swiftEmptyArrayStorage[v11 + 4] = v9;
    }
  }

  v12 = _swiftEmptyArrayStorage[2];
  if (!v12)
  {

LABEL_26:
    if (qword_10093F5E0 != -1)
    {
      swift_once();
    }

    v22 = &qword_100945A38;
    v23 = 0x3FE3333333333333;
LABEL_29:
    v24 = *&v23;
    goto LABEL_30;
  }

  if (v12 <= 3)
  {
    v13 = 0;
    v1 = 0.0;
LABEL_20:
    v16 = v12 - v13;
    v17 = &_swiftEmptyArrayStorage[v13 + 4];
    do
    {
      v18 = *v17++;
      v1 = v1 + v18;
      --v16;
    }

    while (v16);
    goto LABEL_22;
  }

  v13 = v12 & 0x7FFFFFFFFFFFFFFCLL;
  v14 = &_swiftEmptyArrayStorage[6];
  v1 = 0.0;
  v15 = v12 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v1 = v1 + *(v14 - 2) + *(v14 - 1) + *v14 + v14[1];
    v14 += 4;
    v15 -= 4;
  }

  while (v15);
  if (v12 != v13)
  {
    goto LABEL_20;
  }

LABEL_22:

  if (v1 <= 0.0)
  {
    goto LABEL_26;
  }

  v19 = *(v0 + v2);
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_25;
  }

LABEL_41:
  v20 = sub_10077158C();
LABEL_25:
  v21 = v1 / v20;
  if (v21 == 0.0)
  {
    goto LABEL_26;
  }

  if (v21 < COERCE_DOUBLE(1) || v21 >= 0.83)
  {
    if (qword_10093F5D8 != -1)
    {
      swift_once();
    }

    v22 = &qword_100945A30;
    v23 = 0x3FE6666666666666;
    goto LABEL_29;
  }

  v24 = 0.2;
  if (qword_10093F5D8 != -1)
  {
    swift_once();
  }

  v22 = &qword_100945A30;
LABEL_30:
  v25 = *v22;

  v26 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v26[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v25;

  sub_1001C05B8();
  sub_1001C0414(&off_1008825E8);
  v27 = v26;
  v28 = [v27 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

  v29 = [v27 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

  v30 = [v27 layer];
  [v30 setMask:0];

  v31 = [v27 layer];

  [v31 setCompositingFilter:kCAFilterPlusD];
  [v27 setAlpha:v24];

  return v27;
}

id sub_100087800()
{
  sub_100719CA4();
  v1 = OBJC_IVAR____TtC20ProductPageExtension28MultiAppFallbackGradientView_overlayGradientView;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28MultiAppFallbackGradientView_overlayGradientView] removeFromSuperview];
  v2 = sub_1000871F4();
  v3 = *&v0[v1];
  *&v0[v1] = v2;
  v4 = v2;

  [v0 addSubview:v4];
  [v0 setNeedsLayout];

  return [v0 setNeedsDisplay];
}

unint64_t sub_1000878F4()
{
  result = qword_100945A70;
  if (!qword_100945A70)
  {
    sub_1007641AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945A70);
  }

  return result;
}

uint64_t sub_100087954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HttpTemplateController();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_textFields] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_okAction] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_hasRequiredParameters] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_templateAction] = a1;
  v6 = &v5[OBJC_IVAR____TtC20ProductPageExtension22HttpTemplateController_actionSender];
  *v6 = 0u;
  v6[1] = 0u;
  v11.receiver = v5;
  v11.super_class = v4;

  v7 = objc_msgSendSuper2(&v11, "init");
  v8 = sub_10068D720(a2);
  v9 = sub_100563FF8(v8, 1, a2);

  return v9;
}

uint64_t sub_100087A44(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (qword_10093FAE8 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  v8 = sub_10049F108(&xmmword_10099D9E0, a6, a1);
  v9 = [objc_opt_self() absoluteDimension:v8];
  v10 = sub_1007665BC();

  return v10;
}

uint64_t sub_100087BA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100087BF0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_artworkView);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  sub_10075FCEC(v11, v3);

  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_displayName);
  sub_1007626EC();
  if (v5)
  {
    v6 = sub_10076FF6C();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText:v6];

  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension39LargeGameCenterPlayerCollectionViewCell_alias);
  sub_1007626FC();
  if (v8)
  {
    v9 = sub_10076FF6C();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];
}

uint64_t sub_100087D48(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v3 - 8);
  v80 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v71 - v6;
  v7 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v7 - 8);
  v76 = &v71 - v8;
  v9 = sub_1007611EC();
  __chkstk_darwin(v9 - 8);
  v87 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v71 - v12;
  v13 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v13 - 8);
  v85 = &v71 - v14;
  v75 = sub_10076121C();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v84 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076481C();
  v77 = *(v16 - 8);
  v78 = v16;
  __chkstk_darwin(v16);
  v88 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076B66C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000A5D4(&unk_100946720);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v71 - v24;
  v26 = sub_10000A5D4(&qword_100945AC8);
  __chkstk_darwin(v26 - 8);
  v82 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v81 = &v71 - v29;
  __chkstk_darwin(v30);
  v32 = &v71 - v31;
  __chkstk_darwin(v33);
  v89 = &v71 - v34;
  sub_100762A6C();
  sub_100088CA8(&qword_100945AD0, &type metadata accessor for ProductMediaItem);
  result = sub_10076332C();
  v36 = v91[0];
  if (v91[0])
  {
    v37 = sub_100762A4C();
    v90 = v36;
    v73 = v37;
    if (v37)
    {
      v72 = a2;
    }

    else
    {
      if (!sub_100762A5C())
      {
      }

      v72 = a2;
      v73 = sub_10076B84C();
    }

    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076F49C();

    (*(v23 + 8))(v25, v22);
    if ((*(v19 + 88))(v21, v18) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v19 + 96))(v21, v18);
      v38 = sub_1007658FC();
      v39 = *(v38 - 8);
      v40 = v89;
      (*(v39 + 32))(v89, v21, v38);
      (*(v39 + 56))(v40, 0, 1, v38);
    }

    else
    {
      v41 = sub_1007658FC();
      v42 = v89;
      (*(*(v41 - 8) + 56))(v89, 1, 1, v41);
      v43 = v18;
      v40 = v42;
      (*(v19 + 8))(v21, v43);
    }

    v44 = v83;
    if (sub_100762A5C())
    {
      (*(v74 + 104))(v84, enum case for VideoFillMode.scaleAspectFit(_:), v75);
      sub_10076B84C();
      sub_10076BEFC();
      v45 = v85;
      sub_10076D3AC();

      v46 = sub_10076D39C();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      sub_10076B7EC();
      sub_10076B82C();
      sub_10076B7FC();
      sub_10076B7DC();
      sub_10076B83C();
      sub_100016E2C(v40, v32, &qword_100945AC8);
      v47 = sub_1007658FC();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v32, 1, v47) == 1)
      {
        sub_10000CFBC(v32, &qword_100945AC8);
      }

      else
      {
        sub_1007658EC();
        (*(v48 + 8))(v32, v47);
        sub_100760E8C();
      }

      sub_1007647FC();
      sub_100762F0C();
      sub_10076F5CC();
      sub_10076B7CC();
      v49 = v76;
      sub_10076B85C();
      v50 = sub_10075DB7C();
      (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
      v51 = v79;
      sub_10076B81C();
      v52 = v80;
      sub_10076B80C();
      type metadata accessor for VideoView();
      sub_100088CA8(&qword_100942810, type metadata accessor for VideoView);
      v53 = sub_100762EEC();
      sub_10000CFBC(v52, &unk_10094C030);
      sub_10000CFBC(v51, &unk_10094C030);
      sub_10000CFBC(v49, &unk_1009435D0);
      sub_10000CFBC(v91, &qword_100943310);
      sub_10040D8C8();
      swift_unknownObjectWeakAssign();
      Strong = swift_unknownObjectWeakLoadStrong();
      v40 = v89;
      if (Strong)
      {
        v55 = Strong;
        v56 = [v44 contentView];
        [v56 addSubview:v55];

        [v44 setNeedsLayout];
      }

      (*(v77 + 8))(v88, v78);
    }

    v57 = *&v44[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    v58 = *(v57 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
    v59 = sub_100762A4C();
    if (v59)
    {
    }

    [v58 setHidden:v59 == 0];

    v60 = swift_unknownObjectWeakLoadStrong();
    v61 = v82;
    if (v60)
    {
      v62 = v60;
      v63 = sub_100762A5C();
      if (v63)
      {
      }

      [v62 setHidden:v63 == 0];
    }

    v64 = v81;
    sub_100016E2C(v40, v81, &qword_100945AC8);
    v65 = sub_1007658FC();
    v66 = *(v65 - 8);
    v67 = *(v66 + 48);
    if (v67(v64, 1, v65) == 1)
    {
      sub_10000CFBC(v64, &qword_100945AC8);
      v68 = 0;
    }

    else
    {
      v69 = sub_10076588C();
      (*(v66 + 8))(v64, v65);
      if (v69)
      {
        v68 = sub_10076BD4C() ^ 1;
      }

      else
      {
        v68 = 0;
      }

      v40 = v89;
    }

    v44[OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait] = v68 & 1;
    sub_100016E2C(v40, v61, &qword_100945AC8);
    if (v67(v61, 1, v65) == 1)
    {
      sub_10000CFBC(v61, &qword_100945AC8);
      v70 = 0;
    }

    else
    {
      v70 = sub_1007658EC();
      (*(v66 + 8))(v61, v65);
    }

    *(v57 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = v70;

    sub_100124EE0();

    [v44 setNeedsLayout];

    return sub_10000CFBC(v40, &qword_100945AC8);
  }

  return result;
}

uint64_t sub_100088A90@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009428D0);
}

uint64_t sub_100088AFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension34ProductMediaItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100088BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100088CA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for NavigationAccessory.Location(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationAccessory.Location(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100088E44()
{
  result = qword_100945AD8;
  if (!qword_100945AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945AD8);
  }

  return result;
}

uint64_t sub_100088E98@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v5 = sub_10000A5D4(&qword_100945AE0);
  __chkstk_darwin(v5 - 8);
  v48 = &v39[-v6];
  v7 = sub_10000A5D4(&qword_100945AE8);
  __chkstk_darwin(v7 - 8);
  v9 = &v39[-v8];
  v10 = sub_10076C38C();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v12 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000A5D4(&unk_100952090);
  __chkstk_darwin(v13 - 8);
  v15 = &v39[-v14];
  v16 = sub_10076182C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v39[-v21];
  sub_10000A5D4(&qword_100942F18);
  v44 = a1;
  sub_10076333C();
  if (!v50)
  {
    sub_10000CFBC(v49, &qword_100942F20);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_9;
  }

  v43 = v9;
  sub_10000CF78(v49, v50);
  sub_1007670CC();
  sub_10000CD74(v49);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_9:
    sub_10000CFBC(v15, &unk_100952090);
    v31 = sub_10076E4AC();
    return (*(*(v31 - 8) + 56))(a3, 1, 1, v31);
  }

  v42 = a3;
  (*(v17 + 32))(v22, v15, v16);
  v23 = *(v17 + 16);
  v23(v19, v22, v16);
  v24 = *(v17 + 88);
  v25 = v24(v19, v16);
  if (v25 == enum case for ItemBackground.ad(_:) || (v26 = v25, v25 == enum case for ItemBackground.insetAd(_:)) || v25 == enum case for ItemBackground.clearAdWithSeparator(_:))
  {
    v40 = enum case for ItemBackground.insetAd(_:);
    v41 = v24;
    swift_getKeyPath();
    sub_10076338C();

    v32 = v48;
    v23(v48, v22, v16);
    if (v47 == 2)
    {
      v33 = v43;
      sub_10023E0D0(v12, v22, v43);
      (*(v45 + 8))(v12, v46);
      v34 = *(v17 + 8);
      v34(v22, v16);
      v34(v32, v16);
    }

    else
    {
      v35 = v41(v32, v16);
      v33 = v43;
      if (v35 == v40)
      {
        sub_10023E464();
        (*(v45 + 8))(v12, v46);
        (*(v17 + 8))(v22, v16);
        v36 = sub_10076E4AC();
        (*(*(v36 - 8) + 56))(v33, 0, 1, v36);
      }

      else
      {
        (*(v45 + 8))(v12, v46);
        v37 = *(v17 + 8);
        v37(v22, v16);
        v38 = sub_10076E4AC();
        (*(*(v38 - 8) + 56))(v33, 1, 1, v38);
        v37(v32, v16);
      }
    }

    return sub_1000894F8(v33, v42);
  }

  else
  {
    v27 = enum case for ItemBackground.condensedSearch(_:);
    v28 = *(v17 + 8);
    v28(v22, v16);
    v29 = sub_10076E4AC();
    result = (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
    if (v26 != v27)
    {
      return (v28)(v19, v16);
    }
  }

  return result;
}

uint64_t sub_1000894F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100945AE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000895BC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

uint64_t sub_100089658()
{
  v0 = sub_10000A5D4(&unk_100945BE0);
  sub_10000DB18(v0, qword_100945B38);
  sub_10000A61C(v0, qword_100945B38);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDEC();
}

char *sub_10008970C()
{
  ObjectType = swift_getObjectType();
  v26 = sub_10076F9AC();
  v2 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_starViews] = _swiftEmptyArrayStorage;
  *&v31 = _swiftEmptyArrayStorage;
  sub_1007714EC();
  v8 = type metadata accessor for ProductRatingsHistogramProgressBar();
  [objc_allocWithZone(v8) init];
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  [objc_allocWithZone(v8) init];
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  [objc_allocWithZone(v8) init];
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  [objc_allocWithZone(v8) init];
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  [objc_allocWithZone(v8) init];
  sub_1007714CC();
  sub_1007714FC();
  sub_10077150C();
  sub_1007714DC();
  *&v0[OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_barViews] = v31;
  v33.receiver = v0;
  v33.super_class = ObjectType;
  v24 = ObjectType;
  v9 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = *&v9[OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_barViews];
  if (v10 >> 62)
  {
    goto LABEL_19;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v28 = v9;
    v25 = v10;

    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = v26;
    v29 = v25 & 0xC000000000000001;
    v27 = v25 & 0xFFFFFFFFFFFFFF8;
    v14 = v25 + 32;
    v15 = (v2 + 8);
    while (!__OFSUB__(v11--, 1))
    {
      if (v29)
      {
        v9 = sub_10077149C();
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v11 >= *(v27 + 16))
        {
          goto LABEL_18;
        }

        v9 = *&v14[8 * v11];
      }

      v2 = v9;
      v10 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v31 = 0u;
      v32 = 0u;
      memset(v30, 0, sizeof(v30));
      sub_10076F95C();
      sub_1000258C0(v30);
      sub_1000258C0(&v31);
      *&v31 = v12 + 1;
      v17 = sub_10077163C();
      *(&v32 + 1) = &type metadata for String;
      *&v31 = v17;
      *(&v31 + 1) = v18;
      sub_10076F98C();
      v19 = *v15;
      (*v15)(v4, v13);
      sub_1000258C0(&v31);
      v10 = v2;
      sub_100770B9C();
      v19(v7, v13);
      [v28 addSubview:v2];

      ++v12;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v23 = v9;
    v11 = sub_10077158C();
    v9 = v23;
  }

LABEL_14:

  v20 = v28;
  sub_100089BEC();
  sub_10000A5D4(&unk_100945BF0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100783DD0;
  *(v21 + 32) = sub_10076E59C();
  *(v21 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(swift_allocObject() + 16) = v24;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v20;
}

id sub_100089BEC()
{
  sub_1007714EC();
  sub_100016F40(0, &qword_100942F10);
  if (qword_10093F600 != -1)
  {
    swift_once();
  }

  v0 = 0;
  do
  {
    v69 = v0;
    v3 = *(&off_100882BB0 + v0 + 32);
    v4 = sub_10000A5D4(&unk_100945BE0);
    sub_10000A61C(v4, qword_100945B38);
    v71 = v67;
    v5 = v67;
    sub_10075FDCC();
    v65 = v5;

    v6 = v72;
    v7 = type metadata accessor for RatingView();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating] = 0;
    *&v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = 0;
    v9 = &v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding];
    *v9 = 0;
    v9[8] = 1;
    *&v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars] = v3;
    if (qword_10093F570 != -1)
    {
      swift_once();
    }

    v10 = qword_100944D30;
    *&v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = qword_100944D30;
    v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize] = v6;
    *v9 = 0;
    v9[8] = 1;
    v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase] = 1;
    objc_allocWithZone(type metadata accessor for StarRow());
    v11 = v10;
    *&v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView] = sub_10006446C(v3, 1, v6, 0, 1, 0, 1);
    v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = 0;
    *&v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView] = 0;
    v70.receiver = v8;
    v70.super_class = v7;
    v12 = objc_msgSendSuper2(&v70, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v13 = v12;
    v14 = *&v12[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView];
    v68 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView;
    if (!v14)
    {
      v17 = v12;
      goto LABEL_19;
    }

    v15 = *&v12[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor];
    if (v15)
    {
      v16 = *&v12[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor];
    }

    else
    {
      v16 = *&v12[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor];
    }

    v18 = *(v14 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor);
    *(v14 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor) = v16;
    if (!v18)
    {
      v24 = v15;
      v25 = v16;
      v26 = v13;
      v21 = 0;
LABEL_17:
      sub_10006363C();

      goto LABEL_18;
    }

    v19 = v15;
    v20 = v16;
    v21 = v18;
    v22 = v13;
    v23 = sub_100770EEC();

    if ((v23 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_18:
LABEL_19:
    v27 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView;
    v28 = *&v13[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
    v29 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor;
    v30 = *&v13[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor];
    v31 = *(v28 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor);
    *(v28 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor) = v30;
    if (!v31)
    {
      v35 = v30;
      v33 = 0;
LABEL_23:
      sub_10006363C();
      v32 = v30;
      goto LABEL_24;
    }

    v32 = v30;
    v33 = v31;
    v34 = sub_100770EEC();

    if ((v34 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_24:

    v36 = *&v13[v27];
    v37 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating;
    v38 = *&v36[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
    *&v36[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating] = *&v13[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating];
    v39 = v36;
    sub_100062B94(v38);

    if (*&v13[v68])
    {
      [v13 addSubview:?];
    }

    [v13 addSubview:{*&v13[v27], v65}];

    v40 = v3;
    v41 = *&v13[v37];
    *&v13[v37] = v3;
    if (v41 != v3)
    {
      if (v3 < 0)
      {
        v42 = 0.0;
      }

      else
      {
        v42 = *&v13[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars];
        if (v42 >= v40)
        {
          goto LABEL_32;
        }
      }

      *&v13[v37] = v42;
      v40 = v42;
LABEL_32:
      v43 = *&v13[v27];
      v44 = *(v43 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating);
      *(v43 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating) = v40;
      sub_100062B94(v44);
    }

    v45 = sub_100770CFC();
    v46 = *&v13[v29];
    *&v13[v29] = v45;
    v2 = v45;
    if (sub_100770EEC())
    {
      v1 = v2;
      v2 = v46;
      goto LABEL_5;
    }

    v47 = *&v13[v68];
    if (v47)
    {
      v48 = *&v13[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor];
      if (v48)
      {
        v49 = *&v13[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor];
      }

      else
      {
        v49 = *&v13[v29];
      }

      v50 = *(v47 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor);
      *(v47 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor) = v49;
      if (v50)
      {
        v51 = v48;
        v52 = v49;
        v50 = v50;
        v53 = sub_100770EEC();

        if (v53)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v54 = v48;
        v55 = v49;
      }

      sub_10006363C();
      v52 = v49;
LABEL_43:
    }

    v56 = *&v13[v27];
    v57 = *&v13[v29];
    v58 = *(v56 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor);
    *(v56 + OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_starColor) = v57;
    if (v58)
    {
      v59 = v57;
      v1 = v58;
      v60 = sub_100770EEC();

      if (v60)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v61 = v57;
      v1 = 0;
    }

    sub_10006363C();
    v59 = v57;
LABEL_49:

LABEL_5:
    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
    v0 = v69 + 8;
  }

  while (v69 != 32);
  v62 = OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v63 = *&v66[v62];
  *&v66[v62] = _swiftEmptyArrayStorage;
  sub_10008A31C(v63);

  return [v66 setNeedsLayout];
}

void sub_10008A230(void *a1)
{
  v2 = sub_1007706EC() & 1;
  v3 = [a1 traitCollection];
  v4 = sub_1007706EC() & 1;

  if (v2 != v4)
  {
    sub_100089BEC();
  }
}

unint64_t sub_10008A31C(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = sub_10077158C();
    v2 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = sub_10077149C();
    }

    else
    {
      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    [v4 removeFromSuperview];
  }

LABEL_10:
  v6 = OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_starViews;
  result = swift_beginAccess();
  v7 = *&v13[v6];
  if (v7 >> 62)
  {
    result = sub_10077158C();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_10077149C();
    }

    else
    {
      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    if (qword_10093F608 != -1)
    {
      swift_once();
    }

    ++v9;
    v12 = qword_100945B50;
    [v11 setMinimumContentSizeCategory:qword_100945B50];
    [v11 setMaximumContentSizeCategory:v12];
    [v13 addSubview:v11];
  }

  while (v8 != v9);
}

uint64_t sub_10008A510(void *a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 >> 62)
  {
    result = sub_10077158C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v10 = sub_10077149C();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1007841E0;
  *(v11 + 32) = a1;
  v12 = a1;
  v13 = sub_10076DEEC();
  [v10 measurementsWithFitting:v13 in:{a2, a3}];

  if (qword_10093F5E8 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A5D4(&unk_100945BD0);
  sub_10000A61C(v14, qword_100945AF0);
  sub_10075FDBC();
  if (qword_10093F5F0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v14, qword_100945B08);
  return sub_10075FDBC();
}

void sub_10008A75C(id a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_starViews;
  swift_beginAccess();
  v11 = *&v6[v10];
  if (v11 >> 62)
  {
LABEL_24:
    if (sub_10077158C())
    {
LABEL_3:
      if ((v11 & 0xC000000000000001) != 0)
      {

        v12 = sub_10077149C();
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v12 = *(v11 + 32);
      }

      sub_10076DEDC();
      sub_10000A5D4(&unk_100942870);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1007841E0;
      *(v13 + 32) = a1;
      v14 = a1;
      v15 = sub_10076DEEC();
      [v12 measurementsWithFitting:v15 in:{a4, a5}];
      v17 = v16;

      [v6 setFrame:{a2, a3, a4, a5}];
      if (qword_10093F5E8 != -1)
      {
        swift_once();
      }

      v18 = sub_10000A5D4(&unk_100945BD0);
      sub_10000A61C(v18, qword_100945AF0);
      sub_10075FDBC();
      if (qword_10093F5F0 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v18, qword_100945B08);
      sub_10075FDBC();
      if (qword_10093F5F8 != -1)
      {
        swift_once();
      }

      a1 = sub_10000A61C(v18, qword_100945B20);
      sub_10075FDBC();
      v19 = *&v6[OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_barViews];
      if ((v19 & 0xC000000000000001) != 0 || *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
      {
        v20 = v17 - v33;
        v21 = v33 + v33;
        v11 = 4;
        v22 = 0.0;
        while (1)
        {
          swift_beginAccess();
          v25 = *&v6[v10];
          if ((v25 & 0xC000000000000001) != 0)
          {
            v26 = sub_10077149C();
          }

          else
          {
            if (v11 - 4 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_24;
            }

            v26 = *(v25 + 8 * v11);
          }

          v27 = v26;
          swift_endAccess();
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1007841E0;
          *(v28 + 32) = v14;
          v29 = v14;
          v30 = sub_10076DEEC();
          [v27 measurementsWithFitting:v30 in:{a4, a5}];

          a1 = v27;
          [v6 bounds];
          sub_1007709CC();
          [a1 setFrame:?];

          if ((v19 & 0xC000000000000001) != 0)
          {
            v23 = sub_10077149C();
          }

          else
          {
            v23 = *(v19 + 8 * v11);
          }

          v22 = v21 + v22;
          v24 = v23;
          v34.origin.x = a2;
          v34.origin.y = a3;
          v34.size.width = a4;
          v34.size.height = a5;
          CGRectGetWidth(v34);
          [v6 bounds];
          sub_1007709CC();
          [v24 setFrame:?];

          v20 = v21 + v20;
          if (++v11 == 9)
          {
            return;
          }
        }
      }

      goto LABEL_28;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }
}

char *sub_10008AE10()
{
  *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_95941BD34515C691DC8D8E2915DD56D934ProductRatingsHistogramProgressBar_progress] = 0;
  v1 = [objc_allocWithZone(UIView) init];
  *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_95941BD34515C691DC8D8E2915DD56D934ProductRatingsHistogramProgressBar_progressView] = v1;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  v2 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 setClipsToBounds:1];
  v3 = [objc_opt_self() systemGray5Color];
  [v2 setBackgroundColor:v3];

  v4 = OBJC_IVAR____TtC20ProductPageExtensionP33_95941BD34515C691DC8D8E2915DD56D934ProductRatingsHistogramProgressBar_progressView;
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_95941BD34515C691DC8D8E2915DD56D934ProductRatingsHistogramProgressBar_progressView];
  sub_100016F40(0, &qword_100942F10);
  v6 = v5;
  v7 = sub_100770CFC();
  [v6 setBackgroundColor:v7];

  [v2 addSubview:*&v2[v4]];
  return v2;
}

void sub_10008AFF4()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_95941BD34515C691DC8D8E2915DD56D934ProductRatingsHistogramProgressBar_progressView];
  [v0 bounds];
  [v0 bounds];
  [v0 bounds];
  [v0 bounds];
  v2 = [v0 traitCollection];
  [v0 bounds];
  sub_1007709CC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
  v11 = [v0 layer];
  [v0 bounds];
  [v11 setCornerRadius:CGRectGetHeight(v14) * 0.5];

  v12 = [v1 layer];
  [v0 bounds];
  [v12 setCornerRadius:CGRectGetHeight(v15) * 0.5];
}

id sub_10008B224()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductRatingsHistogramProgressBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10008B290(uint64_t a1)
{
  if (qword_10093F608 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_100945B50;
  sub_10008B8A4(a1, *(a1 + 24));
  v2 = v1;
  return sub_10076E37C();
}

double sub_10008B31C(uint64_t a1, double a2)
{
  v4 = sub_10076048C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F600 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A5D4(&unk_100945BE0);
  sub_10000A61C(v8, qword_100945B38);
  sub_10075FDBC();
  v9 = v28;
  v10 = sub_10077073C();
  v26[1] = a1;
  if (v9 <= 1)
  {
    if (v9)
    {
      v12 = &UIFontTextStyleCaption2;
    }

    else
    {
      v12 = &UIFontTextStyleHeadline;
    }

    v11 = [objc_opt_self() configurationWithTextStyle:*v12 scale:2];
  }

  else if (v9 == 2)
  {
    v11 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v9 == 3)
  {
    v11 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:10.0];
  }

  else
  {
    v11 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:6.0];
  }

  v13 = v11;
  v27 = *(v5 + 104);
  v27(v7, enum case for SystemImage.star(_:), v4);
  v26[0] = v10;
  v14 = [v13 configurationWithTraitCollection:v10];
  v15 = sub_10076046C();

  v16 = *(v5 + 8);
  v16(v7, v4);
  [v15 contentInsets];
  [v15 contentInsets];
  [v15 size];
  [v15 contentInsets];
  [v15 contentInsets];
  [v15 size];

  if (v9 <= 1)
  {
    if (v9)
    {
      v18 = &UIFontTextStyleCaption2;
    }

    else
    {
      v18 = &UIFontTextStyleHeadline;
    }

    v17 = [objc_opt_self() configurationWithTextStyle:*v18 scale:2];
  }

  else if (v9 == 2)
  {
    v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  }

  else if (v9 == 3)
  {
    v17 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:10.0];
  }

  else
  {
    v17 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:6.0];
  }

  v19 = v27;
  v20 = v17;
  v19(v7, enum case for SystemImage.starFill(_:), v4);
  v21 = v26[0];
  v22 = [v20 configurationWithTraitCollection:v26[0]];
  v23 = sub_10076046C();

  v16(v7, v4);
  sub_100770E5C();
  [v23 contentInsets];

  if (qword_10093F5E8 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A5D4(&unk_100945BD0);
  sub_10000A61C(v24, qword_100945AF0);
  sub_10075FDBC();
  if (qword_10093F5F0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v24, qword_100945B08);
  sub_10075FDBC();
  return a2;
}

uint64_t sub_10008B8A4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

double sub_10008B90C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_1007617CC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10076178C() & 1) == 0)
  {
    [a7 pageMarginInsets];
    a1 = a1 - v13 - v14;
  }

  sub_1007617EC();
  v15 = [a7 traitCollection];
  sub_1007617AC();

  (*(v10 + 8))(v12, v9);
  return a1;
}

void sub_10008BA48()
{
  v0 = sub_1007617CC();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007617EC();
  sub_100067C68(v2);
  v3 = sub_1007617DC();
  sub_100068794(v3);
}

uint64_t sub_10008BB80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008BBC8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_10008C3EC(*a1 + 16, v14);
  sub_10008C448(v14, v9);
  sub_10008C448(a2, &v11);
  if (!v10)
  {
    sub_10000CFBC(v14, &qword_100943310);
    if (!*(&v12 + 1))
    {
      result = sub_10000CFBC(v9, &qword_100943310);
      v4 = 1;
      goto LABEL_8;
    }

LABEL_7:
    result = sub_10000CFBC(v9, &qword_100945D30);
    v4 = 0;
    goto LABEL_8;
  }

  sub_10008C448(v9, v8);
  if (!*(&v12 + 1))
  {
    sub_10000CFBC(v14, &qword_100943310);
    sub_100016C74(v8);
    goto LABEL_7;
  }

  v6[0] = v11;
  v6[1] = v12;
  v7 = v13;
  v4 = sub_1007713EC();
  sub_100016C74(v6);
  sub_10000CFBC(v14, &qword_100943310);
  sub_100016C74(v8);
  result = sub_10000CFBC(v9, &qword_100943310);
LABEL_8:
  *(v3 + 72) = v4 & 1;
  return result;
}

uint64_t sub_10008BD3C(void *a1, uint64_t a2)
{
  sub_10008C3EC(*a1 + 16, v13);
  sub_10008C448(v13, v8);
  sub_10008C448(a2, &v10);
  if (!v9)
  {
    sub_10000CFBC(v13, &qword_100943310);
    if (!*(&v11 + 1))
    {
      sub_10000CFBC(v8, &qword_100943310);
      v3 = 1;
      return v3 & 1;
    }

LABEL_7:
    sub_10000CFBC(v8, &qword_100945D30);
    v3 = 0;
    return v3 & 1;
  }

  sub_10008C448(v8, v7);
  if (!*(&v11 + 1))
  {
    sub_10000CFBC(v13, &qword_100943310);
    sub_100016C74(v7);
    goto LABEL_7;
  }

  v5[0] = v10;
  v5[1] = v11;
  v6 = v12;
  v3 = sub_1007713EC();
  sub_100016C74(v5);
  sub_10000CFBC(v13, &qword_100943310);
  sub_100016C74(v7);
  sub_10000CFBC(v8, &qword_100943310);
  return v3 & 1;
}

uint64_t sub_10008BEA4(void *a1)
{
  if (*v1 != *a1)
  {
    goto LABEL_18;
  }

  v2 = v1;
  if ((sub_1007713EC() & 1) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for MenuDebugSetting();
  v3 = swift_dynamicCastClass();
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 56) == v2[7] && *(v3 + 64) == v2[8];
    if (v5 || (sub_10077167C() & 1) != 0)
    {
      v6 = v2[9];

      LOBYTE(v6) = sub_1000CC73C(v7, v6);

      if (v6)
      {
        v9 = (*(v4 + 80))(v20, v8);
        (v2[10])(v19, v9);
        sub_10008C448(v20, v14);
        sub_10008C448(v19, &v16);
        if (v15)
        {
          sub_10008C448(v14, v13);
          if (*(&v17 + 1))
          {
            v11[0] = v16;
            v11[1] = v17;
            v12 = v18;
            LOBYTE(v4) = sub_1007713EC();

            sub_100016C74(v11);
            sub_10000CFBC(v19, &qword_100943310);
            sub_10000CFBC(v20, &qword_100943310);
            sub_100016C74(v13);
            sub_10000CFBC(v14, &qword_100943310);
            return v4 & 1;
          }

          sub_10000CFBC(v19, &qword_100943310);
          sub_10000CFBC(v20, &qword_100943310);
          sub_100016C74(v13);
        }

        else
        {

          sub_10000CFBC(v19, &qword_100943310);
          sub_10000CFBC(v20, &qword_100943310);
          if (!*(&v17 + 1))
          {
            sub_10000CFBC(v14, &qword_100943310);
            LOBYTE(v4) = 1;
            return v4 & 1;
          }
        }

        sub_10000CFBC(v14, &qword_100945D30);
      }

      else
      {
      }
    }

LABEL_18:
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

void sub_10008C150()
{
  sub_1007713FC();
  sub_10077008C();
  v1 = *(v0 + 72);
  if (v1 >> 62)
  {
    v7 = sub_10077158C();
    sub_10077176C(v7);
    v2 = sub_10077158C();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_10077176C(*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = sub_10077149C();
      sub_1007713FC();
      sub_10077008C();
      sub_10077177C(*(v4 + 72));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (v1 + 32);
    do
    {
      v6 = *v5++;

      sub_1007713FC();
      sub_10077008C();
      sub_10077177C(*(v6 + 72));

      --v2;
    }

    while (v2);
  }

LABEL_10:
  (*(v0 + 80))(v13);
  sub_10008C448(v13, &v10);
  if (*(&v11 + 1))
  {
    v8[0] = v10;
    v8[1] = v11;
    v9 = v12;
    sub_10077177C(1u);
    sub_1007713FC();
    sub_100016C74(v8);
  }

  else
  {
    sub_10077177C(0);
  }

  sub_10000CFBC(v13, &qword_100943310);
}

uint64_t sub_10008C320()
{
}

uint64_t sub_10008C358()
{
  sub_100016C74(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10008C448(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100943310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10008C570()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30LocalizationTestViewController_objectGraph];
  v3 = qword_10093F610;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_100945D38;

  sub_10008F3C0(v2, v41 + 8);
  *&v41[0] = v2;
  *(&v42 + 1) = v4;
  v39[7] = v41[2];
  v39[8] = v41[3];
  v39[9] = v42;
  v39[5] = v41[0];
  v39[6] = v41[1];
  v5 = objc_allocWithZone(sub_10000A5D4(&qword_100945D70));
  sub_10008F744(v41, v39);
  v6 = sub_10076EBFC();
  [v1 addChildViewController:v6];
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v6 view];

  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v10 addSubview:v11];

  sub_10000A5D4(&unk_100942870);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100786040;
  v13 = [v6 view];

  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = [v13 topAnchor];

  v15 = [v1 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v12 + 32) = v18;
  v19 = [v6 view];

  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = [v19 leadingAnchor];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v12 + 40) = v24;
  v25 = [v6 view];

  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = [v25 bottomAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v12 + 48) = v30;
  v31 = [v6 view];

  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = [v31 trailingAnchor];

  v33 = [v1 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 trailingAnchor];

    v37 = [v32 constraintEqualToAnchor:v36];
    *(v12 + 56) = v37;
    sub_100016F40(0, &qword_100945D78);
    isa = sub_1007701AC().super.isa;

    [v35 activateConstraints:isa];

    [v6 didMoveToParentViewController:v1];
    sub_10008F77C(v41);
    return;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_10008CB40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v65 = a2;
  v64 = sub_10000A5D4(&qword_100945DC8);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v55 - v3;
  v76 = sub_10000A5D4(&qword_100945DD0);
  v66 = *(v76 - 8);
  __chkstk_darwin(v76);
  v82 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v55 - v6;
  v61 = sub_10076E9BC();
  v7 = *(v61 - 1);
  __chkstk_darwin(v61);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000A5D4(&qword_100945DD8);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v11 = &v55 - v10;
  v74 = sub_10000A5D4(&qword_100945DE0);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v55 - v14;
  v15 = *(a1 + 24);
  v87 = *(a1 + 8);
  v88 = v15;
  *v89 = *(a1 + 40);
  *&v89[9] = *(a1 + 49);
  sub_10008D5D8();
  sub_10076ED5C();
  v72 = sub_10076EDAC();
  v71 = v16;
  v60 = v17;
  v81 = v18;

  if (v88)
  {
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    sub_10077145C(48);

    *&v84 = 0x100000000000002ELL;
    *(&v84 + 1) = 0x80000001007D19D0;
    sub_1007700CC(v87);
  }

  sub_10076ED5C();
  v79 = sub_10076EDAC();
  v78 = v19;
  v57 = v20;
  v80 = v21;

  sub_10076ED5C();
  v68 = sub_10076EDAC();
  v67 = v22;
  v56 = v23;
  v69 = v24;

  *&v84 = 0xD000000000000017;
  *(&v84 + 1) = 0x80000001007D1970;
  v85 = 0;
  v86 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v25);
  *(&v55 - 2) = a1;
  sub_10000A5D4(&qword_100945DE8);
  sub_10008FE68();
  sub_10076EF6C();
  v26 = enum case for Prominence.increased(_:);
  v27 = *(v7 + 104);
  v28 = v9;
  v29 = v9;
  v30 = v61;
  v27(v29, enum case for Prominence.increased(_:), v61);
  sub_100090000(&qword_100945E00, &qword_100945DD8, &unk_1007886C0, sub_10008FE68);
  v31 = v58;
  sub_10076EE9C();
  v55 = *(v7 + 8);
  v55(v28, v30);
  v32 = (*(v59 + 8))(v11, v31);
  v84 = xmmword_1007884B0;
  v85 = 0;
  v86 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v32);
  *(&v55 - 2) = a1;
  sub_10000A5D4(&qword_100945E08);
  sub_10008FF48();
  v33 = v62;
  sub_10076EF6C();
  v27(v28, v26, v30);
  sub_100090000(&qword_100945E28, &qword_100945DC8, &unk_1007886B0, sub_10008FF48);
  v34 = v75;
  v35 = v64;
  sub_10076EE9C();
  v55(v28, v30);
  (*(v63 + 8))(v33, v35);
  v36 = v60 & 1;
  LOBYTE(v84) = v60 & 1;
  v83 = v57 & 1;
  LOBYTE(v28) = v57 & 1;
  LODWORD(v63) = v57 & 1;
  v62 = *(v73 + 16);
  v37 = v70;
  v38 = v74;
  (v62)(v70, v77, v74);
  v39 = v66;
  v61 = *(v66 + 16);
  (v61)(v82, v34, v76);
  v40 = v65;
  v41 = v72;
  v42 = v71;
  *v65 = v72;
  v40[1] = v42;
  *(v40 + 16) = v36;
  v43 = v79;
  v40[3] = v81;
  v40[4] = v43;
  v40[5] = v78;
  *(v40 + 48) = v28;
  v44 = v68;
  v40[7] = v80;
  v40[8] = v44;
  v40[9] = v67;
  LODWORD(v64) = v56 & 1;
  *(v40 + 80) = v56 & 1;
  v40[11] = v69;
  v45 = sub_10000A5D4(&qword_100945E30);
  (v62)(v40 + *(v45 + 80), v37, v38);
  v46 = v40 + *(v45 + 96);
  v47 = v76;
  (v61)(v46, v82, v76);
  sub_100090090(v41, v42, v36);

  sub_100090090(v79, v78, v63);

  v48 = v68;
  v49 = v67;
  LOBYTE(v45) = v64;
  sub_100090090(v68, v67, v64);
  v50 = *(v39 + 8);

  v51 = v47;
  v50(v75, v47);
  v52 = *(v73 + 8);
  v53 = v74;
  v52(v77, v74);
  v50(v82, v51);
  v52(v70, v53);
  sub_1000900A0(v48, v49, v45);

  sub_1000900A0(v79, v78, v83);

  sub_1000900A0(v72, v71, v84);
}

uint64_t sub_10008D5D8()
{
  if (*(v0 + 18))
  {
    sub_10077145C(20);

    v2 = 0x1000000000000012;
  }

  else
  {
    sub_10077145C(41);

    v2 = 0x1000000000000027;
  }

  sub_1007700CC(*(v0 + 24));
  return v2;
}

uint64_t sub_10008D694()
{

  sub_10000A5D4(&qword_100945E68);
  sub_100071820(&qword_100945E70, &qword_100945E68);
  sub_10008FEEC();
  sub_100090104();
  return sub_10076EF5C();
}

uint64_t sub_10008D76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000A5D4(&qword_100945E38);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_10076D09C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000A5D4(&qword_100945E20);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - v10;
  if (*(a1 + 64))
  {
    v20[6] = 0xD000000000000016;
    v20[7] = 0x80000001007886E0;
    v21 = 1;
    v20[3] = sub_10076E9EC();
    sub_10076D08C();
    v20[2] = sub_10000A5D4(&qword_100945DE8);
    v20[4] = v4;
    v20[5] = a2;
    v20[1] = sub_10000A5D4(&qword_100945E40);
    sub_10000A5D4(&qword_100945E48);
    sub_1000900B0();
    sub_10008FE68();
    sub_100071820(&qword_100945E58, &qword_100945E40);
    sub_100071820(&qword_100945E60, &qword_100945E48);
    sub_10076D05C();
    (*(v9 + 16))(v6, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_100071820(&qword_100945E18, &qword_100945E20);
    sub_10076EC0C();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {

    sub_10076ED5C();
    v13 = sub_10076EDAC();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    *v6 = v13;
    *(v6 + 1) = v15;
    v6[16] = v17 & 1;
    *(v6 + 3) = v19;
    swift_storeEnumTagMultiPayload();
    sub_100071820(&qword_100945E18, &qword_100945E20);
    return sub_10076EC0C();
  }
}

uint64_t sub_10008DBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return ContentUnavailableView.init<>(error:retry:)(a1, a2, a3);
}

uint64_t sub_10008DC18()
{

  sub_10000A5D4(&qword_100945E68);
  sub_100071820(&qword_100945E70, &qword_100945E68);
  sub_10008FEEC();
  sub_100090104();
  return sub_10076EF5C();
}

uint64_t sub_10008DCF0@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v11 = a1[4];
  v3 = v11;
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  a2[4] = v3;
  *a2 = v5;
  a2[1] = v4;
  return sub_100090158(v8, &v7);
}

uint64_t sub_10008DD60()
{
  v1 = sub_10000A5D4(&qword_100945DA0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-v3];
  v5 = v0[3];
  v13[2] = v0[2];
  v13[3] = v5;
  v13[4] = v0[4];
  v6 = v0[1];
  v13[0] = *v0;
  v13[1] = v6;
  v9 = v13;
  sub_10000A5D4(&qword_100945DA8);
  sub_100071820(&qword_100945DB0, &qword_100945DA8);
  sub_10076ED7C();
  v11 = sub_10076421C();
  v12 = sub_10008FE18(&qword_100945DB8, &type metadata accessor for JSIntentDispatcher);
  sub_10076F64C();
  sub_10076FC1C();
  sub_100071820(&qword_100945DC0, &qword_100945DA0);
  sub_10076EDFC();
  (*(v2 + 8))(v4, v1);
  return sub_10000CD74(v10);
}

uint64_t sub_10008DF90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[6] != a1[4] || a1[7] != a1[5])
  {
    sub_10077167C();
  }

  sub_10076ED2C();
  v5 = sub_10076EDAC();
  v7 = v6;
  v25 = v8;
  v10 = v9;

  v11 = sub_10076EBBC();
  v26[0] = 0;
  sub_10008E258(a1, &v39);
  v32 = *&v40[48];
  v33 = *&v40[64];
  v34 = *&v40[80];
  v35 = *&v40[96];
  v28 = v39;
  v29 = *v40;
  v30 = *&v40[16];
  v31 = *&v40[32];
  v36[0] = v39;
  v36[1] = *v40;
  v36[2] = *&v40[16];
  v36[3] = *&v40[32];
  v36[4] = *&v40[48];
  v36[5] = *&v40[64];
  v36[6] = *&v40[80];
  v36[7] = *&v40[96];
  sub_100016E2C(&v28, &v37, &qword_100945E98);
  sub_10000CFBC(v36, &qword_100945E98);
  *&v27[71] = v32;
  *&v27[87] = v33;
  *&v27[103] = v34;
  *&v27[119] = v35;
  *&v27[7] = v28;
  *&v27[23] = v29;
  *&v27[39] = v30;
  *&v27[55] = v31;
  *&v37 = v11;
  *(&v37 + 1) = 0x4020000000000000;
  v38[0] = 0;
  *&v38[65] = *&v27[64];
  v13 = *&v27[48];
  v12 = *&v27[64];
  *&v38[49] = *&v27[48];
  *&v38[33] = *&v27[32];
  v15 = *&v27[16];
  v14 = *&v27[32];
  *&v38[17] = *&v27[16];
  *&v38[128] = *(&v35 + 1);
  *&v38[113] = *&v27[112];
  v17 = *&v27[96];
  v16 = *&v27[112];
  *&v38[97] = *&v27[96];
  v18 = *&v27[80];
  *&v38[81] = *&v27[80];
  v19 = *v27;
  *&v38[1] = *v27;
  v20 = *&v38[96];
  *(a2 + 128) = *&v38[80];
  *(a2 + 144) = v20;
  *(a2 + 160) = *&v38[112];
  v21 = *&v38[32];
  *(a2 + 64) = *&v38[16];
  *(a2 + 80) = v21;
  v22 = *&v38[64];
  *(a2 + 96) = *&v38[48];
  *(a2 + 112) = v22;
  v23 = *v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v23;
  *&v40[81] = v18;
  *&v40[97] = v17;
  *v41 = v16;
  *&v40[17] = v15;
  *&v40[33] = v14;
  *&v40[49] = v13;
  *&v40[65] = v12;
  v26[152] = v25 & 1;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v10;
  *(a2 + 176) = *&v38[128];
  *&v39 = v11;
  *(&v39 + 1) = 0x4020000000000000;
  v40[0] = 0;
  *&v41[15] = *&v27[127];
  *&v40[1] = v19;
  sub_100090090(v5, v7, v25 & 1);

  sub_100016E2C(&v37, v26, &qword_100945EA0);
  sub_10000CFBC(&v39, &qword_100945EA0);
  sub_1000900A0(v5, v7, v25 & 1);
}

uint64_t sub_10008E258@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v35 = a1[8];
  v38 = a1[9];

  sub_10076ED2C();
  v37 = sub_10076EDAC();
  v41 = v6;
  v42 = v7;
  v40 = v8;

  v9 = v4 == v2 && v5 == v3;
  if (!v9 && (sub_10077167C() & 1) == 0)
  {
    v57._countAndFlagsBits = v2;
    v57._object = v3;
    sub_1007700CC(v57);
    sub_10076ED5C();
    v20 = sub_10076EDAC();
    v22 = v21;
    v34 = v23;
    v25 = v24;

    v58._countAndFlagsBits = v4;
    v58._object = v5;
    sub_1007700CC(v58);
    sub_10076ED5C();
    v26 = sub_10076EDAC();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    LOBYTE(v52[0]) = v34 & 1;
    sub_100090090(v20, v22, v34 & 1);

    sub_100090090(v26, v28, v30 & 1);

    sub_1000900A0(v26, v28, v30 & 1);

    sub_1000900A0(v20, v22, v34 & 1);

    sub_100090090(v20, v22, v34 & 1);

    sub_100090090(v26, v28, v30 & 1);
    *&v53 = v20;
    *(&v53 + 1) = v22;
    LOBYTE(v54) = v34 & 1;
    *(&v54 + 1) = v25;
    *&v55 = v26;
    *(&v55 + 1) = v28;
    LOBYTE(v56) = v30 & 1;
    *(&v56 + 1) = v32;

    v10._object = v38;
    if (v38)
    {
      goto LABEL_7;
    }

LABEL_9:
    v19 = 0;
    v39 = 0;
    v18 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v10._object = v38;
  if (!v38)
  {
    goto LABEL_9;
  }

LABEL_7:
  *&v52[0] = 0x203A65746F4ELL;
  *(&v52[0] + 1) = 0xE600000000000000;
  v10._countAndFlagsBits = v35;
  sub_1007700CC(v10);
  sub_10076ED4C();
  v11 = sub_10076EDAC();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = v15 & 1;
  v19 = v11;
  v39 = v13;
  sub_100090090(v11, v13, v15 & 1);

LABEL_10:
  v47 = v53;
  v48 = v54;
  v49 = v55;
  v51[0] = v53;
  v51[1] = v54;
  v50 = v56;
  v51[2] = v55;
  v51[3] = v56;
  v45 = v55;
  v46 = v56;
  v43 = v53;
  v44 = v54;
  sub_100090090(v37, v41, v40 & 1);

  sub_100090090(v37, v41, v40 & 1);

  sub_100016E2C(v51, v52, &qword_100945EA8);
  sub_100090500(v19, v39, v18, v17);
  sub_10000CFBC(&v53, &qword_100945EA8);
  sub_100090544(v19, v39, v18, v17);
  sub_1000900A0(v37, v41, v40 & 1);

  *a2 = v37;
  *(a2 + 8) = v41;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v42;
  *(a2 + 32) = v43;
  *(a2 + 48) = v44;
  *(a2 + 64) = v45;
  *(a2 + 80) = v46;
  *(a2 + 96) = v19;
  *(a2 + 104) = v39;
  *(a2 + 112) = v18;
  *(a2 + 120) = v17;
  sub_100090544(v19, v39, v18, v17);
  v52[0] = v47;
  v52[1] = v48;
  v52[2] = v49;
  v52[3] = v50;
  sub_10000CFBC(v52, &qword_100945EA8);
  sub_1000900A0(v37, v41, v40 & 1);
}

double sub_10008E704@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v28[1] = v1[1];
  v4 = v1[3];
  v28[2] = v1[2];
  v28[3] = v4;
  v28[4] = v1[4];
  v28[0] = v3;
  v5 = sub_10076EB2C();
  v27 = 0;
  sub_10008DF90(v28, &v14);
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v41[8] = v22;
  v41[9] = v23;
  v41[10] = v24;
  v41[4] = v18;
  v41[5] = v19;
  v41[6] = v20;
  v41[7] = v21;
  v41[0] = v14;
  v41[1] = v15;
  v40 = v25;
  v42 = v25;
  v41[2] = v16;
  v41[3] = v17;
  sub_100016E2C(&v29, v13, &qword_100945E90);
  sub_10000CFBC(v41, &qword_100945E90);
  *(&v26[8] + 7) = v37;
  *(&v26[9] + 7) = v38;
  *(&v26[10] + 7) = v39;
  *(&v26[11] + 7) = v40;
  *(&v26[4] + 7) = v33;
  *(&v26[5] + 7) = v34;
  *(&v26[6] + 7) = v35;
  *(&v26[7] + 7) = v36;
  *(v26 + 7) = v29;
  *(&v26[1] + 7) = v30;
  *(&v26[2] + 7) = v31;
  *(&v26[3] + 7) = v32;
  v6 = v26[9];
  *(a1 + 145) = v26[8];
  *(a1 + 161) = v6;
  *(a1 + 177) = v26[10];
  *(a1 + 192) = *(&v26[10] + 15);
  v7 = v26[5];
  *(a1 + 81) = v26[4];
  *(a1 + 97) = v7;
  v8 = v26[7];
  *(a1 + 113) = v26[6];
  *(a1 + 129) = v8;
  v9 = v26[1];
  *(a1 + 17) = v26[0];
  *(a1 + 33) = v9;
  result = *&v26[2];
  v11 = v26[3];
  *(a1 + 49) = v26[2];
  v12 = v27;
  *a1 = v5;
  *(a1 + 8) = 0x4038000000000000;
  *(a1 + 16) = v12;
  *(a1 + 65) = v11;
  return result;
}

uint64_t sub_10008E914()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];
  v2 = v1;
  if (!v1)
  {
    v3 = [v0 ams_fetchLocaliTunesAccount];
    v11 = 0;
    v4 = [v3 resultWithError:&v11];

    if (!v4)
    {
      v9 = v11;
      sub_10075DA4C();

      swift_willThrow();

      v2 = 0;
      goto LABEL_7;
    }

    v5 = v11;
    v2 = v4;
    v1 = 0;
  }

  v6 = v1;
  v7 = [v2 ams_storefront];

  if (!v7)
  {
LABEL_7:

    return 0;
  }

  v8 = sub_10076FF9C();

  return v8;
}

__n128 sub_10008EA9C@<Q0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10008F95C(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v7[4];
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t sub_10008EAEC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10008EAF8()
{
  v0 = sub_10075DDBC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100945D90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007884C0;
  v72 = 0x80000001007D1480;
  v75._countAndFlagsBits = 0xD000000000000016;
  v75._object = 0x80000001007D14B0;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  v5 = sub_1007622EC(v75, v84);
  v7 = v6;
  sub_10075DDAC();
  v8 = sub_10075DD8C();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v3, v0);
  v74 = v1 + 8;
  *(v4 + 32) = v8;
  *(v4 + 40) = v10;
  v12 = v72;
  *(v4 + 48) = 0xD000000000000025;
  *(v4 + 56) = v12;
  *(v4 + 64) = 1852141647;
  *(v4 + 72) = 0xE400000000000000;
  *(v4 + 80) = v5;
  *(v4 + 88) = v7;
  v72 = 0x80000001007D14D0;
  *(v4 + 96) = 0u;
  v76._countAndFlagsBits = 0x525F5245544F4F46;
  v76._object = 0xED00004D45454445;
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  v13 = sub_1007622EC(v76, v85);
  v15 = v14;
  sub_10075DDAC();
  v16 = sub_10075DD8C();
  v18 = v17;
  v11(v3, v0);
  *(v4 + 112) = v16;
  *(v4 + 120) = v18;
  v19 = v72;
  *(v4 + 128) = 0xD000000000000025;
  *(v4 + 136) = v19;
  *(v4 + 144) = 0x6D6565646552;
  *(v4 + 152) = 0xE600000000000000;
  *(v4 + 160) = v13;
  *(v4 + 168) = v15;
  v72 = 0x80000001007D1500;
  *(v4 + 176) = 0u;
  v77._object = 0x80000001007D1550;
  v77._countAndFlagsBits = 0xD000000000000013;
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  v70 = sub_100767D6C(v77, 2, v86);
  v21 = v20;
  sub_10075DDAC();
  v22 = sub_10075DD8C();
  v24 = v23;
  v73 = v0;
  v11(v3, v0);
  *(v4 + 192) = v22;
  *(v4 + 200) = v24;
  v25 = v72;
  *(v4 + 208) = 0xD000000000000041;
  *(v4 + 216) = v25;
  *(v4 + 224) = 0x676E697461522032;
  *(v4 + 232) = 0xE900000000000073;
  *(v4 + 240) = v70;
  *(v4 + 248) = v21;
  v72 = 0x80000001007D1570;
  *(v4 + 256) = 0u;
  v78._object = 0x80000001007D1550;
  v78._countAndFlagsBits = 0xD000000000000013;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v26 = sub_100767D6C(v78, 1, v87);
  v28 = v27;
  sub_10075DDAC();
  v29 = sub_10075DD8C();
  v31 = v30;
  v11(v3, v0);
  *(v4 + 272) = v29;
  *(v4 + 280) = v31;
  v32 = v72;
  *(v4 + 288) = 0xD000000000000041;
  *(v4 + 296) = v32;
  *(v4 + 304) = 0x676E697461522031;
  *(v4 + 312) = 0xE800000000000000;
  *(v4 + 320) = v26;
  *(v4 + 328) = v28;
  v72 = 0x80000001007D1600;
  v79._countAndFlagsBits = 0xD000000000000028;
  *(v4 + 336) = 0u;
  v79._object = 0x80000001007D1620;
  v88._countAndFlagsBits = 0;
  v88._object = 0xE000000000000000;
  v33 = sub_100767D6C(v79, 3, v88);
  v35 = v34;
  sub_10075DDAC();
  v36 = sub_10075DD8C();
  v38 = v37;
  v39 = v73;
  v71 = v11;
  v11(v3, v73);
  *(v4 + 352) = v36;
  *(v4 + 360) = v38;
  *(v4 + 368) = 0xD000000000000036;
  *(v4 + 376) = 0x80000001007D15C0;
  v40 = v72;
  *(v4 + 384) = 0xD000000000000017;
  *(v4 + 392) = v40;
  *(v4 + 400) = v33;
  *(v4 + 408) = v35;
  v72 = 0x80000001007D1650;
  v70 = 0x80000001007D16A0;
  *(v4 + 416) = 0u;
  v80._object = 0x80000001007D16C0;
  v80._countAndFlagsBits = 0xD00000000000002FLL;
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  v41 = sub_100767D6C(v80, 1, v89);
  v43 = v42;
  sub_10075DDAC();
  v44 = sub_10075DD8C();
  v46 = v45;
  v11(v3, v39);
  *(v4 + 432) = v44;
  *(v4 + 440) = v46;
  v47 = v72;
  *(v4 + 448) = 0xD000000000000045;
  *(v4 + 456) = v47;
  v48 = v70;
  *(v4 + 464) = 0xD000000000000014;
  *(v4 + 472) = v48;
  *(v4 + 480) = v41;
  *(v4 + 488) = v43;
  v72 = 0x80000001007D1740;
  *(v4 + 496) = 0u;
  v81._object = 0x80000001007D16C0;
  v81._countAndFlagsBits = 0xD00000000000002FLL;
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  v70 = sub_100767D6C(v81, 2, v90);
  v50 = v49;
  sub_10075DDAC();
  v51 = sub_10075DD8C();
  v53 = v52;
  v54 = v71;
  v71(v3, v39);
  *(v4 + 512) = v51;
  *(v4 + 520) = v53;
  *(v4 + 528) = 0xD000000000000045;
  *(v4 + 536) = 0x80000001007D16F0;
  *(v4 + 544) = 0xD000000000000015;
  *(v4 + 552) = 0x80000001007D1740;
  *(v4 + 560) = v70;
  *(v4 + 568) = v50;
  v70 = 0x80000001007D1760;
  v82._countAndFlagsBits = 0xD00000000000002CLL;
  *(v4 + 576) = 0u;
  v82._object = 0x80000001007D17C0;
  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  v55 = sub_100767D6C(v82, 2, v91);
  v57 = v56;
  sub_10075DDAC();
  v58 = sub_10075DD8C();
  v60 = v59;
  v61 = v73;
  v54(v3, v73);
  *(v4 + 592) = v58;
  *(v4 + 600) = v60;
  *(v4 + 608) = 0xD000000000000050;
  *(v4 + 616) = v70;
  *(v4 + 624) = 0xD000000000000015;
  *(v4 + 632) = v72;
  *(v4 + 640) = v55;
  *(v4 + 648) = v57;
  v83._countAndFlagsBits = 0xD000000000000011;
  *(v4 + 656) = 0u;
  v83._object = 0x80000001007D1820;
  v62 = sub_100769B9C(v83);
  v64 = v63;
  sub_10075DDAC();
  v65 = sub_10075DD8C();
  v67 = v66;
  result = (v54)(v3, v61);
  *(v4 + 672) = v65;
  *(v4 + 680) = v67;
  *(v4 + 688) = 0xD000000000000023;
  *(v4 + 696) = 0x80000001007D17F0;
  *(v4 + 704) = 0xB9B4E88D85E5;
  *(v4 + 712) = 0xA600000000000000;
  *(v4 + 720) = v62;
  *(v4 + 728) = v64;
  *(v4 + 736) = 0xD00000000000002FLL;
  *(v4 + 744) = 0x80000001007D1840;
  qword_100945D38 = v4;
  return result;
}

void sub_10008F1F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 valueWithNewObjectInContext:a1];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 valueWithObject:sub_1007716BC() inContext:a1];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_100770CBC();
      a2[3] = sub_100016F40(0, &qword_100945EC0);
      a2[4] = &protocol witness table for JSValue;

      *a2 = v6;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10008F324()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10008F394@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100090588(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_10008F3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000A5D4(&unk_100955860);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_10008E914();
  v31 = v9;
  v32 = v8;
  v36 = 0;
  v37 = 0xE000000000000000;

  sub_10077145C(64);
  v38._object = 0x80000001007D1440;
  v38._countAndFlagsBits = 0x1000000000000032;
  sub_1007700CC(v38);
  v39._object = 0x80000001007CF330;
  v39._countAndFlagsBits = 0xD000000000000013;
  sub_1007700CC(v39);
  v40._countAndFlagsBits = 0x206562206F742022;
  v40._object = 0xEC00000065757274;
  sub_1007700CC(v40);
  v29 = v37;
  v30 = v36;
  sub_10076F54C();
  sub_10076F73C();
  sub_10076F72C();
  sub_10076F41C();

  (*(v5 + 8))(v7, v4);
  v10 = v36;
  sub_10076148C();
  sub_10076F64C();
  v33 = a1;
  sub_10076FC1C();
  v28 = v36;
  v11 = sub_10076128C();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  if (v13 == 0x2D736E61482D687ALL && v14 == 0xEA00000000004E43)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_10077167C();
  }

  v26 = v15 & 1;
  v27 = v10 & 1;
  v16 = [objc_opt_self() mainBundle];
  v17._rawValue = &off_100882BF8;
  v18 = sub_100770EAC(v17);
  v20 = v19;

  v36 = v18;
  v37 = v20;
  v34 = 26746;
  v35 = 0xE200000000000000;
  sub_10008F7AC();
  sub_10008F800();
  LOBYTE(v16) = sub_10076FECC();

  LOBYTE(v20) = v16 & 1;
  v22 = v31;
  v21 = v32;
  v36 = v32;
  v37 = v31;
  v34 = 0x312D313434333431;
  v35 = 0xE800000000000000;
  LOBYTE(v16) = sub_10076FECC();

  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v26;
  *(a2 + 17) = v20;
  *(a2 + 18) = v16 & 1;
  *(a2 + 24) = v21;
  *(a2 + 32) = v22;
  v24 = v29;
  *(a2 + 40) = v30;
  *(a2 + 48) = v24;
  *(a2 + 56) = v27;
  return result;
}

unint64_t sub_10008F7AC()
{
  result = qword_100945D80;
  if (!qword_100945D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945D80);
  }

  return result;
}

unint64_t sub_10008F800()
{
  result = qword_100945D88;
  if (!qword_100945D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945D88);
  }

  return result;
}

__n128 sub_10008F854(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10008F888(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10008F8D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008F95C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v59 = a2;
  v4 = sub_10075DDBC();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F25C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = 0xE400000000000000;
  sub_10076F26C();
  v53 = sub_10076F23C();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v17, v6);
  if (v20)
  {
    v58 = v20;
    v22 = 0x6465746365707865;
    v18 = 0xE800000000000000;
    sub_10076F26C();
    v51 = sub_10076F23C();
    v24 = v23;
    v21(v14, v6);
    v25 = a1;
    if (v24)
    {
      v50 = v24;
      v22 = 0x6C6175746361;
      sub_10076F26C();
      v26 = sub_10076F23C();
      v28 = v27;
      v21(v11, v6);
      if (v28)
      {
        v48 = v26;
        v49 = v28;
        v29 = v52;
        sub_10076F26C();
        v30 = v21;
        v31 = sub_10076F23C();
        v33 = v32;
        v30(v29, v6);
        v34 = v54;
        sub_10075DDAC();
        v35 = sub_10075DD8C();
        v37 = v36;
        v38 = sub_10076F39C();
        (*(*(v38 - 8) + 8))(v59, v38);
        v30(v25, v6);
        result = (*(v55 + 8))(v34, v56);
        v40 = v57;
        *v57 = v35;
        v40[1] = v37;
        v41 = v58;
        v40[2] = v53;
        v40[3] = v41;
        v42 = v50;
        v40[4] = v51;
        v40[5] = v42;
        v43 = v49;
        v40[6] = v48;
        v40[7] = v43;
        v40[8] = v31;
        v40[9] = v33;
        return result;
      }

      v44 = v21;

      v18 = 0xE600000000000000;
    }

    else
    {
      v44 = v21;
    }
  }

  else
  {
    v44 = v21;
    v25 = a1;
    v22 = 1701667182;
  }

  v45 = sub_10076FD6C();
  sub_10008FE18(&qword_100945D98, &type metadata accessor for JSONError);
  swift_allocError();
  *v46 = v22;
  v46[1] = v18;
  v46[2] = &type metadata for LocalizationTestCase;
  (*(*(v45 - 8) + 104))(v46, enum case for JSONError.missingProperty(_:), v45);
  swift_willThrow();
  v47 = sub_10076F39C();
  (*(*(v47 - 8) + 8))(v59, v47);
  return v44(v25, v6);
}

uint64_t sub_10008FE18(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10008FE68()
{
  result = qword_100945DF0;
  if (!qword_100945DF0)
  {
    sub_10000CE78(&qword_100945DE8);
    sub_10008FEEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945DF0);
  }

  return result;
}

unint64_t sub_10008FEEC()
{
  result = qword_100945DF8;
  if (!qword_100945DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945DF8);
  }

  return result;
}

unint64_t sub_10008FF48()
{
  result = qword_100945E10;
  if (!qword_100945E10)
  {
    sub_10000CE78(&qword_100945E08);
    sub_100071820(&qword_100945E18, &qword_100945E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945E10);
  }

  return result;
}

uint64_t sub_100090000(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000CE78(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100090090(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000900A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1000900B0()
{
  result = qword_100945E50;
  if (!qword_100945E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945E50);
  }

  return result;
}

unint64_t sub_100090104()
{
  result = qword_100945E78;
  if (!qword_100945E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945E78);
  }

  return result;
}

uint64_t sub_100090190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000901D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100090228(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100090270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000902D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000902F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100090338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100090398()
{
  sub_10000CE78(&qword_100945DA0);
  sub_100071820(&qword_100945DC0, &qword_100945DA0);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100090434()
{
  result = qword_100945E80;
  if (!qword_100945E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945E80);
  }

  return result;
}

unint64_t sub_100090490()
{
  result = qword_100945E88;
  if (!qword_100945E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945E88);
  }

  return result;
}

uint64_t sub_100090500(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100090090(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100090544(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000900A0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100090588(char *a1, uint64_t a2)
{
  v32 = a2;
  v31 = sub_10076F39C();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_100945EB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_10076F25C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076FD5C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v33 = a1;
  sub_10076F26C();
  sub_10076F21C();
  v18 = *(v8 + 8);
  v30 = v7;
  v18(v10, v7);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_10000CFBC(v6, &qword_100945EB0);
    v19 = sub_10076FD6C();
    sub_10008FE18(&qword_100945D98, &type metadata accessor for JSONError);
    swift_allocError();
    *v20 = 0x6573614374736574;
    v20[1] = 0xE900000000000073;
    v20[2] = &type metadata for LocalizationTestResponse;
    (*(*(v19 - 8) + 104))(v20, enum case for JSONError.missingProperty(_:), v19);
    swift_willThrow();
    (*(v29 + 8))(v32, v31);
    v18(v33, v30);
  }

  else
  {
    (*(v12 + 32))(v17, v6, v11);
    v21 = *(v12 + 16);
    v27 = v18;
    v21(v14, v17, v11);
    v22 = v29;
    v24 = v31;
    v23 = v32;
    (*(v29 + 16))(v28, v32, v31);
    sub_100090A20();
    v19 = sub_10077027C();
    (*(v22 + 8))(v23, v24);
    v27(v33, v30);
    (*(v12 + 8))(v17, v11);
  }

  return v19;
}

unint64_t sub_100090A20()
{
  result = qword_100945EB8;
  if (!qword_100945EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945EB8);
  }

  return result;
}

double sub_100090AE0(double a1)
{
  v3 = sub_10076DD3C();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v31 - v7;
  __chkstk_darwin(v9);
  v11 = v31 - v10;
  __chkstk_darwin(v12);
  v13 = sub_10076DA7C();
  v35 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10077071C() & 1) != 0 || (sub_1007706EC())
  {
    v16 = 1;
  }

  else
  {
    v32 = v1;
    v33 = v13;
    v37._object = 0x80000001007D1A70;
    v37._countAndFlagsBits = 0xD000000000000016;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v17 = sub_1007622EC(v37, v38);
    v31[1] = v18;
    v31[2] = v17;
    sub_10076DD2C();
    if (qword_100940CA8 != -1)
    {
      swift_once();
    }

    v19 = sub_10076D3DC();
    sub_10000A61C(v19, qword_1009A13F0);
    sub_10076DCFC();
    v20 = *(v34 + 8);
    v20(v5, v3);
    sub_10076DD1C();
    v20(v8, v3);
    sub_10076DD0C();
    v20(v11, v3);
    sub_10076DA5C();
    sub_10076DA9C();
    sub_10076DA6C();
    v22 = v21;
    v23 = v32;
    sub_10000CF78(v32 + 16, v32[19]);
    sub_10076E0FC();
    v25 = v24;
    sub_10000CF78(v23, v23[3]);
    sub_10076D41C();
    v27 = v26;
    (*(v35 + 8))(v15, v33);
    v16 = v25 + v22 + v27 > a1;
  }

  sub_100090EC4(v16, v36);
  sub_10000CF78(v36, v36[3]);
  sub_10076E0FC();
  v29 = v28;
  sub_10000CD74(v36);
  return v29;
}

uint64_t sub_100090EC4@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_10076D8DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_10076D65C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  if (a1)
  {
    sub_10076D63C();
    sub_1000918B8(v3, &v38);
    v19 = swift_allocObject();
    v20 = v47;
    *(v19 + 144) = v46;
    *(v19 + 160) = v20;
    *(v19 + 176) = v48;
    v21 = v43;
    *(v19 + 80) = v42;
    *(v19 + 96) = v21;
    v22 = v45;
    *(v19 + 112) = v44;
    *(v19 + 128) = v22;
    v23 = v39;
    *(v19 + 16) = v38;
    *(v19 + 32) = v23;
    v24 = v41;
    *(v19 + 48) = v40;
    *(v19 + 64) = v24;
    sub_10076D64C();

    v25 = *(v13 + 8);
    v25(v15, v12);
    v26 = v37;
    v37[3] = v12;
    v26[4] = &protocol witness table for VerticalStack;
    sub_10000DB7C(v26);
    sub_10076D64C();
    return (v25)(v18, v12);
  }

  else
  {
    sub_10076D8AC();
    sub_1000918B8(v3, &v38);
    v28 = swift_allocObject();
    v29 = v47;
    *(v28 + 144) = v46;
    *(v28 + 160) = v29;
    *(v28 + 176) = v48;
    v30 = v43;
    *(v28 + 80) = v42;
    *(v28 + 96) = v30;
    v31 = v45;
    *(v28 + 112) = v44;
    *(v28 + 128) = v31;
    v32 = v39;
    *(v28 + 16) = v38;
    *(v28 + 32) = v32;
    v33 = v41;
    *(v28 + 48) = v40;
    *(v28 + 64) = v33;
    sub_10076D8BC();

    v34 = *(v6 + 8);
    v34(v8, v5);
    v35 = v37;
    v37[3] = v5;
    v35[4] = &protocol witness table for HorizontalStack;
    sub_10000DB7C(v35);
    sub_10076D8BC();
    return (v34)(v11, v5);
  }
}

uint64_t sub_10009124C(void *a1, double a2, double a3, double a4)
{
  v48 = sub_10076D58C();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v41 - v10;
  v12 = sub_10076DD3C();
  v44 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v41 - v16;
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  __chkstk_darwin(v21);
  v22 = sub_10076DA7C();
  v45 = *(v22 - 8);
  v46 = v22;
  __chkstk_darwin(v22);
  v24 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10077071C();
  v49 = a1;
  if (v25 & 1) != 0 || (sub_1007706EC())
  {
    v26 = 0;
    v27 = 1;
  }

  else
  {
    v42 = v11;
    v43 = v6;
    v51._object = 0x80000001007D1A70;
    v51._countAndFlagsBits = 0xD000000000000016;
    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    v41[1] = sub_1007622EC(v51, v52);
    v41[0] = v28;
    sub_10076DD2C();
    if (qword_100940CA8 != -1)
    {
      swift_once();
    }

    v29 = sub_10076D3DC();
    sub_10000A61C(v29, qword_1009A13F0);
    sub_10076DCFC();
    v30 = *(v44 + 8);
    v30(v14, v12);
    v27 = 1;
    sub_10076DD1C();
    v30(v17, v12);
    sub_10076DD0C();
    v30(v20, v12);
    sub_10076DA5C();
    sub_10076DA9C();
    sub_10076DA6C();
    v32 = v31;
    v33 = v47;
    sub_10000CF78((v47 + 128), *(v47 + 152));
    sub_10076E0FC();
    v35 = v34;
    sub_10000CF78(v33, *(v33 + 24));
    sub_10076D41C();
    v37 = v36;
    (*(v45 + 8))(v24, v46);
    if (v35 + v32 + v37 <= a4)
    {
      v27 = 0;
      v26 = *(v33 + 40) ^ 1;
    }

    else
    {
      v26 = 0;
    }

    v6 = v43;
    v11 = v42;
  }

  sub_100090EC4(v27, v50);
  sub_10076D55C();
  *(swift_allocObject() + 16) = v26 & 1;
  sub_10076D57C();

  v38 = *(v6 + 8);
  v39 = v48;
  v38(v8, v48);
  sub_1003B7E14(v49);
  v38(v11, v39);
  return sub_10000CD74(v50);
}

void sub_10009178C(uint64_t a1, char a2)
{
  v3 = sub_10076D54C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v6[3] = sub_10076D67C();
    v6[4] = &protocol witness table for ZeroDimension;
    sub_10000DB7C(v6);
    sub_10076D66C();
    (*(v4 + 104))(v6, enum case for DisjointStack.EdgePosition.anchored(_:), v3);
    sub_10076D50C();
  }
}

uint64_t sub_100091934()
{
  sub_10000CD74(v0 + 16);
  sub_10000CD74(v0 + 64);
  sub_10000CD74(v0 + 104);
  sub_10000CD74(v0 + 144);

  return _swift_deallocObject(v0, 184, 7);
}

__n128 sub_1000919E4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_100091A20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_100091A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100091AE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100091B04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100091B4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100091BC4()
{
  result = qword_100945ED8;
  if (!qword_100945ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945ED8);
  }

  return result;
}

uint64_t sub_100091C1C(uint64_t a1, uint64_t a2)
{
  sub_10000A5D4(&unk_100942870);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007841E0;
  sub_10000A5D4(&qword_1009453E0);
  v5 = *(type metadata accessor for Accessory() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100783DD0;
  v8 = (v7 + v6);
  v9 = *(sub_10000A5D4(&qword_1009453E8) + 48);
  *v8 = 1;
  sub_100016E2C(a2, &v8[v9], &qword_100945140);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_1000FC424(_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_100076AA0;
  v11[3] = v10;
  sub_100529FCC(a1);

  *(v4 + 32) = v11;
  return v4;
}

void sub_100091DD8()
{
  v1 = sub_10076F08C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F0CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0 + qword_100945F30;
  if ((*(v0 + qword_100945F30 + 16) & 1) == 0)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    v15 = v7;
    sub_100016F40(0, &qword_1009471F0);
    v14 = sub_10077068C();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10009831C;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_1008870C0;
    v12 = _Block_copy(aBlock);

    sub_10076F0AC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100098190(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0);
    sub_100071820(&qword_100945170, &unk_10094E1C0);
    sub_1007712CC();
    v13 = v14;
    sub_10077069C();
    _Block_release(v12);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v9, v15);
  }
}

void *sub_1000920EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController);
  v2 = v1;
  return v1;
}

void sub_100092120(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  sub_10076857C();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v12 = v5;

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  [v7 bounds];

  sub_10076856C();
  v9 = *&v1[v3];
  if (v9)
  {
    v10 = [v9 view];
    if (v10)
    {
      v11 = v10;
      [v10 setInsetsLayoutMarginsFromSafeArea:0];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:
}

void sub_10009225C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = a1;
  if ([v4 isViewLoaded])
  {
  }

  else
  {
    v5.receiver = v4;
    v5.super_class = ObjectType;
    objc_msgSendSuper2(&v5, "loadView");
    v3 = [v4 navigationItem];
    [v3 setTitle:0];
  }
}

void sub_100092318(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewWillAppear:", a3);
  sub_1000964AC(0, 0, a3);
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;
    [v5 bounds];

    sub_100098190(&qword_100946568, type metadata accessor for ArcadeDiffablePageViewController);
    sub_10076A6CC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100092418(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076F08C();
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076F0CC();
  v8 = *(v21 - 8);
  *&v9 = __chkstk_darwin(v21).n128_u64[0];
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidAppear:", a1 & 1, v9);
  v12 = &v2[qword_100945EF0];
  v13 = *&v2[qword_100945EF0];
  if (v13)
  {

    v13(v14);
    sub_1000167E0(v13);
    v15 = *v12;
  }

  else
  {
    v15 = 0;
  }

  *v12 = 0;
  v12[1] = 0;
  sub_1000167E0(v15);
  if (sub_100768C3C())
  {
    sub_1000927A0();
  }

  sub_100016F40(0, &qword_1009471F0);
  v16 = sub_10077068C();
  v17 = swift_allocObject();
  *(v17 + 16) = v2;
  aBlock[4] = sub_1000982C4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_1008873B8;
  v18 = _Block_copy(aBlock);
  v19 = v2;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100098190(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_100071820(&qword_100945170, &unk_10094E1C0);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v18);

  (*(v22 + 8))(v7, v5);
  return (*(v8 + 8))(v11, v21);
}

void sub_1000927A0()
{
  v1 = v0;
  v2 = sub_10075F38C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 viewIfLoaded];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 window];

    if (v9)
    {
      v10 = [v9 isHidden];

      if ((v10 & 1) == 0)
      {
        v11 = *(*&v1[qword_100945EE0] + 16);
        v12 = objc_allocWithZone(IAMCountableEvent);
        v13 = sub_10076FF6C();
        v14 = [v12 initWithName:v13];

        [v11 receiveEvent:v14];
        sub_100284264();
        sub_10075F3FC();
        sub_10076F64C();
        sub_10076FC1C();
        (*(v3 + 104))(v6, enum case for AppStoreEngagementEvent.arcadeTabDidComeOnScreen(_:), v2);
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_10075F39C();

        (*(v3 + 8))(v6, v2);
      }
    }
  }
}

void sub_100092A14()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v18 = v1;
    v2 = [v0 traitCollection];
    v3 = sub_1007706CC();

    v4 = [v18 navigationBar];
    v5 = v4;
    if (v3)
    {
      [v4 setUserInteractionEnabled:1];
      v6 = v18;
      v18 = v5;
    }

    else
    {
      [v4 _backgroundOpacity];
      v8 = v7;

      if (v8 >= 1.0)
      {
        v6 = [v18 navigationBar];
        [v6 setUserInteractionEnabled:1];
      }

      else
      {
        v9 = [v18 navigationItem];
        v10 = [v9 leftBarButtonItems];

        if (v10 && ((sub_100016F40(0, &qword_100958FF0), v11 = sub_1007701BC(), v10, v11 >> 62) ? (v12 = sub_10077158C()) : (v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v12))
        {
          v13 = 1;
        }

        else
        {
          v14 = [v18 navigationItem];
          v15 = [v14 rightBarButtonItems];

          if (v15)
          {
            sub_100016F40(0, &qword_100958FF0);
            v16 = sub_1007701BC();

            if (v16 >> 62)
            {
              v17 = sub_10077158C();
            }

            else
            {
              v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v13 = v17 != 0;
          }

          else
          {
            v13 = 0;
          }
        }

        v6 = [v18 navigationBar];
        [v6 setUserInteractionEnabled:v13];
      }
    }
  }
}

void sub_100092CBC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100092418(a3);
}

void sub_100092D10(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
  }

  else if ([v1 isViewLoaded])
  {
    sub_1000964AC(1, 1, a1 & 1);
    v4 = sub_10076C03C();
    v6[3] = v4;
    v6[4] = sub_100098190(&qword_100947230, &type metadata accessor for Feature.iOS);
    v5 = sub_10000DB7C(v6);
    (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v4);
    LOBYTE(v4) = sub_10076C90C();
    sub_10000CD74(v6);
    if (v4)
    {
      sub_100092A14();
    }
  }
}

void sub_100092E44(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100092D10(a3);
}

void sub_100092E98(void *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillLayoutSubviews");
  v2 = *&v1[qword_10099CC20];
  if (v2)
  {
    v3 = v2;
    sub_1004688C0();
    [v3 setHeight:{v4, v5.receiver, v5.super_class}];

    v1 = v3;
  }
}

id sub_100092F20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&unk_10094FD50);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_100770BFC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews", v8);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = result;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
  v14 = sub_100770BDC();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_100770BEC();
  sub_10000CFBC(v5, &unk_10094FD50);
  sub_100770C3C();
  v17 = v16;

  result = (*(v7 + 8))(v10, v6);
  v18 = &v1[qword_100945F18];
  v19 = *&v1[qword_100945F18];
  v20 = v1[qword_100945F18 + 8];
  *v18 = v17;
  *(v18 + 8) = 0;
  if ((v20 & 1) != 0 || v17 != v19)
  {
    result = [v1 view];
    if (result)
    {
      v21 = result;
      [result bounds];

      sub_100098190(&qword_100946568, type metadata accessor for ArcadeDiffablePageViewController);
      return sub_10076A6CC();
    }

LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_100093210(void *a1)
{
  v1 = a1;
  sub_100092F20();
}

void sub_100093258(uint64_t a1, double a2, double a3)
{
  v8.receiver = v3;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = &v3[qword_100945F28];
    if ((v3[qword_100945F28 + 16] & 1) != 0 || *v7 != a2 || v7[1] != a3)
    {
      *v7 = a2;
      v7[1] = a3;
      *(v7 + 16) = 0;
      sub_100091DD8();
    }
  }
}

void sub_100093304(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100093258(a5, a2, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_100093384()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10000A5D4(&qword_100945158);
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v15 = &ObjectType - v1;
  v2 = sub_10000A5D4(&qword_100946590);
  v13 = *(v2 - 8);
  v14 = v2;
  __chkstk_darwin(v2);
  v12 = &ObjectType - v3;
  v4 = sub_10000A5D4(&qword_100946598);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - v6;
  sub_1006DF89C();
  sub_100765DDC();
  sub_10000A5D4(&unk_100950620);
  sub_100071820(&qword_1009465A0, &unk_100950620);
  sub_10076F45C();
  sub_10076F46C();

  sub_10000CD74(v18);
  (*(v5 + 8))(v7, v4);
  sub_100768C6C();
  sub_10000A5D4(&qword_1009465A8);
  sub_100071820(&qword_1009465B0, &qword_1009465A8);
  sub_10076F45C();
  v8 = v12;
  sub_10076F46C();

  sub_10000CD74(v18);
  (*(v13 + 8))(v8, v14);
  sub_100768C7C();
  sub_10000A5D4(&qword_100945148);
  sub_100071820(&qword_100945150, &qword_100945148);
  sub_10076F45C();
  v9 = v15;
  sub_10076F46C();

  sub_10000CD74(v18);
  return (*(v16 + 8))(v9, v17);
}

uint64_t sub_1000937BC()
{
  v0 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v0 - 8);
  v43 = &v37 - v1;
  v2 = sub_10076B5BC();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v39 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v37 - v5;
  __chkstk_darwin(v6);
  v40 = &v37 - v7;
  v8 = sub_10000A5D4(&qword_100944C40);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = sub_10000A5D4(&qword_100950600);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  sub_10000A5D4(&qword_100950560);
  sub_100761B9C();
  sub_10076B06C();
  v16 = *(v13 + 8);
  v16(v15, v12);
  v17 = sub_10076E5EC();
  (*(v9 + 8))(v11, v8);
  if (v17 < 1)
  {
    goto LABEL_4;
  }

  sub_100761B9C();
  v18 = v43;
  sub_10076B08C();
  v16(v15, v12);
  v19 = sub_10000A5D4(&unk_100946720);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000CFBC(v18, &qword_1009499A0);
LABEL_4:
    v21 = v44;
    *(v44 + qword_100945F10) = &_swiftEmptySetSingleton;

    *(v21 + qword_100945F08) = 0;
    return result;
  }

  swift_getKeyPath();
  v23 = v38;
  sub_10076F49C();

  (*(v20 + 8))(v18, v19);
  v25 = v40;
  v24 = v41;
  v26 = v42;
  (*(v41 + 32))(v40, v23, v42);
  v27 = v39;
  (*(v24 + 16))(v39, v25, v26);
  v28 = (*(v24 + 88))(v27, v26);
  if (v28 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v28 == enum case for Shelf.ContentType.upsellBreakout(_:) || v28 == enum case for Shelf.ContentType.heroCarousel(_:) || v28 == enum case for Shelf.ContentType.uber(_:))
  {
    sub_10000A5D4(&qword_100944C48);
    v31 = sub_10075E11C();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100783DD0;
    sub_10075E08C();
    v35 = sub_100179EC0(v34);
    swift_setDeallocating();
    (*(v32 + 8))(v34 + v33, v31);
    swift_deallocClassInstance();
    (*(v24 + 8))(v25, v26);
    v36 = v44;
    *(v44 + qword_100945F10) = v35;

    *(v36 + qword_100945F08) = 1;
  }

  else
  {
    v29 = *(v24 + 8);
    v29(v25, v26);
    v30 = v44;
    *(v44 + qword_100945F10) = &_swiftEmptySetSingleton;

    *(v30 + qword_100945F08) = 0;
    return (v29)(v27, v26);
  }

  return result;
}

uint64_t (*sub_100093DF8(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10009828C;
}

uint64_t sub_100093E5C()
{
  if (qword_1009412D8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076FD4C();
  sub_10000A61C(v0, qword_1009A25D0);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBEC();
}

uint64_t (*sub_100093FA0(void *a1))(uint64_t *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10009823C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10009827C;
}

uint64_t sub_100094030(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_100098284, v5);
}

uint64_t (*sub_1000940C0(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000981D8;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100098178;
}

uint64_t sub_100094150()
{
  sub_10000A5D4(&qword_100942480);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100788B20;
  *(v1 + 32) = *(v0 + qword_100945F48);
  *(v1 + 40) = &protocol witness table for ArcadeTitleEffectCollectionElementsObserver;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = &off_100887000;
  swift_unknownObjectWeakAssign();
  v3 = sub_100098190(&qword_100946580, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  type metadata accessor for ArcadeFloatingBarVisibilityThresholdCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = sub_100098190(&qword_100946588, type metadata accessor for ArcadeFloatingBarVisibilityThresholdCollectionElementsObserver);
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;

  *(v1 + 80) = sub_1006DD778();
  *(v1 + 88) = v6;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

id sub_1000942D4(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_10000A5D4(&qword_100946560);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  sub_100735368(a1);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v4 + 96))(v6, v3);
    sub_1000944FC();
  }

  else if (v7 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10076AF3C();
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }

  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result bounds];

    sub_100098190(&qword_100946568, type metadata accessor for ArcadeDiffablePageViewController);
    return sub_10076A6CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000944FC()
{
  v1 = v0;
  sub_100768C9C();
  if (v2)
  {
    v3 = sub_10076FF6C();
  }

  else
  {
    v3 = 0;
  }

  [v1 setTitle:v3];

  v4 = sub_10075FFBC();
  sub_1000947E4(v4);
  v5 = [v1 tabBarItem];
  if (v5)
  {
    v6 = v5;
    sub_100768C8C();
    if (v7)
    {
      v8 = sub_10076FF6C();
    }

    else
    {
      v8 = 0;
    }

    [v6 setTitle:v8];

    sub_100768C9C();
    if (v9)
    {

      v10 = [v1 navigationItem];
      sub_100768C9C();
      if (v11)
      {
        v12 = sub_10076FF6C();
      }

      else
      {
        v12 = 0;
      }

      [v10 setTitle:v12];

      v16 = [v1 navigationItem];
      sub_1002B3AB4();
    }

    else
    {
      v13 = [v1 navigationItem];
      sub_100768C8C();
      if (v14)
      {
        v15 = sub_10076FF6C();
      }

      else
      {
        v15 = 0;
      }

      [v13 setTitle:v15];

      v16 = [v1 navigationItem];
      sub_1002B3BCC();
    }

    v17 = [v1 navigationItem];
    v18 = [v17 standardAppearance];

    if (!v18)
    {
      v18 = [objc_allocWithZone(UINavigationBarAppearance) init];
    }

    v21 = v18;
    if (sub_100768C5C())
    {

      v19 = 0;
    }

    else
    {
      v19 = 2;
    }

    [v21 _setOverrideUserInterfaceStyle:v19];

    v20 = [v1 navigationItem];
    [v20 setStandardAppearance:v21];

    sub_100094A84();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000947E4(char a1)
{
  v2 = v1;
  if (a1)
  {
    v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
    v4 = 3;
    goto LABEL_8;
  }

  if ((a1 & 2) != 0)
  {
    v5 = sub_1000735EC();
    v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = v5 & 1;
    if (v5)
    {
      v4 = 3;
      goto LABEL_8;
    }
  }

  else
  {
    v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
  }

  v4 = 2;
LABEL_8:
  v6 = [v2 navigationItem];
  [v6 setLargeTitleDisplayMode:v4];

  v7 = [v2 view];
  if (!v7)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v8 = v7;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_19;
  }

  *(v9 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = (a1 & 8) == 0;

  sub_1000733E0();
  sub_100097BE8();
  if (sub_100768C5C())
  {

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver();
    v11 = swift_allocObject();
    v11[3] = v10;
    v11[4] = 0;
    v11[2] = sub_100098060;
    *&v2[qword_10099CC30] = v11;

    sub_100098190(&qword_100946570, type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver);
    sub_10076668C();
  }

  else
  {
    v12 = qword_10099CC30;
    if (*&v2[qword_10099CC30])
    {
      sub_100098190(&qword_100946570, type metadata accessor for ArcadeFloatingBannerVisibilityScrollObserver);
    }

    sub_10076667C();

    *&v2[v12] = 0;
  }
}

void sub_100094A84()
{
  v1 = v0;
  v2 = sub_100768C5C();
  if (!v2)
  {
    v13 = [v0 navigationItem];
    [v13 setTitleView:0];

    v14 = &v1[qword_10099CC20];
    v15 = *&v1[qword_10099CC20];
    *v14 = 0;
    *(v14 + 1) = 0;

    v16 = qword_100945F20;
    v17 = *&v1[qword_100945F20];
    *&v1[qword_100945F20] = 0;
    if (!v17)
    {
      return;
    }

    v34 = v17;
    [v17 removeFromSuperview];
    v18 = *&v1[v16];
    if (!v18)
    {
      goto LABEL_27;
    }

    v11 = v18;
    v19 = [v1 view];
    if (v19)
    {
      v33 = v19;
      [v19 addSubview:v11];
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_32;
  }

  v3 = v2;
  v4 = [v0 traitCollection];
  v5 = sub_1007706EC();

  if ((v5 & 1) == 0)
  {
    v7 = [objc_allocWithZone(type metadata accessor for ArcadeFloatingBannerView()) init];
    [v7 setHidden:1];
    sub_10068A7F8(v3, *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph]);
    v21 = qword_100945F20;
    v22 = *&v1[qword_100945F20];
    *&v1[qword_100945F20] = v7;
    if (v22)
    {
      v23 = v7;
      v24 = v22;
      v25 = sub_100770EEC();

      if (v25)
      {

LABEL_25:
        sub_100095060(0);
        [v7 setFrame:?];

        v31 = [v1 navigationItem];
        [v31 setTitleView:0];

        v32 = &v1[qword_10099CC20];
        v34 = *&v1[qword_10099CC20];
        *v32 = 0;
        *(v32 + 1) = 0;
LABEL_26:

LABEL_27:
        v20 = v34;
        goto LABEL_28;
      }

      [v24 removeFromSuperview];
      v27 = *&v1[v21];
      if (!v27)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v26 = v7;
      v27 = v7;
      if (!v7)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    v28 = v27;
    v29 = [v1 view];
    if (v29)
    {
      v30 = v29;
      [v29 addSubview:v28];

LABEL_24:
      v24 = v22;
      goto LABEL_25;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = [objc_allocWithZone(type metadata accessor for ArcadePageTitleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10068A7F8(v3, *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph]);
  swift_unknownObjectWeakAssign();
  v7 = v6;
  sub_100094EDC(v6, &off_100895E70);

  v8 = qword_100945F20;
  v9 = *&v1[qword_100945F20];
  *&v1[qword_100945F20] = 0;
  if (v9)
  {
    v34 = v9;
    [v9 removeFromSuperview];
    v10 = *&v1[v8];
    if (v10)
    {
      v11 = v10;
      v12 = [v1 view];
      if (v12)
      {
        v33 = v12;
        [v12 addSubview:v11];

LABEL_11:

        v20 = v33;
LABEL_28:

        return;
      }

LABEL_33:
      __break(1u);
      return;
    }

    goto LABEL_26;
  }
}

void sub_100094EDC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v2 navigationItem];
    [v6 setTitleView:v5];

    v7 = &v2[qword_10099CC20];
    v8 = *&v2[qword_10099CC20];
    *v7 = a1;
    *(v7 + 1) = a2;
    v20 = v5;

    v9 = [v2 navigationController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 navigationBar];

      [v11 _titleOpacity];
      v13 = v12;

      v14 = *v7;
      if (*v7)
      {
        v15 = *&v14[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView];
        v16 = v14;
        [v15 setAlpha:v13];
      }
    }

    v17 = v20;
  }

  else
  {
    v18 = [v2 navigationItem];
    [v18 setTitleView:0];

    v19 = &v2[qword_10099CC20];
    v17 = *&v2[qword_10099CC20];
    *v19 = 0;
    *(v19 + 1) = a2;
  }
}

void sub_100095060(char a1)
{
  v2 = *&v1[qword_100945F20];
  if (v2)
  {
    v4 = v2;
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v67.origin.x = v8;
      v67.origin.y = v10;
      v67.size.width = v12;
      v67.size.height = v14;
      CGRectGetWidth(v67);
      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        [v15 bounds];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v68.origin.x = v18;
        v68.origin.y = v20;
        v68.size.width = v22;
        v68.size.height = v24;
        CGRectGetHeight(v68);
        v25 = &v1[qword_100945F30];
        if (v1[qword_100945F30 + 16])
        {
          v26 = *&v4[OBJC_IVAR____TtC20ProductPageExtension24ArcadeFloatingBannerView_lockupView];
          [v4 layoutMargins];
          sub_100770ACC();
          [v26 sizeThatFits:?];
          [v4 layoutMargins];
          sub_100770AEC();
          v28 = v27;
          v30 = v29;
        }

        else
        {
          v28 = *v25;
          v30 = *(v25 + 1);
        }

        *v25 = v28;
        *(v25 + 1) = v30;
        v25[16] = 0;
        v31 = [v1 view];
        if (v31)
        {
          v32 = v31;
          [v31 safeAreaInsets];
          v34 = v33;

          if (v34 <= 28.0)
          {
            if ((a1 & 1) == 0)
            {
LABEL_12:
              v37 = [v1 view];
              if (!v37)
              {
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v38 = v37;
              [v37 bounds];
              v40 = v39;
              v42 = v41;
              v44 = v43;
              v46 = v45;

              v69.origin.x = v40;
              v69.origin.y = v42;
              v69.size.width = v44;
              v69.size.height = v46;
              CGRectGetMaxY(v69);
              goto LABEL_17;
            }
          }

          else
          {
            v35 = [v1 view];
            if (!v35)
            {
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

            v36 = v35;
            [v35 safeAreaInsets];

            if ((a1 & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          v47 = [v1 view];
          if (!v47)
          {
LABEL_25:
            __break(1u);
            return;
          }

          v48 = v47;
          [v47 bounds];
          v50 = v49;
          v52 = v51;
          v54 = v53;
          v56 = v55;

          v70.origin.x = v50;
          v70.origin.y = v52;
          v70.size.width = v54;
          v70.size.height = v56;
          CGRectGetMaxY(v70);
LABEL_17:
          v57 = [v1 view];
          if (v57)
          {
            v58 = v57;
            [v57 bounds];
            v60 = v59;
            v62 = v61;
            v64 = v63;
            v66 = v65;

            v71.origin.x = v60;
            v71.origin.y = v62;
            v71.size.width = v64;
            v71.size.height = v66;
            CGRectGetMidX(v71);

            return;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_1000953BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = *&v3[qword_10099CC30];
        if (v5)
        {

          [v2 _systemContentInset];
          v7 = v6;
          [v2 contentOffset];
          v9 = v8;
          [v2 contentInset];
          (*(v5 + 16))(v7 + v9 + v10 > *(v5 + 32));
        }

        else
        {
        }
      }
    }
  }
}

void sub_1000954E4(char a1)
{
  v2 = *&v1[qword_100945F20];
  if (!v2)
  {
    return;
  }

  v56 = v2;
  sub_100095060(a1 & 1);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = &v1[qword_100945F40];
  if ((v1[qword_100945F40 + 32] & 1) == 0 && CGRectEqualToRect(*&v4, *v12))
  {
    goto LABEL_26;
  }

  v55 = v11;
  v56 = v56;
  [v56 frame];
  MinY = CGRectGetMinY(v64);
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v65.origin.x = v17;
  v65.origin.y = v19;
  v65.size.width = v21;
  v65.size.height = v23;
  MaxY = CGRectGetMaxY(v65);
  v66.origin.x = v8;
  v66.origin.y = v9;
  v66.size.width = v10;
  v66.size.height = v55;
  v54 = CGRectGetMinY(v66);
  v25 = [v1 view];
  if (!v25)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = MaxY <= MinY;
  [v25 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v67.origin.x = v29;
  v67.origin.y = v31;
  v67.size.width = v33;
  v67.size.height = v35;
  v36 = CGRectGetMaxY(v67) <= v54 || v27;
  *v12 = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v55;
  *(v12 + 32) = 0;
  v37 = qword_100945F38;
  v38 = *&v1[qword_100945F38];
  if (v38)
  {
    v39 = v38;
    if ([v39 isRunning])
    {
      [v39 stopAnimation:1];

      v39 = *&v1[v37];
      *&v1[v37] = 0;
    }
  }

  if (a1)
  {
    [v56 setHidden:0];
    if (v36)
    {
      v40 = 2;
LABEL_18:

      v41 = swift_allocObject();
      *(v41 + 2) = v1;
      v41[3] = v8;
      v41[4] = v9;
      v41[5] = v10;
      v41[6] = v55;
      v42 = objc_allocWithZone(UIViewPropertyAnimator);
      v61 = sub_1000980A0;
      v62 = v41;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_10009AEDC;
      v60 = &unk_100887110;
      v43 = _Block_copy(&aBlock);
      v44 = v1;

      v45 = [v42 initWithDuration:v40 curve:v43 animations:0.2];
      _Block_release(v43);
      v46 = *&v1[v37];
      *&v1[v37] = v45;

      v47 = *&v1[v37];
      if (v47 && (v48 = swift_allocObject(), *(v48 + 16) = a1 & 1, *(v48 + 24) = v56, v61 = sub_100098104, v62 = v48, aBlock = _NSConcreteStackBlock, v58 = 1107296256, v59 = sub_10017722C, v60 = &unk_100887160, v49 = _Block_copy(&aBlock), v50 = v56, v51 = v47, , [v51 addCompletion:v49], _Block_release(v49), v51, (v52 = *&v1[v37]) != 0))
      {
        v53 = v52;
        [v53 startAnimation];
      }

      else
      {
      }

      return;
    }

    [v56 setFrame:{v8, v9, v10, v55}];
  }

  else
  {
    if (v36)
    {
      v40 = 1;
      goto LABEL_18;
    }

    [v56 setFrame:{v8, v9, v10, v55}];
    [v56 setHidden:1];
  }

LABEL_26:
}

void sub_1000959C8(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000954E4(a1 & 1);
  }
}

void sub_100095A24(void *a1)
{
  v2 = a1;
  sub_1000964AC(0, 0, 1);
  v1 = [v2 collectionView];
  [v1 reloadData];

  sub_100094A84();
}

void sub_100095AB0()
{
  if (*(*&v0[qword_100945F10] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_100095B50(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
      v7 = Strong;

      v8 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {

        sub_10000CFBC(v4, &unk_100943200);
      }

      else
      {
        sub_100263BF0(a1, 1, v6, v4);

        (*(v9 + 8))(v4, v8);
      }
    }
  }
}

uint64_t sub_100095D0C(uint64_t a1)
{
  v2 = sub_10075DB7C();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100964140);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_10005C684(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_10005C6E8(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10000A5D4(&unk_100964150);
  sub_100050DA4(&v9[*(v19 + 48)], v18);
  sub_100765E7C();
  v20 = *(v4 + 48);
  sub_100016E2C(v15, v6, &unk_1009435D0);
  sub_100016E2C(v18, &v6[v20], &unk_1009435D0);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100016E2C(v6, v12, &unk_1009435D0);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_100098190(&qword_100944C38, &type metadata accessor for URL);
      v26 = v21;
      v23 = sub_10076FF1C();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10000CFBC(v15, &unk_1009435D0);
      sub_10000CFBC(v18, &unk_1009435D0);
      v27(v12, v2);
      sub_10000CFBC(v6, &unk_1009435D0);
      return v23 & 1;
    }

    sub_10000CFBC(v15, &unk_1009435D0);
    sub_10000CFBC(v18, &unk_1009435D0);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10000CFBC(v15, &unk_1009435D0);
  sub_10000CFBC(v18, &unk_1009435D0);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10000CFBC(v6, &unk_100964140);
    goto LABEL_9;
  }

  sub_10000CFBC(v6, &unk_1009435D0);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1000961C8()
{

  sub_1000167E0(*(v0 + qword_100945EF0));
}

uint64_t sub_10009628C(uint64_t a1)
{

  sub_1000167E0(*(a1 + qword_100945EF0));
}

uint64_t type metadata accessor for ArcadeDiffablePageViewController()
{
  result = qword_100945F78;
  if (!qword_100945F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000964AC(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a1 & 1;
  *(v9 + 24) = a1;
  v11 = a2 & 1;
  *(v9 + 25) = a2;

  if ((a3 & 1) != 0 && (v12 = [v4 transitionCoordinator]) != 0)
  {
    v13 = v12;

    v14 = swift_allocObject();
    *(v14 + 16) = sub_100098168;
    *(v14 + 24) = v9;
    v24 = sub_100098178;
    v25 = v14;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1006F5994;
    v23 = &unk_100887200;
    v15 = _Block_copy(&v20);

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v11;
    *(v17 + 25) = v10;
    v24 = sub_100098180;
    v25 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1006F5994;
    v23 = &unk_100887250;
    v18 = _Block_copy(&v20);

    [v13 animateAlongsideTransition:v15 completion:v18];

    _Block_release(v18);
    _Block_release(v15);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_100096AC4(v8, v10, a2 & 1);
  }
}

void sub_100096754(double a1)
{
  v2 = sub_10076C03C();
  v24[3] = v2;
  v24[4] = sub_100098190(&qword_100947230, &type metadata accessor for Feature.iOS);
  v3 = sub_10000DB7C(v24);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v2);
  LOBYTE(v2) = sub_10076C90C();
  sub_10000CD74(v24);
  if ((v2 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5 && (v6 = v5, v7 = [v5 navigationController], v6, v7))
  {
    v8 = [v7 viewControllers];

    sub_100016F40(0, &qword_1009453B0);
    v9 = sub_1007701BC();

    if (v9 >> 62)
    {
      v10 = sub_10077158C();
      if (v10)
      {
LABEL_6:
        v11 = __OFSUB__(v10, 1);
        v12 = v10 - 1;
        if (v11)
        {
          __break(1u);
        }

        else if ((v9 & 0xC000000000000001) == 0)
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v12 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v9 + 8 * v12 + 32);
            goto LABEL_11;
          }

          __break(1u);
          return;
        }

        v13 = sub_10077149C();
LABEL_11:
        v14 = v13;

        if (!Strong)
        {
          goto LABEL_12;
        }

LABEL_15:
        if (!v14)
        {
          goto LABEL_27;
        }

        sub_100016F40(0, &qword_1009453B0);
        v15 = sub_100770EEC();

        if ((v15 & 1) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_6;
      }
    }

    v14 = 0;
    if (Strong)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = 0;
    if (Strong)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  if (v14)
  {
    Strong = v14;
    goto LABEL_27;
  }

LABEL_17:
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    if (*&v16[qword_10099CC20])
    {

      goto LABEL_21;
    }

    v17 = v16;
    v18 = [v16 traitCollection];
    v19 = sub_1007706CC();

    if (v19)
    {
LABEL_21:
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v22 = *(v20 + qword_10099CC20);
        if (v22)
        {
          [*(v22 + OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView) setAlpha:a1];
        }

        sub_1003EB560(a1 == 1.0);
      }
    }
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
    return;
  }

  Strong = v23;
  sub_100092A14();
LABEL_27:
}

void sub_100096AC4(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((sub_1000735EC() & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if (v10 & 1) == 0 && (a2)
        {

          if ((a3 & 1) != 0 || (v11 = *&v6[qword_10099CC20]) == 0)
          {
            v12 = 1;
          }

          else
          {
            [*(v11 + OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView) setAlpha:1.0];
            v12 = 1;
          }

LABEL_24:
          sub_1003EB560(v12);
LABEL_25:

          return;
        }

LABEL_10:
        v13 = *&v6[qword_10099CC28];
        if (v13)
        {
          v14 = *&v6[qword_10099CC20];

          if (v14 || (v15 = [v6 traitCollection], v16 = sub_1007706CC(), v15, (v16 & 1) != 0))
          {
            v17 = [v6 collectionView];

            if (v17)
            {
              [v17 _systemContentInset];
              v19 = v18;
              [v17 contentOffset];
              v21 = v20;
              v22 = [v17 contentInset];
              v23.n128_f64[0] = fmin((v19 + v21 + v23.n128_f64[0] - *(v13 + 32)) / *(v13 + 40), 1.0);
              if (v23.n128_f64[0] < 0.0)
              {
                v23.n128_f64[0] = 0.0;
              }

              (*(v13 + 16))(v22, v23);

              goto LABEL_25;
            }

LABEL_29:
            __break(1u);
            return;
          }
        }

        v24 = *&v6[qword_10099CC20];
        if (v24)
        {
          v25 = 0.0;
          if (a2)
          {
            v25 = 1.0;
          }

          [*(v24 + OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView) setAlpha:v25];
        }

        v12 = a2 & 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_29;
  }
}

void sub_100096D24(void *a1, uint64_t a2, char a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = &UITransitionContextFromViewControllerKey;
    if ((a3 & 1) == 0)
    {
      v9 = &UITransitionContextToViewControllerKey;
    }

    v10 = *v9;
    if ([a1 isCancelled])
    {
      v11 = [a1 viewControllerForKey:v10];
      if (v11)
      {
        v12 = v11;
        sub_100016F40(0, &qword_1009453B0);
        v13 = v8;
        v14 = sub_100770EEC();

        if (v14)
        {
          swift_unknownObjectWeakInit();
          sub_1003EB2F8(&v15, (a4 & 1) == 0, (a3 & 1) == 0);
          swift_unknownObjectWeakDestroy();

          return;
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

unint64_t sub_100096E84(uint64_t a1)
{
  sub_1007626DC();
  sub_100098190(&qword_100946550, &type metadata accessor for EditorialPageKey);
  v2 = sub_10076FEAC();

  return sub_100096F1C(a1, v2);
}

unint64_t sub_100096F1C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1007626DC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_100098190(&qword_100946558, &type metadata accessor for EditorialPageKey);
      v16 = sub_10076FF1C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1000970E0(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100946540);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000A5D4(&qword_100946548);
    v7 = sub_1007715DC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016E2C(v9, v5, &qword_100946540);
      result = sub_100096E84(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1007626DC();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_10075DB7C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_100097300(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v5 - 8);
  v31 = sub_10075F2FC();
  v6 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10075F37C();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  *(v2 + qword_100945EE8) = 1;
  v14 = (v2 + qword_100945EF0);
  *v14 = 0;
  v14[1] = 0;
  *(v2 + qword_100945EF8) = 2;
  v15 = (v2 + qword_10099CC20);
  *v15 = 0;
  v15[1] = 0;
  *(v2 + qword_10099CC28) = 0;
  *(v2 + qword_100945F08) = 0;
  *(v2 + qword_100945F10) = &_swiftEmptySetSingleton;
  v16 = v2 + qword_100945F18;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v2 + qword_100945F20) = 0;
  *(v2 + qword_10099CC30) = 0;
  v17 = v2 + qword_100945F28;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v18 = v2 + qword_100945F30;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v2 + qword_100945F38) = 0;
  v19 = v2 + qword_100945F40;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 1;
  type metadata accessor for InAppMessagesManager();
  sub_10076F64C();
  sub_10076FC1C();
  *(v2 + qword_100945EE0) = v35;
  sub_10076AF5C();
  swift_allocObject();

  *(v2 + qword_100945F48) = sub_10076AF4C();
  (*(v6 + 104))(v8, enum case for StoreTab.Identifier.arcade(_:), v31);

  sub_100765E7C();

  sub_1000970E0(_swiftEmptyArrayStorage);
  sub_10075F30C();
  v20 = v32;
  (*(v34 + 16))(v10, v13, v32);
  v21 = objc_allocWithZone(type metadata accessor for ArcadeHeaderButtonContainer());

  *(v2 + qword_100945F00) = sub_1001D7048(v10, a2);

  v22 = sub_100482850(a1, a2);
  sub_10076A38C();
  v23 = v22;
  sub_10076FC1C();
  v24 = v35;
  v25 = *(*&v23[qword_100945F00] + OBJC_IVAR____TtC20ProductPageExtension27ArcadeHeaderButtonContainer_accountButton);
  sub_10076A37C();

  sub_10000A5D4(&unk_100945BF0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100783DD0;
  v27 = sub_10076E59C();
  *(v26 + 32) = v27;
  *(v26 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_10077060C();
  swift_unknownObjectRelease();

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100783C60;
  *(v28 + 32) = sub_10076E88C();
  *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v28 + 48) = sub_10076E3EC();
  *(v28 + 56) = &protocol witness table for UITraitLayoutDirection;
  *(v28 + 64) = v27;
  *(v28 + 72) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_10077061C();

  swift_unknownObjectRelease();

  (*(v34 + 8))(v13, v20);
  return v23;
}

void sub_10009787C(uint64_t a1)
{
  v2 = sub_10076F08C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F0CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + qword_100945F30;
  if ((*(a1 + qword_100945F30 + 16) & 1) == 0)
  {
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    v16 = v8;
    sub_100016F40(0, &qword_1009471F0);
    v15 = sub_10077068C();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100097BC8;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100887098;
    v13 = _Block_copy(aBlock);

    sub_10076F0AC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100098190(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0);
    sub_100071820(&qword_100945170, &unk_10094E1C0);
    sub_1007712CC();
    v14 = v15;
    sub_10077069C();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v16);
  }
}

uint64_t sub_100097B90()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100097BD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100097BE8()
{
  v1 = v0;
  v2 = qword_10099CC28;
  if (!*&v0[qword_10099CC28])
  {
    sub_10076667C();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NavigationBarVisibilityScrollObserver();
    v4 = swift_allocObject();
    *(v4 + 32) = xmmword_100788B30;
    *(v4 + 16) = sub_100098128;
    *(v4 + 24) = v3;
    *&v0[v2] = v4;

    sub_100098190(&qword_100946578, type metadata accessor for NavigationBarVisibilityScrollObserver);
    sub_10076668C();
  }

  v5 = [v0 view];
  if (!v5)
  {
    goto LABEL_26;
  }

  v6 = v5;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = *(v7 + OBJC_IVAR____TtC20ProductPageExtensionP33_6AB601F6024DE25A6D4830FED98485CA40InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v8 & 1) == 0)
  {
    v9 = [v1 navigationController];
    if (v9)
    {

      if (sub_1000735EC())
      {
        swift_unknownObjectWeakInit();
        sub_1003EB2F8(v41, 0, 0);
        swift_unknownObjectWeakDestroy();
        goto LABEL_16;
      }
    }
  }

  v10 = [v1 view];
  if (!v10)
  {
    goto LABEL_27;
  }

  v11 = v10;
  v12 = [v10 safeAreaLayoutGuide];

  [v12 layoutFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v42.origin.x = v14;
  v42.origin.y = v16;
  v42.size.width = v18;
  v42.size.height = v20;
  MinY = CGRectGetMinY(v42);
  if (*&v1[v2])
  {

    v22 = [v1 collectionView];
    if (!v22)
    {
LABEL_30:
      __break(1u);
      return;
    }

    v23 = v22;
    sub_1002D911C(v22, MinY);
  }

  v24 = [v1 collectionView];
  if (!v24)
  {
    goto LABEL_28;
  }

  v25 = v24;
  [v24 _pocketInsets];
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [v1 collectionView];
  if (!v32)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v33 = v32;
  [v32 _setPocketInsets:{MinY, v27, v29, v31}];

LABEL_16:
  v34 = [v1 viewIfLoaded];
  if (!v34 || (v35 = v34, v36 = [v34 window], v35, !v36) || (v37 = objc_msgSend(v36, "isHidden"), v36, v37))
  {
    v38 = [v1 presentedViewController];
    if (v38)
    {
    }

    else if ([v1 isViewLoaded])
    {
      swift_unknownObjectWeakInit();
      sub_1003EB2F8(v41, 1, 1);
      swift_unknownObjectWeakDestroy();
      v39 = sub_10076C03C();
      v41[3] = v39;
      v41[4] = sub_100098190(&qword_100947230, &type metadata accessor for Feature.iOS);
      v40 = sub_10000DB7C(v41);
      (*(*(v39 - 8) + 104))(v40, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v39);
      LOBYTE(v39) = sub_10076C90C();
      sub_10000CD74(v41);
      if (v39)
      {
        sub_100092A14();
      }
    }
  }

  sub_100092A14();
}

uint64_t sub_100098068()
{

  return _swift_deallocObject(v0, 56, 7);
}

id sub_1000980A0()
{
  result = *(*(v0 + 16) + qword_100945F20);
  if (result)
  {
    return [result setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  }

  return result;
}

uint64_t sub_1000980CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100098104(id result)
{
  if ((*(v1 + 16) & 1) == 0 && !result)
  {
    return [*(v1 + 24) setHidden:1];
  }

  return result;
}

uint64_t sub_100098130()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_100098190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100098204()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098244()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10024A448(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_100561E0C(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_10024C3F0();
        v16 = v18;
      }

      result = sub_1001E1A04(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_100098444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_10076F7FC();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_10000CFBC(a1, &qword_1009492E0);
    v14 = sub_10060FF40(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10024CB84();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1001E1D64(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_10000CFBC(v8, &qword_1009492E0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_10024A8C4(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_100098694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_10000CD64(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_10024AD30(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10000CFBC(a1, &unk_1009434C0);
    sub_1001E16FC(a2, a3, v9);

    return sub_10000CFBC(v9, &unk_1009434C0);
  }

  return result;
}

uint64_t sub_100098764(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10024AE80(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_10076C45C();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1006108B4(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_10024D204();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_10076C45C();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1001E2230(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_10076C45C();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_100098924(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v43 = a3;
  v44 = a2;
  v6 = sub_10076F08C();
  v51 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10076F0CC();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10076B96C();
  v9 = *(v53 - 8);
  __chkstk_darwin(v53);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100946668);
  v45 = sub_10076FCEC();
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  v46 = a1;
  if (v12)
  {
    v41 = v3;
    v42 = v6;
    v60 = _swiftEmptyArrayStorage;
    sub_1004BBB24(0, v12, 0);
    v13 = v60;
    v14 = *(sub_10076633C() - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v16 = (v9 + 8);
    v52 = *(v14 + 72);
    do
    {
      sub_10076631C();
      v17 = sub_10076B92C();
      v19 = v18;
      (*v16)(v11, v53);
      aBlock = v17;
      v55 = v19;
      v61._countAndFlagsBits = 8250;
      v61._object = 0xE200000000000000;
      sub_1007700CC(v61);
      v20._countAndFlagsBits = sub_1007662DC();
      if (v20._object)
      {
        object = v20._object;
      }

      else
      {
        v20._countAndFlagsBits = 0x746C7561666564;
        object = 0xE700000000000000;
      }

      v20._object = object;
      sub_1007700CC(v20);

      v22 = aBlock;
      v23 = v55;
      v60 = v13;
      v25 = v13[2];
      v24 = v13[3];
      if (v25 >= v24 >> 1)
      {
        sub_1004BBB24((v24 > 1), v25 + 1, 1);
        v13 = v60;
      }

      v13[2] = v25 + 1;
      v26 = &v13[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      v15 += v52;
      --v12;
    }

    while (v12);
    v4 = v41;
    v6 = v42;
  }

  aBlock = v13;
  sub_10000A5D4(&unk_10094BB60);
  sub_100071820(&qword_100943480, &unk_10094BB60);
  v27 = sub_10076FEFC();
  v29 = v28;

  if (qword_1009412F8 != -1)
  {
    swift_once();
  }

  v30 = sub_10076FD4C();
  sub_10000A61C(v30, qword_1009A2630);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100788B20;
  sub_10076F31C();
  sub_10076F27C();
  sub_10076F27C();
  v57 = &type metadata for String;
  aBlock = v27;
  v55 = v29;
  sub_10076F30C();
  sub_10000CFBC(&aBlock, &unk_1009434C0);
  sub_10076FBCC();

  v31 = *(v4 + 16);
  v32 = swift_allocObject();
  v33 = v44;
  v34 = v45;
  *(v32 + 16) = v31;
  *(v32 + 24) = v33;
  *(v32 + 32) = v46;
  *(v32 + 40) = v34;
  *(v32 + 48) = v43 & 1;
  *(v32 + 56) = v4;
  v58 = sub_10009B008;
  v59 = v32;
  aBlock = _NSConcreteStackBlock;
  v55 = 1107296256;
  v56 = sub_10009AEDC;
  v57 = &unk_100887408;
  v35 = _Block_copy(&aBlock);
  v36 = v31;

  v37 = v47;
  sub_10076F0AC();
  v60 = _swiftEmptyArrayStorage;
  sub_1000717C8();
  sub_10000A5D4(&unk_10094E1C0);
  sub_100071820(&qword_100945170, &unk_10094E1C0);
  v38 = v49;
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v35);
  (*(v51 + 8))(v38, v6);
  (*(v48 + 8))(v37, v50);

  return v34;
}

void sub_10009902C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v51 = a6;
  v50 = a5;
  v60 = a3;
  v9 = sub_10076A07C();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v57 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10076633C();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v55 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v54 = &v49[-v14];
  v15 = sub_10076B96C();
  v67 = *(v15 - 8);
  __chkstk_darwin(v15);
  v53 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_100766CAC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v68 = &v49[-v22];
  v23 = *(a2 + 16);
  v61 = a1;
  v62 = a4;
  if (v23)
  {
    v52 = v11;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1007714EC();
    v25 = *(v18 + 16);
    v24 = (v18 + 16);
    v26 = (a2 + ((v24[64] + 32) & ~v24[64]));
    v65 = *(v24 + 7);
    v66 = v25;
    v27 = v68;
    v63 = v15;
    v64 = (v67 + 8);
    v67 = v24;
    v28 = v24 - 8;
    v29 = v53;
    do
    {
      v30 = v66;
      v66(v27, v26, v17);
      v30(v20, v27, v17);
      v31 = objc_allocWithZone(ADAppRepresentation);
      sub_100766C9C();
      sub_10076B92C();
      (*v64)(v29, v63);
      v32 = sub_10076FF6C();

      sub_100766C8C();
      isa = sub_10076FE3C().super.isa;

      [v31 initWithAdamID:v32 assetInformation:isa];

      v27 = v68;
      v34 = *v28;
      (*v28)(v20, v17);
      v34(v27, v17);
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      v26 += v65;
      --v23;
    }

    while (v23);
    a1 = v61;
    a4 = v62;
    v11 = v52;
  }

  sub_100016F40(0, &qword_100946670);
  v35 = sub_1007701AC().super.isa;

  [a1 setOrganics:v35];

  v36 = v60;
  v37 = *(v60 + 16);
  if (v37)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1007714EC();
    v38 = sub_100016F40(0, &qword_100946678);
    v39 = v55;
    v67 = *(v56 + 16);
    v68 = v38;
    v40 = v36 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v66 = *(v56 + 72);
    v41 = (v56 + 8);
    v42 = v54;
    do
    {
      v43 = v67;
      (v67)(v42, v40, v11);
      v43(v39, v42, v11);
      sub_1000997C8(v39);
      (*v41)(v42, v11);
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      v40 += v66;
      --v37;
    }

    while (v37);
    a1 = v61;
    a4 = v62;
  }

  sub_100016F40(0, &qword_100946678);
  v44 = sub_1007701AC().super.isa;

  v45 = [a1 setAdvertisementsWithPolicy:v44];

  if (v45)
  {
    v46 = v57;
    sub_10076A06C();
    sub_10076FCBC();
    (*(v58 + 8))(v46, v59);
  }

  else
  {
    v47 = swift_allocObject();
    *(v47 + 16) = v50 & 1;
    *(v47 + 24) = v51;
    *(v47 + 32) = a4;
    aBlock[4] = sub_10009B074;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AE4C;
    aBlock[3] = &unk_100887458;
    v48 = _Block_copy(aBlock);

    [a1 orderedAdsWithODMLSuccess:v48];
    _Block_release(v48);
  }
}

id sub_1000997C8(uint64_t a1)
{
  v2 = sub_10076B96C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076631C();
  sub_10076B92C();
  (*(v3 + 8))(v5, v2);
  v6 = sub_10076FF6C();

  if (sub_10076632C())
  {
    v7.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  sub_1007662DC();
  if (v8)
  {
    v9 = sub_10076FF6C();
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10076630C();
  v11 = objc_allocWithZone(ADDataObject);
  isa = sub_10076FE3C().super.isa;

  v13 = [v11 initWith:isa andError:0];

  sub_1007662CC();
  v14 = sub_10076FF6C();

  v15 = [v10 initWithAdamID:v6 cppIDs:v7.super.isa serverCppID:v9 adData:v13 instanceID:v14];

  v16 = v15;
  if (sub_1007662FC())
  {
    v17.super.isa = sub_1007701AC().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  [v16 setAppBinaryTraits:v17.super.isa];

  v18 = sub_10076633C();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v16;
}

uint64_t sub_100099A88(unint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v122 = a5;
  v123 = a4;
  v119 = a2;
  v121 = sub_10076A07C();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v118 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_10076FD4C();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_10076B96C();
  v117 = *(v148 - 8);
  __chkstk_darwin(v148);
  v135 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v137 = &v116 - v11;
  __chkstk_darwin(v12);
  v147 = &v116 - v13;
  v14 = sub_10075EBAC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v134 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v116 - v18;
  __chkstk_darwin(v20);
  v136 = &v116 - v21;
  __chkstk_darwin(v22);
  v144 = &v116 - v23;
  v24 = sub_10076633C();
  v150 = *(v24 - 8);
  __chkstk_darwin(v24);
  v146 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  v138 = &v116 - v28;
  __chkstk_darwin(v29);
  v32 = &v116 - v31;
  if (!a1)
  {
    v139 = 0;
    v140 = 0;
    v149 = 0;
    v15 = 0;
    v34 = 0;
    goto LABEL_63;
  }

  v133 = v30;
  v116 = v15;
  if (a1 >> 62)
  {
    v33 = sub_10077158C();
  }

  else
  {
    v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = _swiftEmptyArrayStorage;
  v151 = v24;
  v145 = v14;
  if (!v33)
  {
LABEL_14:
    v149 = v34;
    v39 = v138;
    if (a3)
    {
      v132 = v19;

      v139 = sub_1000FD634(_swiftEmptyArrayStorage);
      v143 = v34[2];
      if (v143)
      {
        v40 = 0;
        v142 = (v34 + ((*(v150 + 80) + 32) & ~*(v150 + 80)));
        v141 = v150 + 16;
        v131 = (v117 + 8);
        v41 = *(v123 + 24);
        v130 = *(v123 + 32);
        v129 = (v116 + 32);
        v128 = (v116 + 8);
        v140 = (v150 + 8);
        v127 = v41;
        v42 = (v117 + 8);
        v43 = v144;
        do
        {
          if (v40 >= v34[2])
          {
            goto LABEL_69;
          }

          (*(v150 + 16))(v39, v142 + *(v150 + 72) * v40, v24);
          if (!v41)
          {
            (*v140)(v39, v24);
            goto LABEL_18;
          }

          swift_getObjectType();
          v44 = v147;
          sub_10076631C();
          sub_10075EE2C();
          v45 = *v42;
          v46 = v148;
          (*v42)(v44, v148);
          swift_getObjectType();
          v47 = v136;
          sub_10075ED1C();
          swift_unknownObjectRelease();
          (*v129)(v43, v47, v14);
          v15 = v137;
          sub_10076631C();
          v39 = sub_10076B92C();
          v49 = v48;
          v45(v15, v46);
          v50 = sub_10075EB5C();
          v34 = v139;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v153 = v34;
          v53 = sub_100561E0C(v39, v49);
          v54 = v34[2];
          v55 = (v52 & 1) == 0;
          v56 = v54 + v55;
          if (__OFADD__(v54, v55))
          {
            goto LABEL_70;
          }

          v15 = v52;
          if (v34[3] >= v56)
          {
            v34 = v149;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_27;
            }

            sub_10024C568();
          }

          else
          {
            sub_1002478B0(v56, isUniquelyReferenced_nonNull_native);
            v57 = sub_100561E0C(v39, v49);
            if ((v15 & 1) != (v58 & 1))
            {
              goto LABEL_77;
            }

            v53 = v57;
          }

          v34 = v149;
LABEL_27:
          if (v15)
          {

            v139 = v153;
            *(v153[7] + v53) = v50 & 1;
            v14 = v145;
            (*v128)(v144, v145);
            v39 = v138;
            v24 = v151;
            (*v140)(v138, v151);
          }

          else
          {
            v15 = v153;
            v153[(v53 >> 6) + 8] |= 1 << v53;
            v59 = (*(v15 + 48) + 16 * v53);
            *v59 = v39;
            v59[1] = v49;
            *(*(v15 + 56) + v53) = v50 & 1;
            v14 = v145;
            (*v128)(v144, v145);
            v39 = v138;
            v24 = v151;
            (*v140)(v138, v151);
            v60 = *(v15 + 16);
            v61 = __OFADD__(v60, 1);
            v62 = v60 + 1;
            if (v61)
            {
              goto LABEL_72;
            }

            v139 = v15;
            *(v15 + 16) = v62;
          }

          v41 = v127;
LABEL_18:
          ++v40;
        }

        while (v143 != v40);
      }

      v140 = sub_1000FD520(_swiftEmptyArrayStorage);
      v64 = v34[2];
      if (v64)
      {
        v65 = *(v123 + 24);
        v137 = *(v123 + 32);
        v142 = *(v150 + 16);
        v39 = v34 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
        v136 = (v117 + 8);
        v141 = *(v150 + 72);
        v131 = (v116 + 32);
        v129 = (v116 + 8);
        v143 = v150 + 16;
        v138 = (v150 + 8);
        v66 = v132;
        v67 = v133;
        v130 = v65;
        v142(v133, v39, v24);
        while (1)
        {
          if (v65)
          {
            v144 = v64;
            swift_getObjectType();
            v69 = v147;
            sub_10076631C();
            sub_10075EE2C();
            v70 = *v136;
            v71 = v148;
            (*v136)(v69, v148);
            swift_getObjectType();
            v72 = v134;
            sub_10075ED1C();
            swift_unknownObjectRelease();
            (*v131)(v66, v72, v14);
            v15 = v135;
            sub_10076631C();
            v73 = sub_10076B92C();
            v75 = v74;
            v70(v15, v71);
            v76 = sub_10075EB3C();
            v78 = v77;
            v34 = v140;
            v79 = swift_isUniquelyReferenced_nonNull_native();
            v153 = v34;
            v81 = sub_100561E0C(v73, v75);
            v82 = v34[2];
            v83 = (v80 & 1) == 0;
            v84 = v82 + v83;
            if (__OFADD__(v82, v83))
            {
              goto LABEL_71;
            }

            v15 = v80;
            if (v34[3] >= v84)
            {
              v34 = v149;
              if ((v79 & 1) == 0)
              {
                sub_10024C3F0();
                v34 = v149;
              }
            }

            else
            {
              sub_1002475F0(v84, v79);
              v85 = sub_100561E0C(v73, v75);
              if ((v15 & 1) != (v86 & 1))
              {
                goto LABEL_77;
              }

              v81 = v85;
              v34 = v149;
            }

            v66 = v132;
            v87 = v153;
            v140 = v153;
            if (v15)
            {
              v68 = (v153[7] + 16 * v81);
              *v68 = v76;
              v68[1] = v78;
            }

            else
            {
              v153[(v81 >> 6) + 8] |= 1 << v81;
              v88 = (v87[6] + 16 * v81);
              *v88 = v73;
              v88[1] = v75;
              v89 = (v87[7] + 16 * v81);
              *v89 = v76;
              v89[1] = v78;
              v90 = v87[2];
              v61 = __OFADD__(v90, 1);
              v91 = v90 + 1;
              if (v61)
              {
                goto LABEL_73;
              }

              v87[2] = v91;
            }

            v14 = v145;
            (*v129)(v66, v145);
            v24 = v151;
            v67 = v133;
            v65 = v130;
            v64 = v144;
          }

          (*v138)(v67, v24);
          v39 += v141;
          if (!--v64)
          {
            break;
          }

          v142(v67, v39, v24);
        }
      }

      v63 = v140;
    }

    else
    {
      v139 = 0;
      v63 = 0;
    }

    v140 = v63;
    v15 = v34[2];
    v39 = _swiftEmptyArrayStorage;
    if (v15)
    {
      v152 = _swiftEmptyArrayStorage;

      v34 = &v152;
      sub_1004BBB24(0, v15, 0);
      v92 = v149;
      v93 = 0;
      v144 = v149 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
      v39 = v152;
      v143 = v150 + 16;
      v141 = v150 + 8;
      v142 = (v117 + 8);
      v145 = v15;
      v94 = v150;
      while (v93 < v92[2])
      {
        v95 = v146;
        v96 = v151;
        (*(v94 + 16))(v146, &v144[*(v94 + 72) * v93], v151);
        v97 = v147;
        sub_10076631C();
        v98 = sub_10076B92C();
        v100 = v99;
        (*v142)(v97, v148);
        v153 = v98;
        v154 = v100;
        v157._countAndFlagsBits = 8250;
        v157._object = 0xE200000000000000;
        sub_1007700CC(v157);
        v101._countAndFlagsBits = sub_1007662EC();
        if (v101._object)
        {
          object = v101._object;
        }

        else
        {
          v101._countAndFlagsBits = 0x746C7561666564;
          object = 0xE700000000000000;
        }

        v34 = &v153;
        v101._object = object;
        sub_1007700CC(v101);

        v103 = v153;
        v104 = v154;
        (*(v94 + 8))(v95, v96);
        v152 = v39;
        v106 = *(v39 + 16);
        v105 = *(v39 + 24);
        if (v106 >= v105 >> 1)
        {
          v34 = &v152;
          sub_1004BBB24((v105 > 1), v106 + 1, 1);
          v39 = v152;
        }

        ++v93;
        *(v39 + 16) = v106 + 1;
        v107 = v39 + 16 * v106;
        *(v107 + 32) = v103;
        *(v107 + 40) = v104;
        v15 = v145;
        v92 = v149;
        if (v145 == v93)
        {

          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_62:
    v153 = v39;
    sub_10000A5D4(&unk_10094BB60);
    sub_100071820(&qword_100943480, &unk_10094BB60);
    v15 = sub_10076FEFC();
    v34 = v108;

LABEL_63:
    LOBYTE(v39) = v119;
    if (qword_1009412F8 == -1)
    {
LABEL_64:
      v109 = v126;
      v110 = sub_10000A61C(v126, qword_1009A2630);
      (*(v125 + 16))(v124, v110, v109);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_1007844F0;
      sub_10076F31C();
      sub_10076F27C();
      sub_10076F27C();
      v156 = &type metadata for Bool;
      LOBYTE(v153) = v39 & 1;
      sub_10076F30C();
      sub_10000CFBC(&v153, &unk_1009434C0);
      sub_10076F27C();
      if (v34)
      {
        v111 = &type metadata for String;
      }

      else
      {
        v15 = 0;
        v111 = 0;
        v155 = 0;
      }

      v153 = v15;
      v154 = v34;
      v156 = v111;
      sub_10076F30C();
      sub_10000CFBC(&v153, &unk_1009434C0);
      v112 = v126;
      v113 = v124;
      sub_10076FBCC();

      (*(v125 + 8))(v113, v112);
      v114 = v118;
      sub_10076A06C();
      sub_10076FCBC();
      return (*(v120 + 8))(v114, v121);
    }

LABEL_74:
    swift_once();
    goto LABEL_64;
  }

  v153 = _swiftEmptyArrayStorage;
  sub_1004BBB44(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    LODWORD(v149) = a3;
    v35 = 0;
    v34 = v153;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v36 = sub_10077149C();
      }

      else
      {
        v36 = *(a1 + 8 * v35 + 32);
      }

      sub_10009ABE0(v36);
      v153 = v34;
      v38 = v34[2];
      v37 = v34[3];
      v15 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_1004BBB44(v37 > 1, v38 + 1, 1);
        v34 = v153;
      }

      ++v35;
      v34[2] = v15;
      (*(v150 + 32))(v34 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v38, v32, v151);
    }

    while (v33 != v35);
    v24 = v151;
    v14 = v145;
    LOBYTE(a3) = v149;
    goto LABEL_14;
  }

  __break(1u);
LABEL_77:
  result = sub_1007716DC();
  __break(1u);
  return result;
}

void sub_10009ABE0(void *a1)
{
  v2 = sub_10076B96C();
  v3 = [a1 instanceID];
  sub_10076FF9C();

  v4 = a1;
  v5 = [v4 adamID];
  sub_10076FF9C();

  sub_10076B94C();
  v6 = [v4 assetInformation];

  sub_10076FE4C();
  v7 = [v4 adData];
  v8 = [v7 adData];

  if (v8)
  {
    sub_10076FE4C();
  }

  else
  {
    sub_1000FCED4(_swiftEmptyArrayStorage);
  }

  v9 = [v4 selectedCppID];
  if (v9)
  {
    v10 = v9;
    sub_10076FF9C();
  }

  v11 = [v4 appBinaryTraits];
  if (v11)
  {
    v12 = v11;
    sub_1007701BC();
  }

  sub_1007662BC();
}

uint64_t sub_10009AE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100016F40(0, &qword_100946678);
    v4 = sub_1007701BC();
  }

  v5(v4, a3);
}

uint64_t sub_10009AEDC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10009AF20()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10009AFB0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10009B01C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009B034()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10009B088(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v2 = sub_10000A5D4(&unk_100946700);
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v41 = &v31 - v3;
  v4 = sub_10076B6EC();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076664C();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000A5D4(&unk_1009520C0);
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = sub_10000A5D4(&unk_100946710);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - v18;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v17 + 8))(v19, v16);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  sub_10000A570(v44, v43);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075F29C();
  if (swift_dynamicCast())
  {
    v32 = v6;
    v20 = v15;
    v21 = v37;
    v22 = *(v10 + 16);
    v31 = v20;
    v22(v12);
    sub_10076FCFC();
    sub_10076F87C();
    sub_100761EDC();
    v23 = swift_dynamicCastClass();
    v24 = v38;
    if (v23)
    {
      v25 = v23;
      v26 = v34;

      sub_1002F017C(v25, v33);
    }

    else
    {
      sub_10076C52C();
      v27 = swift_dynamicCastClass();
      v26 = v34;
      v28 = v21;
      if (!v27)
      {
LABEL_8:
        [v26 setNeedsLayout];

        swift_unknownObjectRelease();
        (*(v35 + 8))(v41, v36);
        (*(v28 + 8))(v32, v24);
        (*(v39 + 8))(v9, v40);
        (*(v10 + 8))(v31, v42);
        return sub_10000CD74(v44);
      }

      v29 = v27;

      sub_1002F0400(v29, v33);
    }

    v28 = v21;
    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  (*(v37 + 8))(v6, v38);
  (*(v39 + 8))(v9, v40);
  (*(v10 + 8))(v15, v42);
  return sub_10000CD74(v44);
}

uint64_t sub_10009B60C(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v2 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v2 - 8);
  v73 = v56 - v3;
  v71 = sub_100768FEC();
  v67 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10000A5D4(&unk_100946750);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v56 - v5;
  v6 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v6 - 8);
  v65 = v56 - v7;
  v64 = sub_10076A3AC();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v9 - 8);
  v66 = v56 - v10;
  v75 = sub_10000A5D4(&unk_100946700);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v77 = v56 - v11;
  v12 = sub_10076B6EC();
  v79 = *(v12 - 8);
  v80 = v12;
  __chkstk_darwin(v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10076664C();
  v15 = *(v78 - 8);
  __chkstk_darwin(v78);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_1009520C0);
  v81 = *(v18 - 8);
  v82 = v18;
  __chkstk_darwin(v18);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v56 - v22;
  v24 = sub_10000A5D4(&unk_100946710);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v56 - v26;
  sub_1007633BC();
  sub_10076F4AC();
  v28 = v27;
  v29 = v14;
  (*(v25 + 8))(v28, v24);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v30 = sub_100630CB4();
  sub_10000A570(v84, v83);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076161C();
  if (swift_dynamicCast())
  {
    v59 = v17;
    v60 = v15;
    v31 = *(v81 + 16);
    v58 = v23;
    v31(v20, v23, v82);
    sub_10076FCFC();
    sub_10076F87C();
    v32 = v61;
    v33 = [v61 contentView];
    v56[1] = v30;
    [v30 pageMarginInsets];
    [v33 setLayoutMargins:?];

    v34 = sub_1007615BC();
    v57 = v29;
    if (v34)
    {
      if (v34 >> 62)
      {
        v38 = v34;
        v39 = sub_10077158C();
        v34 = v38;
        if (v39)
        {
          goto LABEL_5;
        }
      }

      else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v35 = v34;
        sub_100760C4C();
        sub_10076F64C();
        sub_10076FC1C();
        v36 = v83[0];
        v37 = *&v32[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView];
        [v37 setHidden:0];
        *&v37[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_impressionableArtworks] = v35;

        *&v37[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkLoader] = v36;

        sub_1003BF4A0(v35, v36);

LABEL_10:
        v56[0] = *&v32[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerButton];
        v40 = sub_1007615FC();
        v41 = sub_1007615DC();
        v42 = sub_1007615CC();
        v43 = v62;
        v44 = v64;
        (*(v62 + 104))(v63, enum case for OfferButtonPresenterViewAlignment.center(_:), v64);
        (*(v43 + 56))(v65, 1, 1, v44);
        sub_1000A90E4(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
        v45 = v66;
        sub_10076759C();
        v46 = sub_10000A5D4(&qword_100945590);
        (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
        v47 = v67;
        v48 = v71;
        (*(v67 + 104))(v68, enum case for OfferButtonSubtitlePosition.above(_:), v71);
        (*(v47 + 56))(v73, 1, 1, v48);
        sub_1000A90E4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
        v49 = v69;
        sub_10076759C();
        sub_1001F12C8(v40, v41, v42, v45, v49, v76, 0, 0);

        (*(v70 + 8))(v49, v72);
        sub_10000CFBC(v45, &unk_100946760);
        sub_100767E8C();
        sub_10076F64C();
        sub_10076FC1C();
        v50 = v83[0];
        sub_1007615EC();
        sub_10076160C();
        v51 = sub_100767DCC();
        swift_allocObject();
        v52 = v50;
        v53 = sub_100767DAC();
        sub_1000A90E4(&unk_100946770, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        swift_unknownObjectRetain();
        sub_100767DBC();
        v83[3] = v51;
        v83[0] = v53;
        v54 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
        swift_beginAccess();

        sub_10003837C(v83, &v32[v54], &unk_1009434C0);
        swift_endAccess();
        [v32 setNeedsLayout];

        swift_unknownObjectRelease();

        (*(v74 + 8))(v77, v75);
        (*(v79 + 8))(v57, v80);
        (*(v60 + 8))(v59, v78);
        (*(v81 + 8))(v58, v82);
        return sub_10000CD74(v84);
      }
    }

    [*&v32[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  (*(v79 + 8))(v29, v80);
  (*(v15 + 8))(v17, v78);
  (*(v81 + 8))(v23, v82);
  return sub_10000CD74(v84);
}

uint64_t sub_10009C344(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t, uint64_t, char *, char *, id))
{
  v29 = a4;
  v31 = a3;
  v27 = a2;
  v30 = sub_10000A5D4(&unk_100946700);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v26 = &v26 - v4;
  v5 = sub_10076B6EC();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076664C();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000A5D4(&unk_1009520C0);
  v11 = *(v32 - 8);
  __chkstk_darwin(v32);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_10000A5D4(&unk_100946710);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v18 + 8))(v20, v17);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v21 = sub_100630CB4();
  sub_10000A570(v39, v38);
  sub_10000A5D4(&qword_1009575A0);
  v31(0);
  if (swift_dynamicCast())
  {
    v22 = v37;
    v23 = v32;
    (*(v11 + 16))(v13, v16, v32);
    sub_10076FCFC();
    v24 = v26;
    sub_10076F87C();
    v29(v22, v27, v10, v7, v21);
    swift_unknownObjectRelease();

    (*(v28 + 8))(v24, v30);
    (*(v35 + 8))(v7, v36);
    (*(v33 + 8))(v10, v34);
    (*(v11 + 8))(v16, v23);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v35 + 8))(v7, v36);
    (*(v33 + 8))(v10, v34);
    (*(v11 + 8))(v16, v32);
  }

  return sub_10000CD74(v39);
}

uint64_t sub_10009C820(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v2 = sub_10000A5D4(&unk_100946700);
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v56 = v53 - v3;
  v61 = sub_10076B6EC();
  v64 = *(v61 - 8);
  __chkstk_darwin(v61);
  v5 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076664C();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10000A5D4(&unk_1009520C0);
  v9 = *(v65 - 8);
  __chkstk_darwin(v65);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v53 - v13;
  v15 = sub_10000A5D4(&unk_100946710);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v53 - v17;
  sub_1007633BC();
  sub_10076F4AC();
  v19 = v18;
  v20 = v8;
  (*(v16 + 8))(v19, v15);
  v21 = v5;
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v22 = sub_100630CB4();
  sub_10000A570(v68, v67);
  sub_10000A5D4(&qword_1009575A0);
  sub_10075E67C();
  if (swift_dynamicCast())
  {
    v24 = v65;
    v23 = v66;
    (*(v9 + 16))(v11, v14, v65);
    sub_10076FCFC();
    v25 = v56;
    sub_10076F87C();
    v26 = v22;
    sub_100078490(v23, v57, v20, v21, v22);
    v57 = v23;
    sub_10075E66C();
    v27 = sub_10076BB6C();
    v29 = v28;

    if (v29)
    {
      v53[1] = v26;
      v54 = v14;
      v55 = v20;
      v30 = v21;
      v69._countAndFlagsBits = 0x465F4E4F5F444441;
      v69._object = 0xEE005050415F524FLL;
      v70._object = 0x80000001007D1F20;
      v70._countAndFlagsBits = 0xD000000000000031;
      sub_1007622EC(v69, v70);
      sub_10000A5D4(&qword_100966CF0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_100783DD0;
      *(v31 + 56) = &type metadata for String;
      *(v31 + 64) = sub_1000A9040();
      *(v31 + 32) = v27;
      *(v31 + 40) = v29;

      sub_10076FFCC();

      v32 = objc_allocWithZone(NSMutableAttributedString);
      v33 = sub_10076FF6C();
      v34 = [v32 initWithString:v33];

      v35 = objc_allocWithZone(NSString);
      v36 = sub_10076FF6C();

      v37 = [v35 initWithString:v36];

      v38 = sub_10076FF6C();

      v39 = [v37 rangeOfString:v38 options:4];
      v41 = v40;

      v42 = v60;
      v43 = [v60 tintColor];
      v67[0] = v43;
      sub_10000A5D4(&qword_100946798);
      v44 = sub_10077119C();

      [v34 addAttribute:NSForegroundColorAttributeName value:v44 range:{v39, v41}];
      swift_unknownObjectRelease();
      v45 = *(*&v42[OBJC_IVAR____TtC20ProductPageExtension37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension23InAppPurchaseLockupView_subtitleLabel);
      if (v45)
      {
        v46 = v45;
        v47 = v34;
        [v46 setAttributedText:v47];
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v48 = v61;
      v49 = v62;
      v51 = v63;
      v50 = v64;
      v21 = v30;
      v24 = v65;
      v20 = v55;
      v14 = v54;
    }

    else
    {
      swift_unknownObjectRelease();
      v48 = v61;
      v49 = v62;
      v51 = v63;
      v50 = v64;
    }

    (*(v58 + 8))(v25, v59);
    (*(v50 + 8))(v21, v48);
    (*(v49 + 8))(v20, v51);
    (*(v9 + 8))(v14, v24);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v64 + 8))(v5, v61);
    (*(v62 + 8))(v8, v63);
    (*(v9 + 8))(v14, v65);
  }

  return sub_10000CD74(v68);
}

uint64_t sub_10009CFB8(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v27 = sub_10000A5D4(&unk_100946700);
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v24 - v2;
  v3 = sub_10076B6EC();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076664C();
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000A5D4(&unk_1009520C0);
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = sub_10000A5D4(&unk_100946710);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v16 + 8))(v18, v15);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v19 = sub_100630CB4();
  sub_10000A570(v35, v34);
  sub_10000A5D4(&qword_1009575A0);
  sub_10076349C();
  if (swift_dynamicCast())
  {
    v20 = v33;
    v21 = v28;
    (*(v9 + 16))(v11, v14, v28);
    sub_10076FCFC();
    v22 = v24;
    sub_10076F87C();
    sub_100216650(v20, v22, v25, v8, v5, v19);
    swift_unknownObjectRelease();

    (*(v26 + 8))(v22, v27);
    (*(v31 + 8))(v5, v32);
    (*(v29 + 8))(v8, v30);
    (*(v9 + 8))(v14, v21);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v31 + 8))(v5, v32);
    (*(v29 + 8))(v8, v30);
    (*(v9 + 8))(v14, v28);
  }

  return sub_10000CD74(v35);
}

uint64_t sub_10009D478(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v2 = sub_10000A5D4(&unk_100946700);
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v35 = &v30 - v3;
  v4 = sub_10076B6EC();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10076664C();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_1009520C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = sub_10000A5D4(&unk_100946710);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v16 + 8))(v18, v15);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  swift_unknownObjectRelease();
  sub_10000A570(v45, v44);
  sub_10000A5D4(&qword_1009575A0);
  sub_100760DAC();
  if (swift_dynamicCast())
  {
    v31 = v8;
    v33 = v6;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v22 = v43;
    v30 = v10;
    v23 = *(v10 + 16);
    v32 = v9;
    v23(v34, v14, v9);
    sub_10076FCFC();
    v24 = v35;
    sub_10076F87C();
    sub_10000A5D4(&unk_1009467A0);
    sub_10076F64C();
    sub_10076FC1C();
    v43 = v22;
    sub_10075F74C();

    v25 = v44[0];
    v26 = v14;
    if ((~v44[0] & 0xF000000000000007) != 0)
    {
      v27 = v44[1];
    }

    else
    {

      v27 = 0;
      v25 = v22;
    }

    v28 = v31;
    sub_1001B7BA8(v25, v27);
    sub_1000A9094(v25, v27);

    (*(v37 + 8))(v24, v38);
    (*(v20 + 8))(v33, v21);
    (*(v42 + 8))(v28, v19);
    (*(v30 + 8))(v26, v32);
  }

  else
  {
    (*(v40 + 8))(v6, v41);
    (*(v42 + 8))(v8, v39);
    (*(v10 + 8))(v14, v9);
  }

  return sub_10000CD74(v45);
}

uint64_t sub_10009DA1C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t, char *, uint64_t, char *, char *))
{
  v28 = a4;
  v30 = a3;
  v26 = a2;
  v29 = sub_10000A5D4(&unk_100946700);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v25 = &v25 - v4;
  v5 = sub_10076B6EC();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076664C();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000A5D4(&unk_1009520C0);
  v11 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v17 = sub_10000A5D4(&unk_100946710);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v25 - v19;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v18 + 8))(v20, v17);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  sub_10000A570(v38, v37);
  sub_10000A5D4(&qword_1009575A0);
  v30(0);
  if (swift_dynamicCast())
  {
    v21 = v36;
    v22 = v31;
    (*(v11 + 16))(v13, v16, v31);
    sub_10076FCFC();
    v23 = v25;
    sub_10076F87C();
    v28(v21, v23, v26, v10, v7);
    swift_unknownObjectRelease();

    (*(v27 + 8))(v23, v29);
    (*(v34 + 8))(v7, v35);
    (*(v32 + 8))(v10, v33);
    (*(v11 + 8))(v16, v22);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v34 + 8))(v7, v35);
    (*(v32 + 8))(v10, v33);
    (*(v11 + 8))(v16, v31);
  }

  return sub_10000CD74(v38);
}

uint64_t sub_10009DEF8(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  ObjectType = swift_getObjectType();
  v28 = sub_10000A5D4(&unk_100946700);
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v24 = &v24 - v2;
  v3 = sub_10076B6EC();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076664C();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000A5D4(&unk_1009520C0);
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = sub_10000A5D4(&unk_100946710);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v16 + 8))(v18, v15);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v19 = sub_100630CB4();
  sub_10000A570(v37, v35);
  sub_10000A5D4(&qword_1009575A0);
  sub_100760F3C();
  if (swift_dynamicCast())
  {
    v36 = v34;
    v20 = v29;
    (*(v9 + 16))(v11, v14, v29);
    sub_10076FCFC();
    v21 = v24;
    sub_10076F87C();
    v22 = sub_1000A90E4(&unk_1009467B0, type metadata accessor for PrivacyFooterCollectionViewCell);
    (*(v22 + 56))(&v36, v21, v27, v8, v5, v19, ObjectType, v22);
    swift_unknownObjectRelease();
    (*(v25 + 8))(v21, v28);
    (*(v32 + 8))(v5, v33);
    (*(v30 + 8))(v8, v31);
    (*(v9 + 8))(v14, v20);
    sub_10000CD74(v37);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v32 + 8))(v5, v33);
    (*(v30 + 8))(v8, v31);
    (*(v9 + 8))(v14, v29);
    return sub_10000CD74(v37);
  }
}

size_t sub_10009E434(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v94 = a2;
  v2 = sub_10000A5D4(&unk_1009567A0);
  v3 = *(v2 - 8);
  v92 = v2;
  v93 = v3;
  __chkstk_darwin(v2);
  v91 = &v71 - v4;
  v81 = sub_10076E1EC();
  v76 = *(v81 - 8);
  __chkstk_darwin(v81);
  v82 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009467C0);
  __chkstk_darwin(v6 - 8);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v71 - v9;
  v10 = sub_10000A5D4(&qword_1009459C0);
  __chkstk_darwin(v10 - 8);
  v80 = &v71 - v11;
  v79 = sub_10000A5D4(&unk_100946700);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v83 = &v71 - v12;
  v13 = sub_10076B6EC();
  v86 = *(v13 - 8);
  v87 = v13;
  __chkstk_darwin(v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10076664C();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10000A5D4(&unk_1009520C0);
  v18 = *(v89 - 8);
  __chkstk_darwin(v89);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  v24 = sub_10000A5D4(&unk_100946710);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v71 - v26;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v25 + 8))(v27, v24);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_100630CB4();
  swift_unknownObjectRelease();
  sub_10000A570(v99, v96);
  sub_10000A5D4(&qword_1009575A0);
  sub_100760F7C();
  if (!swift_dynamicCast())
  {
    (*(v86 + 8))(v15, v87);
    (*(v84 + 8))(v17, v85);
    (*(v18 + 8))(v23, v89);
    return sub_10000CD74(v99);
  }

  v72 = v17;
  v73 = v15;
  v28 = v95;
  (*(v18 + 16))(v20, v23, v89);
  sub_10076FCFC();
  v29 = v28;
  sub_10076F87C();
  v96[0] = sub_100760F6C();
  sub_10076083C();
  v30 = sub_10076F64C();
  sub_1000A90E4(&qword_1009467D0, &type metadata accessor for LinkableText);
  v31 = v80;
  v90 = v30;
  sub_10076F56C();

  v32 = sub_10000A5D4(&qword_1009459B8);
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyText;
  v34 = v88;
  swift_beginAccess();
  sub_1000A912C(v31, v34 + v33, &qword_1009459C0);
  swift_endAccess();
  sub_1001063C8();
  sub_10000CFBC(v31, &qword_1009459C0);
  v35 = sub_100760F4C();
  *(v34 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_isDetailHeader) = v35 & 1;
  v36 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_bodyLabel);
  sub_100016F40(0, &qword_100942F10);
  v71 = v23;
  if (v35)
  {
    v37 = sub_100770CFC();
  }

  else
  {
    v37 = sub_100770D1C();
  }

  v38 = *(v36 + qword_10095B640);
  *(v36 + qword_10095B640) = v37;
  v39 = v37;
  if ((sub_100770EEC() & 1) == 0)
  {
    sub_10050C644();
  }

  v80 = v29;
  v40 = sub_100760F5C();
  v41 = v40;
  if (v40 >> 62)
  {
    v42 = sub_10077158C();
  }

  else
  {
    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = v18;
  if (!v42)
  {

    v45 = _swiftEmptyArrayStorage;
    v51 = v82;
    v50 = v88;
LABEL_21:
    sub_100107E88();
    v52 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems;
    *(v50 + OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_supplementaryItems) = v45;

    sub_10010666C();
    if (sub_100760F4C())
    {
      v53 = *(v76 + 104);
      LODWORD(v93) = enum case for Separator.Position.top(_:);
      v92 = v53;
      v53(v51);
      v91 = sub_10076D67C();
      v97 = v91;
      v98 = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v96);
      sub_10076D66C();
      v54 = v77;
      sub_10076E1FC();
      v55 = sub_10076E21C();
      v56 = 1;
      v94 = *(*(v55 - 8) + 56);
      v94(v54, 0, 1, v55);
      v57 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_1000A912C(v54, v50 + v57, &unk_1009467C0);
      swift_endAccess();
      v58 = v50;
      sub_100106E28();
      sub_10000CFBC(v54, &unk_1009467C0);
      if (*(*(v50 + v52) + 16))
      {
        v92(v82, v93, v81);
        v97 = v91;
        v98 = &protocol witness table for ZeroDimension;
        sub_10000DB7C(v96);
        sub_10076D66C();
        v59 = v75;
        sub_10076E1FC();
        v56 = 0;
        v60 = v79;
        v62 = v86;
        v61 = v87;
        v63 = v78;
      }

      else
      {
        v60 = v79;
        v62 = v86;
        v61 = v87;
        v63 = v78;
        v59 = v75;
      }

      v94(v59, v56, 1, v55);
      v69 = v59;
      v70 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_1000A912C(v69, v58 + v70, &unk_1009467C0);
      swift_endAccess();
      sub_100106E3C();

      sub_10000CFBC(v69, &unk_1009467C0);
      (*(v63 + 8))(v83, v60);
      (*(v62 + 8))(v73, v61);
    }

    else
    {
      v64 = sub_10076E21C();
      v65 = *(*(v64 - 8) + 56);
      v66 = v77;
      v65(v77, 1, 1, v64);
      v67 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_1000A912C(v66, v50 + v67, &unk_1009467C0);
      swift_endAccess();
      sub_100106E28();
      sub_10000CFBC(v66, &unk_1009467C0);
      v65(v66, 1, 1, v64);
      v68 = OBJC_IVAR____TtC20ProductPageExtension31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_1000A912C(v66, v50 + v68, &unk_1009467C0);
      swift_endAccess();
      sub_100106E3C();

      sub_10000CFBC(v66, &unk_1009467C0);
      (*(v78 + 8))(v83, v79);
      (*(v86 + 8))(v73, v87);
    }

    (*(v84 + 8))(v72, v85);
    (*(v74 + 8))(v71, v89);
    return sub_10000CD74(v99);
  }

  v96[0] = _swiftEmptyArrayStorage;
  result = sub_1004BB920(0, v42 & ~(v42 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    v45 = v96[0];
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v46 = sub_10077149C();
      }

      else
      {
        v46 = *(v41 + 8 * v44 + 32);
      }

      v95 = v46;
      sub_100769C4C();
      sub_1000A90E4(&qword_1009567B0, &type metadata accessor for PrivacyHeaderSupplementaryItem);
      v47 = v91;
      sub_10076F56C();

      v96[0] = v45;
      v49 = v45[2];
      v48 = v45[3];
      if (v49 >= v48 >> 1)
      {
        sub_1004BB920(v48 > 1, v49 + 1, 1);
        v45 = v96[0];
      }

      ++v44;
      v45[2] = v49 + 1;
      (*(v93 + 32))(v45 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v49, v47, v92);
    }

    while (v42 != v44);

    v50 = v88;
    v51 = v82;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}