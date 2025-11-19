id sub_10041EEE8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v82 = a3;
  v79 = a2;
  v70 = sub_10075E57C();
  v78 = *(v70 - 8);
  __chkstk_darwin(v70);
  v80 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v81 = &v67 - v16;
  v17 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v17 - 8);
  v77 = &v67 - v18;
  v75 = sub_100768FEC();
  v71 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10000A5D4(&unk_100946750);
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v67 - v20;
  v21 = sub_10000A5D4(&unk_100946760);
  *&v22 = __chkstk_darwin(v21 - 8).n128_u64[0];
  v24 = &v67 - v23;
  v25 = [v7 contentView];
  [v25 setLayoutMargins:{a4, a5, a6, a7}];

  v26 = a1;
  sub_10076BB6C();
  v28 = v27;
  v29 = v8;
  v30 = *&v8[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  if (v27)
  {
    v31 = sub_10076FF6C();
  }

  else
  {
    v31 = 0;
  }

  [v30 setText:v31];

  [v30 setHidden:v28 == 0];
  [v29 setNeedsLayout];
  v32 = sub_10075E63C();
  v33 = *&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
  v34 = "inAppDescription";
  if (v32)
  {
    v34 = "chase.Subtitle.Format";
    v35._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v35._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v35._object = (v34 | 0x8000000000000000);
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  sub_1007622EC(v35, v86);
  v36 = sub_10076FF6C();

  [v33 setText:v36];

  sub_10075E66C();
  v37 = sub_10076BB6C();
  v39 = v38;

  if (v39)
  {
    v85._countAndFlagsBits = 0xD000000000000035;
    v85._object = 0x80000001007E22A0;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    sub_1007622EC(v85, v87);
    sub_10000A5D4(&qword_100966CF0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100783DD0;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = sub_1000A9040();
    *(v40 + 32) = v37;
    *(v40 + 40) = v39;
    sub_10076FFCC();

    v41 = *&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];

    v42 = sub_10076FF6C();

    [v41 setText:v42];

    [v41 setHidden:0];
  }

  else
  {
    v43 = *&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
    [v43 setText:0];
    [v43 setHidden:1];
  }

  [v29 setNeedsLayout];
  sub_10075E64C();
  v45 = *&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  if (v44)
  {
    v46 = sub_10076FF6C();
    [v45 setText:v46];

    [v45 setHidden:0];
  }

  else
  {
    [*&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] setText:0];
    [v45 setHidden:1];
  }

  [v29 setNeedsLayout];
  v47 = sub_10076BB3C();
  v69 = v26;
  v48 = sub_10076BA2C();
  v49 = sub_10000A5D4(&qword_100945590);
  (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
  v50 = v71;
  v51 = v75;
  (*(v71 + 104))(v72, enum case for OfferButtonSubtitlePosition.below(_:), v75);
  (*(v50 + 56))(v77, 1, 1, v51);
  sub_1002025B4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
  v52 = v73;
  sub_10076759C();
  sub_1001F12C8(v47, v48, 0, v24, v52, v79, 0, 0);

  (*(v74 + 8))(v52, v76);
  sub_100026190(v24);
  v68 = v29;
  v53 = *&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v83.value.super.isa = 0;
  v83.is_nil = 0;
  sub_10075FCEC(v83, v54);
  v84.value.super.isa = 0;
  v84.is_nil = 0;
  sub_10075FCEC(v84, v55);
  sub_10075FD2C();
  sub_1002025B4(&qword_100941820, &type metadata accessor for ArtworkView);
  v56 = v82;
  sub_100760BFC();
  sub_100760BFC();
  v79 = *&v29[OBJC_IVAR____TtC20ProductPageExtension43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor];
  v57 = v81;
  sub_10075E65C();
  v58 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  v59 = v78;
  v60 = v70;
  (*(v78 + 24))(&v53[v58], v57, v70);
  swift_endAccess();
  v61 = *(v59 + 16);
  v62 = v80;
  v61(v80, &v53[v58], v60);
  sub_1005B84F8(v62);
  v63 = *(v59 + 8);
  v63(v62, v60);
  v63(v57, v60);
  v64 = v68;
  [v53 setBackgroundColor:v79];
  sub_1006EC184(v69, v53, v56);
  v61(v57, &v53[v58], v60);
  sub_1005B84F8(v57);
  v63(v57, v60);
  [v53 setNeedsLayout];
  sub_1000325F0();
  v65 = sub_100770D2C();
  [v64 setBackgroundColor:v65];

  return [v64 setNeedsLayout];
}

uint64_t sub_10041F8E4()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v4, v0);
  qword_100956EE0 = sub_10076FD4C();
  unk_100956EE8 = &protocol witness table for OSLogger;
  sub_10000DB7C(qword_100956EC8);
  return sub_10076FD3C();
}

uint64_t sub_10041FA28(uint64_t a1, uint64_t a2)
{
  sub_10000A5D4(&qword_100942C70);
  v5 = sub_10076FCEC();
  sub_100016F40(0, &qword_100944EF0);
  sub_10076F64C();
  sub_10076FC1C();
  v6 = v11[0];
  sub_10041FBC8(v11[0]);
  sub_100420A48(v2, v11);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  sub_100420AD0(v11, (v7 + 4));
  v7[5] = a2;
  v8 = sub_100016F40(0, &qword_1009471F0);
  swift_retain_n();

  v9 = sub_10077068C();
  v11[3] = v8;
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = v9;
  sub_10076FC6C();

  sub_10000CD74(v11);
  return v5;
}

id sub_10041FBC8(void *a1)
{
  v2 = sub_10076F08C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F0CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100956EF8);
  v10 = sub_10076FCEC();
  v11 = [a1 ams_activeiTunesAccount];
  v12 = [v11 ams_DSID];
  if (v12)
  {

    LOBYTE(aBlock[0]) = 1;
    sub_10076FCBC();

    return v10;
  }

  v26 = v7;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong frontmostViewController];

  result = [v14 view];
  if (result)
  {
    v16 = result;
    v17 = [result window];

    if (v17)
    {

      sub_100016F40(0, &qword_1009471F0);
      v25 = sub_10077068C();
      v18 = swift_allocObject();
      v18[2] = v11;
      v18[3] = v14;
      v18[4] = v10;
      aBlock[4] = sub_100420BB8;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_100894FA0;
      v19 = v14;
      v20 = _Block_copy(aBlock);
      v24 = v11;
      v21 = v19;

      sub_10076F0AC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100420BDC(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000A5D4(&unk_10094E1C0);
      sub_1000852B8();
      sub_1007712CC();
      v22 = v25;
      sub_10077069C();
      _Block_release(v20);

      (*(v3 + 8))(v5, v2);
      (*(v26 + 8))(v9, v6);
    }

    else
    {
      if (qword_100940468 != -1)
      {
        swift_once();
      }

      sub_10000CF78(qword_100956EC8, qword_100956EE0);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();

      sub_100420B1C();
      swift_allocError();
      sub_10076FCAC();
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004200F4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v39 = a1;
  v34 = a3;
  v40 = a2;
  v5 = sub_10076F50C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10075F65C();
  v33 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100765F6C();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v35 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100766EDC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076F4FC();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v17 - 8);
  v19 = &v31 - v18;
  v20 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v20 - 8);
  v22 = &v31 - v21;
  v23 = sub_10076C15C();
  v26 = __chkstk_darwin(v23);
  if (*v39 == 1)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    (*(v25 + 104))(&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.reviewSummaryReportConcern(_:));
    v27 = sub_10075DB7C();
    (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
    v28 = sub_10076096C();
    (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
    v42 = sub_10076A22C();
    v41 = v34;

    sub_10076F4DC();
    (*(v13 + 104))(v15, enum case for FlowPresentationContext.presentModalFormSheet(_:), v12);
    (*(v31 + 104))(v35, enum case for FlowAnimationBehavior.infer(_:), v32);
    (*(v33 + 104))(v37, enum case for FlowOrigin.inapp(_:), v36);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v29 = sub_10075F5EC();
    sub_100563FF8(v29, 1, v38);
    sub_10076FC4C();
  }

  else
  {
    (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5, v26);
    sub_10076FCBC();
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1004206B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithAccount:a1 presentingViewController:a2 options:0];
  v5 = [v4 performAuthentication];
  v12 = sub_100420C24;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100177EA0;
  v11 = &unk_100894FC8;
  v6 = _Block_copy(&v8);

  [v5 addSuccessBlock:v6];
  _Block_release(v6);
  v12 = sub_100420C50;
  v13 = a3;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100050C44;
  v11 = &unk_100894FF0;
  v7 = _Block_copy(&v8);

  [v5 addErrorBlock:v7];
  _Block_release(v7);
}

uint64_t sub_100420864()
{
  if (qword_100940468 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_100956EC8, qword_100956EE0);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v3[3] = v2;
  v0 = sub_10000DB7C(v3);
  (*(*(v2 - 8) + 16))(v0);
  sub_10076F30C();
  sub_1000258C0(v3);
  sub_10076FBEC();

  LOBYTE(v3[0]) = 0;
  return sub_10076FCBC();
}

uint64_t sub_100420A80()
{

  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100420B1C()
{
  result = qword_100956F00;
  if (!qword_100956F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956F00);
  }

  return result;
}

uint64_t sub_100420B70()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100420BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100420BDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100420C6C()
{
  result = qword_100956F08;
  if (!qword_100956F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956F08);
  }

  return result;
}

uint64_t sub_100420CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v3 = sub_10076FFEC();
  v137 = *(v3 - 8);
  v138 = v3;
  __chkstk_darwin(v3);
  v136 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100954218);
  __chkstk_darwin(v5 - 8);
  v150 = &v128 - v6;
  v7 = sub_10000A5D4(&qword_100954220);
  __chkstk_darwin(v7 - 8);
  v149 = &v128 - v8;
  v9 = sub_10076B96C();
  __chkstk_darwin(v9 - 8);
  v132 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v135 = &v128 - v12;
  __chkstk_darwin(v13);
  v140 = &v128 - v14;
  __chkstk_darwin(v15);
  v141 = &v128 - v16;
  v151 = sub_10075DDBC();
  v146 = *(v151 - 8);
  __chkstk_darwin(v151);
  v128 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v128 - v19;
  __chkstk_darwin(v21);
  v23 = &v128 - v22;
  __chkstk_darwin(v24);
  v145 = &v128 - v25;
  __chkstk_darwin(v26);
  v144 = &v128 - v27;
  v28 = sub_10076189C();
  v147 = *(v28 - 8);
  v148 = v28;
  __chkstk_darwin(v28);
  v129 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v131 = &v128 - v31;
  __chkstk_darwin(v32);
  v134 = &v128 - v33;
  __chkstk_darwin(v34);
  v36 = &v128 - v35;
  v37 = sub_100761D3C();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v130 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v133 = &v128 - v41;
  __chkstk_darwin(v42);
  v139 = &v128 - v43;
  __chkstk_darwin(v44);
  v46 = &v128 - v45;
  v48 = __chkstk_darwin(v47);
  v50 = &v128 - v49;
  v142 = *(v38 + 16);
  v143 = a1;
  v142(&v128 - v49, a1, v37, v48);
  v51 = (*(v38 + 88))(v50, v37);
  if (v51 != enum case for AdPlacementType.searchLanding(_:))
  {
    if (v51 == enum case for AdPlacementType.searchResults(_:))
    {
      goto LABEL_37;
    }

    if (v51 == enum case for AdPlacementType.today(_:))
    {
      sub_10076F73C();
      sub_10076F70C();
      if (qword_100940480 != -1)
      {
        swift_once();
      }

      v65 = sub_10000A5D4(&unk_100955860);
      sub_10000A61C(v65, qword_10099F968);
      sub_10076F41C();

      if (v153 == 2 || (v153 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_10075DDAC();
      sub_10075DD8C();
      v66 = *(v146 + 1);
      v66(v23, v151);
      sub_10076B94C();
      (v142)(v139, v143, v37);
      sub_10000A5D4(&unk_100947120);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100783DD0;
      v153 = 1953459315;
      v154 = 0xE400000000000000;
      sub_10077140C();
      *(inited + 96) = &type metadata for Int;
      *(inited + 72) = 2;
      sub_1000FCED4(inited);
      swift_setDeallocating();
      sub_1004225E8(inited + 32);
      v68 = v136;
      sub_10076FFDC();
      v69 = sub_10076FFAC();
      v71 = v70;
      (*(v137 + 8))(v68, v138);
      if (v71 >> 60 != 15)
      {
        v72 = objc_opt_self();
        isa = sub_10075DB8C().super.isa;
        v153 = 0;
        v74 = [v72 JSONObjectWithData:isa options:0 error:&v153];

        if (v74)
        {
          v75 = v153;
          sub_10077123C();
          sub_1003160EC(v69, v71);
          swift_unknownObjectRelease();
          sub_10000A5D4(&qword_100954258);
          swift_dynamicCast();
        }

        else
        {
          v110 = v153;
          sub_10075DA4C();

          swift_willThrow();
          sub_1003160EC(v69, v71);
        }
      }

      v111 = v134;
      sub_10076187C();
      v112 = v144;
      sub_10075DDAC();
      v146 = sub_10075DD8C();
      v113 = v151;
      v66(v112, v151);
      v114 = v145;
      sub_10075DDAC();
      sub_10075DD8C();
      v66(v114, v113);
    }

    else if (v51 == enum case for AdPlacementType.productPageYMAL(_:))
    {
      sub_10076F73C();
      sub_10076F70C();
      if (qword_100940488 != -1)
      {
        swift_once();
      }

      v84 = sub_10000A5D4(&unk_100955860);
      sub_10000A61C(v84, qword_10099F980);
      sub_10076F41C();

      if (v153 == 2 || (v153 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_10075DDAC();
      sub_10075DD8C();
      v85 = *(v146 + 1);
      v85(v20, v151);
      sub_10076B94C();
      (v142)(v133, v143, v37);
      sub_10000A5D4(&unk_100947120);
      v86 = swift_initStackObject();
      *(v86 + 16) = xmmword_100783DD0;
      v153 = 1953459315;
      v154 = 0xE400000000000000;
      sub_10077140C();
      *(v86 + 96) = &type metadata for Int;
      *(v86 + 72) = 1;
      sub_1000FCED4(v86);
      swift_setDeallocating();
      sub_1004225E8(v86 + 32);
      v87 = v136;
      sub_10076FFDC();
      v88 = sub_10076FFAC();
      v90 = v89;
      (*(v137 + 8))(v87, v138);
      if (v90 >> 60 != 15)
      {
        v91 = objc_opt_self();
        v92 = sub_10075DB8C().super.isa;
        v153 = 0;
        v93 = [v91 JSONObjectWithData:v92 options:0 error:&v153];

        if (v93)
        {
          v94 = v153;
          sub_10077123C();
          sub_1003160EC(v88, v90);
          swift_unknownObjectRelease();
          sub_10000A5D4(&qword_100954258);
          swift_dynamicCast();
        }

        else
        {
          v115 = v153;
          sub_10075DA4C();

          swift_willThrow();
          sub_1003160EC(v88, v90);
        }
      }

      v111 = v131;
      sub_10076187C();
      v116 = v144;
      sub_10075DDAC();
      v146 = sub_10075DD8C();
      v117 = v151;
      v85(v116, v151);
      v118 = v145;
      sub_10075DDAC();
      sub_10075DD8C();
      v85(v118, v117);
    }

    else
    {
      if (v51 != enum case for AdPlacementType.productPageYMALDuringDownload(_:))
      {
        v109 = sub_10076902C();
        (*(*(v109 - 8) + 56))(v152, 1, 1, v109);
        return (*(v38 + 8))(v50, v37);
      }

      sub_10076F73C();
      sub_10076F70C();
      if (qword_100940488 != -1)
      {
        swift_once();
      }

      v95 = sub_10000A5D4(&unk_100955860);
      sub_10000A61C(v95, qword_10099F980);
      sub_10076F41C();

      if (v153 == 2 || (v153 & 1) == 0)
      {
        goto LABEL_37;
      }

      v96 = v128;
      sub_10075DDAC();
      sub_10075DD8C();
      v97 = *(v146 + 1);
      v97(v96, v151);
      sub_10076B94C();
      (v142)(v130, v143, v37);
      sub_10000A5D4(&unk_100947120);
      v98 = swift_initStackObject();
      *(v98 + 16) = xmmword_100783DD0;
      v153 = 1953459315;
      v154 = 0xE400000000000000;
      sub_10077140C();
      *(v98 + 96) = &type metadata for Int;
      *(v98 + 72) = 1;
      sub_1000FCED4(v98);
      swift_setDeallocating();
      sub_1004225E8(v98 + 32);
      v99 = v136;
      sub_10076FFDC();
      v100 = sub_10076FFAC();
      v102 = v101;
      (*(v137 + 8))(v99, v138);
      if (v102 >> 60 != 15)
      {
        v103 = objc_opt_self();
        v104 = sub_10075DB8C().super.isa;
        v153 = 0;
        v105 = [v103 JSONObjectWithData:v104 options:0 error:&v153];

        if (v105)
        {
          v106 = v153;
          sub_10077123C();
          sub_1003160EC(v100, v102);
          swift_unknownObjectRelease();
          sub_10000A5D4(&qword_100954258);
          swift_dynamicCast();
        }

        else
        {
          v119 = v153;
          sub_10075DA4C();

          swift_willThrow();
          sub_1003160EC(v100, v102);
        }
      }

      v111 = v129;
      sub_10076187C();
      v120 = v144;
      sub_10075DDAC();
      v146 = sub_10075DD8C();
      v121 = v151;
      v97(v120, v151);
      v122 = v145;
      sub_10075DDAC();
      sub_10075DD8C();
      v97(v122, v121);
    }

    v124 = v147;
    v123 = v148;
    v125 = v149;
    (*(v147 + 16))(v149, v111, v148);
    (*(v124 + 56))(v125, 0, 1, v123);
    v126 = sub_1007681AC();
    (*(*(v126 - 8) + 56))(v150, 1, 1, v126);
    v64 = v152;
    sub_10076900C();
    (*(v124 + 8))(v111, v123);
    goto LABEL_46;
  }

  sub_10076F73C();
  sub_10076F70C();
  if (qword_100940470 != -1)
  {
    swift_once();
  }

  v52 = sub_10000A5D4(&unk_100955860);
  sub_10000A61C(v52, qword_10099F938);
  sub_10076F41C();

  if (v153 == 2 || (v153 & 1) == 0)
  {
    sub_10076F70C();
    if (qword_100940478 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v52, qword_10099F950);
    sub_10076F41C();

    if (v153 != 2 && (v153 & 1) != 0)
    {
      v76 = v144;
      sub_10075DDAC();
      sub_10075DD8C();
      v77 = *(v146 + 1);
      v78 = v151;
      v77(v76, v151);
      v79 = v145;
      sub_10075DDAC();
      sub_10075DD8C();
      v77(v79, v78);
      (*(v147 + 56))(v149, 1, 1, v148);
      v80 = enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
      v81 = sub_1007681AC();
      v82 = *(v81 - 8);
      v83 = v150;
      (*(v82 + 104))(v150, v80, v81);
      (*(v82 + 56))(v83, 0, 1, v81);
      v64 = v152;
      sub_10076900C();
      goto LABEL_46;
    }

LABEL_37:
    v107 = sub_10076902C();
    return (*(*(v107 - 8) + 56))(v152, 1, 1, v107);
  }

  v53 = v144;
  sub_10075DDAC();
  v54 = sub_10075DD8C();
  v139 = v55;
  v140 = v54;
  v56 = *(v146 + 1);
  v57 = v151;
  v56(v53, v151);
  v146 = ":SOME_CPP_VERSION_ID}}}]}";
  sub_10076B94C();
  (v142)(v46, v143, v37);
  sub_10076187C();
  sub_10075DDAC();
  v146 = sub_10075DD8C();
  v143 = v58;
  v56(v53, v57);
  v59 = v145;
  sub_10075DDAC();
  sub_10075DD8C();
  v56(v59, v57);
  v60 = v147;
  v61 = v148;
  v62 = v149;
  (*(v147 + 16))(v149, v36, v148);
  (*(v60 + 56))(v62, 0, 1, v61);
  v63 = sub_1007681AC();
  (*(*(v63 - 8) + 56))(v150, 1, 1, v63);
  v64 = v152;
  sub_10076900C();
  (*(v60 + 8))(v36, v61);
LABEL_46:
  v127 = sub_10076902C();
  return (*(*(v127 - 8) + 56))(v64, 0, 1, v127);
}

uint64_t sub_100422408()
{
  v0 = sub_10000A5D4(&unk_100955860);
  sub_10000DB18(v0, qword_10099F938);
  sub_10000A61C(v0, qword_10099F938);
  return sub_10076F54C();
}

uint64_t sub_100422480()
{
  v0 = sub_10000A5D4(&unk_100955860);
  sub_10000DB18(v0, qword_10099F950);
  sub_10000A61C(v0, qword_10099F950);
  return sub_10076F54C();
}

uint64_t sub_1004224F8()
{
  v0 = sub_10000A5D4(&unk_100955860);
  sub_10000DB18(v0, qword_10099F968);
  sub_10000A61C(v0, qword_10099F968);
  return sub_10076F54C();
}

uint64_t sub_100422570()
{
  v0 = sub_10000A5D4(&unk_100955860);
  sub_10000DB18(v0, qword_10099F980);
  sub_10000A61C(v0, qword_10099F980);
  return sub_10076F54C();
}

uint64_t sub_1004225E8(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100948B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10042265C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode] = 1;
  v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_isCollapsing] = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  v3 = enum case for MediaOverlayStyle.matchSystem(_:);
  v4 = sub_10076361C();
  (*(*(v4 - 8) + 104))(&v0[v2], v3, v4);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView] = 0;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView] = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100422768(2);
  sub_100422768(0);
  sub_1004228CC();
  sub_100422A60();

  return v5;
}

void sub_100422768(uint64_t a1)
{
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v2 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView;
      if (*&v1[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView])
      {
        return;
      }

      v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
      v4 = *&v1[v2];
      *&v1[v2] = v3;

      v5 = *&v1[v2];
      if (!v5)
      {
        return;
      }

      v6 = v5;
      [v1 bounds];
      [v6 setFrame:?];

      v7 = *&v1[v2];
      if (!v7)
      {
        return;
      }

      [v7 setUserInteractionEnabled:0];
      if (!*&v1[v2])
      {
        return;
      }
    }

    else
    {
      v8 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView;
      if (*&v1[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView])
      {
        return;
      }

      [v1 bounds];
      v9 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
      v10 = sub_10046D7FC(0);
      v11 = *&v1[v8];
      *&v1[v8] = v10;

      v12 = *&v1[v8];
      if (!v12)
      {
        return;
      }

      [v12 setUserInteractionEnabled:0];
      if (!*&v1[v8])
      {
        return;
      }
    }

    [v1 insertSubview:? atIndex:?];
  }
}

void sub_1004228CC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode);
  sub_100423854(v2);
  sub_100422768(v2);
  sub_100423840(v2);
  v3 = *(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  if (v3 == 2)
  {
    if (v4)
    {
      [v4 setAlpha:0.0];
    }

    v5 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView;
    v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView);
    if (v6)
    {
      v7 = [v6 effect];
      if (!v7)
      {
        v8 = *(v0 + v5);
        if (!v8)
        {
          return;
        }

        v9 = objc_opt_self();
        v10 = v8;
        v12 = [v9 effectWithStyle:7];
        [v10 setEffect:v12];

        v7 = v12;
      }
    }
  }

  else
  {
    if (v3 == 1)
    {
      if (v4)
      {
        [v4 setAlpha:0.0];
      }
    }

    else if (v4)
    {
      [v4 setAlpha:1.0];
    }

    v11 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView);
    if (v11)
    {

      [v11 setEffect:0];
    }
  }
}

void sub_100422A60()
{
  v1 = v0;
  v2 = sub_10076361C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, &v1[v6], v2);
  v8 = sub_1007635FC();
  v9 = *(v3 + 8);
  v9(v5, v2);
  [v1 setOverrideUserInterfaceStyle:v8];
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
  if (v10)
  {
    v7(v5, &v1[v6], v2);
    v11 = v10;
    v12 = sub_1007635FC();
    v9(v5, v2);
    [v11 setOverrideUserInterfaceStyle:v12];
  }

  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView];
  if (v13)
  {
    v7(v5, &v1[v6], v2);
    v14 = v13;
    v15 = sub_1007635FC();
    v9(v5, v2);
    [v14 setOverrideUserInterfaceStyle:v15];
  }
}

void sub_100422D68()
{
  if ((v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_isCollapsing] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode];
    if (v1 >= 3)
    {
      v2 = v1;
      [v2 frame];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v11 = [v2 superview];
      [v0 convertRect:v11 fromView:{v4, v6, v8, v10}];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      [v0 bounds];
      Height = CGRectGetHeight(v60);
      v61.origin.x = v13;
      v61.origin.y = v15;
      v61.size.width = v17;
      v61.size.height = v19;
      MinY = CGRectGetMinY(v61);
      v22 = OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView;
      v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
      if (v23 && (v24 = Height - (Height - MinY), v25 = (v24 + -100.0) / Height, v26 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY, *&v23[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY] = v25, v27 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView, v28 = *&v23[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView], v29 = v23, v30 = [v28 layer], objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "startPoint"), v32 = v31, v30, v33 = *&v23[v26], v34 = objc_msgSend(*&v23[v27], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v32, v33), v34, v35 = objc_msgSend(*&v29[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v32, v33), v29, v35, (v36 = *&v0[v22]) != 0) && (v37 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY, *&v36[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY] = v25, v38 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView, v39 = *&v36[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView], v40 = v36, v41 = objc_msgSend(v39, "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "startPoint"), v43 = v42, v41, v44 = *&v36[v37], v45 = objc_msgSend(*&v36[v38], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v43, v44), v40, v45, (v46 = *&v0[v22]) != 0) && (v47 = (v24 + 30.0) / Height, v48 = v46, sub_10046CAB0(v47), v48, (v49 = *&v0[v22]) != 0))
      {
        v50 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY;
        *&v49[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY] = v47;
        v51 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
        v52 = *&v49[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView];
        v58 = v49;
        v53 = [v52 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() endPoint];
        v55 = v54;

        v56 = *&v49[v50];
        v57 = [*&v49[v51] layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v55, v56}];

        sub_100423840(v1);
      }

      else
      {

        sub_100423840(v1);
      }
    }
  }
}

void sub_100423244()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame:?];
  }

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_fullProtectionView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }

  sub_100422D68();
}

