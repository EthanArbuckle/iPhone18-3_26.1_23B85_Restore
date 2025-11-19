double sub_1000239F0(uint64_t a1, void *a2)
{
  v27 = sub_100749E74();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749E94();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10074CD14();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_1000241D0();
  v12 = sub_100750F34();
  swift_allocObject();
  v13 = sub_100750EF4();
  if (sub_100749E64())
  {
    v23 = a1;
    v24 = v7;
    sub_100016C60(0, &qword_100923AB0);
    if (qword_100921460 != -1)
    {
      swift_once();
    }

    v14 = sub_100750534();
    sub_10000D0FC(v14, qword_100981A58);
    v15 = [a2 traitCollection];
    sub_100753C14();

    v16 = sub_10074F3F4();
    *(&v37 + 1) = v16;
    v38 = sub_100026694(&qword_10092AC70, &type metadata accessor for Feature);
    v17 = sub_10000D134(&v36);
    (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
    sub_10074FC74();
    sub_10000C620(&v36);
    sub_10074CD04();
    sub_10074CCE4();
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

  v18 = sub_100750F14();
  v31 = v12;
  v32 = &protocol witness table for LayoutViewPlaceholder;
  v30 = v18;
  sub_100016B4C(&v36, v29, &qword_10092BC30);
  sub_100749E84();
  sub_100026694(&qword_100923460, &type metadata accessor for MixedMediaLockupLayout);
  sub_100750404();
  v20 = v19;

  (*(v28 + 8))(v9, v7);
  sub_10000C8CC(&v36, &qword_10092BC30);
  return v20;
}

void sub_100023F2C(void *a1)
{
  type metadata accessor for SmallLockupView();
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v2 = sub_100747064();
  v3 = sub_10000D0FC(v2, qword_10097E3A8);
  swift_getObjectType();
  sub_1001CF184(v3, a1);
}

void sub_10002402C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_lockupView);
  sub_1001CF770(a1, a2);
}

uint64_t sub_100024160(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100934D90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1000241D0()
{
  v0 = sub_100746B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007504F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ASKDeviceTypeGetCurrent();
  sub_100393210();

  sub_10062E1B0(v7, v3);
  sub_100746B34();
  sub_100026694(&qword_100923468, &type metadata accessor for LockupMediaLayout);
  sub_100750D34();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_1000243DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScreenshotDisplayConfiguration();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024440(uint64_t a1)
{
  v2 = type metadata accessor for ScreenshotDisplayConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10002449C(char *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v135 = a5;
  v126 = sub_100749E94();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10074CD14();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_100749E34();
  v136 = *(v131 - 8);
  __chkstk_darwin(v131);
  v132 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v109 = &v103 - v12;
  __chkstk_darwin(v13);
  v110 = &v103 - v14;
  v123 = sub_100749E74();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v119 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v134 = &v103 - v17;
  v118 = sub_100746A94();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v19 - 8);
  v115 = &v103 - v20;
  v121 = sub_10074A7F4();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v133 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100745DC4();
  v130 = *(v113 - 8);
  __chkstk_darwin(v113);
  v104 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000C518(&qword_100923458);
  __chkstk_darwin(v23 - 8);
  v129 = &v103 - v24;
  v25 = sub_10000C518(&qword_100934D90);
  __chkstk_darwin(v25 - 8);
  v114 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v137 = &v103 - v28;
  v29 = sub_100749A94();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100749A74();
  sub_100026694(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v33 = sub_100754324();
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
  sub_100749A64();
  v40 = sub_100754324();
  v34(v32, v29);
  if ((v33 & 1) == 0)
  {
    sub_1000209FC(v40 & 1, v127, v39, v135);

    return a2;
  }

  v41 = v128;
  v127 = sub_100745E04();
  v42 = (*(v5 + 216))();
  v43 = v5;
  if (v42)
  {
    v108 = sub_100745DE4();
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
  v49 = sub_100745DD4();
  if (v49 >> 62)
  {
    v48 = v49;
    v50 = sub_100754664();
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
    v130 = sub_100754574();
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
  v51 = sub_100745E54();
  if (v51 >> 62)
  {
    v52 = v51;
    v53 = sub_100754664();
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
      v129 = sub_100754574();
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
  sub_100745DB4();
  v56 = v113;
  v57 = (*(v46 + 48))(v47, 1, v113);
  v112 = v54;
  if (v57 == 1)
  {
    sub_10000C8CC(v47, &qword_100923458);
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
  sub_100745E24();
  v63 = ASKDeviceTypeGetCurrent();
  v113 = type metadata accessor for LockupMediaView();
  v64 = sub_1007504F4();
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
  sub_1006A6BAC(v68, v69, v70, v72, v65, v67, v73, v62);
  (*(v117 + 8))(v67, v118);
  sub_10000C8CC(v65, &unk_1009281D0);
  v74 = v114;
  sub_100016B4C(v137, v114, &qword_100934D90);
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
      sub_10000C8CC(v74, &qword_100934D90);
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
    if (qword_100920A88 != -1)
    {
      swift_once();
    }

    v82 = qword_10097FE28;
    goto LABEL_45;
  }

  v43 = v80;
  if (v81 != enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_100920A88 != -1)
    {
      swift_once();
    }

    sub_10000C824(qword_10097FE28, &v143);
    (*(v77 + 8))(v79, v44);
    goto LABEL_49;
  }

  if (qword_100920A80 != -1)
  {
    goto LABEL_62;
  }

LABEL_44:
  v82 = qword_10097FE00;
LABEL_45:
  sub_10000C824(v82, &v143);
LABEL_49:
  v83 = v135;
  v48(v132, v41, v44);
  sub_10000C824(&v143, v142);
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921460 != -1)
  {
    swift_once();
  }

  v84 = sub_100750534();
  sub_10000D0FC(v84, qword_100981A58);
  v85 = [v83 traitCollection];
  sub_100753C14();

  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v86 = sub_100750B04();
  v87 = sub_10000D0FC(v86, qword_100982098);
  v140 = v86;
  v141 = &protocol witness table for StaticDimension;
  v88 = sub_10000D134(&v139);
  (*(*(v86 - 8) + 16))(v88, v87, v86);
  sub_100749E54();
  sub_10000C620(&v143);
  (*(v136 + 8))(v41, v44);
  v89 = sub_100750F34();
  swift_allocObject();
  v90 = sub_100750EF4();
  if (v43)
  {

    v91 = [v83 traitCollection];
    sub_100753C14();

    v92 = sub_10074F3F4();
    *(&v144 + 1) = v92;
    v145 = sub_100026694(&qword_10092AC70, &type metadata accessor for Feature);
    v93 = sub_10000D134(&v143);
    (*(*(v92 - 8) + 104))(v93, enum case for Feature.measurement_with_labelplaceholder(_:), v92);
    sub_10074FC74();
    sub_10000C620(&v143);
    v94 = v105;
    sub_10074CD04();
    sub_10074CCE4();
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

  v99 = sub_100750F14();
  v140 = v89;
  v141 = &protocol witness table for LayoutViewPlaceholder;
  v139 = v99;
  sub_100016B4C(&v143, v138, &qword_10092BC30);
  v100 = v124;
  sub_100749E84();
  sub_100026694(&qword_100923460, &type metadata accessor for MixedMediaLockupLayout);
  v101 = v126;
  sub_100750404();

  (*(v125 + 8))(v100, v101);
  sub_10000C8CC(&v143, &qword_10092BC30);
  (*(v96 + 8))(v97, v98);
  (*(v120 + 8))(v133, v121);
  sub_10000C8CC(v137, &qword_100934D90);
  return a2;
}

id sub_1000258D4(uint64_t a1, void *a2)
{
  v3 = sub_10074EAB4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  sub_10074EA74();
  sub_100026694(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  v9 = sub_100754324();
  (*(v4 + 8))(v6, v3);
  v10 = sub_1000209FC(v9 & 1, 0, 0xE000000000000000, a2);
  v11 = objc_opt_self();
  v12 = [v11 absoluteDimension:v8];
  v13 = [v11 absoluteDimension:v10];
  v14 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() itemWithLayoutSize:v14];
  v16 = objc_opt_self();
  sub_10000C518(&unk_1009231A0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007A5CF0;
  *(v17 + 32) = v15;
  sub_100016C60(0, &qword_100923478);
  v18 = v15;
  isa = sub_100753294().super.isa;

  v20 = [v16 verticalGroupWithLayoutSize:v14 subitems:isa];

  return v20;
}

unint64_t sub_100025B98(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_100746A94();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v9 - 8);
  v61 = &v49 - v10;
  v11 = sub_10074A7F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074F314();
  __chkstk_darwin(v15 - 8);
  sub_10000C824(a1, v65);
  sub_10000C518(&unk_100923100);
  sub_100745E64();
  result = swift_dynamicCast();
  if (result)
  {
    v57 = v7;
    v58 = v6;
    v59 = v12;
    v17 = v64;
    v18 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_pageTraits);
    if (!v18)
    {
    }

    v56 = v11;

    swift_unknownObjectRetain();
    v19 = sub_10074EF24();

    v60 = v3;
    if (v19)
    {
      v21 = qword_100920548;
      v22 = *(*(v3 + OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
      if (v21 != -1)
      {
        swift_once();
      }

      v23 = sub_100747064();
      sub_10000D0FC(v23, qword_10097E3A8);
      sub_100746F34();
      [v22 contentMode];
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v22 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();
      sub_1007433C4();
      sub_100026694(&qword_100925570, &type metadata accessor for ArtworkView);
      sub_100744204();
    }

    v24 = ObjectType;
    v25 = (*(ObjectType + 192))(v20);
    if (v25)
    {
      result = sub_100745DD4();
      if (result >> 62)
      {
        v27 = result;
        v28 = sub_100754664();
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
          v26 = sub_100754574();
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
          v50 = sub_100745E04();
          v32 = 0;
          v33 = 0;
LABEL_31:
          v36 = v31;
          sub_100745E24();
          v37 = ASKDeviceTypeGetCurrent();
          type metadata accessor for MixedMediaLockupCollectionViewCell();
          sub_1007477B4();
          v51 = type metadata accessor for LockupMediaView();
          v52 = v17;
          v38 = sub_1007504F4();
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
          sub_1006A6BAC(v41, v42, v44, v32, v39, v40, v46, v36);

          (*(v57 + 8))(v40, v58);
          sub_10000C8CC(v39, &unk_1009281D0);
          v47 = *(v60 + OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_mediaView);
          v48 = [v46 traitCollection];
          sub_1006A541C(v41, v42, v44, v32, v48, v55, v36);

          swift_unknownObjectRelease();

          return (*(v59 + 8))(v36, v56);
        }

        result = sub_100745E54();
        if (result >> 62)
        {
          v34 = result;
          v35 = sub_100754664();
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
            v30 = sub_100754574();
            goto LABEL_26;
          }

          if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v30 = *(result + 32);

LABEL_26:
            v31 = v14;

LABEL_30:
            v50 = sub_100745E04();
            v33 = sub_100745DE4();
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

void sub_10002636C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100743204();
  sub_1007433C4();
  sub_100026694(&qword_100925570, &type metadata accessor for ArtworkView);
  sub_100744274();
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_mediaView);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *&v2[v3];
  if (v4 >> 62)
  {
    v5 = sub_100754664();
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
      v8 = sub_100754574();
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    type metadata accessor for BorderedScreenshotView();
    sub_100026694(&qword_100923470, type metadata accessor for BorderedScreenshotView);
    v10 = v9;
    sub_1007544E4();
    sub_100744264();
    sub_100016994(v18);
    v11 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
    v19.value.super.isa = 0;
    v19.is_nil = 0;
    sub_100743384(v19, v12);
  }

  while (v5 != v7);

  v2 = v17;
LABEL_12:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [*(Strong + qword_10093CB50) setImage:0];
    type metadata accessor for VideoView();
    sub_100026694(&qword_10093DD00, type metadata accessor for VideoView);
    v16 = v15;
    sub_1007544E4();
    sub_100744264();

    sub_100016994(v18);
  }

  else
  {
  }
}

uint64_t sub_100026694(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchAdTransparencyLabel()
{
  result = qword_1009234A8;
  if (!qword_1009234A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100026794(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext:v4];
}

void sub_10002684C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

char *sub_100026898(void *a1)
{
  v3 = sub_100752AC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074AB44();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = qword_100923480;
  *(v1 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v15 = v1 + qword_100923498;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = (v1 + qword_1009234A0);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + qword_100923488) = a1;
  v17 = a1;
  *(v1 + qword_100923490) = sub_1000275EC(v17);
  v18 = sub_100750534();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  (*(v8 + 104))(v10, enum case for DirectionalTextAlignment.none(_:), v7);
  v19 = sub_100745C74();
  [v19 setUserInteractionEnabled:1];
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  sub_100752A74();
  sub_1000277BC(v22);
  sub_1000277BC(v23);
  sub_100753C74();
  (*(v4 + 8))(v6, v3);
  v20 = qword_100923480;
  [*&v19[qword_100923480] addTarget:v19 action:"didTapLabelWithGestureRecognizer:"];
  [*&v19[v20] setDelegate:v19];
  [v19 addGestureRecognizer:*&v19[v20]];

  return v19;
}

double sub_100026BF4(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &a1[qword_100923498];
  if (a1[qword_100923498 + 16])
  {
    v4 = a1;
  }

  else
  {
    v6 = *v3;
    v5 = v3[1];
    v7 = a1;
    sub_100026D54(v6, v5, &v12);
    if ((v13 & 1) == 0)
    {
      *&v9 = UIAccessibilityConvertFrameToScreenCoordinates(v12, v7);

      return v9;
    }
  }

  v11.receiver = a1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "accessibilityFrame");
  v9 = v8;

  return v9;
}

id sub_100026CE4(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "setAccessibilityFrame:", a2, a3, a4, a5);
}

void sub_100026D54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = [v3 attributedText];
  if (v8)
  {
    v9 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v8];
    v10 = [objc_allocWithZone(NSLayoutManager) init];
    [v9 addLayoutManager:v10];
    [v4 bounds];
    v13 = [objc_allocWithZone(NSTextContainer) initWithSize:{v11, v12}];
    [v13 setLineFragmentPadding:0.0];
    [v10 addTextContainer:v13];
    v24 = 0;
    v25 = 0;
    [v10 characterRangeForGlyphRange:a1 actualGlyphRange:{a2, &v24}];
    [v10 boundingRectForGlyphRange:v24 inTextContainer:{v25, v13}];
    v21 = v14;
    v22 = v15;
    v20 = v16;
    v23 = v17;

    *&v19 = v20;
    *&v18 = v21;
    *(&v18 + 1) = v22;
    *(&v19 + 1) = v23;
  }

  else
  {
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 32) = v8 == 0;
}

void sub_100026F24()
{
  v1 = v0;
  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = NSForegroundColorAttributeName;
  v3 = qword_100920A90;
  v4 = NSForegroundColorAttributeName;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_10097FE90;
  v6 = sub_100016C60(0, &qword_100923500);
  *(inited + 40) = v5;
  *(inited + 64) = v6;
  *(inited + 72) = NSFontAttributeName;
  v7 = v5;
  v8 = NSFontAttributeName;
  v9 = [v0 font];
  *(inited + 104) = sub_10000C518(&qword_100923508);
  *(inited + 80) = v9;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510);
  swift_arrayDestroy();
  sub_100016C60(0, &qword_10092E500);
  sub_10000C518(&unk_1009231A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007A5CF0;
  v11 = *&v0[qword_100923490];
  *(v10 + 32) = v11;
  v12 = v11;
  v13 = [v0 traitCollection];
  v14 = sub_100753874();
  v15 = [v14 length];
  v16 = &v1[qword_100923498];
  *v16 = 0;
  *(v16 + 1) = v15;
  v16[16] = 0;
  v17 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v14];
  if (*&v1[qword_1009234A0 + 8])
  {
    v18 = objc_allocWithZone(NSAttributedString);

    v19 = sub_100753064();

    v20 = [v18 initWithString:v19];

    [v17 appendAttributedString:v20];
  }

  [v1 setAttributedText:v17];
}

void sub_1000271EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100751504();
  __chkstk_darwin(v4);
  sub_100745C84();
  v5 = sub_100745C94();
  v5(a1);
  v6 = *&v2[qword_100923488];
  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  sub_100753CE4();
  sub_1007514D4();
  sub_100753CF4();
  [v6 updateTraitsIfNeeded];
  v9 = sub_1000275EC(v6);
  v10 = *&v2[qword_100923490];
  *&v2[qword_100923490] = v9;

  sub_100026F24();
}

BOOL sub_10002734C(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = &a1[qword_100923498];
  if (a1[qword_100923498 + 16])
  {
    return 0;
  }

  v8 = *v4;
  v7 = v4[1];
  v9 = a4;
  v10 = a1;
  sub_100026D54(v8, v7, &v22);
  if (v23)
  {
    v5 = 0;
  }

  else
  {
    sub_100753B54();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v9 locationInView:v10];
    v24.x = v19;
    v24.y = v20;
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    v5 = CGRectContainsPoint(v25, v24);
  }

  return v5;
}

void sub_100027448(char *a1)
{
  v1 = *(*&a1[qword_100923488] + qword_100934DD0);
  if (v1)
  {
    v3 = a1;
    v2 = sub_10001B5AC(v1);
    v1(v2);
    sub_1000164A8(v1);
  }
}

uint64_t sub_100027510()
{
}

uint64_t sub_100027574(uint64_t a1)
{
}

uint64_t sub_1000275EC(void *a1)
{
  [a1 sizeToFit];
  [a1 bounds];
  v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:{v2, v3, v4, v5}];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10002785C;
  *(v8 + 24) = v7;
  v13[4] = sub_100027874;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10002684C;
  v13[3] = &unk_100864080;
  v9 = _Block_copy(v13);
  v10 = a1;

  v11 = [v6 imageWithActions:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000277BC(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027824()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002789C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000278B4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension30SearchActionCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension30SearchActionCollectionViewCell_actionContentView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for SearchActionContentView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for SearchActionCollectionViewCell();
  v12 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension30SearchActionCollectionViewCell_actionContentView]];

  return v16;
}

id sub_100027CA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchActionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchActionCollectionViewCell()
{
  result = qword_100923558;
  if (!qword_100923558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100027D78()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100027E74(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  sub_100743384(v4, a3);
  sub_1007433C4();
  sub_100027F64(&qword_100925570, &type metadata accessor for ArtworkView);
  return sub_100744274();
}

uint64_t sub_100027F64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100027FAC(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028024@<X0>(uint64_t *a1@<X8>)
{
  v45 = a1;
  v1 = sub_10074F704();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v36 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000C518(&qword_100923580);
  __chkstk_darwin(v42);
  v44 = &v36 - v3;
  v4 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v4 - 8);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v12 - 8);
  v40 = &v36 - v13;
  v14 = sub_10000C518(&unk_10092E450);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v43 = sub_10074E984();
  v18 = *(v43 - 8);
  __chkstk_darwin(v43);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747C04();
  swift_getKeyPath();
  v41 = v20;
  sub_1007525B4();

  v21 = *(v15 + 8);
  v21(v17, v14);
  v22 = v39;
  sub_100747BB4();
  sub_10000C8CC(v22, &unk_10093D6E0);
  sub_100028CD0(v8, v11);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    sub_10000C8CC(v11, &unk_10093D6E0);
    v23 = 1;
    v24 = v40;
  }

  else
  {
    swift_getKeyPath();
    v24 = v40;
    sub_1007525B4();

    v21(v11, v14);
    v23 = 0;
  }

  v25 = v43;
  (*(v18 + 56))(v24, v23, 1, v43);
  v26 = v41;
  v27 = *(v42 + 48);
  v28 = v44;
  (*(v18 + 16))(v44, v41, v25);
  sub_100028D40(v24, v28 + v27);
  if ((*(v18 + 48))(v28 + v27, 1, v25) == 1)
  {
    if ((*(v18 + 88))(v28, v25) == enum case for Shelf.ContentType.unifiedMessage(_:))
    {
      v29 = v36;
      sub_100747B84();
      sub_10074F5B4();
      v31 = v30;
      (*(v37 + 8))(v29, v38);
      v32 = v45;
      v45[3] = &type metadata for CGFloat;
      v32[4] = &protocol witness table for CGFloat;
      *v32 = v31 * 0.5;
      sub_10000C8CC(v24, &unk_100933370);
      return (*(v18 + 8))(v26, v25);
    }

    else
    {
      v34 = v45;
      v45[3] = &type metadata for Double;
      v34[4] = &protocol witness table for Double;
      *v34 = 0;
      sub_10000C8CC(v24, &unk_100933370);
      v35 = *(v18 + 8);
      v35(v26, v25);
      return (v35)(v28, v25);
    }
  }

  else
  {
    sub_10031E4CC(v45);
    sub_10000C8CC(v24, &unk_100933370);
    (*(v18 + 8))(v26, v25);
    return sub_10000C8CC(v28, &qword_100923580);
  }
}

