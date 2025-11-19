uint64_t sub_481458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4814AC()
{

  sub_BEB8(v0 + 40);

  return _swift_deallocObject(v0, 88, 7);
}

void sub_481524(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v4 = sub_BD88(&qword_944448);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_765120();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  sub_1ED18(a3, v6, &qword_944448);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &qword_944448);
    v17 = v29;
    if (!v29)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = *(v8 + 32);
    v18(v16, v6, v7);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      if (*&Strong[OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_artwork])
      {

        sub_765380();

        v18(v13, v10, v7);
        sub_483034(&qword_947B80, &type metadata accessor for Artwork.URLTemplate);
        v21 = sub_7691C0();
        v22 = *(v8 + 8);
        v22(v13, v7);
        v22(v16, v7);
        if ((v21 & 1) == 0)
        {
          return;
        }

        v17 = v29;
        if (!v29)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }
    }

    (*(v8 + 8))(v16, v7);
    v17 = v29;
    if (!v29)
    {
LABEL_11:
      v23 = 0;
      goto LABEL_12;
    }
  }

LABEL_8:
  v23 = [v17 imageWithRenderingMode:2];
LABEL_12:
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = *(v24 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_iconView);

    v30.value.super.isa = v23;
    v30.is_nil = 0;
    sub_7591D0(v30, v27);
  }
}

double sub_481974(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_75CBF0();
  v77 = *(v8 - 8);
  v78 = v8;
  __chkstk_darwin(v8);
  v76 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_762D10();
  v82 = *(v10 - 8);
  v83 = v10;
  __chkstk_darwin(v10);
  v81 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_7666D0();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75BE90();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v69 - v18;
  v20 = sub_75CBD0();
  v85 = *(v20 - 8);
  v86 = v20;
  __chkstk_darwin(v20);
  v74 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v69 - v23;
  v25 = sub_759640();
  sub_759610();
  ObjectType = swift_getObjectType();
  v93 = a5;
  sub_827CC(v25, v19, a5, v24);

  v26 = *(v14 + 8);
  v75 = v19;
  v94 = v26;
  v26(v19, v13);
  v27 = sub_7670D0();
  swift_allocObject();
  v28 = sub_7670B0();
  swift_allocObject();
  v72 = sub_7670B0();
  swift_allocObject();
  v71 = sub_7670B0();
  v84 = v24;
  sub_75CBB0();
  v92 = v27;
  swift_allocObject();
  v29 = sub_7670B0();
  v89 = a1;
  sub_759610();
  v30 = (*(v14 + 88))(v16, v13);
  v73 = v28;
  v70 = v29;
  if (v30 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    if (v30 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v30 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      v33 = v93;
      v34 = v82;
      if (qword_93D880 != -1)
      {
        swift_once();
      }

      v38 = v90;
      v39 = sub_BE38(v90, qword_99F178);
      (*(v88 + 16))(v87, v39, v38);
      v37 = 4;
    }

    else
    {
      v33 = v93;
      v34 = v82;
      if (qword_93D878 != -1)
      {
        swift_once();
      }

      v35 = v90;
      v36 = sub_BE38(v90, qword_99F160);
      (*(v88 + 16))(v87, v36, v35);
      (v94)(v16, v13);
      v37 = 1;
    }

    v94 = v37;
    goto LABEL_13;
  }

  if (qword_93D878 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v31 = v90;
    v32 = sub_BE38(v90, qword_99F160);
    (*(v88 + 16))(v87, v32, v31);
    v94 = 1;
    v33 = v93;
    v34 = v82;
LABEL_13:
    v40 = v81;
    sub_26F08();
    v41 = [v33 traitCollection];
    v42 = sub_769E10();

    sub_759620();
    v43 = sub_7653B0();
    v101[3] = v43;
    v82 = sub_483034(&qword_93F9B0, &type metadata accessor for Feature);
    v101[4] = v82;
    v44 = sub_B1B4(v101);
    v45 = *(v43 - 8);
    v46 = *(v45 + 104);
    LODWORD(v81) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v79 = v45 + 104;
    v80 = v46;
    v46(v44);
    v47 = v42;
    sub_765C30();
    sub_BEB8(v101);
    v69 = v47;
    sub_762D00();
    sub_762CE0();
    v48 = v33;
    v49 = v34[1];
    v50 = v83;
    v49(v40, v83);
    if (qword_93D888 != -1)
    {
      swift_once();
    }

    sub_BE38(v90, qword_99F190);
    v51 = [v48 traitCollection];
    v52 = sub_769E10();

    sub_759630();
    v100[3] = v43;
    v100[4] = v82;
    v53 = sub_B1B4(v100);
    v80(v53, v81, v43);
    v54 = v52;
    sub_765C30();
    sub_BEB8(v100);
    sub_762D00();
    sub_762CE0();
    v49(v40, v50);
    v94 = sub_7595F0();
    if (v94 >> 62)
    {
      v55 = sub_76A860();
      v82 = v54;
      if (!v55)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v55 = *(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8));
      v82 = v54;
      if (!v55)
      {
        goto LABEL_29;
      }
    }

    type metadata accessor for PrivacyCategoryView();
    if (v55 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v56 = 0;
  v57 = v94 & 0xC000000000000001;
  v58 = _swiftEmptyArrayStorage;
  do
  {
    if (v57)
    {
      v59 = sub_76A770();
    }

    else
    {
      v59 = *(v94 + 8 * v56 + 32);
    }

    v60 = sub_4DBE18(v59, v93);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_7AE30(0, *(v58 + 2) + 1, 1, v58);
    }

    v62 = *(v58 + 2);
    v61 = *(v58 + 3);
    if (v62 >= v61 >> 1)
    {
      v58 = sub_7AE30((v61 > 1), v62 + 1, 1, v58);
    }

    ++v56;

    v98 = v92;
    v99 = &protocol witness table for LayoutViewPlaceholder;
    *&v97 = v60;
    *(v58 + 2) = v62 + 1;
    sub_10914(&v97, &v58[5 * v62 + 4]);
  }

  while (v55 != v56);
LABEL_29:

  v63 = [v93 traitCollection];
  sub_767500();

  v64 = v92;
  swift_allocObject();
  v65 = sub_7670B0();
  (*(v85 + 16))(v74, v84, v86);
  v98 = v64;
  v99 = &protocol witness table for LayoutViewPlaceholder;
  *&v97 = v73;
  v96[23] = v64;
  v96[24] = &protocol witness table for LayoutViewPlaceholder;
  v96[19] = &protocol witness table for LayoutViewPlaceholder;
  v96[20] = v72;
  v96[18] = v64;
  v96[14] = &protocol witness table for LayoutViewPlaceholder;
  v96[15] = v71;
  v96[13] = v64;
  v96[9] = &protocol witness table for LayoutViewPlaceholder;
  v96[10] = v65;
  v94 = v65;
  v96[8] = v64;
  v96[5] = v70;
  sub_134D8(v101, v96);
  sub_134D8(v100, &v95);

  sub_759610();
  v66 = v76;
  sub_75CBE0();
  sub_483034(&qword_951450, &type metadata accessor for PrivacyTypeLayout);
  v67 = v78;
  sub_7665A0();

  (*(v77 + 8))(v66, v67);
  sub_BEB8(v100);
  sub_BEB8(v101);
  (*(v88 + 8))(v87, v90);
  (*(v85 + 8))(v84, v86);
  return a2;
}

void sub_4825A0()
{
  v1 = v0;
  v2 = sub_75BE90();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_759610();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_style;
  swift_beginAccess();
  (*(v3 + 24))(v1 + v6, v5, v2);
  swift_endAccess();
  sub_815D4();
  (*(v3 + 8))(v5, v2);
  v7 = sub_759620();
  sub_811E4(v7, v8);
  v9 = sub_759630();
  sub_811F0(v9, v10);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_artwork) = sub_759640();

  v11 = sub_7595F0();
  sub_8458C();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categories) = v11;

  sub_81358();
}

uint64_t sub_482738()
{
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_artwork))
  {

    sub_765320();
    sub_75A110();
    sub_759210();
    sub_75A090();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_75A040();

    sub_10A2C(v10, &unk_9443A0);
  }

  v1 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categoryViews;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = sub_76A860();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (*&v6[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category])
      {

        sub_75B5F0();

        sub_765320();
        v8 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_iconView];
        sub_759210();
        sub_483034(&qword_9496B0, &type metadata accessor for ArtworkView);
        v9 = v8;
        sub_76A6E0();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_75A040();

        sub_10A2C(v10, &unk_9443A0);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_482A74(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = sub_76A920();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_764930();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_1ED18(a1, v8, &qword_951BE0);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 104))(v12, enum case for Shelf.ContentType.privacyFooter(_:), v9);
    sub_483034(&qword_942D68, &type metadata accessor for Shelf.ContentType);
    sub_769430();
    sub_769430();
    if (v27 == v25 && v28 == v26)
    {
      v20 = *(v10 + 8);
      v20(v12, v9);
      v20(v15, v9);
    }

    else
    {
      v21 = sub_76A950();
      v22 = *(v10 + 8);
      v22(v12, v9);
      v22(v15, v9);

      if ((v21 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

  sub_10A2C(v8, &qword_951BE0);
LABEL_3:
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v16 = sub_766CA0();
  sub_BE38(v16, qword_99FE00);
  sub_766470();
  sub_766700();
  v18 = v17;
  (*(v3 + 8))(v5, v24);
  return v18;
}

uint64_t sub_482E70()
{
  sub_759210();
  sub_483034(&qword_945810, &type metadata accessor for ArtworkView);
  sub_75A0C0();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categoryViews;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = sub_76A860();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      sub_75A0C0();
    }
  }

  return result;
}

uint64_t sub_482FF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_483034(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_483080(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v20 = a2;
  v6 = sub_7656A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v21 = sub_7656C0();
  v13 = *(v21 - 8);
  v14 = __chkstk_darwin(v21);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v12, enum case for PageGrid.Direction.vertical(_:), v6, v14);
  if (a3)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_7;
    }

    v18 = result;
    [result bounds];
  }

  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    (*(v7 + 16))(v9, v12, v6);
    sub_40DC7C(0.0);
    sub_765670();
    (*(v7 + 8))(v12, v6);
    return (*(v13 + 8))(v16, v21);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

void sub_4833E8()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TransitionViewContainer();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong superview];

    if (v3)
    {
      sub_2630C();
      v4 = v0;
      v5 = sub_76A1C0();

      if (v5)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;
          [v4 bounds];
          [v7 setFrame:?];
        }
      }
    }
  }
}

void sub_483500(void *a1)
{
  v1 = a1;
  sub_4833E8();
}

id sub_483570()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransitionViewContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_4835F4()
{
  swift_unknownObjectWeakInit();
  sub_76A840();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for TodayCardGrid.SizeCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TodayCardGrid.SizeCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_4837FC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_483810(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_483830(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_143C7C(0, v1, 0);
  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v5 = *(v4 + 8 * v3);
    v6 = *(v5 + 16);

    if (v6 >= 2)
    {
      break;
    }

    v7 = v5;
LABEL_16:
    v17 = _swiftEmptyArrayStorage[2];
    v16 = _swiftEmptyArrayStorage[3];
    if (v17 >= v16 >> 1)
    {
      sub_143C7C((v16 > 1), v17 + 1, 1);
    }

    ++v3;
    _swiftEmptyArrayStorage[2] = v17 + 1;
    _swiftEmptyArrayStorage[v17 + 4] = v7;
    if (v3 == v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v7 = v5;
  if ((result & 1) == 0)
  {
    result = sub_45D560(v5);
    v7 = result;
  }

  v9 = 0;
  v10 = v7 + 32;
  while (1)
  {
    v11 = v9 + 1;
    v12 = v6 - (v9 + 1);
    if (__OFSUB__(v6, v9 + 1))
    {
      break;
    }

    if (v9 != v12)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      v13 = *(v7 + 16);
      if (v9 >= v13)
      {
        goto LABEL_22;
      }

      if (v12 >= v13)
      {
        goto LABEL_23;
      }

      v14 = v7 + v9;
      v15 = *(v14 + 32);
      *(v14 + 32) = *(v10 + v12);
      *(v10 + v12) = v15;
    }

    v9 = v11;
    if (v6 >> 1 == v11)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

Swift::Int sub_4839B4()
{
  v1 = *v0;
  sub_76AA30();
  if ((v1 - 4) >= 3u)
  {
    sub_76AA40(2uLL);
  }

  else
  {
    v1 = qword_79EE30[(v1 - 4)];
  }

  sub_76AA40(v1);
  return sub_76AA80();
}

void sub_483A2C()
{
  v1 = *v0;
  if ((v1 - 4) >= 3u)
  {
    sub_76AA40(2uLL);
  }

  else
  {
    v1 = qword_79EE30[(v1 - 4)];
  }

  sub_76AA40(v1);
}

Swift::Int sub_483A88()
{
  v1 = *v0;
  sub_76AA30();
  if ((v1 - 4) >= 3u)
  {
    sub_76AA40(2uLL);
  }

  else
  {
    v1 = qword_79EE30[(v1 - 4)];
  }

  sub_76AA40(v1);
  return sub_76AA80();
}

BOOL sub_483AFC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 6:
      return v3 == 6;
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 4) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_483B68()
{
  result = qword_9561D0;
  if (!qword_9561D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9561D0);
  }

  return result;
}

uint64_t sub_483BBC()
{
  v0 = sub_BD88(&qword_94AD20);
  sub_161DC(v0, qword_99DCE8);
  sub_BE38(v0, qword_99DCE8);
  type metadata accessor for DeviceType(0);
  return sub_768800();
}

uint64_t sub_483C3C()
{
  v0 = sub_BD88(&unk_94F1F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v23 - v2;
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765550();
  v9 = v8;
  result = (*(v5 + 8))(v7, v4);
  v11 = floor(v9);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = v11;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v1 + 8))(v3, v0);
  v13 = *(v23[1] + 16);

  if (!v12)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v14 = v13 / v12;
  v15 = v13 % v12;
  if (v15)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = v14;
  }

  if (v16 < 0)
  {
    goto LABEL_26;
  }

  for (i = _swiftEmptyArrayStorage; v16; --v16)
  {
    if (v15 && v16 == 1)
    {
      v18 = sub_7694E0();
      *(v18 + 16) = v15;
      v19 = (v18 + 32);
      v20 = v15;
    }

    else
    {
      if (v12 < 0)
      {
        __break(1u);
        goto LABEL_22;
      }

      v18 = sub_7694E0();
      *(v18 + 16) = v12;
      v19 = (v18 + 32);
      v20 = v12;
    }

    memset(v19, 4, v20);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_7B850(0, i[2] + 1, 1, i);
      i = result;
    }

    v22 = i[2];
    v21 = i[3];
    if (v22 >= v21 >> 1)
    {
      result = sub_7B850((v21 > 1), v22 + 1, 1, i);
      i = result;
    }

    i[2] = v22 + 1;
    i[v22 + 4] = v18;
  }

  return i;
}

void *sub_483F58()
{
  v0 = sub_BD88(&unk_94F1F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - v2;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v1 + 8))(v3, v0);
  v4 = *(v12[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_BD88(&qword_941A40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_77B6D0;
  *(v5 + 32) = &off_87E158;
  if (v4 != 1)
  {
    v6 = v4 >> 1;
    do
    {
      v7 = (v4 & 1) == 0 && v6 == 1;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v7)
      {
        v10 = &off_87E1A8;
      }

      else
      {
        v10 = &off_87E180;
      }

      if (v9 >= v8 >> 1)
      {
        v5 = sub_7B850((v8 > 1), v9 + 1, 1, v5);
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v10;
      --v6;
    }

    while (v6);
  }

  return v5;
}

void *sub_484124()
{
  v0 = sub_BD88(&unk_94F1F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - v2;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v1 + 8))(v3, v0);
  v4 = *(v15[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = _swiftEmptyArrayStorage;
  v6 = (v4 + 1) >> 1;
  v7 = v4 & 1;
  do
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v6 == 1 && v7)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_7B850(0, v5[2] + 1, 1, v5);
      }

      v11 = v5[2];
      v10 = v5[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        v5 = sub_7B850((v10 > 1), v11 + 1, 1, v5);
      }

      v8 = &off_87E1F8;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = sub_7B850(0, v5[2] + 1, 1, v5);
      }

      v11 = v5[2];
      v13 = v5[3];
      v12 = v11 + 1;
      if (v11 >= v13 >> 1)
      {
        v5 = sub_7B850((v13 > 1), v11 + 1, 1, v5);
      }

      v8 = &off_87E1D0;
    }

    v5[2] = v12;
    v5[v11 + 4] = v8;
    --v6;
  }

  while (v6);
  return v5;
}

void *sub_484350(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_BD88(&qword_941A48);
    v4 = sub_7694E0();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

void *sub_4843EC(uint64_t a1)
{
  v49 = a1;
  v43 = sub_761F60();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v44 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_7649E0();
  v2 = *(v48 - 8);
  __chkstk_darwin(v48);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_94F1F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v47 = sub_761F90();
  v42 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7689F0();
  sub_7689C0();
  if (qword_93D188 != -1)
  {
    swift_once();
  }

  v13 = sub_BD88(&qword_94AD20);
  sub_BE38(v13, qword_99DCE8);
  type metadata accessor for DeviceType(0);
  sub_7686D0();

  v14 = v50;
  if (!v50)
  {
    v14 = ASKDeviceTypeGetCurrent();
  }

  v15 = sub_769240();
  v17 = v16;
  if (v15 == sub_769240() && v17 == v18)
  {

    v19 = 0;
  }

  else
  {
    v20 = sub_76A950();

    v19 = v20 ^ 1;
  }

  v21 = sub_75DA30();
  v22 = sub_769A00();

  if (v19 & 1) != 0 || (v22)
  {
    goto LABEL_15;
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v23 = *(v6 + 8);
  v23(v11, v5);
  v24 = v48;
  if ((*(v2 + 88))(v4, v48) != enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v2 + 8))(v4, v24);
LABEL_15:
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    (*(v6 + 8))(v8, v5);
    v32 = v50[2];

    v33 = sub_484350(&off_87E270, v32);

    return v33;
  }

  (*(v2 + 96))(v4, v24);
  v25 = v42;
  v26 = v46;
  v27 = v47;
  (*(v42 + 32))(v46, v4, v47);
  v28 = v44;
  sub_761F80();
  v29 = v43;
  v30 = (*(v45 + 88))(v28, v43);
  if (v30 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.hero(_:))
  {
    v31 = sub_483F58();
LABEL_19:
    v33 = v31;

    (*(v25 + 8))(v26, v27);
    return v33;
  }

  if (v30 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.grid(_:))
  {
    v31 = sub_484124();
    goto LABEL_19;
  }

  v35 = enum case for TodaySectionDisplayOptions.GroupDisplayStyle.standard(_:);
  v36 = v25;
  v37 = v30;
  sub_75DAA0();
  swift_getKeyPath();
  v38 = (v36 + 8);
  sub_768750();

  v23(v8, v5);
  if (v37 == v35)
  {
    v39 = v50[2];

    v33 = sub_484350(&off_87E220, v39);

    (*v38)(v46, v47);
  }

  else
  {
    v40 = v50[2];

    v33 = sub_484350(&off_87E248, v40);

    (*v38)(v46, v47);
    (*(v45 + 8))(v44, v29);
  }

  return v33;
}

uint64_t sub_484A9C()
{
  v0 = sub_BD88(&unk_94F1F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - v2;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v1 + 8))(v3, v0);
  v4 = *(v15[1] + 16);

  if (v4 < 0xA)
  {
    return *(&off_893040 + v4);
  }

  v6 = ((v4 - 7) * 0xAAAAAAAAAAAAAAABLL) >> 64;
  v5 = &off_87E790;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_19:
    v5 = sub_7B850(0, 4, 1, &off_87E790);
  }

  v7 = 0;
  v8 = v6 >> 1;
  do
  {
    if (v7 % 3 < 0)
    {
      __break(1u);
      goto LABEL_19;
    }

    v6 = *(&off_87E790 + v7 % 3 + 4);
    v9 = v5[2];
    v10 = v5[3];

    if (v9 >= v10 >> 1)
    {
      v5 = sub_7B850((v10 > 1), v9 + 1, 1, v5);
    }

    ++v7;
    v5[2] = v9 + 1;
    v5[v9 + 4] = v6;
  }

  while (v8 != v7);
  v11 = v4 % 3;
  if (!(v4 % 3))
  {
    return v5;
  }

  v12 = *(v6 + 16);
  if (v12 < v11)
  {
    __break(1u);
LABEL_21:
    result = sub_45D54C(v5);
    v5 = result;
    goto LABEL_15;
  }

  if (v12 == v11)
  {
  }

  else
  {
    sub_4A61FC(v6, v6 + 32, 0, (2 * v11) | 1);
    v6 = v13;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (v9 < v5[2])
  {
    v5[v9 + 4] = v6;

    return v5;
  }

  __break(1u);
  return result;
}

