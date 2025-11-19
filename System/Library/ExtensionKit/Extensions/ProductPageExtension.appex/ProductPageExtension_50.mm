uint64_t sub_1005A16EC(uint64_t a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  type metadata accessor for InteractiveSectionBackgroundScrollCoordinator();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC20ProductPageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
  v23 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 64) = a6;
  swift_unknownObjectWeakAssign();
  *(v21 + 88) = a8;
  *(v21 + 96) = a12;
  *(v21 + 80) = a9;
  swift_unknownObjectRetain();
  *(v21 + 56) = sub_100761ADC();
  return v21;
}

void sub_1005A1814(void (**a1)(char *, uint64_t), double a2)
{
  v3 = v2;
  v96 = a1;
  v5 = sub_10000A5D4(&unk_100957590);
  __chkstk_darwin(v5 - 8);
  v94 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v93 = v84 - v8;
  v9 = sub_10075E11C();
  v103 = *(v9 - 8);
  __chkstk_darwin(v9);
  v98 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = v84 - v12;
  __chkstk_darwin(v13);
  v99 = v84 - v14;
  __chkstk_darwin(v15);
  v100 = v84 - v16;
  __chkstk_darwin(v17);
  v101 = v84 - v18;
  v19 = sub_1007621EC();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v91 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v97 = v84 - v23;
  __chkstk_darwin(v24);
  v102 = v84 - v25;
  __chkstk_darwin(v26);
  v28 = v84 - v27;
  __chkstk_darwin(v29);
  v31 = v84 - v30;
  v32 = *(v2 + 16);
  v33 = *(v2 + 88);
  v104 = v3;
  v34 = *(v3 + 96);
  ObjectType = swift_getObjectType();
  if (v32 >= sub_100761A9C())
  {
    return;
  }

  v90 = v32;
  sub_100761A6C();
  (*(v20 + 104))(v28, enum case for ShelfBackground.interactive(_:), v19);
  v36 = sub_1007621DC();
  v92 = v20;
  v37 = *(v20 + 8);
  v37(v28, v19);
  v88 = v20 + 8;
  v87 = v37;
  v37(v31, v19);
  if ((v36 & 1) == 0)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v39 = Strong;
  v84[3] = ObjectType;
  v84[2] = v33;
  v84[1] = v34;
  v85 = v19;
  v40 = *(v104 + 32);

  v105[0] = sub_10043FC7C(v41);
  sub_1005A0618(v105);
  v42 = v105[0];
  v89 = v9;
  if (v105[0] < 0 || (v105[0] & 0x4000000000000000) != 0)
  {
LABEL_41:
    v43 = sub_10077158C();
  }

  else
  {
    v43 = *(v105[0] + 16);
  }

  v86 = v39;
  if (v43)
  {
    if (v43 < 1)
    {
      goto LABEL_43;
    }

    v44 = 0;
    v96 = (v103 + 8);
    v84[0] = v103 + 32;
    v45 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v39 = sub_10077149C();
      }

      else
      {
        v39 = *(v42 + 8 * v44 + 32);
        swift_unknownObjectRetain();
      }

      if ([v39 representedElementCategory])
      {
        goto LABEL_21;
      }

      [v39 frame];
      v46 = CGRectGetMinX(v106) - *(v104 + 64) - a2;
      [v39 frame];
      v47 = CGRectGetMaxX(v107) - a2;
      if (v46 > v47)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v46 > v40 || v40 >= v47)
      {
        goto LABEL_21;
      }

      v48 = v45;
      v49 = [v39 indexPath];
      v50 = v101;
      sub_10075E06C();

      v51 = sub_10075E09C();
      (*v96)(v50, v89);
      v52 = *(v104 + 56);
      if (!v52)
      {
        goto LABEL_40;
      }

      v45 = v48;
      if (v51 == 0x8000000000000000 && v52 == -1)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);

        __break(1u);
        return;
      }

      if (v51 % v52)
      {
LABEL_21:
        swift_unknownObjectRelease();
      }

      else
      {
        v53 = [v39 indexPath];
        sub_10075E06C();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_10049DE8C(0, v48[2] + 1, 1, v48);
        }

        v55 = v45[2];
        v54 = v45[3];
        if (v55 >= v54 >> 1)
        {
          v45 = sub_10049DE8C(v54 > 1, v55 + 1, 1, v45);
        }

        swift_unknownObjectRelease();
        v45[2] = v55 + 1;
        (*(v103 + 32))(v45 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v55, v100, v89);
      }

      if (v43 == ++v44)
      {
        goto LABEL_30;
      }
    }
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_30:

  if (v45[2])
  {
    v56 = v103;
    v57 = v45 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v58 = v95;
    v59 = v89;
    v101 = *(v103 + 16);
    (v101)(v95, v57, v89);

    v60 = v99;
    (*(v56 + 32))(v99, v58, v59);
    if (__OFADD__(sub_10075E09C(), *(v104 + 56)))
    {
      goto LABEL_44;
    }

    sub_10075E08C();
    sub_100761A2C();
    v61 = v97;
    sub_100761A2C();
    v62 = v92;
    v63 = *(v92 + 16);
    v64 = v91;
    v65 = v85;
    v63(v91, v61, v85);
    LODWORD(v62) = (*(v62 + 88))(v64, v65);
    v66 = enum case for ShelfBackground.none(_:);
    v87(v64, v65);
    v67 = 1.0;
    if (v62 != v66)
    {
      v68 = *(v104 + 64);
      v69 = [v86 collectionViewLayout];
      isa = sub_10075E02C().super.isa;
      v71 = [v69 layoutAttributesForItemAtIndexPath:isa];

      v60 = v99;
      if (v71)
      {
        [v71 frame];
        v72 = CGRectGetMinX(v108) - v40 - a2;
        [v71 frame];
        Width = CGRectGetWidth(v109);

        v67 = (v72 + v68 + Width) / (v68 + Width);
        if (v67 >= 1.0)
        {
          v67 = 1.0;
        }
      }
    }

    v74 = v93;
    v75 = v85;
    v63(v93, v102, v85);
    v76 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
    v77 = v89;
    (v101)(v74 + v76[6], v60, v89);
    v78 = v97;
    v63((v74 + v76[7]), v97, v75);
    *(v74 + v76[5]) = v67;
    (*(*(v76 - 1) + 56))(v74, 0, 1, v76);
    v79 = OBJC_IVAR____TtC20ProductPageExtension45InteractiveSectionBackgroundScrollCoordinator_currentState;
    v80 = v104;
    swift_beginAccess();
    v81 = v94;
    sub_100016E2C(v80 + v79, v94, &unk_100957590);
    swift_beginAccess();
    sub_100440F04(v74, v80 + v79);
    swift_endAccess();
    sub_10059F7D8(v81);

    sub_10000CFBC(v81, &unk_100957590);
    sub_10000CFBC(v74, &unk_100957590);
    v82 = v87;
    v87(v78, v75);
    v82(v102, v75);
    v83 = *(v103 + 8);
    v83(v98, v77);
    v83(v60, v77);
  }

  else
  {
  }
}

uint64_t sub_1005A23B8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1005A2400()
{
  v1 = v0;
  sub_1007621BC();
  sub_10076260C();

  sub_1007621AC();
  if (v2)
  {
    v3 = sub_10076045C();
  }

  else
  {
    v3 = 0;
  }

  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension33ProductPageLinkCollectionViewCell_iconImage] = v3;
  v5 = v3;

  sub_10032280C();

  return [v1 setNeedsLayout];
}

unint64_t sub_1005A24DC()
{
  result = qword_100950AC8;
  if (!qword_100950AC8)
  {
    type metadata accessor for SmallLockupCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950AC8);
  }

  return result;
}

double sub_1005A2534()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallLockupView();
  v4 = sub_10076462C();
  sub_10076460C();
  sub_10076C2FC();
  (*(v1 + 8))(v3, v0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_100763ADC();
  v6 = sub_10000A61C(v5, qword_10099DDA0);
  swift_getObjectType();
  sub_100262AD0(v6, v4);
  v8 = v7;
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1005A26CC()
{
  sub_10000A5D4(&qword_1009552D8);
  sub_10076F63C();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F3C();

  sub_100761F8C();
  sub_100761F9C();

  sub_100761F8C();
  sub_100761F7C();

  v0 = sub_100769A9C();
  sub_10076F63C();
  if (v3[0])
  {
    v1 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v0 = 0;
    v1 = 0;
    v3[1] = 0;
    v3[2] = 0;
  }

  v3[3] = v0;
  v3[4] = v1;
  sub_100761F8C();
  sub_100761F2C();

  sub_10000A5D4(&qword_1009552E0);
  sub_10076F63C();
  sub_10076FA0C();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10000CFBC(v4, &qword_1009538F8);
  return sub_10000CFBC(v3, &qword_1009538F0);
}

uint64_t sub_1005A28C4(unint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  v29 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076BEDC();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v31 = *(v2 + v9);
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v10)
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a1 & 0xC000000000000001;
    v11 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 < 0)
    {
      v12 = v31;
    }

    else
    {
      v12 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v20[1] = v12;
    v21 = (v6 + 8);
    v13 = 4;
    v24 = v31 & 0xC000000000000001;
    v25 = v31 >> 62;
    v22 = v10;
    v23 = a1;
    do
    {
      v6 = v13 - 4;
      if (v27)
      {
        sub_10077149C();
        a1 = v13 - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v6 >= *(v26 + 16))
        {
          goto LABEL_28;
        }

        a1 = v13 - 3;
        if (__OFADD__(v6, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v10 = sub_10077158C();
          goto LABEL_3;
        }
      }

      if (v25)
      {
        if (v6 == sub_10077158C())
        {
LABEL_25:
        }
      }

      else if (v6 == *(v11 + 16))
      {
        goto LABEL_25;
      }

      if (v24)
      {
        v15 = sub_10077149C();
      }

      else
      {
        if (v6 >= *(v11 + 16))
        {
          goto LABEL_29;
        }

        v15 = *(v31 + 8 * v13);
      }

      v16 = v15;
      sub_10076BEEC();
      v17 = sub_10076BE9C();
      (*v21)(v8, v28);
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      v18 = v16;
      [v18 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();
      [v18 setContentMode:v17];

      sub_10075FD2C();
      sub_10000D7F8();
      sub_100760B8C();

      ++v13;
      v14 = a1 == v22;
      a1 = v23;
    }

    while (!v14);
  }
}

uint64_t sub_1005A2D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000A5D4(&qword_10094B7E8);
  __chkstk_darwin(v3);
  v4 = sub_10000A5D4(&qword_10095E3B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  sub_1005A3CB8(v1 + v10, v9);
  v11 = sub_10000A5D4(&unk_10094B8B0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1005A3D28(v9);
  sub_10075FD2C();
  sub_10076D4CC();
  sub_10018E6DC();
  sub_10076E18C();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_1005A3C48(v6, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1005A2F84()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_10095E3B8);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_10000A5D4(&unk_10094B8B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews;
  v24 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks;
  v10 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  v11 = (v6 + 32);
  v12 = (v6 + 56);
  while (1)
  {
    v13 = *&v1[v9];
    result = v13 >> 62 ? sub_10077158C() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = *&v1[v24];
    if (result == v15)
    {
      return result;
    }

    v16 = *&v1[v9];
    if (!(v16 >> 62))
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < v15)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    if (sub_10077158C() < *&v1[v24])
    {
LABEL_8:
      sub_1005A2D2C(v8);
      sub_10076E15C();
      (*v11)(v4, v8, v5);
      (*v12)(v4, 0, 1, v5);
      swift_beginAccess();
      sub_1005A3C48(v4, &v1[v10]);
      swift_endAccess();
      v17 = v25;
      swift_beginAccess();
      v18 = v17;
      sub_10077019C();
      if (*((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23[1] = *((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10077021C();
      }

      sub_10077025C();
      swift_endAccess();
      [v1 addSubview:v18];
    }

    else
    {
LABEL_13:
      swift_beginAccess();
      v19 = *&v1[v9];
      if (v19 >> 62)
      {
        if (sub_10077158C())
        {
          goto LABEL_15;
        }

LABEL_2:
        swift_endAccess();
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_2;
        }

LABEL_15:
        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *&v1[v9] = v19;
        if (v19 >> 62 || (result & 1) == 0)
        {
          result = sub_1004BE250(v19);
          v19 = result;
        }

        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          __break(1u);
          return result;
        }

        v21 = v20 - 1;
        v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 8 * v21 + 0x20);
        *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) = v21;
        *&v1[v9] = v19;
        swift_endAccess();
        v25 = v22;
        sub_1005A2D2C(v8);
        sub_10076E17C();
        (*v11)(v4, v8, v5);
        (*v12)(v4, 0, 1, v5);
        swift_beginAccess();
        sub_1005A3C48(v4, &v1[v10]);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_1005A3394@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076D8DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D8AC();
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_numberOfArtworks);
  if (v9 < 2)
  {
    a1[3] = v5;
    a1[4] = &protocol witness table for HorizontalStack;
    v10 = sub_10000DB7C(a1);
    (*(v6 + 16))(v10, v8, v5);
    return (*(v6 + 8))(v8, v5);
  }

  v11 = OBJC_IVAR____TtC20ProductPageExtension32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = v12 >> 62;
  if (v12 >> 62)
  {
    goto LABEL_30;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v15)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  while (1)
  {
    if ((v12 & 0xC000000000000001) == 0 || v15 == 0)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      sub_10075FD2C();
      swift_bridgeObjectRetain_n();
      v17 = 0;
      do
      {
        v18 = v17 + 1;
        sub_10077147C(v17);
        v17 = v18;
      }

      while (v15 != v18);
    }

    if (v13)
    {
      break;
    }

    v33 = v12 & 0xFFFFFFFFFFFFFF8;
    v19 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = v15;
    v20 = v15 <= 0;
    if (!v15)
    {
      goto LABEL_26;
    }

LABEL_19:
    v12 = 0;
    if (v20)
    {
      v27 = v13;
    }

    else
    {
      v27 = v15;
    }

    v9 = v27 - v13;
    v13 = v19 + 8 * v13;
    while (v9 != v12)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_29;
      }

      v28 = *(v13 + 8 * v12);
      sub_1005A37D4(v12, v28, v8, ObjectType);

      if (v21 == ++v12)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v30 = sub_10077158C();
    result = sub_10077158C();
    if (result < 0)
    {
      goto LABEL_39;
    }

    if (v30 >= v9)
    {
      v31 = v9;
    }

    else
    {
      v31 = v30;
    }

    if (v30 >= 0)
    {
      v15 = v31;
    }

    else
    {
      v15 = v9;
    }

    result = sub_10077158C();
    if (result < v15)
    {
      goto LABEL_38;
    }
  }

  v33 = sub_10077159C();
  v23 = v22;
  v13 = v24;
  v26 = v25;

  v19 = v23;
  v15 = v26 >> 1;
  v21 = v15 - v13;
  v20 = v15 <= v13;
  if (v15 != v13)
  {
    goto LABEL_19;
  }

LABEL_26:
  swift_unknownObjectRelease();
  v34[3] = v5;
  v34[4] = &protocol witness table for HorizontalStack;
  v29 = sub_10000DB7C(v34);
  (*(v6 + 16))(v29, v8, v5);
  a1[3] = sub_10076E04C();
  a1[4] = &protocol witness table for Margins;
  sub_10000DB7C(a1);
  sub_10076E03C();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1005A37D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  sub_10075FD2C();
  sub_10076D28C();
  sub_10000CF78(v9, v9[3]);
  sub_10076D2DC();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  sub_10076D89C();

  sub_10000CD74(v8);
  return sub_10000CD74(v9);
}

id sub_1005A397C@<X0>(void *a1@<X8>)
{
  sub_10075FD2C();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for CarouselItemLockupCollectionView()
{
  result = qword_10095E3A0;
  if (!qword_10095E3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005A3A8C()
{
  sub_1005A3B3C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005A3B3C()
{
  if (!qword_10095E3B0)
  {
    sub_10000CE78(&unk_10094B8B0);
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_10095E3B0);
    }
  }
}

double sub_1005A3BA0()
{
  sub_1005A3394(v3);
  sub_10000CF78(v3, v3[3]);
  sub_10076E0FC();
  v1 = v0;
  sub_10000CD74(v3);
  return v1;
}

uint64_t sub_1005A3C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10095E3B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A3CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10095E3B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A3D28(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10095E3B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005A3DA0()
{
  if (*(v0 + 16) >= 1)
  {
    return sub_10076D86C();
  }

  return result;
}

char *sub_1005A3DFC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentDidChangeHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{a1, a2, a3, a4}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentedControl] = v10;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SegmentedControlView();
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = *&v11[OBJC_IVAR____TtC20ProductPageExtension20SegmentedControlView_segmentedControl];
  v13 = v11;
  [v13 addSubview:v12];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v13;
}

id sub_1005A41B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedControlView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1005A425C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_primaryLabel;
  if (qword_100940ED0 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v10, qword_1009A1A68);
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  v17 = type metadata accessor for DynamicTypeLinkedLabel();
  v18 = objc_allocWithZone(v17);
  *&v4[v14] = sub_10050BDFC(v13, 0, 0);
  v19 = OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_secondaryLabel;
  if (qword_100940ED8 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v10, qword_1009A1A80);
  v16(v13, v20, v10);
  v21 = objc_allocWithZone(v17);
  *&v4[v19] = sub_10050BDFC(v13, 0, 0);
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v27 = OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_primaryLabel;
  v28 = *&v26[OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_primaryLabel];
  sub_1000325F0();
  v29 = v28;
  v30 = sub_100770D1C();
  [v29 setTextColor:v30];

  [v26 addSubview:*&v26[v27]];
  v31 = OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_secondaryLabel;
  v32 = *&v26[OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_secondaryLabel];
  v33 = sub_100770D1C();
  [v32 setTextColor:v33];

  [v26 addSubview:*&v26[v31]];
  return v26;
}

uint64_t sub_1005A45A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_primaryLabel];
  v15 = type metadata accessor for DynamicTypeLinkedLabel();
  v16 = &protocol witness table for UILabel;
  v13[4] = &protocol witness table for UILabel;
  v14[0] = v8;
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_secondaryLabel];
  v13[3] = v15;
  v13[0] = v9;
  v10 = v8;
  v11 = v9;
  sub_1005A4734(v14, v13, v17);
  sub_10000CD74(v13);
  sub_10000CD74(v14);
  sub_10000CF78(v17, v17[3]);
  sub_10076422C();
  sub_10076DFCC();
  (*(v4 + 8))(v7, v3);
  return sub_10000CD74(v17);
}

uint64_t sub_1005A4734@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v90 = a2;
  v93 = a3;
  v89 = sub_1007653CC();
  v4 = *(v89 - 8);
  __chkstk_darwin(v89);
  v102 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10076D1AC();
  v113 = *(v110 - 8);
  __chkstk_darwin(v110);
  v101 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007653EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076540C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_10094F2A8);
  v15 = *(sub_10076541C() - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v91 = *(v15 + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100783C60;
  v92 = v17;
  v106 = v17 + v16;
  v19 = a1[3];
  v18 = a1[4];
  v20 = sub_10000CF78(a1, v19);
  v122 = v19;
  v21 = *(v18 + 8);
  v22 = v12;
  v23 = v14;
  v123 = v21;
  v24 = sub_10000DB7C(&v121);
  (*(*(v19 - 8) + 16))(v24, v20, v19);
  v25 = *(v22 + 104);
  v109 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v111 = v11;
  v108 = v22 + 104;
  v107 = v25;
  v25(v14);
  v112 = v8;
  v26 = v8 + 104;
  v27 = *(v8 + 104);
  v28 = v10;
  v105 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v88 = v7;
  v104 = v26;
  v103 = v27;
  v27(v10);
  if (qword_100940ED0 != -1)
  {
    swift_once();
  }

  v29 = sub_10076D3DC();
  v30 = sub_10000A61C(v29, qword_1009A1A68);
  v31 = *(v29 - 8);
  v32 = v101;
  v86 = *(v31 + 16);
  v85 = v31 + 16;
  v86(v101, v30, v29);
  v33 = v113;
  v34 = *(v113 + 104);
  v84 = enum case for FontSource.useCase(_:);
  v35 = v110;
  v83 = v113 + 104;
  v82 = v34;
  v34(v32);
  v81 = sub_10076D9AC();
  v119 = v81;
  v120 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v118);
  *(&v116 + 1) = v35;
  v117 = &protocol witness table for FontSource;
  v36 = sub_10000DB7C(&v115);
  v37 = *(v33 + 16);
  v80 = v33 + 16;
  v79 = v37;
  v37(v36, v32, v35);
  sub_10076D9BC();
  v38 = *(v33 + 8);
  v113 = v33 + 8;
  v78 = v38;
  v38(v32, v35);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v39 = sub_10000A5D4(&unk_100959500);
  v40 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v41 = v40 + *(v4 + 72);
  v75 = *(v4 + 80);
  v76 = v39;
  v74 = v41;
  v42 = swift_allocObject();
  v73 = xmmword_100783DD0;
  *(v42 + 16) = xmmword_100783DD0;
  v77 = v40;
  sub_1007653AC();
  v114 = v42;
  v43 = sub_1005A5658(&qword_10094F2B0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v44 = sub_10000A5D4(&qword_100959510);
  v45 = sub_1004ACA24();
  v46 = v102;
  v98 = v44;
  v96 = v45;
  v47 = v89;
  v100 = v43;
  sub_1007712CC();
  sub_1007653FC();
  v48 = *(v4 + 8);
  v94 = v4 + 8;
  v99 = v48;
  v48(v46, v47);
  sub_1000F00E0(&v115);
  v49 = v112 + 8;
  v50 = v88;
  v97 = *(v112 + 8);
  v97(v28, v88);
  v51 = *(v22 + 8);
  v52 = v22 + 8;
  v53 = v111;
  v95 = v51;
  v87 = v52;
  v51(v23, v111);
  sub_10000CD74(&v118);
  sub_10000CD74(&v121);
  v54 = v47;
  v55 = v23;
  v56 = v90[3];
  v57 = v90[4];
  v58 = sub_10000CF78(v90, v56);
  v122 = v56;
  v123 = *(v57 + 8);
  v59 = sub_10000DB7C(&v121);
  (*(*(v56 - 8) + 16))(v59, v58, v56);
  v107(v55, v109, v53);
  v103(v28, v105, v50);
  v60 = v28;
  if (qword_100940ED8 != -1)
  {
    swift_once();
  }

  v61 = sub_10000A61C(v29, qword_1009A1A80);
  v62 = v101;
  v86(v101, v61, v29);
  v63 = v110;
  v82(v62, v84, v110);
  v119 = v81;
  v120 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v118);
  *(&v116 + 1) = v63;
  v117 = &protocol witness table for FontSource;
  v64 = sub_10000DB7C(&v115);
  v79(v64, v62, v63);
  sub_10076D9BC();
  v78(v62, v63);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v65 = swift_allocObject();
  *(v65 + 16) = v73;
  sub_1007653AC();
  v114 = v65;
  v66 = v102;
  sub_1007712CC();
  sub_1007653FC();
  v99(v66, v54);
  sub_1000F00E0(&v115);
  v97(v60, v50);
  v67 = v111;
  v112 = v49;
  v95(v55, v111);
  sub_10000CD74(&v118);
  sub_10000CD74(&v121);
  v68 = sub_10076DDDC();
  swift_allocObject();
  v69 = sub_10076DDBC();
  v122 = v68;
  v123 = &protocol witness table for LayoutViewPlaceholder;
  v121 = v69;
  v103(v60, v105, v50);
  v119 = &type metadata for CGFloat;
  v120 = &protocol witness table for CGFloat;
  v117 = 0;
  v118 = 0x4032000000000000;
  v115 = 0u;
  v116 = 0u;
  v114 = _swiftEmptyArrayStorage;
  sub_1007712CC();
  v107(v55, v109, v67);
  sub_1007653FC();
  v95(v55, v67);
  v99(v66, v54);
  sub_1000F00E0(&v115);
  v97(v60, v50);
  sub_10000CD74(&v118);
  sub_10000CD74(&v121);
  v70 = sub_10076543C();
  v71 = v93;
  v93[3] = v70;
  v71[4] = sub_1005A5658(&unk_10094F2C0, &type metadata accessor for _VerticalFlowLayout);
  v71[5] = sub_1005A5658(&unk_10095E430, &type metadata accessor for _VerticalFlowLayout);
  sub_10000DB7C(v71);
  return sub_1007653DC();
}

