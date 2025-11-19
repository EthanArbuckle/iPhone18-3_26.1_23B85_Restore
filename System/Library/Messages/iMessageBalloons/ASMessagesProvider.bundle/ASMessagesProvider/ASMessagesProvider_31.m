uint64_t sub_3886D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a3;
  v66 = a2;
  v6 = sub_BD88(&qword_94EC40);
  __chkstk_darwin(v6 - 8);
  v67 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v64 - v9;
  v11 = sub_BD88(&unk_944D90);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v15 = sub_BD88(&qword_946370);
  v68 = *(v15 - 8);
  v69 = v15;
  __chkstk_darwin(v15);
  v17 = &v64 - v16;
  v18 = sub_BD88(&unk_951420);
  __chkstk_darwin(v18 - 8);
  v20 = &v64 - v19;
  v21 = sub_758A00();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v27 = v26;
  sub_134D8(v25, v71);
  sub_BD88(&unk_944DA0);
  v28 = swift_dynamicCast();
  v29 = *(v22 + 56);
  if (v28)
  {
    v29(v20, 0, 1, v27);
    v64 = v22;
    v65 = v27;
    (*(v22 + 32))(v24, v20, v27);
    (*(v12 + 16))(v14, v66, v11);
    sub_768B30();
    *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_detailItems] = sub_7589D0();

    v30 = sub_7589E0();
    v31 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleText];
    *v31 = v30;
    v31[1] = v32;

    v33 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_titleLabel];

    v34 = sub_769210();

    [v33 setText:v34];

    [v4 setNeedsLayout];
    v35 = sub_7589F0();
    v36 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_explicitSummary];
    *v36 = v35;
    v36[1] = v37;

    sub_2F0D68();
    v38 = sub_7589B0();
    if (v38)
    {
      v71[0] = v38;
      sub_764C80();
      sub_768900();
      sub_38CEC0(&qword_951430, &type metadata accessor for Action);
      sub_768820();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v41 = sub_BD88(&unk_950960);
    v42 = 1;
    (*(*(v41 - 8) + 56))(v10, v39, 1, v41);
    v43 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_linkAction;
    swift_beginAccess();
    sub_FB88C(v10, &v4[v43], &qword_94EC40);
    swift_endAccess();
    sub_2F0EF0();
    sub_10A2C(v10, &qword_94EC40);
    sub_13EAE4();
    v44 = v69;
    v45 = v17;
    sub_768B00();
    if ((v71[0] & 1) == 0)
    {
      v42 = sub_7589C0();
    }

    sub_2F28AC();
    v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isExpanded] = v42 & 1;
    sub_2F0ABC();
    v46 = sub_7589B0();
    if (v46)
    {
      v71[0] = v46;
      sub_764C80();
      sub_768900();
      sub_38CEC0(&qword_951430, &type metadata accessor for Action);
      v47 = v67;
      sub_768820();

      v48 = 0;
    }

    else
    {
      v48 = 1;
      v47 = v67;
    }

    v49 = sub_BD88(&unk_950960);
    (*(*(v49 - 8) + 56))(v47, v48, 1, v49);
    swift_beginAccess();
    sub_FB88C(v47, &v4[v43], &qword_94EC40);
    swift_endAccess();
    sub_2F0EF0();
    sub_10A2C(v47, &qword_94EC40);
    v50 = [v4 traitCollection];
    v51 = sub_7699B0();

    v4[OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_isSeparatorDisplayed] = (v51 & 1) == 0;
    if (v51)
    {
      v52 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_separatorLineView;
      swift_beginAccess();
      v53 = *&v4[v52];
      v54 = v64;
      if (v53)
      {
        [v53 removeFromSuperview];
        v55 = *&v4[v52];
      }

      else
      {
        v55 = 0;
      }

      v60 = v65;
      *&v4[v52] = 0;

      [v4 setNeedsLayout];
    }

    else
    {
      v56 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v57 = OBJC_IVAR____TtC18ASMessagesProvider28AnnotationCollectionViewCell_separatorLineView;
      swift_beginAccess();
      v58 = *&v4[v57];
      if (v58)
      {
        [v58 removeFromSuperview];
        v59 = *&v4[v57];
      }

      else
      {
        v59 = 0;
      }

      *&v4[v57] = v56;
      v61 = v56;

      if (v61)
      {
        sub_BE70(0, &qword_93E540);
        v62 = sub_769FB0();
        [v61 setBackgroundColor:v62];

        v63 = [v4 contentView];
        [v63 addSubview:v61];
      }

      [v4 setNeedsLayout];

      v54 = v64;
      v60 = v65;
    }

    (*(v68 + 8))(v45, v44);
    return (*(v54 + 8))(v24, v60);
  }

  else
  {
    v29(v20, 1, 1, v27);
    return sub_10A2C(v20, &unk_951420);
  }
}

uint64_t sub_388FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v7 = sub_BD88(&unk_944D90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9 + 8;
  v11 = sub_BD88(&qword_944D88);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v17 - v13 + 8;
  sub_134D8(a1, v17);
  sub_BD88(&unk_944DA0);
  sub_764F90();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v8 + 16))(v10, a2, v7);
    sub_768FA0();
    sub_768B30();
    sub_3F0090();

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_3891F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_75BE90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_944D90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - v10;
  v23[0] = sub_BD88(&qword_944D88);
  v12 = *(v23[0] - 8);
  __chkstk_darwin(v23[0]);
  v14 = v23 - v13;
  sub_134D8(a1, v24);
  sub_BD88(&unk_944DA0);
  sub_759650();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_768FA0();
    sub_768B30();
    v16 = v23[1];
    sub_759610();
    v17 = OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    (*(v5 + 24))(v16 + v17, v7, v4);
    swift_endAccess();
    sub_815D4();
    (*(v5 + 8))(v7, v4);
    v18 = sub_759620();
    sub_811E4(v18, v19);
    v20 = sub_759630();
    sub_811F0(v20, v21);
    *(v16 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_artwork) = sub_759640();

    v22 = sub_7595F0();
    sub_8458C();
    *(v16 + OBJC_IVAR____TtC18ASMessagesProvider29PrivacyTypeCollectionViewCell_categories) = v22;

    sub_81358();

    return (*(v12 + 8))(v14, v23[0]);
  }

  return result;
}

uint64_t sub_389540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), void (*a7)(uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v23 = a7;
  v21 = a4;
  v22 = a5;
  v11 = sub_BD88(&unk_944D90);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - v13;
  v15 = sub_BD88(&qword_944D88);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v21 - v17;
  sub_134D8(a1, v25);
  sub_BD88(&unk_944DA0);
  a6(0);
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v24;
    (*(v12 + 16))(v14, a2, v11);
    sub_768FA0();
    sub_768B30();
    v23(v20, v18, a3, v21, v22);

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_38975C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v10 = sub_BD88(&unk_944D90);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  v14 = sub_BD88(&qword_944D88);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - v16;
  sub_134D8(a1, aBlock);
  sub_BD88(&unk_944DA0);
  sub_75A2D0();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  (*(v11 + 16))(v13, a2, v10);
  sub_768FA0();
  sub_768B30();
  v19 = sub_759450();
  v20 = [v19 length];

  v21 = &selRef_setSpeed_;
  if (v20 <= 0)
  {
    [*&v6[qword_964310] setText:0];
    v6[qword_9A0A18] = 0;
    v31 = *&v6[qword_964300];
    [v31 setHidden:1];
    goto LABEL_7;
  }

  v46 = v17;
  v47 = v15;
  v48 = v14;
  v22 = sub_759450();
  v23 = [a5 traitCollection];
  v24 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v22];
  v49 = [v22 length];
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v23;
  *(v25 + 32) = v24;
  *(v25 + 40) = 1;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_266A8;
  *(v26 + 24) = v25;
  aBlock[4] = sub_26694;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  aBlock[3] = &unk_88EEF0;
  v27 = _Block_copy(aBlock);
  v28 = v23;
  v29 = v24;

  [v22 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v27}];

  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_22;
  }

  isEscapingClosureAtFileLocation = *&v6[qword_964310];
  [isEscapingClosureAtFileLocation setAttributedText:v29];
  if (qword_93E268 != -1)
  {
LABEL_22:
    swift_once();
  }

  [isEscapingClosureAtFileLocation setTextColor:qword_9A0A00];
  v6[qword_9A0A18] = 1;
  v31 = *&v6[qword_964300];
  [v31 setHidden:0];

  v15 = v47;
  v14 = v48;
  v17 = v46;
  v21 = &selRef_setSpeed_;
LABEL_7:
  v32 = *&v6[qword_964308];
  sub_759460();
  if (v33)
  {
    v34 = sub_769210();
  }

  else
  {
    v34 = 0;
  }

  [v32 v21[511]];

  v35 = sub_759430();
  v6[qword_9A0A10] = (v35 & 1) == 0;
  sub_26698(v35);
  if ((sub_759430() & 1) == 0 && v6[qword_9A0A18] != 1)
  {
    sub_759210();
    sub_759090();
  }

  sub_75CD10();
  if (sub_759430())
  {
    [v31 setBackgroundColor:0];
  }

  else
  {
    sub_BE70(0, &qword_93E540);
    v36 = sub_76A030();
    [v31 setBackgroundColor:v36];
  }

  if (sub_75A2C0())
  {
    v37 = [v6 contentView];
    sub_BE70(0, &qword_93E550);
    sub_75D650();
    v39 = v38;

    sub_765260();
    v41 = v40;
    sub_765260();
    v43 = v42;

    result = (*(v15 + 8))(v17, v14);
    v44 = &v6[qword_99D538];
    *v44 = v39;
    v44[1] = v39 * (v41 / v43);
  }

  else
  {

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_389E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_BD88(&unk_944E60);
  v9 = *(v8 - 8);
  v76 = v8;
  v77 = v9;
  __chkstk_darwin(v8);
  v75 = &v63 - v10;
  v70 = sub_7674E0();
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_94C3F0);
  __chkstk_darwin(v12 - 8);
  v67 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v68 = &v63 - v15;
  v16 = sub_BD88(&unk_944E70);
  __chkstk_darwin(v16 - 8);
  v18 = &v63 - v17;
  v19 = sub_BD88(&unk_944D90);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v63 - v21;
  v23 = sub_BD88(&qword_944D88);
  v69 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v63 - v24;
  sub_134D8(a1, v79);
  sub_BD88(&unk_944DA0);
  sub_75A420();
  result = swift_dynamicCast();
  if (result)
  {
    v27 = v78;
    (*(v20 + 16))(v22, a2, v19);
    sub_768FA0();
    sub_768B30();
    v79[0] = sub_75A410();
    sub_759D00();
    v28 = sub_768900();
    sub_38CEC0(&qword_9513B0, &type metadata accessor for LinkableText);
    v73 = v28;
    v74 = a3;
    sub_768820();

    v29 = sub_BD88(&unk_944E80);
    (*(*(v29 - 8) + 56))(v18, 0, 1, v29);
    v30 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyText;
    swift_beginAccess();
    sub_FB88C(v18, v4 + v30, &unk_944E70);
    swift_endAccess();
    sub_4FAAAC();
    sub_10A2C(v18, &unk_944E70);
    v31 = sub_75A3F0();
    *(v4 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_isDetailHeader) = v31 & 1;
    v32 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyLabel);
    sub_BE70(0, &qword_93E540);
    v33 = v25;
    if (v31)
    {
      v34 = sub_769FD0();
    }

    else
    {
      v34 = sub_769FF0();
    }

    v35 = *(v32 + qword_9580B0);
    *(v32 + qword_9580B0) = v34;
    v36 = v34;
    if ((sub_76A1C0() & 1) == 0)
    {
      sub_4ED788();
    }

    v37 = sub_75A400();
    v38 = v37;
    if (v37 >> 62)
    {
      v39 = sub_76A860();
    }

    else
    {
      v39 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
    }

    v64 = v33;
    v65 = v23;
    v66 = v27;
    if (v39)
    {
      v79[0] = _swiftEmptyArrayStorage;
      result = sub_143A98(0, v39 & ~(v39 >> 63), 0);
      if (v39 < 0)
      {
        __break(1u);
        return result;
      }

      v63 = v4;
      v40 = 0;
      v41 = v79[0];
      v42 = v75;
      do
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v43 = sub_76A770();
        }

        else
        {
          v43 = *(v38 + 8 * v40 + 32);
        }

        v78 = v43;
        sub_762FF0();
        sub_38CEC0(&unk_944E90, &type metadata accessor for PrivacyHeaderSupplementaryItem);
        sub_768820();

        v79[0] = v41;
        v45 = *(v41 + 2);
        v44 = *(v41 + 3);
        if (v45 >= v44 >> 1)
        {
          sub_143A98(v44 > 1, v45 + 1, 1);
          v41 = v79[0];
        }

        ++v40;
        *(v41 + 2) = v45 + 1;
        (*(v77 + 32))(v41 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v45, v42, v76);
      }

      while (v39 != v40);

      v4 = v63;
    }

    else
    {

      v41 = _swiftEmptyArrayStorage;
    }

    v46 = v71;
    sub_4FC25C();
    v47 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItems;
    *(v4 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItems) = v41;

    sub_4FAD50();
    if (sub_75A3F0())
    {
      v48 = *(v72 + 104);
      v72 += 104;
      LODWORD(v77) = enum case for Separator.Position.top(_:);
      v76 = v48;
      v48(v46);
      v75 = sub_766970();
      v80 = v75;
      v81 = &protocol witness table for ZeroDimension;
      sub_B1B4(v79);
      sub_766960();
      v49 = v68;
      sub_7674F0();
      v50 = sub_767510();
      v51 = v4;
      v52 = *(*(v50 - 8) + 56);
      v53 = 1;
      v52(v49, 0, 1, v50);
      v54 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_FB88C(v49, v51 + v54, &qword_94C3F0);
      swift_endAccess();
      sub_4FB50C();
      sub_10A2C(v49, &qword_94C3F0);
      if (*(*(v51 + v47) + 16))
      {
        v76(v71, v77, v70);
        v80 = v75;
        v81 = &protocol witness table for ZeroDimension;
        sub_B1B4(v79);
        sub_766960();
        v55 = v67;
        sub_7674F0();
        v53 = 0;
        v56 = v69;
      }

      else
      {
        v56 = v69;
        v55 = v67;
      }

      v52(v55, v53, 1, v50);
      v62 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_FB88C(v55, v51 + v62, &qword_94C3F0);
      swift_endAccess();
      sub_4FB520();

      sub_10A2C(v55, &qword_94C3F0);
      return (*(v56 + 8))(v64, v65);
    }

    else
    {
      v57 = sub_767510();
      v58 = *(*(v57 - 8) + 56);
      v59 = v68;
      v58(v68, 1, 1, v57);
      v60 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_FB88C(v59, v4 + v60, &qword_94C3F0);
      swift_endAccess();
      sub_4FB50C();
      sub_10A2C(v59, &qword_94C3F0);
      v58(v59, 1, 1, v57);
      v61 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_FB88C(v59, v4 + v61, &qword_94C3F0);
      swift_endAccess();
      sub_4FB520();

      sub_10A2C(v59, &qword_94C3F0);
      return (*(v69 + 8))(v64, v65);
    }
  }

  return result;
}

uint64_t sub_38A8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_BD88(&unk_944D90);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11 - 8];
  v13 = sub_BD88(&qword_944D88);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24[-v15 - 8];
  sub_134D8(a1, v24);
  sub_BD88(&unk_944DA0);
  sub_75AB70();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v10 + 16))(v12, a2, v9);
    sub_768FA0();
    sub_768B30();
    v18 = [v5 contentView];
    [a5 pageMarginInsets];
    [v18 setLayoutMargins:?];

    v19 = sub_75AB60();
    sub_36E518(v19, v20);
    v21 = sub_75AB50();
    sub_36E524(v21, v22);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_38AB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_75AC60();
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_BD88(&unk_944D90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-v9 - 8];
  v11 = sub_BD88(&qword_944D88);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18[-v13 - 8];
  sub_134D8(a1, v18);
  sub_BD88(&unk_944DA0);
  sub_75AC90();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v8 + 16))(v10, a2, v7);
    sub_768FA0();
    sub_768B30();
    sub_75AC80();
    sub_21F164(v6);
    v16 = sub_75AC70();
    sub_21FC90(v16);

    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_38AD9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_944D90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-v6 - 8];
  v8 = sub_BD88(&qword_944D88);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-v10 - 8];
  sub_134D8(a1, v15);
  sub_BD88(&unk_944DA0);
  sub_765430();
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v14;
    (*(v5 + 16))(v7, a2, v4);
    sub_768FA0();
    sub_768B30();
    sub_5DBCB4(v13, 1);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_38AF94(uint64_t a1, uint64_t a2)
{
  v5 = sub_BD88(&unk_944D90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7 - 8];
  v9 = sub_BD88(&qword_944D88);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16[-v11 - 8];
  sub_134D8(a1, v16);
  sub_BD88(&unk_944DA0);
  sub_75B610();
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v15;
    (*(v6 + 16))(v8, a2, v5);
    sub_768FA0();
    sub_768B30();
    *&v2[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategory] = v14;

    *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC18ASMessagesProvider19PrivacyCategoryView_category) = v14;

    sub_4DA5B8();
    [v2 setNeedsLayout];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_38B1F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_944D90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-v8 - 8];
  v10 = sub_BD88(&qword_944D88);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-v12 - 8];
  sub_134D8(a1, v20);
  sub_BD88(&unk_944DA0);
  sub_75B640();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v7 + 16))(v9, a2, v6);
    sub_768FA0();
    sub_768B30();
    sub_75B630();
    sub_75BA70();

    sub_75B620();
    if (v15)
    {
      v16 = sub_759920();
    }

    else
    {
      v16 = 0;
    }

    v17 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage];
    *&v3[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage] = v16;
    v18 = v16;

    sub_5A7B54();
    [v3 setNeedsLayout];

    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_38B47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v25 = a2;
  v4 = sub_765DC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = sub_BD88(&unk_944D90);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v15 = sub_BD88(&qword_944D88);
  v26 = *(v15 - 8);
  v27 = v15;
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  sub_134D8(a1, v30);
  sub_BD88(&unk_944DA0);
  sub_762C60();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v29;
    (*(v12 + 16))(v14, v25, v11);
    sub_768FA0();
    sub_768B30();
    sub_762C50();
    sub_1A399C(v10);
    v20 = *(v5 + 8);
    v20(v7, v4);
    sub_765E40();
    v20(v10, v4);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v23 = v28;
    v22[2] = v19;
    v22[3] = v23;
    v22[4] = v21;

    sub_765DF0();

    v24 = swift_allocObject();
    *(v24 + 16) = v19;
    *(v24 + 24) = v23;

    sub_765E10();

    return (*(v26 + 8))(v17, v27);
  }

  return result;
}

uint64_t sub_38B840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_BD88(&unk_944D90);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-v10 - 8];
  v12 = sub_BD88(&qword_944D88);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-v14 - 8];
  sub_134D8(a1, v22);
  sub_BD88(&unk_944DA0);
  sub_7587A0();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_768FA0();
    sub_768B30();
    sub_75B370();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;

      sub_27484(v18, a3);
    }

    else
    {
      sub_765860();
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
LABEL_7:
        [v4 setNeedsLayout];

        return (*(v13 + 8))(v15, v12);
      }

      v20 = v19;

      sub_27698(v20, a3);
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_38BACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_944D90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-v6 - 8];
  v8 = sub_BD88(&qword_944D88);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-v10 - 8];
  sub_134D8(a1, v18);
  sub_BD88(&unk_944DA0);
  sub_75CB00();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v5 + 16))(v7, a2, v4);
    sub_768FA0();
    sub_768B30();
    v13 = sub_75CAF0();
    sub_3253C8(v13, v14);
    v15 = sub_75CAE0();
    sub_3253D4(v15, v16);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_38BCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v63 = a5;
  v9 = sub_BD88(&unk_94BAA0);
  v61 = *(v9 - 8);
  v62 = v9;
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = sub_75E890();
  v58 = *(v12 - 8);
  v59 = v12;
  __chkstk_darwin(v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_765C90();
  v67 = *(v60 - 8);
  __chkstk_darwin(v60);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v66 = &v56 - v18;
  v19 = sub_BD88(&unk_944D90);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v56 - v21;
  v23 = sub_BD88(&qword_944D88);
  v64 = *(v23 - 8);
  v65 = v23;
  __chkstk_darwin(v23);
  v25 = &v56 - v24;
  sub_134D8(a1, v68);
  sub_BD88(&unk_944DA0);
  sub_75D1C0();
  result = swift_dynamicCast();
  if (result)
  {
    v56 = v11;
    (*(v20 + 16))(v22, a2, v19);
    sub_768FA0();
    v57 = v25;
    sub_768B30();
    v27 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_numberCompletedLabel);
    v28 = sub_75D1B0();
    v69._object = 0x80000000007CF0B0;
    v69._countAndFlagsBits = 0xD000000000000032;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    sub_761130(v69, v28, v70);
    v29 = sub_769210();

    [v27 setText:v29];

    v30 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_outOfTotalLabel);
    v31 = v63;
    v32 = [v63 traitCollection];
    sub_13F070();

    v33 = sub_769210();

    [v30 setText:v33];

    v34 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_completedLabel);
    sub_75D190();
    v35 = sub_769210();

    [v34 setText:v35];

    v36 = sub_75D180();
    if (*(v36 + 16))
    {
      v37 = v66;
      v38 = *(v67 + 16);
      v39 = v60;
      v38(v66, v36 + ((*(v67 + 80) + 32) & ~*(v67 + 80)), v60);

      v38(v16, v37, v39);
      sub_75D1A0();
      v40 = [v31 traitCollection];
      LOBYTE(v38) = sub_7699D0();

      v41 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v38 & 1) == 0)
      {
        v41 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v58 + 104))(v14, *v41, v59);
      v42 = objc_allocWithZone(sub_75E8A0());
      v43 = sub_75E880();
      v44 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView;
      v45 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView);
      if (v45)
      {
        [v45 removeFromSuperview];
        v46 = *(v6 + v44);
      }

      else
      {
        v46 = 0;
      }

      v50 = v56;
      *(v6 + v44) = v43;
      v51 = v43;

      [*(v6 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_containerView) addSubview:v51];
      if (sub_75D1A0() < 2)
      {
        v52 = v57;
        if (qword_93C7F0 != -1)
        {
          swift_once();
        }

        v53 = qword_99BE20;
      }

      else
      {
        v52 = v57;
        if (qword_93C7F8 != -1)
        {
          swift_once();
        }

        v53 = qword_99BE38;
      }

      v54 = v62;
      v55 = sub_BE38(v62, v53);
      (*(v61 + 16))(v50, v55, v54);
      swift_beginAccess();
      sub_760990();
      swift_endAccess();

      (*(v67 + 8))(v66, v39);
      return (*(v64 + 8))(v52, v65);
    }

    else
    {

      v47 = OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView;
      v48 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider36AchievementSummaryCollectionViewCell_achievementGroupView);
      if (v48)
      {
        [v48 removeFromSuperview];
        v49 = *(v6 + v47);
      }

      else
      {
        v49 = 0;
      }

      *(v6 + v47) = 0;

      return (*(v64 + 8))(v57, v65);
    }
  }

  return result;
}