id sub_100423348(uint64_t a1, double a2, double a3)
{
  v29.receiver = v3;
  v29.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v29, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension42AppPromotionScrollableContentContainerView_protectionMode];
    if ((v8 - 1) >= 2)
    {
      if (v8)
      {
        v9 = v8;
        [v9 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [v9 superview];
        [v3 convertRect:v18 fromView:{v11, v13, v15, v17}];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v30.origin.x = v20;
        v30.origin.y = v22;
        v30.size.width = v24;
        v30.size.height = v26;
        MaxY = CGRectGetMaxY(v30);
        sub_100423840(v8);
        LOBYTE(v8) = MaxY < a3;
      }
    }

    else
    {
      LOBYTE(v8) = 1;
    }

    sub_100016F40(0, &qword_10094D040);
    if ((sub_100770EEC() & 1) != 0 && (v8 & 1) == 0)
    {

      return 0;
    }
  }

  return v7;
}

uint64_t type metadata accessor for AppPromotionScrollableContentContainerView()
{
  result = qword_100956F48;
  if (!qword_100956F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100423670()
{
  result = sub_10076361C();
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

uint64_t sub_100423720(uint64_t *a1)
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

uint64_t sub_100423750(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004237B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_100423808(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

void sub_100423840(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

id sub_100423854(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_100423868(void *a1, char *a2)
{
  if (a1 == 2)
  {
    if (a2 == 2)
    {
      return 1;
    }
  }

  else if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else if ((a2 - 1) >= 2)
  {
    if (a1)
    {
      if (a2)
      {
        sub_100016F40(0, &qword_1009441F0);
        sub_100423854(a2);
        sub_100423854(a1);
        v5 = sub_100770EEC();
        sub_100423840(a1);
        sub_100423840(a2);
        if (v5)
        {
          return 1;
        }
      }
    }

    else if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

double sub_10042395C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v365 = a4;
  v389 = type metadata accessor for ShelfHeaderLayout(0);
  __chkstk_darwin(v389);
  v374 = &v329 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v366 = &v329 - v9;
  v10 = sub_10076DA7C();
  v385 = *(v10 - 8);
  v386 = v10;
  __chkstk_darwin(v10);
  v330 = &v329 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D7FC();
  v345 = *(v12 - 8);
  v346 = v12;
  __chkstk_darwin(v12);
  v363 = &v329 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v332 = &v329 - v15;
  __chkstk_darwin(v16);
  v343 = &v329 - v17;
  __chkstk_darwin(v18);
  v344 = &v329 - v19;
  v342 = sub_10077164C();
  v340 = *(v342 - 8);
  __chkstk_darwin(v342);
  v339 = &v329 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v396 = sub_10076D39C();
  v384 = *(v396 - 8);
  __chkstk_darwin(v396);
  v341 = &v329 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v336 = &v329 - v23;
  v24 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v24 - 8);
  v371 = &v329 - v25;
  v26 = sub_10000A5D4(&unk_10095E850);
  __chkstk_darwin(v26 - 8);
  v370 = &v329 - v27;
  v28 = sub_10077111C();
  v372 = *(v28 - 8);
  v373 = v28;
  __chkstk_darwin(v28);
  v369 = &v329 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v368 = &v329 - v31;
  v32 = sub_10000A5D4(&unk_10094BB80);
  __chkstk_darwin(v32 - 8);
  v362 = &v329 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v377 = &v329 - v35;
  __chkstk_darwin(v36);
  v334 = &v329 - v37;
  __chkstk_darwin(v38);
  v376 = &v329 - v39;
  v383 = sub_10076034C();
  v394 = *(v383 - 8);
  __chkstk_darwin(v383);
  v360 = &v329 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10000A5D4(&unk_1009570F0);
  __chkstk_darwin(v41 - 8);
  v364 = &v329 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v331 = &v329 - v44;
  __chkstk_darwin(v45);
  v395 = &v329 - v46;
  v47 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v47 - 8);
  v338 = &v329 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v335 = &v329 - v50;
  __chkstk_darwin(v51);
  v387 = &v329 - v52;
  __chkstk_darwin(v53);
  v380 = (&v329 - v54);
  v55 = sub_10000A5D4(&qword_1009570E0);
  __chkstk_darwin(v55);
  v382 = &v329 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v381 = &v329 - v58;
  __chkstk_darwin(v59);
  v397 = &v329 - v60;
  __chkstk_darwin(v61);
  v391 = &v329 - v62;
  __chkstk_darwin(v63);
  v390 = &v329 - v64;
  __chkstk_darwin(v65);
  v67 = &v329 - v66;
  v68 = sub_10000A5D4(&qword_100944538);
  __chkstk_darwin(v68 - 8);
  v349 = &v329 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  *&v367 = &v329 - v71;
  __chkstk_darwin(v72);
  v74 = &v329 - v73;
  __chkstk_darwin(v75);
  v77 = &v329 - v76;
  v358 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v358);
  v392 = &v329 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v399 = &v329 - v80;
  v81 = sub_10076461C();
  v379 = sub_10076037C();
  sub_1007603AC();
  v355 = sub_1007602BC();
  v388 = v74;
  v393 = a1;
  sub_10076039C();
  v398 = a2;
  sub_10042E840();
  if (qword_1009404D0 != -1)
  {
    swift_once();
  }

  v82 = sub_10076D3DC();
  v83 = sub_10000A61C(v82, qword_100956F98);
  v84.super.isa = v81;
  v333 = v83;
  isa = sub_10076D3BC(v84).super.isa;
  [(objc_class *)isa pointSize];
  v87 = v86;
  v88 = objc_opt_self();
  v353 = isa;
  v354 = [v88 fontWithDescriptor:isa size:v87];
  [v354 lineHeight];
  v356 = v89;
  v90 = &v67[*(v55 + 48)];
  v91 = v67;
  v357 = v77;
  sub_100428694(v67, v90, v77);
  if (qword_1009404D8 != -1)
  {
    swift_once();
  }

  v92 = sub_10000A61C(v82, qword_100956FB0);
  v93.super.isa = v81;
  v361 = v92;
  v94 = sub_10076D3BC(v93).super.isa;
  [(objc_class *)v94 pointSize];
  v350 = v94;
  v351 = [v88 fontWithDescriptor:v94 size:?];
  [v351 lineHeight];
  v378 = v95;
  v359 = v55;
  sub_100428CF8(v390, &v390[*(v55 + 48)], v388);
  v400 = v81;
  v96 = [(objc_class *)v81 preferredContentSizeCategory];
  v97 = sub_10077085C();

  v375 = v82;
  if ((v97 & 1) == 0 || (v98 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v352 = v67;
    v99 = v88;
    v100 = *&v367;
    sub_100016E2C(v388, *&v367, &qword_100944538);
    v101 = sub_10076029C();
    v102 = *(v101 - 8);
    v98 = 7.0;
    if ((*(v102 + 48))(v100, 1, v101) != 1)
    {
      v103 = v349;
      sub_100016E2C(v100, v349, &qword_100944538);
      v104 = (*(v102 + 88))(v103, v101);
      if (v104 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v98 = 5.0;
        if (v104 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v102 + 8))(v103, v101);
          v98 = 7.0;
        }
      }
    }

    sub_10000CFBC(v100, &qword_100944538);
    v82 = v375;
    v88 = v99;
    v91 = v352;
  }

  v352 = *&v98;
  v367 = a3;
  if (qword_1009404E8 != -1)
  {
    swift_once();
  }

  v105 = sub_10000A61C(v82, qword_100956FE0);
  v106.super.isa = v400;
  v337 = v105;
  v107.super.isa = sub_10076D3BC(v106).super.isa;
  [(objc_class *)v107.super.isa pointSize];
  v108 = [v88 fontWithDescriptor:v107.super.isa size:?];
  [v108 lineHeight];
  v110 = v109;
  sub_1007704EC();
  v349 = v111;
  v113 = v112;
  v115 = v114;
  v117 = v116;
  sub_1007704EC();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  sub_100016E2C(v91, v391, &qword_1009570E0);
  sub_100016E2C(v91, v397, &qword_1009570E0);
  v126 = v388;
  if (v379)
  {
    sub_10076BEFC();
    v127 = v380;
    sub_10076D3AC();
    v128 = 0;
  }

  else
  {
    v128 = 1;
    v127 = v380;
  }

  v129 = v378 - v110;
  v130 = *(v384 + 56);
  v130(v127, v128, 1, v396);
  v131 = *&UIEdgeInsetsZero.top;
  v347 = *&UIEdgeInsetsZero.bottom;
  v348 = v131;
  v132 = v390;
  sub_100016E2C(v390, v381, &qword_1009570E0);
  sub_100016E2C(v132, v382, &qword_1009570E0);
  if (v355)
  {
    sub_10076BEFC();
    sub_10076D3AC();

    v133 = 0;
  }

  else
  {

    v133 = 1;
  }

  v134 = v357;

  sub_10000CFBC(v390, &qword_1009570E0);
  sub_10000CFBC(v91, &qword_1009570E0);
  sub_10000CFBC(v126, &qword_100944538);
  sub_10000CFBC(v134, &qword_100944538);
  v135 = v133;
  v136 = v396;
  v130(v387, v135, 1, v396);
  v137 = v358;
  v138 = *(v359 + 48);
  v139 = *(v358 + 40);
  v140 = v399;
  v130(&v399[v139], 1, 1, v136);
  v388 = v137[15];
  v130(&v140[v388], 1, 1, v136);
  *v140 = v349;
  *(v140 + 1) = v113;
  *(v140 + 2) = v115;
  *(v140 + 3) = v117;
  *(v140 + 4) = v356;
  *(v140 + 5) = v119;
  *(v140 + 6) = v121;
  *(v140 + 7) = v123;
  *(v140 + 8) = v125;
  v141 = v137[7];
  v142 = sub_10076D9AC();
  v143 = *(v142 - 8);
  v144 = *(v143 + 32);
  v357 = v141;
  v144(&v141[v140], v391, v142);
  v356 = v137[8];
  v390 = v138;
  v144(&v140[v356], &v138[v397], v142);
  *&v140[v137[9]] = 0x4008000000000000;
  v379 = v139;
  sub_10003837C(v380, &v140[v139], &unk_1009467E0);
  *&v140[v137[11]] = v378;
  v145 = &v140[v137[12]];
  v146 = v347;
  *v145 = v348;
  *(v145 + 1) = v146;
  v359 = v137[13];
  v147 = v381;
  v144(&v140[v359], v381, v142);
  *&v378 = v137[14];
  v148 = v382;
  v144(&v140[*&v378], &v138[v382], v142);
  sub_10003837C(v387, &v140[v388], &unk_1009467E0);
  *&v140[v137[16]] = v352;
  v149 = &v140[v137[17]];
  *v149 = v129;
  *(v149 + 2) = 0;
  *(v149 + 3) = 0;
  *(v149 + 1) = 0x4024000000000000;
  v150 = *(v143 + 8);
  v150(v148, v142);
  v151 = v390;
  v150(&v390[v147], v142);
  v150(v397, v142);
  v150(&v151[v391], v142);
  v380 = *(v385 + 56);
  v381 = v385 + 56;
  (v380)(v395, 1, 1, v386);
  v152 = v360;
  sub_10076035C();
  LOBYTE(v142) = sub_10076032C();
  v153 = *(v394 + 8);
  v154 = v383;
  v387 = v394 + 8;
  v382 = v153;
  v153(v152, v383);
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = v367;
  if (v142)
  {
    sub_10076E20C();
    v156 = sub_10076DDDC();
    swift_allocObject();
    v155 = sub_10076DDBC();
    v157 = &protocol witness table for LayoutViewPlaceholder;
  }

  v423[0] = v155;
  v423[1] = 0;
  v423[2] = 0;
  v423[3] = v156;
  v423[4] = v157;
  sub_1007603FC();
  v159 = v369;
  v160 = v377;
  if (!v161)
  {
    v390 = 0;
    v166 = v399;
    goto LABEL_40;
  }

  if (qword_1009404C8 != -1)
  {
    swift_once();
  }

  v162 = qword_100956F90;
  (*(v394 + 56))(v376, 1, 1, v154);
  v390 = v162;
  v163 = v162;
  v164 = sub_10076036C();
  if (v164)
  {
  }

  sub_1007710CC();
  sub_100770FCC();
  sub_100770FEC();
  v165 = v334;
  sub_100016E2C(v376, v334, &unk_10094BB80);
  if ((*(v394 + 48))(v165, 1, v154) == 1)
  {
    sub_10000CFBC(v165, &unk_10094BB80);
LABEL_31:
    if (qword_1009404F0 != -1)
    {
      swift_once();
    }

    v168 = qword_100956FF8;
    goto LABEL_34;
  }

  v167 = sub_1007602EC();
  (v382)(v165, v154);
  if (!v167)
  {
    goto LABEL_31;
  }

LABEL_34:
  v169 = v164 != 0;
  v170 = v368;
  sub_10077104C();
  sub_100016F40(0, &qword_100942F00);
  v171 = sub_100770B3C();
  *(swift_allocObject() + 16) = v171;
  v172 = v171;
  v173 = v370;
  sub_10076E8AC();
  v174 = sub_10076E89C();
  (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
  sub_10077106C();
  v175 = v371;
  v176 = v372;
  v177 = v373;
  (*(v372 + 16))(v371, v170, v373);
  (*(v176 + 56))(v175, 0, 1, v177);
  sub_10077114C();
  [v163 setUserInteractionEnabled:v169];
  [v163 _setWantsAccessibilityUnderline:v169];

  (*(v176 + 8))(v170, v177);
  sub_10000CFBC(v376, &unk_10094BB80);
  v178 = sub_1007603FC();
  v180 = v179;
  v181 = sub_10076461C();
  if (sub_1007603CC())
  {
    v160 = v377;
    if (qword_100940490 != -1)
    {
      swift_once();
    }

    v182 = [qword_100956F58 configurationWithTraitCollection:v181];
    v183 = sub_10076044C();
  }

  else
  {
    v183 = 0;
    v160 = v377;
  }

  v184 = sub_10042F1BC(v178, v180, v181, v183);

  [v163 setAttributedTitle:v184 forState:0];

  v166 = v399;
  v154 = v383;
LABEL_40:
  if (sub_10076037C())
  {

    v185 = v335;
    sub_100016E2C(v166 + v379, v335, &unk_1009467E0);
    v186 = v384;
    v187 = v396;
    if ((*(v384 + 48))(v185, 1, v396) == 1)
    {
      sub_10000CFBC(v185, &unk_1009467E0);
      v397 = 0;
    }

    else
    {
      (*(v186 + 32))(v336, v185, v187);
      v188 = v339;
      sub_10076D17C();
      sub_10076D97C();
      v189 = *(v340 + 8);
      v190 = v342;
      v189(v188, v342);
      sub_10076D17C();
      sub_10076D97C();
      v191 = v188;
      v159 = v369;
      v192 = v190;
      v160 = v377;
      v189(v191, v192);
      v193 = v336;
      sub_10076D31C();
      sub_10076DDDC();
      swift_allocObject();
      v397 = sub_10076DDBC();
      (*(v186 + 8))(v193, v187);
    }

    v154 = v383;
  }

  else
  {
    v397 = 0;
  }

  v194 = sub_1007602AC();
  if (v194)
  {
  }

  v195 = v160;
  if (qword_1009404C0 != -1)
  {
    swift_once();
  }

  v196 = qword_100956F88;
  v197 = sub_1007603DC();
  v199 = v198;
  v200 = sub_10076461C();
  v201 = sub_10042F4DC(v197, v199, v200, v194 != 0);

  v391 = v196;
  [v196 setAttributedTitle:v201 forState:0];

  v202 = v394;
  v203 = v195;
  (*(v394 + 56))(v195, 1, 1, v154);
  sub_1007710CC();
  sub_100770FCC();
  sub_100770FEC();
  v204 = v362;
  sub_100016E2C(v195, v362, &unk_10094BB80);
  if ((*(v202 + 48))(v204, 1, v154) == 1)
  {
    sub_10000CFBC(v204, &unk_10094BB80);
  }

  else
  {
    v205 = sub_1007602CC();
    (v382)(v204, v154);
    if (v205)
    {
      goto LABEL_56;
    }
  }

  if (qword_1009404F8 != -1)
  {
    swift_once();
  }

  v206 = qword_100957000;
LABEL_56:
  v207 = v194 != 0;
  sub_10077104C();
  v208 = [objc_opt_self() clearColor];
  v209 = sub_100770F5C();
  sub_10076E46C();
  v209(&v420, 0);
  v210 = sub_100770F5C();
  sub_10076E44C();
  v210(&v420, 0);
  v211 = sub_100016F40(0, &qword_100942F00);
  v212 = sub_100770B3C();
  *(swift_allocObject() + 16) = v212;
  v213 = v212;
  v214 = v370;
  sub_10076E8AC();
  v215 = sub_10076E89C();
  (*(*(v215 - 8) + 56))(v214, 0, 1, v215);
  sub_10077106C();
  v216 = v371;
  v217 = v372;
  v218 = v373;
  (*(v372 + 16))(v371, v159, v373);
  (*(v217 + 56))(v216, 0, 1, v218);
  v219 = v391;
  sub_10077114C();
  [v219 setNeedsUpdateConfiguration];
  [v219 setContentHorizontalAlignment:4];
  [v219 setUserInteractionEnabled:v207];
  [v219 _setWantsAccessibilityUnderline:v207];

  (*(v217 + 8))(v159, v218);
  sub_10000CFBC(v203, &unk_10094BB80);
  if (sub_1007602BC())
  {

    v220 = v338;
    sub_100016E2C(&v399[v388], v338, &unk_1009467E0);
    v221 = v384;
    v222 = v396;
    v223 = (*(v384 + 48))(v220, 1, v396);
    v224 = v363;
    if (v223 == 1)
    {
      sub_10000CFBC(v220, &unk_1009467E0);
      v225 = 0;
    }

    else
    {
      (*(v221 + 32))(v341, v220, v222);
      v226 = v339;
      sub_10076D17C();
      sub_10076D97C();
      v394 = v211;
      v227 = *(v340 + 8);
      v228 = v342;
      v227(v226, v342);
      sub_10076D17C();
      sub_10076D97C();
      v227(v226, v228);
      v229 = v341;
      sub_10076D31C();
      sub_10076DDDC();
      swift_allocObject();
      v225 = sub_10076DDBC();
      (*(v221 + 8))(v229, v396);
    }
  }

  else
  {
    v225 = 0;
    v224 = v363;
  }

  v230 = v374;
  v231 = sub_10076040C();
  v233 = v375;
  v396 = v225;
  if (v232)
  {
    v234 = HIBYTE(v232) & 0xF;
    if ((v232 & 0x2000000000000000) == 0)
    {
      v234 = v231 & 0xFFFFFFFFFFFFLL;
    }

    if (v234)
    {
      v388 = v231;
      v394 = v232;
      sub_10076D7EC();
      if (qword_1009404E0 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v233, qword_100956FC8);
      v235 = sub_10076461C();
      v236 = sub_100770B3C();

      v237 = v332;
      sub_10076D7DC();

      v238 = v224;
      v239 = v345;
      v240 = v346;
      v241 = *(v345 + 8);
      v241(v238, v346);
      v242 = v343;
      sub_10076D7AC();
      v241(v237, v240);
      v243 = v344;
      sub_10076D79C();
      v241(v242, v240);
      (*(v239 + 16))(v242, v243, v240);
      sub_10076DA5C();
      v244 = v331;
      sub_10076DA8C();
      v241(v243, v240);
      v245 = v395;
      sub_10000CFBC(v395, &unk_1009570F0);
      (v380)(v244, 0, 1, v386);
      sub_100023AD0(v244, v245, &unk_1009570F0);
      v230 = v374;
      v225 = v396;
    }

    else
    {
    }
  }

  v246 = sub_10076038C();
  v247 = sub_10042F6B8(v246);
  if (v249 == -1)
  {
    v419 = 0;
    v417 = 0u;
    v418 = 0u;
    v261 = v386;
  }

  else
  {
    v250 = v247;
    v251 = v248;
    if (v249)
    {
      v252 = v249;
      v253 = sub_10076461C();
      v254 = sub_100770B3C();
      v255 = [objc_opt_self() configurationWithFont:v254 scale:2];
      v256 = sub_10076FF6C();
      sub_10042F7C0(v250, v251, v252);
      v257 = [objc_opt_self() _systemImageNamed:v256 withConfiguration:v255];

      if (v257)
      {
        v258 = v257;
        [v258 size];
        v259 = sub_10076DDDC();
        swift_allocObject();
        v260 = sub_10076DDBC();
        *(&v418 + 1) = v259;
        v419 = &protocol witness table for LayoutViewPlaceholder;

        *&v417 = v260;
      }

      else
      {
        v419 = 0;
        v417 = 0u;
        v418 = 0u;
      }

      v230 = v374;
      v261 = v386;
    }

    else
    {
      v262 = v343;
      sub_10076D7EC();
      v263 = sub_10076461C();
      v264 = sub_100770B3C();

      sub_10076D7DC();
      (*(v345 + 8))(v262, v346);
      sub_10076DA5C();
      v265 = v330;
      sub_10076DA8C();
      sub_10076DA4C();
      v261 = v386;
      (*(v385 + 8))(v265, v386);
      v266 = *(&v421 + 1);
      v267 = v422;
      v268 = sub_10000CF78(&v420, *(&v421 + 1));
      *(&v418 + 1) = v266;
      v419 = v267[1];
      v269 = sub_10000DB7C(&v417);
      (*(*(v266 - 8) + 16))(v269, v268, v266);
      sub_10000CD74(&v420);
    }

    v225 = v396;
  }

  v420 = v417;
  v421 = v418;
  v422 = v419;
  sub_10042FA9C(v399, v392);
  sub_100016E2C(v423, &v417, &unk_10094DA00);
  if (v390)
  {
    v270 = v390;
    if (([v270 isHidden] & 1) == 0 && objc_msgSend(v270, "hasContent"))
    {
      v271 = sub_10076313C();
      v416 = &protocol witness table for UIButton;
      *(&v415 + 1) = v271;
      *&v414 = v270;
      goto LABEL_84;
    }
  }

  v416 = 0;
  v414 = 0u;
  v415 = 0u;
LABEL_84:
  v272 = v385;
  v273 = v397;
  if (v397)
  {
    v274 = sub_10076DDDC();
    v273 = &protocol witness table for LayoutViewPlaceholder;
    v275 = v397;
  }

  else
  {
    v275 = 0;
    v274 = 0;
    v413[2] = 0;
    v413[1] = 0;
  }

  v413[0] = v275;
  v413[3] = v274;
  v413[4] = v273;
  v276 = sub_10076313C();
  v412[4] = &protocol witness table for UIButton;
  v412[3] = v276;
  v412[0] = v391;
  if (v225)
  {
    v277 = sub_10076DDDC();
    v278 = &protocol witness table for LayoutViewPlaceholder;
    v279 = v225;
  }

  else
  {
    v279 = 0;
    v277 = 0;
    v278 = 0;
    v411[2] = 0;
    v411[1] = 0;
  }

  v280 = v364;
  v411[0] = v279;
  v411[3] = v277;
  v411[4] = v278;
  sub_100016E2C(v395, v364, &unk_1009570F0);
  if ((*(v272 + 48))(v280, 1, v261) == 1)
  {

    v281 = v391;
    sub_10000CFBC(v280, &unk_1009570F0);
    v408 = 0u;
    v409 = 0u;
    v410 = 0;
  }

  else
  {
    *(&v409 + 1) = v261;
    v410 = &protocol witness table for LabelPlaceholder;
    v282 = sub_10000DB7C(&v408);
    (*(v272 + 32))(v282, v280, v261);

    v283 = v391;
  }

  sub_100016E2C(&v420, v407, &unk_10094DA00);
  sub_10042FA9C(v392, v230);
  sub_100016E2C(&v417, v401, &unk_10094DA00);
  v284 = v402;
  if (v402)
  {
    v285 = v403;
    sub_10000CF78(v401, v402);
    v286 = sub_1007711AC();
    v287 = *(v286 - 8);
    __chkstk_darwin(v286);
    v289 = &v329 - v288;
    sub_10076D21C();
    v290 = *(v284 - 8);
    if ((*(v290 + 48))(v289, 1, v284) == 1)
    {
      (*(v287 + 8))(v289, v286);
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
    }

    else
    {
      *(&v405 + 1) = v284;
      v406 = v285;
      v292 = sub_10000DB7C(&v404);
      (*(v290 + 32))(v292, v289, v284);
    }

    v291 = v389;
    sub_10000CD74(v401);
  }

  else
  {
    sub_10000CFBC(v401, &unk_10094DA00);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
    v291 = v389;
  }

  v293 = v230 + v291[5];
  v294 = v405;
  *v293 = v404;
  *(v293 + 16) = v294;
  *(v293 + 32) = v406;
  sub_100016E2C(&v414, v230 + v291[6], &unk_10094B230);
  sub_100016E2C(v413, v401, &unk_10094DA00);
  v295 = v402;
  if (v402)
  {
    v296 = v403;
    sub_10000CF78(v401, v402);
    v297 = sub_1007711AC();
    v298 = *(v297 - 8);
    __chkstk_darwin(v297);
    v300 = &v329 - v299;
    sub_10076D21C();
    v301 = *(v295 - 8);
    if ((*(v301 + 48))(v300, 1, v295) == 1)
    {
      (*(v298 + 8))(v300, v297);
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
    }

    else
    {
      *(&v405 + 1) = v295;
      v406 = v296;
      v302 = sub_10000DB7C(&v404);
      (*(v301 + 32))(v302, v300, v295);
    }

    sub_10000CD74(v401);
    v291 = v389;
  }

  else
  {
    sub_10000CFBC(v401, &unk_10094DA00);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
  }

  v303 = v230 + v291[7];
  v304 = v405;
  *v303 = v404;
  *(v303 + 16) = v304;
  *(v303 + 32) = v406;
  sub_10000A570(v412, v230 + v291[8]);
  sub_100016E2C(v411, v401, &unk_10094DA00);
  v305 = v402;
  if (v402)
  {
    v306 = v403;
    sub_10000CF78(v401, v402);
    v307 = sub_1007711AC();
    v308 = *(v307 - 8);
    __chkstk_darwin(v307);
    v310 = &v329 - v309;
    sub_10076D21C();
    v311 = *(v305 - 8);
    if ((*(v311 + 48))(v310, 1, v305) == 1)
    {
      (*(v308 + 8))(v310, v307);
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
    }

    else
    {
      *(&v405 + 1) = v305;
      v406 = v306;
      v312 = sub_10000DB7C(&v404);
      (*(v311 + 32))(v312, v310, v305);
    }

    sub_10000CD74(v401);
    v291 = v389;
  }

  else
  {
    sub_10000CFBC(v401, &unk_10094DA00);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
  }

  v313 = v230 + v291[9];
  v314 = v405;
  *v313 = v404;
  *(v313 + 16) = v314;
  *(v313 + 32) = v406;
  sub_100016E2C(&v408, v230 + v291[10], &unk_10094B230);
  sub_100016E2C(v407, v401, &unk_10094DA00);
  v315 = v402;
  if (v402)
  {
    v316 = v230;
    v317 = v403;
    sub_10000CF78(v401, v402);
    v318 = sub_1007711AC();
    v319 = *(v318 - 8);
    __chkstk_darwin(v318);
    v321 = &v329 - v320;
    sub_10076D21C();
    v322 = *(v315 - 8);
    if ((*(v322 + 48))(v321, 1, v315) == 1)
    {
      sub_10000CFBC(v407, &unk_10094DA00);
      sub_10000CFBC(&v417, &unk_10094DA00);
      sub_10042FB00(v392, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10000CFBC(&v408, &unk_10094B230);
      sub_10000CFBC(v411, &unk_10094DA00);
      sub_10000CD74(v412);
      sub_10000CFBC(v413, &unk_10094DA00);
      sub_10000CFBC(&v414, &unk_10094B230);
      (*(v319 + 8))(v321, v318);
      v406 = 0;
      v404 = 0u;
      v405 = 0u;
    }

    else
    {
      *(&v405 + 1) = v315;
      v406 = v317;
      v323 = sub_10000DB7C(&v404);
      (*(v322 + 32))(v323, v321, v315);
      sub_10000CFBC(v407, &unk_10094DA00);
      sub_10000CFBC(&v417, &unk_10094DA00);
      sub_10042FB00(v392, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10000CFBC(&v408, &unk_10094B230);
      sub_10000CFBC(v411, &unk_10094DA00);
      sub_10000CD74(v412);
      sub_10000CFBC(v413, &unk_10094DA00);
      sub_10000CFBC(&v414, &unk_10094B230);
    }

    sub_10000CD74(v401);
    v291 = v389;
    v230 = v316;
  }

  else
  {
    sub_10000CFBC(v407, &unk_10094DA00);
    sub_10000CFBC(&v417, &unk_10094DA00);
    sub_10042FB00(v392, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10000CFBC(&v408, &unk_10094B230);
    sub_10000CFBC(v411, &unk_10094DA00);
    sub_10000CD74(v412);
    sub_10000CFBC(v413, &unk_10094DA00);
    sub_10000CFBC(&v414, &unk_10094B230);
    sub_10000CFBC(v401, &unk_10094DA00);
    v404 = 0u;
    v405 = 0u;
    v406 = 0;
  }

  v324 = v230 + v291[11];
  v325 = v405;
  *v324 = v404;
  *(v324 + 16) = v325;
  *(v324 + 32) = v406;
  v326 = v366;
  sub_100430314(v230, v366, type metadata accessor for ShelfHeaderLayout);
  v327 = sub_10076461C();
  ShelfHeaderLayout.measure(toFit:with:)(v327);

  sub_10042FB00(v326, type metadata accessor for ShelfHeaderLayout);
  sub_10000CFBC(&v420, &unk_10094DA00);
  sub_10000CFBC(v423, &unk_10094DA00);
  sub_10000CFBC(v395, &unk_1009570F0);
  sub_10042FB00(v399, type metadata accessor for ShelfHeaderLayout.Metrics);
  return v158;
}

uint64_t sub_1004267C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v216 = a5;
  v229 = *&a3;
  v230 = a2;
  ObjectType = swift_getObjectType();
  v224 = sub_10076F9AC();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v222 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v220 = &v202 - v11;
  __chkstk_darwin(v12);
  v221 = &v202 - v13;
  v219 = sub_10000A5D4(&unk_100946720);
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v217 = &v202 - v14;
  v15 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v15 - 8);
  v238 = &v202 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v234 = &v202 - v18;
  v233 = sub_10000A5D4(&qword_1009570E0);
  __chkstk_darwin(v233);
  v237 = &v202 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v236 = &v202 - v21;
  __chkstk_darwin(v22);
  v235 = &v202 - v23;
  __chkstk_darwin(v24);
  v243 = &v202 - v25;
  __chkstk_darwin(v26);
  v242 = &v202 - v27;
  __chkstk_darwin(v28);
  v241 = &v202 - v29;
  v211 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v211);
  v212 = &v202 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000A5D4(&unk_10094BB80);
  __chkstk_darwin(v31 - 8);
  v209 = &v202 - v32;
  v228 = sub_10076469C();
  v33 = *(v228 - 1);
  __chkstk_darwin(v228);
  v225 = v34;
  v226 = &v202 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000A5D4(&qword_100944538);
  __chkstk_darwin(v35 - 8);
  *&v203 = &v202 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v204 = &v202 - v38;
  __chkstk_darwin(v39);
  v232 = &v202 - v40;
  __chkstk_darwin(v41);
  v231 = &v202 - v42;
  __chkstk_darwin(v43);
  v45 = &v202 - v44;
  v46 = sub_10076037C();
  sub_1007603AC();
  sub_10042D190(v46, v45, &OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork, &OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkView, &OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkType);

  sub_10000CFBC(v45, &qword_100944538);
  v239 = *&v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton];
  v47 = sub_1007603FC();
  v49 = v48;
  v240 = a4;
  v50 = sub_10076461C();
  v51 = sub_1007603CC();
  v227 = a1;
  if (v51)
  {
    if (qword_100940490 != -1)
    {
      swift_once();
    }

    v52 = [qword_100956F58 configurationWithTraitCollection:v50];
    v53 = sub_10076044C();
  }

  else
  {
    v53 = 0;
  }

  v54 = sub_10042F1BC(v47, v49, v50, v53);

  [v239 setAttributedTitle:v54 forState:0];

  v55 = sub_1007602BC();
  sub_10076039C();
  sub_10042D190(v55, v45, &OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtwork, &OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkView, &OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkType);

  sub_10000CFBC(v45, &qword_100944538);
  v56 = *&v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton];
  v57 = sub_1007603DC();
  v59 = v58;
  v60 = v240;
  v61 = sub_10076461C();
  v62 = sub_1007602AC();
  if (v62)
  {
  }

  v63 = sub_10042F4DC(v57, v59, v61, v62 != 0);

  v214 = v56;
  [v56 setAttributedTitle:v63 forState:0];

  v64 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_subtitleLabel];
  sub_10076040C();
  if (v65)
  {
    v66 = sub_10076FF6C();
  }

  else
  {
    v66 = 0;
  }

  v215 = v64;
  [v64 setText:v66];

  v67 = sub_10076038C();
  v68 = sub_10042F6B8(v67);
  if (v70 == -1)
  {
    v82 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton];
    [v82 setTitle:0 forState:0];
    v213 = v82;
    [v82 setImage:0 forState:0];
  }

  else
  {
    v71 = v70;
    v72 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton];
    v213 = v72;
    if (v70)
    {
      v73 = v68;
      v74 = v69;
      [v72 setTitle:0 forState:0];
      v75 = v72;
      v76 = sub_10076461C();
      sub_100016F40(0, &qword_100942F00);
      if (qword_1009404E8 != -1)
      {
        swift_once();
      }

      v77 = sub_10076D3DC();
      sub_10000A61C(v77, qword_100956FE0);
      v78 = sub_100770B3C();
      v79 = [objc_opt_self() configurationWithFont:v78 scale:2];
      v80 = sub_10076FF6C();
      sub_10042F7C0(v73, v74, v71);
      v81 = [objc_opt_self() _systemImageNamed:v80 withConfiguration:v79];

      [v75 setImage:v81 forState:0];
      v60 = v240;
    }

    else
    {
      v83 = v72;
      v84 = v68;
      v85 = v69;
      v86 = sub_10076FF6C();
      sub_10042F7C0(v84, v85, v71);
      [v83 setTitle:v86 forState:0];

      [v83 setImage:0 forState:0];
    }
  }

  v87 = sub_1007602AC();
  if (v87)
  {
    v88 = swift_allocObject();
    *(v88 + 24) = v229;
    swift_unknownObjectWeakInit();
    v89 = v226;
    v90 = v228;
    (*(v33 + 16))(v226, v60, v228);
    v91 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v92 = swift_allocObject();
    *(v92 + 16) = v88;
    (*(v33 + 32))(v92 + v91, v89, v90);

    v87 = swift_allocObject();
    *(v87 + 16) = sub_10042FA2C;
    *(v87 + 24) = v92;
    v93 = sub_10043045C;
  }

  else
  {
    v93 = 0;
  }

  v94 = &v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
  v95 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
  *v94 = v93;
  v94[1] = v87;
  sub_1000167E0(v95);
  v96 = sub_10076038C();
  if (v96)
  {
    v97 = swift_allocObject();
    *(v97 + 24) = v229;
    swift_unknownObjectWeakInit();
    v98 = v226;
    v99 = v228;
    (*(v33 + 16))(v226, v60, v228);
    v100 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v101 = swift_allocObject();
    *(v101 + 16) = v97;
    (*(v33 + 32))(v101 + v100, v98, v99);

    v96 = swift_allocObject();
    *(v96 + 16) = sub_10042F99C;
    *(v96 + 24) = v101;
    v102 = sub_10043045C;
  }

  else
  {
    v102 = 0;
  }

  v103 = &v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction];
  v104 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction];
  *v103 = v102;
  v103[1] = v96;
  sub_1000167E0(v104);
  v105 = sub_10076036C();
  if (v105)
  {
    v106 = swift_allocObject();
    *(v106 + 24) = v229;
    swift_unknownObjectWeakInit();
    v107 = v226;
    v108 = v228;
    (*(v33 + 16))(v226, v60, v228);
    v109 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v110 = swift_allocObject();
    *(v110 + 16) = v106;
    (*(v33 + 32))(v110 + v109, v107, v108);

    v105 = swift_allocObject();
    *(v105 + 16) = sub_10042F94C;
    *(v105 + 24) = v110;
    v111 = sub_100098284;
  }

  else
  {
    v111 = 0;
  }

  v112 = &v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction];
  v113 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction];
  *v112 = v111;
  v112[1] = v105;
  sub_1000167E0(v113);
  v114 = v209;
  sub_10076035C();
  v115 = sub_10076034C();
  (*(*(v115 - 8) + 56))(v114, 0, 1, v115);
  v116 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_10042F7E0(v114, &v6[v116]);
  swift_endAccess();
  sub_10042AFC4();
  sub_10000CFBC(v114, &unk_10094BB80);
  v117 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork];
  v118 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  v119 = v231;
  sub_100016E2C(&v6[v118], v231, &qword_100944538);
  v120 = *&v6[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtwork];
  v121 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkType;
  swift_beginAccess();
  v122 = v232;
  sub_100016E2C(&v6[v121], v232, &qword_100944538);
  v225 = v120;

  v230 = v117;

  sub_10042E840();
  v226 = v6;
  v123 = [v6 traitCollection];
  if (qword_1009404D0 != -1)
  {
    swift_once();
  }

  v124 = sub_10076D3DC();
  sub_10000A61C(v124, qword_100956F98);
  v125.super.isa = v123;
  isa = sub_10076D3BC(v125).super.isa;
  [(objc_class *)isa pointSize];
  v128 = v127;
  v129 = objc_opt_self();
  v207 = isa;
  v208 = [v129 fontWithDescriptor:isa size:v128];
  [v208 lineHeight];
  v209 = v130;
  v131 = v233;
  sub_100428694(v241, v241 + *(v233 + 48), v119);
  if (qword_1009404D8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v124, qword_100956FB0);
  v132.super.isa = v123;
  v133 = sub_10076D3BC(v132).super.isa;
  [(objc_class *)v133 pointSize];
  v205 = v133;
  v206 = [v129 fontWithDescriptor:v133 size:?];
  [v206 lineHeight];
  v229 = v134;
  sub_100428CF8(v242, v242 + *(v131 + 48), v122);
  v228 = v123;
  v135 = [(objc_class *)v123 preferredContentSizeCategory];
  v136 = sub_10077085C();

  if ((v136 & 1) == 0 || (v137 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v138 = v204;
    sub_100016E2C(v122, v204, &qword_100944538);
    v139 = sub_10076029C();
    v140 = *(v139 - 8);
    v137 = 7.0;
    if ((*(v140 + 48))(v138, 1, v139) != 1)
    {
      v141 = v203;
      sub_100016E2C(v138, v203, &qword_100944538);
      v142 = (*(v140 + 88))(v141, v139);
      if (v142 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v137 = 5.0;
        if (v142 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v140 + 8))(v141, v139);
          v137 = 7.0;
        }
      }
    }

    sub_10000CFBC(v138, &qword_100944538);
  }

  ObjectType = *&v137;
  if (qword_1009404E8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v124, qword_100956FE0);
  v143.super.isa = v228;
  v144.super.isa = sub_10076D3BC(v143).super.isa;
  [(objc_class *)v144.super.isa pointSize];
  v145 = [v129 fontWithDescriptor:v144.super.isa size:?];
  [v145 lineHeight];
  v147 = v146;
  sub_1007704EC();
  v204 = v148;
  v150 = v149;
  v152 = v151;
  v154 = v153;
  sub_1007704EC();
  v156 = v155;
  v158 = v157;
  v160 = v159;
  v162 = v161;
  v163 = v241;
  sub_100016E2C(v241, v243, &qword_1009570E0);
  sub_100016E2C(v163, v235, &qword_1009570E0);
  if (v230)
  {
    sub_10076BEFC();
    v164 = v234;
    sub_10076D3AC();
    v165 = 0;
  }

  else
  {
    v165 = 1;
    v164 = v234;
  }

  v166 = v229 - v147;
  v167 = sub_10076D39C();
  v168 = *(*(v167 - 8) + 56);
  v168(v164, v165, 1, v167);
  v169 = *&UIEdgeInsetsZero.top;
  v202 = *&UIEdgeInsetsZero.bottom;
  v203 = v169;
  v170 = v242;
  sub_100016E2C(v242, v236, &qword_1009570E0);
  sub_100016E2C(v170, v237, &qword_1009570E0);
  if (v225)
  {
    sub_10076BEFC();
    v171 = v238;
    sub_10076D3AC();

    v172 = 0;
  }

  else
  {

    v172 = 1;
    v171 = v238;
  }

  v173 = v231;

  sub_10000CFBC(v242, &qword_1009570E0);
  sub_10000CFBC(v241, &qword_1009570E0);
  sub_10000CFBC(v232, &qword_100944538);
  sub_10000CFBC(v173, &qword_100944538);
  v168(v171, v172, 1, v167);
  v174 = *(v233 + 48);
  v175 = v211;
  v176 = *(v211 + 40);
  v177 = v212;
  v168(&v212[v176], 1, 1, v167);
  v242 = v175[15];
  v168(&v177[v242], 1, 1, v167);
  *v177 = v204;
  *(v177 + 1) = v150;
  *(v177 + 2) = v152;
  *(v177 + 3) = v154;
  *(v177 + 4) = v209;
  *(v177 + 5) = v156;
  *(v177 + 6) = v158;
  *(v177 + 7) = v160;
  *(v177 + 8) = v162;
  v178 = v175[7];
  v179 = sub_10076D9AC();
  v180 = *(v179 - 8);
  v181 = *(v180 + 32);
  v181(&v177[v178], v243, v179);
  v182 = v235;
  v181(&v177[v175[8]], v235 + v174, v179);
  *&v177[v175[9]] = 0x4008000000000000;
  sub_10003837C(v234, &v177[v176], &unk_1009467E0);
  *&v177[v175[11]] = v229;
  v183 = &v177[v175[12]];
  v184 = v202;
  *v183 = v203;
  *(v183 + 1) = v184;
  v185 = v236;
  v181(&v177[v175[13]], v236, v179);
  v186 = v237;
  v181(&v177[v175[14]], v237 + v174, v179);
  sub_10003837C(v238, &v177[v242], &unk_1009467E0);
  *&v177[v175[16]] = ObjectType;
  v187 = &v177[v175[17]];
  *v187 = v166;
  *(v187 + 2) = 0;
  *(v187 + 3) = 0;
  *(v187 + 1) = 0x4024000000000000;
  v188 = *(v180 + 8);
  v188(v186, v179);
  v188(v185 + v174, v179);
  v188(v182, v179);
  v188(v243 + v174, v179);
  v189 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_metrics;
  v190 = v226;
  swift_beginAccess();
  sub_10042F850(v177, &v190[v189]);
  swift_endAccess();
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  sub_10042D630();

  if (sub_1007602AC())
  {

    v191 = sub_10076036C();
    v192 = v220;
    if (v191 || sub_10076038C())
    {

      v193 = 0;
    }

    else
    {
      v193 = 1;
    }
  }

  else
  {
    v193 = 0;
    v192 = v220;
  }

  v190[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView] = v193;
  [*&v190[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_containerView] setUserInteractionEnabled:v193 ^ 1u];
  v194 = v217;
  sub_10076468C();
  swift_getKeyPath();
  v195 = v219;
  sub_10076F49C();

  (*(v218 + 8))(v194, v195);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_10008C3EC(&v248, v244 + 16);
  sub_10076F97C();
  sub_10000CFBC(&v246, &unk_1009434C0);
  sub_10000CFBC(&v244, &unk_1009434C0);
  v196 = sub_1007602AC();
  if (v196)
  {
  }

  *(&v247 + 1) = &type metadata for Bool;
  LOBYTE(v246) = v196 != 0;
  v197 = v221;
  sub_10076F98C();
  v198 = *(v223 + 8);
  v199 = v224;
  v198(v192, v224);
  sub_10000CFBC(&v246, &unk_1009434C0);
  sub_100770B9C();
  v198(v197, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_10008C3EC(&v248, v244 + 16);
  v200 = v222;
  sub_10076F97C();
  sub_10000CFBC(&v246, &unk_1009434C0);
  sub_10000CFBC(&v244, &unk_1009434C0);
  sub_100770B9C();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_10008C3EC(&v248, v244 + 16);
  sub_10076F97C();
  sub_10000CFBC(&v246, &unk_1009434C0);
  sub_10000CFBC(&v244, &unk_1009434C0);
  sub_100770B9C();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_10008C3EC(&v248, v244 + 16);
  sub_10076F97C();
  sub_10000CFBC(&v246, &unk_1009434C0);
  sub_10000CFBC(&v244, &unk_1009434C0);
  sub_100770B9C();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_10008C3EC(&v248, v244 + 16);
  sub_10076F97C();
  sub_10000CFBC(&v246, &unk_1009434C0);
  sub_10000CFBC(&v244, &unk_1009434C0);
  sub_100770B9C();
  v198(v200, v199);
  v247 = 0u;
  v246 = 0u;
  v245 = &type metadata for AnyHashable;
  v244 = swift_allocObject();
  sub_10008C3EC(&v248, v244 + 16);
  sub_10076F97C();
  sub_10000CFBC(&v246, &unk_1009434C0);
  sub_10000CFBC(&v244, &unk_1009434C0);
  sub_100770B9C();
  v198(v200, v199);
  [v190 setNeedsLayout];
  return sub_100016C74(&v248);
}