void *sub_484D34()
{
  v0 = sub_BD88(&unk_94F1F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - v2;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v1 + 8))(v3, v0);
  v4 = *(v13[1] + 16);

  if (v4)
  {
    v5 = 0;
    v6 = (v4 + 1) >> 1;
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v6 - 1 == v5 && (v4 & 1) != 0)
      {
        if (v5)
        {
          v9 = &off_87E840;
        }

        else
        {
          v9 = &off_87E818;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v5)
        {
          v9 = &off_87E7C8;
        }

        else
        {
          v9 = &off_87E7F0;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_9:
          v7 = sub_7B850(0, v7[2] + 1, 1, v7);
        }
      }

      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        v7 = sub_7B850((v10 > 1), v11 + 1, 1, v7);
      }

      ++v5;
      v7[2] = v11 + 1;
      v7[v11 + 4] = v9;
      if (v6 == v5)
      {
        return v7;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_484F34()
{
  v0 = sub_BD88(&unk_94F1F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - v2;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v1 + 8))(v3, v0);
  v4 = *(v12[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_BD88(&qword_941A40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_77B6D0;
  *(v5 + 32) = &off_87E868;
  if (v4 != 1)
  {
    v6 = v4 >> 1;
    do
    {
      v7 = (v4 & 1) == 0 && v6 == 1;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v7)
      {
        v10 = &off_87E890;
      }

      else
      {
        v10 = &off_87E8B8;
      }

      if (v9 >= v8 >> 1)
      {
        v5 = sub_7B850((v8 > 1), v9 + 1, 1, v5);
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v10;
      --v6;
    }

    while (v6);
  }

  return v5;
}

void *sub_485100()
{
  v0 = sub_BD88(&unk_94F1F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - v2;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v1 + 8))(v3, v0);
  v4 = *(v11[1] + 16);

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_BD88(&qword_941A40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_77B6D0;
  *(v5 + 32) = &off_87E8E0;
  if (v4 != 1)
  {
    v6 = 0;
    do
    {
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v4 >> 1) - 1 != v6 || (v4)
      {
        if (v6)
        {
          v9 = &off_87E908;
        }

        else
        {
          v9 = &off_87E930;
        }
      }

      else if (v6)
      {
        v9 = &off_87E980;
      }

      else
      {
        v9 = &off_87E958;
      }

      if (v7 >> 1 <= v8)
      {
        v5 = sub_7B850((v7 > 1), v8 + 1, 1, v5);
      }

      ++v6;
      *(v5 + 16) = v8 + 1;
      *(v5 + 8 * v8 + 32) = v9;
    }

    while (v4 >> 1 != v6);
  }

  return v5;
}

void *sub_485310()
{
  v0 = sub_761F60();
  v43 = *(v0 - 8);
  v44 = v0;
  __chkstk_darwin(v0);
  v40 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_7649E0();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_94F1F0);
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v38 - v8;
  v9 = sub_761F90();
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_765540();
  v45 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7656C0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765550();
  v19 = v18;
  v20 = *(v15 + 8);
  v20(v17, v14);
  if (v19 <= 1.0)
  {
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    (*(v50 + 8))(v6, v4);
    v35 = *(v51 + 16);

    return sub_484350(&off_87E9A8, v35);
  }

  sub_75DA20();
  sub_7655E0();
  v20(v17, v14);
  if (qword_93C240 != -1)
  {
    swift_once();
  }

  sub_BE38(v11, qword_99A2A0);
  v21 = sub_7654F0();
  (*(v45 + 8))(v13, v11);
  v22 = v46;
  sub_75DAA0();
  swift_getKeyPath();
  v23 = v47;
  sub_768750();

  (*(v50 + 8))(v22, v4);
  v25 = v48;
  v24 = v49;
  if ((*(v48 + 88))(v23, v49) != enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v25 + 8))(v23, v24);
    return sub_484D34();
  }

  (*(v25 + 96))(v23, v24);
  v26 = v41;
  v27 = v39;
  v28 = v23;
  v29 = v42;
  (*(v41 + 32))(v39, v28, v42);
  v30 = v40;
  sub_761F80();
  v32 = v43;
  v31 = v44;
  v33 = (*(v43 + 88))(v30, v44);
  if (v33 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.hero(_:))
  {
    if (v21)
    {
      v34 = sub_484F34();
    }

    else
    {
      v34 = sub_485100();
    }
  }

  else
  {
    if (v33 == enum case for TodaySectionDisplayOptions.GroupDisplayStyle.grid(_:))
    {
      goto LABEL_11;
    }

    if (v33 != enum case for TodaySectionDisplayOptions.GroupDisplayStyle.standard(_:))
    {
      v37 = sub_484D34();
      (*(v32 + 8))(v30, v31);
      goto LABEL_14;
    }

    if ((v21 & 1) == 0)
    {
LABEL_11:
      v34 = sub_484D34();
    }

    else
    {
      v34 = sub_484A9C();
    }
  }

  v37 = v34;
LABEL_14:
  (*(v26 + 8))(v27, v29);
  return v37;
}

uint64_t sub_485980(uint64_t a1)
{
  v2 = sub_764930();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_94F1F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    return sub_483C3C();
  }

  v11 = sub_75DA30();
  v12 = sub_7699D0();

  if (v12)
  {
    v13 = sub_4843EC(a1);
  }

  else
  {
    v13 = sub_485310();
  }

  v14 = v13;
  (*(v3 + 8))(v5, v2);
  return v14;
}