uint64_t sub_100028638@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10074E984();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v12 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:))
  {
    if (qword_100921708 != -1)
    {
      swift_once();
    }

    v14 = sub_100750B04();
    v15 = v14;
    v16 = qword_100982098;
    goto LABEL_13;
  }

  if (v12 == enum case for Shelf.ContentType.action(_:))
  {
    if (qword_100921730 != -1)
    {
      swift_once();
    }

    v14 = sub_100750B04();
    v15 = v14;
    v16 = qword_100982110;
LABEL_13:
    v17 = sub_10000D0FC(v14, v16);
    a2[3] = v15;
    a2[4] = &protocol witness table for StaticDimension;
    v18 = sub_10000D134(a2);
    return (*(*(v15 - 8) + 16))(v18, v17, v15);
  }

  sub_10031E808(a1, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100028918@<X0>(void *a1@<X8>)
{
  v2 = sub_10000C518(&unk_100925330);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3 - 8];
  v5 = sub_100744E64();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_10000C518(&unk_10092E450);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15[-v11 - 8];
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v10 + 8))(v12, v9);
  if (!*(v14 + 16))
  {

    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    goto LABEL_8;
  }

  sub_10000C824(v14 + 32, v15);

  sub_10000C518(&qword_1009242A0);
  sub_10000C518(&qword_100923570);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_8;
  }

  if (!*(&v17 + 1))
  {
LABEL_8:
    result = sub_10000C8CC(&v16, &qword_100923578);
    goto LABEL_9;
  }

  sub_100012160(&v16, v19);
  sub_10000C888(v19, v19[3]);
  sub_10074A4F4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000C8CC(v4, &unk_100925330);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    if (sub_100744E54())
    {
      a1[3] = &type metadata for CGFloat;
      a1[4] = &protocol witness table for CGFloat;
      *a1 = 0x4020000000000000;
      (*(v6 + 8))(v8, v5);
      return sub_10000C620(v19);
    }

    (*(v6 + 8))(v8, v5);
  }

  result = sub_10000C620(v19);
LABEL_9:
  a1[3] = &type metadata for Double;
  a1[4] = &protocol witness table for Double;
  *a1 = 0;
  return result;
}

uint64_t sub_100028CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_10093D6E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100933370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100028DB0(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v174 = a3;
  v156 = a2;
  v170 = a1;
  ObjectType = swift_getObjectType();
  v159 = sub_10074AE04();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v6 - 8);
  v160 = &v156 - v7;
  v164 = sub_10000C518(&qword_100923588);
  __chkstk_darwin(v164);
  v173 = &v156 - v8;
  v9 = sub_10000C518(&qword_100923590);
  __chkstk_darwin(v9 - 8);
  v161 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v166 = &v156 - v12;
  __chkstk_darwin(v13);
  v171 = &v156 - v14;
  v15 = sub_1007455E4();
  v16 = *(v15 - 8);
  v167 = v15;
  v168 = v16;
  __chkstk_darwin(v15);
  v162 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v163 = &v156 - v19;
  v20 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v20 - 8);
  v175 = &v156 - v21;
  v22 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v22 - 8);
  v172 = &v156 - v23;
  v24 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v24 - 8);
  v26 = &v156 - v25;
  v27 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v27 - 8);
  v29 = &v156 - v28;
  v30 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v30 - 8);
  v32 = &v156 - v31;
  v33 = sub_10074D734();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000C518(&unk_100925540);
  *&v38 = __chkstk_darwin(v37 - 8).n128_u64[0];
  v40 = &v156 - v39;
  v41 = [v3 traitCollection];
  LODWORD(v169) = sub_100753804();

  v42 = *(v34 + 104);
  v42(v36, enum case for OfferButtonPresenterViewAlignment.right(_:), v33);
  v42(v32, enum case for OfferButtonPresenterViewAlignment.left(_:), v33);
  (*(v34 + 56))(v32, 0, 1, v33);
  sub_10002AD94(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v43 = v170;
  v44 = v4;
  sub_10074A9C4();
  v45 = sub_10000C518(&unk_10092EEA0);
  (*(*(v45 - 8) + 56))(v40, 0, 1, v45);
  v46 = sub_100742E24();
  (*(*(v46 - 8) + 56))(v29, 1, 1, v46);
  v47 = sub_100745E94();
  (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
  v48 = sub_10074F8B4();
  v49 = v172;
  (*(*(v48 - 8) + 56))(v172, 1, 1, v48);
  v50 = sub_10000C518(&unk_100925560);
  v51 = v175;
  (*(*(v50 - 8) + 56))(v175, 1, 1, v50);
  sub_100656038(v43, v4, v40, v174, 0, (v169 & 1) == 0, v29, v26, v49, v51);
  sub_10000C8CC(v51, &unk_100925990);
  sub_10000C8CC(v49, &unk_100925520);
  sub_10000C8CC(v26, &unk_1009259A0);
  sub_10000C8CC(v29, &unk_100925530);
  sub_10000C8CC(v40, &unk_100925540);
  sub_100745E64();
  v52 = swift_dynamicCastClass();
  if (v52)
  {
  }

  v53 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel;
  v54 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_headingLabel];
  v55 = v173;
  v56 = v171;
  if (v54 && ([v54 isHidden] & 1) == 0 && (v57 = *&v4[v53]) != 0)
  {
    LODWORD(v172) = [v57 hasContent];
  }

  else
  {
    LODWORD(v172) = 0;
  }

  v58 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel;
  v59 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_tertiaryTitleLabel];
  if (v59 && ([v59 isHidden] & 1) == 0 && (v60 = *&v4[v58]) != 0)
  {
    LODWORD(v175) = [v60 hasContent];
  }

  else
  {
    LODWORD(v175) = 0;
  }

  if (sub_10074EED4() && (v61 = sub_100748644(), , v61))
  {
  }

  else
  {
    v62 = sub_10074F3F4();
    v177 = v62;
    v178 = sub_10002AD94(&qword_10092AC70, &type metadata accessor for Feature);
    v63 = sub_10000D134(v176);
    (*(*(v62 - 8) + 104))(v63, enum case for Feature.search_tags(_:), v62);
    LOBYTE(v62) = sub_10074FC74();
    sub_10000C620(v176);
    if ((v62 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v172)
  {
    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:1];
    v64 = *&v4[v58];
    if (v64)
    {
      [v64 setHidden:1];
    }
  }

  else if (v175)
  {
    v65 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
    LODWORD(v175) = 1;
    [v65 setHidden:1];
    goto LABEL_23;
  }

  LODWORD(v175) = 0;
LABEL_23:
  v4[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_useAdsLocale] = sub_10074EE04() & 1;
  if (v52)
  {

    v4[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includesMetadataInformationInLockup] = sub_100745DA4() & 1;
    v4[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_shouldEvenlyDistribute] = sub_100745E34() & 1;
    v66 = sub_10074F3F4();
    v177 = v66;
    v178 = sub_10002AD94(&qword_10092AC70, &type metadata accessor for Feature);
    v67 = sub_10000D134(v176);
    (*(*(v66 - 8) + 104))(v67, enum case for Feature.search_tags(_:), v66);
    LOBYTE(v66) = sub_10074FC74();
    sub_10000C620(v176);
    if (v66 & 1) != 0 && (sub_100745DA4())
    {
      if (sub_10074EF04())
      {
        v68 = v163;
        sub_100749ED4();
        v69 = v167;
        v70 = v168;
        v71 = v162;
        (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
        sub_10002AD94(&qword_100923598, &type metadata accessor for OfferLabelStyle);
        v72 = sub_100753014();
        v73 = *(v70 + 8);
        v73(v71, v69);
        v73(v68, v69);
        if ((v72 & 1) == 0)
        {
          v137 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings] = 0;
          [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
          v138 = 1.0;
          if (!v44[v137])
          {
            v138 = 0.0;
          }

          [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v138, v156}];
          v139 = v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
          sub_10017DFEC(v139);

          goto LABEL_98;
        }
      }

      v74 = sub_10074EF54();
      if (v74)
      {
        v75 = v74;
        sub_10074EDE4();
        if (v76)
        {
          v77 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings] = 1;
          v78 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView;
          [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView] setAlpha:1.0];
          v79 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel;
          v80 = 0.0;
          if (v44[v77])
          {
            v80 = 1.0;
          }

          [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v80, v156}];
          v81 = *&v44[v78];
          [v75 floatValue];
          sub_1004FA340(v82);

          v83 = *&v44[v79];
          v84 = sub_100753064();

          [v83 setText:v84];

          v85 = sub_10074EE54();
          v86 = v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice] = v85 & 1;
          sub_10017DFEC(v86);

          goto LABEL_98;
        }
      }

      v145 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
      v146 = 1.0;
      if (!v44[v145])
      {
        v146 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:v146];
      v147 = sub_10074EE54();
      v148 = v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice] = v147 & 1;
      sub_10017DFEC(v148);
      goto LABEL_98;
    }

    v169 = v52;
    v87 = v4[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice];
    v4[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_10017DFEC(v87);
    v88 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings;
    v4[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings] = 0;
    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v89 = 1.0;
    if (!v4[v88])
    {
      v89 = 0.0;
    }

    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v89, v156}];
    if (sub_10074EF04())
    {
      sub_100749ED4();

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v98 = v166;
    v99 = v167;
    v100 = v168;
    v101 = *(v168 + 56);
    v101(v56, v90, 1, v167);
    (*(v100 + 104))(v98, enum case for OfferLabelStyle.arcadeComingSoon(_:), v99);
    v101(v98, 0, 1, v99);
    v102 = *(v164 + 48);
    sub_100016B4C(v56, v55, &qword_100923590);
    sub_100016B4C(v98, v55 + v102, &qword_100923590);
    v103 = *(v100 + 48);
    if (v103(v55, 1, v99) == 1)
    {
      sub_10000C8CC(v98, &qword_100923590);
      v55 = v173;
      sub_10000C8CC(v56, &qword_100923590);
      if (v103(v55 + v102, 1, v99) == 1)
      {
        sub_10000C8CC(v55, &qword_100923590);
LABEL_98:
        v149 = sub_100745E14();
        if (v149)
        {
          v150 = v149;
          if (sub_1000F0AA8(v149, 0))
          {
            v151 = sub_100745E34();
            sub_1000751CC(v150, v151 & 1, v174);
          }
        }

        goto LABEL_108;
      }
    }

    else
    {
      v104 = v161;
      sub_100016B4C(v55, v161, &qword_100923590);
      if (v103(v55 + v102, 1, v99) != 1)
      {
        v106 = v56;
        v107 = v55;
        v108 = v168;
        v109 = v107 + v102;
        v110 = v163;
        (*(v168 + 32))(v163, v109, v99);
        sub_10002AD94(&qword_100923598, &type metadata accessor for OfferLabelStyle);
        LODWORD(v170) = sub_100753014();
        v111 = *(v108 + 8);
        v111(v110, v99);
        sub_10000C8CC(v166, &qword_100923590);
        sub_10000C8CC(v106, &qword_100923590);
        v111(v104, v99);
        sub_10000C8CC(v107, &qword_100923590);
        if (v170)
        {
          goto LABEL_98;
        }

LABEL_59:
        if (v172)
        {
          [*&v44[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:0];
          v105 = *&v44[v58];
          if (v105)
          {
            [v105 setHidden:0];
          }
        }

        else if (v175)
        {
          [*&v44[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel] setHidden:0];
        }

        goto LABEL_98;
      }

      sub_10000C8CC(v166, &qword_100923590);
      sub_10000C8CC(v56, &qword_100923590);
      (*(v168 + 8))(v104, v99);
    }

    sub_10000C8CC(v55, &qword_100923588);
    goto LABEL_59;
  }

  if (!swift_dynamicCastClass())
  {
LABEL_68:
    if (sub_10074EF04())
    {
      v112 = v163;
      sub_100749ED4();
      v113 = v167;
      v114 = v168;
      v115 = v162;
      (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
      sub_10002AD94(&qword_100923598, &type metadata accessor for OfferLabelStyle);
      v116 = sub_100753014();
      v117 = *(v114 + 8);
      v117(v115, v113);
      v117(v112, v113);
      if ((v116 & 1) == 0)
      {
        v122 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings] = 0;
        [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
        v123 = 1.0;
        if (!v44[v122])
        {
          v123 = 0.0;
        }

        [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v123, v156}];
        v124 = v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_10017DFEC(v124);

        goto LABEL_108;
      }
    }

    if ((v172 | v175))
    {
      if (!sub_10074EED4())
      {
        goto LABEL_104;
      }

      v118 = sub_100748644();

      if (!v118)
      {
        goto LABEL_104;
      }
    }

    if (sub_10074EE54())
    {
      v119 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
      v120 = 1.0;
      if (!v44[v119])
      {
        v120 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v120, v156}];
      v121 = v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice] = 1;
LABEL_107:
      sub_10017DFEC(v121);
LABEL_108:
      [v44 setNeedsLayout];
    }

    v125 = sub_10074EF54();
    if (v125)
    {
      v126 = v125;
      sub_10074EDE4();
      if (v127)
      {
        v128 = v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_10017DFEC(v128);
        v129 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings] = 1;
        v130 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView;
        [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView] setAlpha:1.0];
        v131 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel;
        v132 = 0.0;
        if (v44[v129])
        {
          v132 = 1.0;
        }

        [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v132, v156}];
        v133 = *&v44[v130];
        [v126 floatValue];
        sub_1004FA340(v134);

        v135 = *&v44[v131];
        v136 = sub_100753064();

        [v135 setText:v136];

        goto LABEL_108;
      }
    }

LABEL_104:
    v152 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
    v153 = 1.0;
    if (!v44[v152])
    {
      v153 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:v153];
    v121 = v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
    goto LABEL_107;
  }

  v91 = sub_100745DF4();
  if (!v91)
  {

    goto LABEL_68;
  }

  v92 = v91;
  if ((sub_1000F0AA8(0, v91) & 1) == 0)
  {

    goto LABEL_68;
  }

  if (sub_100745DD4() >> 62)
  {
    sub_100754664();
  }

  result = sub_100745E54();
  v94 = v160;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

LABEL_50:

    sub_100016B4C(v156, v94, &unk_100923200);
    v96 = sub_1007469A4();
    v97 = *(v96 - 8);
    if ((*(v97 + 48))(v94, 1, v96) == 1)
    {
      sub_10000C8CC(v94, &unk_100923200);
    }

    else
    {
      sub_1007474C4();
      sub_10002AD94(&qword_1009235A0, &type metadata accessor for BundleSearchResult);
      sub_1007468D4();
      (*(v97 + 8))(v94, v96);
    }

    v140 = v159;
    v141 = v157;
    _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    sub_1002640F8(v92, v141, v174);

    (*(v158 + 8))(v141, v140);
    v142 = v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_10017DFEC(v142);
    v143 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v144 = 1.0;
    if (!v44[v143])
    {
      v144 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel] setAlpha:{v144, v156}];

    goto LABEL_108;
  }

  v154 = result;
  v155 = sub_100754664();
  result = v154;
  if (!v155)
  {
    goto LABEL_50;
  }

LABEL_45:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_100754574();
LABEL_48:

    v95 = sub_10074F794();

    if (v95 >> 62)
    {
      sub_100754664();
    }

    goto LABEL_50;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_48;
  }

  __break(1u);
  return result;
}

void sub_10002A748(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton());

    sub_10017D514([v6 init]);
    v7 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      sub_10074F774();
      sub_10074ECB4();
      v11 = v10;

      if (v11)
      {
        v12 = sub_100753064();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v15 = *&v3[v7];
      if (v15)
      {
        v16 = swift_allocObject();
        *(v16 + 16) = a2;
        *(v16 + 24) = a1;
        v17 = &v15[qword_100934DD0];
        v18 = *&v15[qword_100934DD0];
        *v17 = sub_10002AD8C;
        v17[1] = v16;

        v19 = v15;

        sub_1000164A8(v18);
      }
    }

    v20 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_editorsChoiceView];
    if (v20)
    {
      sub_100016C60(0, &qword_100923500);
      v21 = v20;
      v22 = sub_100753DF4();
      [v21 setTintColor:v22];
    }

    v23 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
    sub_100016C60(0, &qword_100923500);
    v24 = sub_100753DF4();
    [v23 setTextColor:v24];

    v25 = sub_10074F3F4();
    v38[3] = v25;
    v38[4] = sub_10002AD94(&qword_10092AC70, &type metadata accessor for Feature);
    v26 = sub_10000D134(v38);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.search_tags(_:), v25);
    LOBYTE(v24) = sub_10074FC74();
    sub_10000C620(v38);
    v27 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_ratingCountLabel];
    if (v24)
    {
      v28 = sub_100753DF4();
    }

    else
    {
      v28 = sub_100753DE4();
    }

    v29 = v28;
    [v27 setTextColor:v28];

    sub_10074F764();
    v31 = v30;
    v32 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel];
    v33 = [v32 superview];
    if (!v33 || (v34 = v33, sub_100016C60(0, &qword_100922300), v35 = v3, v36 = sub_100753FC4(), v34, v35, (v36 & 1) == 0))
    {
      [v3 addSubview:v32];
    }

    [v32 setHidden:v31 == 0];
    if (v31)
    {
      v37 = sub_100753064();
    }

    else
    {
      v37 = 0;
    }

    [v32 setText:v37];

    [v3 setNeedsLayout];
    v3[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_isDisplayingSearchAd] = 1;
    sub_10017E148();
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_isDisplayingSearchAd] = 0;
    sub_10017E148();
    v13 = OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }
}

uint64_t sub_10002ABD4(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000C8CC(v4, &unk_100923960);
  }

  v8 = sub_10074F774();
  sub_1003C0E00(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_10002AD4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002AD94(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10002ADDC()
{
  qword_10097C980 = &type metadata for Double;
  unk_10097C988 = &protocol witness table for Double;
  qword_10097C968 = 0x4030000000000000;
  qword_10097C9B0 = &type metadata for Double;
  unk_10097C9B8 = &protocol witness table for Double;
  qword_10097C998 = 0x4020000000000000;
  byte_10097C990 = 1;
}

char *sub_10002AE18(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_rateAction;
  v19 = sub_10000C518(&qword_1009235F8);
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v5[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_isSingleColumn] = 0;
  if (qword_100921138 != -1)
  {
    swift_once();
  }

  v20 = sub_100750534();
  v21 = sub_10000D0FC(v20, qword_1009810E0);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v17, v21, v20);
  (*(v22 + 56))(v17, 0, 1, v20);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_100745C84());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_titleLabel] = sub_100745C74();
  v24 = type metadata accessor for StarRatingControl();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating] = 0;
  *&v25[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_lastSentRating] = 0;
  v26 = &v25[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_touchOutsideMargin];
  *v26 = xmmword_1007A6870;
  *(v26 + 1) = xmmword_1007A6870;
  v46.receiver = v25;
  v46.super_class = v24;
  v27 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 clearColor];
  [v29 setBackgroundColor:v30];

  [v29 setContentMode:3];
  *&v29[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating] = 0;

  *&v5[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_ratingControl] = v29;
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v36 = OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_titleLabel;
  v37 = *&v35[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_titleLabel];
  sub_100016C60(0, &qword_100923500);
  v38 = v37;
  v39 = sub_100753DD4();
  [v38 setTextColor:v39];

  [v35 addSubview:*&v35[v36]];
  v40 = OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_ratingControl;
  [v35 addSubview:*&v35[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_ratingControl]];
  v41 = *&v35[v40];
  sub_100016C60(0, &qword_100929CC0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v41;

  v43 = sub_100753FF4();
  [v42 addAction:v43 forControlEvents:4096];

  return v35;
}

uint64_t sub_10002B344()
{
  v0 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v0 - 8);
  v2 = v16 - v1;
  v3 = sub_10000C518(&unk_100923600);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - v4;
  v6 = sub_10000C518(&qword_1009235F8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_rateAction;
    swift_beginAccess();
    sub_10002C5BC(v11 + v12, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      return sub_10000C8CC(v5, &unk_100923600);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      sub_1007455C4();
      sub_100742FB4();

      sub_1007455B4();
      v13 = sub_10000C518(&unk_100923210);
      sub_1007526C4();

      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v2, 1, v13) == 1)
      {
        (*(v7 + 8))(v9, v6);

        return sub_10000C8CC(v2, &unk_100923960);
      }

      else
      {
        sub_1007455C4();
        v15 = sub_1007455B4();
        sub_1003C1354(v16[1], 1, v15, v2);

        (*(v7 + 8))(v9, v6);

        return (*(v14 + 8))(v2, v13);
      }
    }
  }

  return result;
}