uint64_t sub_38C434()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_38C46C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_38C4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  v7 = sub_BD88(&qword_944EA8);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_BD88(&unk_944D90);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v14 = sub_BD88(&qword_944D88);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  sub_134D8(a1, v25);
  sub_BD88(&unk_944DA0);
  sub_75F8F0();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    sub_768FA0();
    sub_768B30();
    v19 = sub_75F8D0();
    if (v20)
    {
      v21 = sub_75F8E0();
      v22 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      sub_74E5D4(v21, v9, 1, v24);

      sub_10A2C(v9, &qword_944EA8);
      [v4 layoutIfNeeded];
    }

    else
    {
      sub_74F998(v19);
    }

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_38C7EC(uint64_t a1, uint64_t a2)
{
  v5 = sub_BD88(&unk_944D90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7 - 8];
  v9 = sub_BD88(&qword_944D88);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-v11 - 8];
  sub_134D8(a1, v17);
  sub_BD88(&unk_944DA0);
  sub_75D8F0();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_768FA0();
    sub_768B30();
    v14 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
    sub_75D8E0();
    v15 = sub_769210();

    [v14 setText:v15];

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_38CA1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_944D90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-v6];
  v8 = sub_BD88(&qword_944D88);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14[-v10];
  sub_134D8(a1, v14);
  sub_BD88(&unk_944DA0);
  sub_75C8C0();
  swift_dynamicCast();
  (*(v5 + 16))(v7, a2, v4);
  sub_768FA0();
  sub_768B30();
  if (sub_75C850())
  {

    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  (*(v9 + 8))(v11, v8);

  return v12;
}

uint64_t sub_38CC18(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_BD88(&unk_944D90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - v5 + 8;
  v7 = sub_BD88(&qword_946370);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - v9 + 8;
  v11 = sub_758A00();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_134D8(a1, v18);
  sub_BD88(&unk_944DA0);
  swift_dynamicCast();
  (*(v4 + 16))(v6, v17, v3);
  sub_768B30();
  if (sub_2F0214())
  {
    sub_13EAE4();
    sub_768AF0();
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  return v15;
}

uint64_t sub_38CEC0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_38CF44(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_sizeCategory] = 5;
  v4[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_originalSizeCategory] = 5;
  v4[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isLayoutRequired] = 1;
  v4[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_BD88(&qword_9477F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_77B6D0;
  *(v10 + 32) = sub_767890();
  *(v10 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v11 = v9;
  sub_769F40();

  swift_unknownObjectRelease();

  return v11;
}

void sub_38D174()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView);
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

  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isLayoutRequired) = 1;
}

void sub_38D1F4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView];
  if (v1)
  {
    v2 = v0[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_originalSizeCategory];
    v3 = v1;
    v4 = v3;
    if (v2 == 4)
    {
      sub_38D2DC(v3);
    }

    else
    {
      [v0 bounds];
      [v4 setFrame:?];
    }
  }
}

uint64_t sub_38D2DC(void *a1)
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

  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isExpanded) == 1)
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
  result = sub_769910();
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

void sub_38D500()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView];
  if (v1)
  {
    [v1 sizeThatFits:?];
  }

  else
  {
    v2 = [v0 traitCollection];
    if (qword_93C328 != -1)
    {
      swift_once();
    }

    sub_138D34(v2, &xmmword_99A9B0, 1);
    sub_769A00();
    sub_7697D0();
    sub_769A00();
    sub_7697D0();
  }
}

id sub_38D660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_38D704()
{
  v0 = sub_76A920();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v4 = sub_766CA0();
  sub_BE38(v4, qword_99FE00);
  sub_766470();
  sub_766700();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

unint64_t sub_38D8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = sub_75E460();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_75E480();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_762D10();
  v9 = *(v59 - 8);
  __chkstk_darwin(v59);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7666D0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_93F900);
  if (qword_93D860 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v12, qword_99F118);
  v55 = a5;
  v17 = [a5 traitCollection];
  v60 = sub_769E10();

  (*(v13 + 16))(v15, v16, v12);
  v18 = type metadata accessor for DynamicTypeLinkedLabel();
  v19 = objc_allocWithZone(v18);
  v20 = sub_4ECF40(v15, 0, 0);
  sub_75A410();
  v21 = sub_759CF0();
  v22 = sub_22A974(v21, sub_30AE4);

  v23 = sub_759CE0();
  sub_4ED3B8(v23, 0, v22);

  result = sub_75A400();
  v25 = result;
  if (result >> 62)
  {
    v45 = result;
    result = sub_76A860();
    v25 = v45;
    v26 = result;
  }

  else
  {
    v26 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  }

  v50 = a1;
  v47 = v18;
  v46 = v20;
  if (v26)
  {
    if (v26 < 1)
    {
      __break(1u);
      return result;
    }

    v27 = 0;
    v57 = v25 & 0xC000000000000001;
    v56 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v28 = _swiftEmptyArrayStorage;
    v58 = v25;
    do
    {
      if (v57)
      {
        sub_76A770();
      }

      else
      {
      }

      sub_762FE0();
      sub_759CE0();

      v29 = v60;
      v30 = sub_758EC0();

      v31 = sub_7653B0();
      v68 = v31;
      v69 = sub_38EA44(&qword_93F9B0, &type metadata accessor for Feature);
      v32 = sub_B1B4(v67);
      (*(*(v31 - 8) + 104))(v32, v56, v31);
      v33 = v30;
      v34 = v29;
      sub_765C30();
      sub_BEB8(v67);
      sub_762CD0();
      sub_762CE0();
      (*(v9 + 8))(v11, v59);
      sub_134D8(v67, &v64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_7B08C(0, *(v28 + 2) + 1, 1, v28);
      }

      v36 = *(v28 + 2);
      v35 = *(v28 + 3);
      if (v36 >= v35 >> 1)
      {
        v28 = sub_7B08C((v35 > 1), v36 + 1, 1, v28);
      }

      ++v27;

      sub_BEB8(v67);
      *(v28 + 2) = v36 + 1;
      sub_34698(&v64, &v28[5 * v36 + 4]);
    }

    while (v26 != v27);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v37 = [v55 traitCollection];
  sub_767500();

  v38 = sub_7670D0();
  swift_allocObject();
  v39 = sub_7670B0();
  if (qword_93D2A8 != -1)
  {
    swift_once();
  }

  v40 = v49;
  v41 = sub_BE38(v49, qword_99E0C0);
  (*(v48 + 16))(v51, v41, v40);
  sub_75A3F0();
  v68 = v47;
  v69 = &protocol witness table for UIView;
  v67[0] = v46;
  v42 = v46;
  sub_14038C(v28);

  v65 = v38;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  v63 = &protocol witness table for LayoutViewPlaceholder;
  *&v64 = v39;
  v62 = v38;
  v61 = v39;
  swift_retain_n();
  v43 = v52;
  sub_75E470();
  sub_38EA44(&unk_9513C0, &type metadata accessor for PrivacyHeaderLayout);
  v44 = v54;
  sub_7665A0();

  return (*(v53 + 8))(v43, v44);
}

size_t sub_38E158(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v7 = sub_7674E0();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  __chkstk_darwin(v7);
  v58 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_94C3F0);
  __chkstk_darwin(v10 - 8);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v58 - v13;
  v68 = sub_BD88(&unk_944E60);
  v14 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v58 - v15;
  v16 = sub_BD88(&unk_944E70);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v70[0] = sub_75A410();
  sub_759D00();
  v19 = sub_768900();
  sub_38EA44(&qword_9513B0, &type metadata accessor for LinkableText);
  v69 = a3;
  v66 = v19;
  sub_768820();

  v20 = sub_BD88(&unk_944E80);
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_FB88C(v18, v4 + v21, &unk_944E70);
  swift_endAccess();
  sub_4FAAAC();
  sub_10A2C(v18, &unk_944E70);
  LOBYTE(v19) = sub_75A3F0();
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_isDetailHeader) = v19 & 1;
  v22 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_bodyLabel);
  sub_BE70(0, &qword_93E540);
  if (v19)
  {
    v23 = sub_769FD0();
  }

  else
  {
    v23 = sub_769FF0();
  }

  v24 = *(v22 + qword_9580B0);
  *(v22 + qword_9580B0) = v23;
  v25 = v23;
  if ((sub_76A1C0() & 1) == 0)
  {
    sub_4ED788();
  }

  v26 = sub_75A400();
  if (v26 >> 62)
  {
    v57 = v26;
    v27 = sub_76A860();
    v26 = v57;
  }

  else
  {
    v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
  }

  v64 = v4;
  v60 = a1;
  if (v27)
  {
    v28 = v26;
    v70[0] = _swiftEmptyArrayStorage;
    result = sub_143A98(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    v31 = v70[0];
    v32 = v28;
    v65 = v28 & 0xC000000000000001;
    v33 = v28;
    v34 = v27;
    do
    {
      if (v65)
      {
        v35 = sub_76A770();
      }

      else
      {
        v35 = *(v32 + 8 * v30 + 32);
      }

      v73 = v35;
      sub_762FF0();
      sub_38EA44(&unk_944E90, &type metadata accessor for PrivacyHeaderSupplementaryItem);
      v36 = v67;
      sub_768820();

      v70[0] = v31;
      v38 = *(v31 + 2);
      v37 = *(v31 + 3);
      if (v38 >= v37 >> 1)
      {
        sub_143A98(v37 > 1, v38 + 1, 1);
        v31 = v70[0];
      }

      ++v30;
      *(v31 + 2) = v38 + 1;
      (*(v14 + 32))(v31 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v38, v36, v68);
      v32 = v33;
    }

    while (v34 != v30);

    v4 = v64;
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  sub_4FC25C();
  v39 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItems;
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_supplementaryItems) = v31;

  sub_4FAD50();
  if (sub_75A3F0())
  {
    v40 = *(v63 + 104);
    v63 += 104;
    v41 = v58;
    LODWORD(v68) = enum case for Separator.Position.top(_:);
    v67 = v40;
    (v40)(v58);
    v42 = sub_766970();
    v71 = v42;
    v72 = &protocol witness table for ZeroDimension;
    sub_B1B4(v70);
    sub_766960();
    v43 = v61;
    sub_7674F0();
    v44 = sub_767510();
    v45 = 1;
    v69 = *(*(v44 - 8) + 56);
    v69(v43, 0, 1, v44);
    v46 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_FB88C(v43, v64 + v46, &qword_94C3F0);
    swift_endAccess();
    sub_4FB50C();
    v47 = v64;
    sub_10A2C(v43, &qword_94C3F0);
    if (*(*(v47 + v39) + 16))
    {
      (v67)(v41, v68, v62);
      v71 = v42;
      v72 = &protocol witness table for ZeroDimension;
      sub_B1B4(v70);
      sub_766960();
      v48 = v59;
      sub_7674F0();
      v45 = 0;
    }

    else
    {
      v48 = v59;
    }

    v69(v48, v45, 1, v44);
    v56 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v47 + v56;
    v55 = v48;
  }

  else
  {
    v49 = sub_767510();
    v50 = *(*(v49 - 8) + 56);
    v48 = v61;
    v50(v61, 1, 1, v49);
    v51 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_FB88C(v48, v64 + v51, &qword_94C3F0);
    swift_endAccess();
    sub_4FB50C();
    sub_10A2C(v48, &qword_94C3F0);
    v50(v48, 1, 1, v49);
    v52 = v64;
    v53 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v52 + v53;
    v55 = v48;
  }

  sub_FB88C(v55, v54, &qword_94C3F0);
  swift_endAccess();
  sub_4FB520();
  return sub_10A2C(v48, &qword_94C3F0);
}

uint64_t sub_38EA44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_38EA8C()
{
  v1 = sub_769210();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10A2C(v7, &unk_93FBD0);
  }

  return 1;
}

uint64_t sub_38EB7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_769210();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return sub_7587E0();
    }
  }

  else
  {
    sub_10A2C(v9, &unk_93FBD0);
  }

  v6 = sub_758800();
  return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
}

uint64_t sub_38ECB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_95D560);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_38FAC4(a1, &v12 - v5);
  v7 = sub_758800();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &unk_95D560);
    v9 = sub_769210();
    [v2 removeObjectForKey:v9];
  }

  else
  {
    sub_7587F0();
    (*(v8 + 8))(v6, v7);
    v10 = sub_769210();

    v9 = sub_769210();
    [v2 setObject:v10 forKey:v9];
  }

  return sub_10A2C(a1, &unk_95D560);
}

id sub_38EE8C()
{
  v1 = sub_769210();
  v2 = [v0 objectForKey:v1];

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
    sub_206378();
    if (swift_dynamicCast())
    {
      v3 = [v5 BOOLValue];

      return v3;
    }
  }

  else
  {
    sub_10A2C(v8, &unk_93FBD0);
  }

  return 0;
}

uint64_t sub_38EF9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_769210();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_7572A0();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10A2C(v11, &unk_93FBD0);
    v8 = sub_7572A0();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_38F0F8()
{
  v1 = sub_769210();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_206378();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10A2C(v7, &unk_93FBD0);
    return 0;
  }
}

uint64_t sub_38F1F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_769210();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_7572A0();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10A2C(v11, &unk_93FBD0);
    v8 = sub_7572A0();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_38F34C()
{
  v1 = sub_769210();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_206378();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10A2C(v7, &unk_93FBD0);
    return 0;
  }
}

uint64_t sub_38F444@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_769210();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_7572A0();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10A2C(v11, &unk_93FBD0);
    v8 = sub_7572A0();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_38F5A0()
{
  v1 = sub_769210();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_206378();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10A2C(v7, &unk_93FBD0);
    return 0;
  }
}

uint64_t sub_38F698@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_769210();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_7572A0();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10A2C(v11, &unk_93FBD0);
    v8 = sub_7572A0();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_38F7F4()
{
  v1 = sub_769210();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_206378();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10A2C(v7, &unk_93FBD0);
    return 0;
  }
}

id sub_38F8EC()
{
  v1 = ASKBuildTypeGetCurrent();
  sub_BD88(&qword_951500);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_77DC20;
  v3 = ASKBuildTypeDebug;
  v4 = ASKBuildTypeConvergence;
  *(v2 + 32) = ASKBuildTypeDebug;
  *(v2 + 40) = v4;
  v5 = ASKBuildTypeInternal;
  *(v2 + 48) = ASKBuildTypeInternal;
  type metadata accessor for BuildType(0);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  isa = sub_769450().super.isa;

  IsAnyOf = ASKBuildTypeIsAnyOf();

  if (IsAnyOf)
  {
    v11 = sub_769210();
    v12 = [v0 objectForKey:v11];

    if (v12)
    {
      sub_76A510();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v18[0] = v16;
    v18[1] = v17;
    if (*(&v17 + 1))
    {
      sub_206378();
      if (swift_dynamicCast())
      {
        v13 = [v15 BOOLValue];

        return v13;
      }
    }

    else
    {
      sub_10A2C(v18, &unk_93FBD0);
    }
  }

  return 0;
}

uint64_t sub_38FAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_95D560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_38FB34(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31TodayDebugSectionBackgroundView_sectionTypeIndicator;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC18ASMessagesProvider31TodayDebugSectionBackgroundView_sectionTypeIndicator]];
  v15 = [v14 layer];
  [v15 setZPosition:1000.0];

  return v14;
}

void sub_38FDC4(uint64_t a1)
{
  v2 = sub_7649E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_94F1F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v21 = sub_761F90();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v3 + 96))(v5, v2);
    v13 = v5;
    v14 = v21;
    (*(v10 + 32))(v12, v13, v21);
    v15 = v23;
    v16 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v17 = sub_761F70();
    [v16 setBackgroundColor:v17];

    sub_390254();
    sub_761DF0();
    sub_761E10();
    sub_7697D0();
    [v15 setLayoutMargins:?];
    (*(v10 + 8))(v12, v14);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v18 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor:v19];
  }
}

id sub_3901E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_390254()
{
  result = qword_951538;
  if (!qword_951538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_951538);
  }

  return result;
}