double sub_1005A5450()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_primaryLabel);
  v10 = type metadata accessor for DynamicTypeLinkedLabel();
  v11 = &protocol witness table for UILabel;
  v8[4] = &protocol witness table for UILabel;
  v9[0] = v1;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_secondaryLabel);
  v8[3] = v10;
  v8[0] = v2;
  v3 = v1;
  v4 = v2;
  sub_1005A4734(v9, v8, v12);
  sub_10000CD74(v8);
  sub_10000CD74(v9);
  sub_10000CF78(v12, v12[3]);
  sub_10076D2AC();
  v6 = v5;
  sub_10000CD74(v12);
  return v6;
}

uint64_t sub_1005A5658(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005A56A0()
{
  v1 = sub_10076D3DC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_primaryLabel;
  if (qword_100940ED0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A61C(v1, qword_1009A1A68);
  v7 = *(v2 + 16);
  v7(v4, v6, v1);
  v8 = type metadata accessor for DynamicTypeLinkedLabel();
  v9 = objc_allocWithZone(v8);
  *(v0 + v5) = sub_10050BDFC(v4, 0, 0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension24SearchResultsMessageView_secondaryLabel;
  if (qword_100940ED8 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v1, qword_1009A1A80);
  v7(v4, v11, v1);
  v12 = objc_allocWithZone(v8);
  *(v0 + v10) = sub_10050BDFC(v4, 0, 0);
  sub_10077156C();
  __break(1u);
}

void sub_1005A589C()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007706CC();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_7:
      JUScreenClassGetLandscapeWidth();
      return;
    }

    goto LABEL_10;
  }

  if (v4 >= v2)
  {
    if (v2 == 744.0)
    {
      return;
    }

    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

LABEL_10:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_7;
    }
  }
}

id sub_1005A5A7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnapshotPageTraitEnvironment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void UIViewController.pageContainerSize.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

id UIViewController.snapshotPageTraitEnvironment.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = type metadata accessor for SnapshotPageTraitEnvironment();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v8 = v2;
  *(v8 + 1) = v4;
  *&v7[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, "init");
}

id sub_1005A5D60()
{
  type metadata accessor for BundleImage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10095E478 = result;
  return result;
}

id sub_1005A5DB8(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100940938 != -1)
  {
    swift_once();
  }

  v6 = qword_10095E478;
  v7 = a3;
  v8 = sub_10076FF6C();
  v9 = [objc_opt_self() imageNamed:v8 inBundle:v6 withConfiguration:v7];

  result = v9;
  if (!v9)
  {
    if (qword_1009412D8 != -1)
    {
      swift_once();
    }

    v11 = sub_10076FD4C();
    sub_10000A61C(v11, qword_1009A25D0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    v15 = &type metadata for String;
    v13 = a1;
    v14 = a2;

    sub_10076F32C();
    sub_10000CFBC(&v13, &unk_1009434C0);
    sub_10076FBEC();

    v12 = objc_allocWithZone(UIImage);
    return [v12 init];
  }

  return result;
}

id sub_1005A6008(uint64_t a1, objc_class *a2)
{
  v22 = a2;
  v2 = sub_10076BD9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_10075DB7C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C01C();
  sub_10076BD8C();
  (*(v3 + 8))(v5, v2);
  sub_10075DB6C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000CFBC(v8, &unk_1009435D0);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = sub_10075DB4C();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      if (sub_10076BDFC())
      {
        v17.value.super.super.isa = v22;
        v18 = sub_10076BDEC(v17);
        v19 = sub_1005A5DB8(v16, v15, v18);

        (*(v10 + 8))(v12, v9);
        return v19;
      }

      (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  return 0;
}

UIImage *_sSo7UIImageC20ProductPageExtensionE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(void *a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  v11.width = 1.0;
  v11.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, v4);
  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [a1 CGColor];
    CGContextSetFillColorWithColor(v7, v8);

    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = 1.0;
    v12.size.height = 1.0;
    CGContextFillRect(v7, v12);
  }

  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v9;
}

uint64_t sub_1005A6410(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v48 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_10076F08C();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10076F0CC();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076BF6C();
  __chkstk_darwin(v11 - 8);
  v45 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v14 = _swiftEmptyArrayStorage;
    v37 = ObjectType;
    if (!i)
    {
      goto LABEL_11;
    }

    aBlock[0] = _swiftEmptyArrayStorage;
    result = sub_1007714EC();
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = sub_10077149C();
      }

      else
      {
        v17 = a1[v16 + 4];
      }

      ++v16;
      v18 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackCategoryButton());

      sub_100049F48(v17, a3, a4);

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
    }

    while (i != v16);
    v14 = aBlock[0];
LABEL_11:
    v36 = v8;
    v19 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews;
    ObjectType = v43;
    *&v43[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews] = v14;

    v20 = [ObjectType traitCollection];
    v21 = [v20 preferredContentSizeCategory];

    LOBYTE(v20) = sub_10077084C();
    sub_1005A75A0(v20 & 1);
    v8 = *&ObjectType[v19];
    if (v8 >> 62)
    {
      a3 = sub_10077158C();
    }

    else
    {
      a3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!a3)
    {
LABEL_25:

      v27 = v43;
      [v43 setNeedsLayout];
      [v27 layoutIfNeeded];
      sub_100016F40(0, &qword_1009471F0);
      v28 = sub_10077068C();
      v29 = swift_allocObject();
      v30 = v37;
      *(v29 + 16) = v27;
      *(v29 + 24) = v30;
      aBlock[4] = sub_1005A7EB0;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_10089A928;
      v31 = _Block_copy(aBlock);
      v32 = v27;

      v33 = v38;
      sub_10076F0AC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1005A7ED0(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000A5D4(&unk_10094E1C0);
      sub_1000852B8();
      v34 = v40;
      v35 = v36;
      sub_1007712CC();
      sub_10077069C();
      _Block_release(v31);

      (*(v42 + 8))(v34, v35);
      return (*(v39 + 8))(v33, v41);
    }

    a4 = 0;
    v46 = v8 & 0xFFFFFFFFFFFFFF8;
    v47 = v8 & 0xC000000000000001;
    v22 = &qword_100944000;
    v44 = v8;
    while (1)
    {
      if (v47)
      {
        v23 = sub_10077149C();
      }

      else
      {
        if (a4 >= *(v46 + 16))
        {
          goto LABEL_27;
        }

        v23 = *(v8 + 8 * a4 + 32);
      }

      ObjectType = v23;
      v24 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      sub_10076861C();
      sub_10076BFCC();

      sub_10076861C();
      v25 = sub_10076C00C();

      if (v25)
      {
        a1 = v22;
        v26 = *&ObjectType[v22[6]];
        sub_10076BF7C();
        sub_10075FCCC();
        [v26 setContentMode:sub_10076BDBC()];
        sub_100764ADC();
        sub_10075FD0C();
        if (!sub_10076BE1C())
        {
          sub_100016F40(0, &qword_100942F10);
          sub_100770D5C();
        }

        sub_10075FB8C();

        v22 = a1;
        v8 = v44;
      }

      sub_10075FD2C();
      sub_1005A7ED0(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760B8C();

      ++a4;
      if (v24 == a3)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005A6B00(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v15 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v5 = sub_10077149C();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = type metadata accessor for ArcadeDownloadPackCategoryButton();
      v20.receiver = v6;
      v20.super_class = v8;
      v9 = objc_msgSendSuper2(&v20, "isSelected");
      v19.receiver = v6;
      v19.super_class = v8;
      objc_msgSendSuper2(&v19, "setEnabled:", (v9 | a1) & 1);
      v10 = *&v6[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_titleLabel];
      v18.receiver = v6;
      v18.super_class = v8;
      if (objc_msgSendSuper2(&v18, "isEnabled"))
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.4;
      }

      [v10 setAlpha:{v11, v15}];
      v12 = *&v6[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackCategoryButton_artworkView];
      v17.receiver = v6;
      v17.super_class = v8;
      if (objc_msgSendSuper2(&v17, "isEnabled"))
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.4;
      }

      [v12 setAlpha:v13];

      ++v4;
      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

uint64_t sub_1005A6CB4(uint64_t a1, void *a2)
{
  v19 = a1;
  v20 = a2;
  v3 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_10076F7FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    v12 = 0;
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    v22 = v10 & 0xC000000000000001;
    v13 = (v7 + 48);
    v17 = (v7 + 8);
    v18 = (v7 + 32);
    while (1)
    {
      if (v22)
      {
        v14 = sub_10077149C();
      }

      else
      {
        if (v12 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v7 = v14;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_1007685DC();
      if ((*v13)(v5, 1, v6) == 1)
      {

        sub_100269504(v5);
      }

      else
      {
        (*v18)(v9, v5, v6);
        [v7 bounds];
        [v20 convertRect:v7 fromCoordinateSpace:?];
        sub_1007660EC();

        (*v17)(v9, v6);
      }

      ++v12;
      if (v15 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

char *sub_1005A6F3C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_firstColumn;
  *&v4[v10] = [objc_allocWithZone(UIStackView) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn;
  v12 = [objc_allocWithZone(UIStackView) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews] = _swiftEmptyArrayStorage;
  sub_10000A5D4(&unk_100942870);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100785D70;
  v14 = *&v4[v10];
  *(v13 + 32) = v14;
  *(v13 + 40) = v12;
  v15 = objc_allocWithZone(UIStackView);
  sub_100016F40(0, &qword_1009441F0);
  v16 = v14;
  v17 = v12;
  isa = sub_1007701AC().super.isa;

  v19 = [v15 initWithArrangedSubviews:isa];

  *&v4[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_contentView] = v19;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v41 = ObjectType;
  v20 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  sub_10000A5D4(&unk_100945BF0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100783DD0;
  v22 = sub_10076E88C();
  *(v21 + 32) = v22;
  *(v21 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = ObjectType;
  v42[0] = v20;
  v23 = v20;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v42);
  v24 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_firstColumn;
  [*&v23[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_firstColumn] setAxis:1];
  [*&v23[v24] setSpacing:50.0];
  [*&v23[v24] setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn;
  [*&v23[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn] setAxis:1];
  [*&v23[v25] setSpacing:50.0];
  [*&v23[v25] setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_contentView;
  [*&v23[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_contentView] setDistribution:1];
  [*&v23[v26] setAlignment:1];
  [*&v23[v26] setAxis:0];
  [*&v23[v26] setSpacing:8.0];
  [v23 addSubview:*&v23[v26]];
  [*&v23[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100786040;
  v29 = [*&v23[v26] leftAnchor];
  v30 = [v23 leftAnchor];

  v31 = [v29 constraintEqualToAnchor:v30];
  *(v28 + 32) = v31;
  v32 = [*&v23[v26] rightAnchor];
  v33 = [v23 rightAnchor];

  v34 = [v32 constraintEqualToAnchor:v33];
  *(v28 + 40) = v34;
  *(v28 + 48) = sub_1005A7480();
  v35 = [*&v23[v26] bottomAnchor];
  v36 = [v23 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v28 + 56) = v37;
  sub_100016F40(0, &qword_100945D78);
  v38 = sub_1007701AC().super.isa;

  [v27 activateConstraints:v38];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100783DD0;
  *(v39 + 32) = v22;
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = v41;
  v42[0] = v23;
  sub_100770C5C();
  swift_unknownObjectRelease();

  sub_10000CD74(v42);
  return v23;
}

id sub_1005A7480()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_contentView] topAnchor];
    v5 = [v0 topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:150.0];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1005A75A0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn);
  [v2 setHidden:a1 & 1];
  v29 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_firstColumn);
  v4 = [v3 arrangedSubviews];
  sub_100016F40(0, &qword_1009441F0);
  v5 = sub_1007701BC();

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v11 = [v2 arrangedSubviews];
  v12 = sub_1007701BC();

  if (v12 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_10077158C())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = sub_10077149C();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [v15 removeFromSuperview];

      ++v14;
      if (v17 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v18 = *(v29 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews);
  if (a1)
  {
    if (v18 >> 62)
    {
      goto LABEL_63;
    }

    for (k = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_10077158C())
    {
      v31 = v3;

      if (!k)
      {
        break;
      }

      v3 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v20 = sub_10077149C();
        }

        else
        {
          if (v3 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v20 = *(v18 + 8 * v3 + 32);
        }

        v21 = v20;
        v22 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        [v31 addArrangedSubview:v20];

        ++v3;
        if (v22 == k)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }

LABEL_53:
  }

  else
  {
    if (v18 >> 62)
    {
      v23 = sub_10077158C();
    }

    else
    {
      v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23)
    {
      v24 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v25 = sub_10077149C();
        }

        else
        {
          if (v24 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v25 = *(v18 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_60;
        }

        if (v24)
        {
          v28 = v2;
        }

        else
        {
          v28 = v3;
        }

        [v28 addArrangedSubview:v26];

        ++v24;
      }

      while (v27 != v23);
    }
  }
}

uint64_t sub_1005A79A8(char *a1)
{
  v2 = sub_1005A7480();
  [v2 setConstant:0.0];

  [*&a1[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_firstColumn] setSpacing:8.0];
  [*&a1[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn] setSpacing:8.0];
  sub_100016F40(0, &qword_1009441F0);
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  sub_100770C9C();
}

id sub_1005A7B60()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_10077084C() & 1;
  result = [*&v0[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn] isHidden];
  if (v3 != result)
  {
    sub_1005A75A0(v3);
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_contentView] layoutIfNeeded];
    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews];
    if (v5 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
    {

      if (!i)
      {
        break;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_10077149C();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setNeedsLayout];
        [v9 invalidateIntrinsicContentSize];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return result;
}

double sub_1005A7DFC()
{
  [*(*v0 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_contentView) systemLayoutSizeFittingSize:?];
  v2 = v1;
  v3 = sub_1005A7480();
  [v3 constant];

  return v2;
}

uint64_t sub_1005A7E78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005A7EB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005A7ED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005A7F18()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1005A7F50()
{
  v1 = [*(v0 + 16) superview];
  [v1 invalidateIntrinsicContentSize];
}

void sub_1005A7FA8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_firstColumn;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_secondColumn;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension34ArcadeDownloadPackCategoryListView_categoryViews) = _swiftEmptyArrayStorage;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1005A806C(uint64_t a1)
{
  v3 = sub_10076D3DC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v38[-v7];
  v9 = sub_10000A5D4(&qword_10095C900);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v38[-v11];
  v13 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v13 - 8);
  v42 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v38[-v16];
  __chkstk_darwin(v18);
  v20 = &v38[-v19];
  __chkstk_darwin(v21);
  v23 = &v38[-v22];
  v43 = v1;
  v41 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel];
  sub_1007625CC();
  v24 = *(v10 + 56);
  sub_100389394(v23, v12);
  v45 = a1;
  sub_100389394(a1, &v12[v24]);
  v44 = v4;
  v25 = *(v4 + 48);
  if (v25(v12, 1, v3) == 1)
  {
    sub_10000CFBC(v23, &unk_100943250);
    if (v25(&v12[v24], 1, v3) == 1)
    {
      sub_10000CFBC(v12, &unk_100943250);
      return sub_10000CFBC(v45, &unk_100943250);
    }
  }

  else
  {
    sub_100389394(v12, v20);
    if (v25(&v12[v24], 1, v3) != 1)
    {
      v36 = v44;
      (*(v44 + 32))(v8, &v12[v24], v3);
      sub_1005A9D48(&qword_10095C918, &type metadata accessor for FontUseCase);
      v39 = sub_10076FF1C();
      v37 = *(v36 + 8);
      v37(v8, v3);
      sub_10000CFBC(v23, &unk_100943250);
      v37(v20, v3);
      sub_10000CFBC(v12, &unk_100943250);
      if (v39)
      {
        return sub_10000CFBC(v45, &unk_100943250);
      }

      goto LABEL_7;
    }

    sub_10000CFBC(v23, &unk_100943250);
    (*(v44 + 8))(v20, v3);
  }

  sub_10000CFBC(v12, &qword_10095C900);
LABEL_7:
  v26 = v45;
  sub_100389394(v45, v17);
  sub_1007625DC();
  v27 = v43;
  v28 = *&v43[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView];
  v29 = [v43 traitCollection];
  v30 = v42;
  sub_100389394(v26, v42);
  if (v25(v30, 1, v3) == 1)
  {

    sub_10000CFBC(v30, &unk_100943250);
  }

  else
  {
    v31 = v44;
    v32 = v40;
    (*(v44 + 32))(v40, v30, v3);
    sub_10005312C();
    v33 = sub_100770B3C();
    v34 = [objc_opt_self() configurationWithFont:v33];
    [v28 setPreferredSymbolConfiguration:v34];

    (*(v31 + 8))(v32, v3);
  }

  [v27 setNeedsLayout];
  return sub_10000CFBC(v45, &unk_100943250);
}

char *sub_1005A85CC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = &v5[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_metrics];
  *(v17 + 3) = &type metadata for Double;
  *(v17 + 4) = &protocol witness table for Double;
  *v17 = 0;
  v18 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView] = v18;
  *v16 = UIFontTextStyleBody;
  *(v16 + 2) = 0;
  v19 = enum case for FontUseCase.preferredFont(_:);
  v20 = sub_10076D3DC();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v16, v19, v20);
  (*(v21 + 56))(v16, 0, 1, v20);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  objc_allocWithZone(sub_1007626BC());
  v22 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel] = sub_1007626AC();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView]];
  v29 = *&v27[v28];
  v30 = [v27 tintColor];
  [v29 setTintColor:v30];

  v31 = OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel]];
  v32 = *&v27[v31];
  v33 = [v27 tintColor];

  [v32 setTextColor:v33];
  return v27;
}

uint64_t sub_1005A8A20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView];
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel];
  v10 = OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1001E083C(&v1[v10], v12);
  sub_1005A8BB8(v8, &protocol witness table for UIView, v9, &protocol witness table for UIView, v12, v13);
  sub_1001E08F4(v12);
  sub_10000CF78(v13, v13[3]);
  sub_10076422C();
  sub_10076DFCC();
  (*(v4 + 8))(v7, v3);
  return sub_10000CD74(v13);
}

uint64_t sub_1005A8BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v101 = a5;
  v100 = a4;
  v99 = a3;
  v105 = a2;
  v104 = a1;
  v106 = a6;
  v112 = sub_10076804C();
  v118 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10076805C();
  v119 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10076802C();
  v8 = *(v109 - 8);
  __chkstk_darwin(v109);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076809C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10076808C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10076807C();
  v117 = *(v114 - 8);
  __chkstk_darwin(v114);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1007680BC();
  v102 = *(v115 - 8);
  v103 = v115 - 8;
  v113 = v102;
  __chkstk_darwin(v115 - 8);
  v98 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v108 = &v77 - v24;
  v83 = *(v16 + 104);
  v84 = v16 + 104;
  v107 = v18;
  (v83)(v18, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v15, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = v14;
  v81 = v14;
  *v14 = v25;
  v27 = *(v12 + 104);
  v96 = v12 + 104;
  v97 = v27;
  v88 = v11;
  v27(v14, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v11);
  v28 = v20;
  sub_10076806C();
  v29 = *(v12 + 8);
  v94 = v12 + 8;
  v95 = v29;
  v29(v26, v11);
  v30 = *(v16 + 8);
  v92 = v16 + 8;
  v93 = v30;
  v30(v18, v15);
  v122 = &type metadata for Double;
  v123 = &protocol witness table for Double;
  v121 = 0;
  v91 = enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:);
  v31 = v8;
  v32 = *(v8 + 104);
  v89 = v8 + 104;
  v90 = v32;
  v33 = v10;
  v34 = v10;
  v35 = v109;
  v32(v34);
  v87 = enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:);
  v36 = v118;
  v37 = *(v118 + 104);
  v85 = v118 + 104;
  v86 = v37;
  v39 = v111;
  v38 = v112;
  v37(v111);
  v40 = v110;
  sub_10076803C();
  v41 = *(v36 + 8);
  v118 = v36 + 8;
  v82 = v41;
  v41(v39, v38);
  v42 = v108;
  v78 = v28;
  v79 = v33;
  sub_1007680AC();
  v43 = *(v119 + 8);
  v119 += 8;
  v101 = v43;
  v43(v40, v116);
  v44 = *(v31 + 8);
  v99 = v31 + 8;
  v100 = v44;
  v44(v33, v35);
  v45 = *(v117 + 8);
  v117 += 8;
  v80 = v45;
  v45(v28, v114);
  sub_10000CD74(&v121);
  v122 = &type metadata for CGFloat;
  v123 = &protocol witness table for CGFloat;
  v121 = 0;
  v46 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:);
  v47 = v83;
  v83(v107, enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:), v15);
  v48 = sub_10000A5D4(&qword_10095E5A8);
  v49 = swift_allocBox();
  v51 = v50;
  v52 = *(v48 + 48);
  v53 = *(v113 + 16);
  v53(v50, v42, v115);
  v47(v51 + v52, v46, v15);
  v54 = v81;
  *v81 = v49;
  v55 = v88;
  v97(v54, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v88);
  v56 = v78;
  v57 = v107;
  sub_10076806C();
  v95(v54, v55);
  v93(v57, v15);
  v120[4] = &protocol witness table for Double;
  v120[3] = &type metadata for Double;
  v120[0] = 0;
  v58 = v79;
  v59 = v109;
  v90(v79, v91, v109);
  v61 = v111;
  v60 = v112;
  v86(v111, v87, v112);
  v62 = v110;
  sub_10076803C();
  v82(v61, v60);
  v63 = v98;
  sub_1007680AC();
  v101(v62, v116);
  v100(v58, v59);
  v80(v56, v114);
  sub_10000CD74(v120);
  sub_10000CD74(&v121);
  sub_10000A5D4(&qword_10095E5B0);
  v64 = *(v102 + 72);
  v65 = v113;
  v66 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_100784500;
  v68 = v67 + v66;
  v69 = v63;
  v70 = v63;
  v71 = v115;
  v53(v68, v69, v115);
  v72 = v108;
  v53(v68 + v64, v108, v71);
  v73 = sub_1007680DC();
  v74 = v106;
  v106[3] = v73;
  v74[4] = sub_1005A9D48(&qword_10095E5B8, &type metadata accessor for HorizontalAlignmentLayout);
  v74[5] = sub_1005A9D48(&qword_10095E5C0, &type metadata accessor for HorizontalAlignmentLayout);
  sub_10000DB7C(v74);
  sub_1007680CC();
  v75 = *(v65 + 8);
  v75(v70, v71);
  return (v75)(v72, v71);
}