uint64_t sub_100428694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076D1AC();
  v52 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_100944538);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_10000A5D4(&qword_1009570E0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  sub_100016E2C(a3, v13, &qword_100944538);
  v17 = sub_10076029C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v55 = v13;
  v20 = v19(v13, 1, v17);
  v53 = a1;
  v54 = a2;
  if (v20 != 1)
  {
    sub_100016E2C(v55, v10, &qword_100944538);
    if ((*(v18 + 88))(v10, v17) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v21 = v14;
      v50 = *(v14 + 48);
      if (qword_1009404D0 != -1)
      {
        swift_once();
      }

      v22 = sub_10076D3DC();
      v48 = sub_10000A61C(v22, qword_100956F98);
      v23 = *(v22 - 8);
      v47 = *(v23 + 16);
      v49 = v23 + 16;
      v24 = v51;
      v47(v51, v48, v22);
      LODWORD(v46) = enum case for FontSource.useCase(_:);
      v25 = v52;
      v45 = *(v52 + 104);
      v45(v24);
      v57 = v6;
      v58 = &protocol witness table for FontSource;
      v26 = sub_10000DB7C(v56);
      v27 = *(v25 + 16);
      v27(v26, v24, v6);
      sub_10076D9BC();
      v28 = *(v25 + 8);
      v28(v24, v6);
      v47(v24, v48, v22);
      (v45)(v24, v46, v6);
      v57 = v6;
      v58 = &protocol witness table for FontSource;
      v29 = sub_10000DB7C(v56);
      v27(v29, v24, v6);
      sub_10076D9BC();
      v28(v24, v6);
      v31 = v53;
      v30 = v54;
      goto LABEL_10;
    }

    (*(v18 + 8))(v10, v17);
  }

  v49 = *(v14 + 48);
  v50 = v14;
  if (qword_1009404D0 != -1)
  {
    swift_once();
  }

  v32 = sub_10076D3DC();
  v47 = sub_10000A61C(v32, qword_100956F98);
  v33 = *(v32 - 8);
  v46 = *(v33 + 16);
  v48 = v33 + 16;
  v34 = v51;
  v46(v51, v47, v32);
  v35 = enum case for FontSource.useCase(_:);
  v36 = v52;
  v45 = *(v52 + 104);
  (v45)(v34, enum case for FontSource.useCase(_:), v6);
  v57 = v6;
  v58 = &protocol witness table for FontSource;
  v37 = sub_10000DB7C(v56);
  v38 = *(v36 + 16);
  v38(v37, v34, v6);
  sub_10076D9BC();
  v39 = *(v36 + 8);
  v39(v34, v6);
  v46(v34, v47, v32);
  (v45)(v34, v35, v6);
  v57 = v6;
  v58 = &protocol witness table for FontSource;
  v40 = sub_10000DB7C(v56);
  v38(v40, v34, v6);
  sub_10076D9BC();
  v39(v34, v6);
  v31 = v53;
  v30 = v54;
  v21 = v50;
LABEL_10:
  sub_10000CFBC(v55, &qword_100944538);
  v41 = *(v21 + 48);
  v42 = sub_10076D9AC();
  v43 = *(*(v42 - 8) + 32);
  v43(v31, v16, v42);
  return (v43)(v30, &v16[v41], v42);
}

uint64_t sub_100428CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076D1AC();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_100944538);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_10000A5D4(&qword_1009570E0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  sub_100016E2C(a3, v14, &qword_100944538);
  v18 = sub_10076029C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v57 = v14;
  v21 = v20(v14, 1, v18);
  v55 = a1;
  v56 = a2;
  if (v21 != 1)
  {
    sub_100016E2C(v57, v11, &qword_100944538);
    if ((*(v19 + 88))(v11, v18) == enum case for ShelfHeader.ArtworkType.category(_:))
    {
      v22 = v17;
      v23 = v15;
      v52 = *(v15 + 48);
      if (qword_1009404D8 != -1)
      {
        swift_once();
      }

      v24 = sub_10076D3DC();
      v50 = sub_10000A61C(v24, qword_100956FB0);
      v25 = *(v24 - 8);
      v49 = *(v25 + 16);
      v51 = v25 + 16;
      v49(v8, v50, v24);
      LODWORD(v48) = enum case for FontSource.useCase(_:);
      v27 = v53;
      v26 = v54;
      v47 = *(v53 + 104);
      v47(v8);
      v59 = v26;
      v60 = &protocol witness table for FontSource;
      v28 = sub_10000DB7C(v58);
      v29 = *(v27 + 16);
      v29(v28, v8, v26);
      sub_10076D9BC();
      v30 = *(v27 + 8);
      v30(v8, v26);
      v49(v8, v50, v24);
      (v47)(v8, v48, v26);
      v59 = v26;
      v60 = &protocol witness table for FontSource;
      v31 = sub_10000DB7C(v58);
      v29(v31, v8, v26);
      sub_10076D9BC();
      v30(v8, v26);
      v33 = v55;
      v32 = v56;
      goto LABEL_10;
    }

    (*(v19 + 8))(v11, v18);
  }

  v51 = *(v15 + 48);
  v52 = v15;
  if (qword_1009404D8 != -1)
  {
    swift_once();
  }

  v34 = sub_10076D3DC();
  v49 = sub_10000A61C(v34, qword_100956FB0);
  v35 = *(v34 - 8);
  v48 = *(v35 + 16);
  v50 = v35 + 16;
  v48(v8, v49, v34);
  v36 = enum case for FontSource.useCase(_:);
  v37 = v53;
  v38 = v54;
  v47 = *(v53 + 104);
  (v47)(v8, enum case for FontSource.useCase(_:), v54);
  v59 = v38;
  v60 = &protocol witness table for FontSource;
  v39 = sub_10000DB7C(v58);
  v40 = *(v37 + 16);
  v40(v39, v8, v38);
  sub_10076D9BC();
  v41 = *(v37 + 8);
  v41(v8, v38);
  v48(v8, v49, v34);
  (v47)(v8, v36, v38);
  v59 = v38;
  v60 = &protocol witness table for FontSource;
  v42 = sub_10000DB7C(v58);
  v40(v42, v8, v38);
  sub_10076D9BC();
  v41(v8, v38);
  v22 = v17;
  v33 = v55;
  v32 = v56;
  v23 = v52;
LABEL_10:
  sub_10000CFBC(v57, &qword_100944538);
  v43 = *(v23 + 48);
  v44 = sub_10076D9AC();
  v45 = *(*(v44 - 8) + 32);
  v45(v33, v22, v44);
  return (v45)(v32, &v22[v43], v44);
}