void sub_3902B8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v158 = a2;
  v146 = sub_7656C0();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v131[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = sub_7664A0();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v131[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_BD88(&unk_94F1F0);
  v163 = *(v5 - 8);
  __chkstk_darwin(v5);
  v143 = &v131[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v157 = &v131[-v8];
  v156 = sub_75B660();
  v162 = *(v156 - 8);
  __chkstk_darwin(v156);
  v140 = &v131[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v155 = sub_BD88(&qword_94B998);
  __chkstk_darwin(v155);
  v165 = &v131[-v10];
  v11 = sub_BD88(&qword_94B9A0);
  __chkstk_darwin(v11 - 8);
  v150 = &v131[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v161 = &v131[-v14];
  __chkstk_darwin(v15);
  v159 = &v131[-v16];
  v151 = sub_764930();
  v160 = *(v151 - 8);
  __chkstk_darwin(v151);
  v141 = &v131[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v142 = &v131[-v19];
  __chkstk_darwin(v20);
  v136 = &v131[-v21];
  v22 = sub_BD88(&qword_945828);
  __chkstk_darwin(v22);
  v24 = &v131[-v23];
  v25 = sub_BD88(&qword_963790);
  __chkstk_darwin(v25 - 8);
  v154 = &v131[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v153 = &v131[-v28];
  __chkstk_darwin(v29);
  v31 = &v131[-v30];
  __chkstk_darwin(v32);
  v138 = &v131[-v33];
  __chkstk_darwin(v34);
  v137 = &v131[-v35];
  __chkstk_darwin(v36);
  v139 = &v131[-v37];
  __chkstk_darwin(v38);
  v40 = &v131[-v39];
  __chkstk_darwin(v41);
  v43 = &v131[-v42];
  __chkstk_darwin(v44);
  v46 = &v131[-v45];
  v47 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v47 - 8);
  v152 = &v131[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v49);
  v51 = &v131[-v50];
  __chkstk_darwin(v52);
  v54 = &v131[-v53];
  v55 = sub_75DA10();
  v164 = a1;
  if (v55)
  {
    LODWORD(v152) = 0;
    v56 = v5;
    v57 = v163;
    v58 = v159;
LABEL_12:
    v69 = v161;
    goto LABEL_13;
  }

  sub_75DA50();
  sub_10A2C(v40, &qword_963790);
  sub_2C88C(v43, v46);
  v59 = v163;
  v60 = *(v163 + 48);
  v134 = v163 + 48;
  v133 = v60;
  v61 = v60(v46, 1, v5);
  v135 = v5;
  if (v61 == 1)
  {
    sub_10A2C(v46, &qword_963790);
    v62 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_768750();

    (*(v59 + 8))(v46, v5);
    v62 = 0;
  }

  v63 = v160;
  v64 = *(v160 + 56);
  v65 = v151;
  v64(v54, v62, 1, v151);
  (*(v63 + 104))(v51, enum case for Shelf.ContentType.unifiedMessage(_:), v65);
  v64(v51, 0, 1, v65);
  v66 = *(v22 + 48);
  sub_1ED18(v54, v24, &qword_951BE0);
  sub_1ED18(v51, &v24[v66], &qword_951BE0);
  v67 = *(v63 + 48);
  if (v67(v24, 1, v65) == 1)
  {
    sub_10A2C(v51, &qword_951BE0);
    sub_10A2C(v54, &qword_951BE0);
    v68 = v67(&v24[v66], 1, v65);
    v58 = v159;
    if (v68 == 1)
    {
      sub_10A2C(v24, &qword_951BE0);
      v56 = v135;
      v69 = v161;
      goto LABEL_40;
    }

LABEL_11:
    sub_10A2C(v24, &qword_945828);
    LODWORD(v152) = 1;
    v56 = v135;
    v57 = v163;
    goto LABEL_12;
  }

  v70 = v152;
  sub_1ED18(v24, v152, &qword_951BE0);
  if (v67(&v24[v66], 1, v65) == 1)
  {
    sub_10A2C(v51, &qword_951BE0);
    sub_10A2C(v54, &qword_951BE0);
    (*(v160 + 8))(v70, v65);
    v58 = v159;
    goto LABEL_11;
  }

  v122 = v160;
  v123 = v136;
  (*(v160 + 32))(v136, &v24[v66], v65);
  sub_3926E8(&qword_944DC0, &type metadata accessor for Shelf.ContentType);
  v132 = sub_7691C0();
  v124 = *(v122 + 8);
  v124(v123, v65);
  sub_10A2C(v51, &qword_951BE0);
  sub_10A2C(v54, &qword_951BE0);
  v124(v152, v65);
  sub_10A2C(v24, &qword_951BE0);
  v56 = v135;
  v58 = v159;
  v69 = v161;
  if ((v132 & 1) == 0)
  {
    LODWORD(v152) = 1;
    v57 = v163;
    goto LABEL_13;
  }

LABEL_40:
  v125 = v137;
  v126 = v138;
  sub_75DA50();
  sub_10A2C(v126, &qword_963790);
  v127 = v139;
  sub_2C88C(v125, v139);
  v128 = v133(v127, 1, v56);
  v57 = v163;
  if (v128 == 1)
  {
    sub_10A2C(v127, &qword_963790);
    v129 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_768750();

    v130 = LOBYTE(v166[0]);
    (*(v57 + 8))(v127, v56);
    v129 = v130 ^ 1;
  }

  LODWORD(v152) = v129;
LABEL_13:
  v71 = v153;
  v72 = v154;
  sub_75DA50();
  sub_10A2C(v72, &qword_963790);
  sub_2C88C(v71, v31);
  if ((*(v57 + 48))(v31, 1, v56) == 1)
  {
    sub_10A2C(v31, &qword_963790);
    v73 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_768750();

    (*(v57 + 8))(v31, v56);
    v73 = 0;
  }

  v74 = v162;
  v75 = *(v162 + 56);
  v76 = v156;
  v75(v58, v73, 1, v156);
  (*(v74 + 104))(v69, enum case for ShelfBackground.none(_:), v76);
  v75(v69, 0, 1, v76);
  v77 = *(v155 + 48);
  v78 = v165;
  sub_1ED18(v58, v165, &qword_94B9A0);
  v79 = v78;
  sub_1ED18(v69, &v78[v77], &qword_94B9A0);
  v80 = v74;
  v81 = v69;
  v82 = *(v80 + 48);
  if (v82(v79, 1, v76) == 1)
  {
    sub_10A2C(v81, &qword_94B9A0);
    v83 = v165;
    sub_10A2C(v58, &qword_94B9A0);
    if (v82(&v83[v77], 1, v76) == 1)
    {
      sub_10A2C(v83, &qword_94B9A0);
      v84 = 1;
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v85 = v150;
  sub_1ED18(v79, v150, &qword_94B9A0);
  if (v82((v79 + v77), 1, v76) == 1)
  {
    sub_10A2C(v161, &qword_94B9A0);
    v83 = v165;
    sub_10A2C(v58, &qword_94B9A0);
    (*(v162 + 8))(v85, v76);
LABEL_21:
    sub_10A2C(v83, &qword_94B998);
    v84 = 0;
    goto LABEL_23;
  }

  v86 = v85;
  v87 = v162;
  v88 = v79 + v77;
  v89 = v140;
  (*(v162 + 32))(v140, v88, v76);
  sub_3926E8(&qword_9439F8, &type metadata accessor for ShelfBackground);
  v90 = v79;
  v84 = sub_7691C0();
  v91 = *(v87 + 8);
  v91(v89, v76);
  sub_10A2C(v161, &qword_94B9A0);
  sub_10A2C(v159, &qword_94B9A0);
  v91(v86, v76);
  sub_10A2C(v90, &qword_94B9A0);
LABEL_23:
  v92 = v157;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v93 = *(v57 + 8);
  v93(v92, v56);
  v94 = v166[0];
  if (v166[0])
  {
  }

  v95 = sub_75DA30();
  v96 = sub_7699E0();

  if (!(v152 & 1 | (v94 != 0)))
  {
    if (v96)
    {
      v102 = v147;
      *v147 = UIFontTextStyleBody;
      v103 = v148;
      v104 = v149;
      (*(v148 + 104))(v102, enum case for FontSource.textStyle(_:), v149);
      v105 = sub_766CA0();
      v106 = v158;
      v158[3] = v105;
      v106[4] = &protocol witness table for StaticDimension;
      sub_B1B4(v106);
      v166[3] = v104;
      v166[4] = &protocol witness table for FontSource;
      v107 = sub_B1B4(v166);
      (*(v103 + 16))(v107, v102, v104);
      v108 = UIFontTextStyleBody;
      sub_766CB0();
      (*(v103 + 8))(v102, v104);
      return;
    }

    goto LABEL_38;
  }

  if (!(v84 & 1 | (v94 != 0)))
  {
    v109 = v144;
    sub_75DA20();
    sub_765570();
    v111 = v110;
    (*(v145 + 8))(v109, v146);
    v112 = v158;
    v158[3] = &type metadata for CGFloat;
    v112[4] = &protocol witness table for CGFloat;
    *v112 = v111;
    return;
  }

  v97 = v143;
  sub_75DAA0();
  swift_getKeyPath();
  v98 = v142;
  sub_768750();

  v93(v97, v56);
  v99 = v141;
  v100 = v151;
  (*(v160 + 104))(v141, enum case for Shelf.ContentType.unifiedMessage(_:), v151);
  sub_3926E8(&qword_942D68, &type metadata accessor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v166[0] == v166[5] && v166[1] == v166[6])
  {
    v101 = *(v160 + 8);
    v101(v99, v100);
    v101(v98, v100);
  }

  else
  {
    v113 = sub_76A950();
    v114 = *(v160 + 8);
    v114(v99, v100);
    v114(v98, v100);

    if ((v113 & 1) == 0)
    {
LABEL_38:
      v121 = v158;
      v158[3] = &type metadata for Double;
      v121[4] = &protocol witness table for Double;
      *v121 = 0;
      return;
    }
  }

  v115 = sub_75DA30();
  v116 = sub_7699D0();

  if ((v116 & 1) == 0)
  {
    goto LABEL_38;
  }

  if (qword_93DD00 != -1)
  {
    swift_once();
  }

  v117 = sub_766CA0();
  v118 = sub_BE38(v117, qword_99FE48);
  v119 = v158;
  v158[3] = v117;
  v119[4] = &protocol witness table for StaticDimension;
  v120 = sub_B1B4(v119);
  (*(*(v117 - 8) + 16))(v120, v118, v117);
}

uint64_t sub_3916BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v145 = a2;
  v116 = sub_7656C0();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_76A920();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_7664A0();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = (&v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = sub_75B660();
  v141 = *(v146 - 8);
  __chkstk_darwin(v146);
  v123 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v124 = &v114 - v8;
  __chkstk_darwin(v9);
  v138 = &v114 - v10;
  __chkstk_darwin(v11);
  v131 = &v114 - v12;
  v13 = sub_BD88(&qword_963790);
  __chkstk_darwin(v13 - 8);
  v137 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v136 = &v114 - v16;
  __chkstk_darwin(v17);
  v140 = &v114 - v18;
  __chkstk_darwin(v19);
  v130 = &v114 - v20;
  __chkstk_darwin(v21);
  v128 = (&v114 - v22);
  __chkstk_darwin(v23);
  v25 = &v114 - v24;
  v26 = sub_764930();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v142 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v143 = &v114 - v30;
  __chkstk_darwin(v31);
  v33 = &v114 - v32;
  __chkstk_darwin(v34);
  v36 = &v114 - v35;
  v37 = sub_BD88(&unk_94F1F0);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v139 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v129 = &v114 - v41;
  __chkstk_darwin(v42);
  v44 = &v114 - v43;
  v150 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v45 = *(v38 + 8);
  v147 = v37;
  v148 = v45;
  v46 = v37;
  v47 = v38 + 8;
  v45(v44, v46);
  v48 = *(v27 + 104);
  v135 = v27 + 104;
  v134 = v48;
  v48(v33, enum case for Shelf.ContentType.todayCard(_:), v26);
  v49 = sub_3926E8(&qword_942D68, &type metadata accessor for Shelf.ContentType);
  sub_769430();
  v149 = v26;
  v133 = v49;
  sub_769430();
  if (v151 == v155 && v152 == v156)
  {
    v122 = 1;
  }

  else
  {
    v122 = sub_76A950();
  }

  v50 = *(v27 + 8);
  v51 = v33;
  v52 = v149;
  v50(v51, v149);
  v132 = v50;
  v50(v36, v52);

  v53 = v128;
  v54 = v130;
  sub_75DA50();
  sub_10A2C(v53, &qword_963790);
  sub_2C88C(v54, v25);
  v55 = *(v38 + 48);
  v56 = v147;
  v130 = (v38 + 48);
  v128 = v55;
  v57 = v55(v25, 1, v147);
  v144 = v27 + 8;
  if (v57 == 1)
  {
    sub_10A2C(v25, &qword_963790);
    v117 = 0;
    v58 = v146;
    v59 = v141;
    v60 = v131;
    v61 = v148;
  }

  else
  {
    swift_getKeyPath();
    sub_768750();

    v62 = v151;
    v61 = v148;
    v148(v25, v56);
    v58 = v146;
    v59 = v141;
    v60 = v131;
    if (v62)
    {

      v117 = 1;
    }

    else
    {
      v117 = 0;
    }
  }

  v63 = v129;
  sub_75DAA0();
  swift_getKeyPath();
  v64 = v147;
  sub_768750();

  v61(v63, v64);
  v65 = *(v59 + 104);
  v66 = v138;
  LODWORD(v141) = enum case for ShelfBackground.none(_:);
  v131 = v65;
  (v65)(v138);
  v129 = sub_3926E8(&qword_9439F8, &type metadata accessor for ShelfBackground);
  v121 = sub_7691C0();
  v67 = *(v59 + 8);
  v67(v66, v58);
  v67(v60, v58);
  v146 = v47;
  v68 = v136;
  v69 = v137;
  sub_75DA50();
  v70 = v68;
  v71 = v64;
  sub_10A2C(v70, &qword_963790);
  v72 = v140;
  sub_2C88C(v69, v140);
  if (v128(v72, 1, v64) == 1)
  {
    sub_10A2C(v72, &qword_963790);
    v73 = 1;
  }

  else
  {
    swift_getKeyPath();
    v74 = v123;
    sub_768750();

    v148(v72, v64);
    v75 = v124;
    (*(v59 + 32))(v124, v74, v58);
    (v131)(v60, v141, v58);
    v73 = sub_7691C0();
    v67(v60, v58);
    v67(v75, v58);
  }

  v76 = v143;
  v77 = sub_75DA30();
  v78 = sub_7699E0();

  v79 = v139;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v148(v79, v71);
  v80 = v142;
  v134(v142, enum case for Shelf.ContentType.unifiedMessage(_:), v149);
  sub_769430();
  sub_769430();
  if (v151 == v155 && v152 == v156)
  {
    v81 = v80;
    v82 = v149;
    v83 = v132;
    v132(v81, v149);
    v83(v76, v82);

LABEL_17:
    v87 = v125;
    *v125 = UIFontTextStyleBody;
    v88 = v126;
    v89 = v127;
    (*(v126 + 104))(v87, enum case for FontSource.textStyle(_:), v127);
    v90 = sub_766CA0();
    v91 = v145;
    v145[3] = v90;
    v91[4] = &protocol witness table for StaticDimension;
    sub_B1B4(v91);
    v153 = v89;
    v154 = &protocol witness table for FontSource;
    v92 = sub_B1B4(&v151);
    (*(v88 + 16))(v92, v87, v89);
    v93 = UIFontTextStyleBody;
    sub_766CB0();
    return (*(v88 + 8))(v87, v89);
  }

  v84 = sub_76A950();
  v85 = v149;
  v86 = v132;
  v132(v80, v149);
  v86(v76, v85);

  if (v84)
  {
    goto LABEL_17;
  }

  if ((v122 & 1) == 0)
  {
LABEL_23:
    v99 = sub_766CA0();
    v100 = v145;
    v145[3] = v99;
    v100[4] = &protocol witness table for StaticDimension;
    v101 = sub_B1B4(v100);
    if (v78)
    {
      if (qword_93DCE8 != -1)
      {
        swift_once();
      }

      v102 = qword_99FE00;
    }

    else
    {
      if (qword_93DCE0 != -1)
      {
        swift_once();
      }

      v102 = qword_99FDE8;
    }

    v103 = sub_BE38(v99, v102);
    return (*(*(v99 - 8) + 16))(v101, v103, v99);
  }

  if (v121 & v73)
  {
    if (v117)
    {
      if (v78)
      {
        v95 = v114;
        sub_75DA20();
        sub_765570();
        v97 = v96;
        result = (*(v115 + 8))(v95, v116);
        v98 = v145;
        v145[3] = &type metadata for CGFloat;
        v98[4] = &protocol witness table for CGFloat;
        *v98 = v97;
      }

      else
      {
        if (qword_93DCF0 != -1)
        {
          swift_once();
        }

        v110 = sub_766CA0();
        v111 = sub_BE38(v110, qword_99FE18);
        v112 = v145;
        v145[3] = v110;
        v112[4] = &protocol witness table for StaticDimension;
        v113 = sub_B1B4(v112);
        return (*(*(v110 - 8) + 16))(v113, v111, v110);
      }

      return result;
    }

    goto LABEL_23;
  }

  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v104 = sub_766CA0();
  sub_BE38(v104, qword_99FE00);
  v105 = sub_75DA30();
  v106 = v118;
  sub_766470();
  sub_766C70();
  v108 = v107;

  result = (*(v119 + 8))(v106, v120);
  v109 = v145;
  v145[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v108 + v108;
  return result;
}

uint64_t sub_3926E8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_392758(void *a1)
{
  v1 = [a1 navigationItem];
  v2 = [v1 leftBarButtonItems];
  v18 = v1;
  if (v2)
  {
    v3 = v2;
    sub_3929E4();
    v4 = sub_769460();

    if (v4 >> 62)
    {
LABEL_17:
      v5 = sub_76A860();
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
      if (v5)
      {
LABEL_4:
        v6 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = sub_76A770();
          }

          else
          {
            if (v6 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_16;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

          if ([v7 isSystemItem])
          {
            v10 = [v8 systemItem];

            if (v10 == &dword_18)
            {
LABEL_33:
              i = &dword_0 + 1;
LABEL_35:
              v1 = v18;
              goto LABEL_36;
            }
          }

          else
          {
          }

          ++v6;
        }

        while (v9 != v5);
      }
    }

    v1 = v18;
  }

  i = [v1 rightBarButtonItems];
  if (i)
  {
    sub_3929E4();
    v12 = sub_769460();

    if (v12 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
    {
      v13 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v14 = sub_76A770();
        }

        else
        {
          if (v13 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_39;
          }

          v14 = *(v12 + 8 * v13 + 32);
        }

        v15 = v14;
        v1 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if ([v14 isSystemItem])
        {
          v16 = [v15 systemItem];

          if (v16 == &dword_18)
          {
            goto LABEL_33;
          }
        }

        else
        {
        }

        ++v13;
        if (v1 == i)
        {
          i = 0;
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

LABEL_36:
  }

  return i;
}

unint64_t sub_3929E4()
{
  result = qword_947490;
  if (!qword_947490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_947490);
  }

  return result;
}

void sub_392A30(void *a1, void *a2)
{
  if ((sub_392758(a1) & 1) == 0)
  {
    v4 = [a1 navigationItem];
    v5 = [v4 rightBarButtonItems];
    if (v5)
    {
      v6 = v5;
      sub_3929E4();
      v7 = sub_769460();
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    sub_3929E4();
    v8 = a2;
    v10.value.super.super.isa = a2;
    v10.is_nil = 0;
    sub_769830(UIBarButtonSystemItemClose, v10, v11);
    sub_769440();
    if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v7 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
    isa = sub_769450().super.isa;

    [v4 setRightBarButtonItems:isa];
  }
}

double sub_392B80@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for InfiniteScrollFooterView();
  if (sub_769BC0() == a1 && v6 == a2)
  {

    goto LABEL_11;
  }

  v8 = sub_76A950();

  if (v8)
  {
LABEL_11:

    sub_769BD0();
    *(a3 + 24) = sub_BD88(&qword_951B98);
    *(a3 + 32) = sub_16194(&unk_959630, &qword_951B98);
    sub_B1B4(a3);
    goto LABEL_12;
  }

  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_76A950() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000000007D87A0 == a2 || (sub_76A950() & 1) != 0)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(a3 + 24) = sub_BD88(&unk_959620);
    *(a3 + 32) = sub_16194(&qword_951B90, &unk_959620);
    sub_B1B4(a3);
    sub_BE70(0, &qword_947680);
    swift_bridgeObjectRetain_n();
LABEL_12:
    sub_763760();
    return result;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_392F88(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_7685A0();
  __chkstk_darwin(v11 - 8);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_768FF0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_757640();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v78 = v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v77 - v22;
  v24 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v24 - 8);
  v82 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v81 = v77 - v27;
  __chkstk_darwin(v28);
  v80 = v77 - v29;
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v33 = v77 - v32;
  v95.receiver = v5;
  v95.super_class = ObjectType;
  v87 = ObjectType;
  objc_msgSendSuper2(&v95, "frame", v31);
  IsEmpty = CGRectIsEmpty(v98);
  v88 = v5;
  v89 = v19;
  v85 = v14;
  v84 = v15;
  v83 = v17;
  if (IsEmpty || (v94.receiver = v5, v94.super_class = v87, objc_msgSendSuper2(&v94, "frame"), v36 == a3) && v35 == a4)
  {
    v37 = v80;
    (*(v19 + 56))(v80, 1, 1, v18);
    goto LABEL_14;
  }

  v38 = [v5 indexPathsForVisibleItems];
  v39 = sub_769460();

  *&v92 = v39;

  sub_39A6D4(&v92);

  v14 = v92;
  v17 = *(v92 + 16);
  if (!v17)
  {
LABEL_12:

    v37 = v80;
    (*(v89 + 56))(v80, 1, 1, v18);
    v5 = v88;
LABEL_13:
    v14 = v85;
    v15 = v84;
    v33 = v77[1];
    v17 = v83;
LABEL_14:
    v79 = v18;
    sub_109C4(v37, v33, &unk_94EE60);
    if (qword_93DEF8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v5 = 0;
  v86 = v92 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
  v33 = (v89 + 8);
  v40 = v88;
  while (v5 < *(v14 + 16))
  {
    v15 = v18;
    (*(v89 + 16))(v23, v86 + *(v89 + 72) * v5, v18);
    isa = sub_757550().super.isa;
    v42 = [v40 cellForItemAtIndexPath:isa];

    if (v42)
    {
      [v40 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      [v42 frame];
      v100.origin.x = v51;
      v100.origin.y = v52;
      v100.size.width = v53;
      v100.size.height = v54;
      v99.origin.x = v44;
      v99.origin.y = v46;
      v99.size.width = v48;
      v99.size.height = v50;
      v55 = CGRectContainsRect(v99, v100);

      if (v55)
      {

        v56 = v89;
        v37 = v80;
        v18 = v15;
        (*(v89 + 32))(v80, v23, v15);
        (*(v56 + 56))(v37, 0, 1, v15);
        v5 = v40;
        goto LABEL_13;
      }
    }

    ++v5;
    v18 = v15;
    (*v33)(v23, v15);
    if (v17 == v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_15:
  v57 = sub_BE38(v14, qword_9A0418);
  (*(v15 + 16))(v17, v57, v14);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_784250;
  sub_768540();
  type metadata accessor for CGSize(0);
  v59 = v58;
  *(&v93 + 1) = v58;
  *&v92 = a3;
  *(&v92 + 1) = a4;
  sub_7685C0();
  sub_10A2C(&v92, &unk_93FBD0);
  sub_768540();
  v91.receiver = v5;
  v91.super_class = v87;
  objc_msgSendSuper2(&v91, "frame");
  *(&v93 + 1) = v59;
  *&v92 = v60;
  *(&v92 + 1) = v61;
  sub_7685C0();
  sub_10A2C(&v92, &unk_93FBD0);
  sub_768590();
  v96._countAndFlagsBits = 0x6E696C6C6F726373;
  v96._object = 0xED0000206F742067;
  sub_768580(v96);
  v62 = v33;
  v63 = v33;
  v64 = v81;
  sub_1ED18(v63, v81, &unk_94EE60);
  v65 = v89;
  v66 = *(v89 + 48);
  v67 = v79;
  if (v66(v64, 1, v79) == 1)
  {
    sub_10A2C(v64, &unk_94EE60);
    v92 = 0u;
    v93 = 0u;
  }

  else
  {
    *(&v93 + 1) = v67;
    v68 = sub_B1B4(&v92);
    (*(v65 + 32))(v68, v64, v67);
  }

  sub_768560();
  sub_10A2C(&v92, &unk_93FBD0);
  v97._countAndFlagsBits = 46;
  v97._object = 0xE100000000000000;
  sub_768580(v97);
  sub_7685B0();
  v69 = v85;
  v70 = v83;
  sub_768E80();

  (*(v84 + 8))(v70, v69);
  v71 = v88;
  v90.receiver = v88;
  v90.super_class = v87;
  objc_msgSendSuper2(&v90, "setFrame:", a1, a2, a3, a4);
  v72 = v82;
  sub_1ED18(v62, v82, &unk_94EE60);
  if (v66(v72, 1, v67) == 1)
  {
    sub_10A2C(v62, &unk_94EE60);
  }

  else
  {
    v73 = v89;
    v74 = v78;
    (*(v89 + 32))(v78, v72, v67);
    [v71 layoutIfNeeded];
    v75 = sub_757550().super.isa;
    [v71 scrollToItemAtIndexPath:v75 atScrollPosition:1 animated:0];

    (*(v73 + 8))(v74, v67);
    v72 = v62;
  }

  return sub_10A2C(v72, &unk_94EE60);
}

id sub_3939D8()
{
  ObjectType = swift_getObjectType();
  if (qword_93DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_768FF0();
  sub_BE38(v2, qword_9A0418);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v5[0] = ObjectType;
  sub_7685C0();
  sub_10A2C(v5, &unk_93FBD0);
  MetatypeMetadata = &type metadata for String;
  strcpy(v5, "reloadData()");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  sub_7685C0();
  sub_10A2C(v5, &unk_93FBD0);
  sub_768E80();

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "reloadData");
}

void sub_393CF8(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryAccessibilityMedium;
  v4 = UIContentSizeCategoryAccessibilityExtraLarge;
  if ((sub_769B60() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (sub_769B50())
  {
    v5 = sub_769B60();

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v8 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  if ((sub_769B60() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (sub_769B50())
  {
    sub_769B60();
  }
}

char *sub_393E68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  *(v2 + qword_951540) = 0;
  *(v2 + qword_99D540) = 0;
  *(v2 + qword_951548) = 0;
  sub_75DC80();
  v6 = qword_951558;
  v7 = sub_7572A0();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = qword_951560;
  v9 = sub_757530();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + qword_951570) = 0;
  v10 = v3 + qword_951578;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v3 + qword_951580) = 0;
  sub_7634F0();
  sub_768880();
  *(v3 + qword_951568) = v17;

  v11 = sub_46A9CC(a1, a2);
  v12 = *&v11[qword_99E1D8];

  sub_75FA40();

  sub_BD88(&qword_9477F0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_77E280;
  *(v13 + 32) = sub_7676E0();
  *(v13 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v13 + 48) = sub_767B80();
  *(v13 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769900();
  swift_unknownObjectRelease();

  if (sub_4ACFD8())
  {

LABEL_4:
    type metadata accessor for TodayDebugViews();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v15 + 71) = 0;
    *(v15 + 56) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 24) = 0u;
    swift_unknownObjectWeakAssign();
    *&v11[qword_951580] = v15;

    return v11;
  }

  v14 = sub_4ACFFC();

  if (v14)
  {
    goto LABEL_4;
  }

  return v11;
}

id sub_394158()
{
  v1 = qword_951570;
  v2 = *(v0 + qword_951570);
  if (v2)
  {
    v3 = *(v0 + qword_951570);
  }

  else
  {
    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"didLongPressTitleWithGestureRecognizer:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_3941DC()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, "viewDidLoad");
  v2 = sub_7653A0();
  v24[3] = v2;
  v24[4] = sub_3A067C(&qword_947D00, &type metadata accessor for Feature.iOS);
  v3 = sub_B1B4(v24);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v2);
  LOBYTE(v2) = sub_765C30();
  sub_BEB8(v24);
  if ((v2 & 1) == 0)
  {
    v4 = [v1 view];
    if (!v4)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    goto LABEL_16;
  }

  *(v8 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 0;

  [v1 setClearsSelectionOnViewWillAppear:0];
  v9 = [v1 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 _setEdgesAllowingScrollAccessoriesExtendedToBoundingPath:14];
  }

  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 setDelaysContentTouches:0];
  }

  if ((byte_962588 & 1) == 0)
  {
    v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v13 setMinimumLineHeight:13.0];
    [v13 setMaximumLineHeight:13.0];
    sub_BD88(&qword_940F40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77E280;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v15 = sub_BE70(0, &unk_959BA0);
    *(inited + 40) = v13;
    *(inited + 64) = v15;
    *(inited + 72) = NSBaselineOffsetAttributeName;
    v16 = objc_allocWithZone(NSNumber);
    v17 = NSParagraphStyleAttributeName;
    v18 = v13;
    v19 = NSBaselineOffsetAttributeName;
    v20 = [v16 initWithDouble:2.0];
    *(inited + 104) = sub_BE70(0, &qword_945820);
    *(inited + 80) = v20;
    sub_10D028(inited);
    swift_setDeallocating();
    sub_BD88(qword_940F50);
    swift_arrayDestroy();
    sub_BE70(0, &qword_954EE0);
    v21 = sub_76A1E0();
    type metadata accessor for Key(0);
    sub_3A067C(&qword_93EC10, type metadata accessor for Key);
    isa = sub_7690E0().super.isa;

    [v21 boundingRectWithSize:1 options:isa attributes:0 context:{1.79769313e308, 1.79769313e308}];

    v23 = [objc_allocWithZone(NSTextStorage) init];
    byte_962588 = 1;
  }

  if (*&v1[qword_951580])
  {

    sub_227D00();
  }
}

void sub_394644(void *a1)
{
  v1 = a1;
  sub_3941DC();
}

uint64_t sub_39468C(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_7634E0();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong layer];
    CATransform3DMakeScale(&v13, 1.0, 1.0, 1.0);
    [v11 setTransform:&v13];

    swift_unknownObjectWeakAssign();
  }

  (*(v5 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v4);
  sub_7634A0();
  (*(v5 + 8))(v8, v4);
  return sub_3962E0();
}

void sub_394848(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_39468C(a3);
}

uint64_t sub_39489C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7634E0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "as_viewWillBecomeFullyVisible", v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong layer];
    CATransform3DMakeScale(&v11, 1.0, 1.0, 1.0);
    [v9 setTransform:&v11];

    swift_unknownObjectWeakAssign();
  }

  (*(v3 + 104))(v6, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v2);
  sub_7634A0();
  return (*(v3 + 8))(v6, v2);
}

void sub_394A44(void *a1)
{
  v1 = a1;
  sub_39489C();
}

id sub_394AB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&unk_9435D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_769ED0();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews", v8);
  if (*&v0[qword_951580])
  {

    sub_228974();
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
  v14 = sub_769EB0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_769EC0();
  sub_10A2C(v5, &unk_9435D0);
  sub_769F10();
  v17 = v16;

  result = (*(v7 + 8))(v10, v6);
  v18 = &v1[qword_951578];
  v19 = *&v1[qword_951578];
  v20 = v1[qword_951578 + 8];
  *v18 = v17;
  *(v18 + 8) = 0;
  if ((v20 & 1) != 0 || v17 != v19)
  {
    result = [v1 view];
    if (result)
    {
      v21 = result;
      [result bounds];

      sub_3A067C(&qword_951BA8, type metadata accessor for TodayDiffablePageViewController);
      return sub_763A70();
    }

LABEL_10:
    __break(1u);
  }

  return result;
}

void sub_394DC4(void *a1)
{
  v1 = a1;
  sub_394AB4();
}

void sub_394E20(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_7634E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_7634A0();
  (*(v9 + 8))(v11, v8);
}

void sub_394F68(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_7634E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_7634A0();
  (*(v11 + 8))(v13, v10);
}

void sub_3950A4(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_764930();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_BD88(&qword_945828);
  __chkstk_darwin(v87);
  v13 = &v66 - v12;
  v75 = sub_BD88(&unk_94F1F0);
  v14 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v66 - v15;
  v16 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v16 - 8);
  v96 = &v66 - v17;
  v18 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v18 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  __chkstk_darwin(v24);
  v93 = &v66 - v25;
  v26 = sub_757640();
  v89 = *(v26 - 8);
  v90 = v26;
  __chkstk_darwin(v26);
  v78 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v95 = &v66 - v29;
  v103.receiver = v4;
  v103.super_class = ObjectType;
  v88 = ObjectType;
  objc_msgSendSuper2(&v103, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v4 isViewLoaded])
  {
    v30 = [v4 collectionView];
    if (!v30)
    {
      goto LABEL_31;
    }

    v31 = v30;
    aBlock = 0x3FF0000000000000;
    v98 = 0;
    v99 = 0;
    v100 = 0x3FF0000000000000;
    v101 = 0;
    v102 = 0;
    [v30 setTransform:&aBlock];

    v32 = [v4 collectionView];
    if (v32)
    {
      v72 = v20;
      v33 = v32;
      v34 = [v32 indexPathsForSelectedItems];

      if (v34)
      {
        v86 = v4;
        v67 = a1;
        v35 = v90;
        v36 = sub_769460();

        v85 = *(v36 + 16);
        if (!v85)
        {
          v77 = _swiftEmptyArrayStorage;
LABEL_26:

          if (*(v77 + 2))
          {
            v62 = v77;
            v63 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v64 = swift_allocObject();
            *(v64 + 16) = v63;
            *(v64 + 24) = v62;
            v101 = sub_3A0674;
            v102 = v64;
            aBlock = _NSConcreteStackBlock;
            v98 = 1107296256;
            v99 = sub_6C6800;
            v100 = &unk_88F168;
            v65 = _Block_copy(&aBlock);

            [v67 animateAlongsideTransition:0 completion:v65];
            _Block_release(v65);
          }

          else
          {
          }

          return;
        }

        v37 = 0;
        v83 = v89 + 16;
        v71 = (v14 + 8);
        v82 = (v10 + 56);
        v81 = enum case for Shelf.ContentType.todayCard(_:);
        v80 = (v10 + 104);
        v68 = (v10 + 32);
        v70 = (v10 + 8);
        v73 = (v89 + 8);
        v76 = (v89 + 32);
        v77 = _swiftEmptyArrayStorage;
        v38 = v96;
        v94 = v23;
        v84 = v36;
        v79 = (v10 + 48);
        while (1)
        {
          if (v37 >= *(v36 + 16))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            return;
          }

          v39 = v9;
          v40 = v13;
          v41 = v39;
          v42 = (*(v89 + 80) + 32) & ~*(v89 + 80);
          v91 = *(v89 + 72);
          v92 = v42;
          (*(v89 + 16))(v95, v36 + v42 + v91 * v37, v35);
          sub_3A067C(&qword_951BA8, type metadata accessor for TodayDiffablePageViewController);
          sub_763A00();
          v43 = sub_75C840();
          v44 = *(v43 - 8);
          if ((*(v44 + 48))(v38, 1, v43) == 1)
          {
            sub_10A2C(v38, &unk_93F620);
            v45 = 1;
            v46 = v93;
          }

          else
          {
            swift_getKeyPath();
            v47 = v74;
            sub_75C7B0();

            (*(v44 + 8))(v96, v43);
            swift_getKeyPath();
            v46 = v93;
            v48 = v75;
            sub_768750();

            (*v71)(v47, v48);
            v45 = 0;
          }

          v49 = *v82;
          v50 = v41;
          (*v82)(v46, v45, 1, v41);
          (*v80)(v23, v81, v41);
          v49(v23, 0, 1, v41);
          v51 = *(v87 + 48);
          v13 = v40;
          sub_1ED18(v46, v40, &qword_951BE0);
          sub_1ED18(v23, v40 + v51, &qword_951BE0);
          v52 = *v79;
          if ((*v79)(v40, 1, v50) == 1)
          {
            break;
          }

          v53 = v72;
          sub_1ED18(v13, v72, &qword_951BE0);
          if (v52(&v13[v51], 1, v50) == 1)
          {
            sub_10A2C(v94, &qword_951BE0);
            sub_10A2C(v46, &qword_951BE0);
            (*v70)(v53, v50);
            v9 = v50;
LABEL_8:
            sub_10A2C(v13, &qword_945828);
            v35 = v90;
            v38 = v96;
            goto LABEL_9;
          }

          v54 = v69;
          (*v68)(v69, &v13[v51], v50);
          sub_3A067C(&qword_944DC0, &type metadata accessor for Shelf.ContentType);
          v55 = sub_7691C0();
          v56 = *v70;
          (*v70)(v54, v50);
          sub_10A2C(v94, &qword_951BE0);
          sub_10A2C(v93, &qword_951BE0);
          v56(v53, v50);
          sub_10A2C(v13, &qword_951BE0);
          v35 = v90;
          v38 = v96;
          v9 = v50;
          if (v55)
          {
            goto LABEL_20;
          }

LABEL_9:
          (*v73)(v95, v35);
          v23 = v94;
LABEL_10:
          ++v37;
          v36 = v84;
          if (v85 == v37)
          {
            goto LABEL_26;
          }
        }

        sub_10A2C(v23, &qword_951BE0);
        sub_10A2C(v46, &qword_951BE0);
        v9 = v50;
        if (v52(&v13[v51], 1, v50) == 1)
        {
          sub_10A2C(v13, &qword_951BE0);
          v35 = v90;
          v38 = v96;
LABEL_20:
          v57 = *v76;
          (*v76)(v78, v95, v35);
          v58 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v58;
          v23 = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_143E64(0, *(v58 + 16) + 1, 1);
            v58 = aBlock;
          }

          v61 = *(v58 + 16);
          v60 = *(v58 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_143E64(v60 > 1, v61 + 1, 1);
            v58 = aBlock;
          }

          *(v58 + 16) = v61 + 1;
          v77 = v58;
          v57((v58 + v92 + v61 * v91), v78, v35);
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }
  }
}

void sub_395C38(void *a1, uint64_t a2, uint64_t a3)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong collectionView];
      if (v6)
      {
        v7 = v6;
        v8 = *(a3 + 16);
        if (v8)
        {
          v9 = *(sub_757640() - 8);
          v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
          v11 = *(v9 + 72);
          do
          {
            isa = sub_757550().super.isa;
            [v7 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

            v13 = sub_757550().super.isa;
            v14 = [v7 cellForItemAtIndexPath:v13];

            if (v14)
            {
              [v14 setHidden:1];
            }

            v10 += v11;
            --v8;
          }

          while (v8);
        }
      }

      else
      {
        v7 = v5;
      }
    }
  }
}

void sub_395DC8(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_3950A4(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_395E48(void *a1)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v1 = v8.receiver;
  objc_msgSendSuper2(&v8, "viewSafeAreaInsetsDidChange");
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 safeAreaInsets];
      v7 = v6;

      [v3 verticalScrollIndicatorInsets];
      [v3 setVerticalScrollIndicatorInsets:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_395F2C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = ASKDeviceTypeGetCurrent();
  v11 = sub_769240();
  v13 = v12;
  if (v11 == sub_769240() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_76A950();

    if ((v16 & 1) == 0)
    {
      v17 = UICollectionView;
      goto LABEL_9;
    }
  }

  v17 = type metadata accessor for TodayDiffablePageViewController.ResizableCollectionView();
LABEL_9:
  v18 = objc_allocWithZone(v17);

  return [v18 initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];
}

uint64_t sub_396048()
{
  v1 = v0;
  v2 = sub_7634E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7587B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v1 + v10, v14, &qword_93FED0);
  if (v15)
  {
    sub_134D8(v14, v13);
    sub_10A2C(v14, &qword_93FED0);
    sub_B170(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v6);
    sub_7587C0();
    (*(v7 + 8))(v9, v6);
    sub_BEB8(v13);
  }

  else
  {
    sub_10A2C(v14, &qword_93FED0);
  }

  sub_75F210();
  sub_3962E0();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appDidForeground(_:), v2);
  sub_7634A0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_3962E0()
{
  v1 = sub_768380();
  v70 = *(v1 - 8);
  v71 = v1;
  __chkstk_darwin(v1);
  v68 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_7683C0();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_957130);
  __chkstk_darwin(v4 - 8);
  v76 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_7572A0();
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v74 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v58 - v12;
  v13 = sub_BD88(&qword_951B88);
  __chkstk_darwin(v13 - 8);
  v77 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  v18 = sub_757530();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v72 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = qword_951560;
  swift_beginAccess();
  v75 = v24;
  v25 = &v0[v24];
  v26 = v19;
  sub_1ED18(v25, v17, &qword_951B88);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v27 = v0;
    v28 = v78;
    v29 = v9;
    sub_10A2C(v17, &qword_951B88);
LABEL_5:
    if (qword_93DEF8 != -1)
    {
      swift_once();
    }

    v34 = sub_768FF0();
    sub_BE38(v34, qword_9A0418);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    v35 = v76;
    sub_757290();
    (*(v28 + 56))(v35, 0, 1, v29);
    v36 = qword_951558;
    swift_beginAccess();
    sub_B33C8(v35, v27 + v36, &unk_957130);
    swift_endAccess();
    v37 = v77;
    sub_757520();
LABEL_8:
    (*(v26 + 56))(v37, 0, 1, v18);
    v38 = v75;
    swift_beginAccess();
    sub_B33C8(v37, v27 + v38, &qword_951B88);
    return swift_endAccess();
  }

  v65 = *(v19 + 32);
  v65(v23, v17, v18);
  v30 = qword_951558;
  swift_beginAccess();
  sub_1ED18(&v0[v30], v8, &unk_957130);
  v28 = v78;
  v31 = (*(v78 + 48))(v8, 1, v9);
  v32 = v9;
  v33 = v23;
  v27 = v0;
  if (v31 == 1)
  {
    v29 = v9;
    (*(v26 + 8))(v33, v18);
    sub_10A2C(v8, &unk_957130);
    goto LABEL_5;
  }

  v63 = v30;
  v40 = *(v28 + 32);
  v41 = v73;
  v64 = v32;
  v62 = v28 + 32;
  v61 = v40;
  (v40)(v73, v8);
  sub_B170(&v0[qword_951550], *&v0[qword_951550 + 24]);
  if (sub_75ACE0())
  {
    sub_757520();
    sub_757290();
    sub_3A067C(&qword_951BD0, &type metadata accessor for TimeZone);
    v42 = sub_7691C0();
    v60 = v26 + 32;
    if ((v42 & 1) != 0 && !sub_39FC58(v41, v74))
    {
      if (qword_93DEF8 != -1)
      {
        swift_once();
      }

      v54 = sub_768FF0();
      sub_BE38(v54, qword_9A0418);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768540();
      sub_768E80();
    }

    else
    {
      if (qword_93DEF8 != -1)
      {
        swift_once();
      }

      v43 = sub_768FF0();
      sub_BE38(v43, qword_9A0418);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768540();
      sub_768E80();

      v44 = [v0 collectionView];
      if (v44)
      {
        v45 = v44;
        [v44 _scrollToTopIfPossible:0];
      }

      sub_BE70(0, &qword_940340);
      v59 = sub_769970();
      v46 = swift_allocObject();
      *(v46 + 16) = v27;
      aBlock[4] = sub_3A0590;
      aBlock[5] = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_88F0C8;
      v47 = _Block_copy(aBlock);
      v48 = v27;

      v49 = v66;
      sub_7683A0();
      aBlock[0] = _swiftEmptyArrayStorage;
      v58 = sub_3A067C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_BD88(&qword_940350);
      sub_16194(&qword_9406F0, &qword_940350);
      v50 = v68;
      v51 = v71;
      sub_76A5A0();
      v52 = v59;
      sub_769980();
      _Block_release(v47);

      (*(v70 + 8))(v50, v51);
      (*(v67 + 8))(v49, v69);
      v28 = v78;
    }

    v55 = v64;
    (*(v28 + 8))(v41, v64);
    (*(v26 + 8))(v33, v18);
    v56 = v76;
    v61(v76, v74, v55);
    (*(v28 + 56))(v56, 0, 1, v55);
    v57 = v63;
    swift_beginAccess();
    sub_B33C8(v56, v27 + v57, &unk_957130);
    swift_endAccess();
    v37 = v77;
    v65(v77, v72, v18);
    goto LABEL_8;
  }

  if (qword_93DEF8 != -1)
  {
    swift_once();
  }

  v53 = sub_768FF0();
  sub_BE38(v53, qword_9A0418);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768E80();

  (*(v28 + 8))(v41, v64);
  return (*(v26 + 8))(v33, v18);
}

void sub_397130(void *a1)
{
  v1 = a1;
  sub_396048();
}

uint64_t sub_397178()
{
  v1 = v0;
  v2 = sub_7634E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7587B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v1 + v10, v14, &qword_93FED0);
  if (v15)
  {
    sub_134D8(v14, v13);
    sub_10A2C(v14, &qword_93FED0);
    sub_B170(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v6);
    sub_7587C0();
    (*(v7 + 8))(v9, v6);
    sub_BEB8(v13);
  }

  else
  {
    sub_10A2C(v14, &qword_93FED0);
  }

  sub_75F200();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appWillBackground(_:), v2);
  sub_7634A0();
  return (*(v3 + 8))(v5, v2);
}