uint64_t sub_1005A96F0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v34 - v14;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, "traitCollectionDidChange:", a1, v13);
  v16 = [v2 traitCollection];
  v17 = [v16 preferredContentSizeCategory];

  if (!a1)
  {
    v35 = v8;
    v24 = v6;

LABEL_7:
    v26 = *&v2[OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView];
    sub_1007625CC();
    v27 = [v2 traitCollection];
    sub_100389394(v15, v11);
    v28 = v24;
    if ((*(v24 + 48))(v11, 1, v5) == 1)
    {

      sub_10000CFBC(v15, &unk_100943250);
      v29 = v11;
    }

    else
    {
      v30 = *(v24 + 32);
      v31 = v35;
      v30(v35, v11, v5);
      sub_10005312C();
      v32 = sub_100770B3C();
      v33 = [objc_opt_self() configurationWithFont:v32];
      [v26 setPreferredSymbolConfiguration:v33];

      (*(v28 + 8))(v31, v5);
      v29 = v15;
    }

    return sub_10000CFBC(v29, &unk_100943250);
  }

  v18 = [a1 preferredContentSizeCategory];
  v19 = sub_10076FF9C();
  v21 = v20;
  if (v19 == sub_10076FF9C() && v21 == v22)
  {
  }

  v35 = v8;
  v24 = v6;
  v25 = sub_10077167C();

  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

double sub_1005A9B00()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_imageView);
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_headingLabel);
  v3 = OBJC_IVAR____TtC20ProductPageExtension16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1001E083C(v0 + v3, v7);
  sub_1005A8BB8(v1, &protocol witness table for UIView, v2, &protocol witness table for UIView, v7, v8);
  sub_1001E08F4(v7);
  sub_10000CF78(v8, v8[3]);
  sub_10076D2AC();
  v5 = v4;
  sub_10000CD74(v8);
  return v5;
}

uint64_t sub_1005A9D48(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1005A9D90()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_1009A0A00 = 1.0 / v2;
  return result;
}

uint64_t sub_1005A9E1C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10076D9AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DividerView.Style(0);
  sub_10000DB18(v11, a2);
  v12 = sub_10000A61C(v11, a2);
  *v6 = UIFontTextStyleBody;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v18[3] = v3;
  v18[4] = &protocol witness table for FontSource;
  v13 = sub_10000DB7C(v18);
  (*(v4 + 16))(v13, v6, v3);
  v14 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v4 + 8))(v6, v3);
  v15 = *&UIEdgeInsetsZero.bottom;
  *v12 = *&UIEdgeInsetsZero.top;
  *(v12 + 1) = v15;
  return (*(v8 + 32))(&v12[*(v11 + 20)], v10, v7);
}

char *sub_1005AA048(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension11DividerView_style;
  if (qword_100940948 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for DividerView.Style(0);
  v14 = sub_10000A61C(v13, qword_1009A0A08);
  sub_100206DD0(v14, &v4[v12]);
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorView] = v15;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorView;
  v18 = *&v16[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorView];
  sub_1000325F0();
  v19 = v16;
  v20 = v18;
  v21 = sub_100770CDC();
  [v20 setBackgroundColor:v21];

  [v19 addSubview:*&v16[v17]];
  return v19;
}

id sub_1005AA4B0()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_100940940 != -1)
  {
    swift_once();
  }

  v9 = *&qword_1009A0A00;
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorView];
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  MinX = CGRectGetMinX(v17);
  v12 = &v0[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v13 = MinX + v12[1];
  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  v14 = CGRectGetMidY(v18) + v9 * -0.5;
  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  return [v10 setFrame:{v13, v14, CGRectGetWidth(v19) - v12[1] - v12[3], v9}];
}

uint64_t sub_1005AA6B8()
{
  result = type metadata accessor for DividerView.Style(319);
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

uint64_t sub_1005AA794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_10076D9AC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1005AA820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_10076D9AC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_1005AA89C()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_10076D9AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1005AA920()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940940 != -1)
  {
    swift_once();
  }

  v4 = floor(*&qword_1009A0A00);
  type metadata accessor for DividerView.Style(0);
  sub_10076D17C();
  sub_10076D9AC();
  sub_10076D40C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v4 + v6;
}

unint64_t sub_1005AAA90()
{
  result = qword_10094F038;
  if (!qword_10094F038)
  {
    sub_10076932C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F038);
  }

  return result;
}

uint64_t sub_1005AAAE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_10075F6CC();
    v8 = a1;
    sub_10076931C();
    sub_10075F66C();

    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a2;
    v10 = sub_100085204();
    swift_retain_n();

    v13[3] = v10;
    v13[4] = &protocol witness table for OS_dispatch_queue;
    v13[0] = sub_10077068C();
    sub_10076FC6C();

    return sub_10000CD74(v13);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v12 = sub_10076FD4C();
    sub_10000A61C(v12, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    sub_1005AB520();
    swift_allocError();
    sub_10076FCAC();
  }
}

uint64_t sub_1005AADA8(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v5 = sub_10075F65C();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100765F6C();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100766EDC();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v28 - v16;
  v18 = sub_10076C15C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = sub_1007692FC();
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  (*(v19 + 104))(v21, enum case for FlowPage.gameAchievements(_:), v18);
  v24 = sub_10075DB7C();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  v25 = sub_10076096C();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v42 = &type metadata for GameCenterAchievementsPage;
  v40 = v22;
  v41 = v23;
  v29 = v22;

  sub_10076F4DC();
  (*(v9 + 104))(v30, enum case for FlowPresentationContext.infer(_:), v31);
  (*(v33 + 104))(v32, enum case for FlowAnimationBehavior.infer(_:), v34);
  (*(v36 + 104))(v35, enum case for FlowOrigin.inapp(_:), v37);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v26 = sub_10075F5EC();
  sub_100563FF8(v26, 1, v38);
  sub_10076FC4C();
}

uint64_t sub_1005AB2C0()
{
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076FD4C();
  sub_10000A61C(v0, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBEC();

  return sub_10076FCAC();
}

uint64_t sub_1005AB418(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_10000A5D4(&qword_100942C70);
  v4 = sub_10076FCEC();
  sub_10075F6CC();
  v7[3] = sub_100085204();
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_10077068C();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = a2;

  sub_10075F67C();

  sub_10000CD74(v7);
  return v4;
}

unint64_t sub_1005AB520()
{
  result = qword_10095E6A0;
  if (!qword_10095E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095E6A0);
  }

  return result;
}

unint64_t sub_1005AB59C()
{
  result = qword_10095E6A8;
  if (!qword_10095E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095E6A8);
  }

  return result;
}

char *sub_1005AB5F4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView;
  type metadata accessor for ProductEditorsChoiceView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC20ProductPageExtension38ProductEditorsChoiceCollectionViewCell_editorsChoiceView]];

  return v13;
}

uint64_t type metadata accessor for ProductEditorsChoiceCollectionViewCell()
{
  result = qword_10095E6D8;
  if (!qword_10095E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1005AB9D0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10075FEEC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_formattedDatePlaceholder;
  sub_1007600FC();
  v15 = sub_1007600EC();
  v17 = v16;
  if (qword_1009410D8 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v19 = sub_10000A61C(v18, qword_1009A2080);
  v20 = sub_1004B96BC(v15, v17, v19);

  *&v5[v14] = v20;
  v21 = OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_appEventPlaceholder;
  (*(v11 + 104))(v13, enum case for CornerStyle.continuous(_:), v10);
  sub_10076394C();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondarySystemBackgroundColor];
  [v24 setBackgroundColor:v25];

  sub_1007638AC();
  (*(v11 + 8))(v13, v10);
  *&v5[v21] = v24;
  v26 = type metadata accessor for AppEventPlaceholderView();
  v31.receiver = v5;
  v31.super_class = v26;
  v27 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v28 = *&v27[OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_formattedDatePlaceholder];
  v29 = v27;
  [v29 addSubview:v28];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_appEventPlaceholder]];

  return v29;
}

uint64_t sub_1005ABCAC()
{
  v1 = v0;
  v2 = sub_10076D1FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_10075DE9C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for AppEventPlaceholderView();
  v30.receiver = v0;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, "layoutSubviews");
  sub_10076422C();
  result = CGRectIsEmpty(v31);
  if ((result & 1) == 0)
  {
    v25 = v2;
    if (qword_100940640 != -1)
    {
      swift_once();
    }

    sub_1002ED13C(&unk_10099FD58, v28);
    v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_formattedDatePlaceholder];
    v27[3] = sub_1007626BC();
    v27[4] = &protocol witness table for UILabel;
    v27[0] = v12;
    sub_1002ED13C(v28, v26);
    v13 = v12;
    sub_10075DE6C();
    LOBYTE(v12) = sub_10075DE7C();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      sub_10076D72C();
      sub_1002ED174(v28);
    }

    else
    {
      sub_1002ED174(v28);
      sub_10000A570(v27, &v26[168]);
    }

    memset(&v26[208], 0, 120);
    memcpy(v29, v26, sizeof(v29));
    sub_10000CD74(v27);
    sub_10076422C();
    AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(v14, v15, v16, v17);
    (*(v3 + 8))(v5, v25);
    sub_10076422C();
    sub_1004B8E04(v1, v29, v18, v19);
    v21 = v20;
    v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_appEventPlaceholder];
    sub_10076422C();
    MinX = CGRectGetMinX(v32);
    sub_10076422C();
    Width = CGRectGetWidth(v33);
    sub_10076422C();
    [v22 setFrame:{MinX, v21, Width, CGRectGetHeight(v34) - v21}];
    return sub_10005AE58(v29);
  }

  return result;
}

id sub_1005AC05C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005AC100()
{
  v1 = v0;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_formattedDatePlaceholder;
  sub_1007600FC();
  v7 = sub_1007600EC();
  v9 = v8;
  if (qword_1009410D8 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A2080);
  v12 = sub_1004B96BC(v7, v9, v11);

  *(v1 + v6) = v12;
  v13 = OBJC_IVAR____TtC20ProductPageExtension23AppEventPlaceholderView_appEventPlaceholder;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_10076394C();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 secondarySystemBackgroundColor];
  [v16 setBackgroundColor:v17];

  sub_1007638AC();
  (*(v3 + 8))(v5, v2);
  *(v1 + v13) = v16;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1005AC334(double a1)
{
  v2 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v2 - 8);
  v42 = v33 - v3;
  v40 = sub_10076C2DC();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v7 - 8);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  __chkstk_darwin(v13);
  v46 = v33 - v14;
  __chkstk_darwin(v15);
  v17 = v33 - v16;
  sub_10000A5D4(&qword_100942910);
  v18 = *(sub_10076C20C() - 8);
  v45 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v35 = v20;
  *(v20 + 16) = xmmword_1007844F0;
  v38 = v20 + v19;
  v48 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v47 = 0x4030000000000000;
  v48 = 0x4020000000000000;
  sub_10076C27C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  *v6 = 16.0;
  v6[1] = a1 + 16.0;
  v39 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v21 = *(v4 + 104);
  v36 = v4 + 104;
  v22 = v40;
  v21(v6);
  v41 = v21;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v48) = 0;
  sub_10076C29C();
  v48 = 0;
  v44 = v9;
  sub_10076C29C();
  v43 = v17;
  v37 = v12;
  sub_10076C1CC();
  v48 = 0x3FF0000000000000;
  sub_10076C29C();
  v47 = 0x4034000000000000;
  v48 = 0x4024000000000000;
  sub_10076C27C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  v34 = a1;
  *v6 = 20.0;
  v6[1] = a1 + 20.0;
  (v21)(v6, v39, v22);
  LOBYTE(v48) = 0;
  sub_10076C29C();
  v48 = 0;
  sub_10076C29C();
  v24 = v45;
  v33[2] = *&UIEdgeInsetsZero.top;
  *&v33[3] = left;
  sub_10076C1CC();
  v33[1] = 2 * v24;
  v48 = 0x3FF0000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v25 = v39;
  v26 = v40;
  (v41)(v6, v39, v40);
  LOBYTE(v48) = 0;
  sub_10076C29C();
  v48 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v48 = 0x3FF0000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v27 = v25;
  v28 = v41;
  (v41)(v6, v27, v26);
  sub_1007704BC();
  LOBYTE(v48) = 0;
  sub_10076C29C();
  v48 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v29 = 4 * v45;
  v48 = 0x3FF0000000000000;
  sub_10076C29C();
  v48 = 0x4038000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  v30 = v34 + 52.0;
  *v6 = 52.0;
  v6[1] = v30;
  v31 = v39;
  (v28)(v6, v39, v26);
  LOBYTE(v48) = 0;
  sub_10076C29C();
  v48 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v45 += v29;
  v48 = 0x3FF0000000000000;
  sub_10076C29C();
  v48 = 0x4038000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  sub_10076C29C();
  *v6 = 52.0;
  v6[1] = v30;
  (v41)(v6, v31, v40);
  LOBYTE(v48) = 0;
  sub_10076C29C();
  v48 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v35;
}

uint64_t sub_1005ACD18()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076048C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100945BD0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_10000DB18(v11, qword_1009A0A50);
  v12 = sub_10000A61C(v11, qword_1009A0A50);
  v30 = &type metadata for Double;
  v31 = &protocol witness table for Double;
  *&v29 = 0x4030000000000000;
  *&v28 = 0x4038000000000000;
  *&v25 = 0x4034000000000000;
  sub_10000A5D4(&unk_100943120);
  sub_10075FDFC();
  sub_10075FE2C();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, enum case for SystemImage.chevronForward(_:), v3);
  v13 = sub_10076046C();
  (*(v4 + 8))(v6, v3);
  v14 = [objc_opt_self() secondaryLabelColor];
  v27 = &protocol witness table for Double;
  v26 = &type metadata for Double;
  *&v25 = 0x4010000000000000;
  v15 = objc_opt_self();
  v16 = UIFontTextStyleFootnote;
  v17 = [v15 configurationWithTextStyle:v16 scale:1];

  if (qword_100940F58 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v0, qword_1009A1C00);
  v19 = v24;
  (*(v1 + 16))(v24, v18, v0);
  sub_100016F40(0, &qword_100942F10);
  v20 = sub_100770CFC();
  sub_100016F40(0, &qword_1009441F0);
  sub_100770B7C();
  v22 = v21;
  sub_10003F19C(&v29, v12);
  sub_10003F19C(&v28, (v12 + 40));
  *(v12 + 10) = v13;
  *(v12 + 11) = v14;
  sub_10003F19C(&v25, (v12 + 96));
  *(v12 + 17) = v17;
  result = (*(v1 + 32))(&v12[v11[10]], v19, v0);
  *&v12[v11[11]] = 2;
  *&v12[v11[12]] = v20;
  *&v12[v11[13]] = v22;
  return result;
}

uint64_t sub_1005AD174()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076048C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_10000DB18(v8, qword_1009A0A68);
  v9 = sub_10000A61C(v8, qword_1009A0A68);
  v10 = sub_10076D67C();
  v29 = v10;
  v30 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v28);
  sub_10076D66C();
  v26 = v10;
  v27 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v25);
  sub_10076D66C();
  (*(v5 + 104))(v7, enum case for SystemImage.arrowUpForward(_:), v4);
  v21 = sub_10076046C();
  (*(v5 + 8))(v7, v4);
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  v23 = &type metadata for Double;
  v24 = &protocol witness table for Double;
  *&v22 = 0x4018000000000000;
  v13 = objc_opt_self();
  v14 = UIFontTextStyleFootnote;
  v15 = [v13 configurationWithTextStyle:v14 scale:1];

  if (qword_100940F58 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v0, qword_1009A1C00);
  (*(v1 + 16))(v3, v16, v0);
  v17 = [v11 secondaryLabelColor];
  sub_100016F40(0, &qword_1009441F0);
  sub_100770B7C();
  v19 = v18;
  sub_10003F19C(&v28, v9);
  sub_10003F19C(&v25, (v9 + 40));
  *(v9 + 10) = v21;
  *(v9 + 11) = v12;
  sub_10003F19C(&v22, (v9 + 96));
  *(v9 + 17) = v15;
  result = (*(v1 + 32))(&v9[v8[10]], v3, v0);
  *&v9[v8[11]] = 2;
  *&v9[v8[12]] = v17;
  *&v9[v8[13]] = v19;
  return result;
}

uint64_t sub_1005AD500@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  v5 = sub_10076D65C();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10076DFEC();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v69 = (&v54 - v10);
  __chkstk_darwin(v11);
  v68 = (&v54 - v12);
  __chkstk_darwin(v13);
  v67 = (&v54 - v14);
  v15 = sub_10076D8DC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  __chkstk_darwin(v20);
  v23 = &v54 - v22;
  v24 = *(v3 + 120);
  v66 = v3;
  if (v24 == 1)
  {
    v58 = v21;
    sub_10076D8AC();
    sub_10000CF78(v3, *(v3 + 24));
    sub_10076D2DC();
    sub_1005B0130(v3, v73);
    v25 = swift_allocObject();
    memcpy((v25 + 16), v73, 0x108uLL);
    v26 = v58;
    sub_10076D8BC();

    sub_10000CD74(v74);
    v27 = *(v16 + 8);
    v56 = v16 + 8;
    v57 = v27;
    v27(v26, v15);
    sub_10000A570(v3 + 40, v74);
    v28 = *(v3 + 248);
    v29 = v67;
    v67[3] = &type metadata for CGFloat;
    v29[4] = &protocol witness table for CGFloat;
    *v29 = v28;
    v59 = v23;
    v30 = v15;
    v31 = *(v7 + 104);
    v61 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v32 = v71;
    v31(v29, enum case for Resize.Rule.replaced(_:), v71);
    v33 = enum case for Resize.Rule.unchanged(_:);
    v31(v68, enum case for Resize.Rule.unchanged(_:), v32);
    v55 = v19;
    v31(v69, v33, v32);
    v60 = v16;
    v31(v70, v33, v32);
    v73[3] = sub_10076DFFC();
    v73[4] = &protocol witness table for Resize;
    sub_10000DB7C(v73);
    v34 = v66;
    sub_10076E00C();
    v35 = v55;
    sub_10076D8BC();
    v36 = v57;
    v57(v35, v30);
    sub_10000CD74(v73);
    v37 = v58;
    sub_10076D8AC();
    sub_1005B0130(v34, v73);
    v38 = swift_allocObject();
    memcpy((v38 + 16), v73, 0x108uLL);
    sub_10076D8BC();

    v36(v37, v30);
    v73[3] = v30;
    v73[4] = &protocol witness table for HorizontalStack;
    v39 = sub_10000DB7C(v73);
    v40 = v59;
    (*(v60 + 16))(v39, v59, v30);
    v75 = v30;
    v76 = &protocol witness table for HorizontalStack;
    sub_10000DB7C(v74);
    sub_10076D8BC();
    v41 = v35;
    v42 = v66;
    v36(v41, v30);
    v36(v40, v30);
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    sub_10076D8AC();
    sub_10000CF78(v3, *(v3 + 24));
    sub_10076D2DC();
    sub_1005B0130(v3, v73);
    v43 = swift_allocObject();
    memcpy((v43 + 16), v73, 0x108uLL);
    sub_10076D8BC();

    sub_10000CD74(v74);
    v59 = *(v16 + 8);
    v60 = v16 + 8;
    v59(v19, v15);
    sub_10000A570(v3 + 40, v74);
    v44 = *(v3 + 248);
    v45 = v67;
    v67[3] = &type metadata for CGFloat;
    v45[4] = &protocol witness table for CGFloat;
    *v45 = v44;
    v58 = v15;
    v31 = *(v7 + 104);
    v61 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v46 = v71;
    v31(v45, enum case for Resize.Rule.replaced(_:), v71);
    v33 = enum case for Resize.Rule.unchanged(_:);
    v31(v68, enum case for Resize.Rule.unchanged(_:), v46);
    v31(v69, v33, v46);
    v31(v70, v33, v46);
    v73[3] = sub_10076DFFC();
    v73[4] = &protocol witness table for Resize;
    sub_10000DB7C(v73);
    v42 = v66;
    sub_10076E00C();
    v47 = v58;
    v75 = v58;
    v76 = &protocol witness table for HorizontalStack;
    sub_10000DB7C(v74);
    sub_10076D8BC();
    v59(v23, v47);
  }

  sub_10000CD74(v73);
  v48 = v62;
  sub_10076D63C();
  sub_1005B0130(v42, v73);
  v49 = swift_allocObject();
  memcpy((v49 + 16), v73, 0x108uLL);
  v50 = v64;
  v72[3] = v64;
  v72[4] = &protocol witness table for VerticalStack;
  sub_10000DB7C(v72);
  sub_10076D64C();

  (*(v63 + 8))(v48, v50);
  v51 = v67;
  *v67 = sub_10007C300;
  v51[1] = 0;
  v52 = v71;
  v31(v51, enum case for Resize.Rule.recalculated(_:), v71);
  v31(v68, v33, v52);
  v31(v69, v33, v52);
  v31(v70, v33, v52);
  sub_10076E00C();
  return sub_10000CD74(v74);
}

uint64_t sub_1005ADE3C(uint64_t a1, uint64_t a2)
{
  sub_10000A570(a2 + 128, v4);
  sub_10076D5BC();
  sub_10000A570(a2 + 168, v4);
  return sub_10076D5CC();
}

double sub_1005ADE90()
{
  v1 = sub_10076DFFC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(v0, v0[3]);
  sub_10076D2DC();
  sub_10000CF78(v18, v18[3]);
  sub_10076E0FC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_10000CD74(v18);
  sub_10000CF78(v0, v0[3]);
  v19.var0 = v6;
  v19.var1 = v8;
  v19.var2 = v10;
  v19.var3 = v12;
  if (sub_10076D71C(v19) > 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  sub_1005AD500(v13, v4);
  sub_10076E0FC();
  v15 = v14;
  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_1005AE084(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_10076DFFC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(v4, v4[3]);
  sub_10076D2DC();
  sub_10000CF78(v24, v24[3]);
  sub_10076E0FC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_10000CD74(v24);
  sub_10000CF78(v4, v4[3]);
  v25.var0 = v14;
  v25.var1 = v16;
  v25.var2 = v18;
  v25.var3 = v20;
  if (sub_10076D71C(v25) > 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = 3;
  }

  if (sub_10076D8CC())
  {
    v26.origin.x = a1;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    CGRectGetWidth(v26);
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    CGRectGetHeight(v27);
  }

  sub_1005AD500(v21, v12);
  sub_10076E0EC();
  return (*(v10 + 8))(v12, v9);
}

id sub_1005AE2C8()
{
  type metadata accessor for ShelfFooterTitleButton(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_10095E720 = result;
  return result;
}

char *sub_1005AE468(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = sub_100770F9C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  v22 = OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) init];
  v5[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconHeight] = 0;
  sub_100181D74(a1, &v5[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style]);
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v32, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_1007710CC();
  v28 = sub_10077111C();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v21, 0, 1, v28);
  sub_10077114C();
  sub_10077113C();
  if ((*(v29 + 48))(v18, 1, v28))
  {
    sub_10014D2A4(v18, v21);
    sub_10077114C();
    sub_10014D314(v18);
  }

  else
  {
    (*(v13 + 104))(v15, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v12);
    sub_100770FAC();
    sub_10077114C();
  }

  v30 = [v27 layer];
  [v30 setAllowsGroupBlending:0];

  [v27 addSubview:*&v27[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconView]];
  sub_100181E3C(a1);
  return v27;
}