uint64_t sub_10002B7C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750E94();
  v52 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  __chkstk_darwin(v12);
  v51 = &v46 - v13;
  v14 = sub_100750BD4();
  v54 = *(v14 - 8);
  v55 = v14;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v53 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62.receiver = v1;
  v62.super_class = ObjectType;
  objc_msgSendSuper2(&v62, "layoutSubviews", v15);
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_titleLabel];
  sub_1007477B4();
  v19 = v18;
  v56 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_ratingControl];
  v59[0] = v56;
  v57 = type metadata accessor for StarRatingControl();
  sub_100750434();
  v20 = &selRef_initWithTitle_style_target_action_;
  v21 = [v1 traitCollection];
  if (qword_10091FDE8 != -1)
  {
    swift_once();
  }

  if (sub_100753804() & 1) != 0 || (sub_1007537D4())
  {

    sub_10000C620(v61);
  }

  else
  {
    v50 = v3;
    v47 = "ion";
    v63._object = 0x8000000100765D00;
    v63._countAndFlagsBits = 0xD000000000000016;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    v33 = sub_1007458B4(v63, v65);
    v48 = v34;
    v49 = v33;
    sub_100750E84();
    if (qword_100921138 != -1)
    {
      swift_once();
    }

    v35 = sub_100750534();
    sub_10000D0FC(v35, qword_1009810E0);
    sub_100750E54();
    v36 = *(v52 + 8);
    v37 = v5;
    v38 = v50;
    v36(v37, v50);
    sub_100750E74();
    v36(v8, v38);
    sub_100750E64();
    v36(v11, v38);
    sub_100750BB4();
    v39 = v53;
    sub_100750BF4();
    sub_100750BC4();
    v41 = v40;
    sub_10000C888(v61, v61[3]);
    sub_100751254();
    v43 = v42;
    sub_10000C888(&qword_10097C968, qword_10097C980);
    sub_100750574();
    v45 = v44;

    (*(v54 + 8))(v39, v55);
    sub_10000C620(v61);
    v20 = &selRef_initWithTitle_style_target_action_;
    if (v19 >= v43 + v41 + v45)
    {
      v22._object = (v47 | 0x8000000000000000);
      v22._countAndFlagsBits = 0xD000000000000016;
      goto LABEL_7;
    }
  }

  v22._countAndFlagsBits = 0x525F4F545F504154;
  v22._object = 0xEB00000000455441;
LABEL_7:
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_1007458B4(v22, v64);
  v23 = sub_100753064();

  [v17 setText:v23];

  sub_10002C478(&qword_10097C968, v59);
  v60 = v1[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_isSingleColumn];
  sub_10002C478(v59, v61);
  v61[14] = sub_100745C84();
  v61[15] = &protocol witness table for UILabel;
  v61[11] = v17;
  v58 = v56;
  v24 = v17;
  sub_100750434();
  sub_10002C4D4(v59);
  [v1 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [v1 v20[129]];
  sub_1003EC070(v31, v26, v28, v30);

  return sub_10002C528(v61);
}

double sub_10002BDA0(double a1)
{
  v2 = v1;
  v4 = sub_100750E94();
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v36 - v8;
  __chkstk_darwin(v10);
  v12 = v36 - v11;
  __chkstk_darwin(v13);
  v15 = v36 - v14;
  v16 = sub_100750BD4();
  v39 = *(v16 - 8);
  v40 = v16;
  __chkstk_darwin(v16);
  v37 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10091FDE8 != -1)
  {
    swift_once();
  }

  sub_10002C478(&qword_10097C968, v42);
  v43 = v1[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_isSingleColumn];
  sub_10002C478(v42, v44);
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_titleLabel];
  v44[14] = sub_100745C84();
  v44[15] = &protocol witness table for UILabel;
  v44[11] = v18;
  v41 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_ratingControl];
  type metadata accessor for StarRatingControl();
  v19 = v18;
  sub_100750434();
  sub_10002C4D4(v42);
  v20 = [v2 traitCollection];
  if (sub_100753804() & 1) != 0 || (sub_1007537D4())
  {
    v21 = 1;
  }

  else
  {
    v36[3] = v15;
    v46._object = 0x8000000100765D00;
    v46._countAndFlagsBits = 0xD000000000000016;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v22 = sub_1007458B4(v46, v47);
    v36[1] = v23;
    v36[2] = v22;
    sub_100750E84();
    if (qword_100921138 != -1)
    {
      swift_once();
    }

    v24 = sub_100750534();
    sub_10000D0FC(v24, qword_1009810E0);
    sub_100750E54();
    v25 = *(v38 + 8);
    v25(v6, v4);
    sub_100750E74();
    v25(v9, v4);
    sub_100750E64();
    v25(v12, v4);
    sub_100750BB4();
    v26 = v37;
    sub_100750BF4();
    sub_100750BC4();
    v28 = v27;
    sub_10000C888(v45, v45[3]);
    sub_100751254();
    v30 = v29;
    sub_10000C888(v44, v44[3]);
    sub_100750574();
    v32 = v31;
    (*(v39 + 8))(v26, v40);
    v21 = v30 + v28 + v32 > a1;
  }

  sub_1003EBCE8(v21, v42);
  sub_10000C888(v42, v42[3]);
  sub_100751254();
  v34 = v33;

  sub_10000C620(v42);
  sub_10002C528(v44);
  return v34;
}

uint64_t type metadata accessor for ProductTapToRateView()
{
  result = qword_1009235E0;
  if (!qword_1009235E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002C36C()
{
  sub_10002C414();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002C414()
{
  if (!qword_1009235F0)
  {
    sub_10000C724(&qword_1009235F8);
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_1009235F0);
    }
  }
}

uint64_t sub_10002C57C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10002C62C(unint64_t a1)
{
  v1 = a1;
  v39 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v37 = _swiftEmptyArrayStorage;
    v32 = v1 & 0xC000000000000001;
    v33 = v1 + 32;
    v30 = i;
    v31 = v1;
    while (1)
    {
      if (v4)
      {
        v5 = sub_100754574();
      }

      else
      {
        if (v3 >= *(v34 + 16))
        {
          goto LABEL_45;
        }

        v5 = *(v33 + 8 * v3);
      }

      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v8 = v6;
        sub_100753284();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();

        v37 = v39;
        if (v3 == i)
        {
          return v37;
        }
      }

      else
      {
        v35 = v6;
        v9 = [v6 subviews];
        sub_100016C60(0, &qword_100922300);
        v10 = sub_1007532A4();

        v11 = sub_10002C62C(v10);

        v12 = v11 >> 62;
        if (v11 >> 62)
        {
          v13 = sub_100754664();
        }

        else
        {
          v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = v37 >> 62;
        if (v37 >> 62)
        {
          v15 = sub_100754664();
        }

        else
        {
          v15 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v36 = v13;
        v7 = __OFADD__(v15, v13);
        v16 = v15 + v13;
        if (v7)
        {
          goto LABEL_46;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v14)
          {
            v17 = v37 & 0xFFFFFFFFFFFFFF8;
            if (v16 <= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

LABEL_26:
          sub_100754664();
          goto LABEL_27;
        }

        if (v14)
        {
          goto LABEL_26;
        }

LABEL_27:
        v37 = sub_100754584();
        v17 = v37 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
        v18 = *(v17 + 16);
        v19 = *(v17 + 24);
        if (v12)
        {
          v20 = sub_100754664();
          if (v20)
          {
LABEL_32:
            if (((v19 >> 1) - v18) < v36)
            {
              goto LABEL_48;
            }

            v21 = v17 + 8 * v18 + 32;
            if (v12)
            {
              if (v20 < 1)
              {
                goto LABEL_50;
              }

              sub_10002DDC8(&unk_1009236E0, &qword_1009236D8);
              for (j = 0; j != v20; ++j)
              {
                sub_10000C518(&qword_1009236D8);
                v24 = sub_1004A2704(v38, j, v11);
                v26 = *v25;
                (v24)(v38, 0);
                *(v21 + 8 * j) = v26;
              }

              i = v30;
              v1 = v31;
              v22 = v36;
            }

            else
            {
              sub_100016C60(0, &qword_1009236D0);
              v22 = v36;
              swift_arrayInitWithCopy();
            }

            v4 = v32;
            if (v22 > 0)
            {
              v27 = *(v17 + 16);
              v7 = __OFADD__(v27, v22);
              v28 = v27 + v22;
              if (v7)
              {
                goto LABEL_49;
              }

              *(v17 + 16) = v28;
            }

            goto LABEL_5;
          }
        }

        else
        {
          v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            goto LABEL_32;
          }
        }

        v4 = v32;
        if (v36 > 0)
        {
          goto LABEL_47;
        }

LABEL_5:
        v39 = v37;
        if (v3 == i)
        {
          return v37;
        }
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10002CBAC(void *a1)
{
  v113 = sub_1007521E4();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100752224();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100752244();
  v108 = *(v116 - 8);
  __chkstk_darwin(v116);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v107 = &v94 - v10;
  v11 = [a1 viewForKey:{UITransitionContextFromViewKey, v9}];
  v12 = v11;
  if (v11)
  {
    [v11 frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v21 = [a1 containerView];
    [v21 bounds];
    v14 = v22;
    v16 = v23;
    v18 = v24;
    v20 = v25;
  }

  *&v26 = COERCE_DOUBLE(swift_allocObject());
  v27 = &v1[OBJC_IVAR____TtC22SubscribePageExtension21BouncyToRectAnimation_toRect];
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension21BouncyToRectAnimation_toRect + 32])
  {
    v118.origin.x = v14;
    v118.origin.y = v16;
    v118.size.width = v18;
    v118.size.height = v20;
    v28 = CGRectGetWidth(v118) * 0.3;
    v119.origin.x = v14;
    v119.origin.y = v16;
    v119.size.width = v18;
    v119.size.height = v20;
    v29 = CGRectGetHeight(v119) * 0.3;
    v120.origin.x = v14;
    v120.origin.y = v16;
    v120.size.width = v18;
    v120.size.height = v20;
    v121 = CGRectInset(v120, v28, v29);
    x = v121.origin.x;
    y = v121.origin.y;
    width = v121.size.width;
    height = v121.size.height;
  }

  else
  {
    width = v27[2];
    height = v27[3];
    x = *v27;
    y = v27[1];
  }

  v106 = v1;
  v26[2] = x;
  v26[3] = y;
  v26[4] = width;
  v26[5] = height;
  v122.origin.x = v14;
  v122.origin.y = v16;
  v122.size.width = v18;
  v122.size.height = v20;
  v105 = CGRectGetWidth(v122);
  v123.origin.x = x;
  v123.origin.y = y;
  v123.size.width = width;
  v123.size.height = height;
  v99 = CGRectGetWidth(v123);
  v124.origin.x = v14;
  v124.origin.y = v16;
  v124.size.width = v18;
  v124.size.height = v20;
  v97 = CGRectGetHeight(v124);
  v125.origin.x = x;
  v125.origin.y = y;
  v125.size.width = width;
  v125.size.height = height;
  v96 = CGRectGetHeight(v125);
  v126.origin.x = v14;
  v126.origin.y = v16;
  v126.size.width = v18;
  v126.size.height = v20;
  MidX = CGRectGetMidX(v126);
  v127.origin.x = x;
  v127.origin.y = y;
  v127.size.width = width;
  v127.size.height = height;
  v34 = CGRectGetMidX(v127);
  v128.size.height = v20;
  v35 = v34;
  *&v104 = v14;
  v128.origin.x = v14;
  v103 = v16;
  v128.origin.y = v16;
  v102 = v18;
  v128.size.width = v18;
  v101 = v128.size.height;
  MidY = CGRectGetMidY(v128);
  v114 = x;
  v129.origin.x = x;
  v98 = y;
  v129.origin.y = y;
  v115 = width;
  v129.size.width = width;
  v100 = height;
  v129.size.height = height;
  v37 = CGRectGetMidY(v129);
  v38 = sqrt((v105 - v99) * (v105 - v99) + (v97 - v96) * (v97 - v96));
  v39 = sqrt((MidX - v35) * (MidX - v35) + (MidY - v37) * (MidY - v37));
  if (v38 > v39)
  {
    v39 = v38;
  }

  v99 = v39 / 0.7 / v39;
  v40 = [a1 viewForKey:UITransitionContextToViewKey];
  v41 = *&v40;
  if (*&v40 != 0.0)
  {
    v42 = v40;
    v43 = [a1 containerView];
    [v43 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;

    [v42 setFrame:{v45, v47, v49, v51}];
    v52 = v42;
    v53 = [a1 containerView];
    [v53 insertSubview:v52 below:v12];
  }

  v105 = v41;
  v54 = v114;
  v130.origin.x = v114;
  v55 = v98;
  v130.origin.y = v98;
  v130.size.width = v115;
  v56 = v100;
  v130.size.height = v100;
  MinY = CGRectGetMinY(v130);
  v58 = *&v104;
  *&v131.origin.x = v104;
  v59 = v103;
  v131.origin.y = v103;
  v60 = v102;
  v131.size.width = v102;
  v61 = v101;
  v131.size.height = v101;
  v62 = MinY - CGRectGetMinY(v131);
  v132.origin.x = v54;
  v132.origin.y = v55;
  v63 = v115;
  v132.size.width = v115;
  v132.size.height = v56;
  v64 = CGRectGetMidX(v132);
  v133.origin.x = v58;
  v133.origin.y = v59;
  v133.size.width = v60;
  v133.size.height = v61;
  v65 = CGRectGetMidX(v133);
  CATransform3DMakeTranslation(&aBlock, v64 - v65, v62, 0.0);
  v26[3] = v59;
  v134.origin.x = v58;
  v134.origin.y = v59;
  v134.size.width = v60;
  v134.size.height = v61;
  v66 = CGRectGetWidth(v134);
  v135.origin.x = v114;
  v135.origin.y = v59;
  v135.size.width = v63;
  v135.size.height = v56;
  v67 = CGRectGetWidth(v135);
  v115 = *&v26;
  v26[2] = v58 + (v66 - v67) * 0.5;
  v68 = sub_100753064();
  v69 = [objc_opt_self() animationWithKeyPath:v68];

  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 valueWithCATransform3D:&aBlock];
  [v71 setToValue:v72];

  [v71 setDamping:16.0];
  [v71 setMass:1.0];
  [v71 setStiffness:150.0];
  [v71 setInitialVelocity:v99];
  v73 = v71;
  [v73 settlingDuration];
  [v73 setDuration:?];
  [v73 setFillMode:kCAFillModeForwards];
  [v73 setRemovedOnCompletion:0];

  if (v12)
  {
    v74 = [v12 layer];
    v75 = sub_100753064();
    [v74 addAnimation:v73 forKey:v75];
  }

  [v73 settlingDuration];
  sub_100016C60(0, &qword_100926D00);
  *&v104 = COERCE_DOUBLE(sub_100753774());
  sub_100752234();
  v76 = v107;
  sub_1007522B4();
  v114 = v108[1];
  (*&v114)(v7, v116);
  v77 = swift_allocObject();
  v78 = v106;
  *(v77 + 16) = a1;
  *(v77 + 24) = v78;
  *&aBlock.m21 = sub_10002DC8C;
  *&aBlock.m22 = v77;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_1000CF7B0;
  *&aBlock.m14 = &unk_100864170;
  v79 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v108 = v78;

  sub_100752204();
  *&aBlock.m11 = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750);
  v80 = v12;
  sub_10002DDC8(&qword_1009236C0, &unk_10092F750);
  v81 = v110;
  v82 = v113;
  sub_1007543A4();
  v83 = v104;
  sub_100753734();
  _Block_release(v79);

  (*(v112 + 8))(v81, v82);
  (*(v109 + 8))(v5, v111);
  (*&v114)(v76, v116);
  v84 = objc_opt_self();
  v85 = swift_allocObject();
  v86 = v108;
  *(v85 + 2) = v108;
  *(v85 + 3) = v80;
  v85[4] = v115;
  *&aBlock.m21 = sub_10002DD7C;
  *&aBlock.m22 = v85;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_1000CF7B0;
  *&aBlock.m14 = &unk_1008641C0;
  v87 = _Block_copy(&aBlock);
  v88 = v86;
  v89 = v80;

  v90 = swift_allocObject();
  *(v90 + 16) = v80;
  *&aBlock.m21 = sub_10002DDC0;
  *&aBlock.m22 = v90;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_100144DD8;
  *&aBlock.m14 = &unk_100864210;
  v91 = _Block_copy(&aBlock);
  v92 = v89;

  [v84 animateWithDuration:131201 delay:v87 options:v91 animations:0.35 completion:0.0];

  _Block_release(v91);
  _Block_release(v87);
}

id sub_10002D820(uint64_t a1, void *a2, double *a3)
{
  v6 = OBJC_IVAR____TtC22SubscribePageExtension27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  v9 = *(v8 + 16);
  if (v9)
  {

    v10 = (v8 + 48);
    v11 = (v8 + 48);
    do
    {
      v12 = *v11;
      v11 += 24;
      if (v12 == 1)
      {
        v13 = *(v10 - 2);

        v13(1, 1);
      }

      v10 = v11;
      --v9;
    }

    while (v9);
  }

  if (a2)
  {
    swift_beginAccess();
    result = [a2 setFrame:{a3[2], a3[3], a3[4], a3[5]}];
    if (*(a1 + OBJC_IVAR____TtC22SubscribePageExtension21BouncyToRectAnimation_toRect + 32) == 1)
    {
      return [a2 setAlpha:0.0];
    }
  }

  return result;
}

void sub_10002D948(int a1, id a2)
{
  if (a2)
  {
    v2 = [a2 subviews];
    sub_100016C60(0, &qword_100922300);
    v3 = sub_1007532A4();

    v4 = sub_10002C62C(v3);

    v5 = [objc_allocWithZone(CATransition) init];
    v6 = objc_opt_self();
    v15 = v5;
    v7 = [v6 functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v15 setTimingFunction:v7];

    [v15 setType:kCATransitionFade];
    [v15 setDuration:0.2];

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
    {
      v9 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = sub_100754574();
        }

        else
        {
          if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v10 = *(v4 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v13 = [v10 layer];
        [v13 setMasksToBounds:1];

        v14 = [v11 layer];
        [v14 addAnimation:v15 forKey:kCATransitionFade];

        ++v9;
        if (v12 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  else
  {
    __break(1u);
  }
}

id sub_10002DBE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BouncyToRectAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002DC4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002DCC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002DCDC()
{
  result = qword_1009236B0;
  if (!qword_1009236B0)
  {
    sub_1007521E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009236B0);
  }

  return result;
}

uint64_t sub_10002DD34()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002DD88()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DDC8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000C724(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10002DE20()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  *&v0[v1] = sub_100413A50(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension25ShelfDisplayingFlowLayout_multiColumnOrigins;
  *&v0[v2] = sub_100413B30(_swiftEmptyArrayStorage);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v3 = objc_msgSendSuper2(&v8, "init");
  sub_100016C60(0, &qword_10092DB20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_100753064();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  return v5;
}

void sub_10002E018(double a1, double a2, double a3, double a4)
{
  v52 = sub_1007417F4();
  v9 = *(v52 - 8);
  __chkstk_darwin(v52);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v44 - v13;
  v14 = type metadata accessor for ShelfDisplayingFlowLayout();
  v46 = v4;
  v55.receiver = v4;
  v55.super_class = v14;
  v15 = objc_msgSendSuper2(&v55, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v15)
  {
    return;
  }

  v16 = v15;
  sub_100016C60(0, &qword_100923730);
  v17 = sub_1007532A4();

  v54 = _swiftEmptyArrayStorage;
  if (v17 >> 62)
  {
    v18 = sub_100754664();
    v19 = v46;
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_25:
    v45 = _swiftEmptyArrayStorage;
LABEL_26:
    v53 = v17;
    sub_10049FDF4(v45);
    return;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = v46;
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_4:
  if (v18 >= 1)
  {
    v20 = OBJC_IVAR____TtC22SubscribePageExtension25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
    v21 = v17 & 0xC000000000000001;
    v49 = OBJC_IVAR____TtC22SubscribePageExtension25ShelfDisplayingFlowLayout_multiColumnOrigins;
    v50 = v11;
    swift_beginAccess();
    v44 = v20;
    swift_beginAccess();
    v22 = 0;
    v48 = "multiColumnOrigins";
    v23 = (v9 + 8);
    v45 = _swiftEmptyArrayStorage;
    v47 = v17 & 0xC000000000000001;
    while (1)
    {
      v24 = v21 ? sub_100754574() : *(v17 + 8 * v22 + 32);
      v25 = v24;
      if (![v24 representedElementCategory])
      {
        break;
      }

LABEL_7:
      if (v18 == ++v22)
      {
        goto LABEL_26;
      }
    }

    v26 = [v25 indexPath];
    v27 = v51;
    sub_100741744();

    v28 = sub_10002EC28();
    v29 = *v23;
    (*v23)(v27, v52);
    if (v28)
    {
      v30 = v28;
      sub_100753284();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();

      v45 = v54;
      v19 = v46;
    }

    v31 = [v25 indexPath];
    v32 = v50;
    sub_100741744();

    v33 = *&v19[v49];
    if (*(v33 + 16))
    {

      v34 = sub_1004123FC(v32);
      if (v35)
      {
        v36 = *(v33 + 56) + 16 * v34;
        v37 = *v36;
        v38 = *(v36 + 8);

        v39 = sub_100741784();
        v40 = *&v19[v44];
        if (*(v40 + 16))
        {
          v41 = sub_100412104(v39);
          if (v42)
          {
            v43 = *(*(v40 + 56) + 8 * v41);

            v29(v32, v52);

            [v25 frame];
            [v25 setFrame:{v37, v38 + v43}];

LABEL_23:
            v21 = v47;
            goto LABEL_7;
          }
        }
      }

      else
      {
      }
    }

    v29(v32, v52);
    goto LABEL_23;
  }

  __break(1u);
}

id sub_10002E534()
{
  v1 = sub_1007417F4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_100741704().super.isa;
  v6 = type metadata accessor for ShelfDisplayingFlowLayout();
  v15.receiver = v0;
  v15.super_class = v6;
  v7 = objc_msgSendSuper2(&v15, "layoutAttributesForItemAtIndexPath:", isa);

  if (v7)
  {
    v8 = [v7 indexPath];
    sub_100741744();

    v9 = sub_10002EF1C(v4);
    v11 = v10;
    v13 = v12;
    (*(v2 + 8))(v4, v1);
    if ((v13 & 1) == 0)
    {
      [v7 frame];
      [v7 setFrame:{*&v9, v11}];
    }
  }

  return v7;
}

void *sub_10002EA8C(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  v9 = objc_msgSendSuper2(&v18, "invalidationContextForBoundsChange:", a1, a2, a3, a4);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = [v4 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;

    if (v14 != a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = 0.0;
    if (a3 != 0.0)
    {
LABEL_6:
      [v10 setInvalidateFlowLayoutAttributes:1];
      [v10 setInvalidateFlowLayoutDelegateMetrics:1];
      return v10;
    }
  }

  if (v16 != a4)
  {
    goto LABEL_6;
  }

  return v10;
}

id sub_10002EC28()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [v0 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 delegate];

      if (v5)
      {
        v33 = &OBJC_PROTOCOL____TtP22SubscribePageExtension49UICollectionViewDelegateShelfDisplayingFlowLayout_;
        v6 = swift_dynamicCastObjCProtocolConditional();
        if (!v6)
        {
          goto LABEL_14;
        }

        v7 = [v6 collectionView:v2 layout:v0 shouldProvideBackgroundAtSection:sub_100741784()];
        swift_unknownObjectRelease();
        if (v7)
        {
          v8 = [v0 collectionView];
          if (v8)
          {
            v9 = v8;
            v10 = [v8 delegate];

            if (v10)
            {
              v32 = &OBJC_PROTOCOL____TtP22SubscribePageExtension49UICollectionViewDelegateShelfDisplayingFlowLayout_;
              v11 = swift_dynamicCastObjCProtocolConditional();
              if (v11)
              {
                [v11 collectionView:v2 layout:v0 insetForBackgroundAtSection:sub_100741784()];
                v13 = v12;
                v15 = v14;
                swift_unknownObjectRelease();
                isa = sub_100741704().super.isa;
                v31.receiver = v0;
                v31.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
                v17 = objc_msgSendSuper2(&v31, "layoutAttributesForItemAtIndexPath:", isa);

                if (v17)
                {
                  [v17 frame];
                  v19 = v18;
                  v21 = v20;
                  v23 = v22;
                  v25 = v24;
                  v26 = sub_100753064();
                  v27 = sub_100741704().super.isa;
                  v28 = [objc_opt_self() layoutAttributesForDecorationViewOfKind:v26 withIndexPath:v27];

                  v34.origin.x = v19;
                  v34.origin.y = v21;
                  v34.size.width = v23;
                  v34.size.height = v25;
                  v29 = CGRectGetMinY(v34) - v13;
                  [v2 bounds];
                  Width = CGRectGetWidth(v35);
                  v36.origin.x = v19;
                  v36.origin.y = v21;
                  v36.size.width = v23;
                  v36.size.height = v25;
                  [v28 setFrame:{0.0, v29, Width, v15 + v13 + CGRectGetHeight(v36)}];
                  [v28 setZIndex:-1];

                  return v28;
                }

                goto LABEL_11;
              }

LABEL_14:

              swift_unknownObjectRelease();
              return 0;
            }
          }
        }
      }
    }

LABEL_11:

    return 0;
  }

  return result;
}

uint64_t sub_10002EF1C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_1004123FC(a1);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 16 * v6);

      v9 = sub_100741784();
      v10 = OBJC_IVAR____TtC22SubscribePageExtension25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
      swift_beginAccess();
      if (*(*(v2 + v10) + 16))
      {
        sub_100412104(v9);
        if (v11)
        {
          return v8;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_10002F01C()
{
  v1 = v0;
  v2 = sub_1007417F4();
  v91 = *(v2 - 8);
  __chkstk_darwin(v2);
  v104 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v87 - v5;
  v7 = sub_100413A50(_swiftEmptyArrayStorage);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension25ShelfDisplayingFlowLayout_multiColumnMinYBySection;
  swift_beginAccess();
  v90 = v8;
  *&v0[v8] = v7;

  v9 = sub_100413B30(_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension25ShelfDisplayingFlowLayout_multiColumnOrigins;
  swift_beginAccess();
  v102 = v10;
  *&v1[v10] = v9;

  v11 = [v1 collectionView];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v1 collectionView];
  if (!v13 || (v14 = v13, v15 = [v13 delegate], v14, !v15))
  {
LABEL_55:

    return;
  }

  v107 = &OBJC_PROTOCOL____TtP22SubscribePageExtension49UICollectionViewDelegateShelfDisplayingFlowLayout_;
  v16 = swift_dynamicCastObjCProtocolConditional();
  if (!v16)
  {

    swift_unknownObjectRelease();
    return;
  }

  v17 = v16;
  v18 = [v12 numberOfSections];
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

  v19 = v18;
  if (!v18)
  {
LABEL_54:
    swift_unknownObjectRelease();
    goto LABEL_55;
  }

  v20 = 0;
  left = UIEdgeInsetsZero.left;
  v101 = (v91 + 8);
  v97 = (v91 + 16);
  v21 = &stru_1008F2000;
  v99 = xmmword_1007A6580;
  v22 = &stru_1008F2000;
  v94 = v12;
  v92 = v17;
  v93 = v15;
  v88 = v18;
  while (1)
  {
    if ([v17 v21[86].attr])
    {
      v103 = [v17 collectionView:v12 layout:v1 multiColumnCountAtSection:v20];
      if (v103 >= 2)
      {
        break;
      }
    }

LABEL_10:
    if (++v20 == v19)
    {
      goto LABEL_54;
    }
  }

  v23 = [v17 respondsToSelector:"collectionView:layout:insetForSectionAtIndex:"];
  v24 = left;
  if (v23)
  {
    [v17 collectionView:v12 layout:v1 insetForSectionAtIndex:v20];
    v24 = v25;
  }

  [v17 collectionView:v12 layout:v1 multiColumnMarginAt:v20];
  v27 = v26;
  v28 = [v12 numberOfItemsInSection:v20];
  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (!v28)
  {
    v31 = 1.79769313e308;
LABEL_45:
    v73 = v90;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = *&v1[v73];
    v75 = v106;
    *&v1[v73] = 0x8000000000000000;
    v76 = sub_100412104(v20);
    v78 = v75[2];
    v79 = (v77 & 1) == 0;
    v70 = __OFADD__(v78, v79);
    v80 = v78 + v79;
    if (v70)
    {
      goto LABEL_61;
    }

    v81 = v77;
    if (v75[3] >= v80)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = v76;
        sub_10067535C();
        v76 = v86;
      }
    }

    else
    {
      sub_100670A7C(v80, isUniquelyReferenced_nonNull_native);
      v76 = sub_100412104(v20);
      if ((v81 & 1) != (v82 & 1))
      {
        goto LABEL_65;
      }
    }

    v19 = v88;
    v21 = &stru_1008F2000;
    v83 = v106;
    if (v81)
    {
      *(v106[7] + 8 * v76) = v31;
    }

    else
    {
      v106[(v76 >> 6) + 8] |= 1 << v76;
      *(v83[6] + 8 * v76) = v20;
      *(v83[7] + 8 * v76) = v31;
      v84 = v83[2];
      v70 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v70)
      {
        goto LABEL_62;
      }

      v83[2] = v85;
    }

    *&v1[v90] = v83;
    swift_endAccess();
    v22 = &stru_1008F2000;
    goto LABEL_10;
  }

  v29 = 0;
  v95 = v103 - 1;
  v30 = 0.0;
  v31 = 1.79769313e308;
  v32 = 0.0;
  v96 = v20;
  v33 = v101;
  v100 = v28;
  while (1)
  {
    sub_10000C518(&qword_1009253E0);
    v34 = swift_allocObject();
    *(v34 + 16) = v99;
    *(v34 + 32) = v20;
    *(v34 + 40) = v29;
    sub_1007416F4();
    if (([v17 respondsToSelector:v22[89].attr] & 1) == 0)
    {
      (*v33)(v6, v2);
      goto LABEL_19;
    }

    swift_unknownObjectRetain();
    isa = sub_100741704().super.isa;
    [v17 v22[89].attr];
    v37 = v36;
    v39 = v38;
    swift_unknownObjectRelease();

    v40 = sub_100741774();
    v41 = sub_100741774();
    if (!(v40 / v103))
    {
      v42 = sub_100741704().super.isa;
      v43 = type metadata accessor for ShelfDisplayingFlowLayout();
      v105.receiver = v1;
      v105.super_class = v43;
      v44 = objc_msgSendSuper2(&v105, "layoutAttributesForItemAtIndexPath:", v42);

      if (v44)
      {
        [v44 frame];
        MinY = CGRectGetMinY(v108);

        if (v31 >= MinY)
        {
          v31 = MinY;
        }
      }
    }

    v46 = *v97;
    v47 = v104;
    v48 = v2;
    (*v97)(v104, v6, v2);
    v49 = v102;
    swift_beginAccess();
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v106 = *&v1[v49];
    v51 = v106;
    *&v1[v49] = 0x8000000000000000;
    v53 = sub_1004123FC(v47);
    v54 = v51[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      break;
    }

    v57 = v52;
    if (v51[3] >= v56)
    {
      v33 = v101;
      if (v50)
      {
        goto LABEL_31;
      }

      sub_1006754A8();
    }

    else
    {
      sub_100670CE0(v56, v50);
      v58 = sub_1004123FC(v104);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_64;
      }

      v53 = v58;
    }

    v33 = v101;
LABEL_31:
    v98 = v41 % v103;
    v60 = v24 + (v27 + v37) * (v41 % v103);
    v61 = v106;
    if (v57)
    {
      v62 = (v106[7] + 16 * v53);
      *v62 = v60;
      v62[1] = v32;
      v63 = *v33;
      v2 = v48;
      (*v33)(v104, v48);
    }

    else
    {
      v64 = v1;
      v65 = v6;
      v106[(v53 >> 6) + 8] |= 1 << v53;
      v66 = v91;
      v67 = v104;
      v46(v61[6] + *(v91 + 72) * v53, v104, v48);
      v68 = (v61[7] + 16 * v53);
      v2 = v48;
      *v68 = v60;
      v68[1] = v32;
      v63 = *(v66 + 8);
      v63(v67, v48);
      v69 = v61[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_59;
      }

      v61[2] = v71;
      v6 = v65;
      v1 = v64;
      v33 = v101;
    }

    *&v1[v102] = v61;

    swift_endAccess();
    v63(v6, v2);
    v72 = v32 + v39;
    if (v30 > v32 + v39)
    {
      v72 = v30;
    }

    if (v98 == v95)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v72;
    }

    if (v98 == v95)
    {
      v32 = v72;
    }

    v12 = v94;
    v17 = v92;
    v20 = v96;
    v22 = &stru_1008F2000;
LABEL_19:
    if (v100 == ++v29)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  sub_1007547B4();
  __break(1u);
LABEL_65:
  sub_1007547B4();
  __break(1u);
}

id sub_10002F908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfDisplayingFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10002F9F8()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100743864();
  sub_10002FC1C(&qword_100923808, &type metadata accessor for Screenshots);
  sub_1007468B4();
  if (!v12[1])
  {
    return 0.0;
  }

  v12[0] = sub_100743854();
  v4 = sub_100743844();
  v5 = sub_10007DC04();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v6 = *(v1 + 8);
  v6(v3, v0);
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v8 = v7;
  v6(v3, v0);
  sub_10030E050(v12[0], v4, v5, 0.0, 0.0, v8);
  v10 = v9;

  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_10002FC1C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10002FC68(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_userReviewView] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for GenericProductReviewCollectionViewCell();
  v11 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v12 = objc_allocWithZone(UIView);
  v13 = v11;
  v14 = [v12 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = [v14 layer];
  [v15 setCornerRadius:20.0];

  v16 = v13;
  [v16 setBackgroundView:v14];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = [v16 contentView];
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  return v16;
}

void sub_10002FF2C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for GenericProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = [v0 contentView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  v4 = OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_userReviewView;
  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_userReviewView];
  if (v5)
  {
    if (([v5 isHidden] & 1) == 0)
    {
      v6 = *&v0[v4];
      if (v6)
      {
        v7 = v6;
        [v0 bounds];
        [v7 setFrame:?];
      }
    }
  }

  v8 = OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView;
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView];
  if (v9 && ([v9 isHidden] & 1) == 0)
  {
    v10 = *&v0[v8];
    if (v10)
    {
      v11 = v10;
      [v0 bounds];
      [v11 setFrame:?];
    }
  }
}

id sub_100030114(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = *&v2[*a1];
  }

  else
  {
    a2(0);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *&v2[v3];
    *&v2[v3] = v6;
    v5 = v6;

    v8 = [v2 contentView];
    [v8 addSubview:v5];

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_1000301BC()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for GenericProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v12, "prepareForReuse");
  v1 = OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_userReviewView;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_userReviewView];
  if (v2)
  {
    [v2 setHidden:1];
    v3 = *&v0[v1];
    if (v3)
    {
      v4 = &v3[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler];
      v5 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreReviewTapHandler];
      *v4 = 0;
      v4[1] = 0;
      v6 = v3;
      sub_1000164A8(v5);
      v7 = &v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapHandler];
      v8 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_moreResponseTapHandler];
      *v7 = 0;
      v7[1] = 0;
      sub_1000164A8(v8);
      v9 = *v4;
      *v4 = 0;
      v4[1] = 0;
      sub_1000164A8(v9);
      v10 = *v7;
      *v7 = 0;
      v7[1] = 0;
      sub_1000164A8(v10);
    }
  }

  result = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView];
  if (result)
  {
    return [result setHidden:1];
  }

  return result;
}