uint64_t sub_485B90(uint64_t a1)
{
  v2 = sub_764930();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_94F1F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  v25 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v16 = *(v7 + 8);
  v16(v15, v6);
  v23 = v3;
  v24 = v2;
  LODWORD(a1) = (*(v3 + 88))(v5, v2);
  LODWORD(v2) = enum case for Shelf.ContentType.miniTodayCard(_:);
  sub_BD88(&qword_941A40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_77B6D0;
  if (a1 == v2)
  {
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v16(v12, v6);
    v18 = *(v26 + 16);

    if (v18)
    {
      v19 = sub_7694E0();
      *(v19 + 16) = v18;
      memset((v19 + 32), 4, v18);
      *(v17 + 32) = v19;
    }

    else
    {
      *(v17 + 32) = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v16(v9, v6);
    v20 = *(v26 + 16);

    if (v20)
    {
      v21 = sub_7694E0();
      v21[2] = v20;
      memset(v21 + 4, 5, v20);
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    *(v17 + 32) = v21;
    (*(v23 + 8))(v5, v24);
  }

  return v17;
}

unint64_t sub_485F28()
{
  result = qword_9561D8;
  if (!qword_9561D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9561D8);
  }

  return result;
}

uint64_t type metadata accessor for SearchFocusLayoutSectionProvider()
{
  result = qword_9561E8;
  if (!qword_9561E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_486018()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = sub_76A860();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = v0[1];
  if (v3 != v2)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = sub_76A770();
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_14:
        __break(1u);
        return;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (!__OFADD__(v3, 1))
    {
      v0[1] = v3 + 1;
      v6 = v0[2];
      v8 = v4;
      v6(&v7, &v8);

      return;
    }

    goto LABEL_13;
  }
}

uint64_t sub_486154(uint64_t a1)
{
  v2 = v1;
  sub_134D8(a1, v9);
  type metadata accessor for SearchLandingLayoutSectionProvider();
  swift_allocObject();
  sub_134D8(v9, v8);
  sub_134D8(v8, v7);

  v4 = sub_762B60();
  sub_BEB8(v8);
  sub_BEB8(v9);
  *(v2 + qword_9561E0) = v4;
  sub_134D8(a1, v9);
  sub_134D8(v9, v8);
  v5 = sub_762B60();
  sub_BEB8(a1);
  sub_BEB8(v9);
  return v5;
}

id sub_486254(SEL *a1, uint64_t (*a2)(void), void (*a3)(char *, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v237 = a8;
  v232 = a7;
  v228 = a6;
  v229 = a5;
  v230 = a4;
  v251 = a3;
  v252 = a2;
  v253 = a10;
  v236 = a9;
  v11 = sub_7685A0();
  __chkstk_darwin(v11 - 8);
  v239 = (&v224 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_75C840();
  v245 = *(v13 - 8);
  v246 = v13;
  __chkstk_darwin(v13);
  v240 = (&v224 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v224 - v16;
  v226 = sub_7656C0();
  v227 = *(v226 - 8);
  __chkstk_darwin(v226);
  v225 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v19 - 8);
  v231 = &v224 - v20;
  v21 = sub_764930();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v235 = &v224 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v249 = &v224 - v25;
  __chkstk_darwin(v26);
  v28 = &v224 - v27;
  v29 = sub_BD88(&unk_94F1F0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  *&v234 = &v224 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v224 - v33;
  __chkstk_darwin(v35);
  v238 = &v224 - v36;
  __chkstk_darwin(v37);
  v39 = &v224 - v38;
  v233 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v40 = *(v30 + 8);
  v243 = v29;
  v242 = v30 + 8;
  v241 = v40;
  v40(v39, v29);
  v247 = v28;
  v248 = v22;
  v43 = *(v22 + 88);
  v42 = (v22 + 88);
  v41 = v43;
  v244 = v21;
  v44 = (v43)(v28, v21);
  if (v44 == enum case for Shelf.ContentType.singleColumnList(_:) || v44 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v64 = v252();
    v65 = *(v64 + 16);
    v66 = _swiftEmptyArrayStorage;
    if (v65)
    {
      v254 = _swiftEmptyArrayStorage;
      sub_143C5C(0, v65, 0);
      v249 = *(v245 + 16);
      v67 = (*(v245 + 80) + 32) & ~*(v245 + 80);
      v224 = v64;
      v68 = v64 + v67;
      v235 = "outSectionProvider";
      v69 = *(v245 + 72);
      v247 = v245 + 8;
      v248 = v69;
      v234 = xmmword_77B6D0;
      v66 = v254;
      v70 = v246;
      v71 = v240;
      v245 += 16;
      do
      {
        (v249)(v71, v68, v70);
        sub_762B70();
        sub_B170(&aBlock, v258);
        if (sub_763770() && swift_conformsToProtocol2())
        {
          sub_BEB8(&aBlock);
          sub_75EAF0();
          v73 = v72;
        }

        else
        {
          sub_BEB8(&aBlock);
          if (qword_93DEF0 != -1)
          {
            swift_once();
          }

          v252 = sub_768FF0();
          v251 = sub_BE38(v252, qword_9A0400);
          sub_BD88(&qword_93FD00);
          sub_7685F0();
          *(swift_allocObject() + 16) = v234;
          sub_768590();
          v261._object = (v235 | 0x8000000000000000);
          v261._countAndFlagsBits = 0xD000000000000047;
          sub_768580(v261);
          swift_getKeyPath();
          v74 = v238;
          sub_75C7B0();

          swift_getKeyPath();
          v258 = v244;
          sub_B1B4(&aBlock);
          v75 = v243;
          sub_768750();

          v76 = v75;
          v71 = v240;
          v241(v74, v76);
          sub_768560();
          sub_10A2C(&aBlock, &unk_93FBD0);
          v262._countAndFlagsBits = 0;
          v262._object = 0xE000000000000000;
          sub_768580(v262);
          sub_7685B0();
          sub_768EA0();

          v73 = 0.0;
          v70 = v246;
        }

        (*v247)(v71, v70);
        v254 = v66;
        v78 = *(v66 + 2);
        v77 = *(v66 + 3);
        if (v78 >= v77 >> 1)
        {
          sub_143C5C((v77 > 1), v78 + 1, 1);
          v66 = v254;
        }

        *(v66 + 2) = v78 + 1;
        v66[v78 + 4] = v73;
        v68 += v248;
        --v65;
      }

      while (v65);
      v49 = v233;
      v79 = v231;
    }

    else
    {
      v49 = v233;
      v79 = v231;
    }

    v89 = COERCE_DOUBLE(sub_2FD90C(v66));
    v90 = v229;
    if ((v91 & 1) != 0 || v89 <= 0.0)
    {

      goto LABEL_31;
    }

    v92 = sub_75F960();

    v93 = [objc_opt_self() sectionWithGroup:v92];
    swift_getObjectType();
    sub_761E30();
    sub_BE70(0, &unk_956240);
    isa = sub_769450().super.isa;

    [v93 setBoundarySupplementaryItems:isa];

    sub_761E20();
    sub_BE70(0, &unk_957FA0);
    v95 = sub_769450().super.isa;

    [v93 setDecorationItems:v95];

    v96 = v225;
    sub_75DA20();
    sub_765650();
    v98 = v97;
    v100 = v99;
    (*(v227 + 8))(v96, v226);
    sub_B170(v90, v90[3]);
    sub_761DF0();
    v102 = v101;
    sub_B170(v90, v90[3]);
    sub_761E10();
    [v93 setContentInsets:{v102, v98, v103, v100}];
    sub_762B90();
    v104 = sub_769480();
    v106 = v105;

    if (v104)
    {
      v259 = v104;
      v260 = v106;
      aBlock = _NSConcreteStackBlock;
      v256 = 1107296256;
      v257 = sub_4E4820;
      v258 = &unk_8930B8;
      v104 = _Block_copy(&aBlock);
    }

    [v93 setVisibleItemsInvalidationHandler:{v104, v224}];
    _Block_release(v104);

    return v93;
  }

  if (v44 != enum case for Shelf.ContentType.scrollablePill(_:))
  {
    v240 = &v224;
    v250 = *(v250 + qword_9561E0);
    __chkstk_darwin(v44);
    v47 = v233;
    sub_75DAA0();
    swift_getKeyPath();
    v80 = v249;
    v81 = v243;
    sub_768750();

    v241(v34, v81);
    v239 = v41;
    v82 = (v41)(v80, v244);
    v83 = v230;
    if (v82 == enum case for Shelf.ContentType.action(_:))
    {
      v84 = ASKDeviceTypeGetCurrent();
      v85 = sub_769240();
      v87 = v86;
      if (v85 == sub_769240() && v87 == v88)
      {
        goto LABEL_23;
      }

      v145 = sub_76A950();

      if (v145)
      {
        goto LABEL_46;
      }

      v84 = ASKDeviceTypeGetCurrent();
      v182 = sub_769240();
      v184 = v183;
      if (v182 == sub_769240() && v184 == v185)
      {
LABEL_23:

LABEL_46:
        v146 = (v252)(v82);
        v147 = *(v146 + 16);
        v42 = _swiftEmptyArrayStorage;
        v243 = v147;
        if (v147)
        {
          aBlock = _swiftEmptyArrayStorage;
          sub_143C5C(0, v147, 0);
          v148 = type metadata accessor for SearchActionContentView(0);
          v42 = aBlock;
          v149 = v245 + 16;
          v251 = *(v245 + 16);
          v252 = v148;
          v150 = *(v245 + 80);
          v245 = v146;
          v151 = v146 + ((v150 + 32) & ~v150);
          v152 = *(v149 + 56);
          v153 = (v149 - 8);
          v154 = v147;
          do
          {
            v155 = v246;
            (v251)(v17, v151, v246);
            v156 = sub_6B512C(v17);
            (*v153)(v17, v155);
            aBlock = v42;
            v158 = *(v42 + 2);
            v157 = *(v42 + 3);
            if (v158 >= v157 >> 1)
            {
              sub_143C5C((v157 > 1), v158 + 1, 1);
              v42 = aBlock;
            }

            *(v42 + 2) = v158 + 1;
            v42[v158 + 4] = v156;
            v151 += v152;
            --v154;
          }

          while (v154);
          v47 = v233;
          v159 = v231;
        }

        else
        {
LABEL_64:
          v159 = v231;
        }

        v166 = COERCE_DOUBLE(sub_2FD90C(v42));
        if ((v167 & 1) == 0 && v166 > 0.0)
        {
          v168 = *&v166;
          v169 = v225;
          sub_75DA20();
          sub_765550();
          v171 = v170;
          v172 = v227 + 8;
          v173 = *(v227 + 8);
          v173(v169, v226);
          v227 = v172;
          v251 = v173;
          if (v171 < 2.0)
          {
            goto LABEL_89;
          }

          v174 = v243;
          if (!v243)
          {
            goto LABEL_89;
          }

          v175 = sub_7694E0();
          *(v175 + 16) = v174;
          v176 = (v175 + 32);
          if (v174 >= 4)
          {
            v177 = v174 & 0x7FFFFFFFFFFFFFFCLL;
            v176 += v174 & 0x7FFFFFFFFFFFFFFCLL;
            v200 = vdupq_n_s64(v168);
            v201 = (v175 + 48);
            v202 = v174 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v201[-1] = v200;
              *v201 = v200;
              v201 += 2;
              v202 -= 4;
            }

            while (v202);
            if (v174 == v177)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v177 = 0;
          }

          v203 = v174 - v177;
          do
          {
            *v176++ = v168;
            --v203;
          }

          while (v203);
LABEL_89:
          v204 = sub_75F960();

          v205 = objc_opt_self();
          v252 = v204;
          v93 = [v205 sectionWithGroup:v204];
          swift_getObjectType();
          v206 = v229;
          sub_761E30();
          sub_BE70(0, &unk_956240);
          v207 = sub_769450().super.isa;

          [v93 setBoundarySupplementaryItems:v207];

          sub_761E20();
          sub_BE70(0, &unk_957FA0);
          v208 = sub_769450().super.isa;

          [v93 setDecorationItems:v208];

          v209 = v225;
          sub_75DA20();
          sub_765650();
          v211 = v210;
          v213 = v212;
          v251(v209, v226);
          sub_B170(v206, v206[3]);
          sub_761DF0();
          v215 = v214;
          sub_B170(v206, v206[3]);
          sub_761E10();
          [v93 setContentInsets:{v215, v211, v216, v213}];
          sub_762B90();
          v217 = sub_769480();
          v219 = v218;

          if (v217)
          {
            v259 = v217;
            v260 = v219;
            aBlock = _NSConcreteStackBlock;
            v256 = 1107296256;
            v257 = sub_4E4820;
            v258 = &unk_893090;
            v217 = _Block_copy(&aBlock);
          }

          v181 = v247;
          v180 = v248;
          [v93 setVisibleItemsInvalidationHandler:v217];
          _Block_release(v217);

          goto LABEL_92;
        }

        sub_BE70(0, &unk_93FFE0);
        v178 = sub_75DAB0();
        v179 = *(v178 - 8);
        (*(v179 + 16))(v159, v47, v178);
        (*(v179 + 56))(v159, 0, 1, v178);
        v93 = sub_769C40();
        sub_10A2C(v159, &unk_957F70);
        v181 = v247;
        v180 = v248;
        goto LABEL_92;
      }

      v186 = sub_76A950();

      if (v186)
      {
        goto LABEL_46;
      }
    }

    v246 = &v224;
    __chkstk_darwin(v82);
    __chkstk_darwin(v187);
    sub_762BA0();
    v188 = sub_762BB0();
    v189 = v83;
    v190 = v229;
    v191 = v237;
    v93 = v188(v47, sub_60CC8, &v224 - 4, v189, v229, v228, v232, v237, v236, v253);
    v192 = v234;
    sub_75DAA0();
    swift_getKeyPath();
    v193 = v235;
    v194 = v243;
    sub_768750();

    v241(v192, v194);
    v195 = v239(v193, v244);
    if (v195 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v196 = v252();
      v197 = sub_CB3B4(v47, v196, v230, v190, v228, v232, v191, v236, v253);

      v93 = v197;
      v180 = v248;
    }

    else
    {
      v180 = v248;
      if (v195 != enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v181 = v247;
        if (v195 == enum case for Shelf.ContentType.smallContactCard(_:))
        {
          [v93 setOrthogonalScrollingBehavior:2];
        }

        else
        {
          (*(v248 + 8))(v235, v244);
        }

        goto LABEL_92;
      }

      v198 = v252();
      v199 = sub_CC6F8(v47, v198, v230, v190, v228, v232, v237, v236, v253);

      v93 = v199;
    }

    v181 = v247;
LABEL_92:
    v220 = *(v180 + 8);
    v221 = v244;
    v220(v249, v244);
    v220(v181, v221);
    return v93;
  }

  v45 = v252();
  v46 = *(v45 + 16);
  v47 = &selRef_absoluteDimension_;
  v48 = &selRef_absoluteDimension_;
  v49 = v233;
  if (v46)
  {
    aBlock = _swiftEmptyArrayStorage;
    sub_76A7C0();
    v42 = objc_opt_self();
    v252 = objc_opt_self();
    v251 = objc_opt_self();
    ObjectType = swift_getObjectType();
    v51 = v245 + 16;
    v248 = *(v245 + 16);
    v249 = ObjectType;
    v52 = *(v245 + 80);
    v245 = v45;
    v53 = v45 + ((v52 + 32) & ~v52);
    v247 = *(v51 + 56);
    v54 = v246;
    do
    {
      (v248)(v17, v53, v54);
      v55 = sub_488E78(v17, 0, 0, 1);
      v57 = v56;
      v58 = [v42 absoluteDimension:v55];
      v59 = [v42 absoluteDimension:v57];
      v60 = [v252 sizeWithWidthDimension:v58 heightDimension:v59];

      sub_761510();
      sub_BE70(0, &unk_956250);
      v61 = sub_769450().super.isa;

      v62 = [v251 itemWithLayoutSize:v60 supplementaryItems:v61];

      (*(v51 - 8))(v17, v54);
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      v53 += v247;
      --v46;
    }

    while (v46);

    v63 = aBlock;
    v49 = v233;
    v48 = &selRef_absoluteDimension_;
    v47 = &selRef_absoluteDimension_;
  }

  else
  {

    v63 = _swiftEmptyArrayStorage;
  }

  KeyPath = swift_getKeyPath();
  aBlock = v63;
  v256 = 0;
  v257 = sub_4899EC;
  v258 = KeyPath;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_486018();
  v252 = (v63 >> 62);
  if (v111)
  {

    swift_bridgeObjectRelease_n();
    v112 = 0.0;
    goto LABEL_39;
  }

  v251 = KeyPath;
  if (v63 >> 62)
  {
    v223 = v110;
    v113 = sub_76A860();
    v110 = v223;
  }

  else
  {
    v113 = *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8));
  }

  v112 = v110;
  v79 = v256;
  if (v256 == v113)
  {
LABEL_38:

    swift_bridgeObjectRelease_n();
    v49 = v233;
    v48 = &selRef_absoluteDimension_;
    v47 = &selRef_absoluteDimension_;
LABEL_39:
    v79 = v231;
    if (v252)
    {
      goto LABEL_96;
    }

    if (!*(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  v49 = v63 & 0xC000000000000001;
  v47 = (v63 & 0xFFFFFFFFFFFFFF8);
  v48 = &selRef_absoluteDimension_;
  while (1)
  {
    if (v49)
    {
      v160 = sub_76A770();
      v161 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        goto LABEL_63;
      }

      goto LABEL_57;
    }

    if ((v79 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v79 >= *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_95;
    }

    v160 = v63[v79 + 4];
    v161 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_57:
    v162 = v160;
    v42 = [v162 layoutSize];
    v163 = [v42 heightDimension];
    [v163 dimension];
    v165 = v164;

    if (v112 < v165)
    {
      v112 = v165;
    }

    ++v79;
    if (v161 == v113)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  if (!sub_76A860())
  {
LABEL_31:

    sub_BE70(0, &unk_93FFE0);
    v107 = sub_75DAB0();
    v108 = *(v107 - 8);
    (*(v108 + 16))(v79, v49, v107);
    (*(v108 + 56))(v79, 0, 1, v107);
    v93 = sub_769C40();
    sub_10A2C(v79, &unk_957F70);
    return v93;
  }

LABEL_41:
  if (v112 < 2.22507386e-308)
  {
    goto LABEL_31;
  }

  v114 = objc_opt_self();
  v115 = v225;
  sub_75DA20();
  sub_765580();
  v117 = v116;
  v118 = v227 + 8;
  v119 = *(v227 + 8);
  v119(v115, v226);
  v120 = v119;
  v249 = v119;
  v227 = v118;
  v121 = [v114 estimatedDimension:v117];
  v122 = [v114 *v47];
  v123 = [objc_opt_self() v48[141]];

  v124 = objc_opt_self();
  sub_BE70(0, &qword_957F90);
  v125 = sub_769450().super.isa;

  v252 = v123;
  v126 = [v124 horizontalGroupWithLayoutSize:v123 subitems:v125];

  v127 = objc_opt_self();
  sub_75DA20();
  sub_7655F0();
  v129 = v128;
  v120(v115, v226);
  v130 = [v127 fixedSpacing:v129];
  [v126 setInterItemSpacing:v130];

  v131 = objc_opt_self();
  v251 = v126;
  v93 = [v131 sectionWithGroup:v126];
  swift_getObjectType();
  v132 = v229;
  sub_761E30();
  sub_BE70(0, &unk_956240);
  v133 = sub_769450().super.isa;

  [v93 setBoundarySupplementaryItems:v133];

  sub_761E20();
  sub_BE70(0, &unk_957FA0);
  v134 = sub_769450().super.isa;

  [v93 setDecorationItems:v134];

  sub_75DA20();
  sub_765650();
  v136 = v135;
  v138 = v137;
  (v249)(v115, v226);
  sub_B170(v132, v132[3]);
  sub_761DF0();
  v140 = v139;
  sub_B170(v132, v132[3]);
  sub_761E10();
  [v93 setContentInsets:{v140, v136, v141, v138}];
  [v93 setOrthogonalScrollingBehavior:1];
  sub_762B90();
  v142 = sub_769480();
  v144 = v143;

  if (v142)
  {
    v259 = v142;
    v260 = v144;
    aBlock = _NSConcreteStackBlock;
    v256 = 1107296256;
    v257 = sub_4E4820;
    v258 = &unk_8930E0;
    v142 = _Block_copy(&aBlock);
  }

  [v93 setVisibleItemsInvalidationHandler:v142];
  _Block_release(v142);

  return v93;
}

void sub_4882C8(id *a1)
{
  v1 = *a1;
  swift_getAtKeyPath();
}

uint64_t sub_488330()
{
  sub_762BC0();

  return swift_deallocClassInstance();
}

uint64_t sub_48838C(uint64_t a1, void *a2)
{
  v72 = a2;
  v3 = sub_BD88(&qword_945F18);
  __chkstk_darwin(v3 - 8);
  v74 = &v59 - v4;
  v5 = sub_BD88(&unk_956290);
  __chkstk_darwin(v5 - 8);
  v75 = &v59 - v6;
  v76 = sub_BD88(&qword_960380);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v59 - v7;
  v8 = sub_756F10();
  __chkstk_darwin(v8 - 8);
  v9 = sub_759F20();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_945010);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = sub_BD88(&qword_93F428);
  __chkstk_darwin(v16 - 8);
  v18 = &v59 - v17;
  v19 = sub_756EB0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v69 = &v59 - v24;
  __chkstk_darwin(v25);
  v70 = &v59 - v26;
  v27 = sub_759EC0();
  if (!v28)
  {
    return 0;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 0;
  }

  v67 = v27;
  v68 = v28;
  sub_759EE0();
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    if (qword_93D190 != -1)
    {
      swift_once();
    }

    v59 = qword_99DD10;
    if (qword_93D198 != -1)
    {
      swift_once();
    }

    v63 = qword_99DD18;
    (*(v10 + 16))(v12, v15, v9);
    v31 = (*(v10 + 88))(v12, v9);
    v66 = a1;
    v65 = v20;
    v64 = v10;
    v61 = v9;
    if (v31 == enum case for SearchEntity.developers(_:))
    {
      v62 = "Search.ResultsTitle.InStories";
      v32 = 0xD000000000000020;
    }

    else
    {
      if (v31 != enum case for SearchEntity.stories(_:))
      {
        if (v31 == enum case for SearchEntity.arcade(_:))
        {
          v62 = "Search.ResultsTitle.InWatch";
          v33 = 0xD00000000000001CLL;
        }

        else
        {
          if (v31 != enum case for SearchEntity.watch(_:))
          {
            result = sub_76A840();
            __break(1u);
            return result;
          }

          v62 = "must be handled.";
          v33 = 0xD00000000000001BLL;
        }

        v60 = v33;
        goto LABEL_23;
      }

      v62 = "Search.ResultsTitle.InArcade";
      v32 = 0xD00000000000001DLL;
    }

    v60 = v32;
LABEL_23:
    sub_BD88(&unk_9562A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    v35 = v68;
    *(inited + 48) = v67;
    *(inited + 56) = v35;

    v36 = sub_10DD04(inited);
    swift_setDeallocating();
    sub_10A2C(inited + 32, &qword_95DC30);
    v79._object = (v62 | 0x8000000000000000);
    v79._countAndFlagsBits = v60;
    v37._rawValue = v36;
    sub_75B740(v79, v37);

    sub_756F00();
    sub_756EC0();
    v38 = v72;
    v78[0] = v72;
    sub_1EABC();
    v39 = v38;
    sub_756ED0();
    v40 = v63;
    v78[0] = v63;
    sub_489AC0();
    v41 = v40;
    sub_756ED0();
    v78[0] = v67;
    v78[1] = v35;
    v42 = sub_7573C0();
    v43 = v74;
    (*(*(v42 - 8) + 56))(v74, 1, 1, v42);
    sub_489B14(&unk_9562C0, &type metadata accessor for AttributedString);
    sub_12EC40();
    v44 = v75;
    sub_756FC0();
    sub_10A2C(v43, &qword_945F18);
    if ((*(v73 + 48))(v44, 1, v76) == 1)
    {
      v45 = &unk_956290;
    }

    else
    {
      v46 = v44;
      v44 = v71;
      sub_489B5C(v46, v71);
      v47 = v59;
      v48 = v59;
      sub_489BCC();
      v49 = sub_756EE0();
      v77 = v47;
      sub_756F50();
      v49(v78, 0);
      v45 = &qword_960380;
    }

    sub_10A2C(v44, v45);
    v50 = v64;
    v51 = v61;
    v52 = v65;
    v53 = *(v65 + 32);
    v53(v18, v22, v19);
    (*(v52 + 56))(v18, 0, 1, v19);
    (*(v50 + 8))(v15, v51);
    if ((*(v52 + 48))(v18, 1, v19) != 1)
    {

      v57 = v70;
      v53(v70, v18, v19);
      sub_BE70(0, &qword_9562D0);
      (*(v52 + 16))(v69, v57, v19);
      v58 = sub_769A50();
      (*(v52 + 8))(v57, v19);
      return v58;
    }

    goto LABEL_27;
  }

  sub_10A2C(v15, &qword_945010);
  (*(v20 + 56))(v18, 1, 1, v19);
LABEL_27:
  sub_10A2C(v18, &qword_93F428);
  v54 = sub_764C60();
  if (!v55)
  {
    return v67;
  }

  v56 = v54;

  return v56;
}

uint64_t sub_488E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_488E78(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v80 = a4;
  v75 = a2;
  v76 = a3;
  v5 = sub_7656C0();
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v77 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766D70();
  v89 = *(v7 - 8);
  __chkstk_darwin(v7);
  v79 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v66 - v10;
  v11 = sub_766AF0();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v87 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_767030();
  v13 = *(v90 - 8);
  __chkstk_darwin(v90);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  sub_759F10();
  sub_489B14(&unk_956260, &type metadata accessor for SearchAction);
  sub_75C750();
  v86 = v102[0];
  if (!v102[0])
  {
    return 0.0;
  }

  v85 = v24;
  v70 = v5;
  v74 = v7;
  swift_getKeyPath();
  sub_75C7B0();

  sub_767020();
  if (qword_93C2D0 != -1)
  {
    swift_once();
  }

  v73 = qword_99A428;
  sub_766F90();
  v71 = v13;
  v26 = v13 + 8;
  v25 = *(v13 + 8);
  v27 = v15;
  v28 = v90;
  v25(v27, v90);
  sub_767010();
  v25(v18, v28);
  v29 = v21;
  v30 = v85;
  sub_767000();
  v72 = v29;
  v25(v29, v28);
  swift_getKeyPath();
  v82 = a1;
  sub_75C7B0();

  v31 = v99;
  v32 = v87;
  sub_766AE0();
  sub_766FA0();
  sub_B170(v102, v103);
  sub_766B50();
  sub_766AC0();
  sub_BEB8(v102);
  sub_766FE0();
  sub_766A70();
  sub_766FC0();
  sub_766A50();
  sub_766FD0();
  sub_766A60();
  sub_766FB0();
  sub_766A40();

  v33 = sub_766AB0();
  v34 = sub_48838C(v86, v33);
  v81 = v35;
  v37 = v36;
  LODWORD(v31) = ~v36;

  if (!v31)
  {

    (*(v83 + 8))(v32, v84);
    v25(v30, v90);
    return 0.0;
  }

  v69 = v26;
  (*(v71 + 16))(v72, v30, v90);
  v68 = v37;
  v67 = v25;
  if (v37)
  {
    sub_4899F8(v34, v81, 1);
    sub_766D50();
    v38 = v79;
    v39 = v34;
    sub_766DB0();
  }

  else
  {
    sub_4899F8(v34, v81, 0);
    sub_766D50();
    v38 = v79;
    v39 = v34;
    sub_766D90();
  }

  v41 = v74;
  (*(v89 + 32))(v88, v38, v74);

  v42 = sub_764C70();

  v43 = v73;
  if (v42 && (v44 = [objc_opt_self() configurationWithTextStyle:v73 scale:2], swift_getKeyPath(), sub_75C7B0(), , v45 = v102[0], v46 = objc_msgSend(v44, "configurationWithTraitCollection:", v102[0]), v45, v44, v47 = sub_759910(), , v46, v47))
  {
    [v47 size];
    v49 = v48;
    v51 = v50;

    *(&v100 + 1) = &type metadata for FixedSizedPlaceholder;
    v101 = sub_1ECC4();
    *&v99 = v49;
    *(&v99 + 1) = v51;
  }

  else
  {
    v101 = 0;
    v99 = 0u;
    v100 = 0u;
  }

  v98[3] = v41;
  v98[4] = &protocol witness table for LabelPlaceholder;
  v52 = sub_B1B4(v98);
  (*(v89 + 16))(v52, v88, v41);
  swift_getKeyPath();
  sub_75C7B0();

  sub_769BA0();
  sub_867FC(&v99, &v95);
  sub_134D8(v98, v94);
  v94[8] = &type metadata for SearchLinkLayout;
  v94[9] = sub_8686C();
  v53 = swift_allocObject();
  v94[5] = v53;
  v54 = sub_86910();
  v55 = swift_allocObject();
  sub_134D8(v94, v55 + 16);
  sub_867FC(&v95, &v92);
  if (v93)
  {
    sub_10914(&v92, v91);
    v56 = swift_allocObject();
    sub_10914(v91, v56 + 16);
    v57 = v43;
    sub_BEB8(v94);
    sub_10A2C(&v95, &unk_941EB0);
    v58 = &type metadata for AutoAdjustingPlaceable;
    v59 = v54;
  }

  else
  {
    v60 = v43;
    sub_BEB8(v94);
    sub_10A2C(&v95, &unk_941EB0);
    v56 = 0;
    v58 = 0;
    v59 = 0;
  }

  v53[2] = v56;
  v53[3] = 0;
  v53[4] = 0;
  v53[5] = v58;
  v53[6] = v59;
  v53[7] = v55;
  v53[10] = &type metadata for AutoAdjustingPlaceable;
  v53[11] = v54;
  v53[12] = v43;
  v53[13] = 0x4014000000000000;
  v96 = sub_767340();
  v97 = &protocol witness table for Margins;
  sub_B1B4(&v95);
  sub_767330();
  swift_unknownObjectRelease();
  sub_10914(&v95, v102);
  sub_BEB8(v98);
  sub_10A2C(&v99, &unk_941EB0);
  if (v80)
  {
    swift_getKeyPath();
    v61 = v77;
    sub_75C7B0();

    sub_765630();
    (*(v78 + 8))(v61, v70);
  }

  swift_getKeyPath();
  sub_75C7B0();

  v62 = v99;
  sub_B170(v102, v103);
  sub_7673F0();
  v64 = v63;

  sub_489A98(v39, v81, v68);

  v40 = ceil(v64);
  sub_220350(v102);
  (*(v89 + 8))(v88, v41);
  (*(v83 + 8))(v87, v84);
  v67(v85, v90);
  return v40;
}

id sub_489928@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 layoutSize];
  *a2 = result;
  return result;
}

id sub_489970@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 heightDimension];
  *a2 = result;
  return result;
}

id sub_4899B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dimension];
  *a2 = v4;
  return result;
}

id sub_4899F8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_489A0C()
{
  if (*(v0 + 40))
  {
    sub_BEB8(v0 + 16);
  }

  sub_BEB8(v0 + 56);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_489A5C()
{
  sub_BEB8(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

void sub_489A98(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_489AB0(a1, a2, a3 & 1);
  }
}

void sub_489AB0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_489AC0()
{
  result = qword_9562B8;
  if (!qword_9562B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9562B8);
  }

  return result;
}

uint64_t sub_489B14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_489B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_960380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_489BCC()
{
  result = qword_9603B0;
  if (!qword_9603B0)
  {
    sub_133D8(&qword_960380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9603B0);
  }

  return result;
}

uint64_t sub_489C40()
{
  sub_396E8();
  result = sub_769FD0();
  qword_99DD10 = result;
  return result;
}

uint64_t sub_489C74()
{
  sub_396E8();
  result = sub_769FF0();
  qword_99DD18 = result;
  return result;
}

id sub_489CA8()
{
  result = [objc_opt_self() systemGray5Color];
  qword_99DD20 = result;
  return result;
}

uint64_t sub_489CE4()
{
  sub_396E8();
  result = sub_769FF0();
  qword_99DD28 = result;
  return result;
}

void sub_489D48()
{
  if (qword_93D1B0 != -1)
  {
    swift_once();
  }

  v0 = qword_99DD30;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2 scale:2];

  qword_99DD40 = v3;
}

unint64_t sub_489DE8()
{
  result = qword_9415B8;
  if (!qword_9415B8)
  {
    type metadata accessor for HeroCarouselCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9415B8);
  }

  return result;
}

double sub_489E58()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_769210();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_BDD0(v8);
  }

  Main = JUScreenClassGetMain();
  result = 560.0;
  if (Main == 1)
  {
    return 526.0;
  }

  return result;
}

id sub_48A19C()
{
  v1 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v1 - 8);
  v37 = v36 - v2;
  v3 = sub_7623A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = sub_BD88(&unk_9457F0);
  v7 = *(v36[0] - 8);
  __chkstk_darwin(v36[0]);
  v9 = v36 - v8;
  v10 = sub_75D850();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v17 = type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  v39.receiver = v0;
  v39.super_class = v17;
  v36[1] = v17;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v38 = v0;
  v18 = [v0 traitCollection];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v19 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v19 = qword_946938;
  }

  v20 = sub_BE38(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v16, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v37, 1, 1, v3);
  sub_BE2F8();
  sub_760940();
  v21 = v38;
  sub_75D820();
  v23 = v22;
  v25 = v24;
  (*(v7 + 8))(v9, v36[0]);
  (*(v11 + 8))(v16, v10);
  v26 = *&v21[OBJC_IVAR____TtCV18ASMessagesProvider17PlaceholderHelperP33_7738B070FC466D250071AB58821ACB5621PlacholderOfferButton_button];
  [v26 frame];
  [v26 setFrame:?];
  v27 = [v26 layer];
  v28 = v27;
  if (v23 >= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v23;
  }

  [v27 setCornerRadius:{v29 * 0.5, v36[0]}];

  sub_75D650();
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  return [v26 setCenter:{MidX, CGRectGetMidY(v41)}];
}

id sub_48A6A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_48A70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(UILabel) init];
  v5 = sub_769210();
  [v4 setText:v5];

  [v4 setNumberOfLines:1];
  [v4 setLineBreakMode:1];
  [v4 setAdjustsFontForContentSizeCategory:1];
  v6 = [objc_opt_self() preferredFontForTextStyle:a3];
  [v4 setFont:v6];

  v7 = [objc_opt_self() secondarySystemBackgroundColor];
  [v4 setTextColor:v7];

  return v4;
}

id sub_48A83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_760AD0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_7666D0();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a3, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  (*(v5 + 104))(v7, enum case for DirectionalTextAlignment.none(_:), v4);
  v13 = objc_allocWithZone(sub_75BB20());
  v14 = sub_75BB10();
  v15 = sub_769210();
  [v14 setText:v15];

  sub_75BAD0();
  v16 = objc_opt_self();
  v17 = v14;
  v18 = [v16 secondarySystemBackgroundColor];
  [v17 setTextColor:v18];

  return v17;
}

double sub_48AAA4()
{
  v1 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v1 - 8);
  v26 = &v24 - v2;
  v3 = sub_7623A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&unk_9457F0);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = sub_75D850();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v24 - v16;
  v27 = v0;
  v18 = [v0 traitCollection];
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v19 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v19 = qword_946938;
  }

  v20 = sub_BE38(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v17, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v26, 1, 1, v3);
  sub_BE2F8();
  sub_760940();
  sub_75D820();
  v22 = v21;
  (*(v7 + 8))(v9, v25);
  (*(v11 + 8))(v17, v10);
  return v22;
}