id sub_1005AE860()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  sub_10077113C();
  v8 = sub_10077111C();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_10014D2A4(v7, v4);
    sub_10077114C();
    sub_10014D314(v7);
  }

  else
  {
    v9 = &v0[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style];
    swift_beginAccess();
    v10 = v9[10];
    sub_1007710BC();
    sub_10077114C();
  }

  v11 = [v1 titleLabel];
  if (v11)
  {
    v12 = v11;
    v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style];
    swift_beginAccess();
    [v12 setNumberOfLines:*&v13[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 44)]];
  }

  v14 = &v1[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style];
  swift_beginAccess();
  [v1 setTintColor:*&v14[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 48)]];
  return [v1 setNeedsUpdateConfiguration];
}

id sub_1005AEA60@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 imageView];
    if (v5)
    {
      v6 = v5;
      a1[3] = &type metadata for ShelfFooterTitleButton.Layout;
      a1[4] = sub_1005AFD40();
      v7 = swift_allocObject();
      *a1 = v7;
      *(v7 + 40) = sub_100016F40(0, &qword_100956550);
      *(v7 + 48) = &protocol witness table for UILabel;
      *(v7 + 16) = v4;
      v8 = sub_100016F40(0, &qword_10094A280);
      *(v7 + 80) = v8;
      *(v7 + 88) = &protocol witness table for UIImageView;
      *(v7 + 56) = v6;
      v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconView];
      *(v7 + 120) = v8;
      *(v7 + 128) = &protocol witness table for UIImageView;
      *(v7 + 96) = v9;
      v10 = v1[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_hasLeadingIcon];
      v11 = &v1[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style];
      swift_beginAccess();
      sub_10000A570(v11, v7 + 144);
      sub_10000A570(v11 + 40, v7 + 184);
      sub_10000A570(v11 + 96, v7 + 224);
      v12 = v9;
      result = [v6 lastBaselineFromBottom];
      v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_leadingIconHeight];
      *(v7 + 136) = v10;
      *(v7 + 264) = v15;
      *(v7 + 272) = v14;
      return result;
    }
  }

  a1[3] = sub_10076D8DC();
  a1[4] = &protocol witness table for HorizontalStack;
  sub_10000DB7C(a1);
  return sub_10076D8AC();
}

uint64_t sub_1005AEC18()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&qword_10095D0D0);
  __chkstk_darwin(v3 - 8);
  v64 = v63 - v4;
  v5 = sub_10000A5D4(&unk_10095E850);
  __chkstk_darwin(v5 - 8);
  v7 = v63 - v6;
  v8 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v8 - 8);
  v73 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = v63 - v11;
  __chkstk_darwin(v12);
  v69 = v63 - v13;
  __chkstk_darwin(v14);
  v16 = v63 - v15;
  __chkstk_darwin(v17);
  v19 = v63 - v18;
  v20 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v21 = v20 - 8;
  v66 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = v22;
  v68 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v72 = v63 - v24;
  v25 = sub_10076D3DC();
  v26 = *(v25 - 8);
  *&v27 = __chkstk_darwin(v25).n128_u64[0];
  v29 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75.receiver = v1;
  v75.super_class = ObjectType;
  objc_msgSendSuper2(&v75, "updateConfiguration", v27);
  sub_100016F40(0, &qword_100942F00);
  v30 = v1 + OBJC_IVAR____TtC20ProductPageExtension22ShelfFooterTitleButton_style;
  swift_beginAccess();
  (*(v26 + 16))(v29, v30 + *(v21 + 48), v25);
  v31 = [v1 traitCollection];
  v71 = sub_100770B3C();

  (*(v26 + 8))(v29, v25);
  if ([v1 isHighlighted])
  {
    v65 = 1;
  }

  else
  {
    v65 = [v1 isSelected];
  }

  v32 = v72;
  sub_100181D74(v30, v72);
  sub_10077113C();
  v33 = sub_10077111C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v34 + 48;
  v37 = v35(v19, 1, v33);
  v38 = v70;
  if (v37)
  {
    sub_10014D2A4(v19, v73);
    sub_10077114C();
    sub_10014D314(v19);
  }

  else
  {
    v63[0] = v19;
    v39 = v68;
    sub_100181D74(v32, v68);
    v40 = (*(v66 + 80) + 25) & ~*(v66 + 80);
    v41 = swift_allocObject();
    v63[1] = v36;
    v42 = v35;
    v43 = v38;
    v44 = v71;
    *(v41 + 16) = v71;
    *(v41 + 24) = v65;
    v45 = v41 + v40;
    v32 = v72;
    sub_100182730(v39, v45);
    v46 = v44;
    v38 = v43;
    v35 = v42;
    sub_10076E8AC();
    v47 = sub_10076E89C();
    (*(*(v47 - 8) + 56))(v7, 0, 1, v47);
    sub_10077106C();
    sub_10077114C();
  }

  sub_10077113C();
  if (v35(v16, 1, v33))
  {
    sub_10014D2A4(v16, v73);
    sub_10077114C();
    sub_10014D314(v16);
  }

  else
  {
    v48 = v68;
    sub_100181D74(v32, v68);
    v49 = (*(v66 + 80) + 17) & ~*(v66 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v65;
    sub_100182730(v48, v50 + v49);
    v51 = v64;
    sub_10076E6AC();
    v52 = sub_10076E69C();
    (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
    sub_10077105C();
    sub_10077114C();
  }

  v53 = v69;
  sub_10077113C();
  if (v35(v53, 1, v33))
  {
    sub_10014D2A4(v53, v73);
    sub_10077114C();
    sub_10014D314(v53);
  }

  else
  {
    v54 = *(v32 + 136);
    sub_100770F4C();
    sub_10077114C();
  }

  v55 = [v1 imageView];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 layer];

    v58 = [v1 traitCollection];
    [v58 userInterfaceStyle];

    sub_10076FF9C();
    v59 = sub_10076FF6C();

    [v57 setCompositingFilter:v59];
  }

  sub_10077113C();
  if (v35(v38, 1, v33))
  {
    sub_10014D2A4(v38, v73);
    sub_10077114C();

    sub_100181E3C(v32);
    return sub_10014D314(v38);
  }

  else
  {
    v61 = [objc_opt_self() clearColor];
    v62 = sub_100770F5C();
    sub_10076E46C();
    v62(v74, 0);
    sub_10077114C();

    return sub_100181E3C(v32);
  }
}

uint64_t sub_1005AF488@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10075D9EC();
  (*(*(v10 - 8) + 16))(a5, a1, v10);
  sub_100016BD0();
  v11 = a2;
  sub_10075D9FC();
  v12 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v13 = *(a4 + *(v12 + 48));
  if (a3)
  {
    v14 = [v13 colorWithAlphaComponent:*(a4 + *(v12 + 52))];
  }

  else
  {
    v15 = v13;
  }

  sub_10037C8FC();
  return sub_10075D9FC();
}

id sub_1005AF590(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a3 + 88);
  if (a2)
  {
    v5 = [*(a3 + 88) colorWithAlphaComponent:*(a3 + *(type metadata accessor for ShelfFooterTitleButton.Style(0) + 52))];

    return v5;
  }

  else
  {

    return v4;
  }
}

double sub_1005AF744(double a1, double a2)
{
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "sizeThatFits:", a1, a2);
  v6 = v5;
  v7 = [v2 titleLabel];
  if (v7)
  {

    v8 = [v2 imageView];
    if (v8)
    {

      sub_1005AEA60(v12);
      sub_10000CF78(v12, v12[3]);
      [v2 layoutMargins];
      sub_100770ACC();
      v9 = [v2 traitCollection];
      sub_10076E0FC();

      [v2 layoutMargins];
      sub_100770AEC();
      v6 = v10;
      sub_10000CD74(v12);
    }
  }

  return v6;
}

uint64_t sub_1005AF978()
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
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

uint64_t sub_1005AFA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10076D3DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1005AFB24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10076D3DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1005AFBC8()
{
  sub_100196324();
  if (v0 <= 0x3F)
  {
    sub_100016F40(319, &qword_10094F610);
    if (v1 <= 0x3F)
    {
      sub_100016F40(319, &qword_100942F10);
      if (v2 <= 0x3F)
      {
        sub_1005AFCD8();
        if (v3 <= 0x3F)
        {
          sub_10076D3DC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1005AFCD8()
{
  if (!qword_10095E7E8)
  {
    sub_100016F40(255, &qword_1009560B0);
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_10095E7E8);
    }
  }
}

unint64_t sub_1005AFD40()
{
  result = qword_10095E840;
  if (!qword_10095E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095E840);
  }

  return result;
}

uint64_t sub_1005AFD98()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  sub_10000CD74(v0 + v3);
  sub_10000CD74(v0 + v3 + 40);

  sub_10000CD74(v0 + v3 + 96);
  v5 = v1[12];
  v6 = sub_10076D3DC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_1005AFEBC(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_1005AF590(a1, v4, v5);
}

uint64_t sub_1005AFF30()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*v1 + 64);

  sub_10000CD74(v0 + v3);
  sub_10000CD74(v0 + v3 + 40);

  sub_10000CD74(v0 + v3 + 96);
  v5 = v1[12];
  v6 = sub_10076D3DC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1005B005C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_1005AF488(a1, v6, v7, v8, a2);
}

uint64_t sub_1005B01B4()
{
  sub_10000CD74(v0 + 16);
  sub_10000CD74(v0 + 56);
  sub_10000CD74(v0 + 96);
  sub_10000CD74(v0 + 144);
  sub_10000CD74(v0 + 184);
  sub_10000CD74(v0 + 224);

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_1005B0228()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10095E860);
  sub_10000A61C(v4, qword_10095E860);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

void sub_1005B037C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v45 = a6;
  Strong = a5;
  v9 = sub_10076FD4C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v13 - 8);
  v44 = &v40 - v14;
  v15 = sub_10076253C();
  v43 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076F4FC();
  __chkstk_darwin(v18 - 8);
  if (a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong presentViewController:a4 animated:1 completion:0];
    v19 = Strong;

    return;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  *&v50 = a2;
  swift_errorRetain();
  sub_10000A5D4(&qword_10095E8E0);
  v20 = sub_100016F40(0, &unk_10094FA10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v41 = v20;
  v42 = v47;
  v21 = [v47 domain];
  v22 = sub_10076FF9C();
  v24 = v23;

  if (v22 == sub_10076FF9C() && v24 == v25)
  {
  }

  else
  {
    v26 = sub_10077167C();

    if ((v26 & 1) == 0)
    {

      goto LABEL_18;
    }
  }

  v27 = v42;
  if ([v42 code] == -7005)
  {
    if (qword_100940970 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v9, qword_10095E860);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    *(&v51 + 1) = v41;
    *&v50 = v42;
    v28 = v42;
    sub_10076F30C();
    sub_10000CFBC(&v50, &unk_1009434C0);
    sub_10076FBEC();

    v29 = v28;
    sub_10076FCAC();

    v53._object = 0x80000001007D0620;
    v53._countAndFlagsBits = 0xD000000000000017;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    sub_1007622EC(v53, v55);
    v54._countAndFlagsBits = 0xD00000000000002ALL;
    v54._object = 0x80000001007D0640;
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_1007622EC(v54, v56);
    sub_10076F4DC();
    (*(v43 + 104))(v17, enum case for AlertActionStyle.normal(_:), v15);
    sub_10075FAAC();
    swift_allocObject();
    v30 = sub_10075FA7C();
    v31 = sub_10000A5D4(&unk_1009428E0);
    v33 = v44;
    v32 = v45;
    sub_10076F5AC();
    v34 = *(v31 - 8);
    if ((*(v34 + 48))(v33, 1, v31) == 1)
    {

      sub_10000CFBC(v33, &unk_100943200);
    }

    else
    {
      sub_100264030(v30, 1, v32, v33);

      (*(v34 + 8))(v33, v31);
    }

    return;
  }

LABEL_18:
  if (qword_100940970 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A61C(v9, qword_10095E860);
  (*(v10 + 16))(v12, v35, v9);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  if (a2)
  {
    swift_getErrorValue();
    v36 = v48;
    v37 = v49;
    *(&v51 + 1) = v49;
    v38 = sub_10000DB7C(&v50);
    (*(*(v37 - 8) + 16))(v38, v36, v37);
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  sub_10076F30C();
  sub_10000CFBC(&v50, &unk_1009434C0);
  sub_10076FBEC();

  (*(v10 + 8))(v12, v9);
  sub_1005B170C();
  swift_allocError();
  *v39 = 1;
  sub_10076FCAC();
}

void sub_1005B0C2C(void *a1, uint64_t a2)
{
  v4 = sub_10076FF9C();
  if (*(a2 + 16))
  {
    v6 = sub_100561E0C(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(a2 + 56) + 8 * v6);
      v10 = [v9 success];
      v11 = [v9 error];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      *(v13 + 32) = v10;
      v25 = sub_1005B1CD4;
      v26 = v13;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_10009AEDC;
      v24 = &unk_10089AE70;
      v14 = _Block_copy(&v21);
      v15 = v11;

      [a1 dismissViewControllerAnimated:1 completion:v14];
      _Block_release(v14);

      return;
    }
  }

  else
  {
  }

  sub_1005B170C();
  v16 = swift_allocError();
  *v17 = 0;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  *(v19 + 32) = 0;
  v25 = sub_1005B1CD4;
  v26 = v19;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_10009AEDC;
  v24 = &unk_10089AE20;
  v20 = _Block_copy(&v21);
  swift_errorRetain();

  [a1 dismissViewControllerAnimated:1 completion:v20];
  _Block_release(v20);
}

uint64_t sub_1005B0F6C(void *a1)
{
  sub_1005B170C();
  v2 = swift_allocError();
  *v3 = 1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  *(v5 + 32) = 0;
  v8[4] = sub_1005B1798;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10009AEDC;
  v8[3] = &unk_10089ADD0;
  v6 = _Block_copy(v8);
  swift_errorRetain();

  [a1 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

char *sub_1005B1110(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10076F50C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_100940970 != -1)
    {
      swift_once();
    }

    v10 = sub_10076FD4C();
    sub_10000A61C(v10, qword_10095E860);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    swift_getErrorValue();
    v11 = v23[1];
    v12 = v24;
    v26 = v24;
    v13 = sub_10000DB7C(v25);
    (*(*(v12 - 1) + 16))(v13, v11, v12);
    sub_10076F30C();
    sub_10000CFBC(v25, &unk_1009434C0);
    sub_10076FBEC();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      goto LABEL_20;
    }

    v15 = Strong;
    if (*(Strong + OBJC_IVAR____TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate_outcome))
    {

      sub_10076FCAC();

LABEL_17:

      goto LABEL_20;
    }
  }

  else
  {
    v23[0] = v7;
    if (qword_100940970 != -1)
    {
      swift_once();
    }

    v16 = sub_10076FD4C();
    sub_10000A61C(v16, qword_10095E860);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    v26 = &type metadata for Bool;
    LOBYTE(v25[0]) = a3 & 1;
    sub_10076F30C();
    sub_10000CFBC(v25, &unk_1009434C0);
    sub_10076FBCC();

    if (a3)
    {
      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = v17;
      if (*(v17 + OBJC_IVAR____TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate_outcome))
      {

        v19 = v23[0];
        (*(v6 + 104))(v9, enum case for ActionOutcome.performed(_:), v23[0]);
        sub_10076FCBC();

        (*(v6 + 8))(v9, v19);
        goto LABEL_20;
      }
    }

    else
    {
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_20;
      }

      v18 = v20;
      if (*(v20 + OBJC_IVAR____TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate_outcome))
      {

        sub_1005B170C();
        swift_allocError();
        *v21 = 2;
        sub_10076FCAC();

        goto LABEL_17;
      }
    }
  }

LABEL_20:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&result[OBJC_IVAR____TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate_outcome] = 0;
  }

  return result;
}

unint64_t sub_1005B170C()
{
  result = qword_10095E8A8;
  if (!qword_10095E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095E8A8);
  }

  return result;
}

uint64_t sub_1005B1760()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005B17A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005B17C8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1005B1818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1005B1860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005B18B0()
{
  result = qword_10095E8B8;
  if (!qword_10095E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095E8B8);
  }

  return result;
}

unint64_t sub_1005B1908()
{
  result = qword_10095E8C0;
  if (!qword_10095E8C0)
  {
    sub_100760A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095E8C0);
  }

  return result;
}

uint64_t sub_1005B1960(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = OBJC_IVAR____TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate_outcome;
  if (*(v4 + OBJC_IVAR____TtCV20ProductPageExtension26SignInActionImplementationP33_F5BE4EF29D2E11041DC0D449BF950AC314SignInDelegate_outcome))
  {
    sub_1005B170C();
    swift_allocError();
    *v6 = 3;

    sub_10076FC2C();
  }

  sub_10000A5D4(&qword_100942C70);
  v7 = sub_10076FCEC();
  *(v4 + v5) = v7;

  v8 = [objc_allocWithZone(AAUISignInController) init];
  sub_10000A5D4(&unk_10095E8D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100783DD0;
  v10 = AIDAServiceTypeStore;
  *(v9 + 32) = AIDAServiceTypeStore;
  type metadata accessor for AIDAServiceType(0);
  v11 = v10;
  isa = sub_1007701AC().super.isa;

  [v8 setServiceTypes:isa];

  [v8 setDelegate:v4];
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1005B1BDC(v2, v19);
  v14 = swift_allocObject();
  sub_1005B1C6C(v19, (v14 + 2));
  v14[4] = v8;
  v14[5] = v7;
  v14[6] = a1;
  v18[4] = sub_1005B1CA4;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1005F04D8;
  v18[3] = &unk_10089AFD0;
  v15 = _Block_copy(v18);

  v16 = v8;

  [v16 prepareInViewController:Strong completion:v15];
  _Block_release(v15);

  return v7;
}

uint64_t sub_1005B1C14()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1005B1CD8(unsigned __int8 a1)
{
  sub_10076C8BC();
  sub_10076C2FC();
  if (a1 != 6)
  {
    if (a1 == 5)
    {

      sub_10076C22C();
    }

    else if (a1 == 4)
    {
      v2 = sub_10076C34C();
      if (v3)
      {
        if (v2 == 0x6972477961646F74 && v3 == 0xE900000000000064)
        {

LABEL_15:
          sub_10076C2BC();
          return;
        }

        v4 = sub_10077167C();

        if (v4)
        {
          goto LABEL_15;
        }
      }

      sub_10076C2FC();
    }

    else
    {

      sub_1005B1FD8(a1);
    }
  }
}

double sub_1005B1E18(unsigned __int8 a1, id a2)
{
  if (a1 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [a2 layoutDirection];
  sub_1007708DC();
  sub_1005B1CD8(a1);
  sub_10076C31C();
  sub_10076C31C();
  [a2 layoutDirection];
  sub_1007708DC();
  v5 = v4;
  sub_10076C24C();
  sub_1007706FC();
  sub_10076DACC();
  sub_10076DADC();
  return v5;
}

double sub_1005B1FD8(unsigned __int8 a1)
{
  sub_10076C8BC();
  sub_10076C2FC();
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_10076C21C();
      v6 = v5 + -1.0;
      sub_10076C22C();
      v8 = v7;
      sub_10076C2BC();
      v10 = v6 + -1.0;
      if (v6 + -1.0 < 0.0)
      {
        v10 = 0.0;
      }

      v11 = v8 * v6 + v9 * v10;
      sub_10076C24C();
      v13 = v12;
      sub_10076C2EC();
      v16 = v13 - (v14 + v15);
      sub_10076C2BC();
      v2 = v16 - v17 - v11;
    }

    else
    {
      sub_10076C24C();
      v19 = v18;
      sub_10076C2EC();
      v22 = v19 - (v20 + v21);
      sub_10076C22C();
      v24 = v22 - v23;
      sub_10076C2BC();
      v2 = v24 - v25;
    }
  }

  else if (a1)
  {
    v3 = v2;
    sub_10076C2BC();
    v2 = (v3 - v4) * 0.5;
  }

  return floor(v2);
}