void sub_1000302FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_userReviewView);
  if (v1)
  {
    v2 = v1;
    if (![v2 isHidden])
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      aBlock[4] = sub_100030B68;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_1008643D0;
      v6 = _Block_copy(aBlock);
      v7 = v2;

      [v4 animateWithDuration:v6 animations:0.5];
      _Block_release(v6);

      return;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView);
  if (v3)
  {
    v8 = v3;
    if (![v8 isHidden])
    {
      [v8 setClipsToBounds:0];
    }
  }
}

void sub_100030478(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_userReviewView);
  if (!v3)
  {
LABEL_4:
    v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView);
    if (!v4)
    {
      return;
    }

    v10 = v4;
    if (![v10 isHidden] && a1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      v15 = sub_100030B58;
      v16 = v5;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v6 = &unk_100864330;
LABEL_10:
      v13 = sub_1000CF7B0;
      v14 = v6;
      v8 = _Block_copy(&aBlock);
      v9 = v10;

      [a1 addAnimations:v8];

      _Block_release(v8);
      return;
    }

    goto LABEL_12;
  }

  v10 = v3;
  if ([v10 isHidden])
  {

    goto LABEL_4;
  }

  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v15 = sub_100030B60;
    v16 = v7;
    aBlock = _NSConcreteStackBlock;
    v12 = 1107296256;
    v6 = &unk_100864380;
    goto LABEL_10;
  }

LABEL_12:
}

void sub_100030658(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_userReviewView);
  if (!v3)
  {
LABEL_4:
    v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView);
    if (!v4)
    {
      return;
    }

    v10 = v4;
    if (![v10 isHidden] && a1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      v15 = sub_100030B30;
      v16 = v5;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v6 = &unk_100864290;
LABEL_10:
      v13 = sub_1000CF7B0;
      v14 = v6;
      v8 = _Block_copy(&aBlock);
      v9 = v10;

      [a1 addAnimations:v8];

      _Block_release(v8);
      return;
    }

    goto LABEL_12;
  }

  v10 = v3;
  if ([v10 isHidden])
  {

    goto LABEL_4;
  }

  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v15 = sub_100030B50;
    v16 = v7;
    aBlock = _NSConcreteStackBlock;
    v12 = 1107296256;
    v6 = &unk_1008642E0;
    goto LABEL_10;
  }

LABEL_12:
}

id sub_100030838()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_userReviewView);
  if (v1)
  {
    v2 = v1;
    if (![v2 isHidden])
    {
      v5 = &OBJC_IVAR____TtC22SubscribePageExtension17ProductReviewView_cardContentView;
      goto LABEL_10;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView);
  if (!v3)
  {
    return 0;
  }

  v2 = v3;
  if ([v2 isHidden])
  {

    return 0;
  }

  v5 = &OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_previewContainer;
LABEL_10:
  v6 = *&v2[*v5];

  return v6;
}

id sub_1000308EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericProductReviewCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericProductReviewCollectionViewCell()
{
  result = qword_100923848;
  if (!qword_100923848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000309D4()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100030A7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38GenericProductReviewCollectionViewCell_reviewSummaryView);
  if (v1)
  {
    v2 = v1;
    if (([v2 isHidden] & 1) == 0)
    {
      [v2 setClipsToBounds:1];
    }
  }
}

uint64_t sub_100030AF8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100030B38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100030BFC(uint64_t a1, void *a2)
{
  v55._countAndFlagsBits = a1;
  v55._object = a2;
  v44 = sub_10000C518(&qword_100939100);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v41 - v3;
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v54 = &v41 - v5;
  v6 = sub_100742CF4();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007493D4();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10074A304();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752614();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_10074F4D4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v19 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  v25 = sub_100741264();
  v57 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph);
  if (result)
  {
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    v56 = result;

    sub_100754534(29);

    *&v60 = 0xD00000000000001BLL;
    *(&v60 + 1) = 0x80000001007663C0;
    sub_1007531B4(v55);
    sub_100741254();

    result = (*(v57 + 48))(v24, 1, v25);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v29 = v57;
      (*(v57 + 32))(v27, v24, v25);
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v30 = *(v16 + 104);
      v41 = v18;
      v30(v18, enum case for FlowPage.product(_:), v15);
      v31 = *(v29 + 16);
      v55._object = v27;
      v31(v21, v27, v25);
      (*(v29 + 56))(v21, 0, 1, v25);
      v32 = sub_100743FE4();
      (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
      v58 = 0u;
      v59 = 0u;
      sub_1007525F4();
      (*(v46 + 104))(v45, enum case for FlowPresentationContext.infer(_:), v47);
      (*(v48 + 104))(v50, enum case for FlowAnimationBehavior.infer(_:), v49);
      (*(v52 + 104))(v51, enum case for FlowOrigin.inapp(_:), v53);
      sub_100752B44();
      v33 = sub_100742CD4();
      swift_allocObject();
      v34 = sub_100742C84();
      v35 = sub_10000C518(&unk_100923210);
      v36 = v54;
      sub_100752754();
      v37 = *(v35 - 8);
      if ((*(v37 + 48))(v36, 1, v35) == 1)
      {
        (*(v57 + 8))(v55._object, v25);

        return sub_10000C8CC(v36, &unk_100923960);
      }

      else
      {
        *(&v61 + 1) = v33;
        v62 = sub_100032BBC(&qword_100923980, 255, &type metadata accessor for FlowAction);
        *&v60 = v34;
        v38 = v42;
        v39 = v43;
        v40 = v44;
        (*(v42 + 104))(v43, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v44);

        sub_1007527E4();

        (*(v38 + 8))(v39, v40);
        (*(v57 + 8))(v55._object, v25);
        sub_10000C620(&v60);
        return (*(v37 + 8))(v36, v35);
      }
    }
  }

  return result;
}