id sub_10042934C()
{
  result = [objc_opt_self() configurationWithScale:1];
  qword_100956F58 = result;
  return result;
}

void sub_100429400(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = objc_allocWithZone(NSAttributedString);
  v6 = sub_10076FF6C();
  v7 = [v5 initWithString:v6];

  *a4 = v7;
}

uint64_t sub_1004294C8(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_10076D3DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076313C();
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v7, a3);
  (*(v8 + 16))(v10, v11, v7);
  result = sub_10076312C();
  *a4 = result;
  return result;
}

id sub_100429648(uint64_t a1, uint64_t *a2, id *a3, int a4)
{
  v7 = sub_10076D3DC();
  sub_10000DB18(v7, a2);
  v8 = sub_10000A61C(v7, a2);
  v10 = *a3;
  *v8 = *a3;
  *(v8 + 8) = a4;
  (*(*(v7 - 8) + 104))();

  return v10;
}

id sub_100429738(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

char *sub_10042977C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v182 = a4;
  v181 = a3;
  v180 = a2;
  v179 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v6 - 8);
  v189 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v186 = &v161 - v9;
  v185 = sub_10000A5D4(&qword_1009570E0);
  __chkstk_darwin(v185);
  v188 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v187 = &v161 - v12;
  __chkstk_darwin(v13);
  v195 = &v161 - v14;
  __chkstk_darwin(v15);
  v194 = &v161 - v16;
  __chkstk_darwin(v17);
  v193 = &v161 - v18;
  __chkstk_darwin(v19);
  v192 = &v161 - v20;
  v21 = sub_10000A5D4(&qword_100944538);
  __chkstk_darwin(v21 - 8);
  v161 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v163 = &v161 - v24;
  __chkstk_darwin(v25);
  v196 = &v161 - v26;
  __chkstk_darwin(v27);
  v184 = &v161 - v28;
  v176 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v176);
  v177 = (&v161 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  top = COERCE_DOUBLE(sub_10076771C());
  v173 = *(*&top - 8);
  __chkstk_darwin(*&top);
  *&v175 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v31 - 8);
  v172 = &v161 - v32;
  v33 = sub_10076D3DC();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v191 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10076E1EC();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v161 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10076E21C();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_containerView;
  *&v5[v44] = [objc_allocWithZone(UIView) init];
  v183 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_separatorView;
  (*(v37 + 104))(v39, enum case for Separator.Position.top(_:), v36);
  v199 = sub_10076D67C();
  v200 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v198);
  sub_10076D66C();
  sub_10076E1FC();
  v45 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v46 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v47 = *(v41 + 40);
  v48 = v45;
  v47(&v45[v46], v43, v40);
  swift_endAccess();

  *(v183 + v5) = v48;
  v49 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton;
  sub_10076313C();
  if (qword_1009404D0 != -1)
  {
    swift_once();
  }

  v50 = sub_10000A61C(v33, qword_100956F98);
  v171 = v34;
  v51 = *(v34 + 16);
  v169 = *&v50;
  v183 = v51;
  (v51)(v191);
  *&v5[v49] = sub_10076312C();
  v167 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork] = 0;
  v52 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkType;
  v53 = sub_10076029C();
  v164 = *(v53 - 8);
  v54 = *(v164 + 56);
  v168 = v52;
  v54(&v52[v5], 1, 1, v53);
  v55 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkView;
  sub_10075FD2C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v55] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v57 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton;
  if (qword_1009404D8 != -1)
  {
    swift_once();
  }

  v166 = sub_10000A61C(v33, qword_100956FB0);
  (v183)(v191);
  *&v5[v57] = sub_10076312C();
  v165 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtwork;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtwork] = 0;
  v58 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkType;
  v162 = v53;
  v54(&v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkType], 1, 1, v53);
  v59 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkView;
  *&v5[v59] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v60 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton;
  if (qword_1009404E8 != -1)
  {
    swift_once();
  }

  v170 = sub_10000A61C(v33, qword_100956FE0);
  v61 = v183;
  (v183)(v191);
  *&v5[v60] = sub_10076312C();
  v62 = &v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
  *v62 = 0;
  *(v62 + 1) = 0;
  v63 = &v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction];
  *v63 = 0;
  *(v63 + 1) = 0;
  v64 = &v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction];
  *v64 = 0;
  *(v64 + 1) = 0;
  v65 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_subtitleLabel;
  v66 = v185;
  v67 = v171;
  v68 = v61;
  if (qword_1009404E0 != -1)
  {
    swift_once();
  }

  v69 = sub_10000A61C(v33, qword_100956FC8);
  v70 = v172;
  (v68)(v172, v69, v33);
  (*(v67 + 56))(v70, 0, 1, v33);
  (*(*&v173 + 104))(COERCE_CGFLOAT(*&v175), enum case for DirectionalTextAlignment.none(_:), COERCE_CGFLOAT(*&top));
  v71 = objc_allocWithZone(sub_1007626BC());
  *&v5[v65] = sub_1007626AC();
  v72 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_configuration;
  v73 = sub_10076034C();
  (*(*(v73 - 8) + 56))(&v5[v72], 1, 1, v73);
  v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch] = 0;
  v74 = *&v167[v5];
  v75 = v168;
  swift_beginAccess();
  v76 = v184;
  sub_100016E2C(v75 + v5, v184, &qword_100944538);
  v77 = *&v165[v5];
  swift_beginAccess();
  sub_100016E2C(&v5[v58], v196, &qword_100944538);
  v78 = objc_opt_self();
  v171 = v77;

  v191 = v74;

  v79.super.isa = [v78 currentTraitCollection];
  isa = v79.super.isa;
  bottom = UIEdgeInsetsZero.bottom;
  v82 = sub_10076D3BC(v79).super.isa;
  [(objc_class *)v82 pointSize];
  v84 = v83;
  v85 = objc_opt_self();
  v167 = v82;
  v168 = [v85 fontWithDescriptor:v82 size:v84];
  [v168 lineHeight];
  v172 = v86;
  sub_100428694(v192, v192 + *(v66 + 48), v76);
  v87.super.isa = isa;
  v88 = sub_10076D3BC(v87).super.isa;
  [(objc_class *)v88 pointSize];
  v165 = v88;
  v166 = [v85 fontWithDescriptor:v88 size:?];
  [v166 lineHeight];
  v173 = v89;
  sub_100428CF8(v193, v193 + *(v66 + 48), v196);
  v183 = isa;
  v90 = [(objc_class *)isa preferredContentSizeCategory];
  LOBYTE(v76) = sub_10077085C();

  if ((v76 & 1) == 0 || (v91 = 0.0, UIAccessibilityButtonShapesEnabled()))
  {
    v92 = v163;
    sub_100016E2C(v196, v163, &qword_100944538);
    v93 = v164;
    v94 = v162;
    v91 = 7.0;
    if ((*(v164 + 48))(v92, 1, v162) != 1)
    {
      v95 = v161;
      sub_100016E2C(v92, v161, &qword_100944538);
      v96 = (*(v93 + 88))(v95, v94);
      if (v96 != enum case for ShelfHeader.ArtworkType.icon(_:))
      {
        v91 = 5.0;
        if (v96 != enum case for ShelfHeader.ArtworkType.category(_:))
        {
          (*(v164 + 8))(v95, v94);
          v91 = 7.0;
        }
      }
    }

    sub_10000CFBC(v92, &qword_100944538);
  }

  v169 = v91;
  v97.super.isa = v183;
  v98.super.isa = sub_10076D3BC(v97).super.isa;
  [(objc_class *)v98.super.isa pointSize];
  v99 = [v85 fontWithDescriptor:v98.super.isa size:?];
  [v99 lineHeight];
  v101 = v100;
  top = UIEdgeInsetsZero.top;
  sub_1007704EC();
  v170 = v102;
  v164 = v103;
  v163 = v104;
  v162 = v105;
  sub_1007704EC();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v192;
  sub_100016E2C(v192, v194, &qword_1009570E0);
  sub_100016E2C(v114, v195, &qword_1009570E0);
  v175 = bottom;
  if (v191)
  {
    sub_10076BEFC();
    v115 = v186;
    sub_10076D3AC();
    v116 = 0;
  }

  else
  {
    v116 = 1;
    v115 = v186;
  }

  v117 = sub_10076D39C();
  v118 = *(*(v117 - 8) + 56);
  v118(v115, v116, 1, v117);
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  v121 = v193;
  sub_100016E2C(v193, v187, &qword_1009570E0);
  sub_100016E2C(v121, v188, &qword_1009570E0);
  v178 = v5;
  if (v171)
  {
    sub_10076BEFC();
    v122 = v189;
    sub_10076D3AC();

    v123 = 0;
  }

  else
  {

    v123 = 1;
    v122 = v189;
  }

  v124 = v185;

  sub_10000CFBC(v193, &qword_1009570E0);
  sub_10000CFBC(v192, &qword_1009570E0);
  sub_10000CFBC(v196, &qword_100944538);
  sub_10000CFBC(v184, &qword_100944538);
  v118(v122, v123, 1, v117);
  v125 = v173;
  v126 = v173 - v101;
  v127 = *(v124 + 48);
  v128 = v176;
  v129 = *(v176 + 40);
  v130 = v177;
  v118(v177 + v129, 1, 1, v117);
  v196 = v128[15];
  v118(v130 + v196, 1, 1, v117);
  v131 = v164;
  *v130 = v170;
  v130[1] = v131;
  v132 = v162;
  v130[2] = v163;
  v130[3] = v132;
  v130[4] = v172;
  v130[5] = v107;
  v130[6] = v109;
  v130[7] = v111;
  v130[8] = v113;
  v133 = v128[7];
  v134 = sub_10076D9AC();
  v135 = *(v134 - 8);
  v136 = *(v135 + 32);
  v136(v130 + v133, v194, v134);
  v136(v130 + v128[8], v195 + v127, v134);
  *(v130 + v128[9]) = 0x4008000000000000;
  sub_10003837C(v186, v130 + v129, &unk_1009467E0);
  *(v130 + v128[11]) = v125;
  v137 = (v130 + v128[12]);
  *v137 = top;
  v137[1] = left;
  v137[2] = v175;
  v137[3] = right;
  v138 = v187;
  v136(v130 + v128[13], v187, v134);
  v139 = v188;
  v136(v130 + v128[14], v188 + v127, v134);
  sub_10003837C(v189, v130 + v196, &unk_1009467E0);
  *(v130 + v128[16]) = v169;
  v140 = v130 + v128[17];
  *v140 = v126;
  *(v140 + 2) = 0;
  *(v140 + 3) = 0;
  *(v140 + 1) = 0x4024000000000000;
  v141 = *(v135 + 8);
  v141(v139, v134);
  v141(v138 + v127, v134);
  v141(v195, v134);
  v141(v194 + v127, v134);
  v142 = v178;
  sub_100430314(v130, &v178[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_metrics], type metadata accessor for ShelfHeaderLayout.Metrics);
  v143 = ObjectType;
  v197.receiver = v142;
  v197.super_class = ObjectType;
  v144 = objc_msgSendSuper2(&v197, "initWithFrame:", v179, v180, v181, v182);
  v145 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton;
  v146 = *&v144[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton];
  sub_100016F40(0, &qword_1009641D0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v147 = v144;
  v148 = v146;
  v149 = sub_100770F1C();
  [v148 addAction:v149 forControlEvents:0x2000];

  v150 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton;
  v151 = *&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v152 = v151;
  v153 = sub_100770F1C();
  [v152 addAction:v153 forControlEvents:0x2000];

  v154 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton;
  v155 = *&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v156 = v155;
  v157 = sub_100770F1C();
  [v156 addAction:v157 forControlEvents:0x2000];

  v158 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_containerView;
  [*&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_containerView] addSubview:*&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_separatorView]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkView]];
  [*&v147[v158] addSubview:*&v147[v154]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkView]];
  [*&v147[v158] addSubview:*&v144[v145]];
  [*&v147[v158] addSubview:*&v147[v150]];
  [*&v147[v158] addSubview:*&v147[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_subtitleLabel]];
  [v147 addSubview:*&v147[v158]];
  sub_10042AFC4();
  sub_10000A5D4(&unk_100945BF0);
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_100784500;
  *(v159 + 32) = sub_10076E88C();
  *(v159 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v159 + 48) = sub_10076E3FC();
  *(v159 + 56) = &protocol witness table for UITraitLegibilityWeight;
  v199 = v143;
  v198 = v147;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(&v198);
  return v147;
}

void sub_10042AF2C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = &Strong[*a3];
    v7 = *v6;
    if (*v6)
    {
      sub_10001CE50(*v6);

      v7();
      sub_1000167E0(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_10042AFC4()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v2 - 8);
  v118 = &v96 - v3;
  v4 = sub_10000A5D4(&unk_10095E850);
  __chkstk_darwin(v4 - 8);
  v117 = &v96 - v5;
  v115 = sub_10077111C();
  v119 = *(v115 - 8);
  __chkstk_darwin(v115);
  v101 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v112 = &v96 - v8;
  __chkstk_darwin(v9);
  v11 = &v96 - v10;
  v12 = sub_10000A5D4(&unk_10094BB80);
  __chkstk_darwin(v12 - 8);
  v99 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v113 = &v96 - v15;
  __chkstk_darwin(v16);
  v18 = &v96 - v17;
  __chkstk_darwin(v19);
  v102 = &v96 - v20;
  v21 = sub_10076034C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_separatorView];
  v26 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_configuration;
  swift_beginAccess();
  v116 = v22;
  v29 = *(v22 + 48);
  v27 = v22 + 48;
  v28 = v29;
  v30 = 1;
  v31 = v29(&v1[v26], 1, v21);
  v121 = v29;
  if (!v31)
  {
    v32 = v116;
    (*(v116 + 16))(v24, &v1[v26], v21);
    v33 = sub_10076032C();
    v34 = v32;
    v28 = v121;
    (*(v34 + 8))(v24, v21);
    v30 = v33 ^ 1;
  }

  [v25 setHidden:v30 & 1];
  v120 = v27;
  v35 = v28(&v1[v26], 1, v21);
  v100 = v24;
  if (!v35)
  {
    v36 = v116;
    (*(v116 + 16))(v24, &v1[v26], v21);
    sub_10076033C();
    (*(v36 + 8))(v24, v21);
  }

  sub_10075FBBC();
  v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton];
  v114 = v26;
  v38 = &v1[v26];
  v39 = v102;
  sub_100016E2C(v38, v102, &unk_10094BB80);
  v40 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction];
  v98 = [v1 traitCollection];
  sub_1007710CC();
  sub_100770FCC();
  sub_100770FEC();
  sub_100016E2C(v39, v18, &unk_10094BB80);
  v41 = v21;
  if (v121(v18, 1, v21) == 1)
  {
    sub_10000CFBC(v18, &unk_10094BB80);
    v42 = v112;
  }

  else
  {
    v43 = sub_1007602EC();
    (*(v116 + 8))(v18, v21);
    v42 = v112;
    if (v43)
    {
      goto LABEL_11;
    }
  }

  if (qword_1009404F0 != -1)
  {
    swift_once();
  }

  v44 = qword_100956FF8;
LABEL_11:
  v97 = v41;
  sub_10077104C();
  v45 = sub_100016F40(0, &qword_100942F00);
  if (qword_1009404D0 != -1)
  {
    swift_once();
  }

  v46 = v40 != 0;
  v103 = sub_10076D3DC();
  sub_10000A61C(v103, qword_100956F98);
  v47 = v98;
  v111 = v45;
  v48 = sub_100770B3C();
  *(swift_allocObject() + 16) = v48;
  v49 = v48;
  v50 = v117;
  sub_10076E8AC();
  v51 = sub_10076E89C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v110 = v51;
  v109 = v53;
  v108 = v52 + 56;
  (v53)(v50, 0, 1);
  sub_10077106C();
  v54 = v118;
  v55 = v119;
  v56 = *(v119 + 16);
  v57 = v115;
  v107 = v119 + 16;
  v106 = v56;
  v56(v118, v11, v115);
  v58 = *(v55 + 56);
  v105 = v55 + 56;
  v104 = v58;
  v58(v54, 0, 1, v57);
  sub_10077114C();
  [v37 setUserInteractionEnabled:v46];
  [v37 _setWantsAccessibilityUnderline:v46];

  v59 = *(v55 + 8);
  v119 = v55 + 8;
  v112 = v59;
  (v59)(v11, v57);
  sub_10000CFBC(v102, &unk_10094BB80);
  v60 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton];
  v61 = v113;
  sub_100016E2C(&v1[v114], v113, &unk_10094BB80);
  v62 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
  v63 = [v1 traitCollection];
  sub_1007710CC();
  sub_100770FCC();
  sub_100770FEC();
  v64 = v61;
  v65 = v99;
  sub_100016E2C(v64, v99, &unk_10094BB80);
  v66 = v97;
  if (v121(v65, 1, v97) == 1)
  {
    sub_10000CFBC(v65, &unk_10094BB80);
  }

  else
  {
    v67 = sub_1007602CC();
    (*(v116 + 8))(v65, v66);
    if (v67)
    {
      goto LABEL_19;
    }
  }

  if (qword_1009404F8 != -1)
  {
    swift_once();
  }

  v68 = qword_100957000;
LABEL_19:
  sub_10077104C();
  v102 = objc_opt_self();
  v69 = [v102 clearColor];
  v70 = sub_100770F5C();
  sub_10076E46C();
  v70(v122, 0);
  v71 = sub_100770F5C();
  sub_10076E44C();
  v71(v122, 0);
  if (qword_1009404D8 != -1)
  {
    swift_once();
  }

  v72 = v62 != 0;
  sub_10000A61C(v103, qword_100956FB0);
  v73 = sub_100770B3C();
  *(swift_allocObject() + 16) = v73;
  v74 = v73;
  v75 = v117;
  sub_10076E8AC();
  v109(v75, 0, 1, v110);
  sub_10077106C();
  v76 = v118;
  v77 = v115;
  v106(v118, v42, v115);
  v104(v76, 0, 1, v77);
  sub_10077114C();
  [v60 setNeedsUpdateConfiguration];
  [v60 setContentHorizontalAlignment:4];
  [v60 setUserInteractionEnabled:v72];
  [v60 _setWantsAccessibilityUnderline:v72];

  (v112)(v42, v77);
  sub_10000CFBC(v113, &unk_10094BB80);
  v78 = v114;
  v79 = v121(&v1[v114], 1, v66);
  v80 = v101;
  if (v79)
  {
    v81 = v100;
  }

  else
  {
    v82 = v116;
    v81 = v100;
    (*(v116 + 16))(v100, &v1[v78], v66);
    sub_10076031C();
    (*(v82 + 8))(v81, v66);
  }

  sub_10075FBBC();
  sub_1007710CC();
  sub_100770FCC();
  sub_100770FEC();
  if (v121(&v1[v78], 1, v66) || (v84 = v116, (*(v116 + 16))(v81, &v1[v78], v66), v85 = sub_10076030C(), (*(v84 + 8))(v81, v66), !v85))
  {
    v83 = [v102 systemBlueColor];
  }

  sub_10077104C();
  if (qword_1009404E8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v103, qword_100956FE0);
  v86 = [v1 traitCollection];
  v87 = sub_100770B3C();

  *(swift_allocObject() + 16) = v87;
  v88 = v87;
  v89 = v117;
  sub_10076E8AC();
  v109(v89, 0, 1, v110);
  sub_10077106C();
  v90 = v118;
  v106(v118, v80, v77);
  v104(v90, 0, 1, v77);
  sub_10077114C();
  v91 = *&v1[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_subtitleLabel];
  if (v121(&v1[v78], 1, v66) || (v93 = v78, v94 = v116, (*(v116 + 16))(v81, &v1[v93], v66), v92 = sub_1007602FC(), (*(v94 + 8))(v81, v66), !v92))
  {
    if (qword_100940500 != -1)
    {
      swift_once();
    }

    v92 = qword_100957008;
  }

  [v91 setTextColor:v92];

  [v1 setNeedsLayout];
  return (v112)(v80, v77);
}

uint64_t sub_10042BF88()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000A5D4(&unk_10094BB80);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_10000A5D4(&qword_100944538);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v21 - v7;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "prepareForReuse", v6);
  v9 = &v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction];
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction];
  *v9 = 0;
  *(v9 + 1) = 0;
  sub_1000167E0(v10);
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton] setAttributedTitle:0 forState:0];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork] = 0;

  [*&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkView] setHidden:1];
  v11 = sub_10076029C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkType;
  swift_beginAccess();
  sub_10003837C(v8, &v0[v12], &qword_100944538);
  swift_endAccess();
  v13 = &v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction];
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  sub_1000167E0(v14);
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton];
  [v15 setTitle:0 forState:0];
  [v15 setImage:0 forState:0];
  v16 = &v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
  *v16 = 0;
  *(v16 + 1) = 0;
  sub_1000167E0(v17);
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton] setAttributedTitle:0 forState:0];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_subtitleLabel] setText:0];
  v18 = sub_10076034C();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_configuration;
  swift_beginAccess();
  sub_10042F7E0(v4, &v0[v19]);
  swift_endAccess();
  sub_10042AFC4();
  return sub_10000CFBC(v4, &unk_10094BB80);
}