uint64_t sub_48AE74()
{
  v6 = [v0 presentedViewController];
  sub_3C80C();
  sub_BD88(&qword_956378);
  if (swift_dynamicCast())
  {
    sub_10914(v4, v7);
    v1 = v8;
    v2 = v9;
    sub_B170(v7, v8);
    (*(v2 + 8))(v1, v2);
    return sub_BEB8(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_10A2C(v4, &unk_956380);
  }
}

uint64_t sub_48AF64()
{
  v6 = [v0 presentedViewController];
  sub_3C80C();
  sub_BD88(&qword_956378);
  if (swift_dynamicCast())
  {
    sub_10914(v4, v7);
    v1 = v8;
    v2 = v9;
    sub_B170(v7, v8);
    (*(v2 + 16))(v1, v2);
    return sub_BEB8(v7);
  }

  else
  {
    v5 = 0;
    memset(v4, 0, sizeof(v4));
    return sub_10A2C(v4, &unk_956380);
  }
}

void sub_48B054(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v31 - v8;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer] = 0;
  v10 = &v3[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_interactiveDismissal];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY] = 0;
  v3[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_isScrollDismissActive] = 0;
  v11 = [objc_opt_self() effectWithStyle:4];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v3[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_overlayView] = v12;
  sub_758E80();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for TransitioningPresentedContainerView();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_presentedContainerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31.receiver = v3;
  v31.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v31, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v14 = objc_allocWithZone(UITapGestureRecognizer);
  v15 = v13;
  v16 = [v14 initWithTarget:v15 action:"dismissTapDidChange:"];
  v17 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer];
  *&v15[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_dismissTapGestureRecognizer] = v16;
  v18 = v16;

  if (v18)
  {
    v19 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_overlayView];
    [v19 addGestureRecognizer:v18];

    v20 = OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_shadowView;
    v21 = qword_93C528;
    v22 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_shadowView];
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = sub_765080();
    v24 = sub_BE38(v23, qword_99B4D8);
    v25 = *(v23 - 8);
    (*(v25 + 16))(v9, v24, v23);
    (*(v25 + 56))(v9, 0, 1, v23);
    sub_758E60();

    v26 = [*&v15[v20] layer];
    [v26 setMaskedCorners:3];

    [*&v15[v20] _setContinuousCornerRadius:20.0];
    [*&v15[v20] setAutoresizingMask:18];
    v27 = *&v15[v20];
    sub_758E40();

    v28 = OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_presentedContainerView;
    [*&v15[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_presentedContainerView] setClipsToBounds:0];
    v29 = *&v15[v28];
    v30 = *&v15[v20];
    [v29 bounds];
    [v30 setFrame:?];

    [*&v15[v28] addSubview:*&v15[v20]];
  }

  else
  {
    __break(1u);
  }
}

void sub_48B500()
{
  v1 = v0;
  v2 = sub_7656A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v54 - v7;
  v9 = sub_7656C0();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v1 containerView];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v57 = v10;
  v16 = [v1 traitCollection];
  v17 = [v16 horizontalSizeClass];

  if (v17 != &dword_0 + 2)
  {
    v50 = [v1 presentingViewController];
    v51 = [v50 view];

    if (v51)
    {
      [v51 bounds];

      return;
    }

    goto LABEL_23;
  }

  v55 = v13;
  v56 = v9;
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2);
  v18 = [v1 presentingViewController];
  v19 = [v18 view];

  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v19 bounds];
  v21 = v20;
  v23 = v22;

  v24 = [v1 presentingViewController];
  v25 = [v24 view];

  if (!v25)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v54[1] = v21;
  v54[2] = v23;
  [v25 safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  v26 = v55;
  if (qword_93CF58 != -1)
  {
    swift_once();
  }

  sub_765670();
  (*(v3 + 8))(v8, v2);
  v27 = [v1 presentingViewController];
  v28 = [v27 traitCollection];

  sub_765580();
  sub_7699E0();

  [v15 safeAreaInsets];
  v31 = fmax(v30, 44.0);
  if (v29 < 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v29;
  }

  [v15 bounds];
  v58.origin.x = sub_705B8(v33, v34, v35, v36, v31, v32);
  CGRectGetHeight(v58);
  sub_769CC0();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [v1 presentedViewController];
  type metadata accessor for ComponentViewOverflowViewController();
  v46 = swift_dynamicCastClass();
  v47 = v57;
  if (v46)
  {
    sub_153F58(v42, v44);
    v49 = v48;
  }

  else
  {

    v52 = [v1 presentedViewController];
    type metadata accessor for ProductPageReviewsOverflowViewController();
    if (swift_dynamicCastClass())
    {
      v49 = sub_6547B4();
    }

    else
    {

      v49 = v44;
    }
  }

  v53 = v56;
  v59.origin.x = v38;
  v59.origin.y = v40;
  v59.size.width = v42;
  v59.size.height = v44;
  if (CGRectGetHeight(v59) >= v49)
  {
    sub_769CC0();
  }

  else
  {
    [v15 safeAreaInsets];

    sub_705B8(v38, v40, v42, v44, 0.0, 0.0);
  }

  (*(v47 + 8))(v26, v53);
}

void sub_48BBB4(uint64_t a1, void *a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = [v2 containerView];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v11[4] = sub_48D55C;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_6C6800;
    v11[3] = &unk_893270;
    v8 = _Block_copy(v11);
    v9 = v2;
    v10 = v6;

    [a2 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
  }
}

void sub_48BCEC(int a1, char *a2, void *a3)
{
  v5 = [a2 presentedViewController];
  v10 = [v5 view];

  v6 = [a2 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == &dword_0 + 2)
  {
    if (v10)
    {
      v8 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_shadowView];
      v9 = v10;
      [v8 _continuousCornerRadius];
      [v9 _setContinuousCornerRadius:?];
    }
  }

  else if (v10)
  {
    [v10 _setContinuousCornerRadius:0.0];
  }

  [a3 bounds];
  [*&a2[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_overlayView] setFrame:?];
}

void sub_48BEB0(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_presentedContainerView] + OBJC_IVAR____TtC18ASMessagesProvider35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_48D4F8;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_6C6800;
  v10[3] = &unk_893220;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_48C064()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "containerViewWillLayoutSubviews");
  v2 = [v0 containerView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_overlayView] setFrame:?];
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_presentedContainerView];
    sub_48B500();
    [v4 setFrame:?];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [v0 containerView];
    if (!v13)
    {
LABEL_12:

      return;
    }

    v14 = v13;
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = 0.0;
    v29.size.height = 0.0;
    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    if (CGRectEqualToRect(v25, v29) || ([v14 bounds], v30.origin.x = 0.0, v30.origin.y = 0.0, v30.size.width = 0.0, v30.size.height = 0.0, CGRectEqualToRect(v26, v30)))
    {
LABEL_11:

      v3 = v14;
      goto LABEL_12;
    }

    [v14 bounds];
    MaxY = CGRectGetMaxY(v27);
    [v14 safeAreaInsets];
    v17 = MaxY - v16;
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    v18 = CGRectGetMaxY(v28);
    v19 = [v1 presentedViewController];
    v20 = [v19 view];

    if (v17 >= v18)
    {
      if (v20)
      {
        v21 = [v20 layer];
        v22 = 15;
        goto LABEL_10;
      }
    }

    else
    {
      if (v20)
      {
        v21 = [v20 layer];
        v22 = 3;
LABEL_10:
        v23 = v21;

        [v23 setMaskedCorners:v22];
        v3 = v14;
        v14 = v23;
        goto LABEL_11;
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_48C318()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v17 = v1;
    [v1 bounds];
    v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_overlayView];
    [v2 setFrame:?];
    [v17 addSubview:v2];
    v3 = [v0 presentedViewController];
    v4 = [v3 view];

    if (v4)
    {
      [v4 setClipsToBounds:1];
      [v4 setAutoresizingMask:18];
      v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_presentedContainerView];
      [v5 bounds];
      [v4 setFrame:?];
      v6 = [v4 layer];
      v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_shadowView];
      v8 = [v7 layer];
      v9 = [v8 maskedCorners];

      [v6 setMaskedCorners:v9];
      [v7 _cornerRadius];
      [v4 _setCornerRadius:?];
      [v5 addSubview:v4];
      v10 = [v0 presentedViewController];
      v11 = [v10 contentScrollView];

      sub_48D424(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
      swift_unknownObjectWeakAssign();
      sub_48D424(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
    }

    v12 = [v0 presentedViewController];
    v13 = [v12 transitionCoordinator];

    [v2 setAlpha:0.0];
    if (v13)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = v0;
      aBlock[4] = sub_48D41C;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_6C6800;
      aBlock[3] = &unk_8931D0;
      v15 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v16 = v0;

      [v13 animateAlongsideTransition:v15 completion:0];

      swift_unknownObjectRelease();
      _Block_release(v15);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_48C6A0(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_overlayView] setAlpha:1.0];
  v3 = [a2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == &dword_0 + 1)
  {
    v5 = [a2 presentedViewController];
    v6 = [v5 view];

    if (v6)
    {
      [v6 _setCornerRadius:0.0];
    }
  }
}

void sub_48C7E8(char a1)
{
  if ((a1 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_overlayView] removeFromSuperview];
    v2 = [v1 presentedViewController];
    v4 = [v2 view];

    if (v4)
    {
      [v4 setClipsToBounds:0];
      v3 = [v4 layer];
      [v3 setMaskedCorners:15];

      [v4 _setCornerRadius:0.0];
    }
  }
}

void sub_48C938()
{
  v1 = [v0 presentedViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v6[4] = sub_48D3FC;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_6C6800;
    v6[3] = &unk_893180;
    v4 = _Block_copy(v6);
    swift_unknownObjectRetain();
    v5 = v0;

    [v2 animateAlongsideTransition:v4 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v4);
    swift_unknownObjectRelease();
  }
}

void sub_48CA64(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_overlayView] setAlpha:0.0];
  v3 = *&a2[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_shadowView];
  [v3 setAlpha:0.0];
  v4 = [a2 presentedViewController];
  v5 = [v4 view];

  if (v5)
  {
    [v3 _cornerRadius];
    [v5 _setCornerRadius:?];
  }

  v6 = [a2 presentedViewController];
  v7 = [v6 view];

  if (v7)
  {
    v8 = [v7 layer];

    [v8 setMaskedCorners:15];
  }

  v9 = [a2 presentedViewController];
  [v9 setNeedsStatusBarAppearanceUpdate];
}

void sub_48CCDC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v4 = OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_isScrollDismissActive;
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_isScrollDismissActive] == 1)
    {
      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_presentedContainerView] frame];
      v5 = CGRectGetHeight(v38) * 0.14;
      [a1 translationInView:0];
      v7 = v6 - *&v1[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY];
      if (v7 >= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6 - *&v1[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY];
      }

      v9 = 0.0;
      if (v5 <= 0.0)
      {
        v9 = v5;
      }

      if (v7 < 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10 / v5;
      v12 = [a1 state];
      if (v12 > 2)
      {
        if ((v12 - 4) >= 2)
        {
          if (v12 != &dword_0 + 3)
          {
            goto LABEL_27;
          }

          if (v11 == 1.0)
          {
            v32 = [v1 presentedViewController];
            [v32 dismissViewControllerAnimated:1 completion:0];

            goto LABEL_27;
          }
        }
      }

      else if (v12)
      {
        if (v12 == &dword_0 + 2)
        {
          v13 = &v1[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_interactiveDismissal];
          swift_beginAccess();
          if (*(v13 + 24))
          {
            sub_134D8(v13, &v34);
            v14 = *(&v35 + 1);
            v15 = v36;
            sub_B170(&v34, *(&v35 + 1));
            (v15[2])(v14, v15, v11);

            sub_BEB8(&v34);
            return;
          }

          goto LABEL_29;
        }

LABEL_27:

LABEL_29:

        return;
      }

      v29 = &v1[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v29 + 24))
      {
        sub_134D8(v29, &v34);
        v30 = *(&v35 + 1);
        v31 = v36;
        sub_B170(&v34, *(&v35 + 1));
        (v31[4])(v30, v31);

        sub_BEB8(&v34);
      }

      else
      {
      }

      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      swift_beginAccess();
      sub_48D354(&v34, v29);
      swift_endAccess();
      v1[v4] = 0;
    }

    else
    {
      if ([a1 state] != &dword_0 + 1)
      {
        goto LABEL_27;
      }

      v16 = [v1 traitCollection];
      v17 = [v16 horizontalSizeClass];

      if (v17 != &dword_0 + 2)
      {
        goto LABEL_27;
      }

      [v33 contentOffset];
      v19 = v18;
      [v33 adjustedContentInset];
      if (v19 + v20 > 0.0)
      {
        goto LABEL_27;
      }

      [v33 adjustedContentInset];
      [v33 contentOffset];
      [v33 setContentOffset:?];
      sub_BD88(&unk_93F5C0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_77B6C0;
      v22 = [v1 presentedViewController];
      v23 = [v22 view];

      if (v23)
      {
        v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_shadowView];
        *(v21 + 32) = v23;
        *(v21 + 40) = v24;
        v36 = &off_8946A0;
        *&v34 = v21;
        *(&v34 + 1) = _swiftEmptyArrayStorage;
        *&v35 = 0x3FB1EB851EB851ECLL;
        *(&v35 + 1) = &type metadata for PullDownInteractiveDismissal;
        v25 = OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_interactiveDismissal;
        swift_beginAccess();
        v26 = v24;
        sub_48D354(&v34, &v1[v25]);
        swift_endAccess();
        [a1 translationInView:0];
        v28 = v27;

        *&v1[OBJC_IVAR____TtC18ASMessagesProvider43ComponentViewOverflowPresentationController_scrollDismissInitialTranslationY] = v28;
        v1[v4] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_48D354(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_955820);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_48D3C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_48D404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_48D424(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

uint64_t sub_48D51C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for SearchButton()
{
  result = qword_956398;
  if (!qword_956398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_48D620()
{
  sub_396E8();
  result = sub_76A080();
  qword_99DD48 = result;
  return result;
}

uint64_t sub_48D654()
{
  sub_396E8();
  result = sub_76A0F0();
  qword_99DD50 = result;
  return result;
}

id sub_48D688(uint64_t a1)
{
  v3 = sub_759950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[qword_956390] = a1;
  v7 = type metadata accessor for SearchButton();
  v15.receiver = v1;
  v15.super_class = v7;

  v8 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_75D600();
  v9 = qword_93D1C8;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor:qword_99DD48];
  if (qword_93D1D0 != -1)
  {
    swift_once();
  }

  [v10 setTintColor:qword_99DD50];

  v11 = [v10 layer];
  [v11 setCornerRadius:22.0];

  [v10 setClipsToBounds:1];
  (*(v4 + 104))(v6, enum case for SystemImage.magnifyingglass(_:), v3);
  v12 = sub_759930();
  (*(v4 + 8))(v6, v3);
  v13 = [v12 imageWithRenderingMode:2];

  [v10 setImage:v13 forState:0];
  [v10 addTarget:v10 action:"goToSearch" forControlEvents:64];

  return v10;
}

double sub_48D944(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  if (qword_93D448 != -1)
  {
    swift_once();
  }

  v3 = sub_7666D0();
  v4 = sub_BE38(v3, qword_99E4E8);
  sub_1A37FC(v4);
  v6 = v5;

  return v6;
}

uint64_t sub_48DA2C()
{
  v0 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v0 - 8);
  v33 = &v29 - v1;
  v32 = sub_758B40();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_75F340();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_760280();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v15 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v15 - 8);
  v17 = &v29 - v16;
  v18 = sub_765490();
  __chkstk_darwin(v18);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  (*(v20 + 104))(&v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.search(_:));
  v21 = sub_7570A0();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = sub_759E30();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v35 = 0u;
  v36 = 0u;
  sub_768790();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.push(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.never(_:), v30);
  (*(v2 + 104))(v31, enum case for FlowOrigin.inapp(_:), v32);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v23 = v33;
  v24 = sub_758AD0();
  v25 = *(v34 + qword_956390);
  v26 = sub_BD88(&unk_93F630);
  sub_768860();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v23, 1, v26) == 1)
  {

    return sub_268C8(v23);
  }

  else
  {
    sub_32AC14(v24, 1, v25, v23);

    return (*(v27 + 8))(v23, v26);
  }
}

void sub_48DFF8(void *a1)
{
  v1 = a1;
  sub_48DA2C();
}

void sub_48E040(void *a1, uint64_t a2, void *a3)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for SearchButton();
  v4 = a3;
  v5 = v8.receiver;
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", v4);
  [v5 invalidateIntrinsicContentSize];
  v6 = [v5 layer];
  [v5 intrinsicContentSize];
  [v6 setCornerRadius:v7 * 0.5];
}

id sub_48E148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_48E198()
{

  return swift_deallocClassInstance();
}

uint64_t sub_48E1F4(void *a1)
{
  [a1 _systemContentInset];
  v4 = v3;
  [a1 contentOffset];
  v6 = v5;
  [a1 contentInset];
  return (*(v1 + 16))(v4 + v6 + v7 > *(v1 + 32));
}

uint64_t sub_48E270@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    [a1 pageMarginInsets];
    v8 = [a1 traitCollection];
    v9 = [v8 horizontalSizeClass];

    if (v9 != &dword_0 + 1)
    {
      v10 = [a1 traitCollection];
      [v10 userInterfaceIdiom];
    }
  }

  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v11 = sub_766CA0();
  v12 = sub_BE38(v11, qword_99FE18);
  v82[3] = v11;
  v82[4] = &protocol witness table for StaticDimension;
  v13 = sub_B1B4(v82);
  v14 = *(v11 - 8);
  v43 = *(v14 + 16);
  v44 = v12;
  v42 = v14 + 16;
  v43(v13, v12, v11);
  if (qword_93DB70 != -1)
  {
    swift_once();
  }

  v15 = sub_7666D0();
  v54 = sub_BE38(v15, qword_99FA48);
  v16 = *(v15 - 8);
  v51 = *(v16 + 16);
  v47 = v16 + 16;
  v51(v7, v54, v15);
  v50 = enum case for FontSource.useCase(_:);
  v46 = v4[13];
  v46(v7);
  v81[3] = v11;
  v81[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v81);
  v79 = v3;
  v80 = &protocol witness table for FontSource;
  v17 = sub_B1B4(v78);
  v18 = v4[2];
  v18(v17, v7, v3);
  sub_766CB0();
  v19 = v4[1];
  v19(v7, v3);
  v41 = v15;
  v51(v7, v54, v15);
  v52 = v4 + 13;
  v20 = v46;
  (v46)(v7, v50, v3);
  v21 = v20;
  v40 = v11;
  v79 = v11;
  v80 = &protocol witness table for StaticDimension;
  sub_B1B4(v78);
  v76 = v3;
  v77 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v75);
  v53 = v18;
  v54 = (v4 + 2);
  v18(v22, v7, v3);
  v23 = v19;
  sub_766CB0();
  v49 = v4 + 1;
  v19(v7, v3);
  if (qword_93DB78 != -1)
  {
    swift_once();
  }

  v24 = v41;
  v25 = sub_BE38(v41, qword_99FA60);
  v51(v7, v25, v24);
  (v21)(v7, v50, v3);
  v26 = v40;
  v76 = v40;
  v77 = &protocol witness table for StaticDimension;
  sub_B1B4(v75);
  v73 = v3;
  v74 = &protocol witness table for FontSource;
  v27 = sub_B1B4(v72);
  v53(v27, v7, v3);
  sub_766CB0();
  v23(v7, v3);
  v48 = v23;
  if (qword_93DB80 != -1)
  {
    swift_once();
  }

  v28 = sub_BE38(v24, qword_99FA78);
  v51(v7, v28, v24);
  (v21)(v7, v50, v3);
  v73 = v26;
  v74 = &protocol witness table for StaticDimension;
  sub_B1B4(v72);
  v70 = v3;
  v71 = &protocol witness table for FontSource;
  v29 = sub_B1B4(v69);
  v53(v29, v7, v3);
  sub_766CB0();
  v48(v7, v3);
  v70 = v26;
  v71 = &protocol witness table for StaticDimension;
  v30 = sub_B1B4(v69);
  v32 = v43;
  v31 = v44;
  v43(v30, v44, v26);
  v68[3] = v26;
  v68[4] = &protocol witness table for StaticDimension;
  v33 = sub_B1B4(v68);
  v32(v33, v31, v26);
  *v7 = UIFontTextStyleFootnote;
  LODWORD(v51) = enum case for FontSource.textStyle(_:);
  v21(v7);
  v67[3] = v26;
  v67[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v67);
  v65 = v3;
  v66 = &protocol witness table for FontSource;
  v34 = sub_B1B4(v64);
  v35 = v53;
  v53(v34, v7, v3);
  v36 = UIFontTextStyleFootnote;
  sub_766CB0();
  v37 = v48;
  v48(v7, v3);
  *v7 = v36;
  (v46)(v7, v51, v3);
  v65 = v26;
  v66 = &protocol witness table for StaticDimension;
  sub_B1B4(v64);
  v62 = v3;
  v63 = &protocol witness table for FontSource;
  v38 = sub_B1B4(v61);
  v35(v38, v7, v3);
  sub_766CB0();
  v37(v7, v3);
  v62 = &type metadata for Double;
  v63 = &protocol witness table for Double;
  v60 = &protocol witness table for Double;
  v61[0] = 0x4077700000000000;
  v59 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  v58 = 0x4034000000000000;
  v56 = &type metadata for Double;
  v55 = 0x4077C00000000000;
  return sub_762750();
}