double sub_1005B210C(uint64_t a1, void *a2, double a3)
{
  v118 = sub_10077164C();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10076DBAC();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10076DB9C();
  v8 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_10076DB5C();
  v10 = *(v121 - 8);
  __chkstk_darwin(v121);
  v109 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_10076DB6C();
  v125 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10076DB0C();
  v13 = *(v110 - 8);
  __chkstk_darwin(v110);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076997C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = a1;
  v20 = sub_10005312C();
  if (qword_100940DA0 != -1)
  {
    swift_once();
  }

  v98 = sub_10076D3DC();
  sub_10000A61C(v98, qword_1009A16D8);
  v122 = a2;
  v21 = [a2 traitCollection];
  v100 = v20;
  sub_100770B3C();

  v22 = sub_10076C04C();
  v135 = v22;
  v97 = sub_1005B30F8(&qword_100943230, &type metadata accessor for Feature);
  v136 = v97;
  v23 = sub_10000DB7C(&v134);
  v24 = *(v22 - 8);
  v25 = *(v24 + 104);
  v96 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v99 = v22;
  v95 = v25;
  v94 = v24 + 104;
  v25(v23);
  sub_10076C90C();
  sub_10000CD74(&v134);
  sub_10076996C();
  sub_10076994C();
  v26 = *(v17 + 8);
  v102 = v19;
  v104 = v16;
  v103 = v17 + 8;
  v93 = v26;
  v26(v19, v16);
  sub_10000A5D4(&qword_1009426C0);
  v27 = *(v8 + 72);
  v107 = v8;
  v120 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v101 = v27;
  v123 = swift_allocObject();
  v119 = xmmword_100783DD0;
  *(v123 + 1) = xmmword_100783DD0;
  v28 = v135;
  v29 = v136;
  v30 = sub_10000CF78(&v134, v135);
  v132 = v28;
  v133 = *(v29 + 8);
  v31 = sub_10000DB7C(&v131);
  (*(*(v28 - 8) + 16))(v31, v30, v28);
  v129 = &type metadata for Double;
  v130 = &protocol witness table for Double;
  v128 = 0;
  v32 = *(v13 + 104);
  v33 = v15;
  v91 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v34 = v110;
  v92 = v13 + 104;
  v90 = v32;
  v32(v15);
  v35 = v125;
  v36 = *(v125 + 104);
  v37 = v111;
  v88 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v38 = v112;
  v89 = v125 + 104;
  v87 = v36;
  v36(v111);
  v39 = sub_10000A5D4(&unk_100963750);
  v40 = *(v10 + 72);
  v41 = v10;
  v42 = *(v10 + 80);
  v43 = (v42 + 32) & ~v42;
  v84 = v42;
  v85 = v39;
  v83 = v43 + v40;
  v44 = swift_allocObject();
  *(v44 + 16) = v119;
  v86 = v43;
  sub_10076DB2C();
  v127[0] = v44;
  v45 = sub_1005B30F8(&qword_1009426B0, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v46 = sub_10000A5D4(&unk_100963760);
  v47 = sub_100016EDC();
  v48 = v109;
  v81 = v46;
  v80 = v47;
  v49 = v121;
  v82 = v45;
  sub_1007712CC();
  v50 = v124;
  sub_10076DB8C();
  v51 = *(v41 + 8);
  v105 = v41 + 8;
  v79 = v51;
  v51(v48, v49);
  v52 = *(v35 + 8);
  v125 = v35 + 8;
  v52(v37, v38);
  v78 = *(v13 + 8);
  v78(v33, v34);
  sub_1000F00E0(&v128);
  sub_10000CD74(&v131);
  if (*(v50 + 176) == 1)
  {
    v53 = v38;
    v54 = v52;
    v55 = v33;
    if (qword_100940DA8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v98, qword_1009A16F0);
    v56 = [v122 traitCollection];
    sub_100770B3C();

    v57 = v99;
    v132 = v99;
    v133 = v97;
    v58 = sub_10000DB7C(&v131);
    v95(v58, v96, v57);
    sub_10076C90C();
    sub_10000CD74(&v131);
    v59 = v102;
    sub_10076996C();
    sub_10076994C();
    v93(v59, v104);
    v60 = v132;
    v61 = v133;
    v62 = sub_10000CF78(&v131, v132);
    v129 = v60;
    v130 = *(v61 + 8);
    v63 = sub_10000DB7C(&v128);
    (*(*(v60 - 8) + 16))(v63, v62, v60);
    v127[4] = &protocol witness table for Double;
    v127[3] = &type metadata for Double;
    v127[0] = 0;
    v90(v55, v91, v34);
    v87(v37, v88, v53);
    v64 = swift_allocObject();
    *(v64 + 16) = v119;
    sub_10076DB2C();
    v126 = v64;
    v65 = v48;
    v66 = v121;
    sub_1007712CC();
    v67 = v124;
    v68 = v34;
    v69 = v106;
    sub_10076DB8C();
    v79(v65, v66);
    v54(v37, v53);
    v78(v55, v68);
    sub_1000F00E0(v127);
    sub_10000CD74(&v128);
    v70 = v123;
    v72 = v123[2];
    v71 = v123[3];
    if (v72 >= v71 >> 1)
    {
      v70 = sub_10049CEF0(v71 > 1, v72 + 1, 1, v123);
    }

    *(v70 + 2) = v72 + 1;
    (*(v107 + 32))(&v70[v120 + v72 * v101], v69, v108);
    sub_10000CD74(&v131);
  }

  else
  {
    v67 = v124;
  }

  v73 = v113;
  sub_10076DB7C();
  v74 = v116;
  sub_10076D2AC();
  sub_10000CF78((v67 + 96), *(v67 + 120));
  v75 = v115;
  sub_1000FF02C();
  sub_10076D40C();
  (*(v117 + 8))(v75, v118);
  (*(v114 + 8))(v73, v74);
  sub_10000CD74(&v134);
  return a3;
}

double sub_1005B2F20()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  v5 = v4;
  v6 = *(v1 + 8);
  v6(v3, v0);
  if (qword_10093FAE8 != -1)
  {
    swift_once();
  }

  sub_10076460C();
  sub_10076C24C();
  v8 = v7;
  v6(v3, v0);
  v9 = sub_10076461C();
  v10 = type metadata accessor for SnapshotPageTraitEnvironment();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v12 = v8;
  *(v12 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v11[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v9;
  v17.receiver = v11;
  v17.super_class = v10;
  v13 = objc_msgSendSuper2(&v17, "init");
  sub_1005B210C(&xmmword_10099D9E0, v13, v5);
  v15 = v14;

  return v15;
}

uint64_t sub_1005B30F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005B3140@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_10076D1AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[18] = &type metadata for Double;
  v26[19] = &protocol witness table for Double;
  v26[14] = &protocol witness table for Double;
  v26[15] = 0x4046000000000000;
  v26[13] = &type metadata for Double;
  v26[10] = 0x4030000000000000;
  v26[8] = &type metadata for Double;
  v26[9] = &protocol witness table for Double;
  v26[5] = 0x4020000000000000;
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v16 = sub_10000A61C(v5, qword_1009A0D90);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v4, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v2[13];
  v13(v4);
  v7 = sub_10076D9AC();
  v26[3] = v7;
  v26[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v26);
  v24 = v1;
  v25 = &protocol witness table for FontSource;
  v8 = sub_10000DB7C(v23);
  v9 = v2[2];
  v9(v8, v4, v1);
  sub_10076D9BC();
  v10 = v2[1];
  v10(v4, v1);
  v25 = &protocol witness table for Double;
  v24 = &type metadata for Double;
  v23[0] = 0;
  v15(v4, v16, v5);
  (v13)(v4, v14, v1);
  v22[3] = v7;
  v22[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v22);
  v20 = v1;
  v21 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v19);
  v9(v11, v4, v1);
  sub_10076D9BC();
  v10(v4, v1);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_100763E7C();
}

char *sub_1005B3488()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076E8DC();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10000A5D4(&qword_100959058);
  __chkstk_darwin(v4 - 8);
  v6 = &v30[-1] - v5;
  v7 = sub_100763E9C();
  __chkstk_darwin(v7 - 8);
  v9 = &v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v10, qword_1009A0D78);
  (*(v11 + 16))(v13, v14, v10);
  v15 = [objc_opt_self() currentTraitCollection];
  sub_1005B3140(v9);

  v16 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v1[OBJC_IVAR____TtC20ProductPageExtension24ArcadeFloatingBannerView_lockupView] = sub_1001AB12C(v13, v9, 0, 0.0, 0.0, 0.0, 0.0);
  v31.receiver = v1;
  v31.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v17 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v18 = v17;
  sub_1007708CC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v18 setLayoutMargins:{v20, v22, v24, v26}];
  [v18 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  sub_10076E67C();
  v27 = sub_10076E68C();
  (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
  sub_100770C8C();
  sub_10076E8CC();
  v30[3] = sub_10076E8EC();
  v30[4] = &protocol witness table for _Glass;
  sub_10000DB7C(v30);
  sub_10076E8FC();
  sub_100770BCC();

  [v18 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension24ArcadeFloatingBannerView_lockupView]];
  return v18;
}

double sub_1005B3AB4(uint64_t a1, int a2, int a3, void *a4)
{
  v159 = a4;
  v154 = a3;
  v167 = a2;
  v5 = sub_10000A5D4(&unk_1009542E0);
  v163 = *(v5 - 8);
  v164 = v5;
  __chkstk_darwin(v5);
  v162 = v146 - v6;
  v7 = sub_1007681FC();
  v155 = *(v7 - 8);
  v156 = v7;
  __chkstk_darwin(v7);
  v157 = v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076821C();
  v10 = *(v9 - 8);
  v160 = v9;
  v161 = v10;
  __chkstk_darwin(v9);
  v158 = v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076DA7C();
  v165 = *(v12 - 8);
  v166 = v12;
  __chkstk_darwin(v12);
  v173 = v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v182 = v146 - v15;
  __chkstk_darwin(v16);
  v183 = v146 - v17;
  __chkstk_darwin(v18);
  v184 = v146 - v19;
  __chkstk_darwin(v20);
  v185 = v146 - v21;
  __chkstk_darwin(v22);
  v181 = v146 - v23;
  __chkstk_darwin(v24);
  v186 = v146 - v25;
  __chkstk_darwin(v26);
  v175 = v146 - v27;
  v28 = sub_10076DD3C();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v152 = v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v153 = v146 - v32;
  __chkstk_darwin(v33);
  v35 = v146 - v34;
  __chkstk_darwin(v36);
  v180 = v146 - v37;
  __chkstk_darwin(v38);
  v149 = v146 - v39;
  __chkstk_darwin(v40);
  v150 = v146 - v41;
  __chkstk_darwin(v42);
  v172 = v146 - v43;
  __chkstk_darwin(v44);
  v147 = v146 - v45;
  __chkstk_darwin(v46);
  v148 = v146 - v47;
  __chkstk_darwin(v48);
  v177 = v146 - v49;
  __chkstk_darwin(v50);
  v178 = v146 - v51;
  __chkstk_darwin(v52);
  v179 = v146 - v53;
  __chkstk_darwin(v54);
  v187 = v146 - v55;
  __chkstk_darwin(v56);
  v58 = v146 - v57;
  __chkstk_darwin(v59);
  v171 = v146 - v60;
  __chkstk_darwin(v61);
  v63 = v146 - v62;
  __chkstk_darwin(v64);
  v66 = v146 - v65;
  __chkstk_darwin(v67);
  v69 = v146 - v68;
  __chkstk_darwin(v70);
  v176 = v146 - v71;
  v72 = sub_10076BC9C();
  if (v72)
  {
  }

  v168 = v72;
  v174 = v58;
  v189 = a1;
  v170 = v35;
  sub_10076DD2C();
  if (qword_100940C78 != -1)
  {
    swift_once();
  }

  v190 = sub_10076D3DC();
  sub_10000A61C(v190, qword_1009A1360);
  sub_10076DCFC();
  v73 = v29;
  v76 = *(v29 + 8);
  v74 = v29 + 8;
  v75 = v76;
  v76(v63, v28);
  v77 = v28;
  v78 = v167;
  v146[3] = ~v167;
  sub_10076DD1C();
  v76(v66, v77);
  v79 = (v78 & 1) == 0;
  v80 = v77;
  if (v79)
  {
    v81 = 4;
  }

  else
  {
    v81 = 0;
  }

  v146[2] = v81;
  sub_10076DD0C();
  v192 = v75;
  v193 = v74;
  v75(v69, v77);
  v82 = sub_10076BC5C();
  if (v82)
  {
    v83 = v82;
    sub_100764D0C();
  }

  v84 = *(v73 + 16);
  v188 = v73 + 16;
  v191 = v84;
  v84(v63, v176, v77);
  sub_10076DA5C();
  sub_10076DA9C();
  v151 = sub_10076DDDC();
  swift_allocObject();
  v169 = sub_10076DD9C();
  v85 = v187;
  sub_10076DD2C();
  if (qword_100940C90 != -1)
  {
    swift_once();
  }

  v86 = sub_10000A61C(v190, qword_1009A13A8);
  v87 = v174;
  v146[1] = v86;
  sub_10076DCFC();
  v88 = v192;
  v192(v85, v80);
  sub_10076DD1C();
  v88(v87, v80);
  v89 = v171;
  sub_10076DD0C();
  v88(v63, v80);
  sub_10076BC8C();
  v90 = v89;
  v91 = v191;
  v191(v63, v90, v80);
  sub_10076DA5C();
  v92 = v187;
  sub_10076DA9C();
  sub_10076DD2C();
  if (qword_100940C98 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v190, qword_1009A13C0);
  sub_10076DCFC();
  v88(v92, v80);
  sub_10076DD1C();
  v88(v87, v80);
  sub_10076DD0C();
  v88(v63, v80);
  v93 = sub_10076BC2C();
  if (v93)
  {
    v94 = v93;
    sub_100764D0C();

    v91 = v191;
  }

  v91(v63, v179, v80);
  sub_10076DA5C();
  sub_10076DA9C();
  v95 = v187;
  sub_10076DD2C();
  if (qword_100940CA0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v190, qword_1009A13D8);
  v96 = v174;
  sub_10076DCFC();
  v97 = v192;
  v192(v95, v80);
  sub_10076DD1C();
  v97(v96, v80);
  sub_10076DD0C();
  v97(v63, v80);
  v98 = sub_10076BC3C();
  if (v98)
  {
    v99 = v98;
    sub_100764D0C();

    v191(v63, v178, v80);
  }

  else
  {
    v91(v63, v178, v80);
  }

  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DD2C();
  if (qword_100940C88 != -1)
  {
    swift_once();
  }

  v100 = sub_10000A61C(v190, qword_1009A1390);
  v101 = v147;
  v146[0] = v100;
  sub_10076DCFC();
  v102 = v192;
  v192(v63, v80);
  v103 = v148;
  sub_10076DD1C();
  v102(v101, v80);
  sub_10076DD0C();
  v102(v103, v80);
  v104 = sub_10076BC7C();
  if (v104)
  {
    v105 = v104;
    sub_100764D0C();
  }

  v106 = v191;
  v191(v63, v177, v80);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DD2C();
  v107 = v190;
  if (qword_100940C80 != -1)
  {
    v145 = v190;
    swift_once();
    v107 = v145;
  }

  sub_10000A61C(v107, qword_1009A1378);
  v108 = v149;
  sub_10076DCFC();
  v109 = v192;
  v192(v63, v80);
  v110 = v150;
  sub_10076DD1C();
  v109(v108, v80);
  v111 = v172;
  sub_10076DD0C();
  v109(v110, v80);
  v203._object = 0x80000001007E1420;
  v203._countAndFlagsBits = 0xD000000000000012;
  v204._countAndFlagsBits = 0;
  v204._object = 0xE000000000000000;
  sub_1007622EC(v203, v204);
  v106(v63, v111, v80);
  sub_10076DA5C();
  sub_10076DA9C();
  v112 = v187;
  sub_10076DD2C();
  v113 = v174;
  sub_10076DCFC();
  v114 = v109;
  v109(v112, v80);
  sub_10076DD1C();
  v109(v113, v80);
  sub_10076DD0C();
  v109(v63, v80);
  v115 = sub_10076BC9C();
  v116 = v173;
  if (v115)
  {
    sub_10076C3DC();

    v114 = v192;
  }

  v191(v63, v180, v80);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DD2C();
  v117 = v152;
  sub_10076DCFC();
  v114(v63, v80);
  v118 = v153;
  sub_10076DD1C();
  v114(v117, v80);
  v119 = v170;
  sub_10076DD0C();
  v114(v118, v80);
  if (sub_10076BC9C())
  {
    v120 = sub_10076C3CC();

    if (v120)
    {
      sub_100764D0C();
    }
  }

  v191(v63, v119, v80);
  sub_10076DA5C();
  sub_10076DA9C();
  v121 = v116;
  if (qword_1009412A8 != -1)
  {
    swift_once();
  }

  v122 = v156;
  v123 = sub_10000A61C(v156, qword_1009A2578);
  (*(v155 + 16))(v157, v123, v122);
  v124 = v166;
  v202[3] = v166;
  v202[4] = &protocol witness table for LabelPlaceholder;
  v125 = sub_10000DB7C(v202);
  v126 = v165;
  v127 = *(v165 + 16);
  v127(v125, v175, v124);
  v201[3] = v124;
  v201[4] = &protocol witness table for LabelPlaceholder;
  v128 = sub_10000DB7C(v201);
  v127(v128, v186, v124);
  v200[3] = v124;
  v200[4] = &protocol witness table for LabelPlaceholder;
  v129 = sub_10000DB7C(v200);
  v127(v129, v181, v124);
  v199[3] = v124;
  v199[4] = &protocol witness table for LabelPlaceholder;
  v130 = sub_10000DB7C(v199);
  v127(v130, v185, v124);
  v198[3] = v124;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v131 = sub_10000DB7C(v198);
  v127(v131, v184, v124);
  v197[3] = v124;
  v197[4] = &protocol witness table for LabelPlaceholder;
  v132 = sub_10000DB7C(v197);
  v127(v132, v183, v124);
  v196[3] = v124;
  v196[4] = &protocol witness table for LabelPlaceholder;
  v133 = sub_10000DB7C(v196);
  v127(v133, v182, v124);
  v195[3] = v124;
  v195[4] = &protocol witness table for LabelPlaceholder;
  v134 = sub_10000DB7C(v195);
  v127(v134, v121, v124);
  v194 = v169;
  sub_10076D2DC();
  v135 = v158;
  sub_10076820C();
  v136 = [v159 traitCollection];
  sub_1005B55D4(&qword_1009605D0, &type metadata accessor for ProductReviewCustomLayout);
  v137 = v162;
  v138 = v160;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v139 = v164;
  sub_10076E0FC();
  v141 = v140;

  (*(v163 + 8))(v137, v139);
  (*(v161 + 8))(v135, v138);
  v142 = *(v126 + 8);
  v142(v173, v124);
  v143 = v192;
  v192(v170, v80);
  v142(v182, v124);
  v143(v180, v80);
  v142(v183, v124);
  v143(v172, v80);
  v142(v184, v124);
  v143(v177, v80);
  v142(v185, v124);
  v143(v178, v80);
  v142(v181, v124);
  v143(v179, v80);
  v142(v186, v124);
  v143(v171, v80);
  v142(v175, v124);
  v143(v176, v80);
  return v141;
}

double sub_1005B4ED0()
{
  v0 = sub_10000A5D4(&qword_10094DC40);
  v47 = *(v0 - 8);
  __chkstk_darwin(v0);
  v46 = &v36 - v1;
  v45 = sub_10076664C();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v43 = &v36 - v4;
  v50 = sub_10000A5D4(&unk_1009520A0);
  v42 = *(v50 - 8);
  __chkstk_darwin(v50);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v36 - v7;
  v8 = sub_10000A5D4(&unk_100946720);
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v48 = sub_10076C38C();
  v11 = *(v48 - 8);
  __chkstk_darwin(v48);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076BCAC();
  v15 = sub_1005B55D4(&qword_100952E68, &type metadata accessor for Review);
  sub_10076332C();
  v16 = v53[0];
  if (!v53[0])
  {
    return 0.0;
  }

  swift_getKeyPath();
  v38 = v0;
  sub_10076338C();

  sub_10076C24C();
  v18 = v17;
  v37 = *(v11 + 8);
  v37(v13, v48);
  swift_getKeyPath();
  sub_10076338C();

  v19 = v53[0];
  v20 = type metadata accessor for SnapshotPageTraitEnvironment();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v22 = v18;
  *(v22 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v19;
  v54.receiver = v21;
  v54.super_class = v20;
  v23 = objc_msgSendSuper2(&v54, "init");
  v53[3] = v14;
  v53[4] = v15;
  v53[0] = v16;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v39 + 8))(v10, v8);

  v24 = v49;
  sub_1007633DC();
  v25 = v43;
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v37(v13, v48);
  sub_10000A570(v53, v51);
  v26 = v23;
  sub_10000A5D4(&qword_1009575A0);
  swift_dynamicCast();
  v27 = v42;
  (*(v42 + 16))(v40, v24, v50);
  sub_10076FCFC();
  v28 = v46;
  sub_10076FDBC();
  v29 = v52;
  v30 = v41;
  sub_1007665CC();
  sub_1005B55D4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v31 = v45;
  LOBYTE(v20) = sub_10077124C();
  v32 = *(v44 + 8);
  v32(v30, v31);
  sub_1005B3AB4(v29, v20 & 1, v20 & 1, v26);
  v34 = v33;

  (*(v47 + 8))(v28, v38);
  v32(v25, v31);
  (*(v27 + 8))(v49, v50);

  sub_10000CD74(v53);
  return v34;
}

uint64_t sub_1005B55D4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1005B5620(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_pageView;
  type metadata accessor for ArcadeDownloadPackCategoriesPageView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_continueButton;
  *&v2[v6] = [objc_opt_self() boldButton];
  v7 = OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_skipButton;
  *&v2[v7] = [objc_opt_self() linkButton];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_presenter] = a1;
  v8 = *&v2[v5];
  swift_retain_n();
  v9 = v8;

  v10 = sub_1005B6024(a1, v9, a2, v2, &off_100886688);
  sub_1005B5FD8(&qword_10095E970);
  v11 = v10;

  sub_10076AD8C();

  [*&v11[OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_continueButton] addTarget:v11 action:"didTapContinueButton" forControlEvents:64];
  [*&v11[OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_skipButton] addTarget:v11 action:"didTapSkipButton" forControlEvents:64];

  return v11;
}

void sub_1005B595C(uint64_t a1)
{
  v2 = v1;
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10007C3DC(a1, v17, sub_1005B615C, v4);

  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_continueButton];
  sub_10076A17C();
  sub_10076B8EC();
  v7 = v6;

  if (v7)
  {
    v8 = sub_10076FF6C();
  }

  else
  {
    v8 = 0;
  }

  [v5 setTitle:v8 forState:0];

  v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_skipButton];
  sub_10076A16C();
  sub_10076B8EC();
  v11 = v10;

  if (v11)
  {
    v12 = sub_10076FF6C();
  }

  else
  {
    v12 = 0;
  }

  [v9 setTitle:v12 forState:0];

  v13 = sub_10076FF6C();
  [v5 setAccessibilityIdentifier:v13];

  v14 = sub_10076FF6C();
  [v9 setAccessibilityIdentifier:v14];

  v15 = [v2 buttonTray];
  [v15 addButton:v5];

  v16 = [v2 buttonTray];
  [v16 addButton:v9];

  sub_10073042C();
}

uint64_t sub_1005B5BFC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_10076AD9C();
  }

  return result;
}

id sub_1005B5C7C()
{
  v1 = [v0 buttonTray];
  sub_10076B2AC();
  v2 = sub_10076FF6C();

  [v1 setCaptionText:v2 style:2];

  v3 = sub_10076B2CC();
  sub_1005A6B00(v3 & 1);
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_continueButton];
  v5 = sub_10076B2BC() & 1;

  return [v4 setEnabled:v5];
}

uint64_t sub_1005B5D64()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_objectGraph];
  sub_10076AE6C();
  swift_allocObject();
  swift_retain_n();

  sub_10076AE1C();
  v3 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackSuggestionsViewController());

  v5 = sub_100614384(v4, v2);
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v5 animated:1];
  }
}

void sub_1005B5E74()
{

  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension42ArcadeDownloadPackCategoriesViewController_skipButton);
}

uint64_t sub_1005B5FD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArcadeDownloadPackCategoriesViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1005B6024(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  *&a4[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_overlayViewController] = 0;
  *&a4[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_presenter] = a1;
  *&a4[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_objectGraph] = a3;
  v7 = &a4[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_pageView];
  *v7 = a2;
  *(v7 + 1) = a5;
  v8 = &a4[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_lifecycleObserver];
  *(v8 + 3) = sub_100760CCC();
  *(v8 + 4) = &protocol witness table for BasePresenter;
  *v8 = a1;
  swift_retain_n();

  v9 = sub_10076FF6C();
  v12.receiver = a4;
  v12.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v9, 0, 0, 2);

  return v10;
}

uint64_t sub_1005B6124()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1005B6164()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView];
  v2 = OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category) = 0;

  sub_100103A50();
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_10075FCEC(v6, v3);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;

  *(v1 + v2) = 0;

  sub_100103A50();
  return [v0 setNeedsLayout];
}