double sub_10042C2E4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_metrics;
  swift_beginAccess();
  v69 = v5;
  sub_10042FA9C(v2 + v6, v5);
  v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_separatorView);
  v86[3] = type metadata accessor for SeparatorView();
  v86[4] = &protocol witness table for UIView;
  v86[0] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton);
  v9 = v7;
  if (([v8 isHidden] & 1) != 0 || !objc_msgSend(v8, "hasContent"))
  {
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
  }

  else
  {
    *(&v84 + 1) = sub_10076313C();
    v85 = &protocol witness table for UIButton;
    *&v83 = v8;
    v10 = v8;
  }

  v11 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkView);
  v12 = sub_10075FD2C();
  v82[3] = v12;
  v82[4] = &protocol witness table for UIView;
  v82[0] = v11;
  v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton);
  v14 = sub_10076313C();
  v81[3] = v14;
  v81[4] = &protocol witness table for UIButton;
  v80[4] = &protocol witness table for UIView;
  v81[0] = v13;
  v15 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkView);
  v80[3] = v12;
  v80[0] = v15;
  v16 = v11;
  v17 = v13;
  v18 = v15;
  v19 = sub_10042D078();
  v20 = v19;
  if (v19)
  {
    v19 = sub_1007626BC();
    v21 = &protocol witness table for UILabel;
  }

  else
  {
    v21 = 0;
    v79[1] = 0;
    v79[2] = 0;
  }

  v79[0] = v20;
  v79[3] = v19;
  v79[4] = v21;
  v22 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton);
  if (([v22 isHidden] & 1) != 0 || !objc_msgSend(v22, "hasContent"))
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v14;
    v78 = &protocol witness table for UIView;
    *&v76 = v22;
    v23 = v22;
  }

  v24 = v68;
  sub_10042FA9C(v69, v68);
  sub_100016E2C(v86, v70, &unk_10094DA00);
  v25 = v71;
  if (v71)
  {
    v26 = v72;
    sub_10000CF78(v70, v71);
    v27 = sub_1007711AC();
    v28 = *(v27 - 8);
    __chkstk_darwin(v27);
    v30 = &v67 - v29;
    sub_10076D21C();
    v31 = *(v25 - 8);
    if ((*(v31 + 48))(v30, 1, v25) == 1)
    {
      (*(v28 + 8))(v30, v27);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v25;
      v75 = v26;
      v32 = sub_10000DB7C(&v73);
      (*(v31 + 32))(v32, v30, v25);
    }

    sub_10000CD74(v70);
  }

  else
  {
    sub_10000CFBC(v70, &unk_10094DA00);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v33 = type metadata accessor for ShelfHeaderLayout(0);
  v34 = v24 + v33[5];
  v35 = v74;
  *v34 = v73;
  *(v34 + 16) = v35;
  *(v34 + 32) = v75;
  sub_100016E2C(&v83, v24 + v33[6], &unk_10094B230);
  sub_100016E2C(v82, v70, &unk_10094DA00);
  v36 = v71;
  if (v71)
  {
    v37 = v72;
    sub_10000CF78(v70, v71);
    v38 = sub_1007711AC();
    v39 = *(v38 - 8);
    __chkstk_darwin(v38);
    v41 = &v67 - v40;
    sub_10076D21C();
    v42 = *(v36 - 8);
    if ((*(v42 + 48))(v41, 1, v36) == 1)
    {
      (*(v39 + 8))(v41, v38);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v36;
      v75 = v37;
      v43 = sub_10000DB7C(&v73);
      (*(v42 + 32))(v43, v41, v36);
    }

    sub_10000CD74(v70);
  }

  else
  {
    sub_10000CFBC(v70, &unk_10094DA00);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v44 = v24 + v33[7];
  v45 = v74;
  *v44 = v73;
  *(v44 + 16) = v45;
  *(v44 + 32) = v75;
  sub_10000A570(v81, v24 + v33[8]);
  sub_100016E2C(v80, v70, &unk_10094DA00);
  v46 = v71;
  if (v71)
  {
    v47 = v72;
    sub_10000CF78(v70, v71);
    v48 = sub_1007711AC();
    v49 = *(v48 - 8);
    __chkstk_darwin(v48);
    v51 = &v67 - v50;
    sub_10076D21C();
    v52 = *(v46 - 8);
    if ((*(v52 + 48))(v51, 1, v46) == 1)
    {
      (*(v49 + 8))(v51, v48);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v46;
      v75 = v47;
      v53 = sub_10000DB7C(&v73);
      (*(v52 + 32))(v53, v51, v46);
    }

    sub_10000CD74(v70);
  }

  else
  {
    sub_10000CFBC(v70, &unk_10094DA00);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v54 = v24 + v33[9];
  v55 = v74;
  *v54 = v73;
  *(v54 + 16) = v55;
  *(v54 + 32) = v75;
  sub_100016E2C(v79, v24 + v33[10], &unk_10094B230);
  sub_100016E2C(&v76, v70, &unk_10094DA00);
  v56 = v71;
  if (v71)
  {
    v57 = v72;
    sub_10000CF78(v70, v71);
    v58 = sub_1007711AC();
    v67 = &v67;
    v59 = *(v58 - 8);
    __chkstk_darwin(v58);
    v61 = &v67 - v60;
    sub_10076D21C();
    v62 = *(v56 - 8);
    if ((*(v62 + 48))(v61, 1, v56) == 1)
    {
      sub_10042FB00(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10000CFBC(&v76, &unk_10094DA00);
      sub_10000CFBC(v79, &unk_10094B230);
      sub_10000CFBC(v80, &unk_10094DA00);
      sub_10000CD74(v81);
      sub_10000CFBC(v82, &unk_10094DA00);
      sub_10000CFBC(&v83, &unk_10094B230);
      sub_10000CFBC(v86, &unk_10094DA00);
      (*(v59 + 8))(v61, v58);
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
    }

    else
    {
      *(&v74 + 1) = v56;
      v75 = v57;
      v63 = sub_10000DB7C(&v73);
      (*(v62 + 32))(v63, v61, v56);
      sub_10042FB00(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
      sub_10000CFBC(&v76, &unk_10094DA00);
      sub_10000CFBC(v79, &unk_10094B230);
      sub_10000CFBC(v80, &unk_10094DA00);
      sub_10000CD74(v81);
      sub_10000CFBC(v82, &unk_10094DA00);
      sub_10000CFBC(&v83, &unk_10094B230);
      sub_10000CFBC(v86, &unk_10094DA00);
    }

    sub_10000CD74(v70);
  }

  else
  {
    sub_10042FB00(v69, type metadata accessor for ShelfHeaderLayout.Metrics);
    sub_10000CFBC(&v76, &unk_10094DA00);
    sub_10000CFBC(v79, &unk_10094B230);
    sub_10000CFBC(v80, &unk_10094DA00);
    sub_10000CD74(v81);
    sub_10000CFBC(v82, &unk_10094DA00);
    sub_10000CFBC(&v83, &unk_10094B230);
    sub_10000CFBC(v86, &unk_10094DA00);
    sub_10000CFBC(v70, &unk_10094DA00);
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
  }

  v64 = v24 + v33[11];
  result = *&v73;
  v66 = v74;
  *v64 = v73;
  *(v64 + 16) = v66;
  *(v64 + 32) = v75;
  return result;
}

void *sub_10042D078()
{
  if ([v0 isHidden])
  {
    return 0;
  }

  v1 = [v0 text];
  if (v1)
  {
    v2 = v1;
    v3 = sub_10076FF9C();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      goto LABEL_9;
    }
  }

  v7 = [v0 attributedText];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [v7 length];

  if (v9 < 1)
  {
    return 0;
  }

LABEL_9:
  v10 = v0;
  return v0;
}

uint64_t sub_10042D190(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v29 = a4;
  v30 = a5;
  v9 = sub_10076BF6C();
  __chkstk_darwin(v9 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_100944538);
  __chkstk_darwin(v12 - 8);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  v18 = sub_10076029C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100016E2C(a2, v17, &qword_100944538);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      v24 = *(v19 + 32);
      v27[1] = v11;
      v28 = v24;
      v24(v21, v17, v18);
      *(v5 + *a3) = a1;
      swift_retain_n();

      [*(v5 + *v29) setHidden:0];
      sub_10076BF7C();
      sub_10075FCCC();

      v28(v14, v21, v18);
      (*(v19 + 56))(v14, 0, 1, v18);
      v25 = *v30;
      swift_beginAccess();
      v23 = v5 + v25;
      goto LABEL_6;
    }

    sub_10000CFBC(v17, &qword_100944538);
  }

  *(v5 + *a3) = 0;

  [*(v5 + *v29) setHidden:1];
  (*(v19 + 56))(v14, 1, 1, v18);
  v22 = *v30;
  swift_beginAccess();
  v23 = v5 + v22;
LABEL_6:
  sub_10003837C(v14, v23, &qword_100944538);
  return swift_endAccess();
}

uint64_t sub_10042D4F8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v5 = sub_10000A5D4(&unk_100946720);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    sub_10076468C();
    a3(v8, ObjectType, v10);
    swift_unknownObjectRelease();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void sub_10042D630()
{
  v1 = sub_10076BEDC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork))
  {

    sub_10076BEFC();
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v2 + 8))(v4, v1);
    sub_10076BFCC();
    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();
  }

  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtwork))
  {

    sub_10076BEFC();
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v2 + 8))(v4, v1);
    sub_10076BFCC();
    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();
  }
}

void sub_10042D86C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView] == 1)
  {
    v6 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch;
    v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch];
    if (!v7 || [v7 phase] == 3 || (v8 = *&v2[v6]) != 0 && objc_msgSend(v8, "phase") == 4)
    {
      v9 = sub_1005EBD8C(a1);
      if (v9)
      {
        v10 = *&v2[v6];
        *&v2[v6] = v9;
        v11 = v9;

        [v2 alpha];
        if (v12 == 0.5)
        {
        }

        else
        {
          v14 = objc_opt_self();
          v15 = swift_allocObject();
          *(v15 + 16) = v2;
          *(v15 + 24) = 0x3FE0000000000000;
          aBlock[4] = sub_10043046C;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10009AEDC;
          aBlock[3] = &unk_100895458;
          v16 = _Block_copy(aBlock);
          v17 = v2;

          [v14 animateWithDuration:4 delay:v16 options:0 animations:0.2 completion:0.0];

          _Block_release(v16);
        }

        sub_100016F40(0, &qword_10094F760);
        sub_10027D9C8();
        v13.super.isa = sub_10077038C().super.isa;
        objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v2, ObjectType);
      }

      else
      {
        sub_100016F40(0, &qword_10094F760);
        sub_10027D9C8();
        v13.super.isa = sub_10077038C().super.isa;
        v21.receiver = v2;
        v21.super_class = ObjectType;
        objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
      }
    }

    else
    {
      sub_100016F40(0, &qword_10094F760);
      sub_10027D9C8();
      v13.super.isa = sub_10077038C().super.isa;
      objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v13.super.isa, a2, v2, ObjectType, v19.receiver, v19.super_class);
    }
  }

  else
  {
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v13.super.isa = sub_10077038C().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v13.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
  }
}

void sub_10042DB64(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v14.super.isa = sub_10077038C().super.isa;
    v22.receiver = v2;
    v22.super_class = ObjectType;
    objc_msgSendSuper2(&v22, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v6 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch];
  if (!v6)
  {
LABEL_11:
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v14.super.isa = sub_10077038C().super.isa;
    v21.receiver = v2;
    v21.super_class = ObjectType;
    objc_msgSendSuper2(&v21, "touchesMoved:withEvent:", v14.super.isa, a2, v19.receiver, v19.super_class);
    goto LABEL_14;
  }

  v7 = v6;
  if ((sub_1006937A4(v7, a1) & 1) == 0)
  {

    goto LABEL_11;
  }

  [v7 locationInView:v2];
  v9 = v8;
  v11 = v10;
  [v2 bounds];
  v23.x = v9;
  v23.y = v11;
  if (CGRectContainsPoint(v24, v23))
  {
    v12 = 0.5;
  }

  else
  {
    v12 = 1.0;
  }

  [v2 alpha];
  if (v13 == v12)
  {
  }

  else
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = v12;
    aBlock[4] = sub_10043046C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100895408;
    v17 = _Block_copy(aBlock);
    v18 = v2;

    [v15 animateWithDuration:4 delay:v17 options:0 animations:0.2 completion:0.0];

    _Block_release(v17);
  }

  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v14.super.isa = sub_10077038C().super.isa;
  objc_msgSendSuper2(&v19, "touchesMoved:withEvent:", v14.super.isa, a2, v2, ObjectType);
LABEL_14:
}

uint64_t sub_10042DE30(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v8 = sub_10077039C();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_10042DEE0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v11.super.isa = sub_10077038C().super.isa;
    v19.receiver = v2;
    v19.super_class = ObjectType;
    objc_msgSendSuper2(&v19, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v6 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch;
  v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch];
  if (!v7)
  {
LABEL_8:
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v11.super.isa = sub_10077038C().super.isa;
    v18.receiver = v2;
    v18.super_class = ObjectType;
    objc_msgSendSuper2(&v18, "touchesCancelled:withEvent:", v11.super.isa, a2, v16.receiver, v16.super_class);
    goto LABEL_11;
  }

  v8 = v7;
  if ((sub_1006937A4(v8, a1) & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = *&v2[v6];
  *&v2[v6] = 0;

  [v2 alpha];
  if (v10 == 1.0)
  {
  }

  else
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = 0x3FF0000000000000;
    aBlock[4] = sub_10043046C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_1008953B8;
    v14 = _Block_copy(aBlock);
    v15 = v2;

    [v12 animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:0.0];

    _Block_release(v14);
  }

  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v11.super.isa = sub_10077038C().super.isa;
  objc_msgSendSuper2(&v16, "touchesCancelled:withEvent:", v11.super.isa, a2, v2, ObjectType);
LABEL_11:
}

void sub_10042E16C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (v2[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView] != 1)
  {
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v22.super.isa = sub_10077038C().super.isa;
    v26.receiver = v3;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "touchesEnded:withEvent:", v22.super.isa, a2, v23.receiver, v23.super_class);
    goto LABEL_13;
  }

  v7 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch;
  v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch];
  if (!v8)
  {
LABEL_12:
    sub_100016F40(0, &qword_10094F760);
    sub_10027D9C8();
    v22.super.isa = sub_10077038C().super.isa;
    v25.receiver = v3;
    v25.super_class = ObjectType;
    objc_msgSendSuper2(&v25, "touchesEnded:withEvent:", v22.super.isa, a2, v23.receiver, v23.super_class);
    goto LABEL_13;
  }

  v9 = v8;
  if ((sub_1006937A4(v9, a1) & 1) == 0)
  {

    goto LABEL_12;
  }

  v10 = *&v3[v7];
  *&v3[v7] = 0;

  [v3 alpha];
  if (v11 != 1.0)
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = 0x3FF0000000000000;
    aBlock[4] = sub_1000B7BEC;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100895368;
    v14 = _Block_copy(aBlock);
    v15 = v3;

    [v12 animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:0.0];
    _Block_release(v14);
  }

  [v9 locationInView:v3];
  v17 = v16;
  v19 = v18;
  [v3 bounds];
  v27.x = v17;
  v27.y = v19;
  if (CGRectContainsPoint(v28, v27))
  {
    v20 = *&v3[OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction];
    if (v20)
    {

      v20(v21);
      sub_1000167E0(v20);
    }
  }

  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v22.super.isa = sub_10077038C().super.isa;
  objc_msgSendSuper2(&v23, "touchesEnded:withEvent:", v22.super.isa, a2, v3, ObjectType);
LABEL_13:
}

uint64_t type metadata accessor for ShelfHeaderView()
{
  result = qword_1009570C0;
  if (!qword_1009570C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10042E664()
{
  type metadata accessor for ShelfHeaderLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_10042E7EC(319, &qword_1009570D0, &type metadata accessor for ShelfHeader.ArtworkType);
    if (v1 <= 0x3F)
    {
      sub_10042E7EC(319, &qword_1009570D8, &type metadata accessor for ShelfHeader.Configuration);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10042E7EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10042E840()
{
  v66 = sub_10000A5D4(&qword_1009570E8);
  __chkstk_darwin(v66);
  v69 = (&v62 - v0);
  v1 = sub_10000A5D4(&qword_1009499A0);
  __chkstk_darwin(v1 - 8);
  v63 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v62 - v4;
  __chkstk_darwin(v6);
  v8 = &v62 - v7;
  v9 = sub_10000A5D4(&qword_10094E090);
  __chkstk_darwin(v9 - 8);
  v62 = (&v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v65 = &v62 - v12;
  v13 = sub_1007621EC();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_100946720);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v62 - v18;
  sub_10076468C();
  swift_getKeyPath();
  v64 = v15;
  sub_10076F49C();

  v20 = *(v17 + 8);
  v20(v19, v16);
  v21 = v63;
  sub_10076463C();
  sub_10000CFBC(v21, &qword_1009499A0);
  sub_100023AD0(v5, v8, &qword_1009499A0);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_10000CFBC(v8, &qword_1009499A0);
    v22 = 1;
    v23 = v65;
  }

  else
  {
    swift_getKeyPath();
    v23 = v65;
    sub_10076F49C();

    v20(v8, v16);
    v22 = 0;
  }

  v25 = v67;
  v24 = v68;
  (*(v67 + 56))(v23, v22, 1, v68);
  v26 = *(v66 + 48);
  v27 = v69;
  (*(v25 + 32))(v69, v64, v24);
  sub_100023AD0(v23, v27 + v26, &qword_10094E090);
  v28 = *(v25 + 88);
  v29 = v28(v27, v24);
  v30 = enum case for ShelfBackground.color(_:);
  if (v29 == enum case for ShelfBackground.color(_:))
  {
    (*(v25 + 96))(v27, v24);

    v31 = *(sub_10000A5D4(&unk_100950670) + 48);
    v32 = sub_1007659CC();
    (*(*(v32 - 8) + 8))(v27 + v31, v32);
LABEL_8:
    sub_10000CFBC(v27 + v26, &qword_10094E090);
    return sub_1007704EC();
  }

  v33 = enum case for ShelfBackground.gradient(_:);
  if (v29 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v25 + 96))(v27, v24);

    v34 = sub_10000A5D4(&qword_10094B500);
    v35 = v34[12];
    v36 = v34[16];
    v37 = v34[20];
    v38 = sub_1007659CC();
    (*(*(v38 - 8) + 8))(v27 + v37, v38);
    v39 = sub_10076A05C();
    v40 = *(*(v39 - 8) + 8);
    v40(v27 + v36, v39);
    v40(v27 + v35, v39);
    goto LABEL_8;
  }

  v42 = enum case for ShelfBackground.materialGradient(_:);
  if (v29 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v25 + 96))(v27, v24);
    v43 = *(sub_10000A5D4(qword_10094ADC0) + 48);
    v44 = sub_1007659CC();
    (*(*(v44 - 8) + 8))(v27 + v43, v44);
    v45 = sub_10076AA6C();
    (*(*(v45 - 8) + 8))(v27, v45);
    goto LABEL_8;
  }

  if ((*(v25 + 48))(v27 + v26, 1, v24) != 1)
  {
    v46 = v62;
    sub_100016E2C(v27 + v26, v62, &qword_10094E090);
    v47 = v28(v46, v24);
    if (v47 == v30)
    {
      (*(v25 + 96))(v46, v24);

      v48 = *(sub_10000A5D4(&unk_100950670) + 48);
      v49 = sub_1007659CC();
      (*(*(v49 - 8) + 8))(v46 + v48, v49);
    }

    else if (v47 == v33)
    {
      v50 = v62;
      (*(v25 + 96))(v62, v24);

      v51 = sub_10000A5D4(&qword_10094B500);
      v52 = v51[12];
      v53 = v51[16];
      v54 = v51[20];
      v55 = sub_1007659CC();
      (*(*(v55 - 8) + 8))(v50 + v54, v55);
      v56 = sub_10076A05C();
      v57 = *(*(v56 - 8) + 8);
      v57(v50 + v53, v56);
      v57(v50 + v52, v56);
    }

    else
    {
      v58 = v62;
      if (v47 != v42)
      {
        (*(v25 + 8))(v62, v24);
        return sub_10000CFBC(v27, &qword_1009570E8);
      }

      (*(v25 + 96))(v62, v24);
      v59 = *(sub_10000A5D4(qword_10094ADC0) + 48);
      v60 = sub_1007659CC();
      (*(*(v60 - 8) + 8))(v58 + v59, v60);
      v61 = sub_10076AA6C();
      (*(*(v61 - 8) + 8))(v58, v61);
    }

    sub_10000CFBC(v27 + v26, &qword_10094E090);
    (*(v25 + 8))(v27, v24);
    return sub_1007704EC();
  }

  return sub_10000CFBC(v27, &qword_1009570E8);
}

id sub_10042F1BC(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v8 = objc_allocWithZone(NSAttributedString);

  v9 = sub_10076FF6C();

  v10 = [v8 initWithString:v9];

  if (a4)
  {
    v11 = objc_opt_self();
    v12 = a4;
    v13 = [v11 textAttachmentWithImage:v12];
    v14 = [objc_opt_self() attributedStringWithAttachment:v13];

    if (!a2)
    {
      goto LABEL_10;
    }

    v15 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v15 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = [objc_allocWithZone(NSMutableAttributedString) init];
      if ([a3 layoutDirection])
      {
        if (qword_1009404A0 != -1)
        {
          swift_once();
        }

        v17 = &qword_100956F68;
      }

      else
      {
        if (qword_100940498 != -1)
        {
          swift_once();
        }

        v17 = &qword_100956F60;
      }

      [v16 appendAttributedString:*v17];
      if (qword_1009404A8 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_100956F70];
      [v16 appendAttributedString:v10];
      if (qword_1009404B0 != -1)
      {
        swift_once();
      }

      v18 = qword_100956F78;
      [v16 appendAttributedString:qword_100956F78];
      if (qword_1009404B8 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_100956F80];
      [v16 appendAttributedString:v14];
      [v16 appendAttributedString:v18];
      v19 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v16];

      v10 = v14;
      v14 = v19;
    }

    else
    {
LABEL_10:
      v16 = v12;
    }

    return v14;
  }

  return v10;
}

id sub_10042F4DC(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v8 = sub_10076048C();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  if (a4)
  {
    (*(v9 + 104))(v12, enum case for SystemImage.chevronForward(_:), v8, v10);
    if (qword_100940490 != -1)
    {
      swift_once();
    }

    v14 = [qword_100956F58 configurationWithTraitCollection:a3];
    v15 = sub_10076046C();

    (*(v9 + 8))(v12, v8);
    v16 = [objc_opt_self() secondaryLabelColor];
    v13 = [v15 imageWithTintColor:v16];
  }

  v17 = sub_10042F1BC(a1, a2, a3, v13);

  return v17;
}

uint64_t sub_10042F6B8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_10076B8EC();
  v3 = v2;

  if (v3)
  {
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {

      return v1;
    }
  }

  v5 = sub_10076B8FC();

  if (!v5)
  {

    return 0;
  }

  v1 = sub_10076BE2C();
  v7 = v6;

  if (!v7)
  {
    return 0;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 0;
  }

  return v1;
}

uint64_t sub_10042F7C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10042F7D8();
  }

  return result;
}