char *sub_48EA64(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_7572E0();
  v117 = *(v11 - 8);
  v118 = v11;
  __chkstk_darwin(v11);
  v116 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_955BD8);
  __chkstk_darwin(v13 - 8);
  v15 = &v111 - v14;
  v16 = sub_765E70();
  __chkstk_darwin(v16 - 8);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_itemLayoutContext;
  v18 = sub_75C840();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_pageTraits] = 0;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badgeGlyph;
  *&v4[v19] = [objc_allocWithZone(UIImageView) init];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badge;
  *&v4[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_title;
  *&v4[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_subtitle;
  *&v4[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_heroContent;
  v24 = sub_765CF0();
  sub_765CA0();
  v25 = enum case for AchievementsTheme.vibrant(_:);
  v26 = sub_765D00();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v15, v25, v26);
  (*(v27 + 56))(v15, 0, 1, v26);
  v28 = objc_allocWithZone(v24);
  *&v5[v23] = sub_765CD0();
  v29 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_separator;
  type metadata accessor for SeparatorView();
  *&v5[v29] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_lockup;
  type metadata accessor for SmallLockupView();
  *&v5[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_button;
  sub_75C560();
  *&v5[v31] = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v32 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_visualEffect;
  *&v5[v32] = [objc_allocWithZone(UIVisualEffectView) init];
  v33 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_backgroundImage;
  sub_759210();
  *&v5[v33] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_customBackgroundBlur;
  v35 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  v115 = sub_BE70(0, &qword_945800);
  v36 = sub_769460();

  *&v5[v34] = v36;
  v121.receiver = v5;
  v121.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v121, "initWithFrame:", a1, a2, a3, a4);
  v38 = [v37 contentView];
  [v38 setOverrideUserInterfaceStyle:2];

  v39 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badgeGlyph;
  v40 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badgeGlyph];
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  [v42 setPreferredSymbolConfiguration:v43];

  v44 = *&v37[v39];
  v45 = objc_opt_self();
  v46 = v44;
  v47 = [v45 secondaryLabelColor];
  [v46 setTintColor:v47];

  v48 = [*&v37[v39] layer];
  v49 = kCAFilterPlusL;
  [v48 setCompositingFilter:kCAFilterPlusL];

  v50 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badge;
  v51 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badge];
  v52 = [v45 secondaryLabelColor];
  [v51 setTextColor:v52];

  v53 = [*&v37[v50] layer];
  v113 = v49;
  [v53 setCompositingFilter:v49];

  [*&v37[v50] setAdjustsFontForContentSizeCategory:1];
  v114 = v50;
  v54 = qword_93DB70;
  v55 = *&v37[v50];
  if (v54 != -1)
  {
    swift_once();
  }

  v56 = sub_7666D0();
  sub_BE38(v56, qword_99FA48);
  v57 = v37;
  v58.super.isa = [v57 traitCollection];
  isa = v58.super.isa;
  v60 = sub_7666B0(v58).super.isa;

  v61 = objc_opt_self();
  v62 = [v61 fontWithDescriptor:v60 size:0.0];

  [v55 setFont:v62];
  v63 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_title;
  v64 = qword_93DB78;
  v65 = *&v57[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_title];
  if (v64 != -1)
  {
    swift_once();
  }

  sub_BE38(v56, qword_99FA60);
  v66.super.isa = [v57 traitCollection];
  v67 = v66.super.isa;
  v68 = sub_7666B0(v66).super.isa;

  v69 = [v61 fontWithDescriptor:v68 size:0.0];
  [v65 setFont:v69];

  v70 = *&v57[v63];
  v71 = [v45 labelColor];
  [v70 setTextColor:v71];

  [*&v57[v63] setAdjustsFontForContentSizeCategory:1];
  v112 = v63;
  v72 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_subtitle;
  v73 = qword_93DB80;
  v74 = *&v57[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_subtitle];
  if (v73 != -1)
  {
    swift_once();
  }

  sub_BE38(v56, qword_99FA78);
  v75 = [v57 traitCollection];

  v76.super.isa = v75;
  v77 = sub_7666B0(v76).super.isa;

  v78 = [v61 fontWithDescriptor:v77 size:0.0];
  [v74 setFont:v78];

  [*&v57[v72] setNumberOfLines:2];
  [*&v57[v72] setAdjustsFontForContentSizeCategory:1];
  v79 = *&v57[v72];
  v80 = [v45 secondaryLabelColor];
  [v79 setTextColor:v80];

  v81 = [*&v57[v72] layer];
  v82 = v113;
  [v81 setCompositingFilter:v113];

  v83 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_separator;
  v84 = *&v57[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_separator];
  v85 = objc_allocWithZone(UIColor);
  v86 = v84;
  v87 = [v85 initWithWhite:1.0 alpha:0.12];
  [v86 setBackgroundColor:v87];

  v88 = [*&v57[v83] layer];
  [v88 setCompositingFilter:v82];

  v89 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_backgroundImage;
  [*&v57[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_backgroundImage] setContentMode:2];
  [*&v57[v89] setClipsToBounds:1];
  v90 = [v57 contentView];
  [v90 addSubview:*&v57[v89]];

  v91 = [v57 contentView];
  v92 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_visualEffect;
  [v91 addSubview:*&v57[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_visualEffect]];

  v93 = [v57 contentView];
  [v93 addSubview:*&v37[v114]];

  v94 = [v57 contentView];
  [v94 addSubview:*&v57[v112]];

  v95 = [v57 contentView];
  [v95 addSubview:*&v57[v72]];

  v96 = [v57 contentView];
  v97 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_heroContent;
  [v96 addSubview:*&v57[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_heroContent]];

  v98 = [v57 contentView];
  [v98 addSubview:*&v57[v83]];

  v99 = [v57 contentView];
  [v99 addSubview:*&v57[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_lockup]];

  v100 = *&v57[v92];

  v101 = sub_769450().super.isa;

  [v100 setBackgroundEffects:v101];

  v119 = 0;
  v120 = 0xE000000000000000;
  sub_76A730(27);

  v119 = 0xD000000000000019;
  v120 = 0x80000000007E2FA0;
  v102 = v116;
  sub_7572D0();
  v103 = sub_7572B0();
  v105 = v104;
  (*(v117 + 8))(v102, v118);
  v122._countAndFlagsBits = v103;
  v122._object = v105;
  sub_769370(v122);

  v106 = *&v57[v92];
  v107 = sub_769210();
  [v106 _setGroupName:v107];

  v108 = *&v57[v97];
  sub_765CC0();

  v109 = *&v57[v97];
  sub_765CB0();

  return v57;
}

uint64_t sub_48F79C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_762780();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_762760();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v41 - v13;
  v74.receiver = v1;
  v74.super_class = ObjectType;
  objc_msgSendSuper2(&v74, "layoutSubviews", v12);
  v15 = swift_unknownObjectRetain();
  sub_48E270(v15, v14);
  swift_unknownObjectRelease();
  v16 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badgeGlyph;
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badgeGlyph];
  v18 = [v17 image];
  if (v18)
  {

    v19 = v17;
    [*&v1[v16] sizeToFit];
    v17 = [v1 contentView];
    [v17 insertSubview:*&v1[v16] belowSubview:*&v1[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badge]];
  }

  else
  {
    [v17 removeFromSuperview];
    v19 = 0;
  }

  (*(v8 + 16))(v10, v14, v7);
  v48 = v7;
  v45 = v14;
  v46 = v8;
  v41 = v10;
  if (v19)
  {
    v20 = sub_BE70(0, &qword_949D90);
    v21 = &protocol witness table for UIView;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v70 = 0;
    v71 = 0;
  }

  v69 = v19;
  v72 = v20;
  v73 = v21;
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badge];
  v67 = sub_BE70(0, &qword_950A70);
  v68 = &protocol witness table for UILabel;
  v66 = v22;
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_title];
  v64 = v67;
  v65 = &protocol witness table for UILabel;
  v62 = &protocol witness table for UILabel;
  v63 = v23;
  v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_subtitle];
  v61 = v67;
  v60 = v24;
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_heroContent];
  v58 = sub_765CF0();
  v59 = &protocol witness table for UIView;
  v57 = v25;
  v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_separator];
  v55 = type metadata accessor for SeparatorView();
  v56 = &protocol witness table for UIView;
  v54 = v26;
  v27 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_lockup];
  v52 = type metadata accessor for SmallLockupView();
  v53 = &protocol witness table for UIView;
  v51 = v27;
  v28 = v19;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v47;
  sub_762770();
  v36 = [v1 contentView];
  [v36 bounds];

  v37 = v42;
  sub_762740();
  (*(v43 + 8))(v37, v44);
  [v1 frame];
  CGRectGetWidth(v75);
  [v1 frame];
  CGRectGetHeight(v76);
  sub_759170();
  v38 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_visualEffect];
  [v1 frame];
  Width = CGRectGetWidth(v77);
  [v1 frame];
  [v38 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v78)}];

  (*(v49 + 8))(v35, v50);
  return (*(v46 + 8))(v45, v48);
}

uint64_t sub_48FD64(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v15.receiver = v4;
  v15.super_class = swift_getObjectType();
  v10 = objc_msgSendSuper2(&v15, "focusItemsInRect:", a1, a2, a3, a4);
  sub_BD88(&qword_9564D0);
  v11 = sub_769460();

  v16 = v11;
  v12 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_button];
  sub_769440();
  if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v16 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v13 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_heroContent];
  sub_769440();
  if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v16 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  return v16;
}

uint64_t type metadata accessor for GameCenterReengagementCollectionViewCell()
{
  result = qword_9564B8;
  if (!qword_9564B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4900D4()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_49019C()
{
  v1 = v0;
  v2 = sub_BD88(&qword_955BD8);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_765E70();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_itemLayoutContext;
  v7 = sub_75C840();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_pageTraits) = 0;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badgeGlyph;
  *(v1 + v8) = [objc_allocWithZone(UIImageView) init];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_badge;
  *(v1 + v9) = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_title;
  *(v1 + v10) = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_subtitle;
  *(v1 + v11) = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_heroContent;
  v13 = sub_765CF0();
  sub_765CA0();
  v14 = enum case for AchievementsTheme.vibrant(_:);
  v15 = sub_765D00();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v4, v14, v15);
  (*(v16 + 56))(v4, 0, 1, v15);
  v17 = objc_allocWithZone(v13);
  *(v1 + v12) = sub_765CD0();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_separator;
  type metadata accessor for SeparatorView();
  *(v1 + v18) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_lockup;
  type metadata accessor for SmallLockupView();
  *(v1 + v19) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_button;
  sub_75C560();
  *(v1 + v20) = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v21 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_visualEffect;
  *(v1 + v21) = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_backgroundImage;
  sub_759210();
  *(v1 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider40GameCenterReengagementCollectionViewCell_customBackgroundBlur;
  v24 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_BE70(0, &qword_945800);
  v25 = sub_769460();

  *(v1 + v23) = v25;
  sub_76A840();
  __break(1u);
}

uint64_t sub_490554(char a1)
{
  v2 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v2 - 8);
  v58 = &v45 - v3;
  v56 = sub_765610();
  v4 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v7 - 8);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49.i64[0] = &v45 - v10;
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  __chkstk_darwin(v14);
  v61 = &v45 - v15;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  sub_BD88(&qword_940A70);
  v20 = *(sub_765540() - 8);
  v57 = *(v20 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v50 = v22;
  *(v22 + 16) = xmmword_780120;
  v54 = v22 + v21;
  if (a1)
  {
    v23 = 1.5;
  }

  else
  {
    v23 = 2.0;
  }

  v63 = *&v23;
  sub_62634();
  sub_7655D0();
  v62 = 0x4030000000000000;
  v63 = 0x4020000000000000;
  sub_7655B0();
  v63 = 0x4034000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v60 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v29 = *(v4 + 104);
  v59 = v4 + 104;
  v55 = v29;
  v30 = v56;
  (v29)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0;
  v45 = v13;
  sub_7655D0();
  v53 = v18;
  sub_765500();
  v63 = *&v23;
  sub_7655D0();
  v62 = 0x4034000000000000;
  v63 = 0x4024000000000000;
  sub_7655B0();
  v63 = 0x4034000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v33 = v60;
  v34 = v55;
  v55(v6, v60, v30);
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0;
  sub_7655D0();
  v35 = v57;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  sub_765500();
  v46 = 2 * v35;
  v63 = 0x4008000000000000;
  sub_7655D0();
  v63 = 0x4034000000000000;
  sub_7655D0();
  v63 = 0x4034000000000000;
  sub_7655D0();
  v49 = vdupq_n_s64(0x4041000000000000uLL);
  v51 = v6;
  *v6 = v49;
  v36 = v56;
  v34(v6, v33, v56);
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0;
  sub_7655D0();
  v37 = v46;
  v38 = v51;
  sub_765500();
  v39 = v57;
  v46 = v37 + v57;
  v63 = 0x4010000000000000;
  sub_7655D0();
  v63 = 0x4034000000000000;
  sub_7655D0();
  v63 = 0x4034000000000000;
  sub_7655D0();
  *v38 = v49;
  v40 = v36;
  v41 = v55;
  v55(v38, v60, v40);
  sub_7697A0();
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0;
  sub_7655D0();
  v42 = v51;
  sub_765500();
  v46 = 4 * v39;
  v63 = 0x4014000000000000;
  sub_7655D0();
  v63 = 0x4038000000000000;
  sub_7655D0();
  v63 = 0x4034000000000000;
  sub_7655D0();
  v49 = vdupq_n_s64(0x404A000000000000uLL);
  *v42 = v49;
  v43 = v56;
  v41(v42, v60, v56);
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0;
  sub_7655D0();
  sub_765500();
  v63 = 0x4018000000000000;
  sub_7655D0();
  v63 = 0x4038000000000000;
  sub_7655D0();
  v63 = 0x4034000000000000;
  sub_7655D0();
  *v42 = v49;
  v55(v42, v60, v43);
  LOBYTE(v63) = 0;
  sub_7655D0();
  v63 = 0;
  sub_7655D0();
  sub_765500();
  return v50;
}

double sub_490F90(uint64_t a1, void *a2)
{
  v5 = sub_757F70();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_762D10();
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_757F50();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 traitCollection];
  v59 = v2;
  sub_491770(v16, v15);

  sub_757F40();
  v45 = *(v12 + 8);
  v46 = v12 + 8;
  v49 = v15;
  v47 = v11;
  v45(v15, v11);
  v48 = sub_7670D0();
  swift_allocObject();
  v50 = sub_7670B0();
  v58 = a1;
  sub_757BC0();
  sub_764EF0();

  v17 = sub_BE70(0, &qword_93F900);
  if (qword_93DA28 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  sub_BE38(v18, qword_99F670);
  v19 = [a2 traitCollection];
  sub_769E10();

  v20 = sub_7653B0();
  v70[3] = v20;
  v57 = sub_492E18(&qword_93F9B0, &type metadata accessor for Feature);
  v70[4] = v57;
  v21 = sub_B1B4(v70);
  v22 = *(v20 - 8);
  v23 = *(v22 + 104);
  v54 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v55 = v22 + 104;
  v56 = v23;
  v23(v21);
  sub_765C30();
  sub_BEB8(v70);
  sub_762D00();
  sub_762CE0();
  v24 = *(v61 + 8);
  v61 += 8;
  v25 = v24;
  v24(v10, v60);
  sub_757BD0();
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v44 = sub_BE38(v18, qword_99F688);
  v26 = a2;
  v27 = [a2 traitCollection];
  v43 = v17;
  sub_769E10();

  v69[3] = v20;
  v69[4] = v57;
  v28 = sub_B1B4(v69);
  v56(v28, v54, v20);
  sub_765C30();
  sub_BEB8(v69);
  sub_762D00();
  sub_762CE0();
  v42 = v25;
  v25(v10, v60);
  v29 = [v26 traitCollection];
  v30 = v49;
  sub_491770(v29, v49);

  sub_757F20();
  v45(v30, v47);
  v31 = v48;
  swift_allocObject();
  v47 = sub_7670B0();
  sub_757BB0();
  v32 = v26;
  v33 = [v26 traitCollection];
  sub_769E10();

  v68[3] = v20;
  v68[4] = v57;
  v34 = sub_B1B4(v68);
  v56(v34, v54, v20);
  sub_765C30();
  sub_BEB8(v68);
  sub_762D00();
  sub_762CE0();
  v42(v10, v60);
  v35 = [v32 traitCollection];
  sub_491770(v35, v30);

  v67[8] = v31;
  v67[9] = &protocol witness table for LayoutViewPlaceholder;
  v67[5] = v50;
  sub_134D8(v70, v67);
  sub_134D8(v69, &v66);
  sub_134D8(v68, &v65);
  v63 = v31;
  v64 = &protocol witness table for LayoutViewPlaceholder;
  v62 = v47;

  v36 = v51;
  sub_757F60();
  sub_492E18(&qword_956528, &type metadata accessor for InAppPurchaseShowcaseLockupViewLayout);
  v37 = v53;
  sub_7665A0();
  v39 = v38;

  (*(v52 + 8))(v36, v37);
  sub_BEB8(v68);
  sub_BEB8(v69);
  sub_BEB8(v70);
  return v39;
}

uint64_t sub_491770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v65 = a2;
  v72 = sub_75D850();
  v76 = *(v72 - 8);
  __chkstk_darwin(v72);
  v61 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v63 = &v54 - v4;
  __chkstk_darwin(v5);
  v58 = &v54 - v6;
  __chkstk_darwin(v7);
  v59 = &v54 - v8;
  v9 = sub_7664A0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_766CA0();
  __chkstk_darwin(v55);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v54 - v15;
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = sub_757CA0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757C20();
  sub_757C60();
  (*(v20 + 8))(v22, v19);
  if (qword_93DA28 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  v24 = sub_BE38(v23, qword_99F670);
  v25 = *(v23 - 8);
  v69 = *(v25 + 16);
  v68 = v25 + 16;
  v69(v12, v24, v23);
  v26 = enum case for FontSource.useCase(_:);
  v74 = v10[13];
  v75 = v10 + 13;
  v74(v12);
  v81 = v9;
  v82 = &protocol witness table for FontSource;
  v27 = sub_B1B4(v80);
  v67 = v10[2];
  v73 = v10 + 2;
  v67(v27, v12, v9);
  v60 = v18;
  sub_766CB0();
  v29 = v10[1];
  v28 = v10 + 1;
  v66 = v29;
  v29(v12, v9);
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v23, qword_99F688);
  v31 = v69;
  v69(v12, v30, v23);
  (v74)(v12, v26, v9);
  v81 = v9;
  v82 = &protocol witness table for FontSource;
  v32 = sub_B1B4(v80);
  v33 = v67;
  v67(v32, v12, v9);
  sub_766CB0();
  v34 = v66;
  v66(v12, v9);
  v54 = v30;
  v57 = v23;
  v31(v12, v30, v23);
  v56 = v26;
  (v74)(v12, v26, v9);
  v81 = v55;
  v82 = &protocol witness table for StaticDimension;
  sub_B1B4(v80);
  v78 = v9;
  v79 = &protocol witness table for FontSource;
  v35 = sub_B1B4(v77);
  v33(v35, v12, v9);
  sub_766CB0();
  v55 = v9;
  v34(v12, v9);
  v36 = sub_769A00();
  v64 = v28;
  if (v36)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v37 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v37 = qword_946938;
  }

  v38 = v72;
  v39 = sub_BE38(v72, v37);
  v40 = v76;
  v41 = *(v76 + 16);
  v42 = v58;
  v41(v58, v39, v38);
  v43 = *(v40 + 32);
  v44 = v59;
  v43(v59, v42, v38);
  sub_75D800();
  v45 = *(v40 + 8);
  v76 = v40 + 8;
  v45(v44, v38);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v46 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v46 = qword_946938;
  }

  v47 = v72;
  v48 = sub_BE38(v72, v46);
  v49 = v61;
  v41(v61, v48, v47);
  v50 = v63;
  v43(v63, v49, v47);
  sub_75D830();
  v45(v50, v47);
  v69(v12, v54, v57);
  v51 = v55;
  (v74)(v12, v56, v55);
  v78 = v51;
  v79 = &protocol witness table for FontSource;
  v52 = sub_B1B4(v77);
  v67(v52, v12, v51);
  sub_766CB0();
  v66(v12, v51);
  return sub_757F30();
}