uint64_t type metadata accessor for PrivacyCategoryCollectionViewCell()
{
  result = qword_10095E9A8;
  if (!qword_10095E9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005B6514()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_1005B65BC()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_itemLayoutContext;
  v4 = sub_10076341C();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  *&v0[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 contentView];
  [v6 setClipsToBounds:0];

  v7 = [v5 contentView];
  [v7 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v8 = [v5 contentView];
  sub_1000325F0();
  v9 = sub_100770D2C();
  [v8 setBackgroundColor:v9];

  v10 = [v5 contentView];
  [v10 addSubview:*&v5[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView]];

  return v5;
}

double sub_1005B67E8(void *a1)
{
  v2 = sub_10076048C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  if (qword_10093FF68 != -1)
  {
    swift_once();
  }

  v29.is_nil = qword_10099E8A8;
  v29.value._rawValue = 0;
  isa = sub_1007706DC(v29, v7).super.isa;
  v27 = isa;

  v28 = UIFontTextStyleHeadline;
  v10 = objc_opt_self();
  v11 = [v10 configurationWithTextStyle:UIFontTextStyleHeadline scale:2];
  v12 = *(v3 + 104);
  v12(v6, enum case for SystemImage.star(_:), v2);
  v13 = [v11 configurationWithTraitCollection:isa];
  v14 = sub_10076046C();

  v15 = *(v3 + 8);
  v15(v6, v2);
  [v14 contentInsets];
  v17 = v16;
  [v14 contentInsets];
  v19 = v17 + v18;
  [v14 size];
  v21 = v20 - v19;
  [v14 contentInsets];
  [v14 contentInsets];
  [v14 size];

  v22 = [v10 configurationWithTextStyle:v28 scale:2];
  v12(v6, enum case for SystemImage.starFill(_:), v2);
  v23 = v27;
  v24 = [v22 configurationWithTraitCollection:v27];
  v25 = sub_10076046C();

  v15(v6, v2);
  sub_100770E5C();
  [v25 contentInsets];

  return v21 * 5.0 + 24.0;
}

id sub_1005B6B2C(void *a1)
{
  if (qword_10093FF60 != -1)
  {
    swift_once();
  }

  v2 = qword_10099E8A0;
  if (sub_10077086C())
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

double sub_1005B6BA8(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  v4 = sub_10008B31C(v3, a2);

  return v4;
}

double sub_1005B6C20(uint64_t a1, void *a2, int a3)
{
  v92 = a3;
  v98 = a2;
  v4 = sub_10076E07C();
  v94 = *(v4 - 8);
  v95 = v4;
  __chkstk_darwin(v4);
  v93 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076D7FC();
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin(v6);
  v88 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v79 = v75 - v9;
  v10 = sub_10076D1AC();
  v86 = *(v10 - 8);
  v87 = v10;
  __chkstk_darwin(v10);
  v85 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D3DC();
  v83 = *(v12 - 8);
  v84 = v12;
  __chkstk_darwin(v12);
  v81 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_10076DD3C();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v15 = v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v75 - v17;
  v19 = sub_10076DA7C();
  v91 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v75 - v23;
  __chkstk_darwin(v25);
  v27 = v75 - v26;
  v28 = sub_10076C0BC();
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    type metadata accessor for ProductNoRatingsView();
    v32 = v98;
    swift_getObjectType();
    v33 = sub_10010FE20(v30, v31, v32);
  }

  else
  {
    v75[0] = v15;
    v75[1] = v18;
    v97 = v27;
    v78 = v21;
    sub_10076C0AC();
    v35 = v34;
    v36 = objc_allocWithZone(NSNumber);
    LODWORD(v37) = v35;
    v106.value.super.super.isa = [v36 initWithFloat:v37];
    isa = v106.value.super.super.isa;
    v106.is_nil = 1;
    sub_10076858C(v106, v39);
    v41 = v40;

    v77 = v19;
    v96 = v24;
    v75[2] = a1;
    if (!v41)
    {
      sub_10076C0AC();
      sub_10077037C();
    }

    sub_10000A5D4(&unk_10094E7E0);
    inited = swift_initStackObject();
    *(inited + 32) = NSKernAttributeName;
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 64) = &type metadata for CGFloat;
    *(inited + 40) = 0xC010000000000000;
    v43 = NSKernAttributeName;
    sub_1000FC5F4(inited);
    swift_setDeallocating();
    sub_1001E4F90(inited + 32);
    v44 = objc_allocWithZone(NSAttributedString);
    v45 = sub_10076FF6C();

    type metadata accessor for Key(0);
    sub_1005B7A9C(&qword_100943320, type metadata accessor for Key);
    v46 = sub_10076FE3C().super.isa;

    v47 = [v44 initWithString:v45 attributes:v46];

    v76 = v47;
    v48 = v75[0];
    sub_10076DD2C();
    if (qword_10093FF58 != -1)
    {
      swift_once();
    }

    v49 = sub_10000A5D4(&qword_10094C390);
    sub_10000A61C(v49, qword_10099E888);
    v101[0] = [v98 snapshotPageTraitEnvironment];
    v50 = v81;
    sub_10075FDCC();
    swift_unknownObjectRelease();
    sub_10076DCFC();
    v52 = v83;
    v51 = v84;
    (*(v83 + 8))(v50, v84);
    (*(v80 + 8))(v48, v82);
    sub_10076DA5C();
    sub_10076DABC();
    v81 = sub_10076DDDC();
    swift_allocObject();
    v82 = sub_10076DD9C();
    v53 = v88;
    if (qword_100940C60 != -1)
    {
      swift_once();
    }

    v54 = sub_10000A61C(v51, qword_1009A1318);
    v55 = v85;
    (*(v52 + 16))(v85, v54, v51);
    v57 = v86;
    v56 = v87;
    (*(v86 + 104))(v55, enum case for FontSource.useCase(_:), v87);
    v58 = sub_10076D18C();
    (*(v57 + 8))(v55, v56);
    v107._object = 0x80000001007E0020;
    v107._countAndFlagsBits = 0xD000000000000012;
    v109._countAndFlagsBits = 0;
    v109._object = 0xE000000000000000;
    sub_100767D6C(v107, 5, v109);
    sub_10076D7EC();
    sub_10076D7DC();
    v59 = v90;
    v60 = v89[1];
    v60(v53, v90);
    sub_10076DA5C();
    sub_10076DA8C();
    v61 = sub_10076C08C();
    v108._countAndFlagsBits = 0xD000000000000013;
    v108._object = 0x80000001007D1550;
    v110._countAndFlagsBits = 0;
    v110._object = 0xE000000000000000;
    sub_100767D6C(v108, v61, v110);
    sub_10076D7EC();
    v89 = v58;
    sub_10076D7DC();
    v60(v53, v59);
    sub_10076DA5C();
    sub_10076DA8C();
    swift_allocObject();
    v90 = sub_10076DD9C();
    v62 = v91;
    if (qword_10093FF50 != -1)
    {
      swift_once();
    }

    sub_100083890(&xmmword_10099E7A8, v101);
    v63 = v77;
    v102[3] = v77;
    v102[4] = &protocol witness table for LabelPlaceholder;
    v64 = sub_10000DB7C(v102);
    v65 = *(v62 + 16);
    v65(v64, v97, v63);
    v100 = v82;
    sub_10076D2DC();
    v103[3] = v63;
    v103[4] = &protocol witness table for LabelPlaceholder;
    v66 = sub_10000DB7C(v103);
    v65(v66, v96, v63);
    v104[3] = v63;
    v104[4] = &protocol witness table for LabelPlaceholder;
    v67 = sub_10000DB7C(v104);
    v68 = v78;
    v65(v67, v78, v63);
    v99 = v90;
    sub_10076D2DC();
    v105 = v92 & 1;
    v69 = [v98 traitCollection];
    v70 = v93;
    sub_100082D78();
    v71 = v95;
    sub_10076E0FC();
    v33 = v72;

    (*(v94 + 8))(v70, v71);
    sub_1005B7740(v101);
    v73 = *(v62 + 8);
    v73(v68, v63);
    v73(v96, v63);
    v73(v97, v63);
  }

  return v33;
}

double sub_1005B7794()
{
  v0 = sub_10076B6EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C0CC();
  sub_1005B7A9C(&qword_10094F090, &type metadata accessor for Ratings);
  sub_10076332C();
  if (!v18)
  {
    return 0.0;
  }

  v17 = v18;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v8 + 8))(v10, v7);
  v11 = sub_100630CB4();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076B68C();
  sub_1005B7A9C(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v12 = sub_10077124C();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);
  sub_1005B6C20(v17, v11, v12 & 1);
  v15 = v14;
  swift_unknownObjectRelease();

  return v15;
}

uint64_t sub_1005B7A9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005B7AE4(char *a1)
{
  v2 = v1;
  v4 = sub_10075E57C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  sub_10075FC9C();
  sub_10075FCAC();
  sub_10075FC9C();
  sub_10075FCAC();
  v11 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, &a1[v11], v4);
  v13 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v13], v10, v4);
  swift_endAccess();
  v12(v7, &v2[v13], v4);
  sub_1005B84F8(v7);
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  v15 = [a1 backgroundColor];
  [v2 setBackgroundColor:v15];
}

UIColor sub_1005B7D14()
{
  sub_100016F40(0, &qword_100942F10);
  v0 = [objc_opt_self() whiteColor];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v2.super.isa = v0;
  result.super.isa = sub_100770DEC(v2, v1).super.isa;
  qword_10095E9D0 = result.super.isa;
  return result;
}

char *sub_1005B7DD4(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v6 - 8);
  v60 = &v51[-v7];
  v8 = sub_10076BF6C();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v54 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10075E57C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_smallCornerRadius] = 0x4010000000000000;
  v14 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkContainingView;
  *&v3[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView;
  v16 = sub_10075FD2C();
  *&v3[v15] = sub_10075FB5C();
  (*(v11 + 104))(&v3[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme], enum case for InAppPurchaseTheme.infer(_:), v10);
  v57 = a2;
  v3[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_iconType] = a2;
  v17 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_metrics;
  v18 = sub_10075E77C();
  v58 = *(v18 - 8);
  v59 = v18;
  (*(v58 + 16))(&v3[v17], a1);
  v61 = a1;
  sub_10075E75C();
  v20 = v19;
  v21 = type metadata accessor for PlusView();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC20ProductPageExtension8PlusView_plusColor] = 0;
  *&v22[OBJC_IVAR____TtC20ProductPageExtension8PlusView_lineThickness] = v20;
  v63.receiver = v22;
  v63.super_class = v21;
  v23 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 clearColor];
  [v25 setBackgroundColor:v26];

  *&v3[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_plusView] = v25;
  v27 = [objc_allocWithZone(v16) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView] = v27;
  if (v52 == 2)
  {
    v28 = [objc_allocWithZone(type metadata accessor for InAppBlendedBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v28 setClipsToBounds:1];
  }

  else
  {
    v28 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  *&v3[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_backgroundView] = v28;
  v62.receiver = v3;
  v62.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v33 = v29;
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v34 = v61;
  if (sub_10075E71C())
  {
    v35 = 8.0;
  }

  else
  {
    v35 = 4.0;
  }

  ObjectType = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_backgroundView;
  [*&v33[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_backgroundView] _setCornerRadius:v35];
  v36 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkContainingView;
  [*&v33[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkContainingView] _setCornerRadius:v35];
  [*&v33[v36] setClipsToBounds:1];
  v37 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v33[v37], v10);
  sub_1005B84F8(v13);
  (*(v11 + 8))(v13, v10);
  v38 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView;
  v39 = *&v33[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView];
  (*(v55 + 104))(v54, enum case for Artwork.Style.iap(_:), v56);
  v40 = v39;
  sub_10075FCCC();

  v41 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView;
  [*&v33[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView] setHidden:v57 != 1];
  v42 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_plusView;
  v43 = *&v33[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_plusView];
  [v43 setHidden:(sub_10075E74C() & 1) == 0];

  v44 = qword_10093F870;
  v45 = *&v33[v41];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_10076BCFC();
  v47 = sub_10000A61C(v46, qword_10099D3F0);
  v48 = *(v46 - 8);
  v49 = v60;
  (*(v48 + 16))(v60, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  sub_10075FCDC();

  [v33 addSubview:*(ObjectType + v33)];
  [v33 addSubview:*&v33[v36]];
  [*&v33[v36] addSubview:*&v33[v38]];
  [v33 insertSubview:*&v33[v42] aboveSubview:*&v33[v36]];
  [v33 addSubview:*&v33[v41]];

  (*(v58 + 8))(v34, v59);
  return v33;
}

void sub_1005B84F8(uint64_t a1)
{
  v3 = sub_10075E57C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for InAppPurchaseTheme.infer(_:) || v7 == enum case for InAppPurchaseTheme.light(_:) || v7 == enum case for InAppPurchaseTheme.dark(_:))
  {
    if (qword_100940978 != -1)
    {
      swift_once();
    }

    v10 = qword_10095E9C8;
    goto LABEL_16;
  }

  if (v7 == enum case for InAppPurchaseTheme.spotlight(_:))
  {
    if (qword_100940980 != -1)
    {
      swift_once();
    }

    v10 = qword_10095E9D0;
LABEL_16:
    v11 = v10;
    goto LABEL_20;
  }

  if (qword_100940978 != -1)
  {
    swift_once();
  }

  v12 = *(v4 + 8);
  v11 = qword_10095E9C8;
  v12(v6, v3);
LABEL_20:
  if (v1[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_iconType] != 2)
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_backgroundView] setBackgroundColor:v11];
  }

  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_plusView];
  if (qword_100940988 != -1)
  {
    swift_once();
  }

  v14 = qword_10095E9D8;
  v15 = *&v13[OBJC_IVAR____TtC20ProductPageExtension8PlusView_plusColor];
  *&v13[OBJC_IVAR____TtC20ProductPageExtension8PlusView_plusColor] = qword_10095E9D8;
  v16 = v14;

  [v13 setNeedsDisplay];
  [v1 setNeedsDisplay];
}

uint64_t sub_1005B87E4()
{
  ObjectType = swift_getObjectType();
  v57 = ObjectType;
  v2 = sub_10075FEEC();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076BF6C();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v44 - v7;
  __chkstk_darwin(v8);
  v47 = &v44 - v9;
  v10 = sub_10076D1FC();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v54 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10075E77C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v15;
  v16 = sub_10075E79C();
  v58 = *(v16 - 8);
  v59 = v16;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = (&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78.receiver = v0;
  v78.super_class = ObjectType;
  objc_msgSendSuper2(&v78, "layoutSubviews", v17);
  (*(v13 + 16))(v15, &v0[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_metrics], v12);
  v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView];
  v21 = sub_10075FD2C();
  v76 = v21;
  v77 = &protocol witness table for UIView;
  v75 = v20;
  v22 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkContainingView];
  v73 = sub_100016F40(0, &qword_1009441F0);
  v74 = &protocol witness table for UIView;
  v71 = &protocol witness table for UIView;
  v72 = v22;
  v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_backgroundView];
  v70 = v73;
  v69 = v23;
  v24 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_plusView];
  v67 = type metadata accessor for PlusView();
  v68 = &protocol witness table for UIView;
  v65 = &protocol witness table for UIView;
  v66 = v24;
  v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_tileIconArtworkView];
  v64 = v21;
  v63 = v25;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v30 = v25;
  sub_10075E78C();
  sub_10076422C();
  v31 = v54;
  v53 = v0;
  v57 = v19;
  sub_10075E6CC();
  (v55)[1](v31, v56);
  if (([v30 isHidden] & 1) == 0)
  {
    sub_10075FC7C();
    v32 = v45;
    sub_10075FCBC();
    v55 = v27;
    v56 = v29;
    v34 = v48;
    v33 = v49;
    v35 = v46;
    (*(v48 + 104))(v46, enum case for Artwork.Style.roundedRect(_:), v49);
    v36 = v28;
    v37 = v47;
    sub_10076BF2C();
    v38 = *(v34 + 8);
    v38(v35, v33);
    v38(v32, v33);
    sub_10076BF3C();
    v38(v37, v33);
    v40 = v50;
    v39 = v51;
    v41 = v52;
    (*(v51 + 104))(v50, enum case for CornerStyle.arc(_:), v52);
    sub_10075FD1C();
    v42 = v40;
    v29 = v56;
    (*(v39 + 8))(v42, v41);
    sub_1005B8DB8(v30, v36);
    sub_1005B8DB8(v30, v55);
  }

  [v29 setNeedsDisplay];
  return (*(v58 + 8))(v57, v59);
}

void sub_1005B8DB8(void *a1, id a2)
{
  [a2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRect:{v6, v8, v10, v12}];
  [a1 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [a2 frame];
  v57.origin.x = v23;
  v57.origin.y = v24;
  v57.size.width = v25;
  v57.size.height = v26;
  v53.origin.x = v16;
  v53.origin.y = v18;
  v53.size.width = v20;
  v53.size.height = v22;
  v54 = CGRectIntersection(v53, v57);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  sub_10075E76C();
  v32 = -v31;
  sub_10075E76C();
  v34 = -v33;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v56 = CGRectInset(v55, v32, v34);
  [v2 convertRect:a2 toCoordinateSpace:{v56.origin.x, v56.origin.y, v56.size.width, v56.size.height}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_10076390C();
  v44 = v43;
  sub_10076390C();
  v46 = [v13 bezierPathWithRoundedRect:2 byRoundingCorners:v36 cornerRadii:{v38, v40, v42, v44, v45}];
  v47 = [v46 bezierPathByReversingPath];

  [v14 appendPath:v47];
  v48 = [objc_allocWithZone(CAShapeLayer) init];
  v49 = [v14 CGPath];
  [v48 setPath:v49];

  v50 = [a2 layer];
  [v50 setMasksToBounds:1];

  v51 = [a2 layer];
  [v51 setMask:v48];
}

uint64_t type metadata accessor for InAppPurchaseView()
{
  result = qword_10095EA38;
  if (!qword_10095EA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005B9290()
{
  result = sub_10075E57C();
  if (v1 <= 0x3F)
  {
    result = sub_10075E77C();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_1005B9388(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v10 - 8);
  v48 = &v45 - v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_topLayer;
  *&v4[v12] = [objc_allocWithZone(CALayer) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_bottomLayer;
  *&v4[v13] = [objc_allocWithZone(CALayer) init];
  v14 = OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_blurView;
  *&v4[v14] = [objc_allocWithZone(UIVisualEffectView) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_shadowView] = 0;
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_topLayer;
  v17 = *&v15[OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_topLayer];
  v18 = objc_opt_self();
  v19 = v15;
  v20 = v17;
  v21 = [v18 whiteColor];
  v22 = [v21 colorWithAlphaComponent:0.5];

  v23 = [v22 CGColor];
  [v20 setBackgroundColor:v23];

  v46 = v16;
  v47 = v15;
  [*&v15[v16] setCompositingFilter:kCAFilterScreenBlendMode];
  v24 = OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_bottomLayer;
  v25 = *&v19[OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_bottomLayer];
  v26 = [v18 whiteColor];
  v27 = [v26 colorWithAlphaComponent:0.8];

  v28 = [v27 CGColor];
  [v25 setBackgroundColor:v28];

  [*&v19[v24] setCompositingFilter:kCAFilterOverlayBlendMode];
  v29 = OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_blurView;
  v30 = *&v19[OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_blurView];
  sub_10000A5D4(&unk_100942870);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100785D70;
  v32 = objc_opt_self();
  v33 = v30;
  result = [v32 effectWithBlurRadius:50.0];
  if (result)
  {
    *(v31 + 32) = result;
    *(v31 + 40) = [objc_opt_self() colorEffectSaturate:1.4];
    sub_100016F40(0, &qword_1009492C0);
    isa = sub_1007701AC().super.isa;

    [v33 setBackgroundEffects:isa];

    v36 = v19;
    v37 = [v36 layer];
    [v37 addSublayer:*&v19[v24]];

    v38 = [v36 layer];
    [v38 addSublayer:*&v47[v46]];

    [v36 addSubview:*&v19[v29]];
    v39 = [objc_allocWithZone(sub_10075F99C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    if (qword_10093F918 != -1)
    {
      swift_once();
    }

    v40 = sub_10076BCFC();
    v41 = sub_10000A61C(v40, qword_10099D5E8);
    v42 = *(v40 - 8);
    v43 = v48;
    (*(v42 + 16))(v48, v41, v40);
    (*(v42 + 56))(v43, 0, 1, v40);
    sub_10075F97C();
    [v36 insertSubview:v39 belowSubview:*&v19[v29]];
    v44 = *&v36[OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_shadowView];
    *&v36[OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_shadowView] = v39;

    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005B9914()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_topLayer];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_bottomLayer];
  [v0 bounds];
  [v2 setFrame:?];

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_blurView];
  [v0 bounds];
  [v3 setFrame:?];

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_shadowView];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 setFrame:?];
  }
}

unint64_t sub_1005B9B14()
{
  result = qword_10095EA90;
  if (!qword_10095EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095EA90);
  }

  return result;
}

void sub_1005B9B68()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_smallCornerRadius) = 0x4010000000000000;
  v2 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkContainingView;
  *(v1 + v2) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView;
  sub_10075FD2C();
  *(v1 + v3) = sub_10075FB5C();
  v4 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_theme;
  v5 = enum case for InAppPurchaseTheme.infer(_:);
  v6 = sub_10075E57C();
  (*(*(v6 - 8) + 104))(v1 + v4, v5, v6);
  sub_10077156C();
  __break(1u);
}

void sub_1005B9C80()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_topLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_bottomLayer;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_blurView;
  *(v0 + v3) = [objc_allocWithZone(UIVisualEffectView) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtensionP33_AF8B3EA06286D4AB02CD0CCCFC27CE8F26InAppBlendedBackgroundView_shadowView) = 0;
  sub_10077156C();
  __break(1u);
}

id sub_1005B9D50(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_sizeCategory] = 5;
  v4[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_originalSizeCategory] = 5;
  v4[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isLayoutRequired] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isTransitioning] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_10000A5D4(&unk_100945BF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100783DD0;
  *(v10 + 32) = sub_10076E59C();
  *(v10 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v11 = v9;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v11;
}

void sub_1005B9F80()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView);
  if (v2)
  {
    v4[0] = 0x3FF0000000000000;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0x3FF0000000000000;
    v4[4] = 0;
    v4[5] = 0;
    [v2 setTransform:v4];
    v2 = *(v0 + v1);
  }

  [v2 removeFromSuperview];
  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isLayoutRequired) = 1;
}

void sub_1005BA000()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView];
  if (v1)
  {
    v2 = v0[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_originalSizeCategory];
    v3 = v1;
    v4 = v3;
    if (v2 == 4)
    {
      sub_1005BA0E8(v3);
    }

    else
    {
      [v0 bounds];
      [v4 setFrame:?];
    }
  }
}