void sub_100031674(int a1, id a2)
{
  v3 = [a2 navigationBar];
  [a2 pageMarginInsets];
  [v3 setLayoutMargins:?];
}

uint64_t sub_100031824(uint64_t a1)
{
  v3 = [v1 viewControllers];
  sub_100032B70();
  v4 = sub_1007532A4();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = sub_100754664();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_100754574();
LABEL_6:
    v7 = v6;

    v14[0] = v7;
    sub_10000C518(&qword_100923948);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_100012160(&v11, v14);
        v8 = v15;
        v9 = v16;
        sub_10000C888(v14, v15);
        v10 = (*(v9 + 8))(a1, v8, v9);
        sub_10000C620(v14);
        return v10 & 1;
      }

LABEL_12:
      sub_10000C8CC(&v11, &unk_100923950);
      v10 = 0;
      return v10 & 1;
    }

LABEL_11:
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_12;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000319B4(uint64_t a1)
{
  v3 = [v1 viewControllers];
  sub_100032B70();
  v4 = sub_1007532A4();

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = sub_100754664();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_100754574();
LABEL_6:
    v7 = v6;

    v14[0] = v7;
    sub_10000C518(&qword_100923938);
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        sub_100012160(&v11, v14);
        v8 = v15;
        v9 = v16;
        sub_10000C888(v14, v15);
        v10 = (*(v9 + 8))(a1, v8, v9);
        sub_10000C620(v14);
        return v10 & 1;
      }

LABEL_12:
      sub_10000C8CC(&v11, &qword_100923940);
      v10 = 0;
      return v10 & 1;
    }

LABEL_11:
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_12;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100031C10(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for StoreNavigationController();
  v3 = objc_msgSendSuper2(&v12, "popToRootViewControllerAnimated:", a1 & 1);
  if (v3)
  {
    v4 = v3;
    sub_100032B70();
    v5 = sub_1007532A4();

    return v5;
  }

  v6 = [v1 viewControllers];
  sub_100032B70();
  v7 = sub_1007532A4();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  result = sub_100754664();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = sub_100754574();
    goto LABEL_8;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_8:
    v10 = v9;

    v11 = [v10 contentScrollView];
    [v11 _scrollToTopIfPossible:a1 & 1];

    return 0;
  }

  __break(1u);
  return result;
}

BOOL sub_100031DE8(uint64_t a1, uint64_t a2)
{
  if (sub_100741814())
  {
    v5 = [v2 viewControllers];
    sub_100032B70();
    v6 = sub_1007532A4();

    if (v6 >> 62)
    {
      v7 = sub_100754664();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v7 > 1;
  }

  else
  {
    sub_100032C04(a2, v19);
    v9 = v20;
    if (v20)
    {
      v10 = sub_10000C888(v19, v20);
      v11 = *(v9 - 8);
      v12 = __chkstk_darwin(v10);
      v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = sub_100754734();
      (*(v11 + 8))(v14, v9);
      sub_10000C620(v19);
    }

    else
    {
      v15 = 0;
    }

    v16 = type metadata accessor for StoreNavigationController();
    v18.receiver = v2;
    v18.super_class = v16;
    v17 = objc_msgSendSuper2(&v18, "canPerformAction:withSender:", a1, v15);
    swift_unknownObjectRelease();
    return v17;
  }
}

void sub_1000321FC()
{
  v1 = v0;
  v2 = sub_100752404();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100742A34();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 viewControllers];
  sub_100032B70();
  v9 = sub_1007532A4();

  if (v9 >> 62)
  {
    if (sub_100754664())
    {
      goto LABEL_3;
    }

LABEL_17:

    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = sub_100754574();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v10 = *(v9 + 32);
  }

  v26 = v10;

  type metadata accessor for TabPlaceholderViewController();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph];
    if (v12)
    {
      v8 = v4;
      v13 = v4[2];
      v24 = v11;
      v13(v7, v11 + OBJC_IVAR____TtC22SubscribePageExtension28TabPlaceholderViewController_storeTab, v3);

      v14 = [v1 traitCollection];
      v25 = v12;
      v15 = sub_1006F5CA8(v14, 0, v12);

      if (v15)
      {
        v16 = [v24 tabBarItem];
        [v15 setTabBarItem:v16];

        sub_10000C518(&unk_1009231A0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1007A5CF0;
        *(v17 + 32) = v15;
        v18 = v15;
        isa = sub_100753294().super.isa;

        [v1 setViewControllers:isa animated:0];

LABEL_15:
        (*(v8 + 1))(v7, v3);
        return;
      }

      v24 = v13;
      if (qword_100921EE0 == -1)
      {
LABEL_14:
        v21 = sub_100752E44();
        sub_10000D0FC(v21, qword_100983318);
        sub_10000C518(&qword_100923930);
        sub_100752454();
        *(swift_allocObject() + 16) = xmmword_1007A5A00;
        sub_1007523F4();
        v29._object = 0x8000000100766370;
        v29._countAndFlagsBits = 0xD000000000000041;
        sub_1007523E4(v29);
        v27[3] = v3;
        v22 = sub_10000D134(v27);
        v24(v22, v7, v3);
        sub_1007523C4();
        sub_10000C8CC(v27, &unk_100923520);
        v30._countAndFlagsBits = 0;
        v30._object = 0xE000000000000000;
        sub_1007523E4(v30);
        sub_100752414();
        sub_100752CE4();

        goto LABEL_15;
      }

LABEL_22:
      swift_once();
      goto LABEL_14;
    }
  }

  v20 = v26;
}

id sub_1000327A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoreNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10003289C(char a1)
{
  v2 = [*v1 popViewControllerAnimated:a1 & 1];

  return v2;
}

id sub_1000328DC()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC22SubscribePageExtension43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins];
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins];
  v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins + 16];
  v3 = v0[OBJC_IVAR____TtC22SubscribePageExtension43NavigationBarManualCheckLayoutMarginsChange__cachedLayoutMargins + 32];
  result = [v0 layoutMargins];
  if ((v3 & 1) != 0 || (v7.f64[1] = v8, v5.f64[1] = v6, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v13, v5), vceqq_f64(v14, v7)))) & 1) == 0))
  {
    [v0 layoutMargins];
    *v2 = v9;
    *(v2 + 1) = v10;
    *(v2 + 2) = v11;
    *(v2 + 3) = v12;
    v2[32] = 0;
    v15.receiver = v0;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, "layoutMarginsDidChange");
  }

  return result;
}

unint64_t sub_100032B70()
{
  result = qword_10092B0C0;
  if (!qword_10092B0C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10092B0C0);
  }

  return result;
}

uint64_t sub_100032BBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100032C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100032C74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032CB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_100032CD0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackIconView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_gradientView] = [objc_allocWithZone(type metadata accessor for MultiAppFallbackGradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25[0] = sub_100184128;
  v25[1] = 0;
  v25[2] = sub_10066891C;
  v25[3] = 0;
  v25[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[5] = 0;
  v25[6] = sub_100184128;
  v25[7] = 0;
  v25[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v25[9] = 0;
  v25[10] = sub_1000ED848;
  v25[11] = 0;
  v26 = 0x4000000000000000uLL;
  v27 = 0;
  v28 = 0x4018000000000000;
  v29 = 0;
  v30 = 1;
  v12 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] = sub_100678FB8(v25, &v26);
  type metadata accessor for InfoLayerOverlayContainerView();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_gradientView;
  v15 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_gradientView];
  v16 = v13;
  v17 = v15;
  [v17 frame];
  [v17 setFrame:?];

  [*&v13[v14] setClipsToBounds:1];
  [*&v13[v14] _setContinuousCornerRadius:20.0];
  [v16 _setContinuousCornerRadius:20.0];
  v18 = [v16 contentView];
  [v18 addSubview:*&v13[v14]];

  v19 = [v16 contentView];
  [v19 addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView]];

  v20 = [v16 contentView];
  [v20 addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView]];

  v21 = [v16 contentView];
  [v21 addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer]];

  v22 = [v16 contentView];
  [v22 setClipsToBounds:1];

  sub_100016C60(0, &qword_1009239F8);
  sub_100753844();
  sub_100753D44();
  swift_unknownObjectRelease();

  sub_1005F4144();

  return v16;
}

id sub_1000330D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isTransitioning);
  *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView) + qword_100944200) = v1 & 1;
  sub_100679F5C();
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isTransitioning;
  v2[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isTransitioning] = v1 & 1;
  [v2 setHidden:(v2[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_sizeCategory] == 4) & (v1 ^ 1u)];
  v2[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isLayoutRequired] = (v2[v3] & 1) == 0;

  return [v2 setNeedsLayout];
}

__n128 sub_1000331D8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32);
  result = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets);
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

id sub_1000331FC(id result)
{
  v2 = &v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16];
  v5 = v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32];
  v6 = *(result + 1);
  *v2 = *result;
  *(v2 + 1) = v6;
  v7 = *(result + 32);
  v2[32] = v7;
  if (v7)
  {
    if (v5)
    {
      return result;
    }

    return [v1 setNeedsLayout];
  }

  if (v5)
  {
    return [v1 setNeedsLayout];
  }

  v4 = vceqq_f64(*(result + 1), v4);
  *&v3.f64[0] = vmovn_s32(vuzp1q_s32(vceqq_f64(*result, v3), v4));
  LOWORD(v3.f64[0]) = vminv_u16(*&v3.f64[0]);
  if ((LOBYTE(v3.f64[0]) & 1) == 0)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100033268()
{
  v1 = [v0 traitCollection];
  v2 = v1;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_10056B184(v1, v0[*v4], &v31);
  v5 = v34;

  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind];
  v9 = v0[v3];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v9)
  {
    v10 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v11 = v0[v10];
  v12 = v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind + 8];
  v13 = v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v26 = v31;
  v27 = v32;
  v28 = v33;
  *&v29 = v5;
  *(&v29 + 1) = v6;
  *v30 = v7;
  *&v30[8] = v8;
  v30[16] = v12;
  v30[17] = v11;
  v30[18] = v13;
  v30[19] = v9;
  v30[20] = 0;
  v35 = v31;
  v36 = v32;
  *&v39[13] = *&v30[13];
  v38 = v29;
  *v39 = *v30;
  v37 = v33;
  v14 = v6;
  v15 = v7;
  [v0 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [v0 traitCollection];
  sub_1005F7C10(v24, v17, v19, v21, v23);

  return sub_100037A00(&v26);
}

void sub_10003340C()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v2 - 8);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v57 - v7;
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v10 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
    v12 = *(v10 + 24);
    if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v13 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (v0[*v13] == 6 && (v14 = [v0 traitCollection], v15 = sub_100753804(), v14, (v15 & 1) == 0))
    {
      [v1 bounds];
      sub_100033A08(v12);
      [v1 bounds];
      CGRectGetMidX(v64);
      [v1 bounds];
      CGRectGetMinY(v65);
      [v1 bounds];
      CGRectGetWidth(v66);
      [v1 bounds];
      CGRectGetHeight(v67);
      v35 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_100037990(&v1[v35], v8);
      if (v1[v11])
      {
        v36 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v36 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v37 = v1[*v36];
      v38 = [v1 traitCollection];
      sub_1005F7760(v8, v37, v38);

      sub_10000C8CC(v8, &unk_100926C40);
      sub_100037990(&v1[v35], v4);
      if (v1[v11])
      {
        v39 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v39 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v40 = v1[*v39];
      v41 = [v1 traitCollection];
      sub_1005F7760(v4, v40, v41);

      sub_10000C8CC(v4, &unk_100926C40);
      sub_100753B14();
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = [v9 traitCollection];
      sub_10031100C(v50, v47, v49);

      v68.origin.x = v43;
      v68.origin.y = v45;
      v68.size.width = v47;
      v68.size.height = v49;
      CGRectGetMidX(v68);
      v69.origin.x = v43;
      v69.origin.y = v45;
      v69.size.width = v47;
      v69.size.height = v49;
      CGRectGetMinY(v69);
      v51 = [v1 traitCollection];
      [v1 bounds];
      sub_100753AA4();
      v53 = v52;
      MinY = v54;
      v25 = v55;
      v27 = v56;

      v34 = v53;
    }

    else
    {
      [v1 bounds];
      sub_100033A08(v12);
      MinY = v16;
      [v1 bounds];
      CGRectGetMinX(v58);
      [v1 bounds];
      CGRectGetMinY(v59);
      [v1 bounds];
      CGRectGetWidth(v60);
      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] frame];
      CGRectGetMinY(v61);
      sub_100753B14();
      x = v62.origin.x;
      y = v62.origin.y;
      width = v62.size.width;
      height = v62.size.height;
      v22 = CGRectGetHeight(v62);
      v23 = [v9 traitCollection];
      sub_10031100C(v23, 1.79769313e308, v22);
      v25 = v24;
      v27 = v26;

      if (v1[v11])
      {
        v28 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v28 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v29 = x;
      v30 = y;
      v31 = width;
      v32 = height;
      if (v1[*v28] == 4)
      {
        MinY = CGRectGetMinY(*&v29);
      }

      else
      {
        v33 = CGRectGetMidY(*&v29) + v27 * -0.5;
        if (v33 > MinY)
        {
          MinY = v33;
        }
      }

      [v1 bounds];
      v34 = floor(CGRectGetMidX(v63) + v25 * -0.5);
    }

    [v9 setFrame:{v34, MinY, v25, v27}];
  }
}

uint64_t sub_100033A08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v4 - 8);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v60 - v7;
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  *&v19 = __chkstk_darwin(v18).n128_u64[0];
  v21 = &v60 - v20;
  v22 = [v1 traitCollection];
  v62 = sub_100753804();

  v23 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] != 1)
  {
    if (a1 == 3)
    {
      goto LABEL_13;
    }

    if (a1 != 2)
    {
      if (a1 != 1)
      {
        goto LABEL_41;
      }

      goto LABEL_23;
    }

LABEL_18:
    v29 = v2[v23];
    if (v2[v23])
    {
      v30 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v30 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v31 = v2[*v30];
    if (v31 != 4)
    {
      if ((v31 != 6) | v62 & 1)
      {
        goto LABEL_39;
      }

      v35 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_100037990(&v2[v35], v17);
      if (v29)
      {
        v36 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v36 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v37 = v2[*v36];
      v38 = [v2 traitCollection];
      sub_1005F7760(v17, v37, v38);

      v39 = v17;
      goto LABEL_57;
    }

    return sub_1007535D4();
  }

  if ((v2[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32] & 1) != 0 || (v24 = [v2 traitCollection], v25 = sub_1007537D4(), v24, (v25 & 1) == 0))
  {
    if (a1 == 1)
    {
LABEL_23:
      v32 = v2[v23];
      if (v2[v23])
      {
        v33 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v33 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v34 = v2[*v33];
      if (v34 == 4)
      {
        return sub_1007535D4();
      }

      if ((v34 != 6) | v62 & 1)
      {
LABEL_39:
        if (v2[v23] == 1)
        {
          v44 = [v2 traitCollection];
          sub_1007537F4();

          v45 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          sub_100037990(&v2[v45], v11);
          v46 = [v2 traitCollection];
          sub_1005F6CA0(v11, v46);
          goto LABEL_50;
        }

LABEL_41:
        v47 = [v2 traitCollection];
        v48 = sub_1007537F4();

        v49 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
        if (v48)
        {
          swift_beginAccess();
          sub_100037990(&v2[v49], v8);
          if (v2[v23])
          {
            v50 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          else
          {
            v50 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
          }

          v51 = v2[*v50];
          v52 = [v2 traitCollection];
          sub_1005F7760(v8, v51, v52);

          v11 = v8;
          goto LABEL_51;
        }

        swift_beginAccess();
        v11 = v61;
        sub_100037990(&v2[v49], v61);
        if (v2[v23])
        {
          v53 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
        }

        else
        {
          v53 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
        }

        v54 = v2[*v53];
        v46 = [v2 traitCollection];
        sub_1005F7760(v11, v54, v46);
LABEL_50:

LABEL_51:
        sub_10000C8CC(v11, &unk_100926C40);
        return sub_1007535D4();
      }

      v56 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_100037990(&v2[v56], v21);
      if (v32)
      {
        v57 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v57 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      v58 = v2[*v57];
      v59 = [v2 traitCollection];
      sub_1005F7760(v21, v58, v59);

      v39 = v21;
LABEL_57:
      sub_10000C8CC(v39, &unk_100926C40);
      return sub_1007535D4();
    }
  }

  else if (a1 == 1)
  {
    goto LABEL_23;
  }

  if (a1 == 2)
  {
    goto LABEL_18;
  }

  if (a1 != 3)
  {
    goto LABEL_39;
  }

LABEL_13:
  v26 = v2[v23];
  if (v2[v23])
  {
    v27 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v27 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v28 = v2[*v27];
  if (v28 != 4)
  {
    if ((v28 != 6) | v62 & 1)
    {
      goto LABEL_39;
    }

    v40 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100037990(&v2[v40], v14);
    if (v26)
    {
      v41 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v41 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v42 = v2[*v41];
    v43 = [v2 traitCollection];
    sub_1005F7760(v14, v42, v43);

    v39 = v14;
    goto LABEL_57;
  }

  return sub_1007535D4();
}

uint64_t sub_100034104()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_configuration))
  {
    swift_unknownObjectWeakAssign();

    sub_1003101B4();
  }

  *(v1 + v2) = 0;

  sub_100566340();
  sub_100049AEC(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_artworks] = _swiftEmptyArrayStorage;
}

void sub_100034224()
{
  sub_1005F6EC0();
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 20.0;
  }

  [v0 _setContinuousCornerRadius:v2];
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_gradientView] _setContinuousCornerRadius:v2];
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay])
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay + 8];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v6 = v5(ObjectType, v3);
    swift_unknownObjectRelease();
    [v6 _setContinuousCornerRadius:v2];
  }

  *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_1009441F8) = v0[v1];
  sub_100679B2C();
  *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isExpanded) = v0[v1];

  sub_1005F4144();
}

id sub_100034370()
{
  result = [v0 setNeedsLayout];
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v3 = v0[*v2];
  if (v3 != 7)
  {
    *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView] + qword_1009441B8) = v3;
    sub_100679A78();
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v4[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_sizeCategory] = v3;
    if (v3 == 4)
    {
      v5 = v4[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    [v4 setHidden:v5 & 1];
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_multiAppIconView];
    v6[OBJC_IVAR____TtC22SubscribePageExtension24MultiAppFallbackIconView_sizeCategory] = v3;
    [v6 setNeedsLayout];

    return [v0 setNeedsLayout];
  }

  return result;
}

void sub_1000344A0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100037710(v10, &v4[v12]);
    swift_endAccess();
    v4[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = (*(a2 + 160))(ObjectType, a2);
    sub_100037804();
    v13 = (*(a2 + 136))(ObjectType, a2);
    sub_1005F3E54(v13);
  }

  v14 = swift_dynamicCastClass();
  if (v14)
  {
    if ((a3 & 1) == 0)
    {
      v15 = *(v14 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView);
      v16 = v14;
      v17 = a1;
      v18 = v15;
      sub_10067B5D0(v18);

      [v4 setOverrideUserInterfaceStyle:{objc_msgSend(v16, "overrideUserInterfaceStyle")}];

      sub_1003100EC(v19);

      sub_100049AEC(v20);
      *&v4[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_artworks] = *&v16[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_artworks];

      [v4 setNeedsLayout];
    }
  }
}