uint64_t sub_10042F7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_10094BB80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042F850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042F8D8()
{
  sub_10000CD74(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10042F910()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10042F964()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10042FA48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10042FA9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042FB00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10042FB60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10042FB98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10042FBB0()
{
  v1 = v0;
  v2 = sub_10076771C();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - v5;
  v6 = sub_10076D3DC();
  v48 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076E1EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076E21C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_containerView;
  *(v1 + v17) = [objc_allocWithZone(UIView) init];
  v49 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_separatorView;
  (*(v10 + 104))(v12, enum case for Separator.Position.top(_:), v9);
  v50[3] = sub_10076D67C();
  v50[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v50);
  sub_10076D66C();
  sub_10076E1FC();
  v18 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v20 = *(v14 + 40);
  v21 = v18;
  v20(&v18[v19], v16, v13);
  swift_endAccess();

  *(v49 + v1) = v21;
  v22 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowButton;
  sub_10076313C();
  if (qword_1009404D0 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v6, qword_100956F98);
  v49 = *(v48 + 16);
  v49(v8, v23, v6);
  *(v1 + v22) = sub_10076312C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtwork) = 0;
  v24 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkType;
  v25 = sub_10076029C();
  v26 = *(*(v25 - 8) + 56);
  v26(v1 + v24, 1, 1, v25);
  v27 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowArtworkView;
  sub_10075FD2C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v27) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v29 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleButton;
  if (qword_1009404D8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v6, qword_100956FB0);
  v49(v8, v30, v6);
  *(v1 + v29) = sub_10076312C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtwork) = 0;
  v26(v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkType, 1, 1, v25);
  v31 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleArtworkView;
  *(v1 + v31) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v32 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryButton;
  if (qword_1009404E8 != -1)
  {
    swift_once();
  }

  v33 = sub_10000A61C(v6, qword_100956FE0);
  v49(v8, v33, v6);
  *(v1 + v32) = sub_10076312C();
  v34 = (v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_titleAction);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_accessoryAction);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_eyebrowAction);
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_subtitleLabel;
  if (qword_1009404E0 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A61C(v6, qword_100956FC8);
  v39 = v44;
  v49(v44, v38, v6);
  (*(v48 + 56))(v39, 0, 1, v6);
  (*(v45 + 104))(v47, enum case for DirectionalTextAlignment.none(_:), v46);
  v40 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v37) = sub_1007626AC();
  v41 = OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_configuration;
  v42 = sub_10076034C();
  (*(*(v42 - 8) + 56))(v1 + v41, 1, 1, v42);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_shouldHighlightEntireView) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension15ShelfHeaderView_currentTouch) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100430314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10043037C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t CondensedInAppPurchaseContentView.applyData(from:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v91 = a2;
  v4 = sub_10075E77C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075E57C();
  v94 = *(v8 - 8);
  __chkstk_darwin(v8);
  v92 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v77 - v11;
  v12 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v12 - 8);
  v90 = &v77 - v13;
  v89 = sub_100768FEC();
  v84 = *(v89 - 1);
  __chkstk_darwin(v89);
  v85 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100946750);
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v86 = &v77 - v16;
  v17 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v17 - 8);
  v83 = &v77 - v18;
  v19 = sub_10000A5D4(&unk_100962490);
  __chkstk_darwin(v19 - 8);
  v82 = &v77 - v20;
  v21 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v21 - 8);
  v23 = &v77 - v22;
  v24 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v24 - 8);
  v26 = &v77 - v25;
  v27 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v27 - 8);
  v29 = &v77 - v28;
  sub_10075E7FC();
  sub_100434604(&qword_1009486F8, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_10076332C();
  if (*&v95[0])
  {
    v78 = v8;
    v79 = v7;
    v80 = v5;
    v81 = v4;
    v31 = sub_10075E7EC();

    v32 = sub_10075E63C();
    v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_headerLabel];
    v34 = "inAppDescription";
    if (v32)
    {
      v34 = "chase.Subtitle.Format";
      v35._countAndFlagsBits = 0xD00000000000003ALL;
    }

    else
    {
      v35._countAndFlagsBits = 0xD00000000000002DLL;
    }

    v35._object = (v34 | 0x8000000000000000);
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    sub_1007622EC(v35, v98);
    v36 = sub_10076FF6C();

    [v33 setText:v36];

    v37 = *&v2[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_titleLabel];

    sub_10076BB6C();
    if (v38)
    {
      v39 = sub_10076FF6C();
    }

    else
    {
      v39 = 0;
    }

    [v37 setText:v39];

    v40 = *&v3[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
    sub_10075E64C();
    if (v41)
    {
      v42 = sub_10076FF6C();
    }

    else
    {
      v42 = 0;
    }

    [v40 setText:v42];

    v43 = v3;
    sub_1000F0578();
    if (sub_10076BB3C())
    {
      v44 = enum case for OfferStyle.white(_:);
      v45 = sub_10075F78C();
      v46 = *(v45 - 8);
      (*(v46 + 104))(v29, v44, v45);
      (*(v46 + 56))(v29, 0, 1, v45);
      v43 = v3;
      v47 = sub_1007628DC();
      (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
      v48 = sub_10076C54C();
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v49 = sub_10076201C();
      v50 = v82;
      (*(*(v49 - 8) + 56))(v82, 1, 1, v49);
      memset(v95, 0, 32);
      v51 = sub_100766A5C();

      sub_10000CFBC(v95, &unk_1009434C0);
      sub_10000CFBC(v50, &unk_100962490);
      sub_10000CFBC(v23, &unk_100949290);
      sub_10000CFBC(v26, &unk_1009492A0);
      sub_10000CFBC(v29, &unk_10094D210);
    }

    else
    {
      v51 = 0;
    }

    v82 = v51;
    v77 = v43;
    v52 = *&v43[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_offerButton];
    v53 = sub_10076BA2C();

    v54 = sub_10000A5D4(&qword_100945590);
    v55 = v83;
    (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
    v56 = v84;
    v57 = v89;
    (*(v84 + 104))(v85, enum case for OfferButtonSubtitlePosition.right(_:), v89);
    (*(v56 + 56))(v90, 1, 1, v57);
    sub_100434604(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
    v58 = v86;
    sub_10076759C();
    sub_1001F12C8(v51, v53, 0, v55, v58, v91, 0, 0);

    (*(v87 + 8))(v58, v88);
    sub_10000CFBC(v55, &unk_100946760);
    [v52 setHidden:0];
    sub_100760C4C();
    sub_10076F64C();
    sub_10076FC1C();
    v59 = *&v43[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v60 = *&v95[0];
    v96.value.super.isa = 0;
    v96.is_nil = 0;
    sub_10075FCEC(v96, v61);
    v97.value.super.isa = 0;
    v97.is_nil = 0;
    sub_10075FCEC(v97, v62);
    sub_10075FD2C();
    sub_100434604(&qword_100941820, &type metadata accessor for ArtworkView);
    sub_100760BFC();
    v91 = v60;
    sub_100760BFC();
    if (qword_10093F768 != -1)
    {
      swift_once();
    }

    v90 = qword_10099CFB8;
    v63 = v93;
    sub_10075E65C();
    v64 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    v65 = v94;
    v66 = v78;
    (*(v94 + 24))(&v59[v64], v63, v78);
    swift_endAccess();
    v89 = *(v65 + 16);
    v67 = v92;
    (v89)(v92, &v59[v64], v66);
    sub_1005B84F8(v67);
    v68 = *(v65 + 8);
    v68(v67, v66);
    v68(v63, v66);
    [v59 setBackgroundColor:v90];
    sub_1006EC184(v31, v59, v91);
    (v89)(v63, &v59[v64], v66);
    sub_1005B84F8(v63);
    v68(v63, v66);
    [v59 setNeedsLayout];
    [v59 setHidden:0];
    v69 = v80;
    v70 = &v59[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_metrics];
    v71 = v79;
    v72 = v81;
    (*(v80 + 16))(v79, v70, v81);
    sub_10075E72C();
    v74 = v73;
    sub_10075E76C();
    v76 = v77;
    *&v77[OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_tileOffset] = v74 + v75;
    [v76 setNeedsLayout];

    return (*(v69 + 8))(v71, v72);
  }

  return result;
}

uint64_t CondensedInAppPurchaseContentView.fetch(for:in:on:asPartOf:)(uint64_t a1, uint64_t a2)
{
  sub_10000A570(a1, v6);
  sub_10000A5D4(&unk_100942830);
  sub_10075E7FC();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = sub_10075E7EC();

    sub_1006EC184(v5, *(v2 + OBJC_IVAR____TtC20ProductPageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView), a2);
  }

  return result;
}

uint64_t CondensedInAppPurchaseContentView.cancelArtworkFetches(on:asPartOf:deprioritizingFetches:)(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_10075FCEC(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_10075FCEC(v6, v3);
  sub_10075FD2C();
  sub_100434604(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
  return sub_100760BFC();
}

uint64_t static CondensedInAppPurchaseContentView.prefetchArtwork(for:with:asPartOf:)()
{
  sub_10075E7FC();
  sub_100434604(&qword_1009486F8, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_10076332C();
  if (v3)
  {
    sub_10075E7EC();
    v1 = sub_1006EC764();

    v2._rawValue = v1;
    sub_100760BAC(v2);
  }

  return result;
}

double sub_10043142C(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v137 = a3;
  v152 = a1;
  v136 = sub_10076DB6C();
  v156 = *(v136 - 8);
  __chkstk_darwin(v136);
  v122 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_10076DB5C();
  v155 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_10076DB0C();
  v154 = *(v135 - 8);
  __chkstk_darwin(v135);
  v119 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076DBAC();
  v124 = *(v7 - 8);
  v125 = v7;
  __chkstk_darwin(v7);
  v123 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076443C();
  v130 = *(v9 - 8);
  v131 = v9;
  __chkstk_darwin(v9);
  v138 = (&v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v129 = &v110 - v12;
  v151 = sub_10076997C();
  v153 = *(v151 - 8);
  __chkstk_darwin(v151);
  v144 = (&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_10076D1AC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10075E77C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E6FC();
  sub_10075E73C();
  (*(v19 + 8))(v21, v18);
  v134 = sub_10076DDDC();
  swift_allocObject();
  v128 = sub_10076DDBC();
  v157 = a2;
  sub_10075E3CC();
  LODWORD(v150) = enum case for FontSource.useCase(_:);
  v22 = *(v15 + 104);
  v148 = v15 + 104;
  v149 = v22;
  v140 = v14;
  v22(v17);
  v23 = v137;
  v24.super.isa = v137;
  v25.super.isa = sub_10076D19C(v24).super.isa;
  v26 = *(v15 + 8);
  v146 = v15 + 8;
  v147 = v26;
  v26(v17, v14);
  v27 = sub_10075E63C();
  v28 = "inAppDescription";
  if (v27)
  {
    v28 = "chase.Subtitle.Format";
    v29._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v29._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v29._object = (v28 | 0x8000000000000000);
  v178._countAndFlagsBits = 0;
  v178._object = 0xE000000000000000;
  sub_1007622EC(v29, v178);
  v139 = v30;
  v31 = v25.super.isa;
  sub_10075E44C();
  v32 = sub_10076C04C();
  v176 = v32;
  v145 = sub_100434604(&qword_100943230, &type metadata accessor for Feature);
  v177 = v145;
  v33 = sub_10000DB7C(v175);
  LODWORD(v142) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v34 = *(v32 - 8);
  v141 = *(v34 + 104);
  v143 = (v34 + 104);
  v141(v33);
  sub_10076C90C();
  sub_10000CD74(v175);
  v35 = v144;
  v118 = v31;
  sub_10076996C();
  sub_10076994C();
  v139 = *(v153 + 8);
  v153 += 8;
  v36 = v35;
  v37 = v151;
  (v139)(v36, v151);
  sub_10075E4AC();
  v38 = v140;
  v149(v17, v150, v140);
  v39.super.isa = v23;
  isa = sub_10076D19C(v39).super.isa;
  v147(v17, v38);
  sub_10076BB6C();
  v41 = isa;
  sub_10075E43C();
  v173 = v32;
  v174 = v145;
  v42 = sub_10000DB7C(v172);
  (v141)(v42, v142, v32);
  sub_10076C90C();
  sub_10000CD74(v172);
  v43 = v144;
  v117 = v41;
  sub_10076996C();
  sub_10076994C();
  (v139)(v43, v37);
  sub_10075E3EC();
  v44 = v140;
  v149(v17, v150, v140);
  v45 = v137;
  v46.super.isa = v137;
  v47 = sub_10076D19C(v46).super.isa;
  v147(v17, v44);
  sub_10075E64C();
  v48 = v47;
  v49.super.isa = v45;
  sub_10075E49C(v49);
  v170 = v32;
  v171 = v145;
  v50 = sub_10000DB7C(v169);
  (v141)(v50, v142, v32);
  sub_10076C90C();
  sub_10000CD74(v169);
  v116 = v48;
  sub_10076996C();
  sub_10076994C();
  (v139)(v43, v151);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v51 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v51 = qword_100944CA0;
  }

  v52 = v131;
  v53 = sub_10000A61C(v131, v51);
  v54 = v130;
  v55 = v138;
  (*(v130 + 16))(v138, v53, v52);
  (*(v54 + 32))(v129, v55, v52);
  sub_1007643EC();
  sub_10076441C();
  v56 = v134;
  swift_allocObject();
  v57 = sub_10076DDBC();
  v168[4] = &protocol witness table for LayoutViewPlaceholder;
  v168[3] = v56;
  v168[0] = v128;
  v167[4] = &protocol witness table for LayoutViewPlaceholder;
  v167[3] = v56;
  v167[0] = v57;
  v115 = v57;
  sub_10000A5D4(&qword_1009426C0);
  v58 = *(sub_10076DB9C() - 8);
  v127 = *(v58 + 72);
  v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v113 = 4 * v127;
  v60 = swift_allocObject();
  v114 = v60;
  *(v60 + 16) = xmmword_100785C70;
  v61 = v60 + v59;

  sub_10075E3BC();
  v165 = &type metadata for CGFloat;
  v166 = &protocol witness table for CGFloat;
  v164[0] = v62;
  sub_10075E47C();
  v112 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v63 = v154;
  v64 = *(v154 + 104);
  v134 = v154 + 104;
  v138 = v64;
  v65 = v119;
  v64();
  v66 = sub_10000A5D4(&unk_100963750);
  v67 = *(v155 + 72);
  v139 = *(v155 + 80);
  v140 = v66;
  v68 = v155;
  v132 = (v139 + 32) & ~v139;
  v152 = 2 * v67;
  v153 = 3 * v67;
  v151 = v67;
  v69 = swift_allocObject();
  v150 = xmmword_100783C60;
  *(v69 + 16) = xmmword_100783C60;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  *&v159 = v69;
  v148 = sub_100434604(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v147 = sub_10000A5D4(&unk_100963760);
  v149 = sub_100016EDC();
  v71 = v120;
  v70 = v121;
  sub_1007712CC();
  LODWORD(v146) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v72 = v156;
  v144 = *(v156 + 104);
  v145 = v156 + 104;
  v73 = v122;
  v74 = v136;
  v144(v122);
  v133 = v61;
  sub_10076DB8C();
  v75 = *(v72 + 8);
  v156 = v72 + 8;
  v143 = v75;
  v75(v73, v74);
  v76 = *(v68 + 8);
  v155 = v68 + 8;
  v142 = v76;
  v76(v71, v70);
  v77 = *(v63 + 8);
  v154 = v63 + 8;
  v141 = v77;
  (v77)(v65, v135);
  sub_10000CFBC(v162, &unk_100943240);
  sub_10000CD74(v164);
  v78 = v176;
  v79 = v177;
  v80 = sub_10000CF78(v175, v176);
  v165 = v78;
  v166 = *(v79 + 8);
  v81 = sub_10000DB7C(v164);
  (*(*(v78 - 8) + 16))(v81, v80, v78);
  sub_10075E41C();
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  v126 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  (v138)(v65);
  v82 = swift_allocObject();
  *(v82 + 16) = v150;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v158 = v82;
  sub_1007712CC();
  v83 = v136;
  (v144)(v73, v146, v136);
  v84 = v127;
  sub_10076DB8C();
  v85 = v83;
  v143(v73, v83);
  v142(v71, v70);
  v86 = v135;
  (v141)(v65, v135);
  sub_10000CFBC(&v159, &unk_100943240);
  sub_10000CD74(v162);
  sub_10000CD74(v164);
  v111 = 2 * v84;
  v87 = v173;
  v88 = v174;
  v89 = sub_10000CF78(v172, v173);
  v165 = v87;
  v166 = *(v88 + 8);
  v90 = sub_10000DB7C(v164);
  (*(*(v87 - 8) + 16))(v90, v89, v87);
  sub_10075E40C();
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  (v138)(v65, v126, v86);
  v91 = swift_allocObject();
  *(v91 + 16) = v150;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v158 = v91;
  sub_1007712CC();
  (v144)(v73, v146, v85);
  v92 = v111;
  sub_10076DB8C();
  v143(v73, v85);
  v142(v71, v70);
  v93 = v86;
  (v141)(v65, v86);
  sub_10000CFBC(&v159, &unk_100943240);
  sub_10000CD74(v162);
  sub_10000CD74(v164);
  v127 += v92;
  v94 = v170;
  v95 = v171;
  v96 = sub_10000CF78(v169, v170);
  v165 = v94;
  v166 = *(v95 + 8);
  v97 = sub_10000DB7C(v164);
  (*(*(v94 - 8) + 16))(v97, v96, v94);
  sub_10075E42C();
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  (v138)(v65, v126, v86);
  v98 = swift_allocObject();
  *(v98 + 16) = v150;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v158 = v98;
  sub_1007712CC();
  v99 = v136;
  (v144)(v73, v146, v136);
  sub_10076DB8C();
  v143(v73, v99);
  v142(v71, v70);
  (v141)(v65, v93);
  sub_10000CFBC(&v159, &unk_100943240);
  sub_10000CD74(v162);
  sub_10000CD74(v164);
  sub_10075E47C();
  v163 = 0;
  memset(v162, 0, sizeof(v162));
  (v138)(v65, v112, v93);
  v100 = swift_allocObject();
  *(v100 + 16) = v150;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  *&v159 = v100;
  sub_1007712CC();
  (v144)(v73, v146, v99);
  sub_10076DB8C();
  v143(v73, v99);
  v142(v71, v70);
  (v141)(v65, v93);
  sub_10000CFBC(v162, &unk_100943240);
  sub_10000CD74(v164);
  v101 = v123;
  sub_10076DB7C();
  sub_10000CD74(v167);
  sub_10000CD74(v168);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1007841E0;
  v103 = v137;
  *(v102 + 32) = v137;
  v104 = v103;
  v105 = sub_10076DEEC();
  v106 = v125;
  sub_10076D2AC();
  v108 = v107;

  (*(v124 + 8))(v101, v106);
  (*(v130 + 8))(v129, v131);
  sub_10000CD74(v169);
  sub_10000CD74(v172);
  sub_10000CD74(v175);
  return v108;
}

double sub_100432954(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v170 = a3;
  v174 = a1;
  v146 = sub_10076DDFC();
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v145 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v142 = &v126 - v7;
  v143 = sub_10076DBAC();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v158 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_10076DB6C();
  v181 = *(v179 - 8);
  __chkstk_darwin(v179);
  v136 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_10076DB5C();
  v182 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_10076DB0C();
  v180 = *(v176 - 8);
  __chkstk_darwin(v176);
  v133 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076DE2C();
  v139 = *(v12 - 8);
  v140 = v12;
  __chkstk_darwin(v12);
  v138 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076443C();
  v156 = *(v14 - 8);
  v157 = v14;
  __chkstk_darwin(v14);
  v161 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v155 = &v126 - v17;
  v175 = sub_10076997C();
  *&v178 = *(v175 - 8);
  __chkstk_darwin(v175);
  v19 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076D1AC();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10075E77C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E6FC();
  sub_10075E73C();
  (*(v25 + 8))(v27, v24);
  v153 = sub_10076DDDC();
  swift_allocObject();
  v154 = sub_10076DDBC();
  sub_10075E3CC();
  LODWORD(v173) = enum case for FontSource.useCase(_:);
  v28 = *(v21 + 104);
  v171 = v21 + 104;
  *&v172 = v28;
  v162 = v20;
  v28(v23);
  v29.super.isa = a3;
  v30.super.isa = sub_10076D19C(v29).super.isa;
  v31 = *(v21 + 8);
  v168 = v21 + 8;
  v169 = v31;
  v31(v23, v20);
  v32 = sub_10075E63C();
  v33 = "inAppDescription";
  if (v32)
  {
    v33 = "chase.Subtitle.Format";
    v34._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v34._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v34._object = (v33 | 0x8000000000000000);
  v209._countAndFlagsBits = 0;
  v209._object = 0xE000000000000000;
  v163 = sub_1007622EC(v34, v209);
  v35 = v30.super.isa;
  sub_10075E44C();
  v36 = sub_10076C04C();
  v207 = v36;
  v167 = sub_100434604(&qword_100943230, &type metadata accessor for Feature);
  v208 = v167;
  v37 = sub_10000DB7C(v206);
  LODWORD(v165) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v38 = *(v36 - 8);
  v164 = *(v38 + 104);
  v166 = v38 + 104;
  v164(v37);
  sub_10076C90C();
  sub_10000CD74(v206);
  v160 = v19;
  v137 = v35;
  sub_10076996C();
  sub_10076994C();
  v39 = *(v178 + 8);
  *&v178 = v178 + 8;
  v163 = v39;
  v40 = v19;
  v41 = v175;
  v39(v40, v175);
  v177 = a2;
  sub_10075E4AC();
  v42 = v162;
  (v172)(v23, v173, v162);
  v43.super.isa = v170;
  isa = sub_10076D19C(v43).super.isa;
  v169(v23, v42);
  sub_10076BB6C();
  v45 = isa;
  sub_10075E43C();
  v204 = v36;
  v205 = v167;
  v46 = sub_10000DB7C(v203);
  (v164)(v46, v165, v36);
  sub_10076C90C();
  sub_10000CD74(v203);
  v47 = v160;
  v132 = v45;
  sub_10076996C();
  sub_10076994C();
  v163(v47, v41);
  sub_10075E3EC();
  v48 = v162;
  (v172)(v23, v173, v162);
  v49 = v170;
  v50.super.isa = v170;
  v51 = sub_10076D19C(v50).super.isa;
  v169(v23, v48);
  sub_10075E64C();
  v52 = v51;
  v53.super.isa = v49;
  sub_10075E49C(v53);
  v201 = v36;
  v202 = v167;
  v54 = sub_10000DB7C(v200);
  (v164)(v54, v165, v36);
  sub_10076C90C();
  sub_10000CD74(v200);
  v131 = v52;
  sub_10076996C();
  sub_10076994C();
  v163(v47, v175);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v55 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v55 = qword_100944CA0;
  }

  v56 = v157;
  v57 = sub_10000A61C(v157, v55);
  v58 = v156;
  v59 = v161;
  (*(v156 + 16))(v161, v57, v56);
  (*(v58 + 32))(v155, v59, v56);
  sub_1007643EC();
  sub_10076441C();
  v60 = v153;
  swift_allocObject();
  v130 = sub_10076DDBC();
  v199[5] = v154;
  v199[4] = &protocol witness table for LayoutViewPlaceholder;
  v199[3] = v60;
  v199[0] = v130;

  sub_10075E3FC();
  sub_10000CF78(v196, v197);
  sub_10076D41C();
  sub_10075E3BC();
  v151 = sub_10076DEDC();
  v152 = sub_10000A5D4(&unk_100942870);
  v61 = swift_allocObject();
  v178 = xmmword_1007841E0;
  *(v61 + 16) = xmmword_1007841E0;
  *(v61 + 32) = v49;
  v129 = v49;
  v62 = sub_10076DEEC();
  sub_10076C8FC();

  sub_10000CD74(v196);
  sub_10000A5D4(&qword_1009426C0);
  v63 = *(sub_10076DB9C() - 8);
  v149 = *(v63 + 72);
  v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v65 = swift_allocObject();
  v128 = v65;
  *(v65 + 16) = xmmword_100788B20;
  v164 = (v65 + v64);
  sub_10000CF78(v206, v207);
  sub_10076D26C();
  sub_10075E41C();
  v192 = 0;
  v191 = 0u;
  v190 = 0u;
  LODWORD(v150) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v66 = v180;
  v67 = *(v180 + 104);
  v148 = v180 + 104;
  v159 = v67;
  v68 = v133;
  v67(v133);
  v69 = sub_10000A5D4(&unk_100963750);
  v70 = *(v182 + 72);
  v160 = *(v182 + 80);
  v161 = v69;
  v147 = (v160 + 32) & ~v160;
  v174 = 2 * v70;
  v175 = 3 * v70;
  v173 = v70;
  v71 = swift_allocObject();
  v172 = xmmword_100783C60;
  *(v71 + 16) = xmmword_100783C60;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v187 = v71;
  v170 = sub_100434604(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v169 = sub_10000A5D4(&unk_100963760);
  v171 = sub_100016EDC();
  v72 = v134;
  v73 = v135;
  sub_1007712CC();
  LODWORD(v168) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v74 = v181;
  v75 = *(v181 + 104);
  v166 = v181 + 104;
  v167 = v75;
  v76 = v136;
  v77 = v179;
  v75(v136);
  sub_10076DB8C();
  v78 = *(v74 + 8);
  v181 = v74 + 8;
  v165 = v78;
  v78(v76, v77);
  v79 = *(v182 + 8);
  v182 += 8;
  v163 = v79;
  v79(v72, v73);
  v80 = *(v66 + 8);
  v180 = v66 + 8;
  v162 = v80;
  v81 = v176;
  v80(v68, v176);
  sub_10000CFBC(&v190, &unk_100943240);
  sub_10000CD74(v193);
  sub_10000CD74(v196);
  v82 = v204;
  v83 = v205;
  v84 = sub_10000CF78(v203, v204);
  v197 = v82;
  v198 = v83[1];
  v85 = sub_10000DB7C(v196);
  (*(*(v82 - 8) + 16))(v85, v84, v82);
  sub_10075E40C();
  v192 = 0;
  v191 = 0u;
  v190 = 0u;
  v159(v68, v150, v81);
  v86 = swift_allocObject();
  *(v86 + 16) = v172;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v187 = v86;
  sub_1007712CC();
  v87 = v179;
  v167(v76, v168, v179);
  v88 = v149;
  sub_10076DB8C();
  v165(v76, v87);
  v163(v72, v73);
  v89 = v68;
  v162(v68, v81);
  sub_10000CFBC(&v190, &unk_100943240);
  sub_10000CD74(v193);
  sub_10000CD74(v196);
  v127 = 2 * v88;
  v90 = v201;
  v91 = v202;
  v92 = sub_10000CF78(v200, v201);
  v197 = v90;
  v198 = v91[1];
  v93 = sub_10000DB7C(v196);
  (*(*(v90 - 8) + 16))(v93, v92, v90);
  sub_10075E42C();
  v192 = 0;
  v191 = 0u;
  v190 = 0u;
  v159(v68, v150, v81);
  v94 = swift_allocObject();
  *(v94 + 16) = v172;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  v187 = v94;
  sub_1007712CC();
  v95 = v179;
  v167(v76, v168, v179);
  v96 = v127;
  sub_10076DB8C();
  v165(v76, v95);
  v163(v72, v73);
  v97 = v176;
  v162(v89, v176);
  sub_10000CFBC(&v190, &unk_100943240);
  sub_10000CD74(v193);
  sub_10000CD74(v196);
  v150 = v96 + v149;
  sub_10075E45C();
  sub_10075E3BC();
  v194 = &type metadata for CGFloat;
  v195 = &protocol witness table for CGFloat;
  v193[0] = v98;
  v159(v89, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v97);
  v99 = swift_allocObject();
  *(v99 + 16) = v172;
  sub_10076DB4C();
  sub_10076DB2C();
  sub_10076DB3C();
  *&v190 = v99;
  sub_1007712CC();
  v100 = v179;
  v167(v76, v168, v179);
  sub_10076DB8C();
  v165(v76, v100);
  v163(v72, v73);
  v162(v89, v97);
  sub_10000CD74(v196);
  sub_10000CFBC(v193, &unk_100943240);
  v101 = v158;
  sub_10076DB7C();
  sub_10075E3BC();
  v102 = swift_allocObject();
  *(v102 + 16) = v178;
  v103 = v129;
  *(v102 + 32) = v129;
  v104 = v103;
  v105 = sub_10076DEEC();
  sub_10076C8FC();

  sub_10075E3BC();
  v106 = swift_allocObject();
  *(v106 + 16) = v178;
  *(v106 + 32) = v104;
  v107 = v104;
  v108 = sub_10076DEEC();
  sub_10076C8FC();

  sub_10075E3BC();
  v109 = swift_allocObject();
  *(v109 + 16) = v178;
  *(v109 + 32) = v107;
  v110 = v107;
  v111 = sub_10076DEEC();
  sub_10076C8FC();

  sub_10075E48C();
  sub_10000CF78(v196, v197);
  sub_10076D41C();
  sub_10000CD74(v196);
  sub_10076D26C();
  v112 = v143;
  v194 = v143;
  v195 = &protocol witness table for VerticalFlowLayout;
  v113 = sub_10000DB7C(v193);
  v114 = v141;
  (*(v141 + 16))(v113, v101, v112);
  sub_10000A570(v196, &v190);
  v189 = &protocol witness table for Double;
  v188 = &type metadata for Double;
  v187 = 0;
  v186 = 0;
  v184 = 0u;
  v185 = 0u;
  v115 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v116 = *(v144 + 104);
  v117 = v146;
  v116(v142, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v146);
  v183[3] = sub_10076D67C();
  v183[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v183);
  sub_10076D66C();
  v116(v145, v115, v117);
  v118 = v138;
  sub_10076DE1C();
  sub_10000CD74(v196);
  (*(v114 + 8))(v158, v112);

  sub_10000CD74(v199);
  v119 = swift_allocObject();
  *(v119 + 16) = v178;
  *(v119 + 32) = v110;
  v120 = v110;
  v121 = sub_10076DEEC();
  sub_100434604(&qword_100955A60, &type metadata accessor for FlankedHorizontalLayout);
  v122 = v140;
  sub_10076D2AC();
  v124 = v123;

  (*(v139 + 8))(v118, v122);
  (*(v156 + 8))(v155, v157);
  sub_10000CD74(v200);
  sub_10000CD74(v203);
  sub_10000CD74(v206);
  return v124;
}

double _s20ProductPageExtension33CondensedInAppPurchaseContentViewC6height2in8asPartOf12CoreGraphics7CGFloatV0F8StoreKit17ItemLayoutContextV_9JetEngine15BaseObjectGraphCtFZ_0()
{
  v0 = sub_10075E77C();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10075E4BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_10076469C();
  __chkstk_darwin(v10 - 8);
  v24 = sub_10076C38C();
  v11 = *(v24 - 8);
  __chkstk_darwin(v24);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E7FC();
  sub_100434604(&qword_1009486F8, &type metadata accessor for InAppPurchaseSearchResult);
  sub_10076332C();
  if (!v25)
  {
    return 0.0;
  }

  v21 = v3;
  v14 = sub_10075E7EC();

  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  sub_10076C32C();
  _s20ProductPageExtension33CondensedInAppPurchaseContentViewC7metrics0F8StoreKit0d6SearchefG10CardLayoutV7MetricsVvpfi_0();
  swift_getKeyPath();
  sub_10076338C();

  v15 = v25;
  sub_10076C2FC();
  if (sub_10077071C())
  {
    sub_10075E6FC();
    sub_10075E72C();
    sub_10075E76C();
    sub_10075E46C();
    v16 = sub_10043142C(v14, v6, v15);

    v17 = *(v4 + 8);
    v18 = v21;
    v17(v6, v21);
    (*(v22 + 8))(v2, v23);
    v17(v9, v18);
  }

  else
  {
    v16 = sub_100432954(v14, v9, v15);

    (*(v4 + 8))(v9, v21);
  }

  (*(v11 + 8))(v13, v24);
  return v16;
}

uint64_t sub_100434604(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10043464C(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_hideAllButton;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_hideAllButton];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_hideAllButton] = a1;
  v6 = a1;

  if (!*&v1[v2])
  {
    v4 = [v1 navigationItem];
    v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_doneButtonItem];
    [v4 setRightBarButtonItem:v5];
  }
}

void sub_1004346FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDataSource) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDelegate) = 0;
  v6 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_collectionViewTableLayout;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_collectionViewTableLayout) = 0;
  v7 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_navigationBarPalettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 50) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 24) = 0u;
  *(v3 + v7) = v8;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_hideAllButton) = 0;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_doneButtonItem) = 0;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_emptyStateView) = 0;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_flowPreviewing) = 0;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_presenter) = a1;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_artworkLoader) = v25;
  sub_10000A5D4(&qword_100957268);
  swift_allocObject();

  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_shelfDataSource) = sub_10049303C(v9);
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_segmentedControlView) = [objc_allocWithZone(type metadata accessor for SegmentedControlView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_searchBar) = [objc_allocWithZone(type metadata accessor for SearchBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = [objc_allocWithZone(type metadata accessor for CollectionViewTableLayout()) init];
  v11 = *(v3 + v6);
  *(v3 + v6) = v10;
  v12 = v10;

  if (v12)
  {

    v13 = sub_10007689C(v12, a2);

    swift_unknownObjectWeakAssign();
    sub_100439208(&qword_100957270, v14, type metadata accessor for PurchasesViewController);
    v15 = v13;
    sub_1007682CC();
    v16 = v15;
    sub_1007682EC();
    v17 = sub_10076FF6C();

    [v16 setTitle:v17];

    *(v16 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle) = 0;
    v18 = [v16 navigationItem];
    [v18 setLargeTitleDisplayMode:2];

    v19 = sub_100439208(&qword_100957278, 255, &type metadata accessor for PurchasesContentPresenter);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = v19;

    v22 = v16;
    v23 = sub_100438F7C(a1, v22, sub_1002C15B8, v21, a2);

    v24 = *&v22[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_flowPreviewing];
    *&v22[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_flowPreviewing] = v23;
  }

  else
  {
    __break(1u);
  }
}

void sub_100434AF4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076593C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v97 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v97 - v12;
  v111.receiver = v1;
  v111.super_class = ObjectType;
  objc_msgSendSuper2(&v111, "viewDidLoad", v11);
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = sub_100016F40(0, &qword_100942F10);
  v17 = sub_100770D2C();
  [v15 setBackgroundColor:v17];

  v18 = [v1 collectionView];
  if (!v18)
  {
    return;
  }

  v104 = v13;
  v105 = v9;
  v101 = v6;
  v102 = v3;
  v107 = v4;
  v108 = v16;
  v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_presenter];
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_shelfDataSource];
  v106 = v18;
  v21 = [v1 snapshotPageTraitEnvironment];
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
  v23 = type metadata accessor for PurchasesCollectionViewDataSource();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_presenter] = v19;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_shelfDataSource] = v20;

  v25 = [v21 snapshotPageTraitEnvironment];
  *&v24[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_pageTraits] = v25;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_objectGraph] = v22;
  v110.receiver = v24;
  v110.super_class = v23;

  v26 = objc_msgSendSuper2(&v110, "init");
  swift_unknownObjectRelease();
  v27 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDataSource;
  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDataSource] = v26;

  v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_artworkLoader];
  v30 = [v1 snapshotPageTraitEnvironment];
  v31 = type metadata accessor for PurchasesCollectionViewDelegate();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_didScrollHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_objectGraph] = v22;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_presenter] = v19;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_shelfDataSource] = v20;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_artworkLoader] = v29;
  v103 = v19;

  v34 = [v30 snapshotPageTraitEnvironment];
  *&v32[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_pageTraits] = v34;
  v109.receiver = v32;
  v109.super_class = v31;
  v35 = objc_msgSendSuper2(&v109, "init");
  swift_unknownObjectRelease();
  v36 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDelegate;
  v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDelegate] = v35;
  v38 = v35;

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = &v38[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_didScrollHandler];
  v41 = *&v38[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_didScrollHandler];
  *v40 = sub_10043926C;
  v40[1] = v39;

  sub_1000167E0(v41);

  v42 = *&v1[v36];
  v43 = v42;
  sub_1000743FC(v42);
  v44 = *&v1[v27];
  v45 = v44;
  sub_100074410(v44);
  v46 = v106;
  v47 = v106;
  v48 = sub_100770D2C();
  [v47 setBackgroundColor:v48];

  [v47 setAlwaysBounceVertical:1];
  v49 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_collectionViewTableLayout;
  v50 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_collectionViewTableLayout];
  if (!v50)
  {
    goto LABEL_18;
  }

  [v50 setSeparatorInset:{0.0, 92.0, 0.0, 20.0}];
  v51 = *&v1[v49];
  v52 = v102;
  if (!v51)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  [v51 _setShowsAdditionalSeparators:0];
  sub_10000A5D4(&qword_100949720);
  v53 = sub_10076B5BC();
  v54 = *(v53 - 8);
  v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_100783DD0;
  (*(v54 + 104))(v56 + v55, enum case for Shelf.ContentType.purchasesLockup(_:), v53);
  v57 = sub_10017A63C(v56);
  swift_setDeallocating();
  (*(v54 + 8))(v56 + v55, v53);
  swift_deallocClassInstance();
  v58 = v47;
  sub_100439278(v57, v46);

  sub_100439688(v46);

  sub_1007682DC();
  v59 = v104;
  sub_10076829C();
  v60 = v107;
  v61 = v105;
  (*(v107 + 104))(v105, enum case for PurchasesContentMode.hidden(_:), v52);
  sub_100439208(&qword_100957298, 255, &type metadata accessor for PurchasesContentMode);
  LOBYTE(v56) = sub_10076FF1C();
  v64 = *(v60 + 8);
  v62 = v60 + 8;
  v63 = v64;
  v64(v61, v52);
  v64(v59, v52);
  if ((v56 & 1) == 0)
  {
    v99 = v58;
    v100 = v63;
    v65 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_segmentedControlView];
    [v1 pageMarginInsets];
    [v65 setLayoutMargins:?];
    sub_1004356B8();
    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v108 = OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentedControl;
    v67 = *&v65[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentedControl];

    [v67 removeTarget:v65 action:"selectedIndexChangedIn:" forControlEvents:4096];
    v68 = &v65[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentDidChangeHandler];
    v69 = *&v65[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentDidChangeHandler];
    *v68 = sub_1004398C4;
    v68[1] = v66;
    swift_retain_n();
    sub_1000167E0(v69);

    v70 = v67;
    v71 = v65;
    [v70 addTarget:v65 action:"selectedIndexChangedIn:" forControlEvents:4096];

    v72 = sub_10076824C();
    v73 = *(v72 + 16);
    if (v73)
    {
      v97 = v1;
      v98 = v72;
      v74 = *(v107 + 16);
      v75 = v72 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
      v105 = *(v107 + 72);
      v106 = v74;
      v107 = v62;
      v77 = v100;
      v76 = v101;
      do
      {
        (v106)(v76, v75, v52);
        v78 = v71;
        v79 = *&v71[v108];
        sub_10076590C();
        v80 = sub_10076FF6C();

        v81 = sub_10076591C();
        v77(v76, v52);
        [v79 insertSegmentWithTitle:v80 atIndex:v81 animated:0];

        v71 = v78;
        v75 += v105;
        --v73;
      }

      while (v73);

      v1 = v97;
    }

    else
    {
    }

    v82 = *&v71[v108];
    v83 = v104;
    sub_10076829C();
    v84 = sub_10076591C();
    v100(v83, v52);
    [v82 setSelectedSegmentIndex:v84];

    v58 = v99;
  }

  v85 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_searchBar];
  v112._countAndFlagsBits = 0x484352414553;
  v112._object = 0xE600000000000000;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  sub_1007622EC(v112, v113);
  v86 = sub_10076FF6C();

  [v85 setPlaceholder:v86];

  [v85 setHidden:1];
  [v85 setDelegate:v1];
  v87 = [objc_allocWithZone(UIImage) init];
  [v85 setBackgroundImage:v87];

  v88 = [v1 view];
  if (!v88)
  {
    goto LABEL_20;
  }

  v89 = v88;
  [v88 addSubview:v85];

  v90 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_flowPreviewing];
  if (v90)
  {
    v91 = objc_allocWithZone(UIContextMenuInteraction);
    v92 = v90;
    v93 = [v91 initWithDelegate:v92];
    [v58 addInteraction:v93];
  }

  v94 = [v1 navigationItem];
  v95 = [v94 rightBarButtonItem];

  v96 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_doneButtonItem];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_doneButtonItem] = v95;
}