char *sub_492074(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v66 = sub_760AD0();
  v10 = *(v66 - 8);
  __chkstk_darwin(v66);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v13 - 8);
  v15 = v57 - v14;
  v16 = sub_757CA0();
  __chkstk_darwin(v16 - 8);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_iconView;
  sub_757C20();
  v20 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v21 = sub_243D30(v18, 1);
  v67 = v5;
  *&v5[v19] = v21;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_titleLabel;
  if (qword_93DA28 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  v24 = sub_BE38(v23, qword_99F670);
  v25 = *(v23 - 8);
  v65 = *(v25 + 16);
  v65(v15, v24, v23);
  v26 = *(v25 + 56);
  v64 = v25 + 56;
  v26(v15, 0, 1, v23);
  v27 = *(v10 + 104);
  v62 = v10 + 104;
  v63 = v27;
  v28 = enum case for DirectionalTextAlignment.none(_:);
  (v27)(v12);
  v29 = sub_75BB20();
  v30 = objc_allocWithZone(v29);
  *&v67[v22] = sub_75BB10();
  v61 = OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_subtitleLabel;
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v60 = sub_BE38(v23, qword_99F688);
  v65(v15, v60, v23);
  v57[1] = v25 + 16;
  v59 = v26;
  v26(v15, 0, 1, v23);
  v31 = v66;
  v32 = v63;
  v63(v12, v28, v66);
  v58 = v29;
  v33 = objc_allocWithZone(v29);
  v34 = sub_75BB10();
  v35 = v67;
  v36 = v60;
  *&v67[v61] = v34;
  v37 = v31;
  v38 = OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v65(v15, v36, v23);
  v59(v15, 0, 1, v23);
  v32(v12, v28, v37);
  v39 = objc_allocWithZone(v58);
  *&v35[v38] = sub_75BB10();
  v40 = OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_offerButton;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v35[v40] = sub_1DD00C(0);
  v42 = type metadata accessor for InAppPurchaseShowcaseLockupView();
  v68.receiver = v35;
  v68.super_class = v42;
  v43 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v47 = v43;
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v48 = OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_subtitleLabel;
  v49 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_subtitleLabel];
  sub_BE70(0, &qword_93E540);
  v50 = v49;
  v51 = sub_769FF0();
  [v50 setTextColor:v51];

  v52 = OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v53 = *&v47[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v54 = sub_769FF0();
  [v53 setTextColor:v54];

  v55 = OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_titleLabel;
  [*&v47[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_titleLabel] setTextAlignment:1];
  [*&v47[v48] setTextAlignment:1];
  [*&v47[v52] setTextAlignment:1];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_iconView]];
  [v47 addSubview:*&v47[v55]];
  [v47 addSubview:*&v47[v48]];
  [v47 addSubview:*&v47[v52]];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_offerButton]];

  return v47;
}

uint64_t sub_4926E8()
{
  v1 = v0;
  swift_getObjectType();
  v28 = sub_7664F0();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_757F50();
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_757F70();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for InAppPurchaseShowcaseLockupView();
  v44.receiver = v0;
  v44.super_class = v24;
  objc_msgSendSuper2(&v44, "layoutSubviews");
  v9 = [v0 traitCollection];
  sub_491770(v9, v5);

  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_iconView];
  v42 = type metadata accessor for InAppPurchaseView();
  v43 = &protocol witness table for UIView;
  v41 = v10;
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_titleLabel];
  v39 = sub_75BB20();
  v40 = &protocol witness table for UILabel;
  v37 = &protocol witness table for UILabel;
  v38 = v11;
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_subtitleLabel];
  v36 = v39;
  v34 = &protocol witness table for UILabel;
  v35 = v12;
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v33 = v39;
  v32 = v13;
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_offerButton];
  v15 = type metadata accessor for OfferButton();
  v31 = &protocol witness table for UIView;
  v30 = v15;
  v29 = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_757F60();
  sub_75D650();
  v21 = v26;
  sub_757F10();
  (*(v27 + 8))(v21, v28);
  return (*(v6 + 8))(v8, v25);
}

double sub_492A50()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_757F50();
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_757F70();
  v5 = *(v26 - 8);
  *&v6 = __chkstk_darwin(v26).n128_u64[0];
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 traitCollection];
  sub_491770(v9, v4);

  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_iconView];
  v40 = type metadata accessor for InAppPurchaseView();
  v41 = &protocol witness table for UIView;
  v39 = v10;
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_titleLabel];
  v37 = sub_75BB20();
  v38 = &protocol witness table for UILabel;
  v35 = &protocol witness table for UILabel;
  v36 = v11;
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_subtitleLabel];
  v34 = v37;
  v32 = &protocol witness table for UILabel;
  v33 = v12;
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v31 = v37;
  v30 = v13;
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_offerButton];
  v15 = type metadata accessor for OfferButton();
  v29 = &protocol witness table for UIView;
  v28 = v15;
  v27 = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_757F60();
  sub_492E18(&qword_956528, &type metadata accessor for InAppPurchaseShowcaseLockupViewLayout);
  v21 = v26;
  sub_7665A0();
  v23 = v22;
  (*(v5 + 8))(v8, v21);
  return v23;
}

id sub_492D44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseShowcaseLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_492E18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_492E60()
{
  v1 = v0;
  v45 = sub_760AD0();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_757CA0();
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_iconView;
  sub_757C20();
  v11 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v12 = sub_243D30(v9, 1);
  v46 = v1;
  *(v1 + v10) = v12;
  v40 = OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_titleLabel;
  if (qword_93DA28 != -1)
  {
    swift_once();
  }

  v13 = sub_7666D0();
  v14 = sub_BE38(v13, qword_99F670);
  v15 = *(v13 - 8);
  v16 = *(v15 + 16);
  v44 = v15 + 16;
  v16(v6, v14, v13);
  v43 = *(v15 + 56);
  v43(v6, 0, 1, v13);
  v17 = *(v2 + 104);
  v18 = enum case for DirectionalTextAlignment.none(_:);
  v41 = v2 + 104;
  v42 = v17;
  v17(v47);
  v19 = sub_75BB20();
  v20 = objc_allocWithZone(v19);
  *(v46 + v40) = sub_75BB10();
  v40 = OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_subtitleLabel;
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v13, qword_99F688);
  v38 = v16;
  v39 = v21;
  v16(v6, v21, v13);
  v22 = v43;
  v43(v6, 0, 1, v13);
  v23 = v47;
  v37 = v18;
  v24 = v18;
  v25 = v45;
  v26 = v42;
  v42(v47, v24, v45);
  v36 = v19;
  v27 = objc_allocWithZone(v19);
  v28 = sub_75BB10();
  v29 = v46;
  v30 = v39;
  *(v46 + v40) = v28;
  v31 = v25;
  v32 = OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v38(v6, v30, v13);
  v22(v6, 0, 1, v13);
  v26(v23, v37, v31);
  v33 = objc_allocWithZone(v36);
  *(v29 + v32) = sub_75BB10();
  v34 = OBJC_IVAR____TtC18ASMessagesProvider31InAppPurchaseShowcaseLockupView_offerButton;
  v35 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v29 + v34) = sub_1DD00C(0);
  sub_76A840();
  __break(1u);
}

char *sub_493318(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider35SmallSearchLockupCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SmallSearchLockupCollectionViewCell();
  v10 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v12 = [v10 contentView];
  [v12 addSubview:*&v10[OBJC_IVAR____TtC18ASMessagesProvider35SmallSearchLockupCollectionViewCell_lockupView]];

  return v10;
}

id sub_4935D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallSearchLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_493638()
{
  sub_396E8();
  result = sub_769FF0();
  qword_956560 = result;
  return result;
}

char *sub_49366C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v84 = sub_759950();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7638C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v85 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v80 - v15;
  __chkstk_darwin(v16);
  v18 = &v80 - v17;
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_metrics;
  sub_7638B0();
  v23 = &v5[OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_id];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_itemType;
  v25 = sub_75FC90();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v26 = &v5[OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_labelMaxWidth];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v5[OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_truncationLegibilityThreshold];
  *v27 = 0;
  v27[8] = 1;
  v5[OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_allowsTruncation] = 2;
  swift_beginAccess();
  v88 = *(v12 + 16);
  v88(v21, &v5[v22], v11);
  v28 = sub_763880();
  v87 = v12;
  v29 = *(v12 + 8);
  v89 = v11;
  v91 = v12 + 8;
  v90 = v29;
  v29(v21, v11);
  v30 = type metadata accessor for RatingView();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating] = 0;
  *&v31[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor] = 0;
  v32 = &v31[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starPadding];
  *v32 = 0;
  v32[8] = 1;
  *&v31[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_maxNumberOfStars] = v28;
  if (qword_93D100 != -1)
  {
    swift_once();
  }

  v33 = qword_9552A8;
  *&v31[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor] = qword_9552A8;
  v31[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starSize] = 3;
  *v32 = 0;
  v32[8] = 1;
  v31[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_useCase] = 0;
  v34 = type metadata accessor for StarRow();
  v35 = objc_allocWithZone(v34);
  v36 = v33;
  *&v31[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView] = sub_43DC44(v28, 1, 3, 0, 1, 0, 0);
  v31[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars] = 0;
  v37 = objc_allocWithZone(v34);
  *&v31[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView] = sub_43DC44(v28, 0, 3, 0, 1, 0, 0);
  v96.receiver = v31;
  v96.super_class = v30;
  v38 = objc_msgSendSuper2(&v96, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_43B880();
  v39 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView;
  v40 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView];
  v41 = *&v40[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating];
  *&v40[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating] = *&v38[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating];
  v42 = v40;
  sub_43C36C(v41);

  if (*&v38[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView])
  {
    [v38 addSubview:?];
  }

  [v38 addSubview:*&v38[v39]];

  *&v5[OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_starRatingView] = v38;
  sub_75BB20();
  v43 = sub_75BB00();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_ratingCountLabel] = v43;
  v44 = &v5[v22];
  v45 = v89;
  v88(v18, v44, v89);
  v46 = v43;
  v47 = sub_763890();
  v90(v18, v45);
  [v46 setLineBreakMode:v47];

  v48 = type metadata accessor for MetadataRibbonStarRatingView();
  v95.receiver = v5;
  v95.super_class = v48;
  v49 = objc_msgSendSuper2(&v95, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v53 = v49;
  [v53 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v54 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_ratingCountLabel;
  v55 = qword_93D1D8;
  v56 = *&v53[OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_ratingCountLabel];
  if (v55 != -1)
  {
    swift_once();
  }

  [v56 setTextColor:qword_956560];

  v57 = *&v53[v54];
  sub_766B40();
  if (qword_93C740 != -1)
  {
    swift_once();
  }

  v58 = sub_760500();
  v59 = sub_BE38(v58, qword_99BB00);
  v93 = v58;
  v94 = sub_2E34E4(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle);
  v60 = sub_B1B4(v92);
  (*(*(v58 - 8) + 16))(v60, v59, v58);
  sub_75BA60();

  v61 = *&v53[v54];
  v62 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_metrics;
  v81 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  v63 = v89;
  v88(v18, &v53[v62], v89);
  v64 = v61;
  v65 = sub_7638A0();
  v90(v18, v63);
  [v64 setNumberOfLines:v65];

  [v53 addSubview:*&v53[OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_starRatingView]];
  [v53 addSubview:*&v53[v54]];
  v66 = v85;
  sub_7638B0();
  v67 = [v53 traitCollection];
  v68 = sub_7653B0();
  v93 = v68;
  v94 = sub_2E34E4(&qword_93F9B0, &type metadata accessor for Feature);
  v69 = sub_B1B4(v92);
  (*(*(v68 - 8) + 104))(v69, enum case for Feature.search_tags(_:), v68);
  LOBYTE(v68) = sub_765C30();
  sub_BEB8(v92);
  if (v68)
  {
    v70 = 1;
  }

  else
  {
    v70 = 2;
  }

  v71 = [objc_opt_self() configurationWithPointSize:4 weight:v70 scale:10.0];
  v72 = v83;
  v73 = v82;
  v74 = v84;
  (*(v83 + 104))(v82, enum case for SystemImage.star(_:), v84);
  v75 = [v71 configurationWithTraitCollection:v67];
  v76 = sub_759930();

  (*(v72 + 8))(v73, v74);
  [v76 contentInsets];
  [v76 contentInsets];
  [v76 size];
  [v76 contentInsets];
  [v76 contentInsets];
  [v76 size];

  v77 = v86;
  sub_763870();
  v90(v66, v63);
  v78 = v81;
  swift_beginAccess();
  (*(v87 + 40))(&v53[v78], v77, v63);
  swift_endAccess();

  return v53;
}

uint64_t sub_494238()
{
  v1 = sub_7664F0();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v19 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_7638C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_7638D0();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetadataRibbonStarRatingView();
  v28.receiver = v0;
  v28.super_class = v10;
  objc_msgSendSuper2(&v28, "layoutSubviews");
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_starRatingView];
  v26 = type metadata accessor for RatingView();
  v27 = &protocol witness table for UIView;
  v25 = v11;
  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_ratingCountLabel];
  v23 = sub_75BB20();
  v24 = &protocol witness table for UILabel;
  v22 = v12;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  (*(v4 + 16))(v6, &v0[v13], v3);
  v14 = v11;
  v15 = v12;
  sub_763840();
  sub_75D650();
  v16 = v19;
  sub_763860();
  (*(v20 + 8))(v16, v21);
  return (*(v7 + 8))(v9, v18);
}

double sub_494534(uint64_t a1)
{
  v18[0] = a1;
  v2 = sub_7638C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7638D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_starRatingView);
  v18[12] = type metadata accessor for RatingView();
  v18[13] = &protocol witness table for UIView;
  v18[9] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_ratingCountLabel);
  v18[7] = sub_75BB20();
  v18[8] = &protocol witness table for UILabel;
  v18[4] = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  v13 = v10;
  v14 = v11;
  sub_763840();
  sub_763850();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  return v16;
}

id sub_494814()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetadataRibbonStarRatingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MetadataRibbonStarRatingView()
{
  result = qword_9565A8;
  if (!qword_9565A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_494960()
{
  sub_7638C0();
  if (v0 <= 0x3F)
  {
    sub_DBB44();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_494A68@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_itemType;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &qword_93EBC0);
}

uint64_t sub_494AD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_itemType;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &qword_93EBC0);
  return swift_endAccess();
}

uint64_t sub_494BAC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_494C78(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_494D3C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_494D80(char a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_494E30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_id;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_9443A0);
}

uint64_t sub_494E98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_id;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_9443A0);
  return swift_endAccess();
}

double sub_494F68(uint64_t a1, void *a2)
{
  v51 = a1;
  v58 = sub_7638D0();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_766D70();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_767030();
  v46 = *(v54 - 8);
  __chkstk_darwin(v54);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v53 = &v43 - v11;
  v12 = sub_759950();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_7638C0();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  sub_7638B0();
  sub_763880();
  v56 = a2;
  v20 = [a2 traitCollection];
  v21 = sub_7653B0();
  v64 = v21;
  v65 = sub_2E34E4(&qword_93F9B0, &type metadata accessor for Feature);
  v22 = sub_B1B4(v63);
  (*(*(v21 - 8) + 104))(v22, enum case for Feature.search_tags(_:), v21);
  LOBYTE(v21) = sub_765C30();
  sub_BEB8(v63);
  if (v21)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  v24 = [objc_opt_self() configurationWithPointSize:4 weight:v23 scale:10.0];
  (*(v13 + 104))(v15, enum case for SystemImage.star(_:), v12);
  v25 = [v24 configurationWithTraitCollection:v20];
  v26 = sub_759930();

  (*(v13 + 8))(v15, v12);
  [v26 contentInsets];
  [v26 contentInsets];
  [v26 size];
  [v26 contentInsets];
  [v26 contentInsets];
  [v26 size];

  v27 = sub_7670D0();
  swift_allocObject();
  v44 = sub_7670B0();
  sub_767020();
  sub_766B40();
  if (qword_93C740 != -1)
  {
    swift_once();
  }

  v28 = sub_760500();
  v29 = sub_BE38(v28, qword_99BB00);
  v64 = v28;
  v65 = sub_2E34E4(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle);
  v30 = sub_B1B4(v63);
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  sub_766F80();
  v31 = v46;
  v32 = *(v46 + 8);
  v33 = v6;
  v34 = v54;
  v32(v33, v54);
  v43 = v32;
  sub_BEB8(v63);
  sub_7638A0();
  v35 = v53;
  sub_767010();
  v32(v9, v34);
  sub_75D7B0();
  (*(v31 + 16))(v9, v35, v34);
  sub_766D50();
  v36 = v49;
  sub_766D90();
  sub_766D40();
  (*(v50 + 8))(v36, v52);
  v61 = v27;
  v62 = &protocol witness table for LayoutViewPlaceholder;
  v60 = v44;
  sub_134D8(v63, v59);
  v37 = v47;
  v38 = v48;
  (*(v47 + 16))(v45, v19, v48);

  v39 = v55;
  sub_763840();
  sub_763850();
  v41 = v40;

  (*(v57 + 8))(v39, v58);
  sub_BEB8(v63);
  v43(v35, v34);
  (*(v37 + 8))(v19, v38);
  return v41;
}

uint64_t sub_495820()
{
  v1 = v0;
  sub_75D6E0();
  v3 = v2;
  sub_75D7B0();
  v5 = v4;
  sub_43B74C(v3);
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28MetadataRibbonStarRatingView_ratingCountLabel];
  if (v5)
  {
    v7 = sub_769210();
  }

  else
  {
    v7 = 0;
  }

  [v6 setText:v7];

  [v1 setNeedsLayout];
}

uint64_t sub_4958E0()
{
  v33 = sub_7572E0();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_BD88(&unk_945000);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v29 = &v27 - v8;
  v32 = sub_BD88(&unk_93F5C0);
  v30 = swift_allocObject();
  v31 = xmmword_77D9F0;
  *(v30 + 16) = xmmword_77D9F0;
  sub_7689F0();
  sub_7689B0();
  v10 = sub_7689C0();
  v11 = *(v4 + 16);
  v11(v6, v9, v3);
  type metadata accessor for BoolPreferencesDebugSetting();
  v12 = swift_allocObject();
  *(v12 + 56) = 0xD000000000000017;
  *(v12 + 64) = 0x80000000007E31C0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  v11((v12 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_key), v6, v3);
  v13 = (v12 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_preferences);
  *v13 = v10;
  v13[1] = &protocol witness table for LocalPreferences;

  sub_7572D0();
  v14 = sub_7572B0();
  v16 = v15;
  v17 = *(v0 + 8);
  v27 = v0 + 8;
  v28 = v17;
  v18 = v33;
  v17(v2, v33);
  v34 = v14;
  v35 = v16;
  sub_76A6E0();
  v19 = *(v4 + 8);
  v19(v6, v3);

  v19(v29, v3);
  v20 = v30;
  *(v30 + 32) = v12;
  v21 = swift_allocObject();
  *(v21 + 16) = v31;
  type metadata accessor for DebugSection();
  v22 = swift_allocObject();
  sub_7572D0();
  v23 = sub_7572B0();
  v25 = v24;
  v28(v2, v18);
  v22[2] = v23;
  v22[3] = v25;
  v22[4] = 0;
  v22[5] = 0xE000000000000000;
  v22[6] = v20;
  *(v21 + 32) = v22;
  return v21;
}

id sub_495C4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfPlaceholderSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_495CA4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v8 - 8);
  v10 = &v178 - v9;
  v11 = sub_760020();
  if (v11)
  {
    v12 = v11;
    v13 = [a1 traitCollection];
    v14 = sub_760010();

    *&v187 = v12;
    sub_759F50();
    if ((sub_762A30() & 1) != 0 && *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_advertRotationController))
    {

      sub_7609F0();
    }

    sub_7581C0();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for ContentSearchResultCollectionViewCell();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
LABEL_10:

        return;
      }

      v16 = v15;
      v17 = a2;
      sub_7581B0();
      goto LABEL_8;
    }

    sub_75D360();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for BundleSearchResultCollectionViewCell();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
        goto LABEL_10;
      }

      v20 = v19;
      v21 = a2;
      v22 = sub_75D350();
      v23 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
      v24 = [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
      v25 = [v24 horizontalSizeClass];

      if (v25 == &dword_0 + 1)
      {
        [*(v4 + v23) pageMarginInsets];
        top = v26;
        left = v28;
        bottom = v30;
        right = v32;
      }

      else
      {
        top = UIEdgeInsetsZero.top;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
      }

      v50 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_objectGraph);
      v51 = [v20 contentView];
      [v51 setLayoutMargins:{top, left, bottom, right}];

      v52 = sub_75C840();
      (*(*(v52 - 8) + 56))(v10, 1, 1, v52);
      sub_223E1C(v22, v10, v50);
      sub_10A2C(v10, &unk_93F620);
      v53 = sub_764F60();
      if (v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = _swiftEmptyArrayStorage;
      }

      sub_314438(v54);

      [v20 setNeedsLayout];

      v55 = sub_75D350();
      sub_6B83A4(v55, *(v4 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_artworkLoader));

      v56 = sub_75D350();
      sub_499010(v56, v21, v4);