id sub_1000346F4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v171 = a4;
  v9 = sub_10074A2E4();
  v168 = *(v9 - 8);
  __chkstk_darwin(v9);
  v181 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074FB54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v169 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v178 = &v154 - v15;
  __chkstk_darwin(v16);
  v177 = &v154 - v17;
  v167 = sub_1007497C4();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v176 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v19 - 8);
  v21 = &v154 - v20;
  v22 = sub_10074F704();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, a3, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_100037710(v21, &v5[v24]);
  swift_endAccess();
  sub_1005F3E54(a2);
  v25 = [v5 backgroundView];
  if (v25)
  {
    v26 = v25;
    v27 = sub_10074FA74();
    if (!v27)
    {
      sub_100016C60(0, &qword_100923500);
      v27 = sub_100753E64();
    }

    v28 = v27;
    [v26 setBackgroundColor:v27];
  }

  sub_10074FB64();
  v29 = sub_100741BE4();
  v30 = swift_dynamicCastClass();

  if (!v30)
  {
    sub_10074FB64();
    sub_100748774();
    v31 = swift_dynamicCastClass();

    if (!v31)
    {
      sub_10074FB64();
      sub_100741994();
      v32 = swift_dynamicCastClass();

      if (!v32)
      {
        sub_10074FB64();
        sub_100747CA4();
        v33 = swift_dynamicCastClass();

        if (!v33)
        {
          return result;
        }
      }
    }
  }

  v163 = v9;
  v174 = v5;
  v35 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
  v36 = sub_10074FB94();
  v175 = v37;
  v180 = sub_10074FB84();
  v172 = v38;
  v156 = sub_10074FA54();
  v173 = v39;
  sub_10074FAC4();
  v40 = sub_10074FAA4();
  v182 = v41;
  v165 = a3;
  v170 = v11;
  v164 = v12;
  v162 = v29;
  v157 = v40;
  if (a2 == 4)
  {
    (*(v12 + 104))(v177, enum case for TodayCard.Style.dark(_:), v11);
    v161 = sub_100046F68;
    v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v160 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v159 = sub_1000ED848;
    v158 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    sub_10074FB74();
    v161 = sub_100046F68;
    v158 = sub_100668580;
    v42 = sub_10066873C;
    v160 = sub_100668768;
    v159 = sub_1006685AC;
  }

  v179 = a2;
  v43 = a2;
  sub_10074FAE4();
  v35[qword_1009441E8] = 0;
  v44 = *&v35[qword_1009441D0];
  *(v44 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v45 = *&v35[qword_1009441C8];
  sub_10020D440(v36, v175);
  v46 = sub_10074A2D4();
  v47 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v48 = *&v45[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  if (v43 == 4 && (v46 & 1) == 0)
  {
    if (([v48 isHidden] & 1) != 0 || (v45[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v45[v47] setHidden:1];
      goto LABEL_27;
    }

    [*&v45[v47] setHidden:1];
    v45[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_25;
  }

  v49 = [v48 text];
  if (v49)
  {
    v50 = v49;
    sub_100753094();
  }

  v51 = sub_100753114();
  v52 = v51 & 1;

  if (v52 != [*&v45[v47] isHidden] && (v45[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v51 & 1) == 0)
    {
      [*&v45[v47] setAlpha:0.0];
      v155 = objc_opt_self();
      [v155 inheritedAnimationDuration];
      v54 = v53;
      v55 = swift_allocObject();
      *(v55 + 16) = v45;
      v187 = sub_100037A70;
      v188 = v55;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_1000CF7B0;
      v186 = &unk_100864590;
      v154 = _Block_copy(&aBlock);
      v56 = v45;

      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      v187 = sub_100037A7C;
      v188 = v57;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_100144DD8;
      v186 = &unk_1008645E0;
      v58 = _Block_copy(&aBlock);
      v59 = v56;

      v60 = v154;
      [v155 animateWithDuration:0 delay:v154 options:v58 animations:v54 completion:0.0];
      _Block_release(v58);
      _Block_release(v60);
    }

    [*&v45[v47] setHidden:v51 & 1];
    v45[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_25:
    [v45 setNeedsLayout];
    goto LABEL_27;
  }

  [*&v45[v47] setHidden:v52];
LABEL_27:
  v61 = &v35[qword_1009441F0];
  *v61 = v161;
  v61[1] = 0;
  v61[2] = v158;
  v61[3] = 0;
  v61[4] = v42;
  v61[5] = 0;
  v61[6] = v160;
  v61[7] = 0;
  v61[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v61[9] = 0;
  v61[10] = v159;
  v61[11] = 0;

  sub_100679B2C();
  v62 = v179;
  v63 = v182;
  if (v172)
  {
    if (v179 == 4)
    {
      sub_10067B3D8();
    }

    else
    {
      sub_10067B3FC();
    }

    v64 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
    v65 = *(v44 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
    v66 = objc_allocWithZone(NSAttributedString);
    v67 = v65;
    v68 = sub_100753064();
    type metadata accessor for Key(0);
    sub_100037908(&qword_1009276F0, type metadata accessor for Key);
    isa = sub_100752F34().super.isa;

    v70 = [v66 initWithString:v68 attributes:isa];

    [v67 setAttributedText:v70];
    [*(v44 + v64) setAdjustsFontSizeToFitWidth:0];
    [*(v44 + v64) setMinimumScaleFactor:0.0];
    [*(v44 + v64) setAttributedText:0];
    if (v173 && v35[qword_1009441C0] == 4)
    {
      v63 = v182;
      if (v62 == 4)
      {
        v71 = v180;
        v74 = v173;
        v72 = v172;
        v73 = v156;
      }

      else
      {
        v71 = v156;
        v72 = v173;
        v73 = v180;
        v74 = v172;
      }

      sub_10020D538(v71, v72, v73, v74);
    }

    else
    {
      sub_10020D440(v180, v172);
      v63 = v182;
    }
  }

  v75 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v76 = *(v44 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v77 = [v76 text];
  if (v77 || (v77 = [*(v44 + v75) attributedText]) != 0)
  {
    v78 = v170;

    v79 = 0;
  }

  else
  {
    v79 = 1;
    v78 = v170;
  }

  [v76 setHidden:v79];

  [v35 setNeedsLayout];
  v80 = *&v35[qword_1009441D8];
  [v80 setImage:0];
  [v80 setHidden:1];
  if (v62 != 4 && (sub_10074A2B4() & 1) == 0 && v63)
  {
    v81 = a1;
    v82 = v62;
    v83 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v83 = v157 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v180) = v83 == 0;
    v84 = *&v35[qword_1009441E0];
    v85 = &v84[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    v86 = *&v84[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    goto LABEL_49;
  }

  v84 = *&v35[qword_1009441E0];
  v85 = &v84[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  v86 = *&v84[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  if (v63)
  {
    v81 = a1;
    v82 = v62;
    LODWORD(v180) = 1;
LABEL_49:
    v87 = v86;
    v63 = sub_100753064();
    v62 = v82;
    a1 = v81;
    goto LABEL_51;
  }

  v87 = v86;
  LODWORD(v180) = 1;
LABEL_51:
  [v87 setText:v63];

  v88 = [*v85 isHidden];
  if (v180 == v88 || (v84[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v85 setHidden:v180];
  }

  else
  {
    if ((v180 & 1) == 0)
    {
      [*v85 setAlpha:0.0];
      v89 = objc_opt_self();
      [v89 inheritedAnimationDuration];
      v91 = v90;
      v92 = swift_allocObject();
      *(v92 + 16) = v84;
      v187 = sub_1000377B8;
      v188 = v92;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_1000CF7B0;
      v186 = &unk_1008644F0;
      v93 = _Block_copy(&aBlock);
      v94 = v84;

      v95 = swift_allocObject();
      *(v95 + 16) = v94;
      v187 = sub_1000377D8;
      v188 = v95;
      aBlock = _NSConcreteStackBlock;
      v184 = 1107296256;
      v185 = sub_100144DD8;
      v186 = &unk_100864540;
      v96 = _Block_copy(&aBlock);
      v97 = v94;
      v78 = v170;
      v62 = v179;

      [v89 animateWithDuration:0 delay:v93 options:v96 animations:v91 completion:0.0];
      _Block_release(v96);
      _Block_release(v93);
    }

    [*v85 setHidden:v180];
    v84[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v84 setNeedsLayout];
  }

  v98 = v163;
  v99 = 1;
  v100 = v177;
  sub_10067859C(v177, 1);
  [v35 setNeedsLayout];

  (*(v168 + 8))(v181, v98);
  v101 = v164;
  v102 = *(v164 + 8);
  v102(v100, v78);
  (*(v166 + 8))(v176, v167);
  sub_10074FB74();
  v103 = v169;
  (*(v101 + 104))(v169, enum case for TodayCard.Style.white(_:), v78);
  sub_100037908(&qword_1009239F0, &type metadata accessor for TodayCard.Style);
  sub_100753274();
  sub_100753274();
  if (aBlock != v189 || v184 != v190)
  {
    if (sub_100754754())
    {
      v99 = 1;
    }

    else
    {
      v99 = 2;
    }
  }

  v102(v103, v78);
  v102(v178, v78);

  v104 = v174;
  [v174 setOverrideUserInterfaceStyle:v99];
  sub_1006E97DC(a1, v165, v62, v171);
  sub_10074FB64();
  v105 = swift_dynamicCastClass();
  if (v105)
  {
    p_aBlock = v105;
    v107 = sub_100741BD4();
    v108 = v107;
    aBlock = _swiftEmptyArrayStorage;
    v109 = v107 & 0xFFFFFFFFFFFFFF8;
    if (v107 >> 62)
    {
      goto LABEL_184;
    }

    v110 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_65;
  }

  sub_100748774();
  v118 = swift_dynamicCastClass();
  if (v118)
  {
    p_aBlock = v118;
    v119 = sub_100748764();
    v108 = v119;
    aBlock = _swiftEmptyArrayStorage;
    v109 = v119 & 0xFFFFFFFFFFFFFF8;
    if (v119 >> 62)
    {
      v120 = sub_100754664();
    }

    else
    {
      v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v121 = 0;
    v122 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v120 == v121)
      {
        goto LABEL_112;
      }

      if ((v108 & 0xC000000000000001) == 0)
      {
        break;
      }

      p_aBlock = sub_100754574();
      v123 = v121 + 1;
      if (__OFADD__(v121, 1))
      {
        goto LABEL_180;
      }

LABEL_95:

      v124 = sub_10074EF64();

      ++v121;
      if (v124)
      {
        p_aBlock = &aBlock;
        sub_100753284();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v122 = aBlock;
        v121 = v123;
      }
    }

    if (v121 >= *(v109 + 16))
    {
      goto LABEL_181;
    }

    p_aBlock = *(v108 + 8 * v121 + 32);

    v123 = v121 + 1;
    if (!__OFADD__(v121, 1))
    {
      goto LABEL_95;
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    v110 = sub_100754664();
LABEL_65:
    v111 = 0;
    v112 = _swiftEmptyArrayStorage;
    while (v110 != v111)
    {
      if ((v108 & 0xC000000000000001) != 0)
      {
        p_aBlock = sub_100754574();
        v113 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v111 >= *(v109 + 16))
        {
          goto LABEL_179;
        }

        p_aBlock = *(v108 + 8 * v111 + 32);

        v113 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }
      }

      v114 = sub_10074EF64();

      ++v111;
      if (v114)
      {
        p_aBlock = &aBlock;
        sub_100753284();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v112 = aBlock;
        v111 = v113;
      }
    }

    v115 = v112 >> 62;
    if (!(v112 >> 62))
    {
      v116 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v116 >= 3)
      {
        v117 = 3;
      }

      else
      {
        v117 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      while (1)
      {
        if (v116 < v117)
        {
          goto LABEL_190;
        }

        if ((v112 & 0xC000000000000001) != 0 && v117)
        {
          sub_10074F3D4();

          sub_100754554(0);
          if (v117 != 1)
          {
            sub_100754554(1);
            if (v117 != 2)
            {
              sub_100754554(2);
            }
          }
        }

        else
        {
        }

        if (v115)
        {
          p_aBlock = sub_100754674();
          v111 = v125;
          v115 = v126;
          v117 = v127;

          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
          v111 = (v112 & 0xFFFFFFFFFFFFFF8) + 32;
          v117 = (2 * v117) | 1;
          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v122 = sub_100754774();
        swift_unknownObjectRetain_n();
        v128 = swift_dynamicCastClass();
        if (!v128)
        {
          swift_unknownObjectRelease();
          v128 = _swiftEmptyArrayStorage;
        }

        v129 = v128[2];

        v130 = (v117 >> 1) - v115;
        if (!__OFSUB__(v117 >> 1, v115))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_112:

        v115 = v122 >> 62;
        if (v122 >> 62)
        {
          if (v122 < 0)
          {
            p_aBlock = v122;
          }

          else
          {
            p_aBlock = (v122 & 0xFFFFFFFFFFFFFF8);
          }

          v108 = sub_100754664();
          if (sub_100754664() < 0)
          {
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            v134 = sub_100754664();
LABEL_126:
            v111 = 0;
            v112 = _swiftEmptyArrayStorage;
            while (v134 != v111)
            {
              if ((v108 & 0xC000000000000001) != 0)
              {
                p_aBlock = sub_100754574();
                v135 = v111 + 1;
                if (__OFADD__(v111, 1))
                {
                  goto LABEL_182;
                }
              }

              else
              {
                if (v111 >= *(v109 + 16))
                {
                  goto LABEL_183;
                }

                p_aBlock = *(v108 + 8 * v111 + 32);

                v135 = v111 + 1;
                if (__OFADD__(v111, 1))
                {
                  goto LABEL_182;
                }
              }

              v136 = sub_10074EF64();

              ++v111;
              if (v136)
              {
                p_aBlock = &aBlock;
                sub_100753284();
                if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100753304();
                }

                sub_100753344();
                v112 = aBlock;
                v111 = v135;
              }
            }

            goto LABEL_148;
          }

          if (v108 >= 3)
          {
            v152 = 3;
          }

          else
          {
            v152 = v108;
          }

          if (v108 >= 0)
          {
            v108 = v152;
          }

          else
          {
            v108 = 3;
          }

          v131 = sub_100754664();
        }

        else
        {
          v131 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v131 >= 3)
          {
            v108 = 3;
          }

          else
          {
            v108 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        if (v131 < v108)
        {
          goto LABEL_198;
        }

        if ((v122 & 0xC000000000000001) != 0 && v108)
        {
          sub_10074F3D4();

          sub_100754554(0);
          if (v108 != 1)
          {
            sub_100754554(1);
            if (v108 != 2)
            {
              sub_100754554(2);
            }
          }
        }

        else
        {
        }

        if (v115)
        {
          p_aBlock = sub_100754674();
          v111 = v137;
          v115 = v138;
          v117 = v139;

          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v122 & 0xFFFFFFFFFFFFFF8);
          v111 = (v122 & 0xFFFFFFFFFFFFFF8) + 32;
          v117 = (2 * v108) | 1;
          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v112 = sub_100754774();
        swift_unknownObjectRetain_n();
        v140 = swift_dynamicCastClass();
        if (!v140)
        {
          swift_unknownObjectRelease();
          v140 = _swiftEmptyArrayStorage;
        }

        v129 = v140[2];

        v130 = (v117 >> 1) - v115;
        if (!__OFSUB__(v117 >> 1, v115))
        {
          goto LABEL_169;
        }

        __break(1u);
LABEL_148:

        v115 = v112 >> 62;
        if (v112 >> 62)
        {
          if (v112 < 0)
          {
            p_aBlock = v112;
          }

          else
          {
            p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
          }

          v117 = sub_100754664();
          if (sub_100754664() < 0)
          {
            __break(1u);
LABEL_205:
            __break(1u);
            goto LABEL_206;
          }

          if (v117 >= 3)
          {
            v153 = 3;
          }

          else
          {
            v153 = v117;
          }

          if ((v117 & 0x8000000000000000) == 0)
          {
            v117 = v153;
          }

          else
          {
            v117 = 3;
          }

          v141 = sub_100754664();
        }

        else
        {
          v141 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v141 >= 3)
          {
            v117 = 3;
          }

          else
          {
            v117 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        if (v141 < v117)
        {
          goto LABEL_205;
        }

        if ((v112 & 0xC000000000000001) != 0 && v117)
        {
          sub_10074F3D4();

          sub_100754554(0);
          if (v117 != 1)
          {
            sub_100754554(1);
            if (v117 != 2)
            {
              sub_100754554(2);
            }
          }
        }

        else
        {
        }

        if (v115)
        {
          p_aBlock = sub_100754674();
          v111 = v143;
          v115 = v144;
          v117 = v145;

          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
          v111 = (v112 & 0xFFFFFFFFFFFFFF8) + 32;
          v117 = (2 * v117) | 1;
          if ((v117 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        v112 = sub_100754774();
        swift_unknownObjectRetain_n();
        v147 = swift_dynamicCastClass();
        if (!v147)
        {
          swift_unknownObjectRelease();
          v147 = _swiftEmptyArrayStorage;
        }

        v129 = v147[2];

        v130 = (v117 >> 1) - v115;
        if (!__OFSUB__(v117 >> 1, v115))
        {
LABEL_169:
          if (v129 != v130)
          {
            goto LABEL_191;
          }

          v142 = swift_dynamicCastClass();

          swift_unknownObjectRelease_n();
          if (!v142)
          {
            swift_unknownObjectRelease();
            v142 = _swiftEmptyArrayStorage;
          }

          goto LABEL_172;
        }

LABEL_206:
        __break(1u);
LABEL_207:
        if (v117 >= 3)
        {
          v151 = 3;
        }

        else
        {
          v151 = v117;
        }

        if ((v117 & 0x8000000000000000) == 0)
        {
          v117 = v151;
        }

        else
        {
          v117 = 3;
        }

        v116 = sub_100754664();
      }
    }

    if (v112 < 0)
    {
      p_aBlock = v112;
    }

    else
    {
      p_aBlock = (v112 & 0xFFFFFFFFFFFFFF8);
    }

    v117 = sub_100754664();
    if ((sub_100754664() & 0x8000000000000000) == 0)
    {
      goto LABEL_207;
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    swift_unknownObjectRelease_n();
LABEL_165:
    sub_1006313B0(p_aBlock, v111, v115, v117);
    v142 = v146;
    swift_unknownObjectRelease();

LABEL_172:
    v104 = v174;
  }

  else
  {
    sub_100747CA4();
    v132 = swift_dynamicCastClass();
    if (v132)
    {
      p_aBlock = v132;
      v133 = sub_100747C94();
      v108 = v133;
      aBlock = _swiftEmptyArrayStorage;
      v109 = v133 & 0xFFFFFFFFFFFFFF8;
      if (!(v133 >> 62))
      {
        v134 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_126;
      }

      goto LABEL_199;
    }

    sub_100741994();
    if (swift_dynamicCastClass())
    {
      sub_10000C518(&unk_1009231A0);
      v142 = swift_allocObject();
      *(v142 + 1) = xmmword_1007A5CF0;
      v142[4] = sub_100741984();
    }

    else
    {

      v142 = _swiftEmptyArrayStorage;
    }
  }

  v148 = OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_artworks;
  v149 = *&v104[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_artworks];

  v150 = sub_10011CDA8(v142, v149);

  if (v150)
  {
  }

  *&v104[v148] = v142;

  sub_1000361C4();
  return [v104 setNeedsLayout];
}

uint64_t sub_1000361C4()
{
  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  v19 = OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_artworks;
  v20 = v0;
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_artworks);
  if (v1 >> 62)
  {
LABEL_38:
    v2 = sub_100754664();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = sub_1007449C4();
  type metadata accessor for MultiAppFallbackIconView.Configuration();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + 40) = sub_100414338(_swiftEmptyArrayStorage);
  v5 = 3;
  if (v2 < 3)
  {
    v5 = v2;
  }

  *(v4 + 24) = v5;
  *(v4 + 32) = v3 & 1;

  sub_1003100EC(v6);
  v7 = *(v20 + v19);
  *&v21[0] = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
    v8 = sub_100754664();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      sub_100754574();
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v12 = sub_10074F1E4();

    ++v9;
    if (v12)
    {
      sub_100753284();
      if (*((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v21[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
      v10 = *&v21[0];
      v9 = v11;
    }
  }

  sub_100049AEC(v10);
  sub_1007442C4();
  sub_100752D34();
  v13 = *(v20 + v19);
  if (v13 >> 62)
  {
    v14 = sub_100754664();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        sub_100754574();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_36;
        }
      }

      if (*(v20 + v19) >> 62)
      {
        sub_100754664();
      }

      sub_10074F374();
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      v16 = swift_allocObject();
      *(v16 + 16) = v4;
      *(v16 + 24) = v15;

      sub_1007441F4();

      sub_10000C8CC(v21, &unk_1009276E0);
      ++v15;
    }

    while (v17 != v14);
  }
}

void sub_100036658(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && (a6 & 0x8000000000000000) == 0 && *(a5 + 24) > a6)
  {
    swift_beginAccess();
    v9 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a5 + 40);
    *(a5 + 40) = 0x8000000000000000;
    sub_100673648(v9, a6, isUniquelyReferenced_nonNull_native);
    *(a5 + 40) = v13;
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      sub_1003103A4(a1, a6);
    }
  }
}

uint64_t sub_100036728()
{
  sub_10074FBB4();
  sub_100037908(&qword_100926C60, &type metadata accessor for TodayCard);
  result = sub_1007468B4();
  if (v23)
  {
    sub_10074FB64();

    sub_100741BE4();
    if (swift_dynamicCastClass())
    {

      if (sub_100741BD4() >> 62)
      {
LABEL_73:
        sub_100754664();
      }

      v1 = sub_100741BD4();
      v2 = v1;
      v3 = v1 & 0xFFFFFFFFFFFFFF8;
      if (v1 >> 62)
      {
        v4 = sub_100754664();
        if (v4)
        {
LABEL_11:
          v5 = 0;
          do
          {
            v6 = v5;
            while (1)
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                sub_100754574();
                v5 = v6 + 1;
                if (__OFADD__(v6, 1))
                {
                  goto LABEL_67;
                }
              }

              else
              {
                if (v6 >= *(v3 + 16))
                {
                  goto LABEL_68;
                }

                v5 = v6 + 1;
                if (__OFADD__(v6, 1))
                {
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }
              }

              if (sub_10074EF24())
              {
                break;
              }

              ++v6;
              if (v5 == v4)
              {
                goto LABEL_79;
              }
            }

            sub_10074F374();

            sub_100753284();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100753304();
            }

            sub_100753344();
          }

          while (v5 != v4);
        }
      }

      else
      {
        v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4)
        {
          goto LABEL_11;
        }
      }

LABEL_79:

      v22._rawValue = _swiftEmptyArrayStorage;
      sub_100744224(v22);
    }

    sub_100748774();
    if (!swift_dynamicCastClass())
    {
      sub_100747CA4();
      if (!swift_dynamicCastClass())
      {
        sub_100741994();
        if (!swift_dynamicCastClass())
        {
        }

        sub_10000C518(&unk_1009231A0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1007A5CF0;

        sub_100741984();
        v14 = sub_10074F374();

        *(v13 + 32) = v14;
        v15._rawValue = v13;
        sub_100744224(v15);
      }

      if (sub_100747C94() >> 62)
      {
        sub_100754664();
      }

      v16 = sub_100747C94();
      v17 = v16;
      v18 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >> 62)
      {
        v19 = sub_100754664();
        if (!v19)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
          goto LABEL_79;
        }
      }

      v20 = 0;
      do
      {
        v21 = v20;
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            sub_100754574();
            v20 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v21 >= *(v18 + 16))
            {
              goto LABEL_72;
            }

            v20 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
              goto LABEL_73;
            }
          }

          if (sub_10074EF24())
          {
            break;
          }

          ++v21;
          if (v20 == v19)
          {
            goto LABEL_79;
          }
        }

        sub_10074F374();

        sub_100753284();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
      }

      while (v20 != v19);
      goto LABEL_79;
    }

    if (sub_100748764() >> 62)
    {
      sub_100754664();
    }

    v7 = sub_100748764();
    v8 = v7;
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      v10 = sub_100754664();
      if (!v10)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_79;
      }
    }

    v11 = 0;
    do
    {
      v12 = v11;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          sub_100754574();
          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v12 >= *(v9 + 16))
          {
            goto LABEL_70;
          }

          v11 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }
        }

        if (sub_10074EF24())
        {
          break;
        }

        ++v12;
        if (v11 == v10)
        {
          goto LABEL_79;
        }
      }

      sub_10074F374();

      sub_100753284();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
    }

    while (v11 != v10);
    goto LABEL_79;
  }

  return result;
}