void sub_1004355C8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong view];
    if (v4)
    {
      v5 = v4;
      [v4 endEditing:1];

      v6 = *&v3[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_searchBar];
      [a1 contentOffset];
      [v6 frame];
      CGRectGetHeight(v7);
      [v6 frame];
      [v6 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004356B8()
{
  v1 = v0;
  v2 = [v0 parentViewController];
  v3 = [v2 navigationController];

  if (!v3 || (v3, (v4 = [v1 parentViewController]) == 0) || (v5 = v4, v6 = objc_msgSend(v4, "navigationItem"), v5, (v7 = v6) == 0))
  {
    v7 = [v1 navigationItem];
  }

  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_navigationBarPalettePresenter];
  v9 = v7;
  sub_1000DF9B0(v9, 0, 1);

  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_segmentedControlView];
  v50[3] = type metadata accessor for SegmentedControlView();
  v50[4] = &protocol witness table for UIView;
  v50[0] = v10;
  sub_10000A570(v50, v49);
  sub_10000A570(v49, v48);
  v11 = swift_allocObject();
  sub_10003F19C(v49, v11 + 16);
  v12 = v10;
  sub_10000CD74(v50);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_10000CD74(v48);
    return;
  }

  v14 = Strong;
  v15 = *(v8 + 24);
  if (v15)
  {
    [v15 setHidden:1];
  }

  v16 = v12;
  [v16 setHidden:0];
  v17 = [v16 superview];
  v18 = [v14 contentView];
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      sub_100016F40(0, &qword_1009441F0);
      v20 = sub_100770EEC();

      if (v20)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v19 = v17;
  }

  else if (!v18)
  {
    goto LABEL_18;
  }

LABEL_17:
  v21 = [v14 contentView];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v16 setFrame:{v23, v25, v27, v29}];
  [v16 setAutoresizingMask:18];
  v30 = [v14 contentView];
  [v30 addSubview:v16];

LABEL_18:
  v31 = *(v8 + 24);
  *(v8 + 24) = v10;
  v32 = v16;

  if (*(v8 + 65))
  {
    v33 = [v14 contentView];
    sub_100016F40(0, &qword_1009441F0);
    sub_10076422C();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v51.origin.x = v35;
    v51.origin.y = v37;
    v51.size.width = v39;
    v51.size.height = v41;
    CGRectGetWidth(v51);
    v42 = [v14 contentView];
    sub_10000CF78(v48, v48[3]);
    sub_10076D2AC();
    v44 = v43;

    [v14 setPreferredHeight:v44];
    [v14 preferredHeight];
    [v14 setMinimumHeight:?];
  }

  v45 = *(v8 + 32);
  v46 = *(v8 + 40);
  v47 = *(v8 + 48);
  *(v8 + 32) = sub_100275A3C;
  *(v8 + 40) = v11;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  sub_1000E0788(v45, v46, v47);

  sub_10000CD74(v48);
}

void sub_100435AF0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100435B4C(a1);
  }
}

id sub_100435B4C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10076593C();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  [result endEditing:1];

  v11 = [a1 selectedSegmentIndex];
  v12 = enum case for PurchasesContentMode.all(_:);
  v13 = *(v5 + 104);
  v13(v8, enum case for PurchasesContentMode.all(_:), v4);
  v14 = sub_10076591C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  if (v14 == v11 || (v12 = enum case for PurchasesContentMode.notOnDevice(_:), v13(v8, enum case for PurchasesContentMode.notOnDevice(_:), v4), v16 = sub_10076591C(), v15(v8, v4), v16 == v11))
  {
    sub_10043464C(0);
LABEL_5:
    v13(v8, v12, v4);
    return sub_1007682AC();
  }

  v12 = enum case for PurchasesContentMode.hidden(_:);
  v13(v8, enum case for PurchasesContentMode.hidden(_:), v4);
  v17 = sub_10076591C();
  result = (v15)(v8, v4);
  if (v17 == v11)
  {
    v37._object = 0x80000001007E7BC0;
    v37._countAndFlagsBits = 0xD000000000000014;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    sub_1007622EC(v37, v38);
    v36 = ObjectType;
    v35[0] = v2;
    ObjectType = v2;
    v18 = sub_10076FF6C();

    v19 = v36;
    if (v36)
    {
      v20 = sub_10000CF78(v35, v36);
      v32[1] = v32;
      v33 = v18;
      v21 = *(v19 - 8);
      v22 = __chkstk_darwin(v20);
      v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24, v22);
      v25 = sub_10077165C();
      (*(v21 + 8))(v24, v19);
      v18 = v33;
      sub_10000CD74(v35);
    }

    else
    {
      v25 = 0;
    }

    v26 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v18 style:0 target:v25 action:"unhideAll"];

    swift_unknownObjectRelease();
    v27 = ObjectType;
    sub_10043464C(v26);
    v28 = [v27 navigationItem];
    v29 = *&v27[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_hideAllButton];
    [v28 setRightBarButtonItem:v29];

    v30 = [v27 navigationItem];
    v31 = [v30 rightBarButtonItem];

    [v31 setEnabled:1];
    goto LABEL_5;
  }

  return result;
}

void sub_100436034(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_100760BDC();
}

void sub_1004360BC(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_100760BDC();
}

void sub_10043612C()
{
  v49.receiver = v0;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_searchBar];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v50.origin.x = v5;
  v50.origin.y = v7;
  v50.size.width = v9;
  v50.size.height = v11;
  CGRectGetWidth(v50);
  v12 = [v0 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;

  [v1 sizeThatFits:{v15, v17}];
  [v1 frame];
  [v1 setFrame:?];
  v18 = [v0 collectionView];
  if (v18)
  {
    v19 = v18;
    [v1 frame];
    Height = CGRectGetHeight(v51);
    [v19 contentInset];
    [v19 setContentInset:Height];
  }

  v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_emptyStateView];
  if (v21)
  {
    v22 = v21;
    v23 = [v0 view];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 safeAreaLayoutGuide];

      [v25 layoutFrame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      [v0 pageMarginInsets];
      v36 = sub_100102A30(v27, v29, v31, v33, v34, v35);
      v38 = v37;
      v40 = v39;
      v42 = v41;
      [v1 frame];
      MaxY = CGRectGetMaxY(v52);
      v53.origin.x = v36;
      v53.origin.y = v38;
      v53.size.width = v40;
      v53.size.height = v42;
      v44 = CGRectGetHeight(v53);
      [v1 frame];
      v45 = v44 - CGRectGetMaxY(v54);
      v46 = v22;
      [v0 pageMarginInsets];
      v48 = v47;
      v55.origin.x = v36;
      v55.origin.y = v38;
      v55.size.width = v40;
      v55.size.height = v42;
      [v46 setFrame:{v48, MaxY, CGRectGetWidth(v55), v45}];

      return;
    }

LABEL_11:
    __break(1u);
  }
}

void sub_100436474(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v35.receiver = v4;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v4[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = &selRef_initWithTabBarSystemItem_tag_;
  v11 = [v4 traitCollection];
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = a2;
  v14[1] = a3;
  *&v13[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v34.receiver = v13;
  v34.super_class = v12;
  v15 = &off_100911000;
  v16 = objc_msgSendSuper2(&v34, "init");
  v17 = [v4 collectionView];
  v18 = [v16 snapshotPageTraitEnvironment];
  *&v9[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_pageTraits] = v18;
  v19 = swift_unknownObjectRelease();
  if (v17)
  {
    v31[1] = v31;
    v32 = *(*&v9[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_shelfDataSource] + 24);
    __chkstk_darwin(v19);
    v20 = v17;

    sub_10000A5D4(&unk_1009520B0);
    sub_1001C9F18();
    v15 = &off_100911000;
    sub_10076F35C();
    v10 = &selRef_initWithTabBarSystemItem_tag_;
  }

  else
  {
  }

  v21 = *&v4[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  v23 = [v4 v10[274]];
  v24 = objc_allocWithZone(v12);
  v25 = &v24[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v25 = a2;
  v25[1] = a3;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v23;
  v33.receiver = v24;
  v33.super_class = v12;
  v26 = objc_msgSendSuper2(&v33, v15[185]);
  v27 = [v4 collectionView];
  v28 = [v26 snapshotPageTraitEnvironment];
  *&v22[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_pageTraits] = v28;
  v29 = swift_unknownObjectRelease();
  if (v27)
  {
    v32 = *(*&v22[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_shelfDataSource] + 24);
    __chkstk_darwin(v29);
    v30 = v27;

    sub_10000A5D4(&unk_1009520B0);
    sub_1001C9F18();
    sub_10076F35C();
  }

  else
  {
  }
}

void sub_1004368C4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076593C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v34 - v11;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, "traitCollectionDidChange:", a1, v10);
  sub_10076829C();
  (*(v6 + 104))(v8, enum case for PurchasesContentMode.hidden(_:), v5);
  sub_100439208(&qword_100957298, 255, &type metadata accessor for PurchasesContentMode);
  LOBYTE(a1) = sub_10076FF1C();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v12, v5);
  if ((a1 & 1) == 0)
  {
    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_segmentedControlView];
    [v2 pageMarginInsets];
    [v14 setLayoutMargins:?];
  }

  v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = &selRef__setPocketInsets_;
  v18 = [v2 snapshotPageTraitEnvironment];
  v19 = [v2 collectionView];
  v20 = [v18 snapshotPageTraitEnvironment];
  *&v16[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_pageTraits] = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v21 = *&v16[OBJC_IVAR____TtC20ProductPageExtension31PurchasesCollectionViewDelegate_shelfDataSource];
  v22 = [v20 snapshotPageTraitEnvironment];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v19 reloadData];
  if (v19)
  {
    v34[1] = v34;
    v35 = *(v21 + 24);
    __chkstk_darwin(v23);
    v34[-2] = v19;
    v34[-1] = v21;
    v24 = v19;

    sub_10000A5D4(&unk_1009520B0);
    sub_1001C9F18();
    v17 = &selRef__setPocketInsets_;
    sub_10076F35C();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v25 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v2 v17[23]];
  v28 = [v2 collectionView];
  v29 = [v27 v17[23]];
  *&v26[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v30 = *&v26[OBJC_IVAR____TtC20ProductPageExtension33PurchasesCollectionViewDataSource_shelfDataSource];
  v31 = [v29 v17[23]];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v32 = [v28 reloadData];
  if (v28)
  {
    v35 = *(v30 + 24);
    __chkstk_darwin(v32);
    v34[-2] = v28;
    v34[-1] = v30;
    v33 = v28;

    sub_10000A5D4(&unk_1009520B0);
    sub_1001C9F18();
    sub_10076F35C();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_100437120()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  if (sub_10076827C())
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
    sub_10076857C();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      sub_10076856C();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_10076DE3C();
    v8 = objc_allocWithZone(sub_10076DE6C());
    v9 = sub_10076DE5C();
    v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
    sub_10076857C();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      sub_10076856C();
      return;
    }
  }

  __break(1u);
}

void sub_100437320()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  if (v2)
  {
    sub_10076DE6C();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_10076857C();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_10076856C();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100437408()
{
  v1 = v0;
  sub_10076DF3C();
  sub_100439208(&qword_100957290, 255, &type metadata accessor for PurchasesContentPresenter);
  swift_errorRetain();

  v2 = sub_10076DEFC();
  v3 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_overlayViewController];
  sub_10076857C();

  v5 = *&v1[v3];
  *&v1[v3] = v2;
  v8 = v2;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];

    sub_10076856C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100437588()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_emptyStateView;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_emptyStateView];
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

  v5 = [v1 collectionView];
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:0];
  }

  sub_1000DFBB4();
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_searchBar] setHidden:0];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100439200;
  *(v9 + 24) = v8;
  v12[4] = sub_1000B9014;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1001C5148;
  v12[3] = &unk_1008955C0;
  v10 = _Block_copy(v12);

  [v7 performWithoutAnimation:v10];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_10043777C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    if (!v2)
    {
      __break(1u);
      return;
    }

    [v2 reloadData];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionView];

    if (v5)
    {
      [v5 layoutIfNeeded];
    }
  }
}

void sub_10043785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = [v6 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setHidden:1];
  }

  v16 = *&v7[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_navigationBarPalettePresenter];
  if (a5)
  {
    sub_1000DFBB4();
  }

  else
  {
    v17 = *(v16 + 24);
    if (v17)
    {
      if (*(v16 + 65) == 1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          [v17 setHidden:1];
          [v19 setMinimumHeight:0.0];
          [v19 setPreferredHeight:0.0];

          *(v16 + 65) = 0;
        }
      }
    }
  }

  [*&v7[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_searchBar] setHidden:(a6 & 1) == 0];
  v20 = objc_allocWithZone(type metadata accessor for EmptyStateView());

  v21 = sub_10070982C(a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_emptyStateView;
  v23 = *&v7[OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_emptyStateView];
  if (v23)
  {
    [v23 removeFromSuperview];
    v24 = *&v7[v22];
  }

  else
  {
    v24 = 0;
  }

  *&v7[v22] = v21;
  v25 = v21;

  [v25 setUserInteractionEnabled:0];
  v26 = [v7 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  [v26 addSubview:v25];

  v28 = [v7 view];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v29 = v28;
  [v28 setNeedsLayout];
}

void sub_100437A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = a2;
    *(v13 + 3) = a3;
    *(v13 + 4) = v3;
    (*(v8 + 32))(&v13[v12], aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100439170;
    *(v14 + 24) = v13;
    aBlock[4] = sub_1000349FC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001C5148;
    aBlock[3] = &unk_100895548;
    v15 = _Block_copy(aBlock);
    v16 = v3;

    [v11 performBatchUpdates:v15 completion:0];
    _Block_release(v15);
  }
}

void sub_100437CA0(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  v6 = [a3 collectionView];
  if (v6)
  {
    v7 = v6;
    sub_10000A5D4(&qword_100944C48);
    v8 = sub_10075E11C();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100783DD0;
    (*(v9 + 16))(v11 + v10, a4, v8);
    isa = sub_1007701AC().super.isa;

    [v7 deleteItemsAtIndexPaths:isa];
  }
}