void sub_397408(void *a1)
{
  v1 = a1;
  sub_397178();
}

uint64_t sub_397450@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_3A067C(&qword_951BA8, type metadata accessor for TodayDiffablePageViewController);
  v2 = sub_763A60();
  v20[3] = swift_getObjectType();
  v20[0] = v2;
  v3 = sub_763A50();
  v21[3] = swift_getObjectType();
  v21[0] = v3;
  sub_132B4(v20, v18);
  sub_13310(v18, v17);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && v16)
  {
    v15 = v16;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_7ACBC((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    *&v4[2 * v6 + 4] = v15;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_132B4(v21, v18);
  sub_13310(v18, v17);
  sub_BD88(&qword_93F1C8);
  if (swift_dynamicCast() && v16)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_7ACBC(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v9 = v16;
    if (v8 >= v7 >> 1)
    {
      v14 = sub_7ACBC((v7 > 1), v8 + 1, 1, v4);
      v9 = v16;
      v4 = v14;
    }

    *(v4 + 2) = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  type metadata accessor for TodayCardGridTracker();
  sub_768880();
  v10 = v19;
  sub_763A80();
  v11 = type metadata accessor for TodayPageLayoutSectionProvider();
  *(swift_allocObject() + qword_94DD50) = v10;
  sub_134D8(v18, v17);
  sub_134D8(v17, &v16);

  v12 = sub_762B60();
  sub_BEB8(v17);
  result = sub_BEB8(v18);
  a1[3] = v11;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v12;
  return result;
}

unint64_t sub_3977A4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for TodayPageShelfLayoutSpacingProvider;
  result = sub_390254();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_3977D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  type metadata accessor for TodayPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_3A067C(&qword_951BC0, &type metadata accessor for TodayDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_3A067C(&qword_951BC8, type metadata accessor for TodayPageShelfSupplementaryProvider);

  return v2;
}

id sub_3978D8()
{
  v1 = v0;
  swift_getObjectType();
  sub_5FD3B0();
  sub_7637E0();
  if (swift_dynamicCastClass())
  {
    v2 = sub_7637B0();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_7637D0();
  }

  sub_BD88(&qword_93F1E8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_77E280;
  sub_BD88(&qword_951BB0);
  swift_allocObject();
  swift_retain_n();

  v4 = sub_763BB0();
  v5 = sub_16194(&qword_951BB8, &qword_951BB0);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_3A067C(&qword_951BA8, type metadata accessor for TodayDiffablePageViewController);
  sub_763A80();
  sub_761840();

  result = [v1 collectionView];
  if (result)
  {
    sub_764320();
    swift_allocObject();
    *(v3 + 48) = sub_764310();
    *(v3 + 56) = &protocol witness table for ImpressionsCollectionElementsObserver;
    v7._rawValue = v3;
    sub_7637A0(v7);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_397B70(uint64_t a1)
{
  v2 = sub_BD88(&qword_951BA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_600D00(a1);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v3 + 96))(v5, v2);
    sub_3A0238();
  }

  else if (v6 == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    sub_763480();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

double *sub_397CE8()
{
  v1 = v0;
  v2 = sub_7656A0();
  v80 = *(v2 - 8);
  __chkstk_darwin(v2);
  v79 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v74 - v5;
  v7 = sub_7656C0();
  v78 = *(v7 - 8);
  __chkstk_darwin(v7);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_9435D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v74 - v10;
  v12 = sub_769ED0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TitleHeaderView.Style(0);
  *&v17 = __chkstk_darwin(v16 - 8).n128_u64[0];
  v82 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v0 traitCollection];
  v20 = sub_7699E0();

  if (v20)
  {
    v77 = *&v1[qword_99E1A8];
    sub_761EF0();
    v21 = sub_76A450();

    if (v21)
    {
      v22 = qword_951548;
      v23 = *&v1[qword_951548];
      v24 = 0.0;
      v76 = v13;
      if (v23)
      {
        [v23 sizeToFit];
        v25 = *&v1[v22];
        v26 = 0.0;
        if (v25)
        {
          [v25 frame];
          v24 = v27;
          v26 = v28;
        }
      }

      else
      {
        v26 = 0.0;
      }

      result = [v1 view];
      if (result)
      {
        v30 = result;
        v74 = v24;
        v75 = v7;
        v31 = [result traitCollection];

        sub_3663E4(v31, v82);
        result = [v1 view];
        if (result)
        {
          v32 = result;
          v33 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
          v34 = sub_769EB0();
          v35 = *(v34 - 8);
          (*(v35 + 104))(v11, v33, v34);
          (*(v35 + 56))(v11, 0, 1, v34);
          sub_769EC0();
          sub_10A2C(v11, &unk_9435D0);
          sub_769E90();
          v37 = v36;

          (*(v76 + 8))(v15, v12);
          v38 = v80;
          (*(v80 + 104))(v6, enum case for PageGrid.Direction.vertical(_:), v2);
          (*(v38 + 16))(v79, v6, v2);
          sub_40DC7C(0.0);
          v73 = v37;
          v39 = v81;
          sub_765670();
          (*(v38 + 8))(v6, v2);
          if ((sub_71DFF0() & 1) == 0)
          {
            sub_E3BCC();
          }

          sub_765620();
          sub_765620();
          v40 = [v1 traitCollection];
          v41 = sub_7699D0();

          if (v41)
          {
            v42 = sub_761F40();
          }

          else
          {
            v42 = sub_761EF0();
          }

          v80 = v42;
          v44 = v43;
          v45 = [v1 traitCollection];
          v46 = sub_7699D0();

          if (v46)
          {
            v47 = sub_761F10();
            v49 = v48;
          }

          else
          {
            v47 = 0;
            v49 = 0;
          }

          v50 = [v1 traitCollection];
          v51 = sub_7699D0();

          if (v51)
          {
            v52 = sub_761F20();
            v54 = v53;
          }

          else
          {
            v52 = 0;
            v54 = 0;
          }

          sub_765580();
          v56 = v55;
          sub_7655A0();
          v58 = v57;
          result = [v1 view];
          if (result)
          {
            v59 = result;
            LOBYTE(v73) = 0;
            v60 = v82;
            sub_39BC90(0, 0, 0, v80, v44, 0, v47, v49, v56, v58, v74, v26, v52, v54, &dword_0 + 2, v82, v73, v59);
            v62 = v61;

            v63 = objc_opt_self();
            v64 = [v63 fractionalWidthDimension:1.0];
            v65 = [v63 absoluteDimension:v62];
            v66 = [objc_opt_self() sizeWithWidthDimension:v64 heightDimension:v65];

            v67 = v66;
            v68 = sub_769210();
            v69 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v67 elementKind:v68 alignment:1];

            v70 = v69;
            sub_765650();
            [v70 setContentInsets:?];

            v71 = sub_39ED40();
            sub_BD88(&unk_93F5C0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_77D9F0;
            *(inited + 32) = v70;
            v83 = v71;
            sub_10A48C(inited);

            (*(v78 + 8))(v39, v75);
            sub_3A04F8(v60, type metadata accessor for TitleHeaderView.Style);
            return v83;
          }

          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }
  }

  return sub_39ED40();
}

double sub_398608@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  ObjectType = swift_getObjectType();
  if (a1 == 0xD000000000000039 && 0x80000000007D87C0 == a2 || (sub_76A950() & 1) != 0)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = ObjectType;
    a3[3] = sub_BD88(&qword_946B58);
    a3[4] = sub_16194(&qword_946B60, &qword_946B58);
    sub_B1B4(a3);
    type metadata accessor for TitleHeaderView(0);

    sub_763760();
  }

  else
  {

    return sub_392B80(a1, a2, a3);
  }

  return result;
}

void sub_3987B8(void *a1)
{
  v2 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v46[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if ((sub_71DFF0() & 1) == 0)
    {
      v10 = v9;
      sub_E3BCC();
    }

    sub_7697D0();
    [a1 setLayoutMargins:?];
    *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_allowsAccessibilityLayouts) = 0;
    [a1 setNeedsLayout];
    v11 = *&v9[qword_951548];
    v12 = v11;
    sub_191F24(v11);
    v13 = (a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines);
    *v13 = sub_39ED38;
    v13[1] = 0;

    v14 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel);
    [v14 setNumberOfLines:2];
    v15 = (a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorInset);
    v16 = *&UIEdgeInsetsZero.bottom;
    *v15 = *&UIEdgeInsetsZero.top;
    v15[1] = v16;
    [a1 setNeedsLayout];
    v17 = v9;
    v18 = [v17 traitCollection];

    sub_3663E4(v18, v7);

    sub_3A0490(v7, v4, type metadata accessor for TitleHeaderView.Style);
    (*&stru_1A8.segname[(swift_isaMask & *a1) + 16])(v4);
    v19 = [v17 traitCollection];

    v20 = sub_7699D0();
    if (v20)
    {
      v21 = v17;

      sub_761F40();
      v23 = v22;

      if (v23)
      {
        v24 = sub_769210();
      }

      else
      {
        v24 = 0;
      }

      [v14 setText:v24];

      v28 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel);
      if (v28)
      {

        v29 = v28;
        sub_761F10();
        v31 = v30;

        if (v31)
        {
          v32 = sub_769210();
        }

        else
        {
          v32 = 0;
        }

        [v29 setText:v32];
      }

      v35 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel);
      if (v35)
      {

        v36 = v35;

        sub_761F20();
        v38 = v37;

        if (v38)
        {
          v39 = sub_769210();
        }

        else
        {
          v39 = 0;
        }

        [v36 setText:v39];
      }

      else
      {
      }
    }

    else
    {

      sub_761EF0();
      v26 = v25;

      if (v26)
      {
        v27 = sub_769210();
      }

      else
      {
        v27 = 0;
      }

      [v14 setText:v27];

      v33 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel);
      if (v33)
      {
        [v33 setText:0];
      }

      v34 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel);
      if (v34)
      {
        [v34 setText:0];
      }
    }

    [v14 setAllowsDefaultTighteningForTruncation:1];
    [a1 setNeedsLayout];
    if (sub_4AD044() & 1) == 0 || (v40 = [a1 gestureRecognizers]) != 0 && (v41 = v40, sub_BE70(0, &unk_94A280), v42 = sub_769460(), v41, v43 = sub_394158(), v47 = v43, __chkstk_darwin(v43), *&v46[-16] = &v47, v44 = sub_4F26B4(sub_3A0414, &v46[-32], v42), v43, , (v44))
    {
      sub_3A04F8(v7, type metadata accessor for TitleHeaderView.Style);
    }

    else
    {
      v45 = sub_394158();
      [a1 addGestureRecognizer:v45];

      sub_3A04F8(v7, type metadata accessor for TitleHeaderView.Style);
    }
  }
}