void sub_100036E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v10 = (*(a4 + 16))(ObjectType, a4);
    [v10 removeFromSuperview];
  }

  if (a1)
  {
    v11 = swift_getObjectType();
    v12 = *(a2 + 16);
    swift_unknownObjectRetain();
    v13 = v12(v11, a2);
    v14 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer];
    v15 = OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView;
    v16 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView];
    *&v14[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView] = v13;
    v17 = v13;

    [v17 setAnchorPoint:{0.0, 1.0}];
    v18 = *&v14[v15];
    if (v18)
    {
      v20[0] = 0x3FF0000000000000;
      v20[1] = 0;
      v20[2] = 0;
      v20[3] = 0x3FF0000000000000;
      v20[4] = 0;
      v20[5] = 0;
      [v18 setTransform:v20];
    }

    [v14 addSubview:v17];
    [v17 setOverrideUserInterfaceStyle:{objc_msgSend(v5, "overrideUserInterfaceStyle")}];
    [v5 _continuousCornerRadius];
    [v17 _setContinuousCornerRadius:?];
    v19 = [v17 layer];
    [v19 setMaskedCorners:12];
    swift_unknownObjectRelease();
  }
}

void sub_100037048()
{
  swift_beginAccess();
  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_1000164A8(v2);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v6 = v5(ObjectType, v3);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      swift_getObjectType();
      sub_10074D394();
    }
  }
}

void sub_100037190()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100749574();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v3);
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay))
  {
    v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      swift_getObjectType();
      sub_10074D384();
    }
  }
}

uint64_t sub_100037438()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();
}

uint64_t type metadata accessor for MultiAppFallbackCardCollectionViewCell()
{
  result = qword_1009239E0;
  if (!qword_1009239E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037648(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100037698(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000376C4()
{
  swift_weakAssign();
}

uint64_t sub_100037710(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100926C40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037780()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000377C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100037804()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = v0[v1];
  if (v4 != 7)
  {
    v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerLabelsView];
    *(v5 + qword_1009441C0) = v4;
    *(*(v5 + qword_1009441C8) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_1009441D0) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*(v5 + qword_1009441E0) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = v4;
    *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension38MultiAppFallbackCardCollectionViewCell_infoLayerOverlayContainer] + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_originalSizeCategory) = v4;
  }

  return result;
}

uint64_t sub_100037908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100037950()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100037990(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100926C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_100037A94()
{
  v1 = *v0;
  sub_100754834();
  sub_100754844(v1);
  return sub_100754884();
}

Swift::Int sub_100037B08()
{
  v1 = *v0;
  sub_100754834();
  sub_100754844(v1);
  return sub_100754884();
}

id sub_100037B4C()
{
  swift_getObjectType();
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_kind] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for GradientView();
  v1 = objc_msgSendSuper2(&v4, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100037ED0();
  sub_10000C518(&unk_1009249D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007A5A00;
  *(v2 + 32) = sub_100751624();
  *(v2 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v1;
}

void sub_100037D2C(uint64_t a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  if (a1)
  {
    v5 = v4;
    v6 = *(a1 + 16);
    if (v6)
    {
      v10 = _swiftEmptyArrayStorage;
      sub_1007545C4();
      v7 = 32;
      do
      {
        [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + v7)];
        sub_1007545A4();
        sub_1007545D4();
        sub_1007545E4();
        sub_1007545B4();
        v7 += 8;
        --v6;
      }

      while (v6);
    }

    sub_100016C60(0, &qword_10092BE20);
    isa = sub_100753294().super.isa;

    [v5 setLocations:{isa, isa, v10}];
  }

  else
  {
    [v4 setLocations:{0, 0, v10}];
  }
}

char *sub_100037ED0()
{
  v1 = v0;
  v2 = [v0 layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  isa = *&v0[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors];
  if (!isa)
  {
    goto LABEL_15;
  }

  v15 = v3;
  if (isa >> 62)
  {
    v5 = sub_100754664();
  }

  else
  {
    v5 = *((isa & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
LABEL_14:
    isa = sub_100753294().super.isa;

    v3 = v15;
LABEL_15:
    [v3 setColors:{isa, v15, v16}];

    return [v1 setNeedsDisplay];
  }

  v18 = _swiftEmptyArrayStorage;

  result = sub_10001E288(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v18;
    do
    {
      if ((isa & 0xC000000000000001) != 0)
      {
        v9 = sub_100754574();
      }

      else
      {
        v9 = *(isa + v7 + 4);
      }

      v10 = v9;
      v11 = [v9 CGColor];
      type metadata accessor for CGColor(0);
      v17 = v12;

      *&v16 = v11;
      v18 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_10001E288((v13 > 1), v14 + 1, 1);
        v8 = v18;
      }

      ++v7;
      v8[2] = v14 + 1;
      sub_10000C610(&v16, &v8[4 * v14 + 4]);
    }

    while (v5 != v7);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_100038100()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for EditorsChoiceUseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EditorsChoiceUseCase(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000382D8()
{
  result = qword_100923A38;
  if (!qword_100923A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923A38);
  }

  return result;
}

double sub_100038350(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_100749964();
  if (v10)
  {
    v11 = sub_100749974();
    if (v11 >> 62)
    {
      v12 = sub_100754664();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v12 = v9;
  }

  v13 = [a7 traitCollection];
  sub_100677794(v12, v13);

  return a1;
}

id sub_10003840C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000C518(&unk_100933200);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_100749964();
  if ((v9 & 1) == 0)
  {
    return sub_100669194(v8);
  }

  v10 = sub_100749974();
  v11 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_100669490(v10, v7, 1, a3);

  sub_100038618(v7);
  return [v3 layoutIfNeeded];
}

uint64_t sub_1000385D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100038618(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100933200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000386CC()
{
  v0 = sub_10074F704();
  v39 = *(v0 - 8);
  __chkstk_darwin(v0);
  v38 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100748494();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007484B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074CD14();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007445B4();
  sub_100038D90(&qword_100923AA8, &type metadata accessor for PrivacyFooter);
  sub_1007468B4();
  v11 = v42[0];
  if (!v42[0])
  {
    return 0.0;
  }

  v33 = v0;
  v34 = v5;
  v35 = v4;
  sub_100038D38();
  if (qword_100921248 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  sub_10000D0FC(v12, qword_100981410);
  swift_getKeyPath();
  sub_100746914();

  v13 = v42[0];
  v14 = sub_100753C14();

  v32 = v11;
  sub_1007445A4();
  sub_100743E94();

  v15 = sub_100743074();

  v16 = sub_10074F3F4();
  v43 = v16;
  v44 = sub_100038D90(&qword_10092AC70, &type metadata accessor for Feature);
  v17 = sub_10000D134(v42);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  v31 = v15;
  v18 = v14;
  sub_10074FC74();
  sub_10000C620(v42);
  sub_10074CCD4();
  sub_10074CCE4();
  (*(v8 + 8))(v10, v7);
  if (qword_100920350 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v2, qword_10097DD00);
  (*(v36 + 16))(v37, v19, v2);
  v20 = v43;
  v21 = v44;
  v22 = sub_10000C888(v42, v43);
  v41[3] = v20;
  v41[4] = *(v21 + 8);
  v23 = sub_10000D134(v41);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  v24 = v40;
  sub_1007484A4();
  swift_getKeyPath();
  v25 = v38;
  sub_100746914();

  sub_10074F674();
  (*(v39 + 8))(v25, v33);
  swift_getKeyPath();
  sub_100746914();

  sub_100038D90(&unk_100923AC0, &type metadata accessor for PrivacyFooterLayout);
  v26 = v35;
  sub_100750404();
  v28 = v27;

  swift_unknownObjectRelease();

  (*(v34 + 8))(v24, v26);
  sub_10000C620(v42);
  return v28;
}

unint64_t sub_100038D38()
{
  result = qword_100923AB0;
  if (!qword_100923AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100923AB0);
  }

  return result;
}

uint64_t sub_100038D90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100038E3C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1007504F4();
  sub_100039C50(v3, a2);
  sub_10000D0FC(v3, a2);
  return sub_100750504();
}

uint64_t sub_100038E9C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10097CA38);
  sub_10000D0FC(v4, qword_10097CA38);
  if (qword_100921380 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009817B8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10003907C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10097CA68);
  sub_10000D0FC(v4, qword_10097CA68);
  if (qword_100921388 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009817D0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100039264(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v3, a2);
  sub_10000D0FC(v3, a2);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

void sub_1000392FC(unsigned __int8 a1, uint64_t a2, UIContentSizeCategory a3)
{
  v4 = a1;
  v5 = sub_1007504F4();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10074F584();
  attr = v9[-1].attr;
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 != 4)
  {
    if (sub_100753804())
    {
      goto LABEL_8;
    }

    sub_10074F624();
    if (qword_100920050 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_10000D0FC(v9, qword_10097D190);
      sub_100039BF8();
      v14 = sub_100753004();
      v15 = *(attr + 1);
      attr += 8;
      v15(v12, v9);
      if (v14)
      {
        break;
      }

LABEL_8:
      v9 = &stru_1008F2000;
      v16 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_100753964() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (sub_100753954())
      {
        v17 = sub_100753964();

        if (v17)
        {
          return;
        }
      }

      else
      {
      }

      v19 = [(NSString *)a3 preferredContentSizeCategory];
      v5 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      a3 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (sub_100753964())
      {
        if (sub_100753954())
        {
          sub_100753964();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  sub_10074F5C4();
  sub_10074F5C4();
  if (v4 == 4)
  {
    if (qword_10091FDF8 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_10000D0FC(v5, qword_10097CA08);
    sub_1007504C4();
  }

  else
  {
    if (v13 >= 300.0)
    {
      if (qword_10091FDF0 != -1)
      {
        swift_once();
      }

      v18 = qword_10097C9F0;
    }

    else
    {
      if (qword_10091FE00 != -1)
      {
        swift_once();
      }

      v18 = qword_10097CA20;
    }

    v20 = sub_10000D0FC(v5, v18);
    (*(v6 + 16))(v8, v20, v5);
    sub_1007504C4();
    (*(v6 + 8))(v8, v5);
  }
}

void sub_100039770(unsigned __int8 a1, uint64_t a2, void *a3)
{
  LOBYTE(v4) = a1;
  v5 = a1;
  v6 = sub_1007504F4();
  v21 = *(v6 - 1);
  __chkstk_darwin(v6);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10074F584();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 != 4)
  {
    if (sub_100753804())
    {
      goto LABEL_8;
    }

    v20 = a3;
    sub_10074F624();
    if (qword_100920050 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      sub_10000D0FC(v9, qword_10097D190);
      sub_100039BF8();
      v14 = sub_100753004();
      (v10[1])(v12, v9);
      a3 = v20;
      if (v14)
      {
        break;
      }

LABEL_8:
      v4 = &stru_1008F2000;
      v9 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityMedium;
      v8 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((sub_100753964() & 1) == 0)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (sub_100753954())
      {
        v15 = sub_100753964();

        if (v15)
        {
          return;
        }
      }

      else
      {
      }

      v17 = [a3 preferredContentSizeCategory];
      v6 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v10 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if (sub_100753964())
      {
        if (sub_100753954())
        {
          sub_100753964();
        }

        return;
      }

      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  sub_1006E88C4(v4);
  sub_10074F5C4();
  if (v5 == 4)
  {
    if (qword_10091FDF8 != -1)
    {
LABEL_27:
      swift_once();
    }

    sub_10000D0FC(v6, qword_10097CA08);
    sub_1007504C4();
  }

  else
  {
    if (v13 >= 300.0)
    {
      if (qword_10091FDF0 != -1)
      {
        swift_once();
      }

      v16 = qword_10097C9F0;
    }

    else
    {
      if (qword_10091FE00 != -1)
      {
        swift_once();
      }

      v16 = qword_10097CA20;
    }

    v18 = sub_10000D0FC(v6, v16);
    v19 = v21;
    (*(v21 + 16))(v8, v18, v6);
    sub_1007504C4();
    (*(v19 + 8))(v8, v6);
  }
}

unint64_t sub_100039BF8()
{
  result = qword_100923AD0;
  if (!qword_100923AD0)
  {
    sub_10074F584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923AD0);
  }

  return result;
}

uint64_t *sub_100039C50(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

double sub_100039CB4(uint64_t a1, void *a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26[-1] - v8;
  v10 = sub_100750304();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1007537B4() & 1) == 0)
  {
    if (JUScreenClassHasRoundedCorners())
    {
      if (a2)
      {
        v14 = [a2 window];
        if (v14)
        {
          v15 = v14;
          [v14 safeAreaInsets];
        }
      }
    }
  }

  if (qword_100921380 != -1)
  {
    swift_once();
  }

  v16 = sub_100750534();
  v17 = sub_10000D0FC(v16, qword_1009817B8);
  (*(*(v16 - 8) + 16))(v13, v17, v16);
  (*(v11 + 104))(v13, enum case for FontSource.useCase(_:), v10);
  v26[3] = v10;
  v26[4] = &protocol witness table for FontSource;
  v18 = sub_10000D134(v26);
  (*(v11 + 16))(v18, v13, v10);
  sub_10074FC54();
  v20 = v19;
  (*(v11 + 8))(v13, v10);
  sub_10000C620(v26);
  sub_1007502D4();
  *v26 = v20;
  (*(v4 + 16))(v6, v9, v3);
  v21 = (*(v4 + 88))(v6, v3);
  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v22 = round(v20);
LABEL_19:
    (*(v4 + 8))(v9, v3);
    return v22;
  }

  if (v21 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v22 = rint(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v22 = ceil(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v22 = floor(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v22 = trunc(v20);
    goto LABEL_19;
  }

  if (v21 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    (*(v4 + 8))(v9, v3);
    if ((*&v20 & 0x8000000000000000) != 0)
    {
      return floor(v20);
    }

    else
    {
      return ceil(v20);
    }
  }

  else
  {
    sub_100753444();
    v24 = *(v4 + 8);
    v24(v9, v3);
    v24(v6, v3);
    return *v26;
  }
}

uint64_t sub_10003A13C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v3 - 8);
  v80 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v71 - v6;
  v7 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v7 - 8);
  v76 = &v71 - v8;
  v9 = sub_100744864();
  __chkstk_darwin(v9 - 8);
  v87 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v71 - v12;
  v13 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v13 - 8);
  v85 = &v71 - v14;
  v75 = sub_100744894();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v84 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100747D94();
  v77 = *(v16 - 8);
  v78 = v16;
  __chkstk_darwin(v16);
  v88 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10074EA34();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000C518(&unk_10092E450);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v71 - v24;
  v26 = sub_10000C518(&qword_100923AF0);
  __chkstk_darwin(v26 - 8);
  v82 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v81 = &v71 - v29;
  __chkstk_darwin(v30);
  v32 = &v71 - v31;
  __chkstk_darwin(v33);
  v89 = &v71 - v34;
  sub_100746024();
  sub_10003B0B0(&qword_100923AF8, &type metadata accessor for ProductMediaItem);
  result = sub_1007468B4();
  v36 = v91[0];
  if (v91[0])
  {
    v37 = sub_100746004();
    v90 = v36;
    v73 = v37;
    if (v37)
    {
      v72 = a2;
    }

    else
    {
      if (!sub_100746014())
      {
      }

      v72 = a2;
      v73 = sub_10074EC14();
    }

    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    sub_1007525B4();

    (*(v23 + 8))(v25, v22);
    if ((*(v19 + 88))(v21, v18) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v19 + 96))(v21, v18);
      v38 = sub_100748D64();
      v39 = *(v38 - 8);
      v40 = v89;
      (*(v39 + 32))(v89, v21, v38);
      (*(v39 + 56))(v40, 0, 1, v38);
    }

    else
    {
      v41 = sub_100748D64();
      v42 = v89;
      (*(*(v41 - 8) + 56))(v89, 1, 1, v41);
      v43 = v18;
      v40 = v42;
      (*(v19 + 8))(v21, v43);
    }

    v44 = v83;
    if (sub_100746014())
    {
      (*(v74 + 104))(v84, enum case for VideoFillMode.scaleAspectFit(_:), v75);
      sub_10074EC14();
      sub_10074F2A4();
      v45 = v85;
      sub_100750504();

      v46 = sub_1007504F4();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      sub_10074EBB4();
      sub_10074EBF4();
      sub_10074EBC4();
      sub_10074EBA4();
      sub_10074EC04();
      sub_100016B4C(v40, v32, &qword_100923AF0);
      v47 = sub_100748D64();
      v48 = *(v47 - 8);
      if ((*(v48 + 48))(v32, 1, v47) == 1)
      {
        sub_10000C8CC(v32, &qword_100923AF0);
      }

      else
      {
        sub_100748D54();
        (*(v48 + 8))(v32, v47);
        sub_100744504();
      }

      sub_100747D74();
      sub_1007464C4();
      sub_1007526E4();
      sub_10074EB94();
      v49 = v76;
      sub_10074EC24();
      v50 = sub_100741264();
      (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
      v51 = v79;
      sub_10074EBE4();
      v52 = v80;
      sub_10074EBD4();
      type metadata accessor for VideoView();
      sub_10003B0B0(&qword_1009230E0, type metadata accessor for VideoView);
      v53 = sub_1007464A4();
      sub_10000C8CC(v52, &unk_1009281C0);
      sub_10000C8CC(v51, &unk_1009281C0);
      sub_10000C8CC(v49, &unk_100923970);
      sub_10000C8CC(v91, &unk_1009276E0);
      sub_10043E964();
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

    v57 = *&v44[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_borderedScreenshotView];
    v58 = *(v57 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
    v59 = sub_100746004();
    if (v59)
    {
    }

    [v58 setHidden:v59 == 0];

    v60 = swift_unknownObjectWeakLoadStrong();
    v61 = v82;
    if (v60)
    {
      v62 = v60;
      v63 = sub_100746014();
      if (v63)
      {
      }

      [v62 setHidden:v63 == 0];
    }

    v64 = v81;
    sub_100016B4C(v40, v81, &qword_100923AF0);
    v65 = sub_100748D64();
    v66 = *(v65 - 8);
    v67 = *(v66 + 48);
    if (v67(v64, 1, v65) == 1)
    {
      sub_10000C8CC(v64, &qword_100923AF0);
      v68 = 0;
    }

    else
    {
      v69 = sub_100748CF4();
      (*(v66 + 8))(v64, v65);
      if (v69)
      {
        v68 = sub_10074F114() ^ 1;
      }

      else
      {
        v68 = 0;
      }

      v40 = v89;
    }

    v44[OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_shouldForcePortrait] = v68 & 1;
    sub_100016B4C(v40, v61, &qword_100923AF0);
    if (v67(v61, 1, v65) == 1)
    {
      sub_10000C8CC(v61, &qword_100923AF0);
      v70 = 0;
    }

    else
    {
      v70 = sub_100748D54();
      (*(v66 + 8))(v61, v65);
    }

    *(v57 + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = v70;

    sub_10028864C();

    [v44 setNeedsLayout];

    return sub_10000C8CC(v40, &qword_100923AF0);
  }

  return result;
}

uint64_t sub_10003AEA8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_100923200);
}

uint64_t sub_10003AF14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension34ProductMediaItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10003AFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_10003B0B0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10003B2C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintsCollectionViewDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10003B37C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074F704();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007428B4();
  sub_10003B560(&unk_100923B90, &type metadata accessor for AppEvent);
  sub_1007468B4();
  v7 = v17;
  if (!v17)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v10 = sub_10007DC04();
  v11 = type metadata accessor for AppEventView();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_100194FE8(v9, v7, v10, a2, v11, ObjectType);
  v14 = v13;
  swift_unknownObjectRelease_n();

  return v14;
}

uint64_t sub_10003B560(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10003B5AC(uint64_t a1, char a2)
{
  v3 = sub_10074F704();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  v9 = sub_10007DC04();
  v10 = type metadata accessor for AppEventView();
  sub_100743794();
  v11 = sub_100743764();
  v13 = v12;
  v14 = sub_100743744();
  v16 = v15;
  v17 = sub_100743774();
  v19 = v18;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1001951F0(v11, v13, v14, v16, v17, v19, a2, v9, v8, v10, ObjectType);
  v22 = v21;

  swift_unknownObjectRelease_n();
  return v22;
}

id sub_10003B780()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = [objc_opt_self() buttonWithType:7];
  sub_100754174();
  v11 = sub_1007541F4();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_100754224();
  sub_100754214();
  if ((*(v12 + 48))(v6, 1, v11))
  {
    sub_10003BB1C(v6, v9);
    sub_100754224();
    sub_10003BB8C(v6);
  }

  else
  {
    v13 = [objc_opt_self() configurationWithWeight:5];
    sub_100754024();
    sub_100754224();
  }

  v14 = v10;
  [v14 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
  v15 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v14 addInteraction:v15];

  [v14 setShowsLargeContentViewer:1];
  [v14 setScalesLargeContentImage:1];
  (*(v1 + 104))(v3, enum case for SystemImage.xmark(_:), v0);
  v16 = sub_100743AE4();
  (*(v1 + 8))(v3, v0);
  [v14 setLargeContentImage:v16];

  v20._object = 0x8000000100766760;
  v20._countAndFlagsBits = 0xD00000000000001DLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_1007458B4(v20, v21);
  v17 = sub_100753064();

  [v14 setLargeContentTitle:v17];

  return v14;
}

uint64_t sub_10003BB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100932470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BB8C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100932470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10003BBF4(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v7 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  v13 = sub_1007417F4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0;
  if (v20 && a1)
  {
    v72 = v14;
    v22 = (v3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    v23 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    *v22 = a1;
    v22[1] = v20;
    v71 = a1;

    swift_unknownObjectWeakAssign();
    v24 = sub_1003787A4(a3);
    v25 = &unk_10097C000;
    if (!v24)
    {
      v32 = 0;
LABEL_29:
      v48 = v71;
      v46 = v72;
      goto LABEL_33;
    }

    v26 = v24;
    v70 = a2;
    v27 = [v24 visibleViewController];
    if (v27)
    {
      v28 = v27;
      type metadata accessor for SearchViewController();
      v29 = swift_dynamicCastClass();
      if (v29)
      {
        v30 = v29;

        v31 = *(v30 + OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_searchResultsContainerViewController);
        v32 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension36SearchResultsContainerViewController_activeSearchSectionViewController];
        v33 = v32;

        if (!v32)
        {
          goto LABEL_32;
        }

        v34 = v33;
LABEL_13:
        v36 = v33;
        swift_unknownObjectWeakAssign();
        v37 = [v34 collectionView];
        v38 = v37;
        if (v37)
        {
          v39 = [v37 indexPathsForSelectedItems];
          if (v39)
          {
            v40 = v39;
            v69 = v38;
            v41 = sub_1007532A4();

            if (*(v41 + 16))
            {
              v42 = v72;
              (*(v72 + 16))(v16, v41 + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v13);

              (*(v42 + 32))(v19, v16, v13);
              v43 = v69;
              isa = sub_100741704().super.isa;
              v45 = [v43 cellForItemAtIndexPath:isa];

              v46 = v72;
              (*(v46 + 8))(v19, v13);
              v47 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell);
              *(v3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell) = v45;

              v25 = &unk_10097C000;
              a2 = v70;
              v48 = v71;
              goto LABEL_33;
            }

            v38 = v69;
          }
        }

        v49 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_originatingView);
        if (v49)
        {
          v69 = v38;
          v50 = v49;
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            v52 = v51;
            v53 = v50;
            a2 = v70;
LABEL_28:

            v56 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell);
            *(v3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell) = v52;

            v25 = &unk_10097C000;
            goto LABEL_29;
          }

          v53 = v50;
          v68 = v50;
          while (1)
          {

            v54 = [v53 superview];
            if (!v54)
            {
              break;
            }

            v53 = v54;
            objc_opt_self();
            v55 = swift_dynamicCastObjCClass();
            if (v55)
            {
              v52 = v55;
              a2 = v70;
              v50 = v68;
              goto LABEL_28;
            }
          }
        }

        else
        {
        }

LABEL_32:
        a2 = v70;
        v48 = v71;
        v46 = v72;
        v25 = &unk_10097C000;
LABEL_33:
        v57 = *(v3 + v25[340]);
        if (!v57)
        {
LABEL_43:
          v64 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPagePresentationController());
          v65 = v48;
          v66 = [v64 initWithPresentedViewController:v65 presentingViewController:a2];

          return v66;
        }

        if (v32)
        {
          v58 = v57;
          v59 = [v32 collectionView];
          if (v59)
          {
            v60 = v59;
            v61 = [v59 indexPathForCell:v58];

            if (v61)
            {
              sub_100741744();

              v62 = 0;
            }

            else
            {
              v62 = 1;
            }

            (*(v72 + 56))(v9, v62, 1, v13);
            sub_10003E130(v9, v12);
            goto LABEL_42;
          }
        }

        (*(v46 + 56))(v12, 1, 1, v13);
LABEL_42:
        v63 = OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
        swift_beginAccess();
        sub_10003E1A0(v12, v3 + v63);
        swift_endAccess();
        goto LABEL_43;
      }
    }

    v33 = [v26 visibleViewController];

    if (!v33)
    {
      v32 = 0;
      goto LABEL_32;
    }

    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (!v35)
    {

      v32 = 0;
      goto LABEL_32;
    }

    v34 = v35;
    v32 = v35;
    goto LABEL_13;
  }

  return v21;
}

void sub_10003C308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v5 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (!v5 || (*&v39 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell), sub_10003E054(), v6 = v5, sub_10000C518(&qword_100923C10), (swift_dynamicCast() & 1) == 0))
  {
    *&v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_7;
  }

  v7 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
LABEL_7:
    sub_10000C8CC(&v47, &qword_100923C18);
    goto LABEL_8;
  }

  v8 = v49;
  sub_10000C888(&v47, *(&v48 + 1));
  v9 = (*(v8 + 8))(v7, v8);
  sub_10000C620(&v47);
  v10 = [v9 layer];

  v11 = [v10 presentationLayer];
  if (v11)
  {
    [v11 transform];

    goto LABEL_14;
  }