void sub_100437E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10075E11C();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = sub_10076F13C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016E2C(a2, v103, &unk_1009434C0);
  if (v104)
  {
    sub_100016F40(0, &qword_1009441F0);
    if (swift_dynamicCast())
    {
      v21 = v72;
      [v21 bounds];
      LOBYTE(v97) = 1;
      *&v79 = v21;
      *(&v79 + 1) = v22;
      *&v80 = v23;
      *(&v80 + 1) = v24;
      *&v81 = v25;
      BYTE8(v81) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v82 = _Q0;
      v83 = _Q0;
      v84 = 15;
      sub_100016F40(0, &qword_1009471F0);
      *v20 = sub_10077068C();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = sub_10076F16C();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_10094FFF8;
        v88 = xmmword_100950008;
        v89 = xmmword_100950018;
        v85 = xmmword_10094FFD8;
        v86 = xmmword_10094FFE8;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_10094FFD8;
        v98 = xmmword_10094FFE8;
        v100 = xmmword_100950008;
        v101 = xmmword_100950018;
        v90 = qword_100950028;
        v96 = v84;
        v102 = qword_100950028;
        v99 = xmmword_10094FFF8;
        sub_100016E2C(&v85, &v73, &unk_1009505F0);
        xmmword_10094FFF8 = v93;
        xmmword_100950008 = v94;
        xmmword_100950018 = v95;
        qword_100950028 = v96;
        xmmword_10094FFD8 = v91;
        xmmword_10094FFE8 = v92;
        sub_10000CFBC(&v97, &unk_1009505F0);
        v32 = *&v71[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
        v33 = sub_10000A5D4(&unk_1009428E0);
        sub_1001F9960(&v79, &v73);
        sub_10076F5AC();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10000CFBC(v16, &unk_100943200);
        }

        else
        {
          sub_100263BF0(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_10094FFF8;
        v76 = xmmword_100950008;
        v77 = xmmword_100950018;
        v78 = qword_100950028;
        v73 = xmmword_10094FFD8;
        v74 = xmmword_10094FFE8;
        xmmword_10094FFD8 = v85;
        xmmword_10094FFE8 = v86;
        xmmword_10094FFF8 = v87;
        xmmword_100950008 = v88;
        xmmword_100950018 = v89;
        qword_100950028 = v90;
        sub_10000CFBC(&v73, &unk_1009505F0);
        sub_1001F99BC(&v79);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v66 = a1;
  }

  else
  {
    v66 = a1;
    sub_10000CFBC(v103, &unk_1009434C0);
  }

  v35 = [v71 collectionView];
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  v37 = [v35 indexPathsForSelectedItems];

  if (!v37)
  {
LABEL_20:
    v61 = *&v71[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
    v62 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10000CFBC(v11, &unk_100943200);
    }

    else
    {
      sub_100263BF0(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = sub_1007701BC();

  if (!*(v39 + 16))
  {

    goto LABEL_20;
  }

  v40 = v69;
  (*(v69 + 16))(v6, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v38);

  v41 = *(v40 + 32);
  v42 = v68;
  v41(v68, v6, v38);
  v43 = [v71 collectionView];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = v42;
  isa = sub_10075E02C().super.isa;
  v47 = [v44 cellForItemAtIndexPath:isa];

  if (!v47)
  {
    (*(v69 + 8))(v45, v70);
    goto LABEL_20;
  }

  v48 = v47;
  [v48 bounds];
  LOBYTE(v97) = 1;
  *&v79 = v47;
  *(&v79 + 1) = v49;
  *&v80 = v50;
  *(&v80 + 1) = v51;
  *&v81 = v52;
  BYTE8(v81) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v82 = _Q0;
  v83 = _Q0;
  v84 = 15;
  sub_100016F40(0, &qword_1009471F0);
  *v20 = sub_10077068C();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = sub_10076F16C();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_10094FFF8;
  v88 = xmmword_100950008;
  v89 = xmmword_100950018;
  v85 = xmmword_10094FFD8;
  v86 = xmmword_10094FFE8;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_10094FFD8;
  v98 = xmmword_10094FFE8;
  v100 = xmmword_100950008;
  v101 = xmmword_100950018;
  v90 = qword_100950028;
  v96 = v84;
  v102 = qword_100950028;
  v99 = xmmword_10094FFF8;
  sub_100016E2C(&v85, &v73, &unk_1009505F0);
  xmmword_10094FFF8 = v93;
  xmmword_100950008 = v94;
  xmmword_100950018 = v95;
  qword_100950028 = v96;
  xmmword_10094FFD8 = v91;
  xmmword_10094FFE8 = v92;
  sub_10000CFBC(&v97, &unk_1009505F0);
  v55 = *&v71[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
  v56 = sub_10000A5D4(&unk_1009428E0);
  sub_1001F9960(&v79, &v73);
  v57 = v67;
  sub_10076F5AC();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10000CFBC(v57, &unk_100943200);
  }

  else
  {
    sub_100263BF0(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_10094FFF8;
  v76 = xmmword_100950008;
  v77 = xmmword_100950018;
  v78 = qword_100950028;
  v73 = xmmword_10094FFD8;
  v74 = xmmword_10094FFE8;
  xmmword_10094FFD8 = v85;
  xmmword_10094FFE8 = v86;
  xmmword_10094FFF8 = v87;
  xmmword_100950008 = v88;
  xmmword_100950018 = v89;
  qword_100950028 = v90;
  sub_10000CFBC(&v73, &unk_1009505F0);
  sub_1001F99BC(&v79);

  (*(v69 + 8))(v60, v64);
}

void sub_10043886C()
{

  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension23PurchasesViewController_flowPreviewing);
}

void sub_100438B70(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_10000A5D4(&qword_1009572A0);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = sub_10075E11C();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_100016F40(0, &qword_10094D1D0);
  v11 = sub_1007701BC();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v12 = sub_10077158C();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v28 = (v3 + 8);
    v29 = (v5 + 32);
    v27 = (v5 + 8);
    v30 = v11 & 0xC000000000000001;
    v15 = v33;
    do
    {
      if (v14)
      {
        v16 = sub_10077149C();
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v17 && (v18 = [v37 indexPathForCell:v17]) != 0)
      {
        v19 = v32;
        v20 = v18;
        sub_10075E06C();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = sub_10075E0AC();
        sub_10077140C();
        v23 = v34;
        sub_10076FDEC();
        sub_10076F9BC();

        v24 = v23;
        v14 = v30;
        (*v28)(v24, v35);
        v25 = v22;
        v11 = v21;
        (*v27)(v25, v15);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

uint64_t sub_100438F04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100438F3C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100438F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100439208(&qword_100957278, 255, &type metadata accessor for PurchasesContentPresenter);
  v9 = sub_10000A5D4(&unk_100957280);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_10094A6C8];
  *&v10[qword_10094A6C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_10094A6C0];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_10094A6D8] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_1004390AC()
{
  v1 = sub_10075E11C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100439170()
{
  v1 = *(sub_10075E11C() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_100437CA0(v2, v3, v4, v5);
}

uint64_t sub_1004391E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100439208(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100439278(uint64_t a1, void *a2)
{
  v44 = a2;
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v33[-v7];
  __chkstk_darwin(v9);
  v40 = &v33[-v10];
  v11 = sub_10076F09C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100016F40(0, &qword_1009471F0);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  v15 = sub_1007706BC();
  v16 = v14;
  v17 = v8;
  (*(v12 + 8))(v16, v11);
  sub_1004AF54C(v15, a1);

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
      if (!sub_10041329C())
      {
        goto LABEL_4;
      }
    }

    if (v44)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_10076B59C();
      v31 = v17;
      v32 = sub_10076FF6C();

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

void sub_100439688(void *a1)
{
  if (a1)
  {
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = UICollectionElementKindSectionHeader;
    sub_1007708FC();
    v4 = sub_10076FF6C();

    [a1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v3 withReuseIdentifier:v4];

    type metadata accessor for InteractiveTitleHeaderView();
    v5 = swift_getObjCClassFromMetadata();
    v6 = v3;
    sub_1007708FC();
    v7 = sub_10076FF6C();

    [a1 registerClass:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:v7];

    type metadata accessor for InfiniteScrollFooterView();
    v8 = swift_getObjCClassFromMetadata();
    v9 = UICollectionElementKindSectionFooter;
    sub_1007708FC();
    v10 = sub_10076FF6C();

    [a1 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

    sub_100016F40(0, &qword_100950650);
    v11 = swift_getObjCClassFromMetadata();
    v12 = sub_10076FF6C();
    v13 = sub_10076FF6C();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

    v14 = sub_10076FF6C();
    v15 = sub_10076FF6C();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v14 withReuseIdentifier:v15];
  }
}

uint64_t sub_1004398CC()
{
  sub_10000CD74(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10043999C()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for AlertActionHeaderViewController();
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v1 = sub_10076FF6C();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v3 = [objc_allocWithZone(UIImageView) initWithImage:v2];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      [v5 addSubview:v6];

      v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31AlertActionHeaderViewController_imageView];
      *&v0[OBJC_IVAR____TtC20ProductPageExtension31AlertActionHeaderViewController_imageView] = v6;
      v8 = v6;

      sub_10000A5D4(&unk_100942870);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100785D70;
      v10 = objc_opt_self();
      *(v9 + 32) = [v10 secondaryLabelColor];
      *(v9 + 40) = [v10 clearColor];
      sub_100016F40(0, &qword_100942F10);
      isa = sub_1007701AC().super.isa;

      v12 = [objc_opt_self() configurationWithPaletteColors:isa];

      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v8 setPreferredSymbolConfiguration:v12];
      [v8 setContentMode:1];

      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10079B610;
      v14 = [v0 view];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 heightAnchor];

        v17 = [v16 constraintEqualToConstant:80.0];
        *(v13 + 32) = v17;
        v18 = [v8 topAnchor];

        v19 = [v0 view];
        if (v19)
        {
          v20 = v19;
          v40 = v12;
          v21 = [v19 topAnchor];

          v22 = [v18 constraintEqualToAnchor:v21 constant:20.0];
          *(v13 + 40) = v22;
          v23 = [v8 bottomAnchor];

          v24 = [v0 view];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 bottomAnchor];

            v27 = [v23 constraintEqualToAnchor:v26];
            *(v13 + 48) = v27;
            v28 = [v8 leadingAnchor];

            v29 = [v0 view];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 leadingAnchor];

              v32 = [v28 constraintEqualToAnchor:v31];
              *(v13 + 56) = v32;
              v33 = [v8 trailingAnchor];

              v34 = [v0 view];
              if (v34)
              {
                v35 = v34;
                v36 = objc_opt_self();
                v37 = [v35 trailingAnchor];

                v38 = [v33 constraintEqualToAnchor:v37];
                *(v13 + 64) = v38;
                sub_100016F40(0, &qword_100945D78);
                v39 = sub_1007701AC().super.isa;

                [v36 activateConstraints:v39];

                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

id sub_100439F68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertActionHeaderViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10043A010()
{
  v1 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = [result collectionView];
    v14 = OBJC_IVAR____TtC20ProductPageExtension34ComponentViewOverflowTransitioning_selectedIndexPath;
    swift_beginAccess();
    sub_1000DE51C(v0 + v14, v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_10043AEE0(v3);
      return 0;
    }

    (*(v5 + 32))(v10, v3, v4);
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension34ComponentViewOverflowTransitioning_isTransitioningFromContainer) != 1)
    {
      if (v13)
      {
        v22 = v13;
        isa = sub_10075E02C().super.isa;
        v24 = [v22 cellForItemAtIndexPath:isa];

        (*(v5 + 8))(v10, v4);
        return v24;
      }

      (*(v5 + 8))(v10, v4);

      return 0;
    }

    sub_10075E0AC();
    sub_10075E08C();
    if (v13)
    {
      v15 = v13;
      v16 = sub_10075E02C().super.isa;
      v17 = [v15 cellForItemAtIndexPath:v16];

      if (v17)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          result = sub_10075E09C();
          v18 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
          v19 = *&v17[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
          if (v19 >> 62)
          {
            v28 = result;
            v26 = sub_10077158C();
            result = v28;
            if (v28 < v26)
            {
LABEL_10:
              v20 = *&v17[v18];
              if ((v20 & 0xC000000000000001) != 0)
              {
                v28 = v5;

                v21 = sub_10077149C();

                v5 = v28;

                goto LABEL_24;
              }

              if (result < 0)
              {
                __break(1u);
              }

              else if (result < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v21 = *(v20 + 8 * result + 32);

LABEL_24:
                v27 = *(v5 + 8);
                v27(v7, v4);
                v27(v10, v4);
                return v21;
              }

              __break(1u);
              return result;
            }
          }

          else if (result < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_10;
          }

          v21 = 0;
          goto LABEL_24;
        }

        v15 = v12;
        v12 = v17;
      }
    }

    v25 = *(v5 + 8);
    v25(v7, v4);
    v25(v10, v4);
    return 0;
  }

  return result;
}

void sub_10043A514()
{
  v0 = sub_10043A010();
  if (v0)
  {
    v1 = v0;
    [v0 setHidden:1];
  }
}

char *sub_10043A604(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = sub_10043A010();
  if (!v5)
  {

LABEL_6:
    v52 = 0u;
    v54 = 0u;
    v22 = 1;
    goto LABEL_7;
  }

  v6 = v5;
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 superview];
  [v8 convertRect:v17 fromView:{v10, v12, v14, v16}];
  v51 = v19;
  v53 = v18;
  v49 = v21;
  v50 = v20;

  v22 = 0;
  *&v23 = v51;
  *(&v23 + 1) = v49;
  v52 = v23;
  *&v23 = v53;
  *(&v23 + 1) = v50;
  v54 = v23;
LABEL_7:
  v24 = [a1 presentingViewController];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 traitCollection];

    v27 = [v26 horizontalSizeClass];
    v28 = v27 == 1;
  }

  else
  {
    v28 = 0;
  }

  v29 = type metadata accessor for BouncyToRectAnimation();
  v30 = objc_allocWithZone(v29);
  v31 = &v30[OBJC_IVAR____TtC20ProductPageExtension21BouncyToRectAnimation_toRect];
  *v31 = v54;
  *(v31 + 1) = v52;
  v31[32] = v22;
  v30[OBJC_IVAR____TtC20ProductPageExtension21BouncyToRectAnimation_shouldAnimateTabBar] = v28;
  v55.receiver = v30;
  v55.super_class = v29;
  v32 = objc_msgSendSuper2(&v55, "init");
  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  v34 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v35 = *&v32[v34];
  v36 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_10049DEB4(0, *(v35 + 2) + 1, 1, v35);
    *&v32[v34] = v35;
  }

  v39 = *(v35 + 2);
  v38 = *(v35 + 3);
  if (v39 >= v38 >> 1)
  {
    v35 = sub_10049DEB4((v38 > 1), v39 + 1, 1, v35);
  }

  *(v35 + 2) = v39 + 1;
  v40 = &v35[24 * v39];
  *(v40 + 4) = sub_10043AE90;
  *(v40 + 5) = v33;
  v40[48] = 1;
  *&v32[v34] = v35;
  swift_endAccess();

  v41 = swift_allocObject();
  *(v41 + 16) = v1;
  *(v41 + 24) = v36;
  swift_beginAccess();
  v42 = *&v32[v34];
  v43 = v36;
  v44 = v1;

  v45 = swift_isUniquelyReferenced_nonNull_native();
  *&v32[v34] = v42;
  if ((v45 & 1) == 0)
  {
    v42 = sub_10049DEB4(0, *(v42 + 2) + 1, 1, v42);
    *&v32[v34] = v42;
  }

  v47 = *(v42 + 2);
  v46 = *(v42 + 3);
  if (v47 >= v46 >> 1)
  {
    v42 = sub_10049DEB4((v46 > 1), v47 + 1, 1, v42);
  }

  *(v42 + 2) = v47 + 1;
  v48 = &v42[24 * v47];
  *(v48 + 4) = sub_10043AED8;
  *(v48 + 5) = v41;
  v48[48] = 2;
  *&v32[v34] = v42;
  swift_endAccess();

  return v32;
}

void sub_10043A9D4(int a1, int a2, id a3)
{
  v3 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v3)
  {
    v9 = v3;
    type metadata accessor for ComponentViewOverflowPresentationController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      sub_1004A5914();
      v6 = v5 + OBJC_IVAR____TtC20ProductPageExtension43ComponentViewOverflowPresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v6 + 24))
      {
        sub_10000A570(v6, v10);
        v7 = v11;
        v8 = v12;
        sub_10000CF78(v10, v11);
        (*(v8 + 24))(v7, v8);

        sub_10000CD74(v10);
        return;
      }
    }
  }
}

void sub_10043AAF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10043A010();
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:0];
  }

  v7 = [a4 _existingPresentationControllerImmediate:1 effective:1];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for ComponentViewOverflowPresentationController();
    if (swift_dynamicCastClass())
    {
      sub_1004A5A04();
    }
  }
}

id sub_10043ACC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComponentViewOverflowTransitioning();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ComponentViewOverflowTransitioning()
{
  result = qword_100957320;
  if (!qword_100957320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10043ADB0()
{
  sub_1002153E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10043AE58()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10043AE98()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10043AEE0(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_10094DE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10043AF48(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = sub_10043A010();
  if (!v5)
  {

LABEL_6:
    v41 = 0u;
    v43 = 0u;
    v22 = 1;
    goto LABEL_7;
  }

  v6 = v5;
  result = [v4 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 superview];
  [v8 convertRect:v17 fromView:{v10, v12, v14, v16}];
  v40 = v19;
  v42 = v18;
  v38 = v21;
  v39 = v20;

  v22 = 0;
  *&v23 = v40;
  *(&v23 + 1) = v38;
  v41 = v23;
  *&v23 = v42;
  *(&v23 + 1) = v39;
  v43 = v23;
LABEL_7:
  v24 = [a1 traitCollection];
  v25 = [v24 horizontalSizeClass];

  v26 = type metadata accessor for BouncyFromRectAnimation();
  v27 = objc_allocWithZone(v26);
  v28 = &v27[OBJC_IVAR____TtC20ProductPageExtension23BouncyFromRectAnimation_fromRect];
  *v28 = v43;
  *(v28 + 1) = v41;
  v28[32] = v22;
  v27[OBJC_IVAR____TtC20ProductPageExtension23BouncyFromRectAnimation_shouldAnimateTabBar] = v25 == 1;
  v44.receiver = v27;
  v44.super_class = v26;
  v29 = objc_msgSendSuper2(&v44, "init");
  v30 = swift_allocObject();
  *(v30 + 16) = v1;
  v31 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v32 = *&v29[v31];
  v33 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v29[v31] = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = sub_10049DEB4(0, *(v32 + 2) + 1, 1, v32);
    *&v29[v31] = v32;
  }

  v36 = *(v32 + 2);
  v35 = *(v32 + 3);
  if (v36 >= v35 >> 1)
  {
    v32 = sub_10049DEB4((v35 > 1), v36 + 1, 1, v32);
  }

  *(v32 + 2) = v36 + 1;
  v37 = &v32[24 * v36];
  *(v37 + 4) = sub_10043B1F8;
  *(v37 + 5) = v30;
  v37[48] = 0;
  *&v29[v31] = v32;
  swift_endAccess();

  return v29;
}

double sub_10043B250()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007601EC();
  sub_10043B474(&unk_100957330, &type metadata accessor for Screenshots);
  sub_10076332C();
  if (!v12[1])
  {
    return 0.0;
  }

  v12[0] = sub_1007601DC();
  v4 = sub_1007601CC();
  v5 = sub_100630CB4();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v6 = *(v1 + 8);
  v6(v3, v0);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v8 = v7;
  v6(v3, v0);
  sub_1003782D0(v12[0], v4, v5, 0.0, 0.0, v8);
  v10 = v9;

  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_10043B474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_100940508 != -1)
  {
    swift_once();
  }

  v0 = sub_10076B3AC();

  return sub_10000A61C(v0, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
}

char *sub_10043B524(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076B3AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v61 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  if (qword_100940508 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v11, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v60 = *(v12 + 16);
  v60(&v4[v14], v15, v11);
  v16 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  v17 = enum case for MetadataRibbonSecondaryViewPlacement.leading(_:);
  v18 = sub_10076A8CC();
  (*(*(v18 - 8) + 104))(&v5[v16], v17, v18);
  v19 = &v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_id];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v20 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  v21 = sub_1007668DC();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = &v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold];
  *v23 = 0;
  v23[8] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation] = 2;
  sub_1007626BC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel] = sub_10076269C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel] = sub_10076269C();
  v65.receiver = v5;
  v65.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel;
  v30 = *&v28[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  sub_1000325F0();
  v31 = v30;
  v32 = sub_100770D1C();
  [v31 setTextColor:v32];

  v33 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel;
  v34 = *&v28[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  v35 = sub_100770D1C();
  [v34 setTextColor:v35];

  v36 = *&v28[v29];
  v57 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  v37 = v61;
  v59 = v12 + 16;
  v60(v61, &v28[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics], v11);
  v38 = v36;
  v39 = sub_10076B39C();
  v40 = *(v12 + 8);
  v55 = v12 + 8;
  v56 = v40;
  v40(v37, v11);
  [v38 setNumberOfLines:v39];

  v58 = v29;
  v41 = *&v28[v29];
  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v42 = sub_10076715C();
  v43 = sub_10000A61C(v42, qword_10099CE38);
  v63 = v42;
  v44 = sub_10018CD1C();
  v64 = v44;
  v45 = sub_10000DB7C(v62);
  v46 = *(*(v42 - 8) + 16);
  v46(v45, v43, v42);
  sub_1007625FC();

  v47 = *&v28[v33];
  v48 = v61;
  v60(v61, &v28[v57], v11);
  v49 = v47;
  v50 = sub_10076B38C();
  v56(v48, v11);
  [v49 setNumberOfLines:v50];

  v51 = *&v28[v33];
  sub_10076D84C();
  if (qword_10093F6B0 != -1)
  {
    swift_once();
  }

  v52 = sub_10000A61C(v42, qword_10099CE80);
  v63 = v42;
  v64 = v44;
  v53 = sub_10000DB7C(v62);
  v46(v53, v52, v42);
  sub_1007625FC();

  [*&v28[v33] setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [v28 addSubview:*&v28[v33]];
  [v28 addSubview:*&v28[v58]];

  return v28;
}

uint64_t sub_10043BB30()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076D1FC();
  v20 = *(v2 - 8);
  v21 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076B3AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076B3BC();
  v9 = *(v19 - 8);
  *&v10 = __chkstk_darwin(v19).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  v26 = sub_1007626BC();
  v27 = &protocol witness table for UILabel;
  v24 = &protocol witness table for UILabel;
  v25 = v13;
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  v23 = v26;
  v22 = v14;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics], v5);
  v15 = v13;
  v16 = v14;
  sub_10076B34C();
  sub_10076422C();
  sub_10076B36C();
  (*(v20 + 8))(v4, v21);
  return (*(v9 + 8))(v12, v19);
}

double sub_10043BE00()
{
  v1 = sub_10076B3AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076B3BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel);
  v17 = sub_1007626BC();
  v18 = &protocol witness table for UILabel;
  v16[4] = &protocol witness table for UILabel;
  v16[5] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel);
  v16[3] = v17;
  v16[0] = v10;
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics, v1);
  v11 = v9;
  v12 = v10;
  sub_10076B34C();
  sub_10076B35C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  return v14;
}

id sub_10043C09C(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5)
{
  v9 = sub_10076A8CC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  if (a4)
  {
    a4 = sub_10076FF6C();
  }

  [v14 setText:{a4, v11}];

  (*(v10 + 16))(v13, a5, v9);
  v15 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  swift_beginAccess();
  (*(v10 + 24))(&v5[v15], v13, v9);
  swift_endAccess();
  [v5 setNeedsLayout];
  (*(v10 + 8))(v13, v9);
  v16 = *&v5[OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  if (a2)
  {
    v17 = sub_10077001C();
  }

  else
  {
    v17 = 0;
  }

  [v16 setAttributedText:v17];

  return [v5 setNeedsLayout];
}

uint64_t sub_10043C3E0()
{
  v0 = sub_10076A8CC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007642CC();
  v6 = v5;
  v7 = sub_10076438C();
  v9 = v8;
  sub_10076433C();
  sub_10043C09C(v4, v6, v7, v9, v3);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10043C504@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943318);
}

uint64_t sub_10043C56C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943318);
  return swift_endAccess();
}

uint64_t sub_10043C648(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10043C714(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10043C7D4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10043C818(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10043C8C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_id;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943310);
}

uint64_t sub_10043C930(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_id;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943310);
  return swift_endAccess();
}

uint64_t sub_10043CA00()
{
  v0 = sub_10000A5D4(&unk_100942850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - v2;
  v4 = sub_10076B3AC();
  sub_10000DB18(v4, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  sub_10000A61C(v4, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  sub_10000A5D4(&unk_100943120);
  sub_10075FECC();
  v8[3] = v0;
  v8[4] = sub_10001CE64();
  v5 = sub_10000DB7C(v8);
  (*(v1 + 16))(v5, v3, v0);
  sub_10076B37C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100940508 != -1)
  {
    swift_once();
  }

  v2 = sub_10076B3AC();
  v3 = sub_10000A61C(v2, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView()
{
  result = qword_100957388;
  if (!qword_100957388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10043CC78()
{
  sub_10076B3AC();
  if (v0 <= 0x3F)
  {
    sub_10076A8CC();
    if (v1 <= 0x3F)
    {
      sub_100038324();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10043CDA8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  if (qword_100940508 != -1)
  {
    swift_once();
  }

  v2 = sub_10076B3AC();
  v3 = sub_10000A61C(v2, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  v5 = enum case for MetadataRibbonSecondaryViewPlacement.leading(_:);
  v6 = sub_10076A8CC();
  (*(*(v6 - 8) + 104))(v0 + v4, v5, v6);
  v7 = v0 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_id;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  v9 = sub_1007668DC();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v10 = v0 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation) = 2;
  sub_10077156C();
  __break(1u);
}

double sub_10043CF78(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v55 = a1;
  v64 = sub_10076B3BC();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10076DA7C();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076DD3C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  __chkstk_darwin(v14);
  v67 = &v49 - v15;
  v16 = sub_10076B3AC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v53 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  if (qword_100940508 != -1)
  {
    swift_once();
  }

  v65 = v7;
  v22 = sub_10000A61C(v16, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v58 = v17;
  v23 = *(v17 + 16);
  v60 = v16;
  v52 = v17 + 16;
  v51 = v23;
  v23(v21, v22, v16);
  sub_10076DD2C();
  sub_10076D84C();
  v66 = v21;
  if (qword_10093F6B0 != -1)
  {
    swift_once();
  }

  v24 = sub_10076715C();
  v25 = sub_10000A61C(v24, qword_10099CE80);
  v72 = v24;
  v26 = sub_10018CD1C();
  v73 = v26;
  v27 = sub_10000DB7C(&v71);
  v28 = *(*(v24 - 8) + 16);
  v28(v27, v25, v24);
  sub_10076DC8C();
  v54 = v5;
  v29 = *(v5 + 8);
  v29(v10, v4);
  sub_10000CD74(&v71);
  sub_10076B38C();
  sub_10076DD1C();
  v29(v13, v4);
  sub_10076DD2C();
  sub_10076D84C();
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v24, qword_10099CE38);
  v72 = v24;
  v73 = v26;
  v31 = sub_10000DB7C(&v71);
  v28(v31, v30, v24);
  sub_10076DC8C();
  v29(v10, v4);
  sub_10000CD74(&v71);
  sub_10076B39C();
  v32 = v65;
  sub_10076DD1C();
  v29(v13, v4);
  sub_1007642CC();
  v50 = v29;
  if (v33)
  {
    v34 = sub_10077001C();
  }

  else
  {
    v34 = 0;
  }

  sub_10076438C();
  v35 = *(v54 + 16);
  v35(v13, v32, v4);
  sub_10076DA5C();
  v36 = v56;
  sub_10076DA9C();
  v37 = v36;
  sub_10076DA4C();
  v38 = v4;
  v39 = *(v57 + 8);
  v40 = v59;
  v39(v37, v59);
  v35(v13, v67, v38);
  v41 = v34;
  sub_10076DA5C();
  sub_10076DABC();
  sub_10076DA4C();
  v39(v37, v40);
  sub_10000A570(v70, v69);
  sub_10000A570(&v71, v68);
  v42 = v66;
  v43 = v60;
  v51(v53, v66, v60);
  v44 = v61;
  sub_10076B34C();
  sub_10076B35C();
  v46 = v45;

  (*(v63 + 8))(v44, v64);
  sub_10000CD74(v70);
  sub_10000CD74(&v71);
  v47 = v50;
  v50(v65, v38);
  v47(v67, v38);
  (*(v58 + 8))(v42, v43);
  return v46;
}

uint64_t sub_10043D778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1007621DC() & 1) == 0 || *(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)) || (sub_10075E05C() & 1) == 0)
  {
    return 0;
  }

  return sub_1007621DC();
}

uint64_t sub_10043D808(uint64_t a1)
{
  v29 = a1;
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v26 = &v25 - v6;
  v7 = sub_10000A5D4(&unk_100957590);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_10000A5D4(&unk_1009575B8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v28 = v1;
  sub_100016E2C(v1 + v17, v16, &unk_100957590);
  sub_100016E2C(v29, &v16[v18], &unk_100957590);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10000CFBC(v16, &unk_100957590);
    }

    goto LABEL_6;
  }

  sub_100016E2C(v16, v12, &unk_100957590);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    sub_10021C73C(v12);
LABEL_6:
    v21 = &unk_1009575B8;
    goto LABEL_13;
  }

  v22 = v26;
  sub_100440F74(&v16[v18], v26);
  if (sub_1007621DC() & 1) != 0 && *&v12[*(v2 + 20)] == *(v22 + *(v2 + 20)) && (sub_10075E05C())
  {
    v23 = sub_1007621DC();
    sub_10021C73C(v22);
    sub_10021C73C(v12);
    result = sub_10000CFBC(v16, &unk_100957590);
    if (v23)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_10021C73C(v22);
  sub_10021C73C(v12);
  v21 = &unk_100957590;
LABEL_13:
  sub_10000CFBC(v16, v21);
LABEL_14:
  sub_100016E2C(v28 + v17, v9, &unk_100957590);
  if (v19(v9, 1, v2) == 1)
  {
    return sub_10000CFBC(v9, &unk_100957590);
  }

  v24 = v27;
  sub_100440F74(v9, v27);
  sub_10043DC18();
  return sub_10021C73C(v24);
}

uint64_t sub_10043DBEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076B62C();
  *a1 = result;
  return result;
}