LABEL_27:

      return;
    }

    sub_75DDB0();
    if (!swift_dynamicCastClass())
    {
      sub_75F330();
      v57 = swift_dynamicCastClass();
      if (v57)
      {
        v58 = v57;
        type metadata accessor for EditorialSearchResultCollectionViewCell();
        v59 = swift_dynamicCastClass();
        if (v59)
        {
          v60 = v59;
          v61 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
          v62 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits);
          ObjectType = swift_getObjectType();
          v186 = a2;
          v63 = [swift_unknownObjectRetain() traitCollection];
          v64 = [v63 horizontalSizeClass];

          if (v64 == &dword_0 + 1)
          {
            [*(v4 + v61) pageMarginInsets];
            v66 = v65;
            v68 = v67;
            v70 = v69;
            v72 = v71;
          }

          else
          {
            v66 = UIEdgeInsetsZero.top;
            v68 = UIEdgeInsetsZero.left;
            v70 = UIEdgeInsetsZero.bottom;
            v72 = UIEdgeInsetsZero.right;
          }

          v81 = ASKDeviceTypeGetCurrent();
          v82 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_objectGraph);
          v83 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_artworkIconFetcher);
          v84 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_artworkLoader);
          swift_unknownObjectRetain();
          sub_69421C(v58, v62, v82, v83, v84, v60, v66, v68, v70, v72);

          swift_unknownObjectRelease_n();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {

            sub_761120();
            sub_768900();
            sub_768ED0();
            ObjectType = v187;
            v86 = swift_unknownObjectWeakLoadStrong();
            if (v86)
            {
              sub_4A06B8(&qword_93F500, type metadata accessor for VideoView);
            }

            sub_4A06B8(&qword_93FB70, type metadata accessor for EditorialSearchResultCollectionViewCell);
            v130 = v186;
            v131 = ObjectType;
            sub_761100();
          }
        }

        sub_4994F0(v58, a2, v4);
      }

      else
      {
        sub_757D20();
        if (swift_dynamicCastClass())
        {
          type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
          if (swift_dynamicCastClass())
          {
            v186 = a2;
            v73 = sub_757D10();
            v74 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
            ObjectType = [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
            v75 = [*(v3 + v74) traitCollection];
            v76 = [v75 horizontalSizeClass];

            if (v76 == &dword_0 + 1)
            {
              [*(v4 + v74) pageMarginInsets];
            }

            else
            {
              v77 = UIEdgeInsetsZero.top;
              v78 = UIEdgeInsetsZero.left;
              v79 = UIEdgeInsetsZero.bottom;
              v80 = UIEdgeInsetsZero.right;
            }

            sub_40E660(v73, *(v4 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_objectGraph), *(v4 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_artworkLoader), v77, v78, v79, v80);
          }

          v132 = sub_757D10();
          sub_4999D0(v132, a2, v4);
          goto LABEL_9;
        }

        sub_762810();
        v99 = swift_dynamicCastClass();
        if (v99)
        {
          v100 = v99;
          type metadata accessor for SearchLockupListCollectionViewCell();
          if (swift_dynamicCastClass())
          {
            v186 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_artworkLoader);
            *&v184 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_objectGraph);
            v101 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
            v102 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits);
            ObjectType = a2;
            v103 = [swift_unknownObjectRetain() traitCollection];
            v104 = [v103 horizontalSizeClass];

            if (v104 == &dword_0 + 1)
            {
              [*(v3 + v101) pageMarginInsets];
            }

            else
            {
              v105 = UIEdgeInsetsZero.top;
              v106 = UIEdgeInsetsZero.left;
              v107 = UIEdgeInsetsZero.bottom;
              v108 = UIEdgeInsetsZero.right;
            }

            sub_EC1A0(v100, v186, v184, v102, v105, v106, v107, v108);

            swift_unknownObjectRelease();
          }

          sub_499EB0(v100, a2, v3);
        }

        else
        {
          sub_7583C0();
          v186 = swift_dynamicCastClass();
          if (!v186)
          {
            goto LABEL_10;
          }

          type metadata accessor for AppEventSearchResultCollectionViewCell();
          v133 = swift_dynamicCastClass();
          if (!v133)
          {
            type metadata accessor for ContentSearchResultCollectionViewCell();
            v150 = swift_dynamicCastClass();
            if (!v150)
            {
              goto LABEL_10;
            }

            v16 = v150;
            v17 = a2;
            sub_7583B0();
LABEL_8:
            v18 = sub_65C67C(v14 & 1);

            sub_497050(v18, v16, a3, a1);

LABEL_9:

            goto LABEL_10;
          }

          v134 = v133;
          v135 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
          v136 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits);
          ObjectType = a2;
          [v136 pageMarginInsets];
          v138 = v137;
          v139 = [*(v4 + v135) traitCollection];
          v140 = [v139 horizontalSizeClass];

          v141 = v134;
          if (v140 == &dword_0 + 1)
          {
            [*(v4 + v135) pageMarginInsets];
            v143 = v142;
            v145 = v144;
            v147 = v146;
            v149 = v148;
          }

          else
          {
            v143 = UIEdgeInsetsZero.top;
            v145 = UIEdgeInsetsZero.left;
            v147 = UIEdgeInsetsZero.bottom;
            v149 = UIEdgeInsetsZero.right;
          }

          v151 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_objectGraph);
          *&v184 = *(v4 + v135);
          swift_unknownObjectRetain();
          v152 = [v141 contentView];
          [v152 setLayoutMargins:{v143, v145, v147, v149}];

          v153 = *&v141[OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_lockupView];
          *&v153[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing] = v138;
          [v153 setNeedsLayout];
          sub_BE70(0, &qword_93E540);
          v154 = sub_76A000();
          [v141 setBackgroundColor:v154];

          v155 = sub_7583B0();
          v156 = sub_75C840();
          (*(*(v156 - 8) + 56))(v10, 1, 1, v156);
          sub_223E1C(v155, v10, v151);

          sub_10A2C(v10, &unk_93F620);
          v183 = OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView;
          v157 = sub_7583A0();
          v158 = v151;
          v159 = v141;
          sub_650D38(v157, v158);

          v160 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v161 = swift_allocObject();
          v162 = v186;
          *(v161 + 2) = v160;
          *(v161 + 3) = v162;
          *(v161 + 4) = v158;
          v163 = &v141[OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
          v164 = *&v141[OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
          *v163 = sub_4A06A4;
          v163[1] = v161;

          v182 = v158;

          sub_F704(v164);

          [v141 setNeedsLayout];
          swift_unknownObjectRelease();
          isa = sub_757550().super.isa;
          v166 = [a1 layoutAttributesForItemAtIndexPath:isa];

          if (v166)
          {
            [v166 frame];
            v180 = v167;
            v181 = v168;
            v179 = v169;
            v184 = v170;

            *&v172 = v179;
            *&v171 = v180;
            *(&v171 + 1) = v181;
            *(&v172 + 1) = v184;
          }

          else
          {
            v171 = 0uLL;
            v172 = 0uLL;
          }

          v173 = ObjectType;
          v187 = v171;
          v188 = v172;
          v189 = v166 == 0;
          sub_498138(v186, v159, &v187);
          v174 = swift_unknownObjectWeakLoadStrong();
          if (v174)
          {

            sub_761120();
            sub_768900();
            sub_768ED0();
            v175 = v190;
            v176 = swift_unknownObjectWeakLoadStrong();
            if (v176)
            {
              sub_4A06B8(&qword_93F500, type metadata accessor for VideoView);
            }

            sub_4A06B8(&qword_956668, type metadata accessor for AppEventSearchResultCollectionViewCell);
            v177 = v173;
            sub_761100();
          }

          sub_49A390(v186, v159, v4);
        }
      }

LABEL_59:

      return;
    }

    type metadata accessor for AdvertSearchResultCollectionViewCell();
    v34 = swift_dynamicCastClass();
    if (!v34 || !*(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_advertRotationController))
    {
      goto LABEL_10;
    }

    v35 = v34;
    v21 = a2;

    sub_7609E0();

    sub_BD88(&qword_9498C0);
    sub_75BD00();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    v183 = v21;
    v186 = v190;
    v36 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
    [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
    v38 = v37;
    v39 = swift_unknownObjectRetain();
    v40 = [v39 traitCollection];
    v41 = [v40 horizontalSizeClass];

    v182 = v36;
    if (v41 == &dword_0 + 1)
    {
      [*(v4 + v36) pageMarginInsets];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
    }

    else
    {
      v43 = UIEdgeInsetsZero.top;
      v45 = UIEdgeInsetsZero.left;
      v47 = UIEdgeInsetsZero.bottom;
      v49 = UIEdgeInsetsZero.right;
    }

    v87 = ASKDeviceTypeGetCurrent();
    v88 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_objectGraph);
    ObjectType = OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView;
    v89 = *(v35 + OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView);
    *&v181 = v39;
    v90 = [v39 traitCollection];
    *&v184 = v88;
    sub_3B9C04(v186, v90, v87, v88, v38, v43, v45, v47, v49);

    [v35 setNeedsLayout];
    swift_unknownObjectRelease();

    v91 = sub_757550().super.isa;
    v92 = [a1 layoutAttributesForItemAtIndexPath:v91];

    if (v92)
    {
      [v92 frame];
      v179 = v93;
      v180 = v94;
      v178 = v95;
      v181 = v96;

      *&v98 = v178;
      *&v97 = v179;
      *(&v97 + 1) = v180;
      *(&v98 + 1) = v181;
    }

    else
    {
      v97 = 0uLL;
      v98 = 0uLL;
    }

    v187 = v97;
    v188 = v98;
    v189 = v92 == 0;
    v109 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_artworkLoader);
    v110 = *(v4 + v182);
    v111 = ObjectType;
    v112 = *&ObjectType[v35];
    swift_unknownObjectRetain();
    v113 = v112;
    v114 = [v110 traitCollection];
    sub_3BBFF4(v186, &v187, v109, v114);
    swift_unknownObjectRelease();

    sub_761120();
    sub_768900();
    sub_768ED0();
    v115 = v190;
    v116 = *&v111[v35];
    v117 = swift_unknownObjectWeakLoadStrong();
    if (v117)
    {
      sub_4A06B8(&qword_93F500, type metadata accessor for VideoView);
    }

    sub_4A06B8(&unk_9566C0, type metadata accessor for AdvertsSearchResultContentView);
    v118 = v116;
    sub_761100();

    v120 = v183;
    sub_499010(v119, v183, v4);
    v121 = sub_764E90();

    if (v121)
    {
      v122 = sub_75E5C0();

      v123 = *&ObjectType[v35];
      if (v122)
      {
        v124 = objc_opt_self();
        v125 = v123;
        v126 = [v124 clearColor];
        [v125 setBackgroundColor:v126];

LABEL_55:
        sub_2257B4(v122, v184);
        [v125 setNeedsLayout];

        [v35 setNeedsLayout];

        v127 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v128 = *&ObjectType[v35];

        v129 = v128;
        sub_23481C(sub_4A06B0, v127);

        goto LABEL_59;
      }
    }

    else
    {
      v123 = *&ObjectType[v35];
    }

    v125 = v123;
    v122 = 0;
    goto LABEL_55;
  }
}

void sub_496FC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_advertRotationController);
    v2 = Strong;

    if (v1)
    {
      sub_7609D0();
    }
  }
}

void sub_497050(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
  [*(v4 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
  v11 = v10;
  v12 = *(v4 + v9);
  v13 = [swift_unknownObjectRetain() traitCollection];
  v14 = [v13 horizontalSizeClass];

  if (v14 == &dword_0 + 1)
  {
    [*(v5 + v9) pageMarginInsets];
    top = v15;
    left = v17;
    bottom = v19;
    right = v21;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v23 = ASKDeviceTypeGetCurrent();
  sub_42921C(a1, v12, v23, *(v5 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_objectGraph), v11, top, left, bottom, right);
  swift_unknownObjectRelease();

  isa = sub_757550().super.isa;
  v25 = [a4 layoutAttributesForItemAtIndexPath:isa];

  if (v25)
  {
    [v25 frame];
    v36 = v26;
    v37 = v27;
    v35 = v28;
    v38 = v29;

    *&v31 = v35;
    *&v30 = v36;
    *(&v30 + 1) = v37;
    *(&v31 + 1) = v38;
  }

  else
  {
    v30 = 0uLL;
    v31 = 0uLL;
  }

  v40[0] = v30;
  v40[1] = v31;
  v41 = v25 == 0;
  v32 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_artworkLoader);
  v33 = *(v5 + v9);
  swift_unknownObjectRetain();
  sub_42B7D8(a1, v40, v32, v33);
  swift_unknownObjectRelease();
  sub_761120();
  sub_768900();
  sub_768ED0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_4A06B8(&qword_93F500, type metadata accessor for VideoView);
  }

  sub_4A06B8(&unk_956670, type metadata accessor for ContentSearchResultCollectionViewCell);
  sub_761100();

  sub_499010(a1, a2, v5);
}

uint64_t sub_49735C(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v5 = swift_dynamicCastClass();
  v55 = a2;
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_screenshots);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  result = swift_beginAccess();
  v10 = *(v7 + v8);
  if (v10 >> 62)
  {
    result = sub_76A860();
    v11 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
LABEL_4:
      if (v11 < 1)
      {
        __break(1u);
        return result;
      }

      v53 = v2;
      v12 = v55;

      v13 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = sub_76A770();
        }

        else
        {
          v14 = *(v10 + 8 * v13 + 32);
        }

        v15 = v14;
        ++v13;
        v56 = v14;
        type metadata accessor for BorderedScreenshotView();
        sub_4A06B8(&qword_946D80, type metadata accessor for BorderedScreenshotView);
        v16 = v15;
        sub_76A6E0();
        sub_75A0B0();
        sub_1EB60(v57);
        v17 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
        v58.value.super.isa = 0;
        v58.is_nil = 0;
        sub_7591D0(v58, v18);
      }

      while (v11 != v13);

      v3 = v53;
      a2 = v55;
      goto LABEL_13;
    }
  }

  a2 = v55;
  v19 = v55;
LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    [*(Strong + qword_940590) setImage:0];
    v56 = v21;
    type metadata accessor for VideoView();
    sub_4A06B8(&qword_952550, type metadata accessor for VideoView);
    v22 = v21;
    sub_76A6E0();
    sub_75A0B0();

    sub_1EB60(v57);
  }

  v23 = OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_lockupView;
  v24 = *(*(v6 + OBJC_IVAR____TtC18ASMessagesProvider37ContentSearchResultCollectionViewCell_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v59.value.super.isa = 0;
  v59.is_nil = 0;
  sub_7591D0(v59, v25);

  v26 = *(*(v6 + v23) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759210();
  sub_4A06B8(&qword_945810, &type metadata accessor for ArtworkView);
  v27 = v26;
  sub_75A0C0();

  sub_761120();
  sub_768900();
  sub_768ED0();
  v28 = v57[0];
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    sub_4A06B8(&qword_93F500, type metadata accessor for VideoView);
  }

  sub_4A06B8(&unk_956670, type metadata accessor for ContentSearchResultCollectionViewCell);
  v30 = a2;
  sub_7610C0();

LABEL_18:
  result = sub_760020();
  if (!result)
  {
    return result;
  }

  type metadata accessor for AppEventSearchResultCollectionViewCell();
  v31 = swift_dynamicCastClass();
  if (v31)
  {
    v32 = v31;
    v33 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_artworkLoader);
    v34 = OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_lockupView;
    v35 = *(*(v31 + OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    v54 = a2;
    v36 = v35;
    v60.value.super.isa = 0;
    v60.is_nil = 0;
    sub_7591D0(v60, v37);

    v38 = *(*(v32 + v34) + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    sub_759210();
    sub_4A06B8(&qword_945810, &type metadata accessor for ArtworkView);
    v39 = v38;
    sub_75A0C0();

    sub_524C60(v33, 1, v40);
    sub_761120();
    sub_768900();
    sub_768ED0();
    v41 = v57[0];
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      sub_4A06B8(&qword_93F500, type metadata accessor for VideoView);
    }

    sub_4A06B8(&qword_956668, type metadata accessor for AppEventSearchResultCollectionViewCell);
    v43 = v54;
    sub_7610C0();

    a2 = v55;
  }

  type metadata accessor for AdvertSearchResultCollectionViewCell();
  if (swift_dynamicCastClass() && *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_advertRotationController))
  {
    v44 = a2;

    sub_760A00();
  }

  sub_7581C0();
  if (!swift_dynamicCastClass())
  {
    sub_75DDB0();
    if (swift_dynamicCastClass())
    {
      if (!*(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_advertRotationController))
      {
      }

      sub_7609E0();

      sub_BD88(&qword_9498C0);
      sub_75BD00();
      if ((swift_dynamicCast() & 1) == 0)
      {
      }

      v45 = v56;
      goto LABEL_28;
    }

    sub_75F330();
    v46 = swift_dynamicCastClass();
    if (v46)
    {
      v47 = v46;

      sub_49B2A4(v47, v3);
    }

    else
    {
      sub_757D20();
      if (swift_dynamicCastClass())
      {
        v48 = sub_757D10();
        sub_49B508(v48, v3);
        goto LABEL_29;
      }

      sub_75D360();
      if (swift_dynamicCastClass())
      {
        v45 = sub_75D350();
        goto LABEL_28;
      }

      sub_762810();
      v49 = swift_dynamicCastClass();
      if (v49)
      {
        v50 = v49;

        sub_49B76C(v50, v3);
      }

      else
      {
        sub_7583C0();
        v51 = swift_dynamicCastClass();
        if (!v51)
        {
        }

        v52 = v51;
        if ((sub_75FFD0() & 1) == 0)
        {
          v45 = sub_7583B0();
          goto LABEL_28;
        }

        sub_49B9D0(v52, v3);
      }
    }
  }

  v45 = sub_7581B0();
LABEL_28:
  sub_49B040(v45, v3);
LABEL_29:
}

uint64_t sub_497C50(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, char *))
{
  v10 = sub_757640();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v14, v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_498138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  if ((*(a3 + 32) & 1) == 0)
  {
    v7 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_artworkLoader);
    v8 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_lockupView);
    v9 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v10 = *(v8 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    v24.value.super.isa = 0;
    v24.is_nil = 0;
    sub_7591D0(v24, v11);

    v12 = *(v8 + v9);
    sub_759210();
    sub_4A06B8(&qword_945810, &type metadata accessor for ArtworkView);
    v13 = v12;
    sub_75A0C0();

    v14 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider38AppEventSearchResultCollectionViewCell_appEventView);
    v15 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView;
    sub_524C60(v7, 1, v16);
    sub_7583B0();
    v17 = sub_764EE0();

    if (v17)
    {
      v23 = v14;
      v18 = qword_93C668;
      v19 = *(v8 + v9);
      if (v18 != -1)
      {
        swift_once();
      }

      v20 = sub_75CF00();
      sub_BE38(v20, qword_99B898);
      sub_75CDD0();
      [v19 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v19 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();
      v21 = *(v8 + v9);
      sub_75A050();

      v14 = v23;
    }

    v22 = sub_7583A0();
    sub_236EC(v22, v7, *(v14 + v15));
  }
}