uint64_t sub_1005BA0E8(void *a1)
{
  v2 = v1;
  [v1 bounds];
  v5 = v4;
  [a1 bounds];
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_self();
  [v10 setAnimationsEnabled:0];
  if (v5 == v7)
  {
    goto LABEL_2;
  }

  if (v7 < v5 && (v7 != 0.0 || v9 != 0.0))
  {
    goto LABEL_11;
  }

  if (v7 == 0.0 && v9 == 0.0)
  {
LABEL_2:
    [v2 bounds];
    [a1 setFrame:?];
LABEL_3:
    [v10 setAnimationsEnabled:1];
    v20.a = 1.0;
    v20.b = 0.0;
    v20.c = 0.0;
    v20.d = 1.0;
    v20.tx = 0.0;
    v20.ty = 0.0;
    return [a1 setTransform:&v20];
  }

  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_isExpanded) == 1)
  {
LABEL_11:
    [v2 bounds];
    [a1 setFrame:?];
    [a1 transform];
    CGAffineTransformScale(&v19, &v20, v7 / v5, v7 / v5);
    v20 = v19;
    [a1 setTransform:&v20];
    goto LABEL_3;
  }

  CGAffineTransformMakeScale(&v20, v5 / v7, v5 / v7);
  v14 = *&v20.c;
  v15 = *&v20.a;
  tx = v20.tx;
  ty = v20.ty;
  [v10 setAnimationsEnabled:1];
  [a1 transform];
  v20.a = 1.0;
  v20.b = 0.0;
  v20.c = 0.0;
  v20.d = 1.0;
  v20.tx = 0.0;
  v20.ty = 0.0;
  result = sub_10077062C();
  if (result)
  {
    v16[0] = v15;
    v16[1] = v14;
    v17 = tx;
    v18 = ty;
    return [a1 setTransform:v16];
  }

  return result;
}

void sub_1005BA30C()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29InfoLayerOverlayContainerView_overlayView];
  if (v1)
  {
    [v1 sizeThatFits:?];
  }

  else
  {
    v2 = [v0 traitCollection];
    if (qword_100941428 != -1)
    {
      swift_once();
    }

    sub_100587DD0(v2, &xmmword_1009A2D20, 1);
    sub_10077071C();
    sub_1007704EC();
    sub_10077071C();
    sub_1007704EC();
  }
}

id sub_1005BA46C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1005BA770()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArticleContainerViewController.ContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005BA830()
{
  type metadata accessor for ArticleContainerViewController.ContainerView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v4[OBJC_IVAR____TtCC20ProductPageExtension30ArticleContainerViewControllerP33_DBD3BDFA863817F76B447E10483B1F7213ContainerView_frameUpdatedCallback];
  v3 = *&v4[OBJC_IVAR____TtCC20ProductPageExtension30ArticleContainerViewControllerP33_DBD3BDFA863817F76B447E10483B1F7213ContainerView_frameUpdatedCallback];
  *v2 = sub_1005BB070;
  v2[1] = v1;

  sub_1000167E0(v3);

  [v0 setView:v4];
}

void sub_1005BA90C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005BA960();
  }
}

void sub_1005BA960()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_allowTraitCollectionOverrides] != 1 || (v2 = [v0 traitCollection], v3 = sub_1007706CC(), v2, (v3 & 1) == 0))
  {
    v15 = &v1[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections];
    if ((v1[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections] & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  Width = CGRectGetWidth(v22);
  v15 = &v1[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections];
  if (Width < 650.0 != v1[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections])
  {
    if (Width < 650.0)
    {
      v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_wrapperViewController];
      v17 = objc_opt_self();
      v18 = [v17 traitCollectionWithHorizontalSizeClass:2];
      [v16 setOverrideTraitCollection:v18 forChildViewController:*&v1[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_articleViewController]];

      v19 = 1;
      v20 = [v17 traitCollectionWithHorizontalSizeClass:1];
      [v1 setOverrideTraitCollection:v20 forChildViewController:v16];

LABEL_9:
      *v15 = v19;
      return;
    }

LABEL_8:
    v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_wrapperViewController];
    [v21 setOverrideTraitCollection:0 forChildViewController:*&v1[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_articleViewController]];
    [v1 setOverrideTraitCollection:0 forChildViewController:v21];
    v19 = 0;
    goto LABEL_9;
  }
}

void sub_1005BABBC()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_wrapperViewController];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame:{v7, v9, v11, v13}];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  [v14 setAutoresizingMask:18];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    [v17 addSubview:v18];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_1005BAF6C(void *a1, void *a2)
{
  v4 = type metadata accessor for ArticleContainerViewController();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_allowTraitCollectionOverrides] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_previousShouldOverrideTraitCollections] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_wrapperViewController] = a1;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_articleViewController] = a2;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  [v8 addChildViewController:{v6, v10.receiver, v10.super_class}];

  return v8;
}

uint64_t sub_1005BB038()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1005BB1D0(unint64_t a1)
{
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v45 - v7;
  __chkstk_darwin(v8);
  v56 = &v45 - v9;
  __chkstk_darwin(v10);
  v50 = &v45 - v11;
  __chkstk_darwin(v12);
  v46 = &v45 - v13;
  __chkstk_darwin(v14);
  v49 = &v45 - v15;
  sub_100016F40(0, &qword_10095EBE0);
  isa = sub_1007701AC().super.isa;
  v17 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v59.receiver = v1;
  v59.super_class = v17;
  objc_msgSendSuper2(&v59, "prepareForCollectionViewUpdates:", isa);

  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    if (a1 >> 62)
    {
      v18 = sub_10077158C();
      if (!v18)
      {
        return;
      }
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        return;
      }
    }

    if (v18 < 1)
    {
      __break(1u);
    }

    else
    {
      v19 = 0;
      v48 = OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate;
      v54 = a1;
      v55 = OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate;
      v58 = a1 & 0xC000000000000001;
      v20 = (v4 + 32);
      v51 = v4 + 8;
      v52 = (v4 + 16);
      v21 = &selRef_configurationWithWeight_;
      v53 = v18;
      do
      {
        if (v58)
        {
          v22 = sub_10077149C();
        }

        else
        {
          v22 = *(a1 + 8 * v19 + 32);
        }

        v23 = v22;
        if (![v22 v21[322]])
        {
          v24 = [v23 indexPathAfterUpdate];
          if (v24)
          {
            v25 = v46;
            v26 = v24;
            sub_10075E06C();

            v27 = *v20;
            v28 = v49;
            (*v20)(v49, v25, v3);
            (*v52)(v50, v28, v3);
            v29 = v48;
            v30 = *&v1[v48];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v1[v29] = v30;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v30 = sub_10049DE8C(0, *(v30 + 2) + 1, 1, v30);
              *&v1[v48] = v30;
            }

            v33 = *(v30 + 2);
            v32 = *(v30 + 3);
            if (v33 >= v32 >> 1)
            {
              v30 = sub_10049DE8C(v32 > 1, v33 + 1, 1, v30);
            }

            *(v30 + 2) = v33 + 1;
            v27(&v30[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33], v50, v3);
            v34 = v49;
            *&v1[v48] = v30;
            (*(v4 + 8))(v34, v3);
            v18 = v53;
            a1 = v54;
            v21 = &selRef_configurationWithWeight_;
          }
        }

        if ([v23 v21[322]] == 1 && (v35 = objc_msgSend(v23, "indexPathBeforeUpdate")) != 0)
        {
          v36 = v47;
          v37 = v35;
          sub_10075E06C();

          v38 = *v20;
          v39 = v56;
          (*v20)(v56, v36, v3);
          (*v52)(v57, v39, v3);
          v40 = v55;
          v41 = *&v1[v55];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          *&v1[v40] = v41;
          if ((v42 & 1) == 0)
          {
            v41 = sub_10049DE8C(0, *(v41 + 2) + 1, 1, v41);
            *&v1[v55] = v41;
          }

          v44 = *(v41 + 2);
          v43 = *(v41 + 3);
          if (v44 >= v43 >> 1)
          {
            v41 = sub_10049DE8C(v43 > 1, v44 + 1, 1, v41);
          }

          *(v41 + 2) = v44 + 1;
          v38(&v41[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v44], v57, v3);
          *&v1[v55] = v41;

          (*(v4 + 8))(v56, v3);
          v18 = v53;
          a1 = v54;
          v21 = &selRef_configurationWithWeight_;
        }

        else
        {
        }

        ++v19;
      }

      while (v18 != v19);
    }
  }
}

char *sub_1005BB7E4(uint64_t a1)
{
  v2 = v1;
  isa = sub_10075E02C().super.isa;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v13, "initialLayoutAttributesForAppearingItemAtIndexPath:", isa);

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate];

  v9 = sub_10048949C(a1, v8);

  if (v9)
  {
    [v7 setAlpha:0.4];
    v10 = sub_1005BC188();
    v11 = *&v7[OBJC_IVAR____TtCC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation];
    *&v7[OBJC_IVAR____TtCC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation] = v10;
  }

  return v7;
}

char *sub_1005BB904(uint64_t a1)
{
  v2 = v1;
  isa = sub_10075E02C().super.isa;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v13, "finalLayoutAttributesForDisappearingItemAtIndexPath:", isa);

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate];

  v9 = sub_10048949C(a1, v8);

  if (v9)
  {
    v10 = sub_1005BC770();
    v11 = *&v7[OBJC_IVAR____TtCC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation];
    *&v7[OBJC_IVAR____TtCC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation] = v10;
  }

  [v7 setZIndex:1];
  return v7;
}

id sub_1005BBA14(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_10075E11C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E06C();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

void *sub_1005BBB1C(double a1, double a2, double a3, double a4)
{
  v30 = sub_10075E11C();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v38.receiver = v4;
  v38.super_class = v11;
  result = objc_msgSendSuper2(&v38, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (result)
  {
    v13 = result;
    v14 = sub_100016F40(0, &qword_100947EF0);
    v15 = sub_1007701BC();

    if (v15 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
    {
      v37 = _swiftEmptyArrayStorage;
      v17 = v4;
      v4 = &v37;
      result = sub_1007714EC();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v18 = 0;
      v31 = OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate;
      v34 = v15 & 0xFFFFFFFFFFFFFF8;
      v35 = OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled;
      v27 = v9 + 1;
      v28 = v17;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = sub_10077149C();
          goto LABEL_14;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v18 >= *(v34 + 16))
        {
          goto LABEL_25;
        }

        v19 = *(v15 + 8 * v18 + 32);
LABEL_14:
        v9 = v19;
        [v19 copy];
        sub_10077123C();
        swift_unknownObjectRelease();
        if (!swift_dynamicCast())
        {
          goto LABEL_8;
        }

        v20 = i;
        v21 = v14;
        v22 = v36;
        [v36 setZIndex:3];
        if ((*(v17 + v35) & 1) != 0 && (v23 = [v17 collectionView]) != 0)
        {
          v33 = v23;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v32 = sub_1002506C8();
            swift_unknownObjectRelease();
            v24 = [v22 indexPath];
            v25 = v29;
            sub_10075E06C();

            v26 = sub_10075E09C();
            (*v27)(v25, v30);
            if (v26 < v32)
            {
              [v22 setZIndex:4];
            }

            v9 = v22;
            v17 = v28;
            goto LABEL_7;
          }
        }

        else
        {
        }

        v9 = v22;
LABEL_7:
        v14 = v21;
        i = v20;
LABEL_8:
        ++v18;
        v4 = &v37;
        sub_1007714CC();
        sub_1007714FC();
        sub_10077150C();
        sub_1007714DC();
        if (i == v18)
        {

          return v37;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

id sub_1005BC188()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 frame];
  Width = CGRectGetWidth(v18);
  CATransform3DMakeTranslation(&v17, Width, 0.0, 0.0);
  v4 = sub_10076FF6C();
  v5 = [objc_opt_self() animationWithKeyPath:v4];

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 valueWithCATransform3D:&v17];
  [v7 setFromValue:v8];

  v9 = *&CATransform3DIdentity.m33;
  *&v17.m31 = *&CATransform3DIdentity.m31;
  *&v17.m33 = v9;
  v10 = *&CATransform3DIdentity.m43;
  *&v17.m41 = *&CATransform3DIdentity.m41;
  *&v17.m43 = v10;
  v11 = *&CATransform3DIdentity.m13;
  *&v17.m11 = *&CATransform3DIdentity.m11;
  *&v17.m13 = v11;
  v12 = *&CATransform3DIdentity.m23;
  *&v17.m21 = *&CATransform3DIdentity.m21;
  *&v17.m23 = v12;
  v13 = [v6 valueWithCATransform3D:&v17];
  [v7 setToValue:v13];

  v14 = v7;
  v15 = CACurrentMediaTime();
  [v14 setBeginTime:v15 + sub_10075E07C() * 0.05];
  [v14 setFillMode:kCAFillModeBackwards];
  [v14 setMass:1.0];
  [v14 setStiffness:250.0];
  [v14 setDamping:28.0];
  [v14 setInitialVelocity:0.0];
  [v14 settlingDuration];
  [v14 setDuration:?];

  return v14;
}

id sub_1005BC3E0(void *a1)
{
  v15 = a1;
  v2 = sub_10075E11C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v15 copy];
  sub_10077123C();
  swift_unknownObjectRelease();
  sub_100016F40(0, &qword_100947EF0);
  if (swift_dynamicCast())
  {
    v7 = v16;
    [v16 setZIndex:3];
    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) == 1)
    {
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = sub_1002506C8();
          swift_unknownObjectRelease();
          v11 = [v7 indexPath];
          sub_10075E06C();

          v12 = sub_10075E09C();
          (*(v3 + 8))(v6, v2);
          if (v12 < v10)
          {
            [v7 setZIndex:4];
          }
        }
      }
    }

    return v7;
  }

  else
  {
    v14 = v15;

    return v14;
  }
}

id sub_1005BC704(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1005BC770()
{
  v0 = sub_10076FF6C();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  v2 = v1;
  [v2 setBeginTime:CACurrentMediaTime()];
  [v2 setDuration:0.1];
  v3 = v2;
  isa = sub_10077033C().super.super.isa;
  [v3 setFromValue:isa];

  v5 = sub_10077033C().super.super.isa;
  [v3 setToValue:v5];

  v6 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v7) = 1043207291;
  LODWORD(v8) = 1059816735;
  LODWORD(v9) = 1.0;
  v10 = [v6 initWithControlPoints:v7 :0.0 :v8 :v9];
  [v3 setTimingFunction:v10];

  return v3;
}

char *sub_1005BC8B8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension24InfiniteScrollFooterView_activityIndicator] = v10;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_1000325F0();
  v16 = sub_100770D2C();
  [v15 setBackgroundColor:v16];

  [v15 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension24InfiniteScrollFooterView_activityIndicator]];
  return v15;
}

void sub_1005BCE64(void *a1, uint64_t a2, void *a3, const char **a4)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v9.receiver;
  v8 = a3;
  objc_msgSendSuper2(&v9, v6, v8);
  if (v8)
  {
  }

  else
  {
    [*&v7[OBJC_IVAR____TtC20ProductPageExtension24InfiniteScrollFooterView_activityIndicator] stopAnimating];
  }
}

uint64_t sub_1005BCF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v98 = a3;
  v9 = sub_10076C5FC();
  v100 = *(v9 - 8);
  __chkstk_darwin(v9);
  v92 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v92 - v12;
  __chkstk_darwin(v14);
  v94 = &v92 - v15;
  __chkstk_darwin(v16);
  v93 = &v92 - v17;
  v18 = sub_10000A5D4(&unk_100959F50);
  __chkstk_darwin(v18 - 8);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v95 = &v92 - v22;
  __chkstk_darwin(v23);
  v25 = &v92 - v24;
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v29 = &v92 - v28;
  v101 = v6;
  [v6 bounds];
  v32 = sub_1002C7F38(v30, v31, a1, a6);
  v97 = a1;
  v33 = sub_10076452C();
  sub_10000A5D4(&qword_10094AB58);
  sub_100166C60();
  sub_10076F84C();
  v34 = aBlock;
  if (aBlock == 2)
  {
    v34 = sub_10076C56C();
  }

  v96 = v9;
  v99 = v33;
  if ((v34 & v32 & 1) == 0)
  {
    v94 = v13;
    v55 = sub_10076C5AC();
    v56 = [a6 traitCollection];
    v57 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v55];
    v58 = [v55 length];
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = v56;
    *(v59 + 32) = v57;
    *(v59 + 40) = 1;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1000275EC;
    *(v60 + 24) = v59;
    v106 = sub_1000ACB04;
    v107 = v60;
    aBlock = _NSConcreteStackBlock;
    v103 = 1107296256;
    v104 = sub_100026610;
    v105 = &unk_10089B1A0;
    v61 = _Block_copy(&aBlock);
    v62 = v56;
    v63 = v57;

    [v55 enumerateAttributesInRange:0 options:v58 usingBlock:{0x100000, v61}];

    _Block_release(v61);
    LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

    if ((v55 & 1) == 0)
    {
      v29 = v95;
      v44 = *&v101[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_bodyTextView];
      v64 = v63;
      sub_10076C60C();
      v65 = v96;
      (*(v100 + 56))(v29, 0, 1, v96);
      v66 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
      v67 = v44[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
      v44[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = 0;
      v68 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel;
      v69 = *&v44[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
      v70 = v64;
      [v69 setNumberOfLines:0];
      if (v67 != v44[v66])
      {
        sub_10073D75C();
      }

      v52 = v70;
      sub_10073D114(v70);
      v44[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      sub_100415F48(v29, v20);
      v71 = v100;
      if ((*(v100 + 48))(v20, 1, v65) != 1)
      {
        v77 = v94;
        (*(v71 + 32))(v94, v20, v65);
        v78 = v92;
        (*(v71 + 16))(v92, v77, v65);
        v79 = (*(v71 + 88))(v78, v65);
        if (v79 == enum case for Paragraph.Alignment.left(_:))
        {
          v80 = 0;
          v72 = v101;
        }

        else
        {
          v72 = v101;
          if (v79 == enum case for Paragraph.Alignment.center(_:))
          {
            v80 = 1;
          }

          else if (v79 == enum case for Paragraph.Alignment.right(_:))
          {
            v80 = 2;
          }

          else if (v79 == enum case for Paragraph.Alignment.justified(_:))
          {
            v80 = 3;
          }

          else if (v79 == enum case for Paragraph.Alignment.localized(_:))
          {
            v80 = 4;
          }

          else
          {
            (*(v71 + 8))(v78, v65);
            v80 = 0;
          }
        }

        [*&v44[v68] setTextAlignment:v80];
        (*(v71 + 8))(v94, v65);
        goto LABEL_39;
      }

      v54 = v20;
      goto LABEL_14;
    }

LABEL_45:
    __break(1u);
    return result;
  }

  v35 = sub_10076C57C();
  v36 = [a6 traitCollection];
  v37 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v35];
  v95 = [v35 length];
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = v36;
  *(v38 + 32) = v37;
  *(v38 + 40) = 1;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_100027A88;
  *(v39 + 24) = v38;
  v106 = sub_1003BE1CC;
  v107 = v39;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100026610;
  v105 = &unk_10089B240;
  v40 = _Block_copy(&aBlock);
  v41 = v36;
  v42 = v37;

  [v35 enumerateAttributesInRange:0 options:v95 usingBlock:{0x100000, v40}];

  _Block_release(v40);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
    goto LABEL_45;
  }

  v44 = *&v101[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_bodyTextView];
  v45 = v42;
  sub_10076C60C();
  v46 = v96;
  (*(v100 + 56))(v29, 0, 1, v96);
  v47 = OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed;
  v48 = v44[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed];
  v44[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_isCollapsed] = 1;
  v49 = *&v44[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_collapsedNumberOfLines];
  v50 = *&v44[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_textLabel];
  v51 = v45;
  [v50 setNumberOfLines:v49];
  if (v48 != v44[v47])
  {
    sub_10073D75C();
  }

  v52 = v51;
  sub_10073D114(v51);
  v44[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  sub_100415F48(v29, v25);
  v53 = v100;
  if ((*(v100 + 48))(v25, 1, v46) != 1)
  {
    v73 = v93;
    (*(v53 + 32))(v93, v25, v46);
    v74 = v94;
    (*(v53 + 16))(v94, v73, v46);
    v75 = (*(v53 + 88))(v74, v46);
    if (v75 == enum case for Paragraph.Alignment.left(_:))
    {
      v76 = 0;
      v72 = v101;
    }

    else
    {
      v72 = v101;
      if (v75 == enum case for Paragraph.Alignment.center(_:))
      {
        v76 = 1;
      }

      else if (v75 == enum case for Paragraph.Alignment.right(_:))
      {
        v76 = 2;
      }

      else if (v75 == enum case for Paragraph.Alignment.justified(_:))
      {
        v76 = 3;
      }

      else if (v75 == enum case for Paragraph.Alignment.localized(_:))
      {
        v76 = 4;
      }

      else
      {
        (*(v53 + 8))(v94, v46);
        v76 = 0;
      }
    }

    [v50 setTextAlignment:v76];
    (*(v53 + 8))(v73, v46);
    goto LABEL_39;
  }

  v54 = v25;
LABEL_14:
  sub_10000CFBC(v54, &unk_100959F50);
  v72 = v101;
LABEL_39:
  [v44 setNeedsLayout];

  sub_10000CFBC(v29, &unk_100959F50);
  sub_10076451C();
  sub_10076108C();
  v81 = sub_1007701EC();

  v82 = v98;
  if (v81)
  {
    v83 = sub_10076451C();
    v84 = sub_10076450C();
    v85 = sub_1007644FC();
    sub_100268844(v83, v84, v85);
  }

  v86 = sub_1007644EC();
  if (v86)
  {
    v87 = *&v72[OBJC_IVAR____TtC20ProductPageExtension36ProductDescriptionCollectionViewCell_developerLinkView];
    v88 = v86;
    sub_10076B8EC();
    v89 = swift_allocObject();
    *(v89 + 16) = v82;
    *(v89 + 24) = v88;

    sub_10076260C();

    v90 = &v87[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_tapHandler];
    v91 = *&v87[OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_tapHandler];
    *v90 = sub_1005BE5E4;
    v90[1] = v89;
    sub_1000167E0(v91);
    [v87 setNeedsLayout];
  }

  [v72 setNeedsLayout];
}

uint64_t sub_1005BDB28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_1005BDC88()
{
  sub_10000A5D4(&qword_10094AB58);
  sub_100166C60();
  sub_10076F83C();
  return 3;
}

uint64_t sub_1005BDD00()
{
  v0 = sub_10077164C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v4 = sub_10076D9AC();
  sub_10000A61C(v4, qword_1009A2380);
  sub_10076D17C();
  sub_10076D40C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

unint64_t sub_1005BDE98()
{
  result = qword_10095EC78;
  if (!qword_10095EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095EC78);
  }

  return result;
}

unint64_t sub_1005BDEF0()
{
  result = qword_10095EC80;
  if (!qword_10095EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095EC80);
  }

  return result;
}