LABEL_8:
  v12 = *(a3 + v4);
  if (v12 && (*&v47 = *(a3 + v4), sub_10003E054(), v13 = v12, sub_10000C518(&qword_100923C10), (swift_dynamicCast() & 1) != 0))
  {
    v14 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v15 = v41;
      sub_10000C888(&v39, *(&v40 + 1));
      v16 = (*(v15 + 8))(v14, v15);
      sub_10000C620(&v39);
      v17 = [v16 layer];

      [v17 transform];
      goto LABEL_14;
    }
  }

  else
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  sub_10000C8CC(&v39, &qword_100923C18);
  v18 = *&CATransform3DIdentity.m33;
  v51 = *&CATransform3DIdentity.m31;
  v52 = v18;
  v19 = *&CATransform3DIdentity.m43;
  v53 = *&CATransform3DIdentity.m41;
  v54 = v19;
  v20 = *&CATransform3DIdentity.m13;
  v47 = *&CATransform3DIdentity.m11;
  v48 = v20;
  v21 = *&CATransform3DIdentity.m23;
  v49 = *&CATransform3DIdentity.m21;
  v50 = v21;
LABEL_14:
  v22 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v22)
  {
    v23 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
    ObjectType = swift_getObjectType();
    *&v39 = v22;
    v25 = (*(*(v23 + 8) + 8))(ObjectType);
    v26 = [v25 layer];

    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    [v26 setTransform:&v39];
  }

  v27 = *(a3 + v4);
  if (v27 && (sub_10003E054(), v28 = v27, sub_10000C518(&qword_100923C10), (swift_dynamicCast() & 1) != 0))
  {
    v29 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v30 = v41;
      sub_10000C888(&v39, *(&v40 + 1));
      v31 = (*(v30 + 8))(v29, v30);
      sub_10000C620(&v39);
      v32 = [v31 layer];

      [v32 removeAllAnimations];
      v33 = *(a3 + v4);
      if (!v33)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  else
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
  }

  sub_10000C8CC(&v39, &qword_100923C18);
  v33 = *(a3 + v4);
  if (!v33)
  {
LABEL_26:
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
    goto LABEL_27;
  }

LABEL_23:
  sub_10003E054();
  v34 = v33;
  sub_10000C518(&qword_100923C10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v35 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v36 = v41;
    sub_10000C888(&v39, *(&v40 + 1));
    v37 = (*(v36 + 8))(v35, v36);
    sub_10000C620(&v39);
    v38 = [v37 layer];

    v43 = v51;
    v44 = v52;
    v45 = v53;
    v46 = v54;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v42 = v50;
    [v38 setTransform:&v39];

    return;
  }

LABEL_27:
  sub_10000C8CC(&v39, &qword_100923C18);
}

void sub_10003C81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell);
  if (v4 && (*&v24 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell), sub_10003E054(), v5 = v4, sub_10000C518(&qword_100923C10), (swift_dynamicCast() & 1) != 0))
  {
    v6 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v7 = v34;
      sub_10000C888(&v32, *(&v33 + 1));
      v8 = (*(v7 + 8))(v6, v7);
      sub_10000C620(&v32);
      v9 = [v8 layer];

      v10 = *&CATransform3DIdentity.m33;
      v28 = *&CATransform3DIdentity.m31;
      v29 = v10;
      v11 = *&CATransform3DIdentity.m43;
      v30 = *&CATransform3DIdentity.m41;
      v31 = v11;
      v12 = *&CATransform3DIdentity.m13;
      v24 = *&CATransform3DIdentity.m11;
      v25 = v12;
      v13 = *&CATransform3DIdentity.m23;
      v26 = *&CATransform3DIdentity.m21;
      v27 = v13;
      [v9 setTransform:&v24];

      goto LABEL_7;
    }
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
  }

  sub_10000C8CC(&v32, &qword_100923C18);
LABEL_7:
  v14 = a3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController;
  v15 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
  if (v15)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    *&v24 = v15;
    v18 = (*(*(v16 + 8) + 8))(ObjectType);
    v19 = [v18 layer];

    v20 = *&CATransform3DIdentity.m33;
    v28 = *&CATransform3DIdentity.m31;
    v29 = v20;
    v21 = *&CATransform3DIdentity.m43;
    v30 = *&CATransform3DIdentity.m41;
    v31 = v21;
    v22 = *&CATransform3DIdentity.m13;
    v24 = *&CATransform3DIdentity.m11;
    v25 = v22;
    v23 = *&CATransform3DIdentity.m23;
    v26 = *&CATransform3DIdentity.m21;
    v27 = v23;
    [v19 setTransform:&v24];
  }
}

void sub_10003CA0C(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController);
    if (v3)
    {
      v4 = *(a3 + OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController + 8);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 48);
      v7 = v3;
      v6(ObjectType, v4);
    }
  }
}

char *sub_10003CB40(void *a1)
{
  v3 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v3 - 8);
  v5 = &v112 - v4;
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong collectionView];

    if (v12)
    {
      v13 = OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceIndexPath;
      swift_beginAccess();
      sub_10003E0A0(&v1[v13], v5);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_10000C8CC(v5, &unk_100923C00);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        isa = sub_100741704().super.isa;
        v15 = [v12 cellForItemAtIndexPath:isa];

        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell];
          *&v1[OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell] = v15;
        }
      }
    }
  }

  v17 = OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_sourceCell];
  if (!v18)
  {
    goto LABEL_24;
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19;
  v119 = v18;
  sub_10003E054();
  v21 = v18;
  sub_10000C518(&qword_100923C10);
  if (swift_dynamicCast())
  {
    v22 = *(&v121 + 1);
    if (*(&v121 + 1))
    {
      v23 = v122;
      sub_10000C888(&v120, *(&v121 + 1));
      v24 = *(v23 + 8);
      v117 = v1;
      v25 = v24(v22, v23);
      v1 = v117;
      v26 = v25;
      sub_10000C620(&v120);
      v27 = *&v1[v17];
      if (!v27)
      {

LABEL_39:
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
        goto LABEL_23;
      }

      v119 = *&v1[v17];
      v28 = v27;
      if (swift_dynamicCast())
      {
        v29 = *(&v121 + 1);
        if (*(&v121 + 1))
        {
          v116 = v21;
          v30 = v122;
          sub_10000C888(&v120, *(&v121 + 1));
          v31 = (*(v30 + 16))(v29, v30);
          v1 = v117;
          v32 = v31;
          sub_10000C620(&v120);
          v33 = *&v1[v17];
          if (v33)
          {
            v119 = *&v1[v17];
            v34 = v33;
            if (swift_dynamicCast())
            {
              v35 = *(&v121 + 1);
              if (*(&v121 + 1))
              {
                v115 = v32;
                v36 = v122;
                sub_10000C888(&v120, *(&v121 + 1));
                v37 = (*(v36 + 40))(v35, v36);
                v1 = v117;
                v38 = v37;
                v40 = v39;
                sub_10000C620(&v120);
                v41 = *&v1[v17];
                if (v41)
                {
                  v119 = *&v1[v17];
                  v42 = v41;
                  v43 = swift_dynamicCast();
                  v44 = v116;
                  if (v43)
                  {
                    v45 = *(&v121 + 1);
                    if (*(&v121 + 1))
                    {
                      v46 = v122;
                      sub_10000C888(&v120, *(&v121 + 1));
                      v47 = (*(v46 + 32))(v45, v46);
                      v1 = v117;
                      v114 = v47;
                      v113 = v48;
                      v50 = v49;
                      v52 = v51;
                      sub_10000C620(&v120);
                      [v44 bounds];
                      v54 = v53;
                      v56 = v55;
                      v58 = v57;
                      v60 = v59;
                      v61 = [v20 view];
                      [v44 convertRect:v61 toView:{v54, v56, v58, v60}];
                      v63 = v62;
                      v65 = v64;

                      v66 = v115;
                      [v115 bounds];
                      [v66 convertRect:v44 toCoordinateSpace:?];
                      v68 = v38 + v63 + v67;
                      v70 = v40 + v65 + v69;
                      v71 = swift_unknownObjectWeakLoadStrong();
                      v72 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
                      v73 = type metadata accessor for AppPromotionDetailPageCloseAnimation();
                      v74 = objc_allocWithZone(v73);
                      *&v74[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCardView] = v26;
                      *&v74[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCollectionViewController] = v71;
                      v75 = &v74[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toBounds];
                      v76 = v113;
                      *v75 = v114;
                      *(v75 + 1) = v76;
                      *(v75 + 2) = v50;
                      *(v75 + 3) = v52;
                      v75[32] = 0;
                      v77 = &v74[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCenter];
                      *v77 = v68;
                      v77[1] = v70;
                      *(v77 + 16) = 0;
                      *&v74[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_detailPageViewController] = v72;
                      v118.receiver = v74;
                      v118.super_class = v73;
                      v78 = v72;
                      v79 = v26;
                      v80 = v71;
                      v81 = objc_msgSendSuper2(&v118, "init");

                      goto LABEL_25;
                    }
                  }

                  else
                  {
                    v122 = 0;
                    v120 = 0u;
                    v121 = 0u;
                  }

                  goto LABEL_23;
                }

                goto LABEL_43;
              }
            }

            else
            {
              v122 = 0;
              v120 = 0u;
              v121 = 0u;
            }

            goto LABEL_23;
          }

LABEL_43:
          goto LABEL_39;
        }
      }

      else
      {
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
  }

LABEL_23:
  sub_10000C8CC(&v120, &qword_100923C18);
LABEL_24:
  v82 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension43AppPromotionDetailPageTransitioningDelegate_detailPageViewController];
  v83 = type metadata accessor for AppPromotionDetailPageCloseAnimation();
  v84 = objc_allocWithZone(v83);
  *&v84[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCardView] = 0;
  *&v84[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCollectionViewController] = 0;
  v85 = &v84[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toBounds];
  *v85 = 0u;
  *(v85 + 1) = 0u;
  v85[32] = 1;
  v86 = &v84[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_toCenter];
  *v86 = 0;
  *(v86 + 1) = 0;
  v86[16] = 1;
  *&v84[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageCloseAnimation_detailPageViewController] = v82;
  v123.receiver = v84;
  v123.super_class = v83;
  v87 = v82;
  v81 = objc_msgSendSuper2(&v123, "init");
LABEL_25:
  v88 = swift_allocObject();
  *(v88 + 16) = v1;
  v89 = OBJC_IVAR____TtC22SubscribePageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v90 = *&v81[v89];
  v91 = v81;
  v92 = v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v90;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v90 = sub_100255160(0, *(v90 + 2) + 1, 1, v90);
    *&v81[v89] = v90;
  }

  v95 = *(v90 + 2);
  v94 = *(v90 + 3);
  if (v95 >= v94 >> 1)
  {
    v90 = sub_100255160((v94 > 1), v95 + 1, 1, v90);
  }

  *(v90 + 2) = v95 + 1;
  v96 = &v90[24 * v95];
  *(v96 + 4) = sub_10003E03C;
  *(v96 + 5) = v88;
  v96[48] = 0;
  *&v81[v89] = v90;
  swift_endAccess();

  v97 = swift_allocObject();
  *(v97 + 16) = a1;
  swift_beginAccess();
  v98 = *&v81[v89];
  v99 = a1;

  v100 = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v98;
  if ((v100 & 1) == 0)
  {
    v98 = sub_100255160(0, *(v98 + 2) + 1, 1, v98);
    *&v81[v89] = v98;
  }

  v102 = *(v98 + 2);
  v101 = *(v98 + 3);
  if (v102 >= v101 >> 1)
  {
    v98 = sub_100255160((v101 > 1), v102 + 1, 1, v98);
  }

  *(v98 + 2) = v102 + 1;
  v103 = &v98[24 * v102];
  *(v103 + 4) = sub_10003E044;
  *(v103 + 5) = v97;
  v103[48] = 1;
  *&v81[v89] = v98;
  swift_endAccess();

  v104 = swift_allocObject();
  *(v104 + 16) = v92;
  swift_beginAccess();
  v105 = *&v81[v89];
  v106 = v92;

  v107 = swift_isUniquelyReferenced_nonNull_native();
  *&v81[v89] = v105;
  if ((v107 & 1) == 0)
  {
    v105 = sub_100255160(0, *(v105 + 2) + 1, 1, v105);
    *&v81[v89] = v105;
  }

  v109 = *(v105 + 2);
  v108 = *(v105 + 3);
  if (v109 >= v108 >> 1)
  {
    v105 = sub_100255160((v108 > 1), v109 + 1, 1, v105);
  }

  *(v105 + 2) = v109 + 1;
  v110 = &v105[24 * v109];
  *(v110 + 4) = sub_10003E04C;
  *(v110 + 5) = v104;
  v110[48] = 2;
  *&v81[v89] = v105;
  swift_endAccess();

  return v91;
}