void sub_49848C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char *a6)
{
  v81 = a6;
  v80 = a5;
  v88 = sub_768380();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_7683C0();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_768370();
  v79 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_7683E0();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v70 - v19;
  type metadata accessor for AdvertSearchResultCollectionViewCell();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v77 = v12;
    sub_16C320(a2, aBlock);
    v23 = a1;
    sub_BD88(&qword_9498C0);
    sub_75BD00();
    if (swift_dynamicCast())
    {
      v78 = v23;
      v24 = v90[0];
      sub_16C320(a3, aBlock);
      if (swift_dynamicCast())
      {
        v25 = v90[0];

        sub_49B040(v26, v6);
        v74 = v24;

        sub_499010(v27, v78, v6);
        v75 = v25;

        v28 = OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits;
        [*(v6 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
        v71 = v29;
        v76 = [*(v6 + v28) traitCollection];
        v30 = [*(v6 + v28) traitCollection];
        v31 = [v30 horizontalSizeClass];

        v72 = v20;
        if (v31 == &dword_0 + 1)
        {
          [*(v6 + v28) pageMarginInsets];
          top = v32;
          left = v34;
          bottom = v36;
          right = v38;
        }

        else
        {
          top = UIEdgeInsetsZero.top;
          left = UIEdgeInsetsZero.left;
          bottom = UIEdgeInsetsZero.bottom;
          right = UIEdgeInsetsZero.right;
        }

        v40 = ASKDeviceTypeGetCurrent();
        v73 = v40;
        v70 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_artworkLoader);
        [v22 setUserInteractionEnabled:0];
        v41 = OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView;
        [*&v22[OBJC_IVAR____TtC18ASMessagesProvider36AdvertSearchResultCollectionViewCell_advertsContentView] frame];
        v46 = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{v42, v43, v44, v45}];
        v47 = v75;
        v48 = v76;
        v49 = v40;
        v50 = v81;
        sub_3B9C04(v75, v76, v49, v81, *&v71, top, left, bottom, right);
        [v46 layoutIfNeeded];
        [*&v22[v41] frame];
        v90[0] = v51;
        v90[1] = v52;
        v90[2] = v53;
        v90[3] = v54;
        v91 = 0;
        sub_3BBFF4(v47, v90, v70, v48);
        v55 = (*&v22[v41] + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_disableAdvertRotation);
        swift_beginAccess();
        v56 = *v55;
        v57 = v55[1];
        sub_F714(*v55);
        sub_23481C(v56, v57);
        sub_F704(v56);
        sub_BE70(0, &qword_940340);
        v71 = sub_769970();
        sub_7683D0();
        v58 = 333;
        if ((v80 & 1) == 0)
        {
          v58 = 0;
        }

        *v15 = v58;
        v59 = v79;
        (*(v79 + 104))(v15, enum case for DispatchTimeInterval.milliseconds(_:), v13);
        v60 = v72;
        sub_768440();
        (*(v59 + 8))(v15, v13);
        v82 = *(v82 + 8);
        v61 = v83;
        (v82)(v17, v83);
        v62 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v63 = swift_allocObject();
        v63[2] = v62;
        v63[3] = v46;
        v63[4] = v50;
        aBlock[4] = sub_3BFB04;
        aBlock[5] = v63;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23F0CC;
        aBlock[3] = &unk_8932E8;
        v64 = _Block_copy(aBlock);
        v65 = v46;

        v66 = v77;
        sub_7683A0();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_4A06B8(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
        sub_BD88(&qword_940350);
        sub_4C874();
        v67 = v85;
        v68 = v88;
        sub_76A5A0();
        v69 = v71;
        sub_769930();
        _Block_release(v64);

        (*(v87 + 8))(v67, v68);
        (*(v84 + 8))(v66, v86);
        (v82)(v60, v61);
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

id sub_498D9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsCollectionViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchResultsCollectionViewDelegate()
{
  result = qword_956640;
  if (!qword_956640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_498F24()
{
  sub_1ACF18();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_499010(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_768AB0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_75BD00();
  v36[3] = v32;
  v36[4] = sub_4A06B8(&qword_94F158, &type metadata accessor for MixedMediaLockup);
  v36[0] = a1;
  sub_1ED18(a3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_93FF30);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10A2C(v10, &unk_93FF30);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_75F500();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_134D8(v36, v35);
  sub_4A06B8(&qword_956650, &type metadata accessor for MixedMediaLockup);
  sub_7690D0();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10A2C(v7, &unk_93FF30);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_75F4B0();
    }

    [v21 frame];
    v28 = sub_B170(v35, v35[3]);
    sub_49BF30(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_BEB8(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_49AD50(v19, v25, &type metadata accessor for MixedMediaLockup, &qword_956650, &type metadata accessor for MixedMediaLockup);
    swift_getObjectType();
    sub_7633C0();
  }

  return sub_BEB8(v36);
}

uint64_t sub_4994F0(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_768AB0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_75F330();
  v36[3] = v32;
  v36[4] = sub_4A06B8(&qword_956680, &type metadata accessor for EditorialSearchResult);
  v36[0] = a1;
  sub_1ED18(a3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_93FF30);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10A2C(v10, &unk_93FF30);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_75F500();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_134D8(v36, v35);
  sub_4A06B8(&qword_956688, &type metadata accessor for EditorialSearchResult);
  sub_7690D0();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10A2C(v7, &unk_93FF30);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_75F4B0();
    }

    [v21 frame];
    v28 = sub_B170(v35, v35[3]);
    sub_49C66C(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_BEB8(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_49AD50(v19, v25, &type metadata accessor for EditorialSearchResult, &qword_956688, &type metadata accessor for EditorialSearchResult);
    swift_getObjectType();
    sub_7633C0();
  }

  return sub_BEB8(v36);
}

uint64_t sub_4999D0(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_768AB0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_757BA0();
  v36[3] = v32;
  v36[4] = sub_4A06B8(&qword_956690, &type metadata accessor for InAppPurchaseLockup);
  v36[0] = a1;
  sub_1ED18(a3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_93FF30);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10A2C(v10, &unk_93FF30);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_75F500();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_134D8(v36, v35);
  sub_4A06B8(&qword_956698, &type metadata accessor for InAppPurchaseLockup);
  sub_7690D0();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10A2C(v7, &unk_93FF30);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_75F4B0();
    }

    [v21 frame];
    v28 = sub_B170(v35, v35[3]);
    sub_49CDA8(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_BEB8(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_49AD50(v19, v25, &type metadata accessor for InAppPurchaseLockup, &qword_956698, &type metadata accessor for InAppPurchaseLockup);
    swift_getObjectType();
    sub_7633C0();
  }

  return sub_BEB8(v36);
}

uint64_t sub_499EB0(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_768AB0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_762810();
  v36[3] = v32;
  v36[4] = sub_4A06B8(&qword_9566A0, &type metadata accessor for LockupCollectionSearchResult);
  v36[0] = a1;
  sub_1ED18(a3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_93FF30);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10A2C(v10, &unk_93FF30);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_75F500();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_134D8(v36, v35);
  sub_4A06B8(&unk_9566A8, &type metadata accessor for LockupCollectionSearchResult);
  sub_7690D0();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10A2C(v7, &unk_93FF30);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_75F4B0();
    }

    [v21 frame];
    v28 = sub_B170(v35, v35[3]);
    sub_49D4E4(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_BEB8(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_49AD50(v19, v25, &type metadata accessor for LockupCollectionSearchResult, &unk_9566A8, &type metadata accessor for LockupCollectionSearchResult);
    swift_getObjectType();
    sub_7633C0();
  }

  return sub_BEB8(v36);
}

uint64_t sub_49A390(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_768AB0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_7583C0();
  v36[3] = v32;
  v36[4] = sub_4A06B8(&qword_93F5B0, &type metadata accessor for AppEventSearchResult);
  v36[0] = a1;
  sub_1ED18(a3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_93FF30);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10A2C(v10, &unk_93FF30);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_75F500();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_134D8(v36, v35);
  sub_4A06B8(&qword_9566B8, &type metadata accessor for AppEventSearchResult);
  sub_7690D0();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10A2C(v7, &unk_93FF30);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_75F4B0();
    }

    [v21 frame];
    v28 = sub_B170(v35, v35[3]);
    sub_49DC20(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_BEB8(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_49AD50(v19, v25, &type metadata accessor for AppEventSearchResult, &qword_9566B8, &type metadata accessor for AppEventSearchResult);
    swift_getObjectType();
    sub_7633C0();
  }

  return sub_BEB8(v36);
}

uint64_t sub_49A870(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = a2;
  v5 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_768AB0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v32 = sub_759D00();
  v36[3] = v32;
  v36[4] = sub_4A06B8(&qword_9513B0, &type metadata accessor for LinkableText);
  v36[0] = a1;
  sub_1ED18(a3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_containerImpressionMetrics, v10, &unk_93FF30);
  v17 = *(v12 + 48);
  v18 = v17(v10, 1, v11);
  v34 = a3;
  if (v18 == 1)
  {

    sub_10A2C(v10, &unk_93FF30);
    v19 = a1;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    if (*(a3 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      v20 = a1;

      v21 = v33;
      [v33 frame];
      sub_75F500();
      v22 = v16;
      v19 = v20;
      (*(v12 + 8))(v22, v11);
      goto LABEL_7;
    }

    v23 = *(v12 + 8);

    v24 = v16;
    v19 = a1;
    v23(v24, v11);
  }

  v21 = v33;
LABEL_7:
  sub_134D8(v36, v35);
  sub_4A06B8(&unk_9566D0, &type metadata accessor for LinkableText);
  sub_7690D0();
  if (v17(v7, 1, v11) == 1)
  {
    sub_10A2C(v7, &unk_93FF30);
    v25 = v34;
  }

  else
  {
    v26 = v31;
    (*(v12 + 32))(v31, v7, v11);
    v25 = v34;
    v27 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v27)
    {
      [v21 frame];
      sub_75F4B0();
    }

    [v21 frame];
    v28 = sub_B170(v35, v35[3]);
    sub_4A0700(*v28, v27);
    (*(v12 + 8))(v26, v11);
  }

  sub_BEB8(v35);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v21)
  {
    v29 = v21;
    [v29 frame];
    sub_49AD50(v19, v25, &type metadata accessor for LinkableText, &unk_9566D0, &type metadata accessor for LinkableText);
    swift_getObjectType();
    sub_7633C0();
  }

  return sub_BEB8(v36);
}

uint64_t sub_49AD50(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), unint64_t *a4, void (*a5)(uint64_t))
{
  v24 = a2;
  v9 = sub_768A80();
  v22 = *(v9 - 8);
  v23 = v9;
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_768AB0();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  a3(0, v17);
  sub_4A06B8(a4, a5);
  sub_7690D0();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10A2C(v14, &unk_93FF30);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    if (*(v24 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator))
    {
      sub_75F4B0();
      sub_768A90();
      v20 = sub_75F4A0();
      (*(v22 + 8))(v11, v23);
      (*(v16 + 8))(v19, v15);
      return v20;
    }

    (*(v16 + 8))(v19, v15);
  }

  return 0;
}

uint64_t sub_49B040(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_75BD00();
  v15[4] = sub_4A06B8(&qword_94F158, &type metadata accessor for MixedMediaLockup);
  v15[0] = a1;
  sub_134D8(v15, v14);
  sub_4A06B8(&qword_956650, &type metadata accessor for MixedMediaLockup);

  sub_7690D0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &unk_93FF30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_75F4D0();
    }

    v12 = sub_B170(v14, v14[3]);
    sub_49E35C(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_BEB8(v14);
  return sub_BEB8(v15);
}

uint64_t sub_49B2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_75F330();
  v15[4] = sub_4A06B8(&qword_956680, &type metadata accessor for EditorialSearchResult);
  v15[0] = a1;
  sub_134D8(v15, v14);
  sub_4A06B8(&qword_956688, &type metadata accessor for EditorialSearchResult);

  sub_7690D0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &unk_93FF30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_75F4D0();
    }

    v12 = sub_B170(v14, v14[3]);
    sub_49EA5C(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_BEB8(v14);
  return sub_BEB8(v15);
}

uint64_t sub_49B508(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_757BA0();
  v15[4] = sub_4A06B8(&qword_956690, &type metadata accessor for InAppPurchaseLockup);
  v15[0] = a1;
  sub_134D8(v15, v14);
  sub_4A06B8(&qword_956698, &type metadata accessor for InAppPurchaseLockup);

  sub_7690D0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &unk_93FF30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_75F4D0();
    }

    v12 = sub_B170(v14, v14[3]);
    sub_49F15C(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_BEB8(v14);
  return sub_BEB8(v15);
}

uint64_t sub_49B76C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_762810();
  v15[4] = sub_4A06B8(&qword_9566A0, &type metadata accessor for LockupCollectionSearchResult);
  v15[0] = a1;
  sub_134D8(v15, v14);
  sub_4A06B8(&unk_9566A8, &type metadata accessor for LockupCollectionSearchResult);

  sub_7690D0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &unk_93FF30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_75F4D0();
    }

    v12 = sub_B170(v14, v14[3]);
    sub_49F85C(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_BEB8(v14);
  return sub_BEB8(v15);
}

uint64_t sub_49B9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_7583C0();
  v15[4] = sub_4A06B8(&qword_93F5B0, &type metadata accessor for AppEventSearchResult);
  v15[0] = a1;
  sub_134D8(v15, v14);
  sub_4A06B8(&qword_9566B8, &type metadata accessor for AppEventSearchResult);

  sub_7690D0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &unk_93FF30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_75F4D0();
    }

    v12 = sub_B170(v14, v14[3]);
    sub_49FF5C(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_BEB8(v14);
  return sub_BEB8(v15);
}

uint64_t sub_49BC34(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = sub_759D00();
  v15[4] = sub_4A06B8(&qword_9513B0, &type metadata accessor for LinkableText);
  v15[0] = a1;
  sub_134D8(v15, v14);
  sub_4A06B8(&unk_9566D0, &type metadata accessor for LinkableText);

  sub_7690D0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &unk_93FF30);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider35SearchResultsCollectionViewDelegate_impressionsCalculator);
    if (v11)
    {
      sub_75F4D0();
    }

    v12 = sub_B170(v14, v14[3]);
    sub_4A0FE8(*v12, v11);
    (*(v8 + 8))(v10, v7);
  }

  sub_BEB8(v14);
  return sub_BEB8(v15);
}

uint64_t sub_49BE98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_49BED0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_49BF18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_49BF30(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_75BD00();
  v55[3] = v45;
  v55[4] = sub_4A06B8(&qword_94F158, &type metadata accessor for MixedMediaLockup);
  v55[0] = a1;
  sub_134D8(v55, v53);

  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v18 = sub_7601B0();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_93FFC0;
        v23 = &unk_77F490;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_134D8(v20, v53);
          sub_B170(v53, v53[3]);
          v26 = v50;
          sub_7690D0();
          sub_BEB8(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10A2C(v50, &unk_93FF30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_4A06B8(&qword_956650, &type metadata accessor for MixedMediaLockup);
            v28 = v48;
            sub_7690D0();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10A2C(v48, &unk_93FF30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_768A90();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_768A80();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_1ED18(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10A2C(v33, v25);
              }

              else
              {
                sub_768A70();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_768A40();

              sub_75F4B0();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10A2C(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10A2C(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10A2C(v51, &qword_956660);
  }

  return sub_BEB8(v55);
}

uint64_t sub_49C66C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_75F330();
  v55[3] = v45;
  v55[4] = sub_4A06B8(&qword_956680, &type metadata accessor for EditorialSearchResult);
  v55[0] = a1;
  sub_134D8(v55, v53);

  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v18 = sub_7601B0();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_93FFC0;
        v23 = &unk_77F490;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_134D8(v20, v53);
          sub_B170(v53, v53[3]);
          v26 = v50;
          sub_7690D0();
          sub_BEB8(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10A2C(v50, &unk_93FF30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_4A06B8(&qword_956688, &type metadata accessor for EditorialSearchResult);
            v28 = v48;
            sub_7690D0();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10A2C(v48, &unk_93FF30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_768A90();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_768A80();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_1ED18(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10A2C(v33, v25);
              }

              else
              {
                sub_768A70();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_768A40();

              sub_75F4B0();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10A2C(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10A2C(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10A2C(v51, &qword_956660);
  }

  return sub_BEB8(v55);
}

uint64_t sub_49CDA8(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_757BA0();
  v55[3] = v45;
  v55[4] = sub_4A06B8(&qword_956690, &type metadata accessor for InAppPurchaseLockup);
  v55[0] = a1;
  sub_134D8(v55, v53);

  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v18 = sub_7601B0();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_93FFC0;
        v23 = &unk_77F490;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_134D8(v20, v53);
          sub_B170(v53, v53[3]);
          v26 = v50;
          sub_7690D0();
          sub_BEB8(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10A2C(v50, &unk_93FF30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_4A06B8(&qword_956698, &type metadata accessor for InAppPurchaseLockup);
            v28 = v48;
            sub_7690D0();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10A2C(v48, &unk_93FF30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_768A90();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_768A80();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_1ED18(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10A2C(v33, v25);
              }

              else
              {
                sub_768A70();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_768A40();

              sub_75F4B0();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10A2C(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10A2C(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10A2C(v51, &qword_956660);
  }

  return sub_BEB8(v55);
}

uint64_t sub_49D4E4(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_762810();
  v55[3] = v45;
  v55[4] = sub_4A06B8(&qword_9566A0, &type metadata accessor for LockupCollectionSearchResult);
  v55[0] = a1;
  sub_134D8(v55, v53);

  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v18 = sub_7601B0();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_93FFC0;
        v23 = &unk_77F490;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_134D8(v20, v53);
          sub_B170(v53, v53[3]);
          v26 = v50;
          sub_7690D0();
          sub_BEB8(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10A2C(v50, &unk_93FF30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_4A06B8(&unk_9566A8, &type metadata accessor for LockupCollectionSearchResult);
            v28 = v48;
            sub_7690D0();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10A2C(v48, &unk_93FF30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_768A90();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_768A80();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_1ED18(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10A2C(v33, v25);
              }

              else
              {
                sub_768A70();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_768A40();

              sub_75F4B0();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10A2C(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10A2C(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10A2C(v51, &qword_956660);
  }

  return sub_BEB8(v55);
}

uint64_t sub_49DC20(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_7583C0();
  v55[3] = v45;
  v55[4] = sub_4A06B8(&qword_93F5B0, &type metadata accessor for AppEventSearchResult);
  v55[0] = a1;
  sub_134D8(v55, v53);

  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v18 = sub_7601B0();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_93FFC0;
        v23 = &unk_77F490;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_134D8(v20, v53);
          sub_B170(v53, v53[3]);
          v26 = v50;
          sub_7690D0();
          sub_BEB8(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10A2C(v50, &unk_93FF30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_4A06B8(&qword_9566B8, &type metadata accessor for AppEventSearchResult);
            v28 = v48;
            sub_7690D0();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10A2C(v48, &unk_93FF30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_768A90();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_768A80();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_1ED18(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10A2C(v33, v25);
              }

              else
              {
                sub_768A70();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_768A40();

              sub_75F4B0();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10A2C(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10A2C(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10A2C(v51, &qword_956660);
  }

  return sub_BEB8(v55);
}

uint64_t sub_49E35C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_75BD00();
  v55[3] = v45;
  v55[4] = sub_4A06B8(&qword_94F158, &type metadata accessor for MixedMediaLockup);
  v55[0] = a1;
  sub_134D8(v55, v53);

  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v18 = sub_7601B0();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_93FFC0;
        v23 = &unk_77F490;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_134D8(v20, v53);
          sub_B170(v53, v53[3]);
          v26 = v50;
          sub_7690D0();
          sub_BEB8(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10A2C(v50, &unk_93FF30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_4A06B8(&qword_956650, &type metadata accessor for MixedMediaLockup);
            v28 = v48;
            sub_7690D0();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10A2C(v48, &unk_93FF30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_768A90();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_768A80();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_1ED18(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10A2C(v33, v25);
              }

              else
              {
                sub_768A70();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_768A40();

              sub_75F4D0();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10A2C(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10A2C(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10A2C(v51, &qword_956660);
  }

  return sub_BEB8(v55);
}

uint64_t sub_49EA5C(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v37 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v37 - v11;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  v45 = sub_75F330();
  v55[3] = v45;
  v55[4] = sub_4A06B8(&qword_956680, &type metadata accessor for EditorialSearchResult);
  v55[0] = a1;
  sub_134D8(v55, v53);

  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v18 = sub_7601B0();
    if (v18)
    {
      v38 = v18;
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = v38 + 32;
        v21 = (v13 + 48);
        v42 = (v13 + 32);
        v46 = (v13 + 8);
        v22 = &qword_93FFC0;
        v23 = &unk_77F490;
        v44 = v17;
        v43 = (v13 + 48);
        v39 = v12;
        do
        {
          v24 = v23;
          v25 = v22;
          sub_134D8(v20, v53);
          sub_B170(v53, v53[3]);
          v26 = v50;
          sub_7690D0();
          sub_BEB8(v53);
          v27 = *v21;
          if ((*v21)(v26, 1, v12) == 1)
          {
            sub_10A2C(v50, &unk_93FF30);
            v22 = v25;
            v23 = v24;
          }

          else
          {
            (*v42)(v17, v50, v12);
            sub_4A06B8(&qword_956688, &type metadata accessor for EditorialSearchResult);
            v28 = v48;
            sub_7690D0();
            if (v27(v28, 1, v12) == 1)
            {
              sub_10A2C(v48, &unk_93FF30);
              v29 = 1;
            }

            else
            {
              v30 = v48;
              sub_768A90();
              (*v46)(v30, v12);
              v29 = 0;
            }

            v22 = v25;
            v31 = sub_768A80();
            v32 = *(v31 - 8);
            (*(v32 + 56))(v49, v29, 1, v31);
            v23 = v24;
            if (v47)
            {
              v33 = v40;
              sub_1ED18(v49, v40, v25);
              if ((*(v32 + 48))(v33, 1, v31) == 1)
              {
                sub_10A2C(v33, v25);
              }

              else
              {
                sub_768A70();
                (*(v32 + 8))(v33, v31);
                v12 = v39;
              }

              v34 = v41;
              v17 = v44;
              sub_768A40();

              sub_75F4D0();
              v35 = *v46;
              (*v46)(v34, v12);
              sub_10A2C(v49, v25);
              v35(v17, v12);
              v21 = v43;
              v22 = v25;
            }

            else
            {
              sub_10A2C(v49, v25);
              v17 = v44;
              (*v46)(v44, v12);
              v21 = v43;
            }
          }

          v20 += 40;
          --v19;
        }

        while (v19);
      }
    }

    sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10A2C(v51, &qword_956660);
  }

  return sub_BEB8(v55);
}