uint64_t sub_1005BDF44(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_100767B4C();
  __chkstk_darwin(v5 - 8);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100767B6C();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_10095EC88);
  sub_100166C60();
  sub_10076FD8C();
  v9 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 2)
  {
    sub_10076452C();
    v9 = sub_10076C56C();
  }

  v43 = sub_10076452C();
  if (v9)
  {
    v10 = sub_10076C57C();
    v41 = 3;
  }

  else
  {
    v10 = sub_10076C5AC();
    v41 = 0;
  }

  v48 = a4;
  v11 = [a4 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v49 = [v10 length];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  *(v13 + 40) = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100027A88;
  *(v14 + 24) = v13;
  v59 = sub_1003BE1CC;
  v60 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  v58 = &unk_10089B2B8;
  v15 = _Block_copy(aBlock);
  v16 = v11;
  v17 = v12;

  v42 = v10;
  [v10 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v15}];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v20 = v17;
    v21 = sub_10076451C();
    v22 = sub_10076450C();
    v23 = sub_1007644FC();
    if (sub_1007644EC())
    {
      v49 = sub_10076B8EC();
      v25 = v24;
    }

    else
    {
      v49 = 0;
      v25 = 0;
    }

    v26 = swift_allocObject();
    v27 = v41;
    *(v26 + 16) = v20;
    *(v26 + 24) = v27;
    v28 = sub_10076DDDC();
    swift_allocObject();
    v29 = v20;
    v30 = sub_10076DD9C();
    v58 = v28;
    v59 = &protocol witness table for LayoutViewPlaceholder;
    aBlock[0] = v30;
    v31 = swift_allocObject();
    v31[2] = v21;
    v31[3] = v22;
    v32 = v48;
    v31[4] = v23;
    v31[5] = v32;
    swift_allocObject();

    swift_unknownObjectRetain();
    v33 = sub_10076DD9C();
    v56[3] = v28;
    v56[4] = &protocol witness table for LayoutViewPlaceholder;
    v56[0] = v33;
    v34 = type metadata accessor for DeveloperLinkView();
    v35 = swift_allocObject();
    v36 = v49;
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v25;
    swift_allocObject();
    v37 = sub_10076DD9C();
    v55[3] = v28;
    v55[4] = &protocol witness table for LayoutViewPlaceholder;
    v55[0] = v37;
    sub_10076108C();
    LOBYTE(v34) = sub_1007701EC();

    if (v34)
    {
      sub_10000A570(v56, v53);
    }

    else
    {
      v54 = 0;
      memset(v53, 0, sizeof(v53));
    }

    sub_1002C6478(v44);
    sub_10000A570(aBlock, &v52);
    sub_10000A570(v56, &v51);
    sub_10000A570(v55, &v50);
    v38 = v45;
    sub_100767B5C();
    sub_1005BE6AC(&qword_10095EC90, &type metadata accessor for ProductDescriptionLayout);
    v39 = v47;
    sub_10076D2AC();

    (*(v46 + 8))(v38, v39);
    sub_10000CFBC(v53, &unk_10094DA00);
    sub_10000CD74(v55);
    sub_10000CD74(v56);
    return sub_10000CD74(aBlock);
  }

  return result;
}

uint64_t sub_1005BE58C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1005BE5A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005BE5FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005BE634()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1005BE674()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1005BE6AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TodayBrickPlaceholderView()
{
  result = qword_10095ECB0;
  if (!qword_10095ECB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1005BE7C4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = qword_10095EC98;
  sub_10075FD2C();
  v11 = sub_10075FB4C();
  sub_1007638EC();

  *&v5[v10] = v11;
  v12 = qword_10095ECA0;
  sub_1007600FC();
  v13 = sub_1007600BC();
  v15 = v14;
  if (qword_100940FE0 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D3DC();
  v17 = sub_10000A61C(v16, qword_1009A1D98);
  v18 = sub_1004B96BC(v13, v15, v17);

  *&v5[v12] = v18;
  v19 = qword_10095ECA8;
  v20 = sub_1007600EC();
  v22 = v21;
  if (qword_100940FE8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v16, qword_1009A1DB0);
  v24 = sub_1004B96BC(v20, v22, v23);

  *&v5[v19] = v24;
  v29.receiver = v5;
  v29.super_class = type metadata accessor for TodayBrickPlaceholderView();
  v25 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v26 = *&v25[qword_10095EC98];
  v27 = v25;
  [v27 addSubview:v26];
  [v27 addSubview:*&v27[qword_10095ECA0]];
  [v27 addSubview:*&v27[qword_10095ECA8]];

  return v27;
}

uint64_t sub_1005BEA1C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_100765A3C();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100765A2C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v22 - v11;
  v13 = [v1 traitCollection];
  sub_1004CAB60(v13, v12);

  v14 = *&v1[qword_10095EC98];
  v32 = sub_10075FD2C();
  v33 = &protocol witness table for UIView;
  v31 = v14;
  v15 = *&v1[qword_10095ECA0];
  v29 = sub_1005BEF00();
  v30 = &protocol witness table for UIView;
  v27 = &protocol witness table for UIView;
  v28 = v15;
  v16 = *&v1[qword_10095ECA8];
  v26 = v29;
  v25 = v16;
  (*(v6 + 16))(v8, v12, v5);
  v17 = v14;
  v18 = v15;
  v19 = v16;
  sub_1007659DC();
  sub_1005BEF4C();
  v20 = v23;
  sub_10076D2DC();
  (*(v2 + 8))(v4, v20);
  return (*(v6 + 8))(v12, v5);
}

void sub_1005BEC80()
{
  v1 = *(v0 + qword_10095ECA8);
}

id sub_1005BECD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayBrickPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005BED08(uint64_t a1)
{
  v2 = *(a1 + qword_10095ECA8);
}

void sub_1005BED6C()
{
  v1 = v0;
  v2 = qword_10095EC98;
  sub_10075FD2C();
  v3 = sub_10075FB4C();
  sub_1007638EC();

  *(v1 + v2) = v3;
  v4 = qword_10095ECA0;
  sub_1007600FC();
  v5 = sub_1007600BC();
  v7 = v6;
  if (qword_100940FE0 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1D98);
  v10 = sub_1004B96BC(v5, v7, v9);

  *(v1 + v4) = v10;
  v11 = qword_10095ECA8;
  v12 = sub_1007600EC();
  v14 = v13;
  if (qword_100940FE8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000A61C(v8, qword_1009A1DB0);
  v16 = sub_1004B96BC(v12, v14, v15);

  *(v1 + v11) = v16;
  sub_10077156C();
  __break(1u);
}

unint64_t sub_1005BEF00()
{
  result = qword_100956550;
  if (!qword_100956550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100956550);
  }

  return result;
}

unint64_t sub_1005BEF4C()
{
  result = qword_10095ED00;
  if (!qword_10095ED00)
  {
    sub_100765A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095ED00);
  }

  return result;
}

uint64_t sub_1005BEFA4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  [*&v3[qword_1009548F8] setHidden:(sub_100760DBC() & 1) == 0];
  v7 = *&v3[qword_100954900];
  sub_100760DDC();
  if (v8)
  {
    v9 = sub_10076FF6C();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  sub_1000325F0();
  if (a3)
  {
    v10 = [objc_allocWithZone(UIColor) initWithRed:0.388235294 green:0.388235294 blue:0.4 alpha:1.0];
    v11 = [objc_allocWithZone(UIColor) initWithRed:0.282352941 green:0.282352941 blue:0.290196078 alpha:1.0];
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.682352941 green:0.682352941 blue:0.698039216 alpha:1.0];
    v13.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
    v14.super.isa = v10;
    v15.super.isa = v11;
    v16.super.isa = v12;
    v17.super.isa = sub_100770E3C(v14, v15, v16, v13).super.isa;
  }

  else
  {
    v17.super.isa = sub_100770D1C();
  }

  isa = v17.super.isa;
  [v7 setTextColor:v17.super.isa];

  v19 = v4[qword_100954910];
  v4[qword_100954910] = a2 & 1;
  if (v19 != (a2 & 1))
  {
    if (a2)
    {
      v20 = 0;
    }

    else
    {
      v20 = 6;
    }

    [v7 setNumberOfLines:v20];
    [v4 setNeedsLayout];
  }

  return sub_10076D9DC();
}

uint64_t sub_1005BF1C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for AccessibilityDetailsShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_1005BF470(&qword_10095F320, &type metadata accessor for GenericDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1005BF470(&qword_10095F328, type metadata accessor for AccessibilityDetailsShelfSupplementaryProvider);

  return v2;
}

unint64_t sub_1005BF2C0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for AccessibilityDetailsShelfLayoutSpacingProvider;
  result = sub_1005BF41C();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1005BF2F4@<X0>(uint64_t *a1@<X8>)
{
  sub_100760F1C();
  swift_allocObject();
  v2 = sub_100760F0C();
  swift_allocObject();
  v3 = sub_100760F0C();
  a1[3] = &type metadata for AccessibilityDetailsPageGridProvider;
  result = sub_1005BF3C8();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for AccessibilityDetailsViewController()
{
  result = qword_10095ED30;
  if (!qword_10095ED30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1005BF3C8()
{
  result = qword_10095F310;
  if (!qword_10095F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095F310);
  }

  return result;
}

unint64_t sub_1005BF41C()
{
  result = qword_10095F318;
  if (!qword_10095F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095F318);
  }

  return result;
}

uint64_t sub_1005BF470(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005BF4B8()
{
  sub_1007713FC();
  v1 = sub_10077008C();
  v2 = *(v0 + 72);
  if (v2 && (v2(v1), v3))
  {
    sub_10077177C(1u);
    sub_10077008C();
  }

  else
  {
    sub_10077177C(0);
  }
}

uint64_t sub_1005BF55C(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v2 = v1;
  if ((sub_1007713EC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PromptActionDebugSetting();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  if (*(result + 56) != v1[7] || *(result + 64) != v1[8])
  {
    v5 = result;
    v6 = sub_10077167C();
    result = v5;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(result + 72);
  if (!v7)
  {
    v17 = v2[9];

    if (!v17)
    {
      goto LABEL_25;
    }

    v17(v18);
    v16 = v19;
    goto LABEL_18;
  }

  v9 = v7(v8);
  v11 = v10;
  v12 = v2[9];
  if (!v12)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v13 = v9;
  v14 = v12();
  v16 = v15;
  if (!v11)
  {
LABEL_18:

    if (!v16)
    {
      return 1;
    }

    goto LABEL_22;
  }

  if (!v15)
  {
LABEL_21:

LABEL_22:

    return 0;
  }

  if (v13 == v14 && v11 == v15)
  {

LABEL_25:

    return 1;
  }

  v20 = sub_10077167C();

  return v20 & 1;
}

uint64_t sub_1005BF738()
{

  sub_1000167E0(*(v0 + 72));
}

uint64_t sub_1005BF770()
{
  sub_100016C74(v0 + 16);

  sub_1000167E0(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1005BF804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_10075DDBC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  sub_10001CE50(a3);

  sub_10075DDAC();
  v18 = sub_10075DD8C();
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  v23[1] = v18;
  v23[2] = v20;
  sub_10077140C();
  v21 = v25;
  *(v7 + 16) = v24;
  *(v7 + 32) = v21;
  *(v7 + 48) = v26;
  return v7;
}

uint64_t sub_1005BFA48()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A0B98);
  v1 = sub_10000A61C(v0, qword_1009A0B98);
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x80000001007F0240;
  *(v1 + 16) = sub_1005BFB10;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1005BFED8()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_10095F408);
  v1 = sub_10000A61C(v0, qword_10095F408);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4045000000000000;
  *v1 = 0xD000000000000019;
  *(v1 + 8) = 0x80000001007F02C0;
  *(v1 + 16) = sub_1005C5484;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightBold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1005C0040()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A0FB8);
  v1 = sub_10000A61C(v0, qword_1009A0FB8);
  *v1 = 0xD000000000000015;
  *(v1 + 8) = 0x80000001007EFEA0;
  *(v1 + 16) = sub_1005C00FC;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

UIFontTextStyle sub_1005C00FC()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075DE6C();
  v4 = sub_10075DDFC();
  (*(v1 + 8))(v3, v0);
  v5 = &UIFontTextStyleTitle2;
  if (v4)
  {
    v5 = &UIFontTextStyleTitle3;
  }

  v6 = *v5;

  return v6;
}

uint64_t sub_1005C0220()
{
  v0 = sub_10076C5DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = sub_10076D3DC();
  sub_10000DB18(v7, qword_1009A1000);
  v8 = sub_10000A61C(v7, qword_1009A1000);
  (*(v1 + 104))(v6, enum case for Paragraph.Style.standard(_:), v0);
  v9 = *(v1 + 32);
  v9(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v3, v0);
  *v8 = 0x7061726761726170;
  *(v8 + 8) = 0xE900000000000068;
  *(v8 + 16) = sub_1005C5154;
  *(v8 + 24) = v11;
  *(v8 + 32) = 0;
  return (*(*(v7 - 8) + 104))(v8, enum case for FontUseCase.dynamicPreferredFont(_:), v7);
}

uint64_t sub_1005C043C()
{
  v0 = sub_10076C5DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = sub_10076D3DC();
  sub_10000DB18(v7, qword_1009A1048);
  v8 = sub_10000A61C(v7, qword_1009A1048);
  (*(v1 + 104))(v6, enum case for Paragraph.Style.article(_:), v0);
  v9 = *(v1 + 32);
  v9(v3, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v3, v0);
  *v8 = 0xD000000000000010;
  *(v8 + 8) = 0x80000001007F0200;
  *(v8 + 16) = sub_1005C547C;
  *(v8 + 24) = v11;
  *(v8 + 32) = 0;
  return (*(*(v7 - 8) + 104))(v8, enum case for FontUseCase.dynamicPreferredFont(_:), v7);
}

uint64_t sub_1005C06B4()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A10D8);
  v1 = sub_10000A61C(v0, qword_1009A10D8);
  *v1 = 0xD00000000000001BLL;
  *(v1 + 8) = 0x80000001007F01A0;
  *(v1 + 16) = sub_1005C077C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightSemibold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1005C0784()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A10F0);
  v1 = sub_10000A61C(v0, qword_1009A10F0);
  *v1 = 0xD000000000000018;
  *(v1 + 8) = 0x80000001007F01C0;
  *(v1 + 16) = sub_1005C084C;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightRegular;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1005C0A5C()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A12E8);
  v1 = sub_10000A61C(v0, qword_1009A12E8);
  *v1 = 0xD000000000000022;
  *(v1 + 8) = 0x80000001007F0150;
  *(v1 + 16) = sub_1005C0B24;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_1005C0B30()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1300);
  v1 = sub_10000A61C(v0, qword_1009A1300);
  *v1 = 0xD000000000000022;
  *(v1 + 8) = 0x80000001007F0120;
  *(v1 + 16) = sub_1005C0BF8;
  *(v1 + 24) = 0;
  *(v1 + 32) = UIFontWeightBold;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

UIFontTextStyle sub_1005C0E00()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1510);
  v1 = sub_10000A61C(v0, qword_1009A1510);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4020000000000000;
  *v1 = 0xD000000000000018;
  *(v1 + 8) = 0x80000001007EFEC0;
  *(v1 + 16) = sub_1005C5190;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_1005C0F18()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1528);
  v1 = sub_10000A61C(v0, qword_1009A1528);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4024000000000000;
  *v1 = 0xD000000000000017;
  *(v1 + 8) = 0x80000001007EFF20;
  *(v1 + 16) = sub_1005C548C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_1005C1030()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1540);
  v1 = sub_10000A61C(v0, qword_1009A1540);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4022000000000000;
  *v1 = 0xD00000000000002CLL;
  *(v1 + 8) = 0x80000001007EFF40;
  *(v1 + 16) = sub_1005C548C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_1005C1148()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1558);
  v1 = sub_10000A61C(v0, qword_1009A1558);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4020000000000000;
  *v1 = 0xD00000000000002DLL;
  *(v1 + 8) = 0x80000001007EFF70;
  *(v1 + 16) = sub_1005C548C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

UIFontTextStyle sub_1005C1260()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1570);
  v1 = sub_10000A61C(v0, qword_1009A1570);
  v2 = swift_allocObject();
  *(v2 + 16) = UIFontTextStyleTitle3;
  *(v2 + 24) = 0x4022000000000000;
  *v1 = 0xD00000000000002BLL;
  *(v1 + 8) = 0x80000001007EFFA0;
  *(v1 + 16) = sub_1005C548C;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleTitle3;
}

uint64_t sub_1005C1378()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1588);
  v1 = sub_10000A61C(v0, qword_1009A1588);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4024000000000000;
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x80000001007EFF00;
  *(v1 + 16) = sub_1005C51F0;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

UIFontTextStyle sub_1005C146C()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A15A0);
  v1 = sub_10000A61C(v0, qword_1009A15A0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4024000000000000;
  *(v2 + 24) = UIFontTextStyleCaption2;
  *v1 = 0xD00000000000001DLL;
  *(v1 + 8) = 0x80000001007EFEE0;
  *(v1 + 16) = sub_1005C51D4;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleCaption2;
}

UIFontTextStyle sub_1005C1584()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A15B8);
  v1 = sub_10000A61C(v0, qword_1009A15B8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4026000000000000;
  *(v2 + 24) = UIFontTextStyleCaption2;
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x80000001007F02A0;
  *(v1 + 16) = sub_1005C5490;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))(v1, enum case for FontUseCase.systemFont(_:), v0);

  return UIFontTextStyleCaption2;
}

uint64_t sub_1005C169C()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A15D0);
  v1 = sub_10000A61C(v0, qword_1009A15D0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4022000000000000;
  *v1 = 0xD000000000000031;
  *(v1 + 8) = 0x80000001007EFFD0;
  *(v1 + 16) = sub_1005C5484;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1005C1790()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A15E8);
  v1 = sub_10000A61C(v0, qword_1009A15E8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4020000000000000;
  *v1 = 0xD000000000000032;
  *(v1 + 8) = 0x80000001007F0010;
  *(v1 + 16) = sub_1005C5484;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1005C1884()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1600);
  v1 = sub_10000A61C(v0, qword_1009A1600);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4022000000000000;
  *v1 = 0xD000000000000030;
  *(v1 + 8) = 0x80000001007F0050;
  *(v1 + 16) = sub_1005C5484;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightSemibold;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1005C1BF4()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1888);
  v1 = sub_10000A61C(v0, qword_1009A1888);
  v2 = sub_1005C1CD0(13.0, 16.0, 18.0, 32.0);
  *v1 = 0x747542726566666FLL;
  *(v1 + 8) = 0xEB000000006E6F74;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t (*sub_1005C1CD0(double a1, double a2, double a3, double a4))()
{
  v8 = sub_1007604DC();
  v42 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_10094B450);
  v43 = *(v12 - 8);
  __chkstk_darwin();
  v14 = v40 - v13;
  sub_10000A5D4(&qword_10095F420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007ADDC0;
  *(inited + 32) = UIContentSizeCategoryExtraSmall;
  v40[1] = inited + 32;
  *(inited + 40) = a1;
  *(inited + 48) = UIContentSizeCategorySmall;
  v45 = a1;
  v44 = a2;
  v16 = enum case for TimingCurve.linear(_:);
  v40[0] = *(v9 + 104);
  (v40[0])(v11, enum case for TimingCurve.linear(_:), v8);
  v17 = UIContentSizeCategoryExtraSmall;
  v18 = UIContentSizeCategorySmall;
  sub_1007607FC();
  v41 = v12;
  sub_1007607EC();
  v20 = v43 + 8;
  v19 = *(v43 + 8);
  v19(v14, v12);
  v43 = v20;
  *(inited + 56) = round(v45);
  *(inited + 64) = UIContentSizeCategoryMedium;
  v45 = a1;
  v44 = a2;
  v21 = v16;
  v22 = v16;
  v23 = v42;
  v24 = v40[0];
  (v40[0])(v11, v21, v42);
  v25 = UIContentSizeCategoryMedium;
  sub_1007607FC();
  v26 = v41;
  sub_1007607EC();
  v19(v14, v26);
  *(inited + 72) = round(v45);
  *(inited + 80) = UIContentSizeCategoryLarge;
  *(inited + 88) = a2;
  *(inited + 96) = UIContentSizeCategoryExtraLarge;
  v45 = a2;
  v44 = a3;
  v24(v11, v22, v23);
  v27 = UIContentSizeCategoryLarge;
  v28 = UIContentSizeCategoryExtraLarge;
  sub_1007607FC();
  v29 = v41;
  sub_1007607EC();
  v19(v14, v29);
  *(inited + 104) = round(v45);
  *(inited + 112) = UIContentSizeCategoryExtraExtraLarge;
  v45 = a2;
  v44 = a3;
  v24(v11, v22, v42);
  v30 = UIContentSizeCategoryExtraExtraLarge;
  sub_1007607FC();
  sub_1007607EC();
  v19(v14, v29);
  *(inited + 120) = round(v45);
  *(inited + 128) = UIContentSizeCategoryExtraExtraExtraLarge;
  *(inited + 136) = a3;
  *(inited + 144) = UIContentSizeCategoryAccessibilityMedium;
  *(inited + 152) = a4;
  *(inited + 160) = UIContentSizeCategoryAccessibilityLarge;
  *(inited + 168) = a4;
  *(inited + 176) = UIContentSizeCategoryAccessibilityExtraLarge;
  *(inited + 184) = a4;
  *(inited + 192) = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  *(inited + 200) = a4;
  *(inited + 208) = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  *(inited + 216) = a4;
  v31 = UIContentSizeCategoryExtraExtraExtraLarge;
  v32 = UIContentSizeCategoryAccessibilityMedium;
  v33 = UIContentSizeCategoryAccessibilityLarge;
  v34 = UIContentSizeCategoryAccessibilityExtraLarge;
  v35 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v36 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v37 = sub_1000FC130(inited);
  swift_setDeallocating();
  sub_10000A5D4(&qword_10095F428);
  swift_arrayDestroy();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = a2;
  return sub_1005C5488;
}

uint64_t sub_1005C2278()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A18A0);
  v1 = sub_10000A61C(v0, qword_1009A18A0);
  v2 = sub_1005C1CD0(12.0, 13.0, 16.0, 26.0);
  *v1 = 0xD000000000000010;
  *(v1 + 8) = 0x80000001007F00E0;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_1005C2354()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A18B8);
  v1 = sub_10000A61C(v0, qword_1009A18B8);
  v2 = sub_1005C1CD0(14.0, 17.0, 19.0, 33.0);
  *v1 = 0xD000000000000016;
  *(v1 + 8) = 0x80000001007F00C0;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_1005C2438()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A18D0);
  v1 = sub_10000A61C(v0, qword_1009A18D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007ADDD0;
  strcpy(v1, "inAppPurchase");
  *(v1 + 14) = -4864;
  *(v1 + 16) = sub_1005C50C4;
  *(v1 + 24) = v2;
  *(v1 + 32) = UIFontWeightRegular;
  v3 = enum case for FontUseCase.systemFont(_:);
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1005C2548()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009A1900);
  v1 = sub_10000A61C(v0, qword_1009A1900);
  v2 = sub_1005C2624(14.0, 17.0, 23.0, 23.0);
  *v1 = 0xD000000000000011;
  *(v1 + 8) = 0x80000001007EFE80;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = UIFontWeightBold;
  v4 = enum case for FontUseCase.systemFont(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}