uint64_t sub_398DF0(uint64_t a1)
{
  v37 = sub_BD88(&qword_940A40);
  __chkstk_darwin(v37);
  v3 = &v32 - v2;
  v4 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7570A0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v35 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  sub_3A0490(a1, v14, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 20)
  {
    sub_3A04F8(v14, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v34 = *(v16 + 32);
  v34(v20, v14, v15);
  sub_75F250();
  (*(v16 + 16))(v8, v20, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  v21 = *(v37 + 48);
  sub_1ED18(v11, v3, &unk_93FD30);
  v37 = v21;
  sub_1ED18(v8, &v3[v21], &unk_93FD30);
  v22 = *(v16 + 48);
  if (v22(v3, 1, v15) != 1)
  {
    v33 = v20;
    v24 = v36;
    sub_1ED18(v3, v36, &unk_93FD30);
    v25 = v37;
    if (v22(&v3[v37], 1, v15) != 1)
    {
      v28 = &v3[v25];
      v29 = v35;
      v34(v35, v28, v15);
      sub_3A067C(&qword_947410, &type metadata accessor for URL);
      v30 = v24;
      v23 = sub_7691C0();
      v31 = *(v16 + 8);
      v31(v29, v15);
      sub_10A2C(v8, &unk_93FD30);
      sub_10A2C(v11, &unk_93FD30);
      v31(v33, v15);
      v31(v30, v15);
      sub_10A2C(v3, &unk_93FD30);
      return v23 & 1;
    }

    sub_10A2C(v8, &unk_93FD30);
    sub_10A2C(v11, &unk_93FD30);
    v26 = *(v16 + 8);
    v26(v33, v15);
    v26(v24, v15);
    goto LABEL_8;
  }

  sub_10A2C(v8, &unk_93FD30);
  sub_10A2C(v11, &unk_93FD30);
  (*(v16 + 8))(v20, v15);
  if (v22(&v3[v37], 1, v15) != 1)
  {
LABEL_8:
    sub_10A2C(v3, &qword_940A40);
    goto LABEL_9;
  }

  sub_10A2C(v3, &unk_93FD30);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_39938C(void *a1)
{
  v2 = sub_768380();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7683C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_7683E0();
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  result = sub_761F00();
  if (v16)
  {
    v30 = v6;
    if ([a1 state] == &dword_0 + 1)
    {
      v17 = [objc_opt_self() generalPasteboard];
      v18 = sub_769210();

      [v17 setString:v18];

      v19 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
      [v19 prepare];
      [v19 impactOccurred];
      sub_BE70(0, &qword_940340);
      v28 = sub_769970();
      sub_7683D0();
      sub_768450();
      v27 = v2;
      v29 = *(v9 + 8);
      v29(v11, v32);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      aBlock[4] = sub_3A05E0;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_88F118;
      v21 = _Block_copy(aBlock);
      v26 = v19;

      sub_7683A0();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_3A067C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
      v22 = v31;
      v25 = v5;
      sub_BD88(&qword_940350);
      sub_16194(&qword_9406F0, &qword_940350);
      v23 = v27;
      sub_76A5A0();
      v24 = v28;
      sub_769930();
      _Block_release(v21);

      (*(v22 + 8))(v4, v23);
      (*(v30 + 8))(v8, v25);
      return (v29)(v14, v32);
    }

    else
    {
    }
  }

  return result;
}

void sub_39988C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_39938C(v4);
}

uint64_t sub_3998F4()
{

  sub_BEB8(v0 + qword_951550);
  sub_10A2C(v0 + qword_951558, &unk_957130);
  sub_10A2C(v0 + qword_951560, &qword_951B88);
}

uint64_t sub_3999C4(uint64_t a1)
{

  sub_BEB8(a1 + qword_951550);
  sub_10A2C(a1 + qword_951558, &unk_957130);
  sub_10A2C(a1 + qword_951560, &qword_951B88);
}

uint64_t type metadata accessor for TodayDiffablePageViewController()
{
  result = qword_9515B0;
  if (!qword_9515B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_399AEC()
{
  sub_399C20(319, &qword_9515C0, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_399C20(319, &unk_9515C8, &type metadata accessor for TimeZone);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_399C20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_399CC8(void *a1)
{
  v2 = sub_75B660();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_BD88(&unk_94F1F0);
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_75DAB0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_10A2C(v10, &unk_957F70);
  }

  v16 = Strong;
  v25 = v2;
  v26 = v4;
  v24 = a1;
  sub_BD88(&qword_94AD38);
  sub_16194(&qword_94AD40, &qword_94AD38);
  sub_763A20();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10A2C(v10, &unk_957F70);
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_75DAA0();
  swift_getKeyPath();
  v17 = v26;
  sub_768750();

  (*(v27 + 8))(v7, v5);
  v18 = v28;
  v19 = v25;
  if ((*(v28 + 88))(v17, v25) == enum case for ShelfBackground.color(_:))
  {
    (*(v18 + 96))(v17, v19);
    v20 = *v17;
    v21 = *(sub_BD88(&unk_959640) + 48);
    v22 = sub_75EDA0();
    (*(*(v22 - 8) + 8))(v17 + v21, v22);
    [v24 setBackgroundColor:v20];

    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    return (*(v18 + 8))(v17, v19);
  }
}

void sub_39A13C(void *a1)
{
  v2 = sub_75B660();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_BD88(&unk_94F1F0);
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_75DAB0();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_93FF08);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v33 = a1;
    v19 = qword_9593C8;
    swift_beginAccess();
    v20 = *&v18[v19];
    if (!v20)
    {

      return;
    }

    v21 = v20;

    sub_767A90();
    v22 = sub_7678E0();
    (*(v14 + 8))(v16, v13);
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      if (__OFSUB__(v22, 1))
      {
        __break(1u);
        return;
      }

      v24 = v23;
      sub_BD88(&qword_94AD38);
      sub_16194(&qword_94AD40, &qword_94AD38);
      sub_763A20();

      v25 = v39;
      if ((*(v39 + 48))(v9, 1, v10) != 1)
      {
        (*(v25 + 32))(v12, v9, v10);
        sub_75DAA0();
        swift_getKeyPath();
        v26 = v38;
        v27 = v35;
        sub_768750();

        (*(v34 + 8))(v6, v27);
        v29 = v36;
        v28 = v37;
        if ((*(v36 + 88))(v26, v37) == enum case for ShelfBackground.color(_:))
        {
          (*(v29 + 96))(v26, v28);
          v30 = *v26;
          v31 = *(sub_BD88(&unk_959640) + 48);
          v32 = sub_75EDA0();
          (*(*(v32 - 8) + 8))(v26 + v31, v32);
          [v33 setBackgroundColor:v30];

          (*(v25 + 8))(v12, v10);
        }

        else
        {
          (*(v25 + 8))(v12, v10);
          (*(v29 + 8))(v26, v28);
        }

        return;
      }
    }

    else
    {
      (*(v39 + 56))(v9, 1, 1, v10);
    }

    sub_10A2C(v9, &unk_957F70);
  }
}

void sub_39A6D4(void **a1)
{
  v2 = *(sub_757640() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2050D0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_39A77C(v5);
  *a1 = v3;
}

void sub_39A77C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_76A900(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_757640();
        v6 = sub_7694E0();
        *(v6 + 2) = v5;
      }

      v7 = *(sub_757640() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_39AB6C(v8, v9, a1, v4);
      v6[2] = 0.0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_39A8A8(0, v2, 1, a1);
  }
}

void sub_39A8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_757640();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_3A067C(&qword_951B80, &type metadata accessor for IndexPath);
      v26 = sub_7691B0();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_39AB6C(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_757640();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_204F10(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_39B594(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_204F10(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_204E84(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_3A067C(&qword_951B80, &type metadata accessor for IndexPath);
      LODWORD(v133) = sub_7691B0();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_7691B0() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_7BFD4(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_7BFD4((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_39B594(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_204F10(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_204E84(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_3A067C(&qword_951B80, &type metadata accessor for IndexPath);
    v109 = sub_7691B0();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_39B594(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_757640();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_3A067C(&qword_951B80, &type metadata accessor for IndexPath);
          LOBYTE(v34) = sub_7691B0();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_3A067C(&qword_951B80, &type metadata accessor for IndexPath);
        LOBYTE(v21) = sub_7691B0();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_39BB88(&v54, &v53, &v52);
}

uint64_t sub_39BB88(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_757640();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

id sub_39BC90(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int *a8, double a9, double a10, double a11, double a12, uint64_t a13, char *a14, char *a15, uint64_t a16, uint64_t a17, void *a18)
{
  v338 = a8;
  v292 = a7;
  v332 = a6;
  v333 = a5;
  v327 = a4;
  v328 = a2;
  v301 = a3;
  v329 = a1;
  v324 = a9;
  v325 = a10;
  v344 = a16;
  v20 = sub_766690();
  v299 = *(v20 - 8);
  v300 = v20;
  __chkstk_darwin(v20);
  v298 = v291 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = sub_7664A0();
  v295 = *(v297 - 8);
  __chkstk_darwin(v297);
  v294 = v291 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_766CA0();
  v354 = *(v339 - 8);
  __chkstk_darwin(v339);
  v296 = v291 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = sub_75CFF0();
  v319 = *(v321 - 8);
  __chkstk_darwin(v321);
  v320 = v291 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_75CFE0();
  v316 = *(v25 - 8);
  v317 = v25;
  __chkstk_darwin(v25);
  v318 = v291 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_75CFD0();
  v313 = *(v27 - 8);
  v314 = v27;
  __chkstk_darwin(v27);
  v315 = v291 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_75D020();
  v326 = *(v323 - 8);
  __chkstk_darwin(v323);
  v322 = v291 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_75D010();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v306 = v291 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v351 = v291 - v34;
  __chkstk_darwin(v35);
  v350 = v291 - v36;
  __chkstk_darwin(v37);
  v342 = v291 - v38;
  v39 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v39 - 8);
  v304 = v291 - v40;
  v41 = sub_762D10();
  v335 = *(v41 - 8);
  v336 = v41;
  __chkstk_darwin(v41);
  v334 = v291 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_756CB0();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = v291 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v303 = *(v47 - 1);
  __chkstk_darwin(v47);
  v343 = v291 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v307 = v291 - v50;
  __chkstk_darwin(v51);
  v53 = v291 - v52;
  v54 = sub_BD88(&qword_947FC0);
  v55 = *(v54 - 8);
  v311 = v54;
  v312 = v55;
  __chkstk_darwin(v54);
  v293 = v291 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v347 = v291 - v58;
  __chkstk_darwin(v59);
  v346 = v291 - v60;
  __chkstk_darwin(v61);
  v305 = v291 - v62;
  __chkstk_darwin(v63);
  v349 = v291 - v64;
  __chkstk_darwin(v65);
  v348 = v291 - v66;
  __chkstk_darwin(v67);
  v341 = v291 - v68;
  __chkstk_darwin(v69);
  v302 = v291 - v70;
  *&v72 = __chkstk_darwin(v71).n128_u64[0];
  v74 = v291 - v73;
  v331 = a18;
  v75 = [a18 traitCollection];
  v352 = v30;
  v353 = v31;
  v340 = v74;
  v345 = v47;
  v337 = v75;
  v330 = v43;
  v309 = v46;
  v310 = v44;
  if (!v328)
  {
    v88 = *(v31 + 56);
    v88(v74, 1, 1, v30);
    v89 = v339;
    goto LABEL_23;
  }

  v76 = v328;
  v77 = v344;
  sub_3A0490(v344, v53, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_BE70(0, &qword_93F900);
  v75 = sub_769E10();
  *&v390 = v329;
  *(&v390 + 1) = v76;

  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  v79 = v78;
  (*(v44 + 8))(v46, v43);

  v80 = 0;
  if ((v79 & 1) == 0)
  {
    [v75 lineHeight];
    v82 = ceil(v81 * 1.3);
    if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v82 > -9.22337204e18)
    {
      if (v82 >= 9.22337204e18)
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v80 = v82;
      goto LABEL_7;
    }

    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

LABEL_7:
  v291[1] = v80;
  v308 = v53;
  if (!v301)
  {
    goto LABEL_15;
  }

  v291[0] = v75;

  sub_7651B0();
  if (v83 && (v84 = [objc_opt_self() configurationWithFont:v291[0]], v85 = sub_769210(), , v86 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v85, v84), v85, v84, v47 = v345, v86))
  {
    [v86 size];
    sub_7670D0();
    swift_allocObject();
    v87 = sub_7670B0();
  }

  else
  {
    v90 = v47[6];
    v91 = sub_7666D0();
    v92 = v294;
    (*(*(v91 - 8) + 16))(v294, v77 + v90, v91);
    v93 = v295;
    v94 = v297;
    (*(v295 + 104))(v92, enum case for FontSource.useCase(_:), v297);
    *(&v391 + 1) = v94;
    v392 = &protocol witness table for FontSource;
    v95 = sub_B1B4(&v390);
    (*(v93 + 16))(v95, v92, v94);

    v96 = v296;
    sub_766CB0();
    (*(v93 + 8))(v92, v94);
    sub_766C90();
    sub_765260();
    v97 = v298;
    sub_7666A0();
    sub_766610();

    (*(v299 + 8))(v97, v300);
    (*(v354 + 8))(v96, v339);
    sub_7670D0();
    swift_allocObject();
    v87 = sub_7670B0();
  }

  v75 = v291[0];
  if (v87)
  {
    *(&v391 + 1) = sub_7670D0();
    v392 = &protocol witness table for LayoutViewPlaceholder;
    v328 = v87;
    *&v390 = v87;
  }

  else
  {
LABEL_15:
    v328 = 0;
    v392 = 0;
    v390 = 0u;
    v391 = 0u;
  }

  v389 = 0;
  v387 = 0u;
  v388 = 0u;
  v386 = 0;
  v384 = 0u;
  v385 = 0u;
  v98 = sub_7653B0();
  v382 = v98;
  v383 = sub_3A067C(&qword_93F9B0, &type metadata accessor for Feature);
  v99 = sub_B1B4(v381);
  (*(*(v98 - 8) + 104))(v99, enum case for Feature.measurement_with_labelplaceholder(_:), v98);
  v100 = v75;

  v101 = v100;
  sub_765C30();
  sub_BEB8(v381);
  v102 = v334;
  sub_762D00();
  sub_762CE0();
  (*(v335 + 8))(v102, v336);
  sub_1ED18(&v390, v380, &unk_943B10);
  v103 = v382;
  v104 = v383;
  v105 = sub_B170(v381, v382);
  v378 = v103;
  v379 = *(v104 + 8);
  v106 = sub_B1B4(v377);
  (*(*(v103 - 8) + 16))(v106, v105, v103);
  v107 = v345;
  v108 = v308;
  v109 = *&v308[v345[8]];
  v375 = &type metadata for Float;
  v376 = &protocol witness table for Float;
  v374 = v109;
  v110 = v345[9];
  v111 = v339;
  v372 = v339;
  v373 = &protocol witness table for StaticDimension;
  v112 = sub_B1B4(v371);
  v113 = *(v354 + 16);
  v113(v112, &v108[v110], v111);
  v114 = v107[10];
  v369 = v111;
  v370 = &protocol witness table for StaticDimension;
  v115 = sub_B1B4(v368);
  v113(v115, &v108[v114], v111);
  sub_1ED18(&v387, &v362, &qword_9417D0);
  v116 = *(&v363 + 1);
  if (*(&v363 + 1))
  {
    v117 = v364;
    v118 = sub_B170(&v362, *(&v363 + 1));
    *(&v366 + 1) = v116;
    v367 = *(v117 + 8);
    v119 = sub_B1B4(&v365);
    (*(*(v116 - 8) + 16))(v119, v118, v116);
    sub_BEB8(&v362);
  }

  else
  {
    sub_10A2C(&v362, &qword_9417D0);
    v365 = 0u;
    v366 = 0u;
    v367 = 0;
  }

  v120 = v302;
  sub_1ED18(&v384, v359, &qword_9417D0);
  v121 = v360;
  if (v360)
  {
    v122 = v361;
    v123 = sub_B170(v359, v360);
    *(&v363 + 1) = v121;
    v364 = *(v122 + 8);
    v124 = sub_B1B4(&v362);
    (*(*(v121 - 8) + 16))(v124, v123, v121);
    sub_BEB8(v359);
  }

  else
  {
    sub_10A2C(v359, &qword_9417D0);
    v362 = 0u;
    v363 = 0u;
    v364 = 0;
  }

  v125 = v345;
  v126 = v308;
  sub_134D8(&v308[v345[12]], v359);
  sub_134D8(v126 + v125[13], v358);
  v357 = &protocol witness table for Double;
  v356 = &type metadata for Double;
  v355 = 0x4020000000000000;
  sub_75D000();

  sub_10A2C(&v384, &qword_9417D0);
  v47 = v125;
  sub_10A2C(&v387, &qword_9417D0);
  sub_3A04F8(v126, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_BEB8(v381);

  sub_10A2C(&v390, &unk_943B10);
  v30 = v352;
  v88 = *(v353 + 56);
  v88(v120, 0, 1, v352);
  sub_109C4(v120, v340, &qword_947FC0);
  v75 = v337;
  v89 = v339;
LABEL_23:
  v127 = v333;
  if (!v338)
  {
LABEL_26:
    v88(v341, 1, 1, v30);
    v392 = 0;
    v390 = 0u;
    v391 = 0u;
    v387 = 0u;
    v388 = 0u;
    v389 = 0;
    goto LABEL_27;
  }

  v128 = type metadata accessor for TitleHeaderView.Style(0);
  v129 = v304;
  sub_1ED18(v344 + *(v128 + 24), v304, &qword_9439E0);
  if ((*(v303 + 48))(v129, 1, v47) == 1)
  {
    sub_10A2C(v129, &qword_9439E0);
    goto LABEL_26;
  }

  sub_15CEA0(v129, v307);
  sub_BE70(0, &qword_93F900);
  v133 = sub_769E10();
  *&v390 = v292;
  *(&v390 + 1) = v338;

  v134 = v309;
  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  v136 = v135;
  (*(v310 + 8))(v134, v330);

  v137 = 0;
  if (v136)
  {
LABEL_37:
    v141 = v133;
    if (*(v344 + *(v128 + 36)) == 2)
    {
      v308 = a14;
      v328 = a13;
      v142 = sub_7653B0();
      v303 = v137;
      v143 = v142;
      *(&v391 + 1) = v142;
      v304 = sub_3A067C(&qword_93F9B0, &type metadata accessor for Feature);
      v392 = v304;
      v144 = sub_B1B4(&v390);
      v145 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v146 = *(*(v143 - 8) + 104);
      v329 = v88;
      v146(v144, enum case for Feature.measurement_with_labelplaceholder(_:), v143);
      v147 = v141;

      v148 = v147;
      sub_765C30();
      sub_BEB8(&v390);
      v149 = v334;
      sub_762D00();
      sub_762CE0();
      v150 = v336;
      v151 = *(v335 + 8);
      v151(v149, v336);
      *(&v388 + 1) = v143;
      v389 = v304;
      v152 = sub_B1B4(&v387);
      v146(v152, v145, v143);
      v53 = v330;
      v89 = v339;

      v153 = v148;
      sub_765C30();
      sub_BEB8(&v387);
      sub_762D00();
      sub_762CE0();

      v151(v149, v150);
      v127 = v333;
      sub_3A04F8(v307, type metadata accessor for TitleHeaderView.TextConfiguration);

      (v329)(v341, 1, 1, v352);
      v47 = v345;
      v75 = v337;
LABEL_28:
      v338 = type metadata accessor for TitleHeaderView.Style(0);
      v329 = (v344 + v338[5]);
      sub_3A0490(v329, v343, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_BE70(0, &qword_93F900);
      v333 = sub_769E10();
      if (!v127)
      {
        goto LABEL_43;
      }

      v130 = v89;
      v44 = v327;
      *&v384 = v327;
      *(&v384 + 1) = v127;

      v46 = v309;
      sub_756C90();
      sub_12EC40();
      sub_76A4C0();
      v132 = v131;
      (*(v310 + 8))(v46, v53);

      if (v132)
      {
LABEL_42:
        v89 = v130;
        if (!v332)
        {
          goto LABEL_50;
        }

LABEL_43:
        v330 = a15;

        sub_7651B0();
        if (v156 && (v157 = [objc_opt_self() configurationWithFont:v333], v158 = sub_769210(), , v159 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v158, v157), v158, v47 = v345, v157, v159))
        {
          [v159 size];
          sub_7670D0();
          swift_allocObject();
          v160 = sub_7670B0();
        }

        else
        {
          v161 = v89;
          v162 = v329;
          v163 = v47[6];
          v164 = sub_7666D0();
          v165 = &v162[v163];
          v89 = v161;
          v166 = v294;
          (*(*(v164 - 8) + 16))(v294, v165, v164);
          v167 = v295;
          v168 = v297;
          (*(v295 + 104))(v166, enum case for FontSource.useCase(_:), v297);
          *(&v385 + 1) = v168;
          v386 = &protocol witness table for FontSource;
          v169 = sub_B1B4(&v384);
          (*(v167 + 16))(v169, v166, v168);

          v170 = v296;
          sub_766CB0();
          (*(v167 + 8))(v166, v168);
          sub_766C90();
          sub_765260();
          v171 = v298;
          sub_7666A0();
          sub_766610();

          (*(v299 + 8))(v171, v300);
          (*(v354 + 8))(v170, v89);
          sub_7670D0();
          swift_allocObject();
          v160 = sub_7670B0();
        }

        if (v160)
        {
          v172 = sub_7670D0();
          v386 = &protocol witness table for LayoutViewPlaceholder;
          *(&v385 + 1) = v172;
          v332 = v160;
          *&v384 = v160;
        }

        else
        {
LABEL_50:
          v332 = 0;
          v386 = 0;
          v384 = 0u;
          v385 = 0u;
        }

        v173 = sub_7653B0();
        v382 = v173;
        v383 = sub_3A067C(&qword_93F9B0, &type metadata accessor for Feature);
        v174 = sub_B1B4(v381);
        (*(*(v173 - 8) + 104))(v174, enum case for Feature.measurement_with_labelplaceholder(_:), v173);

        v175 = v333;
        sub_765C30();
        sub_BEB8(v381);
        v176 = v334;
        v333 = v175;
        sub_762D00();
        sub_762CE0();
        (*(v335 + 8))(v176, v336);
        sub_1ED18(&v384, v380, &unk_943B10);
        v177 = v382;
        v178 = v383;
        v179 = sub_B170(v381, v382);
        v378 = v177;
        v379 = *(v178 + 8);
        v180 = sub_B1B4(v377);
        (*(*(v177 - 8) + 16))(v180, v179, v177);
        v181 = v345;
        v182 = v343;
        v183 = *(v343 + v345[8]);
        v375 = &type metadata for Float;
        v376 = &protocol witness table for Float;
        v374 = v183;
        v184 = v345[9];
        v372 = v89;
        v373 = &protocol witness table for StaticDimension;
        v185 = sub_B1B4(v371);
        v186 = *(v354 + 16);
        v186(v185, v182 + v184, v89);
        v187 = v181[10];
        v369 = v89;
        v370 = &protocol witness table for StaticDimension;
        v188 = sub_B1B4(v368);
        v186(v188, v182 + v187, v89);
        sub_1ED18(&v390, &v362, &qword_9417D0);
        v189 = *(&v363 + 1);
        if (*(&v363 + 1))
        {
          v190 = v364;
          v191 = sub_B170(&v362, *(&v363 + 1));
          *(&v366 + 1) = v189;
          v367 = *(v190 + 8);
          v192 = sub_B1B4(&v365);
          (*(*(v189 - 8) + 16))(v192, v191, v189);
          sub_BEB8(&v362);
        }

        else
        {
          sub_10A2C(&v362, &qword_9417D0);
          v365 = 0u;
          v366 = 0u;
          v367 = 0;
        }

        v193 = v346;
        v194 = v344;
        sub_1ED18(&v387, v359, &qword_9417D0);
        v195 = v360;
        if (v360)
        {
          v196 = v361;
          v197 = sub_B170(v359, v360);
          *(&v363 + 1) = v195;
          v364 = *(v196 + 8);
          v198 = sub_B1B4(&v362);
          (*(*(v195 - 8) + 16))(v198, v197, v195);
          sub_BEB8(v359);
        }

        else
        {
          sub_10A2C(v359, &qword_9417D0);
          v362 = 0u;
          v363 = 0u;
          v364 = 0;
        }

        v199 = v347;
        v200 = v345;
        v201 = v343;
        sub_134D8(v343 + v345[12], v359);
        sub_134D8(v201 + v200[13], v358);
        v357 = &protocol witness table for Double;
        v356 = &type metadata for Double;
        v355 = 0x4020000000000000;
        sub_75D000();
        sub_BEB8(v381);
        sub_10A2C(&v384, &unk_943B10);
        v202 = *(v194 + v338[9]);
        sub_BD88(&qword_947FC8);
        v354 = *(v312 + 72);
        v203 = (*(v312 + 80) + 32) & ~*(v312 + 80);
        if (v202)
        {
          if (v202 != 1)
          {
            v232 = v354;
            v339 = swift_allocObject();
            v233 = v339 + v203;
            sub_1ED18(v340, v339 + v203, &qword_947FC0);
            v234 = v352;
            v235 = v353;
            (*(v353 + 16))(v233 + v232, v342, v352);
            (*(v235 + 56))(v233 + v232, 0, 1, v234);
            v236 = v305;
            sub_1ED18(v233, v305, &qword_947FC0);
            v237 = v293;
            sub_109C4(v236, v293, &qword_947FC0);
            v238 = *(v235 + 48);
            v239 = (v235 + 32);
            v240 = v238(v237, 1, v234);
            v351 = (v235 + 32);
            if (v240 == 1)
            {
              sub_10A2C(v237, &qword_947FC0);
              v241 = _swiftEmptyArrayStorage;
            }

            else
            {
              v242 = *v239;
              (*v239)(v306, v237, v234);
              v241 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v241 = sub_7B968(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v244 = *(v241 + 2);
              v243 = *(v241 + 3);
              if (v244 >= v243 >> 1)
              {
                v241 = sub_7B968(v243 > 1, v244 + 1, 1, v241);
              }

              *(v241 + 2) = v244 + 1;
              v245 = &v241[((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v244];
              v234 = v352;
              v242(v245, v306, v352);
              v237 = v293;
            }

            v246 = v305;
            sub_1ED18(v233 + v354, v305, &qword_947FC0);
            sub_109C4(v246, v237, &qword_947FC0);
            if (v238(v237, 1, v234) == 1)
            {
              sub_10A2C(v237, &qword_947FC0);
              v231 = v344;
              v75 = v340;
            }

            else
            {
              v247 = v234;
              v248 = *v351;
              (*v351)(v306, v237, v247);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v231 = v344;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v241 = sub_7B968(0, *(v241 + 2) + 1, 1, v241);
              }

              v75 = v340;
              v251 = *(v241 + 2);
              v250 = *(v241 + 3);
              if (v251 >= v250 >> 1)
              {
                v241 = sub_7B968(v250 > 1, v251 + 1, 1, v241);
              }

              *(v241 + 2) = v251 + 1;
              v248(&v241[((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v251], v306, v352);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
LABEL_94:
            swift_deallocClassInstance();
            v53 = v322;
            if (a11 == 0.0 && a12 == 0.0)
            {
              v252 = 0;
              v253 = 0;
              v254 = 0;
              *&v385 = 0;
              *(&v384 + 1) = 0;
            }

            else
            {
              v253 = sub_7670D0();
              swift_allocObject();
              v252 = sub_7670B0();
              v254 = &protocol witness table for LayoutViewPlaceholder;
            }

            *&v384 = v252;
            *(&v385 + 1) = v253;
            v386 = v254;
            sub_1ED18(&v384, v381, &unk_943B10);
            v255 = v338;
            v256 = *(v231 + v338[14]);
            v380[3] = &type metadata for CGFloat;
            v380[4] = &protocol witness table for CGFloat;
            v380[0] = v256;
            (*(v313 + 16))(v315, v231 + v338[10], v314);
            (*(v316 + 16))(v318, v231 + v255[11], v317);
            (*(v319 + 104))(v320, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v321);
            sub_75CFA0();
            sub_769DA0();
            sub_3A067C(&unk_947FD0, &type metadata accessor for TitleHeaderLayout);
            v44 = v323;
            sub_7665A0();
            v381[0] = v257;
            v381[1] = v258;
            sub_769DB0();
            if (JUScreenClassGetMain() != 1)
            {

              (*(v326 + 8))(v53, v44);
              (*(v353 + 8))(v342, v352);
              sub_3A04F8(v343, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10A2C(&v387, &qword_9417D0);
              sub_10A2C(&v390, &qword_9417D0);
              sub_10A2C(v341, &qword_947FC0);
              sub_10A2C(v75, &qword_947FC0);
              return sub_10A2C(&v384, &unk_943B10);
            }

            v259 = v352;
            v47 = v353;
            v46 = v337;
            if (qword_93DE20 != -1)
            {
              swift_once();
            }

            v260 = sub_BE38(v345, qword_9A0178);
            if (sub_19C62C(v329, v260))
            {

              (*(v326 + 8))(v53, v44);
              (*(v47 + 1))(v342, v259);
              sub_3A04F8(v343, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10A2C(&v387, &qword_9417D0);
              sub_10A2C(&v390, &qword_9417D0);
              sub_10A2C(v341, &qword_947FC0);
              sub_10A2C(v75, &qword_947FC0);
              return sub_10A2C(&v384, &unk_943B10);
            }

            if (qword_93DE28 == -1)
            {
LABEL_105:
              v261 = sub_BE38(v345, qword_9A0190);
              sub_19C62C(v329, v261);

              (*(v326 + 8))(v53, v44);
              (*(v47 + 1))(v342, v352);
              sub_3A04F8(v343, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10A2C(&v387, &qword_9417D0);
              sub_10A2C(&v390, &qword_9417D0);
              sub_10A2C(v341, &qword_947FC0);
              sub_10A2C(v75, &qword_947FC0);
              return sub_10A2C(&v384, &unk_943B10);
            }

LABEL_120:
            swift_once();
            goto LABEL_105;
          }

          v204 = v354;
          v339 = swift_allocObject();
          v205 = v339 + v203;
          sub_1ED18(v340, v339 + v203, &qword_947FC0);
          v207 = v352;
          v206 = v353;
          (*(v353 + 16))(v205 + v204, v342, v352);
          v208 = *(v206 + 56);
          v206 += 56;
          v208(v205 + v204, 0, 1, v207);
          sub_1ED18(v341, v205 + 2 * v204, &qword_947FC0);
          v209 = (v206 - 8);
          v350 = (v206 - 24);
          v210 = v207;
          v211 = _swiftEmptyArrayStorage;
          v212 = 3;
          v348 = v205;
          do
          {
            v213 = v349;
            sub_1ED18(v205, v349, &qword_947FC0);
            sub_109C4(v213, v199, &qword_947FC0);
            if ((*v209)(v199, 1, v210) == 1)
            {
              sub_10A2C(v199, &qword_947FC0);
            }

            else
            {
              v214 = *v350;
              (*v350)(v351, v199, v210);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v211 = sub_7B968(0, *(v211 + 2) + 1, 1, v211);
              }

              v216 = *(v211 + 2);
              v215 = *(v211 + 3);
              if (v216 >= v215 >> 1)
              {
                v211 = sub_7B968(v215 > 1, v216 + 1, 1, v211);
              }

              *(v211 + 2) = v216 + 1;
              v210 = v352;
              v214(&v211[((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v216], v351, v352);
              v199 = v347;
            }

            v205 += v354;
            --v212;
          }

          while (v212);
        }

        else
        {
          v217 = v354;
          v218 = 2 * v354;
          v339 = swift_allocObject();
          v219 = v339 + v203;
          sub_1ED18(v340, v339 + v203, &qword_947FC0);
          sub_1ED18(v341, v219 + v217, &qword_947FC0);
          v221 = v352;
          v220 = v353;
          (*(v353 + 16))(v219 + v218, v342, v352);
          v222 = *(v220 + 56);
          v220 += 56;
          v222(v219 + v218, 0, 1, v221);
          v223 = (v220 - 8);
          v351 = (v220 - 24);
          v224 = v221;
          v225 = _swiftEmptyArrayStorage;
          v226 = 3;
          v349 = v219;
          do
          {
            v227 = v348;
            sub_1ED18(v219, v348, &qword_947FC0);
            sub_109C4(v227, v193, &qword_947FC0);
            if ((*v223)(v193, 1, v224) == 1)
            {
              sub_10A2C(v193, &qword_947FC0);
            }

            else
            {
              v228 = *v351;
              (*v351)(v350, v193, v224);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v225 = sub_7B968(0, *(v225 + 2) + 1, 1, v225);
              }

              v230 = *(v225 + 2);
              v229 = *(v225 + 3);
              if (v230 >= v229 >> 1)
              {
                v225 = sub_7B968(v229 > 1, v230 + 1, 1, v225);
              }

              *(v225 + 2) = v230 + 1;
              v224 = v352;
              v228(&v225[((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v230], v350, v352);
              v193 = v346;
            }

            v219 += v354;
            --v226;
          }

          while (v226);
        }

        swift_setDeallocating();
        swift_arrayDestroy();
        v231 = v344;
        v75 = v340;
        goto LABEL_94;
      }

      [v333 lineHeight];
      v155 = ceil(v154 * 1.3);
      if ((*&v155 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v155 > -9.22337204e18)
        {
          if (v155 < 9.22337204e18)
          {
            goto LABEL_42;
          }

LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      goto LABEL_116;
    }

    v392 = 0;
    v390 = 0u;
    v391 = 0u;
    v389 = 0;
    v387 = 0u;
    v388 = 0u;
    v386 = 0;
    v384 = 0u;
    v385 = 0u;
    v262 = sub_7653B0();
    v382 = v262;
    v383 = sub_3A067C(&qword_93F9B0, &type metadata accessor for Feature);
    v263 = sub_B1B4(v381);
    (*(*(v262 - 8) + 104))(v263, enum case for Feature.measurement_with_labelplaceholder(_:), v262);

    v264 = v133;
    sub_765C30();
    sub_BEB8(v381);
    v265 = v334;
    v338 = v264;
    sub_762D00();
    sub_762CE0();
    (*(v335 + 8))(v265, v336);
    sub_1ED18(&v390, v380, &unk_943B10);
    v266 = v382;
    v267 = v383;
    v268 = sub_B170(v381, v382);
    v378 = v266;
    v379 = *(v267 + 8);
    v269 = sub_B1B4(v377);
    (*(*(v266 - 8) + 16))(v269, v268, v266);
    v270 = v345;
    v271 = v307;
    v272 = *(v307 + v345[8]);
    v375 = &type metadata for Float;
    v376 = &protocol witness table for Float;
    v374 = v272;
    v273 = v345[9];
    v372 = v89;
    v373 = &protocol witness table for StaticDimension;
    v274 = sub_B1B4(v371);
    v275 = v89;
    v276 = *(v354 + 16);
    v276(v274, v271 + v273, v275);
    v277 = v270[10];
    v369 = v275;
    v370 = &protocol witness table for StaticDimension;
    v278 = sub_B1B4(v368);
    v276(v278, v271 + v277, v275);
    sub_1ED18(&v387, &v362, &qword_9417D0);
    v279 = *(&v363 + 1);
    if (*(&v363 + 1))
    {
      v280 = v364;
      v281 = sub_B170(&v362, *(&v363 + 1));
      *(&v366 + 1) = v279;
      v367 = *(v280 + 8);
      v282 = sub_B1B4(&v365);
      (*(*(v279 - 8) + 16))(v282, v281, v279);
      sub_BEB8(&v362);
    }

    else
    {
      sub_10A2C(&v362, &qword_9417D0);
      v365 = 0u;
      v366 = 0u;
      v367 = 0;
    }

    v283 = v353;
    sub_1ED18(&v384, v359, &qword_9417D0);
    v284 = v360;
    if (v360)
    {
      v285 = v361;
      v286 = sub_B170(v359, v360);
      *(&v363 + 1) = v284;
      v364 = *(v285 + 8);
      v287 = sub_B1B4(&v362);
      (*(*(v284 - 8) + 16))(v287, v286, v284);
      sub_BEB8(v359);
    }

    else
    {
      sub_10A2C(v359, &qword_9417D0);
      v362 = 0u;
      v363 = 0u;
      v364 = 0;
    }

    v288 = v345;
    v289 = v307;
    sub_134D8(v307 + v345[12], v359);
    sub_134D8(v289 + v288[13], v358);
    v357 = &protocol witness table for Double;
    v356 = &type metadata for Double;
    v355 = 0x4020000000000000;
    v290 = v341;
    sub_75D000();
    sub_10A2C(&v384, &qword_9417D0);
    sub_10A2C(&v387, &qword_9417D0);
    sub_10A2C(&v390, &unk_943B10);
    sub_3A04F8(v289, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_BEB8(v381);

    v47 = v288;
    (*(v283 + 56))(v290, 0, 1, v352);
    v392 = 0;
    v390 = 0u;
    v391 = 0u;
    v387 = 0u;
    v388 = 0u;
    v389 = 0;
    v75 = v337;
    v89 = v339;
    v127 = v333;
LABEL_27:
    v53 = v330;
    goto LABEL_28;
  }

  result = [v133 lineHeight];
  v140 = ceil(v139 * 1.3);
  if ((*&v140 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_122;
  }

  if (v140 <= -9.22337204e18)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v140 < 9.22337204e18)
  {
    v137 = v140;
    goto LABEL_37;
  }

LABEL_123:
  __break(1u);
  return result;
}

void sub_39ECDC(void *a1)
{
  v1 = [a1 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];
  }

  else
  {
    __break(1u);
  }
}

double *sub_39ED40()
{
  v1 = v0;
  v102 = sub_75B660();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v95 = (&v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v92 = (&v88 - v4);
  v5 = sub_BD88(&unk_94F1F0);
  v98 = *(v5 - 8);
  v99 = v5;
  __chkstk_darwin(v5);
  v94 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v88 - v8;
  v9 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v9 - 8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v96 = &v88 - v13;
  v14 = sub_75DAB0();
  v103 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v93 = &v88 - v18;
  v19 = sub_BD88(&qword_93FF08);
  v104 = *(v19 - 8);
  __chkstk_darwin(v19);
  v101 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v88 - v22;
  v24 = sub_7623F0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = _swiftEmptyArrayStorage;
  sub_75F1D0();
  v28 = (*(v25 + 88))(v27, v24);
  v97 = v16;
  if (v28 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    v90 = v14;
    (*(v25 + 96))(v27, v24);
    sub_BEB8(v27);
    v29 = [v0 traitCollection];
    if (qword_93DCF0 != -1)
    {
      swift_once();
    }

    v30 = sub_766CA0();
    sub_BE38(v30, qword_99FE18);
    sub_7671D0();
    sub_BD88(&unk_93F5C0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_77D9F0;
    *(v31 + 32) = v29;
    v32 = v29;
    v33 = sub_7671E0();
    sub_7666E0();
    v35 = v34;

    v36 = objc_opt_self();
    v37 = [v36 fractionalWidthDimension:1.0];
    v38 = [v36 absoluteDimension:v35];
    v39 = [objc_opt_self() sizeWithWidthDimension:v37 heightDimension:v38];

    type metadata accessor for InfiniteScrollFooterView();
    v40 = v39;
    sub_769BC0();
    v41 = sub_769210();

    v42 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v40 elementKind:v41 alignment:5];

    v43 = v42;
    sub_769440();
    if (*(&dword_10 + (v105 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v105 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v44 = v105;
    v14 = v90;
  }

  else
  {
    (*(v25 + 8))(v27, v24);
    v44 = _swiftEmptyArrayStorage;
  }

  v45 = qword_9593C8;
  swift_beginAccess();
  v46 = *&v1[v45];
  if (v46)
  {
    v47 = v46;
    sub_767A90();

    v48 = sub_7678E0();
    v49 = *(v104 + 8);
    v104 += 8;
    v49(v23, v19);
    if (v48 > 0)
    {
      sub_BD88(&qword_94AD38);
      sub_16194(&qword_94AD40, &qword_94AD38);
      sub_763A20();
      v50 = v103;
      if ((*(v103 + 48))(v11, 1, v14) != 1)
      {
        v88 = v44;
        v89 = v49;
        v90 = v19;
        v58 = v97;
        (*(v50 + 32))(v97, v11, v14);
        v59 = v94;
        sub_75DAA0();
        swift_getKeyPath();
        v60 = v14;
        v61 = v95;
        v62 = v99;
        sub_768750();

        (*(v98 + 8))(v59, v62);
        v63 = v100;
        v51 = v102;
        if ((*(v100 + 88))(v61, v102) == enum case for ShelfBackground.color(_:))
        {
          (*(v63 + 96))(v61, v51);

          v64 = *(sub_BD88(&unk_959640) + 48);
          v65 = sub_75EDA0();
          (*(*(v65 - 8) + 8))(v61 + v64, v65);
          v66 = objc_opt_self();
          v67 = [v66 fractionalWidthDimension:1.0];
          v68 = [v66 absoluteDimension:2000.0];
          v69 = [objc_opt_self() sizeWithWidthDimension:v67 heightDimension:v68];

          v70 = sub_769210();
          v71 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v69 elementKind:v70 alignment:1 absoluteOffset:{0.0, -2000.0}];

          [v71 setExtendsBoundary:0];
          v72 = v71;
          sub_769440();
          if (*(&dword_10 + (v105 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v105 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();

          v14 = v60;
          (*(v103 + 8))(v97, v60);
          v44 = v105;
          v19 = v90;
          v49 = v89;
        }

        else
        {
          (*(v50 + 8))(v58, v60);
          (*(v63 + 8))(v61, v51);
          v14 = v60;
          v19 = v90;
          v49 = v89;
          v44 = v88;
        }

        goto LABEL_13;
      }

      sub_10A2C(v11, &unk_957F70);
    }

    v51 = v102;
LABEL_13:
    v52 = *&v1[v45];
    if (v52)
    {
      v53 = v52;
      v54 = v101;
      sub_767A90();

      v55 = sub_7678E0();
      v49(v54, v19);
      if (v55 > 0)
      {
        sub_BD88(&qword_94AD38);
        v56 = v103;
        sub_16194(&qword_94AD40, &qword_94AD38);
        v57 = v96;
        sub_763A20();
        if ((*(v56 + 48))(v57, 1, v14) == 1)
        {
          sub_10A2C(v57, &unk_957F70);
        }

        else
        {
          v73 = v93;
          (*(v56 + 32))(v93, v57, v14);
          v74 = v91;
          sub_75DAA0();
          swift_getKeyPath();
          v75 = v92;
          v76 = v99;
          sub_768750();

          (*(v98 + 8))(v74, v76);
          v77 = v100;
          if ((*(v100 + 88))(v75, v51) == enum case for ShelfBackground.color(_:))
          {
            (*(v77 + 96))(v75, v51);

            v78 = *(sub_BD88(&unk_959640) + 48);
            v79 = sub_75EDA0();
            (*(*(v79 - 8) + 8))(v75 + v78, v79);
            v80 = objc_opt_self();
            v81 = [v80 fractionalWidthDimension:1.0];
            v82 = [v80 absoluteDimension:2000.0];
            v83 = [objc_opt_self() sizeWithWidthDimension:v81 heightDimension:v82];

            v84 = sub_769210();
            v85 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v83 elementKind:v84 alignment:5 absoluteOffset:{0.0, 2000.0}];

            [v85 setExtendsBoundary:0];
            v86 = v85;
            sub_769440();
            if (*(&dword_10 + (v105 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v105 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_7694C0();
            }

            sub_769500();

            (*(v103 + 8))(v73, v14);
            return v105;
          }

          else
          {
            (*(v56 + 8))(v73, v14);
            (*(v77 + 8))(v75, v51);
          }
        }
      }
    }
  }

  return v44;
}

uint64_t sub_39FBE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_39FC18()
{

  return _swift_deallocObject(v0, 32, 7);
}

BOOL sub_39FC58(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v67 = a1;
  v2 = sub_756DD0();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v65 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v54 - v5;
  v6 = sub_7573D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_757490();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for Calendar.Identifier.gregorian(_:), v6, v11);
  sub_7573E0();
  (*(v7 + 8))(v9, v6);
  v14 = sub_BD88(&qword_951BD8);
  v15 = sub_757480();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v61 = 3 * v17;
  v62 = v14;
  v19 = swift_allocObject();
  v59 = xmmword_77DC20;
  *(v19 + 16) = xmmword_77DC20;
  v20 = *(v16 + 104);
  v60 = enum case for Calendar.Component.year(_:);
  v20(v19 + v18);
  v58 = enum case for Calendar.Component.month(_:);
  v20(v19 + v18 + v17);
  v63 = 2 * v17;
  v57 = enum case for Calendar.Component.day(_:);
  v20(v19 + v18 + 2 * v17);
  sub_1A1DEC(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v21 = v66;
  sub_757410();
  v22 = v21;

  v23 = sub_756DA0();
  if (v24 & 1) != 0 || (v25 = v23, v67 = sub_756DB0(), (v26) || (v27 = sub_756D90(), (v28))
  {
    (*(v70 + 8))(v22, v71);
    (*(v68 + 8))(v13, v69);
    return 0;
  }

  v55 = v27;
  v56 = v25;
  v30 = swift_allocObject();
  v62 = v13;
  v31 = v30;
  *(v30 + 16) = v59;
  v32 = v30 + v18;
  (v20)(v30 + v18, v60, v15);
  (v20)(v32 + v17, v58, v15);
  (v20)(v32 + v63, v57, v15);
  sub_1A1DEC(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  v33 = v62;
  swift_deallocClassInstance();
  v34 = v65;
  sub_757410();

  v35 = sub_756DA0();
  if (v36)
  {
    v37 = v71;
    v38 = v33;
    v39 = *(v70 + 8);
    v39(v34, v71);
    v39(v22, v37);
    (*(v68 + 8))(v38, v69);
    return 0;
  }

  v40 = v35;
  v41 = sub_756DB0();
  if (v42)
  {
    v43 = v71;
    v44 = *(v70 + 8);
    v44(v34, v71);
    v44(v22, v43);
    (*(v68 + 8))(v62, v69);
    return 0;
  }

  v45 = v41;
  v46 = sub_756D90();
  v48 = v47;
  v49 = *(v70 + 8);
  v50 = v34;
  v51 = v71;
  v49(v50, v71);
  v49(v22, v51);
  (*(v68 + 8))(v62, v69);
  if (v48)
  {
    return 0;
  }

  return v56 < v40 || v67 < v45 || v55 < v46;
}

id sub_3A0238()
{
  v1 = v0;
  swift_getObjectType();
  [v0 setTitle:0];
  sub_761F30();
  if (v2)
  {
    result = [v0 tabBarItem];
    if (!result)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = sub_769210();

    [v4 setTitle:v5];
  }

  v6 = [v0 navigationItem];
  sub_761F40();
  if (v7)
  {
    v8 = sub_769210();
  }

  else
  {
    v8 = 0;
  }

  [v6 setTitle:v8];

  v9 = [v1 navigationItem];
  sub_27CCF4();

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  [result bounds];

  sub_3A067C(&qword_951BA8, type metadata accessor for TodayDiffablePageViewController);

  return sub_763A70();
}

uint64_t sub_3A0490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3A04F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_3A0558()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3A05C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_3A05E0()
{
  v1 = *(v0 + 16);
  [v1 prepare];

  return [v1 impactOccurred];
}

uint64_t sub_3A0634()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3A067C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_3A06DC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v14 = _swiftEmptyArrayStorage;
    sub_76A7C0();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = sub_76A770();
      }

      else
      {
        if (j >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v10 = *(a3 + 8 * j + 32);
      }

      v12 = v10;
      a1(&v13, &v12);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      if (v9 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_3A085C(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v18 = _swiftEmptyArrayStorage;
  sub_143BBC(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  for (i = a3 + 32; ; i += 40)
  {
    a1(v16, i);
    if (v3)
    {
      break;
    }

    v18 = v5;
    v10 = v5[2];
    v9 = v5[3];
    if (v10 >= v9 >> 1)
    {
      sub_143BBC((v9 > 1), v10 + 1, 1);
      v5 = v18;
    }

    v5[2] = v10 + 1;
    v11 = &v5[9 * v10];
    *(v11 + 2) = v16[0];
    v12 = v16[1];
    v13 = v16[2];
    v14 = v16[3];
    v11[12] = v17;
    *(v11 + 4) = v13;
    *(v11 + 5) = v14;
    *(v11 + 3) = v12;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_3A0988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75B660();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_764930();
  if ((*(*(v14 - 8) + 48))(a1, 1, v14) == 1)
  {
    return 0;
  }

  v25 = v7;
  v26 = a4;
  v16 = enum case for ShelfBackground.none(_:);
  v17 = *(v11 + 104);
  v17(v13, enum case for ShelfBackground.none(_:), v10);
  v18 = sub_75B650();
  v19 = *(v11 + 8);
  v19(v13, v10);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v17(v13, v16, v10);
  sub_C1E84();
  v20 = sub_7691C0();
  v19(v13, v10);
  if (v20)
  {
    return 0;
  }

  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v21 = sub_766CA0();
  sub_BE38(v21, qword_99FE18);
  sub_766470();
  sub_766700();
  v23 = v22;
  (*(v25 + 8))(v9, v6);
  return v23;
}

uint64_t sub_3A0C78(double a1, double a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_BD88(&unk_944DB0);
  __chkstk_darwin(v15 - 8);
  v17 = v31 - v16;
  v18 = sub_7601F0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_764A90();
  if (v22 >> 62)
  {
    v28 = a6;
    v29 = v22;
    v30 = sub_76A860();
    v22 = v29;
    a6 = v28;
    if (v30)
    {
LABEL_3:
      v31[1] = a6;
      v23 = v22;
      (*(a8 + 16))(a4 & 1, a5, a7, a8, a1, a2);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {

        return sub_10A2C(v17, &unk_944DB0);
      }

      else
      {
        v25 = (*(v19 + 32))(v21, v17, v18);
        __chkstk_darwin(v25);
        v31[-2] = v21;
        v26 = sub_3A06DC(sub_F81F0, &v31[-4], v23);

        v27._rawValue = v26;
        sub_75A070(v27);

        return (*(v19 + 8))(v21, v18);
      }
    }
  }

  else if (*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }
}

uint64_t sub_3A0F50(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_764930();
  v9 = (*(*(v8 - 8) + 48))(a1, 1, v8);
  result = 0;
  if (((v9 != 1) & a2) == 1)
  {
    if (qword_93DCF0 != -1)
    {
      swift_once();
    }

    v11 = sub_766CA0();
    sub_BE38(v11, qword_99FE18);
    sub_766470();
    sub_766700();
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    return v13;
  }

  return result;
}

uint64_t sub_3A1BD4()
{
  if (sub_764A90() >> 62)
  {
    sub_76A860();
  }
}

uint64_t sub_3A1C30(uint64_t a1)
{
  v2 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_2C8FC(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10A2C(v4, &qword_951BE0);
  }

  else
  {
    v12 = *(v6 + 32);
    v12(v11, v4, v5);
    v12(v8, v11, v5);
    v13 = (*(v6 + 88))(v8, v5);
    if (v13 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v13 == enum case for Shelf.ContentType.upsellBreakout(_:) || v13 == enum case for Shelf.ContentType.smallBreakout(_:) || v13 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v13 == enum case for Shelf.ContentType.gameCenterReengagement(_:) || v13 == enum case for Shelf.ContentType.heroCarousel(_:))
    {
      return 0;
    }

    (*(v6 + 8))(v8, v5);
  }

  return 1;
}

uint64_t sub_3A1E7C(uint64_t a1, char a2)
{
  v3 = sub_7601F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  v10 = sub_764A90();
  if (v10 >> 62)
  {
    v17 = v10;
    v18 = sub_76A860();
    v10 = v17;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
    v11 = v10;
    if (a2)
    {
      swift_getObjectType();
      PageTraitEnvironment.pageColumnWidth.getter();
      PageTraitEnvironment.pageColumnMargin.getter();
    }

    if (qword_93CD60 != -1)
    {
      swift_once();
    }

    v12 = sub_766690();
    sub_BE38(v12, qword_99D338);
    sub_766660();
    sub_7601D0();
    v13 = (*(v4 + 32))(v9, v6, v3);
    __chkstk_darwin(v13);
    *&v19[-16] = v9;
    v14 = sub_3A06DC(sub_FCEFC, &v19[-32], v11);

    v15._rawValue = v14;
    sub_75A070(v15);

    return (*(v4 + 8))(v9, v3);
  }
}

uint64_t sub_3A212C()
{
  v0 = sub_7601F0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_764A90();
  if (v4 >> 62)
  {
    v10 = v4;
    v11 = sub_76A860();
    v4 = v10;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
    v5 = v4;
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
    PageTraitEnvironment.pageColumnMargin.getter();
    v6 = sub_7601D0();
    __chkstk_darwin(v6);
    *&v12[-16] = v3;
    v7 = sub_3A06DC(sub_FCEFC, &v12[-32], v5);

    v8._rawValue = v7;
    sub_75A070(v8);

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_3A2324()
{
  v0 = sub_7601F0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_764A90();
  if (v4 >> 62)
  {
    v11 = v4;
    v12 = sub_76A860();
    v4 = v11;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
    v5 = v4;
    if (qword_93C668 != -1)
    {
      swift_once();
    }

    v6 = sub_75CF00();
    sub_BE38(v6, qword_99B898);
    sub_75CDD0();
    v7 = sub_7601D0();
    __chkstk_darwin(v7);
    *&v13[-16] = v3;
    v8 = sub_3A06DC(sub_FCEFC, &v13[-32], v5);

    v9._rawValue = v8;
    sub_75A070(v9);

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_3A252C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_BD88(&qword_944E50);
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v26 - v6;
  v8 = sub_75D6B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7601F0();
  v29 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_764A90();
  if (v15 >> 62)
  {
    v23 = v12;
    v24 = v15;
    v25 = sub_76A860();
    v15 = v24;
    v12 = v23;
    if (v25)
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
    v27 = v12;
    v16 = v15;
    v17 = [a2 traitCollection];
    v26[1] = a3;
    v18 = v17;
    sub_278FB0(v11);

    sub_75D680();
    (*(v9 + 8))(v11, v8);
    v30 = a2;
    swift_unknownObjectRetain();
    sub_7592B0();
    (*(v28 + 8))(v7, v5);
    swift_unknownObjectRelease();
    v19 = sub_7601D0();
    __chkstk_darwin(v19);
    v26[-2] = v14;
    v20 = sub_3A06DC(sub_FCEFC, &v26[-4], v16);

    v21._rawValue = v20;
    sub_75A070(v21);

    return (*(v29 + 8))(v14, v27);
  }
}

uint64_t sub_3A289C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v5 = sub_766690();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7601F0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = sub_764A90();
  if (v16 >> 62)
  {
    v22 = v16;
    v23 = sub_76A860();
    v16 = v22;
    if (v23)
    {
      goto LABEL_3;
    }
  }

  else if (*(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_3:
    v25 = v16;
    if (a2)
    {
      swift_getObjectType();
      PageTraitEnvironment.pageColumnWidth.getter();
    }

    if (qword_93CD48 != -1)
    {
      swift_once();
    }

    v17 = sub_75D510();
    sub_BE38(v17, qword_99D278);
    sub_75D500();
    sub_766660();
    (*(v6 + 8))(v8, v5);
    sub_7601D0();
    v18 = (*(v10 + 32))(v15, v12, v9);
    __chkstk_darwin(v18);
    *(&v24 - 2) = v15;
    v19 = sub_3A06DC(sub_FCEFC, (&v24 - 4), v25);

    v20._rawValue = v19;
    sub_75A070(v20);

    return (*(v10 + 8))(v15, v9);
  }
}

void sub_3A2BCC()
{
  sub_76A730(40);
  sub_76AAA0();

  v0._object = 0x80000000007DE000;
  v0._countAndFlagsBits = 0xD000000000000026;
  sub_769370(v0);
  sub_76A840();
  __break(1u);
}

double sub_3A2CA4()
{
  v0 = sub_7573C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757390();
  v4 = sub_757330();
  (*(v1 + 8))(v3, v0);
  *&xmmword_99D548 = 10329570;
  *(&xmmword_99D548 + 1) = 0xA300000000000000;
  *&xmmword_99D558 = 10395106;
  *(&xmmword_99D558 + 1) = 0xA300000000000000;
  *&xmmword_99D568 = v4;
  *(&xmmword_99D568 + 8) = xmmword_799AA0;
  *(&xmmword_99D578 + 8) = xmmword_799AB0;
  result = 5.0;
  unk_99D590 = xmmword_799AC0;
  return result;
}

double sub_3A2DB4()
{
  v0 = sub_7573C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757390();
  v4 = sub_757330();
  (*(v1 + 8))(v3, v0);
  *&xmmword_99D5A0 = 10395106;
  *(&xmmword_99D5A0 + 1) = 0xA300000000000000;
  *&xmmword_99D5B0 = 10395106;
  *(&xmmword_99D5B0 + 1) = 0xA300000000000000;
  *&xmmword_99D5C0 = v4;
  *(&xmmword_99D5C0 + 8) = xmmword_799AA0;
  *(&xmmword_99D5D0 + 8) = xmmword_799AB0;
  result = 5.0;
  unk_99D5E8 = xmmword_799AC0;
  return result;
}

double sub_3A2EC0()
{
  v0 = sub_7573C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757390();
  v4 = sub_757330();
  (*(v1 + 8))(v3, v0);
  *&xmmword_99D5F8 = 10387682;
  *(&xmmword_99D5F8 + 1) = 0xA300000000000000;
  *&xmmword_99D608 = 10256610;
  *(&xmmword_99D608 + 1) = 0xA300000000000000;
  *&xmmword_99D618 = v4;
  *(&xmmword_99D618 + 8) = xmmword_799AD0;
  __asm { FMOV            V0.2D, #8.0 }

  *(&xmmword_99D628 + 8) = _Q0;
  result = 7.0;
  unk_99D640 = xmmword_799AE0;
  return result;
}

double sub_3A2FCC()
{
  v0 = sub_7573C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757390();
  v4 = sub_757330();
  (*(v1 + 8))(v3, v0);
  *&xmmword_99D650 = 43970;
  *(&xmmword_99D650 + 1) = 0xA200000000000000;
  *&xmmword_99D660 = 48066;
  *(&xmmword_99D660 + 1) = 0xA200000000000000;
  *&xmmword_99D670 = v4;
  *(&xmmword_99D670 + 8) = xmmword_799AF0;
  *(&xmmword_99D680 + 8) = xmmword_799B00;
  result = 7.0;
  *&algn_99D690[8] = xmmword_799AE0;
  return result;
}

double sub_3A30D8()
{
  v0 = sub_7573C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757390();
  v4 = sub_757330();
  (*(v1 + 8))(v3, v0);
  *&xmmword_99D6A8 = 9208035;
  *(&xmmword_99D6A8 + 1) = 0xA300000000000000;
  *&xmmword_99D6B8 = 9273571;
  *(&xmmword_99D6B8 + 1) = 0xA300000000000000;
  *&xmmword_99D6C8 = v4;
  *(&xmmword_99D6C8 + 8) = xmmword_799B10;
  *(&xmmword_99D6D8 + 8) = xmmword_799B20;
  result = 9.0;
  unk_99D6F0 = xmmword_799B30;
  return result;
}

id sub_3A3210(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() systemFontOfSize:a1 weight:UIFontWeightBold];
  *a3 = result;
  return result;
}

id sub_3A3270()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.78 green:0.78 blue:0.8 alpha:1.0];
  qword_951BF8 = result;
  return result;
}

uint64_t sub_3A3460(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766CA0();
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  if (qword_93CE88 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99D700);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_B1B4(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_766CB0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_3A364C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_7664A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766CA0();
  sub_161DC(v7, a2);
  sub_BE38(v7, a2);
  if (qword_93CE90 != -1)
  {
    swift_once();
  }

  v8 = sub_7666D0();
  v9 = sub_BE38(v8, qword_99D718);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_B1B4(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_766CB0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_3A3838()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766CA0();
  sub_161DC(v4, qword_99D790);
  sub_BE38(v4, qword_99D790);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_B1B4(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

void sub_3A39A4(uint64_t a1, id a2)
{
  v3 = v2;
  sub_75E140();

  sub_75E0F0();
  sub_75E0E0();
  v5 = sub_75E160();
  v6 = &selRef_setSpeed_;
  v60 = v5;
  if (v5)
  {
    v7 = sub_75E110();
    v8 = v7;
    v9 = &v2[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteGlyphs];
    if (v7 != *&v2[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteGlyphs + 32])
    {
      v58 = a2;
      *(v9 + 4) = v7;
      v55 = *&v9[16 * (v7 == 1)];
      v56 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_leadingQuote];

      sub_BD88(&qword_940F40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_77E280;
      *(inited + 32) = NSFontAttributeName;
      v11 = qword_93CE70;
      v12 = NSFontAttributeName;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = qword_951BE8;
      v14 = sub_BE70(0, &qword_93F900);
      *(inited + 40) = v13;
      *(inited + 64) = v14;
      *(inited + 72) = NSForegroundColorAttributeName;
      v15 = qword_93CE80;
      v16 = v13;
      v17 = NSForegroundColorAttributeName;
      if (v15 != -1)
      {
        swift_once();
      }

      v18 = qword_951BF8;
      *(inited + 104) = sub_BE70(0, &qword_93E540);
      *(inited + 80) = v18;
      v19 = v18;
      sub_10D028(inited);
      swift_setDeallocating();
      sub_BD88(qword_940F50);
      swift_arrayDestroy();
      v20 = objc_allocWithZone(NSAttributedString);
      v21 = sub_769210();

      type metadata accessor for Key(0);
      sub_206144();
      isa = sub_7690E0().super.isa;

      v23 = [v20 initWithString:v21 attributes:isa];

      v6 = &selRef_setSpeed_;
      [v56 setAttributedText:v23];

      v24 = *(v9 + 3);
      v62[2] = *(v9 + 2);
      v62[3] = v24;
      v62[4] = *(v9 + 4);
      v63 = *(v9 + 10);
      v25 = *(v9 + 1);
      v62[0] = *v9;
      v62[1] = v25;
      v26 = objc_allocWithZone(type metadata accessor for QuotesLabel());
      sub_72018(v62, v61);
      v27 = [v26 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v28 = sub_3A5D14(v62);

      sub_72078(v62);
      v29 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_trailingQuote];
      *&v3[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_trailingQuote] = v28;

      a2 = v58;
    }
  }

  else
  {
    v8 = -1;
  }

  v30 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteLabel];
  v31 = sub_BE70(0, &qword_93F900);
  if (qword_93CE88 != -1)
  {
    swift_once();
  }

  v32 = sub_7666D0();
  sub_BE38(v32, qword_99D700);
  v33 = [v3 traitCollection];
  v34 = sub_769E10();

  if (a2)
  {
    v57 = v30;
    v35 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_trailingQuote];
    v36 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteGlyphs + 72];
    sub_BD88(&qword_940F40);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_77E280;
    *(v37 + 32) = NSParagraphStyleAttributeName;
    v38 = qword_93C2E0;
    v39 = NSParagraphStyleAttributeName;
    v59 = v35;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = [qword_99A440 paragraphStyleWithBaseWritingDirection:{v8, v55}];
    v41 = sub_BE70(0, &qword_940F48);
    *(v37 + 40) = v40;
    *(v37 + 64) = v41;
    *(v37 + 72) = NSFontAttributeName;
    *(v37 + 104) = v31;
    *(v37 + 80) = v34;
    v42 = NSFontAttributeName;
    v34 = v34;
    sub_10D028(v37);
    swift_setDeallocating();
    sub_BD88(qword_940F50);
    swift_arrayDestroy();
    v43 = objc_allocWithZone(NSMutableAttributedString);
    v44 = sub_769210();
    type metadata accessor for Key(0);
    sub_206144();
    v45 = sub_7690E0().super.isa;

    a2 = [v43 initWithString:v44 attributes:v45];

    if (v35)
    {
      v46 = v59;
      sub_10D028(_swiftEmptyArrayStorage);
      v47 = objc_allocWithZone(NSAttributedString);
      v48 = sub_769210();
      v49 = sub_7690E0().super.isa;

      v50 = [v47 initWithString:v48 attributes:v49];

      [a2 appendAttributedString:v50];
      v51 = [objc_allocWithZone(NSTextAttachment) init];
      [v51 setImage:v46];
      [v46 size];
      [v51 setBounds:{0.0, -v36, v52, v53}];
      v54 = [objc_opt_self() attributedStringWithAttachment:v51];
      [a2 appendAttributedString:v54];

      v34 = v46;
    }

    else
    {
    }

    v5 = v60;
    v6 = &selRef_setSpeed_;
    v30 = v57;
  }

  [v30 v6[453]];
}

void sub_3A4118(uint64_t a1, uint64_t a2)
{
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v35 - v11;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_creditLabel;
  v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_creditLabel];
  if (!v14 || (v15 = [v14 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v36 = v6;
  v16 = a1;
  v17 = v15;
  v18 = sub_769240();
  v20 = v19;

  if (!a2)
  {

    v6 = v36;
    v23 = *&v2[v13];
    if (v23)
    {
      goto LABEL_18;
    }

LABEL_12:
    v24 = v2;
    if (qword_93CE90 != -1)
    {
      swift_once();
    }

    v25 = sub_7666D0();
    v26 = sub_BE38(v25, qword_99D718);
    v27 = *(v25 - 8);
    (*(v27 + 16))(v12, v26, v25);
    (*(v27 + 56))(v12, 0, 1, v25);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v28 = objc_allocWithZone(sub_75BB20());
    v29 = sub_75BB10();
    v2 = v24;
    v30 = *&v24[v13];
    *&v24[v13] = v29;
    v31 = v29;

    v32 = [objc_opt_self() systemGrayColor];
    [v31 setTextColor:v32];

    if (!*&v24[v13])
    {
      __break(1u);
      return;
    }

    [v24 addSubview:?];
    v23 = *&v24[v13];
    if (!v23)
    {

LABEL_22:
      [v2 setNeedsLayout];
      return;
    }

LABEL_18:
    v33 = v23;
    if (a2)
    {
      v34 = sub_769210();
    }

    else
    {
      v34 = 0;
    }

    [v33 setText:v34];

    goto LABEL_22;
  }

  if (v18 != v16 || v20 != a2)
  {
    v22 = sub_76A950();

    v6 = v36;
    if (v22)
    {
      goto LABEL_25;
    }

LABEL_11:
    v23 = *&v2[v13];
    if (v23)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_25:
}

id sub_3A4508()
{
  v1 = v0;
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkHasRoundedCorners] = v0[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_isFullWidthArtwork] ^ 1;
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView];
  (*(v3 + 104))(v6, enum case for CornerStyle.continuous(_:), v2, v4);
  v8 = v7;
  sub_759200();

  (*(v3 + 8))(v6, v2);
  return [v1 setNeedsLayout];
}

char *sub_3A4650(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v14 - 8);
  v16 = v77 - v15;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_trailingQuote] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_creditLabel] = 0;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkAspectRatio;
  v18 = sub_766690();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_isFullWidthArtwork] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkHasRoundedCorners] = 0;
  v19 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_leadingQuote] = v19;
  if (qword_93CE88 != -1)
  {
    swift_once();
  }

  v20 = sub_7666D0();
  v21 = sub_BE38(v20, qword_99D700);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v16, v21, v20);
  (*(v22 + 56))(v16, 0, 1, v20);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v23 = objc_allocWithZone(sub_75BB20());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteLabel] = sub_75BB10();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v86._object = 0x80000000007CC420;
  v86._countAndFlagsBits = 0xD000000000000010;
  v87._countAndFlagsBits = 0;
  v87._object = 0xE000000000000000;
  v24 = sub_75B750(v86, v87);
  v26 = sub_3A5CC8(v24, v25);
  if (v26 > 2)
  {
    if (v26 - 3 < 2)
    {
      if (qword_93CE60 != -1)
      {
        swift_once();
      }

      v27 = &xmmword_99D650;
      goto LABEL_23;
    }

    if (v26 == 5)
    {
      if (qword_93CE68 != -1)
      {
        swift_once();
      }

      v27 = &xmmword_99D6A8;
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (!v26)
  {
LABEL_17:
    if (qword_93CE48 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_99D548;
    goto LABEL_23;
  }

  if (v26 == 1)
  {
    if (qword_93CE50 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_99D5A0;
  }

  else
  {
    if (qword_93CE58 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_99D5F8;
  }

LABEL_23:
  v28 = v27[4];
  *&v84[16] = v27[3];
  *&v84[32] = v28;
  v85 = *(v27 + 10);
  v29 = v27[2];
  v83 = v27[1];
  *v84 = v29;
  v82 = *v27;
  v30 = *&v84[40];
  v31 = v85;
  v78 = *&v84[8];
  v79 = *&v84[24];
  v33 = *(&v83 + 1);
  v32 = v29;
  v35 = *(&v82 + 1);
  v34 = v83;
  v36 = v82;
  sub_72018(&v82, v81);
  v37 = &v5[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteGlyphs];
  *v37 = v36;
  *(v37 + 1) = v35;
  *(v37 + 2) = v34;
  *(v37 + 3) = v33;
  *(v37 + 4) = v32;
  v38 = v78;
  *(v37 + 56) = v79;
  *(v37 + 40) = v38;
  *(v37 + 9) = v30;
  *(v37 + 10) = v31;
  v39 = type metadata accessor for QuoteView();
  v80.receiver = v5;
  v80.super_class = v39;
  v40 = objc_msgSendSuper2(&v80, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v44 = v40;
  [v44 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v45 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView;
  v46 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView];
  sub_759060();

  v47 = *&v44[v45];
  sub_759090();
  sub_75CD10();

  v48 = *&v44[v45];
  sub_759080();
  sub_75CD00();

  [*&v44[v45] setHidden:1];
  v49 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_leadingQuote;
  [*&v44[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_leadingQuote] setClipsToBounds:0];
  v50 = *&v44[v49];
  v51 = &v44[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteGlyphs];
  v77[1] = *&v44[16 * (*&v44[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteGlyphs + 32] == 1) + OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteGlyphs];
  *&v78 = v49;

  sub_BD88(&qword_940F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  *(inited + 32) = NSFontAttributeName;
  v53 = qword_93CE70;
  *&v79 = v50;
  v54 = NSFontAttributeName;
  if (v53 != -1)
  {
    swift_once();
  }

  v55 = qword_951BE8;
  v56 = sub_BE70(0, &qword_93F900);
  *(inited + 40) = v55;
  *(inited + 64) = v56;
  *(inited + 72) = NSForegroundColorAttributeName;
  v57 = qword_93CE80;
  v58 = v55;
  v59 = NSForegroundColorAttributeName;
  if (v57 != -1)
  {
    swift_once();
  }

  v60 = qword_951BF8;
  *(inited + 104) = sub_BE70(0, &qword_93E540);
  *(inited + 80) = v60;
  v61 = v60;
  sub_10D028(inited);
  swift_setDeallocating();
  sub_BD88(qword_940F50);
  swift_arrayDestroy();
  v62 = objc_allocWithZone(NSAttributedString);
  v63 = sub_769210();

  type metadata accessor for Key(0);
  sub_206144();
  isa = sub_7690E0().super.isa;

  v65 = [v62 initWithString:v63 attributes:isa];

  v66 = v79;
  [v79 setAttributedText:v65];

  [v44 addSubview:*&v44[v78]];
  v67 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteLabel;
  [*&v44[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteLabel] setTextAlignment:4];
  [v44 addSubview:*&v44[v67]];
  [v44 addSubview:*&v44[v45]];
  v68 = *(v51 + 1);
  v82 = *v51;
  v83 = v68;
  v69 = *(v51 + 2);
  v70 = *(v51 + 3);
  v71 = *(v51 + 4);
  v85 = *(v51 + 10);
  *&v84[16] = v70;
  *&v84[32] = v71;
  *v84 = v69;
  v72 = objc_allocWithZone(type metadata accessor for QuotesLabel());
  sub_72018(&v82, v81);
  v73 = [v72 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v74 = sub_3A5D14(&v82);

  sub_72078(&v82);
  v75 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_trailingQuote];
  *&v44[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_trailingQuote] = v74;

  return v44;
}

void sub_3A5074()
{
  v1 = v0;
  v2 = sub_766690();
  v95 = *(v2 - 8);
  v96 = v2;
  __chkstk_darwin(v2);
  v93 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_948720);
  __chkstk_darwin(v4 - 8);
  v94 = &v93 - v5;
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for QuoteView();
  v100.receiver = v0;
  v100.super_class = v10;
  objc_msgSendSuper2(&v100, "layoutSubviews");
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_leadingQuote];
  [v11 sizeToFit];
  sub_75D650();
  MinY = CGRectGetMinY(v101);
  if (qword_93CE98 != -1)
  {
    swift_once();
  }

  v97 = sub_766CA0();
  sub_BE38(v97, qword_99D730);
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteLabel];
  sub_766470();
  v14 = [v13 traitCollection];
  sub_766C70();
  v16 = v15;

  [v13 firstBaselineFromTop];
  v18 = v17;
  v98 = *(v7 + 8);
  v99 = v6;
  v98(v9, v6);
  v19 = MinY + v16 - v18;
  [v11 frame];
  Width = CGRectGetWidth(v102);
  v21 = &v0[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteGlyphs];
  v22 = Width + *&v0[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteGlyphs + 56] + *&v0[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_quoteGlyphs + 40];
  sub_75D650();
  v24 = v23 - v22;
  [v13 sizeThatFits:{v23 - v22, 1.79769313e308}];
  v26 = v25;
  v28 = v27;
  v29 = *(v21 + 4);
  sub_75D650();
  if (v29 == 1)
  {
    [v13 setFrame:{CGRectGetMaxX(*&v30) - v26 - v22, v19, v26, v28}];
    sub_75D650();
    v34 = CGRectGetMaxX(v103) - *(v21 + 5);
    [v11 frame];
    v35 = v34 - CGRectGetWidth(v104);
  }

  else
  {
    [v13 setFrame:{v22 + CGRectGetMinX(*&v30), v19, v26, v28}];
    sub_75D650();
    v35 = v36 + *(v21 + 5);
  }

  [v13 frame];
  v38 = v37 + *(v21 + 6);
  [v11 frame];
  [v11 setFrame:{v35, v38}];
  [v13 frame];
  MaxY = CGRectGetMaxY(v105);
  if (qword_93CEA0 != -1)
  {
    swift_once();
  }

  sub_BE38(v97, qword_99D748);
  sub_766470();
  v40 = [v13 traitCollection];
  sub_766C70();
  v42 = v41;

  [v13 lastBaselineFromBottom];
  v44 = v43;
  v98(v9, v99);
  v45 = MaxY + v42 - v44;
  v46 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_creditLabel];
  if (v46)
  {
    v47 = v46;
    [v47 sizeThatFits:{v24, 1.79769313e308}];
    v49 = v48;
    v51 = v50;
    v52 = *(v21 + 4);
    [v13 frame];
    if (v52 == 1)
    {
      MinX = CGRectGetMaxX(*&v53) - v49;
    }

    else
    {
      MinX = CGRectGetMinX(*&v53);
    }

    v58 = v97;
    v60 = v99;
    v59 = &selRef_setTextAlignment_;
    v97 = v10;
    if (qword_93CEA8 != -1)
    {
      swift_once();
    }

    sub_BE38(v58, qword_99D760);
    sub_766470();
    v61 = [v47 traitCollection];
    sub_766C70();
    v63 = v62;

    [v47 firstBaselineFromTop];
    v65 = v64;
    v66 = v98;
    v98(v9, v60);
    [v47 setFrame:{MinX, v45 + v63 - v65, v49, v51}];

    [v47 frame];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    v106.origin.x = v68;
    v106.origin.y = v70;
    v106.size.width = v72;
    v106.size.height = v74;
    CGRectGetMaxY(v106);
    if (qword_93CEB0 != -1)
    {
      swift_once();
    }

    sub_BE38(v58, qword_99D778);
    sub_766470();
    v75 = [v47 traitCollection];
    sub_766C70();

    [v47 lastBaselineFromBottom];
    v66(v9, v60);
  }

  else
  {
    v58 = v97;
    v59 = &selRef_setTextAlignment_;
  }

  v76 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView;
  if (([*&v1[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView] isHidden] & 1) == 0)
  {
    v77 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_isFullWidthArtwork;
    if (v1[OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_isFullWidthArtwork] == 1)
    {
      [v1 frame];
    }

    else
    {
      sub_75D650();
    }

    CGRectGetMinX(*&v78);
    if (qword_93CEB8 != -1)
    {
      swift_once();
    }

    sub_BE38(v58, qword_99D790);
    v82 = [v1 v59[23]];
    sub_766470();
    sub_766C70();

    v98(v9, v99);
    if (v1[v77] == 1)
    {
      [v1 frame];
    }

    else
    {
      sub_75D650();
    }

    v88 = v95;
    v87 = v96;
    v89 = v94;
    CGRectGetWidth(*&v83);
    v90 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_29A8E8(&v1[v90], v89);
    if ((*(v88 + 48))(v89, 1, v87))
    {
      sub_9C2A0(v89);
      sub_75D650();
      CGRectGetHeight(v107);
    }

    else
    {
      v91 = v93;
      (*(v88 + 16))(v93, v89, v87);
      sub_9C2A0(v89);
      sub_766660();
      (*(v88 + 8))(v91, v87);
    }

    v92 = *&v1[v76];
    sub_759170();
  }
}