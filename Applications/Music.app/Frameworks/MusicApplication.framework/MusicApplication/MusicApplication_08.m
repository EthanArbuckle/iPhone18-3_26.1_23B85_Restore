id sub_ADF74()
{
  v1 = OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_AF028();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_AE090()
{
  v3 = v0;
  v55 = sub_ABA8C0();
  v4 = *(v55 - 8);
  v5 = __chkstk_darwin(v55);
  v54 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  v9 = sub_AB35C0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_AB9250();
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_recordLabelLinkViews;
  v13 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_recordLabelLinkViews];
  if (v13 >> 62)
  {
    v14 = sub_ABB060();
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
LABEL_35:
    result = sub_ABB060();
    v21 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_15;
  }

  v53 = v12;
  v15 = v4;

  for (i = 0; i != v14; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = sub_360660(i, v13);
    }

    else
    {
      v17 = *(v13 + 8 * i + 32);
    }

    v18 = v17;
    [v17 removeFromSuperview];
  }

  v4 = v15;
LABEL_10:
  v19 = *&v3[v56];
  *&v3[v56] = _swiftEmptyArrayStorage;
  if ((sub_12CF08(v19, _swiftEmptyArrayStorage) & 1) == 0)
  {
    [v3 setNeedsLayout];
  }

  v2 = *&v3[OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_recordLabels];
  if (!v2)
  {
    return result;
  }

  v1 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_35;
  }

  v21 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v21)
  {
    return result;
  }

LABEL_15:

  v22 = sub_ADF74();
  if (v1)
  {
    sub_ABB060();
  }

  sub_AB91E0();
  sub_AB3550();
  v57 = sub_AB9320();
  v58 = v23;
  sub_36A48();
  sub_ABAA90();
  v24 = sub_AB9260();

  [v22 setText:v24];

  v53 = objc_opt_self();
  v52 = objc_opt_self();
  v51 = sub_13C80(0, &qword_DF13D0);
  result = sub_13C80(0, &unk_E05310);
  v49 = v21 - 1;
  v50 = result;
  if (v21 < 1)
  {
    __break(1u);
  }

  else
  {
    v25 = 0;
    v47 = (v4 + 16);
    v48 = v2 & 0xC000000000000001;
    v46 = UIFontTextStyleBody;
    v26 = (v4 + 8);
    if ((v2 & 0xC000000000000001) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    for (j = sub_360338(v25, v2); ; j = *(v2 + 8 * v25 + 32))
    {
      v28 = j;
      sub_ABA8A0();
      v29 = [v28 name];
      if (v29)
      {
        v30 = v29;
        sub_AB92A0();
      }

      sub_ABA8B0();
      sub_ABA820();
      v31 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
      sub_ABA870();
      v32 = sub_AB9260();
      v33 = [v53 systemImageNamed:v32];

      sub_ABA890();
      v34 = [v52 configurationWithTextStyle:v46 scale:1];
      sub_ABA7E0();
      sub_ABA810();
      sub_ABA840();
      v35 = v55;
      (*v47)(v54, v8, v55);
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 24) = v28;
      v38 = v28;
      sub_ABA7D0();
      v39 = sub_ABA8D0();
      (*v26)(v8, v35);
      [v3 addSubview:v39];
      v40 = v56;
      v57 = *&v3[v56];
      v41 = v39;

      sub_AB9730();
      if (*(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v57 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      v42 = v57;
      v43 = *&v3[v40];
      *&v3[v40] = v57;

      v44 = sub_12CF08(v43, v42);

      if ((v44 & 1) == 0)
      {
        [v3 setNeedsLayout];
      }

      if (v49 == v25)
      {
        break;
      }

      ++v25;
      if (v48)
      {
        goto LABEL_19;
      }

LABEL_20:
      ;
    }
  }

  return result;
}

void sub_AE7AC(double a1, double a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_recordLabels);
  if (!v4)
  {
    return;
  }

  if (v4 >> 62)
  {
    if (sub_ABB060() < 1)
    {
      return;
    }
  }

  else if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) < 1)
  {
    return;
  }

  v6 = OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_recordLabelLinkViews;
  v7 = *(v2 + OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_recordLabelLinkViews);
  if (v7 >> 62)
  {
    if (!sub_ABB060())
    {
      return;
    }
  }

  else if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    return;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    v9 = sub_360660(0, v7);
  }

  else
  {
    if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_30;
    }

    v8 = *(v7 + 32);

    v9 = v8;
  }

  v10 = sub_ADF74();
  [v10 sizeThatFits:{a1, a2}];
  v12 = v11;

  v13 = v12 + 6.0;
  [v9 sizeThatFits:{a1, a2}];
  v15 = *(v2 + v6);
  if (!(v15 >> 62))
  {
    v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
    v17 = v13 + v14;
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_27:

    return;
  }

  v27 = v14;
  v16 = sub_ABB060();
  v17 = v13 + v27;
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_11:
  if (v16 < 1)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v18 = 0;
  v19 = 0.0;
  v20 = v17;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v21 = sub_360660(v18, v15);
    }

    else
    {
      v21 = *(v15 + 8 * v18 + 32);
    }

    v22 = v21;
    ++v18;
    [v21 sizeThatFits:{a1, a2}];
    v24 = v23;
    v26 = v25;

    if (v19 + v24 <= a1)
    {
      v19 = v19 + v24;
    }

    else
    {
      v20 = v20 + v26;
      v19 = v24;
    }
  }

  while (v16 != v18);
}

void sub_AEA7C()
{
  v34.receiver = v0;
  v34.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  [v0 effectiveUserInterfaceLayoutDirection];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_ADF74();
  [v9 sizeThatFits:{v6, v8}];
  v11 = v10;
  v13 = v12;

  v14 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView____lazy_storage___titleLabel];
  sub_ABA490();
  [v14 setFrame:?];

  v35.origin.x = v2;
  v35.origin.y = v4;
  v35.size.width = v11;
  v35.size.height = v13;
  v15 = CGRectGetMaxY(v35) + 6.0;
  v36.origin.x = v2;
  v36.origin.y = v4;
  v36.size.width = v11;
  v36.size.height = v13;
  v16 = v8 - CGRectGetMaxY(v36);
  v37.origin.x = v2;
  v37.origin.y = v15;
  v37.size.width = v6;
  v37.size.height = v16;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v2;
  v38.origin.y = v15;
  v32 = v6;
  v38.size.width = v6;
  v38.size.height = v16;
  MinY = CGRectGetMinY(v38);
  v18 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_recordLabelLinkViews];
  if (v18 >> 62)
  {
    v19 = sub_ABB060();
    if (!v19)
    {
      return;
    }
  }

  else
  {
    v19 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    if (!v19)
    {
      return;
    }
  }

  if (v19 < 1)
  {
    __break(1u);
  }

  else
  {
    v31 = v15;

    v20 = 0;
    v30 = v16;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = sub_360660(v20, v18);
      }

      else
      {
        v23 = *(v18 + 8 * v20 + 32);
      }

      v24 = v23;
      [v23 sizeThatFits:{v32, v16, *&v30}];
      v26 = v25;
      v28 = v27;
      v29 = MinX + v25;
      v42.origin.x = v2;
      v42.origin.y = v31;
      v42.size.width = v32;
      v42.size.height = v16;
      if (CGRectGetMaxX(v42) < v29)
      {
        v39.origin.x = v2;
        v39.origin.y = v31;
        v39.size.width = v32;
        v39.size.height = v16;
        MinX = CGRectGetMinX(v39);
        v21 = MinY + v28;
      }

      else
      {
        v21 = MinY;
      }

      ++v20;
      sub_ABA490();
      [v24 setFrame:?];
      v40.origin.x = MinX;
      v40.origin.y = v21;
      v40.size.width = v26;
      v40.size.height = v28;
      MaxX = CGRectGetMaxX(v40);
      v41.origin.x = MinX;
      v41.origin.y = v21;
      v41.size.width = v26;
      v41.size.height = v28;
      MinY = CGRectGetMinY(v41);

      MinX = MaxX;
      v16 = v30;
    }

    while (v19 != v20);
  }
}

id sub_AEDC8(void *a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_9;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_AB92A0();
  v8 = v7;
  if (v6 == sub_AB92A0() && v8 == v9)
  {
  }

  v11 = sub_ABB3C0();

  if ((v11 & 1) == 0)
  {
LABEL_9:
    [v1 invalidateIntrinsicContentSize];
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_AEF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *&Strong[OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_onSelectHandler];
    if (v6)
    {
      sub_307CC(*&Strong[OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_onSelectHandler]);

      v6(a3);
      sub_17654(v6);
    }

    else
    {
    }
  }
}

id sub_AF028()
{
  v0 = sub_AB35C0();
  __chkstk_darwin(v0 - 8);
  v1 = sub_AB9250();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setNumberOfLines:1];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [v2 setTextColor:qword_E718C8];
  [v2 setAdjustsFontForContentSizeCategory:1];
  sub_13C80(0, &qword_DE6EE0);
  v3 = sub_ABA550();
  [v2 setFont:v3];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  sub_36A48();
  sub_ABAA90();
  v4 = sub_AB9260();

  [v2 setText:v4];

  return v2;
}

uint64_t sub_AF260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_recordLabels);
  *(a1 + OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_recordLabels) = a3;
  if (!v9)
  {

    goto LABEL_5;
  }

  swift_bridgeObjectRetain_n();
  v10 = sub_12C8D8(v9, a3);

  if ((v10 & 1) == 0)
  {
LABEL_5:
    sub_AE090();
  }

  v11 = (a1 + OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_onSelectHandler);
  v12 = *(a1 + OBJC_IVAR____TtC16MusicApplicationP33_DFFB545A04BDF8CFD1631A9374555FAE22RecordLabelsDetailView_onSelectHandler);
  *v11 = a4;
  v11[1] = a5;
  sub_307CC(a4);

  return sub_17654(v12);
}

id sub_AF324()
{
  v0 = objc_allocWithZone(type metadata accessor for RecordLabelsDetailView());

  return [v0 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
}

double sub_AF388(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if (a4)
    {
      *&a3 = INFINITY;
    }

    sub_AE7AC(*&a1, *&a3);
  }

  return result;
}

uint64_t sub_AF3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_B055C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_AF458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_B055C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_AF4BC()
{
  sub_B055C();
  sub_AB65B0();
  __break(1u);
}

uint64_t sub_AF5A0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_AF604(uint64_t a1)
{
  v2 = sub_AB6420();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_AB5FF0();
}

uint64_t sub_AF6D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_AF718()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication10DetailCell_footerAudioTraitDescriptions) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10DetailCell_showsAppleDigitalMasterText) = 0;
  v1 = OBJC_IVAR____TtC16MusicApplication10DetailCell_releaseDate;
  v2 = sub_AB3430();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication10DetailCell_trackCountAndDuration);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication10DetailCell_copyright);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabelSelectionHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication10DetailCell_recordLabels) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_AF824(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC8B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[13];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_AF9D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEC8B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEB5F8);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[13];

  return v16(v17, a2, a2, v15);
}

void sub_AFB68()
{
  sub_AFD60(319, &qword_DEC920, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIEdgeInsets(319);
    if (v1 <= 0x3F)
    {
      sub_AFDC4(319, &qword_DEC928, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_AFD60(319, &qword_E247E0, &type metadata accessor for Date, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_AFDC4(319, &qword_DF0B70, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_AFE18(319, &qword_DEC930, &qword_DEC938);
            if (v5 <= 0x3F)
            {
              sub_AFE18(319, &qword_DEC940, &qword_E07D90);
              if (v6 <= 0x3F)
              {
                sub_814B0();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_AFD60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_AFDC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_AFE18(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_AFE98()
{
  result = qword_DF3F70;
  if (!qword_DF3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF3F70);
  }

  return result;
}

uint64_t sub_AFEEC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_AFF30(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_AFF30(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_AFF40(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_AFF30(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_AFF90(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_36B74(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_AFFE0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_36B74(result, a2, a3 & 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So18MPModelRecordLabelCIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_B0058()
{
  result = qword_DECA18;
  if (!qword_DECA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEC9E0);
    sub_B00E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DECA18);
  }

  return result;
}

unint64_t sub_B00E4()
{
  result = qword_DECA20;
  if (!qword_DECA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEC9A8);
    sub_B0170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DECA20);
  }

  return result;
}

unint64_t sub_B0170()
{
  result = qword_DECA28;
  if (!qword_DECA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEC9D8);
    sub_B01FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DECA28);
  }

  return result;
}

unint64_t sub_B01FC()
{
  result = qword_DECA30;
  if (!qword_DECA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEC9D0);
    sub_B0288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DECA30);
  }

  return result;
}

unint64_t sub_B0288()
{
  result = qword_DECA38;
  if (!qword_DECA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEC9C8);
    sub_B0314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DECA38);
  }

  return result;
}

unint64_t sub_B0314()
{
  result = qword_DECA40;
  if (!qword_DECA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEC9C0);
    sub_B03CC();
    sub_36A00(&qword_DEB780, &qword_DEB788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DECA40);
  }

  return result;
}

unint64_t sub_B03CC()
{
  result = qword_DECA48;
  if (!qword_DECA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEC9B8);
    sub_36A00(&qword_DECA50, &qword_DECA58);
    sub_36A00(&qword_DEB890, &qword_DEB898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DECA48);
  }

  return result;
}

unint64_t sub_B04C0()
{
  result = qword_DECA60;
  if (!qword_DECA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DECA60);
  }

  return result;
}

uint64_t sub_B0514()
{

  return swift_deallocObject();
}

unint64_t sub_B055C()
{
  result = qword_DECA68;
  if (!qword_DECA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DECA68);
  }

  return result;
}

void sub_B05B8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v10 - 8);
  v12 = v70 - v11;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_layoutStyle] = 0;
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_approveRequestHandler];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_declineRequestHandler];
  *v16 = 0;
  *(v16 + 1) = 0;
  v4[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_isFollowButtonHidden] = 0;
  v17 = OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController;
  type metadata accessor for SocialRelationshipButtonController();
  swift_allocObject();
  *&v4[v17] = sub_49F63C(1, 0, 0);
  v18 = &v4[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_textComponents];
  *v18 = sub_B2470();
  v18[1] = v19;
  v18[2] = v20;
  *&v5[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___approveButton] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___declineButton] = 0;
  v21 = type metadata accessor for SocialPersonHorizontalCell();
  v80.receiver = v5;
  v80.super_class = v21;
  v22 = objc_msgSendSuper2(&v80, "initWithFrame:", a1, a2, a3, a4);
  v23 = &v22[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  v24 = *v23;
  v25 = *(v23 + 1);
  *v23 = 0x4010000000000000;
  *(v23 + 8) = xmmword_AFB130;
  *(v23 + 3) = 0x4030000000000000;
  v81 = xmmword_AFB140;
  v82 = xmmword_AFB150;
  v78 = v24;
  v79 = v25;
  v26 = v22;
  if (sub_AB38D0())
  {
    [v26 setNeedsLayout];
  }

  v27 = vdupq_n_s64(0x4048000000000000uLL);
  *&v26[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = v27;
  v77 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v28 = *&v26[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v29 = *(v28 + 80);
  v30 = *(v28 + 88);
  *(v28 + 80) = v27;
  sub_75614(v29, v30);
  sub_ABA670();
  v31 = sub_ABA680();
  (*(*(v31 - 8) + 56))(v12, 0, 1, v31);
  sub_200394(v12);
  v32 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  v37 = v32[4];
  v75 = v32[5];
  v38 = v75;
  v76 = v37;
  v39 = &v26[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v74 = *&v26[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v73 = *&v26[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v72 = *&v26[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v71 = *&v26[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  v70[2] = *&v26[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 32];
  v70[1] = *&v26[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 40];
  *v39 = v33;
  *(v39 + 1) = v34;
  *(v39 + 2) = v35;
  *(v39 + 3) = v36;
  *(v39 + 4) = v37;
  *(v39 + 5) = v38;
  v40 = v33;
  v41 = v34;
  v42 = v35;
  v43 = v36;
  v44 = v40;
  v45 = v41;
  v46 = v42;
  v47 = v43;
  sub_2F1C8(v74, v73, v72, v71);
  v48 = v76;
  v49 = *&v26[v77];
  v50 = *(v49 + 168);
  v81 = *(v49 + 152);
  v82 = v50;
  v83 = *(v49 + 184);
  *(v49 + 152) = v33;
  *(v49 + 160) = v34;
  *(v49 + 168) = v35;
  *(v49 + 176) = v36;
  v51 = v75;
  *(v49 + 184) = v48;
  *(v49 + 192) = v51;
  v52 = v44;
  v53 = v45;
  v54 = v46;
  v55 = v47;
  v56 = v52;
  v57 = v53;
  v58 = v54;
  v59 = v55;
  sub_75948(&v81);
  sub_B2A40(&v81);

  v60 = objc_opt_self();

  sub_74DD4([v60 systemGray3Color]);

  v61 = v26[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v26[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v61 & 1) == 0)
  {
    [v26 setNeedsLayout];
  }

  v62 = *&v26[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  v63 = *&v26[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_textComponents + 16];
  if (!(v63 >> 62))
  {
    v64 = *(&dword_10 + (v63 & 0xFFFFFFFFFFFFFF8));
    if (v64)
    {
      goto LABEL_7;
    }

LABEL_15:

LABEL_16:
    v67 = *&v26[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController];
    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v69 = *(v67 + 72);
    *(v67 + 72) = sub_B2AE0;
    *(v67 + 80) = v68;

    sub_17654(v69);

    return;
  }

  v64 = sub_ABB060();
  if (!v64)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v64 >= 1)
  {

    for (i = 0; i != v64; ++i)
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v66 = sub_36003C(i, v63);
      }

      else
      {
        v66 = *(v63 + 8 * i + 32);
      }

      TextStackView.add(_:)(v66);
    }

    goto LABEL_16;
  }

  __break(1u);
}

void sub_B0BB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong _isInAWindow])
    {
      [v1 setNeedsLayout];
      v2 = objc_opt_self();
      v3 = swift_allocObject();
      *(v3 + 16) = v1;
      aBlock[4] = sub_B2B20;
      aBlock[5] = v3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_17;
      v4 = _Block_copy(aBlock);
      v5 = v1;

      [v2 animateWithDuration:2 delay:v4 options:0 animations:0.2 completion:0.0];

      _Block_release(v4);
    }

    else
    {
    }
  }
}

void sub_B0D4C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog;
  if (!*&v0[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog])
  {
    v2 = v0;
    sub_13C80(0, &qword_E04530);
    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name];
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name + 8];

    v5 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v3, v4, [v0 effectiveUserInterfaceLayoutDirection], 0);

    if (v5)
    {
      v6 = *&v0[v1];
      *&v2[v1] = v5;
      v7 = v5;

      sub_74EA4(v5);
      sub_B0D4C();
    }
  }
}

void sub_B0E70(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
  *(v2 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = a1;
  v5 = a1;

  sub_74EA4(a1);
  sub_B0D4C();
}

uint64_t sub_B0EFC(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name + 8];
  if (v6 != result || v5 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {

      v8 = String.trim()();

      v9 = *&v3[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_textComponents];
      swift_beginAccess();
      v9[7] = v8;

      sub_2EB704();
      v10 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog;
      if (!*&v3[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog])
      {
        sub_13C80(0, &qword_E04530);
        v11 = *v4;
        v12 = v4[1];

        v13 = static MPArtworkCatalog.monogram(for:layoutDirection:)(v11, v12, [v3 effectiveUserInterfaceLayoutDirection], 0);

        v14 = *&v3[v10];
        *&v3[v10] = v13;
        v15 = v13;

        sub_74EA4(v13);
        sub_B0D4C();
      }

      return [v3 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_B1070(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_B0EFC(v4, v5);
}

uint64_t sub_B10C0(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_textComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_B1194(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_textComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }
}

void sub_B12AC()
{
  v1 = v0;
  v65.receiver = v0;
  v65.super_class = type metadata accessor for SocialPersonHorizontalCell();
  objc_msgSendSuper2(&v65, "layoutSubviews");
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v0 traitCollection];
  [v11 displayScale];
  [v0 effectiveUserInterfaceLayoutDirection];
  [v0 music_inheritedLayoutInsets];
  v66.origin.x = UIEdgeInsetsInsetRect(v4, v6, v8, v10, v12, v13);
  x = v66.origin.x;
  width = v66.size.width;
  height = v66.size.height;
  y = v66.origin.y;
  CGRectGetMinX(v66);
  sub_76368(0, 0, 1);
  v61 = v16;
  sub_ABA470();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_ABA490();
  if (sub_76B28(v25, v26, v27, v28))
  {
    v67.origin.x = v18;
    v67.origin.y = v20;
    v67.size.width = v22;
    v67.size.height = v24;
    v29 = CGRectGetWidth(v67) + 0.0 + 16.0;
    x = x + v29;
    v30 = width - v29;
  }

  else
  {
    v30 = width;
  }

  v31 = v0[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_layoutStyle];
  v32 = *(*&v1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController] + 160);
  v33 = v32;
  v34 = height;
  if (v31)
  {
    if ([v32 isDescendantOfView:{v2, v61}])
    {
      [v33 removeFromSuperview];
    }

    sub_B1958();
    v36 = v35;
    v37 = [v35 isDescendantOfView:v2];

    if ((v37 & 1) == 0)
    {
      [v2 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___approveButton]];
    }

    sub_B1C94();
    v39 = v38;
    v40 = [v38 isDescendantOfView:v2];

    if ((v40 & 1) == 0)
    {
      [v2 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___declineButton]];
    }

    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = v30;
    v68.size.height = height;
    CGRectGetMaxX(v68);
    sub_ABA470();
    v42 = v41;
    v43 = *&v1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___approveButton];
    sub_ABA490();
    [v43 setFrame:0x4038000000000000];

    v69.origin.x = x;
    v69.size.height = height;
    v69.origin.y = y;
    v62 = v30 - (v42 + 16.0);
    v69.size.width = v62;
    CGRectGetMaxX(v69);
    sub_ABA470();
    v45 = v44;
    v46 = *&v1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___declineButton];
    v34 = height;
    sub_ABA490();
    [v46 setFrame:0x4038000000000000];

    v47 = v45 + 20.0;
    v48 = v62;
  }

  else
  {
    sub_B1958();
    v50 = v49;
    v51 = [v49 isDescendantOfView:{v2, v61}];

    if (v51)
    {
      [*&v1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___approveButton] removeFromSuperview];
    }

    sub_B1C94();
    v53 = v52;
    v54 = [v52 isDescendantOfView:v2];

    if (v54)
    {
      [*&v1[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___declineButton] removeFromSuperview];
    }

    if (([v33 isDescendantOfView:v2] & 1) == 0)
    {
      [v2 addSubview:v33];
    }

    [v33 sizeThatFits:{v30, height}];
    v56 = v55;
    v70.origin.x = x;
    v70.origin.y = y;
    v70.size.width = v30;
    v70.size.height = height;
    CGRectGetMaxX(v70);
    sub_ABA470();
    v58 = v57;
    sub_ABA490();
    [v33 setFrame:v56];
    v47 = v58 + 16.0;
    v48 = v30;
  }

  v59 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
  [*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] sizeThatFits:{v48 - v47, v34}];
  v60 = *&v1[v59];
  sub_ABA490();
  [v60 setFrame:?];
}

void sub_B1958()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___approveButton;
  v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___approveButton);
  if (v6)
  {
    goto LABEL_6;
  }

  v7 = objc_opt_self();
  v8 = [v7 buttonWithType:1];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 whiteColor];
  [v10 setTintColor:v11];

  v12 = v10;
  v13 = [v9 systemGreenColor];
  [v12 setBackgroundColor:v13];

  [v7 easyTouchDefaultHitRectInsets];
  [v12 setHitRectInsets:?];
  v14 = UIView.Corner.small.unsafeMutableAddressor();
  v15 = sub_ABA680();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v4, v14, v15);
  (*(v16 + 56))(v4, 0, 1, v15);
  sub_ABA6A0();

  v17 = objc_opt_self();
  v18 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v19 = [v17 imageNamed:v18 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (v19)
  {
    [v12 setImage:v19 forState:0];

    v20 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v21 = sub_13C80(0, &qword_E0BC00);
    ControlEventHandling<>.on(_:handler:)(64, sub_B28F4, v20, v21);

    v22 = *(v1 + v5);
    *(v1 + v5) = v12;
    v12;

    v6 = 0;
LABEL_6:
    v23 = v6;
    return;
  }

  __break(1u);
}

void sub_B1C94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___declineButton;
  v6 = *(v0 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___declineButton);
  if (v6)
  {
    goto LABEL_6;
  }

  v7 = objc_opt_self();
  v8 = [v7 buttonWithType:1];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 whiteColor];
  [v10 setTintColor:v11];

  v12 = v10;
  v13 = [v9 systemRedColor];
  [v12 setBackgroundColor:v13];

  [v7 easyTouchDefaultHitRectInsets];
  [v12 setHitRectInsets:?];
  v14 = UIView.Corner.small.unsafeMutableAddressor();
  v15 = sub_ABA680();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v4, v14, v15);
  (*(v16 + 56))(v4, 0, 1, v15);
  sub_ABA6A0();

  v17 = objc_opt_self();
  v18 = sub_AB9260();
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v19 = [v17 imageNamed:v18 inBundle:qword_E71620 compatibleWithTraitCollection:0];

  if (v19)
  {
    [v12 setImage:v19 forState:0];

    v20 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v21 = sub_13C80(0, &qword_E0BC00);
    ControlEventHandling<>.on(_:handler:)(64, sub_B28D0, v20, v21);

    v22 = *(v1 + v5);
    *(v1 + v5) = v12;
    v12;

    v6 = 0;
LABEL_6:
    v23 = v6;
    return;
  }

  __break(1u);
}

void sub_B1FD0(uint64_t a1, uint64_t a2, void *a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_layoutStyle] == 1)
  {
    v5 = *&Strong[*a3];
    if (v5)
    {
      v6 = Strong;

      v5(v6);
      sub_17654(v5);
      Strong = v6;
    }
  }
}

void sub_B2124()
{

  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_approveRequestHandler));
  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_declineRequestHandler));

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___declineButton);
}

id sub_B21FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialPersonHorizontalCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SocialPersonHorizontalCell()
{
  result = qword_DECAB0;
  if (!qword_DECAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_B2408()
{
  result = qword_DECAC0;
  if (!qword_DECAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DECAC0);
  }

  return result;
}

uint64_t sub_B2470()
{
  sub_13C80(0, &qword_DE6EE0);
  v0 = sub_ABA560();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v22[0] = v1;
  *(&v22[0] + 1) = v4;
  v22[1] = xmmword_AF7C20;
  v23 = 0;
  v24 = 0;
  v25 = v0;
  v26 = 1;
  v27 = xmmword_AF8290;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(1701667182, 0xE400000000000000, v22);
  v15 = v3;
  v14 = v4;
  v13 = v0;
  sub_2F118(v22, v35);

  v6 = sub_ABA560();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v7 = qword_E718C8;
  v8 = qword_E718C8;
  v9 = [v2 clearColor];
  *&v16[0] = v7;
  *(&v16[0] + 1) = v9;
  v16[1] = xmmword_AF7C20;
  v17 = 0;
  v18 = 0;
  v19 = v6;
  v20 = 1;
  v21 = xmmword_AFB160;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF7C50;
  *(v11 + 32) = v5;
  *(v11 + 40) = v10;
  sub_2F118(v16, v35);

  v28[0] = v7;
  v28[1] = v9;
  v29 = xmmword_AF7C20;
  v30 = 0;
  v31 = 0;
  v32 = v6;
  v33 = 1;
  v34 = xmmword_AFB160;
  sub_2F174(v28);
  v35[0] = v1;
  v35[1] = v4;
  v36 = xmmword_AF7C20;
  v37 = 0;
  v38 = 0;
  v39 = v0;
  v40 = 1;
  v41 = xmmword_AF8290;
  sub_2F174(v35);
  return v5;
}

double sub_B2768(void *a1, double a2)
{
  type metadata accessor for CGSize(0);
  if ((sub_AB38D0() & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    sub_AB38D0();
  }

  sub_B2470();
  sub_2F48A4(v4, a1, 0, 0);

  return a2;
}

uint64_t sub_B2898()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

void sub_B2918()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_name);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_layoutStyle) = 0;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_approveRequestHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_declineRequestHandler);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_isFollowButtonHidden) = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController;
  type metadata accessor for SocialRelationshipButtonController();
  swift_allocObject();
  *(v0 + v6) = sub_49F63C(1, 0, 0);
  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_textComponents);
  *v7 = sub_B2470();
  v7[1] = v8;
  v7[2] = v9;
  *(v1 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___approveButton) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell____lazy_storage___declineButton) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_B2A40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF8690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B2AA8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_B2AE8()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_B2B48(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_supertitle];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_title];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_stationDescription];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_layoutStyle] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_badgeView] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_textComponents];
  *v12 = sub_B41A8();
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v15;
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_uniformTextComponents];
  *v16 = sub_B4964();
  v16[1] = v17;
  v16[2] = v18;
  v16[3] = v19;
  v65.receiver = v4;
  v65.super_class = type metadata accessor for RadioStationCell();
  v20 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  v21 = [v20 layer];
  [v21 setAllowsGroupOpacity:0];

  v22 = [v20 layer];
  [v22 setAllowsGroupBlending:0];

  v23 = &v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  *v23 = 0x4020000000000000;
  *(v23 + 8) = xmmword_AF82A0;
  *(v23 + 3) = 0x4028000000000000;
  v66 = xmmword_AFB2E0;
  v67 = xmmword_AFB2F0;
  if (sub_AB38D0())
  {
    [v20 setNeedsLayout];
  }

  v24 = vdupq_n_s64(0x4059800000000000uLL);
  *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = v24;
  v64 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v25 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v26 = *(v25 + 80);
  v27 = *(v25 + 88);
  *(v25 + 80) = v24;
  sub_75614(v26, v27);
  v28 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v29 = *v28;
  v30 = v28[1];
  v32 = v28[2];
  v31 = v28[3];
  v62 = v28[5];
  v63 = v28[4];
  v33 = &v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v61 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v60 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v59 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v58 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  *v33 = *v28;
  v33[1] = v30;
  v33[2] = v32;
  v33[3] = v31;
  v33[4] = v63;
  v33[5] = v62;
  v34 = v29;
  v35 = v30;
  v36 = v32;
  v37 = v31;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  sub_2F1C8(v61, v60, v59, v58);
  v42 = *&v20[v64];
  v43 = *(v42 + 168);
  v66 = *(v42 + 152);
  v67 = v43;
  v68 = *(v42 + 184);
  *(v42 + 152) = v29;
  *(v42 + 160) = v30;
  *(v42 + 168) = v32;
  *(v42 + 176) = v31;
  *(v42 + 184) = v63;
  *(v42 + 192) = v62;
  v44 = v38;
  v45 = v39;
  v46 = v40;
  v47 = v41;
  v48 = v44;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  sub_75948(&v66);
  sub_B2A40(&v66);

  v52 = v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v52 & 1) == 0)
  {
    [v20 setNeedsLayout];
  }

  v53 = *&v20[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  v54 = *&v20[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_textComponents + 24];
  if (!(v54 >> 62))
  {
    v55 = *(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8));
    if (v55)
    {
      goto LABEL_7;
    }

LABEL_15:

    return;
  }

  v55 = sub_ABB060();
  if (!v55)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v55 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v55; ++i)
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        v57 = sub_36003C(i, v54);
      }

      else
      {
        v57 = *(v54 + 8 * i + 32);
      }

      TextStackView.add(_:)(v57);
    }
  }
}

uint64_t sub_B3044(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_supertitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_supertitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_supertitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {

    v9 = String.trim()();

    v10 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_textComponents];
    swift_beginAccess();
    v10[7] = v9;

    v11 = v2;
    sub_2EB704();
    v12 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_uniformTextComponents];
    swift_beginAccess();
    v12[7] = v9;

    sub_2EB704();
    [v11 setNeedsLayout];
  }
}

uint64_t sub_B3194(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_supertitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_supertitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {

      v4 = String.trim()();

      v5 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_textComponents];
      swift_beginAccess();
      v5[7] = v4;

      v6 = v2;
      sub_2EB704();
      v7 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_uniformTextComponents];
      swift_beginAccess();
      v7[7] = v4;

      sub_2EB704();
      return [v6 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_B32CC(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {

    v9 = String.trim()();

    v10 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_textComponents + 8];
    swift_beginAccess();
    v10[7] = v9;

    v11 = v2;
    sub_2EB704();
    v12 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_uniformTextComponents + 8];
    swift_beginAccess();
    v12[7] = v9;

    sub_2EB704();
    [v11 setNeedsLayout];
  }
}

uint64_t sub_B3424(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {

      v4 = String.trim()();

      v5 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_textComponents + 8];
      swift_beginAccess();
      v5[7] = v4;

      v6 = v2;
      sub_2EB704();
      v7 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_uniformTextComponents + 8];
      swift_beginAccess();
      v7[7] = v4;

      sub_2EB704();
      return [v6 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_B3564(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);
}

uint64_t sub_B35F8(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_stationDescription];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_stationDescription];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_stationDescription + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {

    v9 = String.trim()();

    v10 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_textComponents + 16];
    swift_beginAccess();
    v10[7] = v9;

    v11 = v2;
    sub_2EB704();
    v12 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_uniformTextComponents + 16];
    swift_beginAccess();
    v12[7] = v9;

    sub_2EB704();
    [v11 setNeedsLayout];
  }
}

uint64_t sub_B3750(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_stationDescription] != result || *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_stationDescription + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {

      v4 = String.trim()();

      v5 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_textComponents + 16];
      swift_beginAccess();
      v5[7] = v4;

      v6 = v2;
      sub_2EB704();
      v7 = *&v2[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_uniformTextComponents + 16];
      swift_beginAccess();
      v7[7] = v4;

      sub_2EB704();
      return [v6 setNeedsLayout];
    }
  }

  return result;
}

void sub_B3864(char a1)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_layoutStyle];
  if (v2 == (a1 & 1))
  {
    return;
  }

  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
  if ((v2 & 1) == 0)
  {
    v9 = *&v1[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_textComponents + 24];
    v10 = v3;
    TextStackView.removeAll()();
    if (v9 >> 62)
    {
      v11 = sub_ABB060();
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
      if (!v11)
      {
        goto LABEL_23;
      }
    }

    if (v11 >= 1)
    {
      for (i = 0; i != v11; ++i)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = sub_36003C(i, v9);
        }

        else
        {
          v13 = *(v9 + 8 * i + 32);
        }

        TextStackView.add(_:)(v13);
      }

      goto LABEL_23;
    }

    goto LABEL_27;
  }

  v4 = *&v1[OBJC_IVAR____TtC16MusicApplication16RadioStationCell_uniformTextComponents + 24];
  v5 = v3;
  TextStackView.removeAll()();
  if (v4 >> 62)
  {
    v6 = sub_ABB060();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
LABEL_5:
      if (v6 >= 1)
      {
        for (j = 0; j != v6; ++j)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = sub_36003C(j, v4);
          }

          else
          {
            v8 = *(v4 + 8 * j + 32);
          }

          TextStackView.add(_:)(v8);
        }

        goto LABEL_23;
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }
  }

LABEL_23:

  [v1 setNeedsLayout];
}

void sub_B3A4C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication16RadioStationCell_layoutStyle);
  *(v1 + OBJC_IVAR____TtC16MusicApplication16RadioStationCell_layoutStyle) = a1 & 1;
  sub_B3864(v2);
}

uint64_t sub_B3A68(uint64_t a1, uint64_t a2)
{
  v25 = sub_AB2E70();
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_AB2F50();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_AB2F20();
  v10 = *(v24 - 8);
  v11 = __chkstk_darwin(v24);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = swift_projectBox();
  v26 = a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA750);
  swift_allocObject();

  sub_AB3890();
  sub_AB3880();

  swift_beginAccess();
  v17 = v16;
  v18 = v23;
  (*(v7 + 16))(v9, v17, v23);
  v19 = v25;
  (*(v4 + 104))(v6, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v25);
  sub_AB2E40();
  (*(v4 + 8))(v6, v19);
  (*(v7 + 8))(v9, v18);
  sub_13C80(0, &unk_DECB20);
  v20 = v24;
  (*(v10 + 16))(v13, v15, v24);
  v21 = sub_ABA1C0();
  (*(v10 + 8))(v15, v20);
  return v21;
}

uint64_t sub_B3DF0()
{
}

id sub_B3ECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioStationCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RadioStationCell()
{
  result = qword_DECB00;
  if (!qword_DECB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_B40DC()
{
  result = qword_DECB10;
  if (!qword_DECB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DECB10);
  }

  return result;
}

void *sub_B4178()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication16RadioStationCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_B41A8()
{
  sub_13C80(0, &qword_DE6EE0);
  v0 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v1 = qword_E718C8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  *&v41[0] = v1;
  *(&v41[0] + 1) = v4;
  v41[1] = xmmword_AF7C20;
  v42 = 0;
  v43 = 0;
  v44 = v0;
  v45 = 1;
  v46 = xmmword_AF9C80;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x7469747265707573, 0xEA0000000000656CLL, v41);
  v6 = objc_opt_self();
  v28 = v3;
  v27 = v4;
  v26 = v0;
  sub_2F118(v41, v51);
  v7 = v5;

  v8 = [v6 preferredFontForTextStyle:UIFontTextStyleBody];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v25 = qword_E718D8;
  v9 = qword_E718D8;
  v10 = [v2 clearColor];
  *&v35[0] = v25;
  *(&v35[0] + 1) = v10;
  v35[1] = xmmword_AF7C20;
  v36 = 0;
  v37 = 0;
  v38 = v8;
  v39 = 2;
  v40 = xmmword_AF7C30;
  swift_allocObject();
  v11 = v8;
  v24 = v8;
  v12 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v35);
  v13 = objc_opt_self();
  v23 = v9;
  v22 = v10;
  v21 = v11;
  sub_2F118(v35, v51);

  v14 = [v13 defaultParagraphStyle];
  [v14 mutableCopy];

  sub_ABAB50();
  sub_13C80(0, &unk_E05360);
  swift_dynamicCast();
  v15 = v47[0];
  swift_unknownObjectRelease();
  [v15 setLineBreakMode:4];
  sub_AB2F50();
  v16 = swift_allocBox();
  sub_AB2F40();
  v51[0] = sub_ABA560();
  sub_B4860();
  sub_AB2F70();
  v51[0] = v1;
  sub_B48B4();
  sub_AB2F70();
  v51[0] = v15;
  sub_B4908();
  v17 = v15;
  sub_AB2F70();
  *&v29 = 0xD000000000000012;
  *(&v29 + 1) = 0x8000000000B4E950;
  v30 = sub_B495C;
  v31 = v16;
  v32 = xmmword_AFA860;
  v33 = xmmword_AFB300;
  v34 = xmmword_AF7C30;
  swift_allocObject();
  v18 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000012, 0x8000000000B4E950, &v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF82E0;
  *(v19 + 32) = v7;
  *(v19 + 40) = v12;
  *(v19 + 48) = v18;

  sub_2F118(&v29, v51);

  sub_2F174(v41);
  v47[0] = 0xD000000000000012;
  v47[1] = 0x8000000000B4E950;
  v47[2] = sub_B495C;
  v47[3] = v16;
  v48 = xmmword_AFA860;
  v49 = xmmword_AFB300;
  v50 = xmmword_AF7C30;
  sub_2F174(v47);
  v51[0] = v25;
  v51[1] = v10;
  v52 = xmmword_AF7C20;
  v53 = 0;
  v54 = 0;
  v55 = v24;
  v56 = 2;
  v57 = xmmword_AF7C30;
  sub_2F174(v51);

  return v7;
}

uint64_t sub_B4734(void *a1)
{
  sub_B41A8();
  v3 = v2;
  type metadata accessor for CGSize(0);
  if ((sub_AB38D0() & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    sub_AB38D0();
  }

  sub_2F48A4(v3, a1, 0, 0);
}

unint64_t sub_B4860()
{
  result = qword_DFA740;
  if (!qword_DFA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DFA740);
  }

  return result;
}

unint64_t sub_B48B4()
{
  result = qword_DECB18;
  if (!qword_DECB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DECB18);
  }

  return result;
}

unint64_t sub_B4908()
{
  result = qword_E05370;
  if (!qword_E05370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E05370);
  }

  return result;
}

uint64_t sub_B4964()
{
  v0 = objc_opt_self();
  v1 = [v0 preferredFontForTextStyle:UIFontTextStyleFootnote];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v2 = qword_E718C8;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  v26 = v2;
  *&v39[0] = v2;
  *(&v39[0] + 1) = v5;
  v39[1] = xmmword_AF7C20;
  v40 = 0;
  v41 = 0;
  v42 = v1;
  v43 = 1;
  v44 = xmmword_AF9C80;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x7469747265707573, 0xEA0000000000656CLL, v39);
  v22 = v4;
  v25 = v5;
  v21 = v5;
  v20 = v1;
  sub_2F118(v39, v59);
  v24 = v6;

  v7 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v23 = v1;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v8 = qword_E718D8;
  v9 = qword_E718D8;
  v10 = [v3 clearColor];
  *&v33[0] = v8;
  *(&v33[0] + 1) = v10;
  v33[1] = xmmword_AF7C20;
  v34 = 0;
  v35 = 0;
  v36 = v7;
  v37 = 2;
  v38 = xmmword_AF7C30;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v33);
  v19 = v9;
  v18 = v10;
  v17 = v7;
  sub_2F118(v33, v59);

  v12 = [v0 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v13 = [v3 clearColor];
  *&v27[0] = v26;
  *(&v27[0] + 1) = v13;
  v27[1] = xmmword_AF7C20;
  v28 = 0;
  v29 = 0;
  v30 = v12;
  v31 = 2;
  v32 = xmmword_AF7C30;
  swift_allocObject();
  v14 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF82E0;
  *(v15 + 32) = v24;
  *(v15 + 40) = v11;
  *(v15 + 48) = v14;
  sub_2F118(v27, v59);

  v45[0] = v26;
  v45[1] = v13;
  v46 = xmmword_AF7C20;
  v47 = 0;
  v48 = 0;
  v49 = v12;
  v50 = 2;
  v51 = xmmword_AF7C30;
  sub_2F174(v45);
  v52[0] = v8;
  v52[1] = v10;
  v53 = xmmword_AF7C20;
  v54 = 0;
  v55 = 0;
  v56 = v7;
  v57 = 2;
  v58 = xmmword_AF7C30;
  sub_2F174(v52);
  v59[0] = v26;
  v59[1] = v25;
  v60 = xmmword_AF7C20;
  v61 = 0;
  v62 = 0;
  v63 = v23;
  v64 = 1;
  v65 = xmmword_AF9C80;
  sub_2F174(v59);
  return v24;
}

void sub_B4DA8()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication16RadioStationCell_supertitle);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication16RadioStationCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication16RadioStationCell_stationDescription);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16RadioStationCell_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication16RadioStationCell_badgeView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication16RadioStationCell_textComponents);
  *v4 = sub_B41A8();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  v8 = (v0 + OBJC_IVAR____TtC16MusicApplication16RadioStationCell_uniformTextComponents);
  *v8 = sub_B4964();
  v8[1] = v9;
  v8[2] = v10;
  v8[3] = v11;
  sub_ABAFD0();
  __break(1u);
}

void sub_B4E8C(void *a1)
{
  *&v1[OBJC_IVAR____TtC16MusicApplication21PlaylistModelResponse_underlyingResponseInvalidationObserver] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication21PlaylistModelResponse_underlyingModelResponse] = a1;
  v2 = a1;
  v3 = [v2 request];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PlaylistModelResponse();
  v4 = objc_msgSendSuper2(&v11, "initWithRequest:", v3);

  if (v4)
  {
    v5 = v4;
    v6 = [v2 results];
    [v5 setResults:v6];

    v7 = MPModelResponseDidInvalidateNotification;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = v2;
    v10 = v7;

    type metadata accessor for NotificationObserver();
    swift_allocObject();
    *&v5[OBJC_IVAR____TtC16MusicApplication21PlaylistModelResponse_underlyingResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v10, v2, 1, 1, sub_B5984, v8);

    if (([v9 isValid] & 1) == 0)
    {
      [v5 _invalidate];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_B5160(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  v7 = *&v3[OBJC_IVAR____TtC16MusicApplication21PlaylistModelResponse_underlyingModelResponse];
  type metadata accessor for EditingModelResponse();
  if (swift_dynamicCastClass())
  {
    v33 = a2;
    v34 = a3;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_780C4;
    v32 = &block_descriptor_19_0;
    v8 = _Block_copy(&aBlock);
    sub_307CC(a2);

    [v7 getChangeDetailsFromPreviousResponse:a1 completion:v8];
    sub_17654(a2);
    _Block_release(v8);
    return;
  }

  if (!a1)
  {

LABEL_25:
    v24 = a1;
    v33 = a2;
    v34 = a3;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_780C4;
    v32 = &block_descriptor_13_0;
    v25 = _Block_copy(&aBlock);

    [v7 getChangeDetailsFromPreviousResponse:v24 completion:v25];
    sub_17654(a2);
    _Block_release(v25);

    return;
  }

  v9 = swift_dynamicCastClass();
  if (!v9)
  {

    goto LABEL_23;
  }

  v10 = v9;
  sub_307CC(a2);
  v11 = a1;
  v12 = [v10 results];
  if (!v12)
  {
LABEL_10:

    goto LABEL_23;
  }

  v13 = v12;
  type metadata accessor for EditingSectionedCollection();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

LABEL_14:
    goto LABEL_23;
  }

  if (*(*&v14[OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_changeRecords] + 16))
  {

    goto LABEL_10;
  }

  v26 = v14;
  v27 = v11;
  v28 = [v14 totalItemCount];
  v15 = [v3 results];
  if (!v15)
  {
    __break(1u);
    goto LABEL_29;
  }

  v16 = v15;
  v17 = [v15 totalItemCount];

  if (v28 != v17)
  {

LABEL_23:
    type metadata accessor for PlaylistModelResponse();
    v23 = swift_dynamicCastClass();
    if (v23)
    {
      a1 = *(v23 + OBJC_IVAR____TtC16MusicApplication21PlaylistModelResponse_underlyingModelResponse);
    }

    goto LABEL_25;
  }

  v18 = [v26 numberOfSections];
  v19 = [v3 results];
  if (!v19)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 numberOfSections];

  if (v18 != v21)
  {

    goto LABEL_14;
  }

  sub_60044();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_B5A0C, v22);
  sub_17654(a2);
}

void sub_B5534(void (*a1)(id))
{
  v2 = objc_allocWithZone(MPChangeDetails);
  v5[4] = UIScreen.Dimensions.size.getter;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1546C;
  v5[3] = &block_descriptor_22_0;
  v3 = _Block_copy(v5);
  v4 = [v2 initWithBlock:v3];
  _Block_release(v3);

  a1(v4);
}

id sub_B5614(uint64_t a1, uint64_t (*a2)(), uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC16MusicApplication21PlaylistModelResponse_underlyingModelResponse);
  v23 = &OBJC_PROTOCOL___MPModelResponseDetailedKeepLocalStatusRequesting;
  v8 = swift_dynamicCastObjCProtocolConditional();
  if (v8)
  {
    v9 = v8;
    v21 = a2;
    v22 = a3;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_151E0;
    v20 = &block_descriptor_10;
    v10 = _Block_copy(&aBlock);
    v11 = v7;

    v12 = [v9 newOperationForDetailedKeepLocalStatusConfigurationForSectionAtIndex:a1 responseHandler:v10];
    _Block_release(v10);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    v21 = sub_B598C;
    v22 = v13;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_1B5EB4;
    v20 = &block_descriptor_18;
    v14 = _Block_copy(&aBlock);
    v15 = objc_opt_self();

    v12 = [v15 blockOperationWithBlock:v14];
    _Block_release(v14);
  }

  return v12;
}

id sub_B58A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistModelResponse();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_B594C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B59D4()
{

  return swift_deallocObject();
}

uint64_t sub_B5A14()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void sub_B5BB0()
{
  v1 = v0;
  v44.receiver = v0;
  v44.super_class = type metadata accessor for JSItemizedTextListViewController();
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [objc_allocWithZone(type metadata accessor for ItemizedTextListView()) initWithFrame:{v5, v7, v9, v11}];
  v13 = OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_textListView;
  v14 = *&v1[OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_textListView];
  *&v1[OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_textListView] = v12;

  v15 = [v1 view];
  if (!v15)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  if (qword_DE6C58 != -1)
  {
    swift_once();
  }

  [v16 setBackgroundColor:qword_E71898];
  v17 = *&v1[v13];
  if (!v17)
  {
    goto LABEL_23;
  }

  v18 = OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_verticalStackItemPrefersTopHairline;
  v19 = v1[OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_verticalStackItemPrefersTopHairline];
  v20 = v17[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_wantsTopSeparator];
  v17[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_wantsTopSeparator] = v19;
  if (v19 != v20)
  {
    v21 = v17;
    [v21 setNeedsLayout];
    v22 = *&v21[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
    if (v22)
    {

      v22(v21);
      sub_17654(v22);
    }
  }

  v23 = *&v1[v13];
  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = *&v1[OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_viewModel];
  v25 = *&stru_108.sectname[swift_isaMask & *v24];
  v26 = v23;
  v27 = v25();
  v28 = &v26[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_title];
  *v28 = v27;
  v28[1] = v29;

  sub_2AF738();

  v30 = *&v1[v13];
  if (!v30)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v31 = v30;
  *&v31[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems] = sub_B6428(v24);

  sub_2AF8AC();

  v32 = *&v1[v13];
  if (!v32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v33 = v1[v18];
  v34 = v32[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_wantsTopSeparator];
  v32[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_wantsTopSeparator] = v33;
  if (v33 != v34)
  {
    v35 = v32;
    [v35 setNeedsLayout];
    v36 = *&v35[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
    if (v36)
    {

      v36(v35);
      sub_17654(v36);
    }
  }

  v37 = [v1 view];
  if (!v37)
  {
    goto LABEL_27;
  }

  if (!*&v1[v13])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v38 = v37;
  [v37 addSubview:?];

  v39 = *&v1[v13];
  if (v39)
  {
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = &v39[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
    v42 = *&v39[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
    *v41 = sub_B66E0;
    v41[1] = v40;
    v43 = v39;

    sub_17654(v42);

    return;
  }

LABEL_29:
  __break(1u);
}

void sub_B5F90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_textListView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;

  [v3 sizeThatFits:{v7, v9}];
  v11 = v10;
  v13 = v12;

  type metadata accessor for CGSize(0);
  [v1 preferredContentSize];
  if (sub_AB38D0())
  {
    [v1 setPreferredContentSize:{v11, v13}];
  }
}

void sub_B610C(char a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_verticalStackItemPrefersTopHairline;
  v1[OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_verticalStackItemPrefersTopHairline] = a1;
  if ([v1 isViewLoaded])
  {
    v3 = *&v1[OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_textListView];
    if (v3)
    {
      v4 = v1[v2];
      v5 = v3[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_wantsTopSeparator];
      v3[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_wantsTopSeparator] = v4;
      if (v4 != v5)
      {
        v7 = v3;
        [v7 setNeedsLayout];
        v6 = *&v7[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_layoutInvalidationHandler];
        if (v6)
        {

          v6(v7);
          sub_17654(v6);
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_B622C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSItemizedTextListViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_B62D4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_textListView);
  if (v2)
  {
    v3 = *&stru_108.sectname[swift_isaMask & *a1];
    v7 = v2;
    v4 = v3();
    v5 = &v7[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_title];
    *v5 = v4;
    v5[1] = v6;

    sub_2AF738();
  }

  else
  {
    __break(1u);
  }
}

void sub_B63A0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication32JSItemizedTextListViewController_textListView);
  if (v2)
  {
    v4 = v2;
    *&v4[OBJC_IVAR____TtC16MusicApplication20ItemizedTextListView_listItems] = sub_B6428(a1);

    sub_2AF8AC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_B6428(void *a1)
{
  v1 = (*&stru_108.segname[(swift_isaMask & *a1) + 8])();
  v2 = v1;
  if (!(v1 >> 62))
  {
    result = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    v5 = _swiftEmptyArrayStorage;
LABEL_16:

    return v5;
  }

  v18 = v1;
  result = sub_ABB060();
  v2 = v18;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (result >= 1)
  {
    v4 = 0;
    v19 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v20 = result;
    v21 = v2;
    do
    {
      if (v19)
      {
        v6 = sub_360674(v4, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v22 = (*&stru_68.segname[(swift_isaMask & *v6) + 16])();
      v9 = v8;
      v10 = (*(&stru_68.reloff + (swift_isaMask & *v7)))();
      v11 = (*&stru_B8.sectname[swift_isaMask & *v7])();
      v13 = v12;
      v14 = (*&stru_B8.segname[(swift_isaMask & *v7) + 8])();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_6B698(0, *(v5 + 2) + 1, 1, v5);
      }

      v16 = *(v5 + 2);
      v15 = *(v5 + 3);
      if (v16 >= v15 >> 1)
      {
        v5 = sub_6B698((v15 > 1), v16 + 1, 1, v5);
      }

      ++v4;
      *(v5 + 2) = v16 + 1;
      v17 = &v5[48 * v16];
      *(v17 + 4) = v22;
      *(v17 + 5) = v9;
      v17[48] = v10 & 1;
      *(v17 + 7) = v11;
      *(v17 + 8) = v13;
      v17[72] = v14 & 1;

      v2 = v21;
    }

    while (v20 != v4);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_B66A8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_B66E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  sub_15F84(a1 + 24, v11, &unk_DE8E40);
  if (!v12)
  {
    sub_12E1C(v11, &unk_DE8E40);
    v10 = _s23MusicPerformanceContextVMa();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    goto LABEL_7;
  }

  v5 = _s23MusicPerformanceContextVMa();
  v6 = swift_dynamicCast();
  v7 = *(v5 - 8);
  (*(v7 + 56))(v4, v6 ^ 1u, 1, v5);
  if ((*(v7 + 48))(v4, 1, v5) == 1)
  {
LABEL_7:
    sub_12E1C(v4, &unk_DEE570);
    memset(v13, 0, sizeof(v13));
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_8;
  }

  sub_15F84(v4, v13, &unk_DEA520);
  sub_B6944(v4);
  if (v14 == 1)
  {
LABEL_8:
    sub_12E1C(v13, &unk_DEA520);
    return;
  }

  PresentationSource.windowScene.getter();
  v9 = v8;
  sub_1611C(v13);
  if (v9)
  {
    [*JSAppReviewSegue.storeReview.unsafeMutableAddressor() didAttemptPromptReview];
    [objc_opt_self() requestReviewInScene:v9];
  }
}

uint64_t sub_B6944(uint64_t a1)
{
  v2 = _s23MusicPerformanceContextVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_B69A0()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  *&v0[qword_DECC50] = 0;
  v3 = &v0[qword_DECC58];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[qword_DECC60];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[qword_DECC68] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TVShowsViewController();
  v5 = objc_msgSendSuper2(&v9, "init");
  v6 = sub_AB9260();
  [v5 setPlayActivityFeatureName:v6];

  sub_AB91E0();
  sub_AB3550();
  sub_AB9320();
  v7 = sub_AB9260();

  [v5 setTitle:v7];

  return v5;
}

void sub_B6B94(uint64_t a1)
{
  *(a1 + qword_DECC50) = 0;
  v1 = (a1 + qword_DECC58);
  *v1 = 0;
  v1[1] = 0;
  v2 = a1 + qword_DECC60;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(a1 + qword_DECC68) = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_B6C30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF8820;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  v5 = MPModelRelationshipTVShowCreator;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF4EC0;
  *(v7 + 32) = sub_AB92A0();
  *(v7 + 40) = v8;
  v9 = v5;
  isa = sub_AB9740().super.isa;
  v11 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v11;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80);
  v12 = objc_allocWithZone(MPPropertySet);
  v13 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550);
  v14 = sub_AB8FD0().super.isa;

  v15 = [v12 initWithProperties:v13 relationships:v14];

  qword_E70D08 = v15;
}

uint64_t sub_B6E78()
{
  v1 = sub_AB35C0();
  __chkstk_darwin(v1 - 8);
  v2 = sub_AB9250();
  __chkstk_darwin(v2 - 8);
  v3 = qword_DECC50;
  if (*&v0[qword_DECC50])
  {
    v4 = *&v0[qword_DECC50];
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v5 = sub_AB9320();
    v7 = v6;
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v8 = v0;
    v4 = sub_4309D4(v5, v7);

    *&v0[v3] = v4;
  }

  return v4;
}

void sub_B7004()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_B739C();
  }
}

uint64_t sub_B7058(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for TVShowsViewController();
  v1 = v6.receiver;
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v2 = sub_B6E78();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = *(v2 + 88);
  *(v2 + 88) = sub_B8F50;
  *(v2 + 96) = v3;

  sub_17654(v4);
}

void sub_B7128()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for TVShowsViewController();
  objc_msgSendSuper2(&v13, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;

  type metadata accessor for CGSize(0);
  v8 = &v1[qword_DECC58];
  v12 = *&v1[qword_DECC58];
  if ((sub_AB38D0() & 1) == 0)
  {
    return;
  }

  *v8 = v5;
  *(v8 + 1) = v7;
  [v1 loadViewIfNeeded];
  v9 = *&v1[qword_DFE2F8];
  if (!v9)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v10 = [v9 collectionViewLayout];
  v11 = &v1[qword_DECC60];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
}

void sub_B7250(void *a1)
{
  v1 = a1;
  sub_B7128();
}

uint64_t sub_B7298()
{
  v1 = v0;
  sub_B7BC4();
  v2 = qword_DFE2F0;
  v3 = *(v0 + qword_DFE2F0);
  if (v3)
  {
    LOBYTE(v3) = [v3 isEmpty];
  }

  sub_3E2E84(v3);

  v4 = sub_B6E78();
  v5 = *(v1 + v2);
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    v13 = *(v4 + 64);
    *(v4 + 64) = 1;
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_430320();
    goto LABEL_11;
  }

  v6 = (*(*(v1 + qword_DECC50) + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 != 0;
    v11 = *(v4 + 64);
    *(v4 + 64) = v10;
    if (v11 == v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = *(v4 + 64);
  *(v4 + 64) = 0;
  if (v14)
  {
    goto LABEL_10;
  }

LABEL_11:
}

void sub_B739C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v3 = objc_opt_self();
  sub_13C80(0, &unk_DE9C00);
  v4 = v2;
  v5 = static MPModelTVEpisode.defaultMusicKind.getter();
  v6 = [objc_opt_self() kindWithEpisodeKind:v5];

  v7 = [v3 kindWithSeasonKind:v6];
  [v4 setItemKind:v7];

  v8 = sub_AB9260();
  [v4 setLabel:v8];

  if (qword_DE6790 != -1)
  {
    swift_once();
  }

  [v4 setItemProperties:qword_E70D08];

  if (*(*(sub_B6E78() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
  {

    v9 = sub_AB9260();
  }

  else
  {
    v9 = 0;
  }

  [v4 setFilterText:v9];

  v10 = [v1 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(v4);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_B8F08;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_151E0;
  v13[3] = &block_descriptor_80;
  v12 = _Block_copy(v13);

  [v4 performWithResponseHandler:v12];
  _Block_release(v12);
}

uint64_t sub_B766C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v6 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9D320, v5);
}

void sub_B7710(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 music_inheritedLayoutInsets];
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v37 = v21;
      v39 = v19;
      v22 = UIEdgeInsetsInsetRect(v7, v9, v11, v13, v17, v19);
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = sub_45B2C4(v3, v7, v9, v11, v13);
      v42.origin.x = v7;
      v42.origin.y = v9;
      v42.size.width = v11;
      v42.size.height = v13;
      Width = CGRectGetWidth(v42);
      sub_471A4();
      sub_AB38F0();
      [v3 displayScale];
      v31 = v30;
      v43.origin.x = v22;
      v43.origin.y = v24;
      v43.size.width = v26;
      v43.size.height = v28;
      CGRectGetWidth(v43);
      if (__OFSUB__(v29, 1))
      {
        __break(1u);
      }

      else
      {
        sub_AB3A00();
        v31 = v32;
        _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
        v34 = v33;

        sub_2F48A4(v34, v3, 0, 0);

        if (qword_DE6948 == -1)
        {
LABEL_5:
          [v3 displayScale];
          sub_AB3A00();
          v36 = v35;

          [a1 setItemSize:{v31, v36}];
          [a1 setSectionInset:{10.0, v40, 0.0, v38}];
          [a1 setMinimumLineSpacing:12.0];

          return;
        }
      }

      swift_once();
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_B7A18(void *a1, uint64_t a2)
{
  sub_3B41F4(a1, a2);
  isa = sub_AB3770().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];
}

void sub_B7A88(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  sub_3B41F4(v11, v10);
  isa = sub_AB3770().super.isa;
  [v11 deselectItemAtIndexPath:isa animated:1];
  (*(v8 + 8))(v10, v7);
}

void *sub_B7BC4()
{
  v1 = qword_DECC68;
  if (*&v0[qword_DECC68])
  {
    v2 = *&v0[qword_DECC68];
  }

  else
  {
    v2 = sub_B7C2C(v0);
    *&v0[v1] = v2;
  }

  return v2;
}

void *sub_B7C2C(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for LibraryNoContentStateController();
    swift_allocObject();
    v3 = sub_3E2914(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v3[6];
    v3[6] = sub_9D2B0;
    v3[7] = v4;

    sub_17654(v5);

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = v3[27];
    v3[27] = sub_B8F00;
    v3[28] = v6;

    sub_17654(v7);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_B7D68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v7 = Strong;
  v8 = sub_B6E78();

  v9 = (*(v8 + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  v10 = v9[1];
  if (!v10)
  {

LABEL_10:
    v20 = *(a1 + 16);
    v50 = *a1;
    v51 = v20;
    v21 = *(a1 + 48);
    v34 = *(a1 + 32);
    v35 = v21;
    v36 = *(a1 + 64);
    v37 = *(a1 + 80);
    sub_576EC(a1, &v44);
    sub_AB91E0();
    sub_AB3550();
    v22 = sub_AB9320();
    v24 = v23;
    sub_12E1C(&v50, &unk_DEE6F0);
    sub_AB91E0();
    sub_AB3550();
    v25 = sub_AB9320();
    v27 = v26;
    sub_12E1C(&v51, &unk_DEE6F0);
    *&v38 = v22;
    *(&v38 + 1) = v24;
    *&v39 = v25;
    *(&v39 + 1) = v27;
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v43 = v37;
    *&v44 = v22;
    *(&v44 + 1) = v24;
    *&v45 = v25;
    *(&v45 + 1) = v27;
    v49 = v37;
    v47 = v35;
    v48 = v36;
    v46 = v34;
    sub_576EC(&v38, &v33);
    result = sub_57748(&v44);
    v13 = v43;
    v17 = v41;
    v19 = v42;
    v15 = v39;
    v18 = v40;
    v16 = v38;
    goto LABEL_11;
  }

  v11 = *v9;

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  if (qword_DE6BD0 != -1)
  {
    swift_once();
  }

  v47 = xmmword_E717A8;
  v48 = xmmword_E717B8;
  v45 = xmmword_E71788;
  v46 = xmmword_E71798;
  v44 = xmmword_E71778;
  v13 = qword_E717C8;
  v49 = qword_E717C8;
  v31 = xmmword_E717A8;
  v32 = xmmword_E717B8;
  v29 = xmmword_E71788;
  v30 = xmmword_E71798;
  v28 = xmmword_E71778;
  result = sub_576EC(&v44, &v38);
  v16 = v28;
  v15 = v29;
  v18 = v30;
  v17 = v31;
  v19 = v32;
LABEL_11:
  *a2 = v16;
  *(a2 + 16) = v15;
  *(a2 + 32) = v18;
  *(a2 + 48) = v17;
  *(a2 + 64) = v19;
  *(a2 + 80) = v13;
  return result;
}

void sub_B80AC()
{
  if (v0[qword_DECC60 + 16])
  {
    [v0 loadViewIfNeeded];
    v1 = *&v0[qword_DFE2F8];
    if (v1)
    {
      v2 = v1;
      v3 = [v0 traitCollection];
      [v3 displayScale];
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 music_inheritedLayoutInsets];
        v7 = v6;
        v9 = v8;

        [v2 bounds];
        v14 = UIEdgeInsetsInsetRect(v10, v11, v12, v13, v7, v9);
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [v0 traitCollection];
        v22 = sub_45B2C4(v21, v14, v16, v18, v20);

        v26.origin.x = v14;
        v26.origin.y = v16;
        v26.size.width = v18;
        v26.size.height = v20;
        Width = CGRectGetWidth(v26);
        sub_471A4();
        sub_AB38F0();
        if (__OFSUB__(v22, 1))
        {
          __break(1u);
        }

        else
        {
          sub_AB3A00();
          _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
          v24 = v23;

          sub_2F48A4(v24, v3, 0, 0);

          if (qword_DE6948 == -1)
          {
LABEL_6:
            [v3 displayScale];
            sub_AB3A00();

            return;
          }
        }

        swift_once();
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_B836C(void *a1)
{
  v2 = [objc_allocWithZone(MPModelLibraryRequest) init];
  sub_13C80(0, &unk_DE9C00);
  v3 = v2;
  v4 = static MPModelTVEpisode.defaultMusicKind.getter();
  v5 = [objc_opt_self() kindWithEpisodeKind:v4];

  [v3 setItemKind:v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF82B0;
  *(v6 + 32) = a1;
  sub_13C80(0, &qword_DEDE20);
  v7 = a1;
  isa = sub_AB9740().super.isa;

  [v3 setScopedContainers:isa];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF85F0;
  *(v9 + 32) = sub_AB92A0();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_AB92A0();
  *(v9 + 56) = v11;
  v12 = sub_AB9740().super.isa;
  v13 = [objc_opt_self() propertySetWithProperties:v12];

  [v3 setItemProperties:v13];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v7;
  v18[4] = sub_B8E84;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_151E0;
  v18[3] = &block_descriptor_19;
  v16 = _Block_copy(v18);
  v17 = v7;

  [v3 performWithResponseHandler:v16];
  _Block_release(v16);
}

uint64_t sub_B8648(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_13C80(0, &qword_DE8ED0);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a4;

  v9 = a1;
  swift_errorRetain();
  v10 = a4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_B8EF4, v8);
}

void sub_B870C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (!a2)
    {
      goto LABEL_15;
    }

    v9 = [a2 results];
    if (!v9)
    {
      goto LABEL_15;
    }

    if (a3)
    {
LABEL_14:

LABEL_15:
      return;
    }

    v10 = v9;
    if ([v9 firstItem])
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        if ([v10 numberOfItemsInSection:0] == &dword_0 + 1)
        {
          MPModelTVSeason.title.getter();
          type metadata accessor for EpisodesViewController();
          swift_unknownObjectRetain();
          v13 = sub_1DF23C(v12);

          sub_728FC(v13, v8, 1, v8);

          swift_unknownObjectRelease();
LABEL_13:

          v9 = v8;
          goto LABEL_14;
        }
      }

      swift_unknownObjectRelease();
    }

    v14 = [a4 title];
    if (v14)
    {
      v15 = v14;
      sub_AB92A0();
    }

    objc_allocWithZone(type metadata accessor for SeasonsViewController());
    v13 = sub_F0338(a4);
    sub_728FC(v13, v8, 1, v8);

    goto LABEL_13;
  }
}

uint64_t sub_B8908()
{
}

id sub_B8948()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVShowsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_B8980()
{
}

uint64_t type metadata accessor for TVShowsViewController()
{
  result = qword_DECC98;
  if (!qword_DECC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B8A84(uint64_t a1, id *a2)
{
  v3 = [*a2 artworkCatalog];
  v4 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = v3;
  v6 = v3;

  sub_74EA4(v3);
}

id sub_B8B18(id *a1)
{
  v1 = [*a1 artworkCatalog];

  return v1;
}

double sub_B8B50()
{
  v1 = [*v0 traitCollection];
  sub_B80AC();
  v3 = v2;

  return v3;
}

id sub_B8BD0()
{
  v0 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  sub_B7710(v0);
  return v0;
}

uint64_t sub_B8C38(uint64_t a1, void *a2)
{
  v4 = sub_AB35C0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_AB9250();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC16MusicApplication9AlbumCell_layoutStyle;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = 0;
  sub_1AD7D0(v7);
  v8 = [a2 title];
  if (v8)
  {
    v9 = v8;
    v10 = sub_AB92A0();
    v12 = v11;
  }

  else
  {
    sub_AB91E0();
    sub_AB3550();
    v10 = sub_AB9320();
    v12 = v13;
  }

  v14 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_title);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  *v14 = v10;
  v14[1] = v12;
  sub_1AE488(v15, v16);

  v17 = MPModelTVShow.localizedEpisodeCount.getter();
  v19 = v18;
  v20 = (a1 + OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName);
  swift_beginAccess();
  v21 = *v20;
  v22 = v20[1];
  *v20 = v17;
  v20[1] = v19;
  sub_1AE788(v21, v22);
}

uint64_t sub_B8E48()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B8EA4()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_70Tm()
{

  return swift_deallocObject();
}

uint64_t sub_B8FB4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((result & 1) == 0 && a2)
  {
    ObjectType = swift_getObjectType();
    v7 = *(a3 + 40);
    swift_unknownObjectRetain();
    v7(a4 & 1, ObjectType, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_B9050()
{
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_B9080()
{
  sub_B9050();

  return swift_deallocClassInstance();
}

uint64_t sub_B93FC(unsigned __int8 a1)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 != 1)
    {
      if (a1 == 128)
      {
        return 0x6165707061736944;
      }

      else
      {
        return 0x6465726165707041;
      }
    }

    v1 = 0x6165707061736944;
  }

  else
  {
    v1 = 0x6E69726165707041;
  }

  v6 = v1;
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3._countAndFlagsBits = 0x646574616D696E61;
  }

  else
  {
    v3._countAndFlagsBits = 0x6D696E61206E6F6ELL;
  }

  if (v2)
  {
    v4 = 0xEC00000064657461;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  v3._object = v4;
  sub_AB94A0(v3);

  return v6;
}

uint64_t sub_B9508(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        return 1;
      }
    }

    else if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v3 == 129)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_B9564(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return (v3 ^ v2 ^ 1) & 1;
    }

    if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v3 == 129)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return (v3 ^ v2 ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_B95D8()
{
  result = swift_slowAlloc();
  qword_DED368 = result;
  return result;
}

id sub_B9644()
{
  if (qword_DE6798 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_DED368))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_B9A4C();
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_9BC10(v6);
  }

  v2 = [objc_opt_self() systemBackgroundColor];

  return v2;
}

uint64_t getEnumTagSinglePayload for AppearanceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AppearanceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7E)
  {
    v4 = 0;
  }

  if (a2 > 0x7D)
  {
    v5 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_B9910(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_B993C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 | 0x80;
  }

  return result;
}

void sub_B9978(id value)
{
  v2 = value;
  if (qword_DE6798 != -1)
  {
    swift_once();
    v2 = value;
  }

  objc_setAssociatedObject(v1, qword_DED368, v2, &dword_0 + 1);
  if ([v1 isViewLoaded])
  {
    v3 = [v1 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 setBackgroundColor:value];
  }
}

unint64_t sub_B9A4C()
{
  result = qword_DFAAC0[0];
  if (!qword_DFAAC0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_DFAAC0);
  }

  return result;
}

char *sub_B9A98(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v11 - 8);
  v13 = v59 - v12;
  v14 = &v5[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_headline];
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = &v5[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_title];
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = &v5[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_subtitle];
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v5[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_artworkDisplayStyle] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_badgeView] = 0;
  v17 = &v5[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_textComponents];
  *v17 = sub_BC728();
  v17[1] = v18;
  v17[2] = v19;
  v17[3] = v20;
  *&v5[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_measurementTextStackViewComponent] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell____lazy_storage___measurementTextStackView] = 0;
  v67.receiver = v5;
  v67.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 layer];
  [v22 setAllowsGroupOpacity:0];

  v23 = v21;
  v24 = [v23 layer];
  [v24 setAllowsGroupBlending:0];

  v25 = UIView.Corner.medium.unsafeMutableAddressor();
  v26 = sub_ABA680();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v13, v25, v26);
  (*(v27 + 56))(v13, 0, 1, v26);
  sub_200394(v13);
  v66 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v28 = *&v23[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  strcpy((v28 + 24), "Showcase Cell");
  *(v28 + 38) = -4864;

  v29 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v30 = *v29;
  v31 = v29[1];
  v33 = v29[2];
  v32 = v29[3];
  v34 = v29[4];
  v64 = v29[5];
  v35 = v64;
  v65 = v34;
  v36 = &v23[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v63 = *&v23[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v62 = *&v23[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v61 = *&v23[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v60 = *&v23[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  v59[2] = *&v23[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 32];
  v59[1] = *&v23[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 40];
  *v36 = v30;
  *(v36 + 1) = v31;
  *(v36 + 2) = v33;
  *(v36 + 3) = v32;
  *(v36 + 4) = v34;
  *(v36 + 5) = v35;
  v37 = v30;
  v38 = v31;
  v39 = v33;
  v40 = v32;
  v41 = v37;
  v42 = v38;
  v43 = v39;
  v44 = v40;
  sub_2F1C8(v63, v62, v61, v60);
  v45 = v65;
  v46 = *&v23[v66];
  v47 = *(v46 + 168);
  v68[0] = *(v46 + 152);
  v68[1] = v47;
  v68[2] = *(v46 + 184);
  *(v46 + 152) = v30;
  *(v46 + 160) = v31;
  *(v46 + 168) = v33;
  *(v46 + 176) = v32;
  v48 = v64;
  *(v46 + 184) = v45;
  *(v46 + 192) = v48;
  v49 = v41;
  v50 = v42;
  v51 = v43;
  v52 = v44;
  v53 = v49;
  v54 = v50;
  v55 = v51;
  v56 = v52;
  sub_75948(v68);
  sub_12E1C(v68, &unk_DF8690);

  v57 = [v23 traitCollection];
  sub_B9ED8(v57);
  sub_BA06C(v57);

  return v23;
}

void sub_B9ED8(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_textComponents];
  swift_beginAccess();
  sub_BAD20(a1);
  swift_endAccess();
  v5 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
  v6 = *(v4 + 3);
  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  TextStackView.removeAll()();
  if (!(v6 >> 62))
  {
    v8 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:

    v11 = *&v2[v5];
    v12 = [a1 horizontalSizeClass] != &dword_0 + 1;
    v13 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    v11[v13] = v12;

    [v2 setNeedsLayout];
    return;
  }

  v8 = sub_ABB060();
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_36003C(i, v6);
      }

      else
      {
        v10 = *(v6 + 8 * i + 32);
      }

      TextStackView.add(_:)(v10);
    }

    goto LABEL_10;
  }

  __break(1u);
}

id sub_BA06C(void *a1)
{
  v2 = v1;
  [a1 displayScale];
  v4 = [a1 horizontalSizeClass];
  if (v4 == &dword_0 + 1)
  {
    v5 = 24.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (v4 == &dword_0 + 1)
  {
    v6 = 102.0;
  }

  else
  {
    v6 = 160.0;
  }

  sub_AB3A00();
  v7 = &v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize];
  *v7 = v8;
  v7[1] = v6;
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v11 = *(v9 + 80);
  v10 = *(v9 + 88);
  *(v9 + 80) = v8;
  *(v9 + 88) = v6;
  sub_75614(v11, v10);
  v12 = &v2[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  v18 = v5;
  v19 = xmmword_AFB800;
  v20 = 0x4030000000000000;
  v13 = *v12;
  v14 = *(v12 + 1);
  *v12 = v5;
  *(v12 + 8) = xmmword_AFB800;
  *(v12 + 3) = 0x4030000000000000;
  v16 = v13;
  v17 = v14;
  if (sub_AB38D0())
  {
    [v2 setNeedsLayout];
  }

  return [v2 setNeedsLayout];
}

uint64_t sub_BA224(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_headline];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_headline];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_headline + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_textComponents;
    swift_beginAccess();
    v10 = *&v2[v9];

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

void sub_BA35C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == &dword_0 + 1)
  {
    v8 = *&v3[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_measurementTextStackViewComponent];
    if (v8)
    {
      swift_beginAccess();
      *(v8 + 112) = a1;
      *(v8 + 120) = a2;

      sub_2EB704();
    }
  }
}

uint64_t sub_BA428(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {

    v9 = String.trim()();

    v10 = &v2[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_textComponents];
    swift_beginAccess();
    v11 = *(v10 + 1);
    swift_beginAccess();
    v11[7] = v9;

    sub_2EB704();

    sub_BA35C(v9._countAndFlagsBits, v9._object);

    [v2 setNeedsLayout];
  }
}

uint64_t sub_BA588(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = &v2[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_textComponents];
    swift_beginAccess();
    v10 = *(v9 + 2);

    v11 = String.trim()();

    swift_beginAccess();
    v10[7] = v11;

    sub_2EB704();

    [v2 setNeedsLayout];
  }
}

void sub_BA6C4(char a1)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_artworkDisplayStyle];
  v1[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_artworkDisplayStyle] = a1 & 1;
  if (v2 != (a1 & 1))
  {
    v3 = [v1 traitCollection];
    sub_BA06C(v3);
  }
}

uint64_t sub_BA73C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
  v3 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = v4;
  swift_retain_n();
  v7 = v2;
  sub_2E6210(v6);

  v8 = sub_BA8AC();
  v9 = *(v1 + v3);
  v10 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;
  swift_retain_n();
  sub_2E6210(v11);
}

id sub_BA8AC()
{
  v1 = OBJC_IVAR____TtC16MusicApplication12ShowcaseCell____lazy_storage___measurementTextStackView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication12ShowcaseCell____lazy_storage___measurementTextStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication12ShowcaseCell____lazy_storage___measurementTextStackView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for TextStackView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    if (qword_DE67A0 != -1)
    {
      swift_once();
    }

    v11[2] = xmmword_DED390;
    v11[3] = unk_DED3A0;
    v11[4] = xmmword_DED3B0;
    v11[0] = xmmword_DED370;
    v11[1] = unk_DED380;
    type metadata accessor for TextStackView.Component();
    swift_allocObject();
    v6 = TextStackView.Component.init(identifier:labelProperties:)(0xD00000000000001ALL, 0x8000000000B4EDF0, v11);
    sub_2F118(v11, &v10);
    TextStackView.add(_:)(v6);
    *(v0 + OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_measurementTextStackViewComponent) = v6;

    v7 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_BA9F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a1;

  v7 = v4;
  sub_2E6210(v6);

  sub_BA73C();
}

void (*sub_BAAE0(uint64_t **a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_200DA0(v3);
  return sub_BAB54;
}

void sub_BAB54(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_BA73C();
  }

  free(v3);
}

double sub_BABB0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_AB35C0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_AB9250();
  __chkstk_darwin(v4 - 8);
  SymbolButton.Configuration.init()(a1);
  if ((~*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus + 32) & 0x7ELL) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryAddKeepLocalCompositeStatus + 32) & 0xFE;
    if (v6 != 122 && v6 != 248)
    {
      sub_AB91E0();
      sub_AB3550();
      v7 = sub_AB9320();
      v9 = v8;

      *(a1 + 120) = v7;
      *(a1 + 128) = v9;
      v10 = a1 + *(type metadata accessor for SymbolButton.Configuration(0) + 60);
      *v10 = 0;
      result = 8.0;
      *(v10 + 8) = xmmword_AFB2E0;
      *(v10 + 24) = 0x402A000000000000;
    }
  }

  return result;
}

uint64_t sub_BAD20(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = *(v2 + 16);
  sub_BCB9C(a1, 0, 1, v18);
  swift_beginAccess();
  v7 = v4[3];
  v6 = v4[4];
  v8 = v4[6];
  v20[3] = v4[5];
  v20[4] = v8;
  v20[1] = v7;
  v20[2] = v6;
  v20[0] = v4[2];
  v9 = v18[4];
  v4[5] = v18[3];
  v4[6] = v9;
  v10 = v18[1];
  v4[2] = v18[0];
  v4[3] = v10;
  v4[4] = v18[2];
  sub_2F118(v18, v21);
  sub_2F174(v20);
  sub_2EB2A8();
  sub_2F174(v18);
  sub_BCCA4(a1, v19);
  swift_beginAccess();
  v12 = v5[3];
  v11 = v5[4];
  v13 = v5[6];
  v21[3] = v5[5];
  v21[4] = v13;
  v21[1] = v12;
  v21[2] = v11;
  v21[0] = v5[2];
  v14 = v19[4];
  v5[5] = v19[3];
  v5[6] = v14;
  v15 = v19[1];
  v5[2] = v19[0];
  v5[3] = v15;
  v5[4] = v19[2];
  sub_2F118(v19, &v17);
  sub_2F174(v21);
  sub_2EB2A8();
  return sub_2F174(v19);
}

void sub_BAE44()
{
  v1 = v0;
  v150.receiver = v0;
  v150.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v150, "layoutSubviews");
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v145 = v7;
  v9 = v8;
  v149 = v8;

  v136 = [v1 traitCollection];
  [v136 displayScale];
  [v1 music_inheritedLayoutInsets];
  v11 = v10;
  v13 = v12;
  [v1 effectiveUserInterfaceLayoutDirection];
  v152.origin.x = UIEdgeInsetsInsetRect(v4, v6, v145, v9, v11, v13);
  x = v152.origin.x;
  width = v152.size.width;
  v16 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets + 8];
  v140 = *&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets + 24];
  y = v152.origin.y;
  height = v152.size.height;
  CGRectGetMinX(v152);
  v146 = v16;
  sub_76368(0, 0, 1);
  v131 = v17;
  sub_ABA470();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = v149;
  sub_ABA490();
  if (sub_76B28(v27, v28, v29, v30))
  {
    v153.origin.x = v19;
    v153.origin.y = v21;
    v153.size.width = v23;
    v153.size.height = v25;
    v31 = v140 + v146 + CGRectGetWidth(v153);
    x = x + v31;
    width = width - v31;
  }

  v32 = 0;
  v33 = _swiftEmptyArrayStorage;
LABEL_4:
  if (v32 <= 3)
  {
    v34 = 3;
  }

  else
  {
    v34 = v32;
  }

  while (v32 != 3)
  {
    if (v34 == v32)
    {
      __break(1u);
      return;
    }

    v35 = *(&off_CEFF18 + v32++ + 4);
    if (v35 != &dword_0 + 2)
    {
      sub_7FCB4(v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v151[0] = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_6D660(0, *(v33 + 2) + 1, 1);
        v33 = v151[0];
      }

      v38 = *(v33 + 2);
      v37 = *(v33 + 3);
      if (v38 >= v37 >> 1)
      {
        sub_6D660((v37 > 1), v38 + 1, 1);
        v33 = v151[0];
      }

      *(v33 + 2) = v38 + 1;
      *&v33[8 * v38 + 32] = v35;
      goto LABEL_4;
    }
  }

  [v1 effectiveUserInterfaceLayoutDirection];
  v39 = *(v33 + 2);
  v40 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_libraryStatusControl;
  if (!v39)
  {
    goto LABEL_48;
  }

  v138 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_wantsMediaPickerAddButton;
  v137 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_mediaPickerAddButton;
  v41 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_showsContextMenu;
  v42 = (v33 + 32);
  v43 = 0.0;
  v44 = &selRef__authenticateReturningError_;
  v141 = x;
  do
  {
    v62 = *v42++;
    v61 = v62;
    if (v62)
    {
      if (v61 == &dword_0 + 1)
      {
        if (v1[v138])
        {
          v65 = *&v1[v137];
          if (v65)
          {
            v45 = v65;
            v147 = v43;
            [v45 sizeThatFits:{v145, v26}];
            v159.size.width = v66;
            v48 = v67;
            v159.origin.x = 0.0;
            v159.origin.y = 0.0;
            v159.size.height = v48;
            v68 = CGRectGetWidth(v159);
            if (v68 > 0.0)
            {
              v50 = v68;
            }

            else
            {
              v50 = 0.0;
            }

LABEL_20:
            v155.origin.x = x;
            v155.origin.y = y;
            v155.size.height = height;
            v155.size.width = width;
            CGRectGetMaxX(v155);
            v156.origin.x = 0.0;
            v156.origin.y = 0.0;
            v156.size.width = v50;
            v156.size.height = v48;
            CGRectGetWidth(v156);
            v51 = [v1 v44[334]];
            [v51 displayScale];

            v132 = v48;
            sub_ABA470();
            v53 = v52;
            v55 = v54;
            v57 = v56;
            v59 = v58;
            x = v141;
            v26 = v149;
            sub_ABA490();
            [v45 setFrame:*&v132];
            v157.origin.x = v53;
            v157.origin.y = v55;
            v157.size.width = v57;
            v157.size.height = v59;
            v43 = v147 + CGRectGetWidth(v157) + 0.0;
            v158.origin.x = v53;
            v158.origin.y = v55;
            v158.size.width = v57;
            v158.size.height = v59;
            v60 = CGRectGetWidth(v158);

LABEL_21:
LABEL_22:
            width = width - v60;
          }
        }
      }

      else if (v61 == &dword_0 + 2)
      {
        v63 = *&v1[v40];
        if (v63)
        {
          v64 = v63;
          if (([v64 isHidden] & 1) == 0)
          {
            v45 = v64;
            v147 = v43;
            [v45 sizeThatFits:{v145, v26}];
            v154.size.width = v46;
            v48 = v47;
            v154.origin.x = 0.0;
            v154.origin.y = 0.0;
            v154.size.height = v48;
            v49 = CGRectGetWidth(v154);
            if (v49 > 0.0)
            {
              v50 = v49;
            }

            else
            {
              v50 = 0.0;
            }

            goto LABEL_20;
          }
        }
      }

      else
      {
        v83 = v61;
        if (([v83 isHidden] & 1) == 0)
        {
          v84 = v83;
          [v84 sizeThatFits:{v145, v26}];
          v165.size.width = v85;
          v87 = v86;
          v165.origin.x = 0.0;
          v165.origin.y = 0.0;
          v165.size.height = v87;
          v88 = CGRectGetWidth(v165);
          if (v88 > 0.0)
          {
            v89 = v88;
          }

          else
          {
            v89 = 0.0;
          }

          v166.origin.x = x;
          v166.origin.y = y;
          v166.size.height = height;
          v166.size.width = width;
          CGRectGetMaxX(v166);
          v167.origin.x = 0.0;
          v167.origin.y = 0.0;
          v167.size.width = v89;
          v167.size.height = v87;
          CGRectGetWidth(v167);
          v90 = [v1 v44[334]];
          [v90 displayScale];

          v44 = &selRef__authenticateReturningError_;
          v134 = v87;
          sub_ABA470();
          v92 = v91;
          v94 = v93;
          v96 = v95;
          v98 = v97;
          x = v141;
          v26 = v149;
          sub_ABA490();
          [v84 setFrame:*&v134];
          v168.origin.x = v92;
          v168.origin.y = v94;
          v168.size.width = v96;
          v168.size.height = v98;
          v43 = v43 + CGRectGetWidth(v168) + 0.0;
          v169.origin.x = v92;
          v169.origin.y = v94;
          v169.size.width = v96;
          v169.size.height = v98;
          v60 = CGRectGetWidth(v169);
          sub_7FCC4(v61);
          sub_7FCC4(v61);
          goto LABEL_22;
        }

        sub_7FCC4(v61);
      }
    }

    else if (v1[v41])
    {
      v45 = sub_200934();
      [v45 sizeThatFits:{v145, v26}];
      v160.size.width = v69;
      v71 = v70;
      v160.origin.x = 0.0;
      v160.origin.y = 0.0;
      v160.size.height = v71;
      v72 = CGRectGetWidth(v160);
      if (v72 > 0.0)
      {
        v73 = v72;
      }

      else
      {
        v73 = 0.0;
      }

      v161.origin.x = x;
      v161.origin.y = y;
      v161.size.height = height;
      v161.size.width = width;
      CGRectGetMaxX(v161);
      v162.origin.x = 0.0;
      v162.origin.y = 0.0;
      v162.size.width = v73;
      v162.size.height = v71;
      CGRectGetWidth(v162);
      v74 = [v1 v44[334]];
      [v74 displayScale];

      v133 = v71;
      sub_ABA470();
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v82 = v81;
      x = v141;
      v26 = v149;
      sub_ABA490();
      [v45 setFrame:*&v133];
      v163.origin.x = v76;
      v163.origin.y = v78;
      v163.size.width = v80;
      v163.size.height = v82;
      v43 = v43 + CGRectGetWidth(v163) + 0.0;
      v164.origin.x = v76;
      v164.origin.y = v78;
      v164.size.width = v80;
      v164.size.height = v82;
      v60 = CGRectGetWidth(v164);
      goto LABEL_21;
    }

    --v39;
  }

  while (v39);
  if (v43 > 0.0)
  {
    width = width + -12.0;
  }

LABEL_48:
  v99 = OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_badgeView;
  v100 = *&v1[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_badgeView];
  v101 = 0.0;
  if (v100 && *(*&v100[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
  {
    v102 = v100;
    [v102 sizeToFit];
    [v102 bounds];
    v101 = v103;
  }

  v104 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
  [*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] sizeThatFits:{width - v101, height}];
  v135 = v105;
  sub_ABA470();
  v107 = v106;
  v148 = v108;
  v110 = v109;
  v112 = v111;
  sub_BBA88(v136, x, y, width, height);
  v113 = *&v1[v40];
  if (v113)
  {
    v114 = v113;
    if (([v114 isHidden] & 1) == 0)
    {
      v139 = v112;
      v142 = v107;
      [v114 sizeThatFits:{v145, v26}];
      v170.origin.x = x;
      v170.origin.y = y;
      v170.size.height = height;
      v170.size.width = width;
      CGRectGetMinX(v170);
      v115 = *&v1[v104];
      [v115 bounds];
      v117 = v116;
      v119 = v118;
      v121 = v120;
      v123 = v122;
      v124 = [v115 traitCollection];
      [v124 displayScale];
      v126 = v125;

      sub_2E94A4(v151, v117, v119, v121, v123, v126);
      if (*(v151[0] + 2))
      {

        sub_3F250(v151);
        swift_beginAccess();
      }

      else
      {
        sub_3F250(v151);
      }

      sub_AB3A00();
      v171.origin.y = v148 - v127;
      v171.origin.x = v142;
      v171.size.width = v110;
      v171.size.height = v139;
      CGRectGetMaxY(v171);
      sub_ABA490();
      [v114 setFrame:?];
    }
  }

  v128 = *&v1[v99];
  if (v128 && *(*&v128[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
  {
    v129 = v128;
    [v129 frame];
    CGRectGetWidth(v172);
  }

  v130 = *&v1[v104];
  [v1 bounds];
  sub_ABA490();
  [v130 setFrame:?];

  sub_42AD3C();
}

void sub_BBA88(void *a1, double a2, double a3, CGFloat a4, double a5)
{
  v6 = v5;
  v12 = sub_BA8AC();
  [v12 sizeThatFits:{a4, a5}];
  v14 = v13;

  v15 = OBJC_IVAR____TtC16MusicApplication12ShowcaseCell____lazy_storage___measurementTextStackView;
  [*&v6[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell____lazy_storage___measurementTextStackView] setFrame:{a2, a3, a4, v14}];
  v16 = *&v6[v15];
  v17 = [v16 traitCollection];
  [v17 displayScale];
  v19 = v18;

  if (v14 <= 5.99231045e307)
  {
    v20 = v14;
  }

  else
  {
    v20 = 5.99231045e307;
  }

  sub_2E94A4(v31, 0.0, 0.0, a4, v20, v19);
  sub_3F250(v31);

  v21 = v31[7] > 1;
  v22 = &v6[OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_textComponents];
  swift_beginAccess();
  v23 = *(v22 + 3);
  swift_beginAccess();

  sub_BBE94(a1, v21);
  swift_endAccess();

  v25 = sub_12C928(v24, v23);

  if (v25)
  {
    goto LABEL_15;
  }

  v26 = *(v22 + 3);
  v27 = *&v6[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  TextStackView.removeAll()();
  if (!(v26 >> 62))
  {
    v28 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    if (v28)
    {
      goto LABEL_7;
    }

LABEL_14:

    [v6 setNeedsLayout];
LABEL_15:

    return;
  }

  v28 = sub_ABB060();
  if (!v28)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v28 >= 1)
  {
    for (i = 0; i != v28; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = sub_36003C(i, v26);
      }

      else
      {
        v30 = *(v26 + 8 * i + 32);
      }

      TextStackView.add(_:)(v30);
    }

    goto LABEL_14;
  }

  __break(1u);
}

void sub_BBD48(void *a1)
{
  v5 = [v1 traitCollection];
  v3 = [v5 horizontalSizeClass];
  if (!a1 || v3 != [a1 horizontalSizeClass])
  {

    v4 = String.trim()();

    sub_BA35C(v4._countAndFlagsBits, v4._object);

    sub_B9ED8(v5);
    sub_BA06C(v5);
  }
}

uint64_t sub_BBE94(void *a1, char a2)
{
  v3 = v2;
  if ([a1 horizontalSizeClass] == &dword_0 + 1 && (a2 & 1) != 0)
  {
    v7 = *v3;
    v6 = v3[1];
    sub_BCB9C(a1, 2, 0, v19);
    swift_beginAccess();
    v9 = v6[3];
    v8 = v6[4];
    v10 = v6[6];
    v18[3] = v6[5];
    v18[4] = v10;
    v18[2] = v8;
    v18[0] = v6[2];
    v18[1] = v9;
    v11 = v19[4];
    v6[5] = v19[3];
    v6[6] = v11;
    v12 = v19[1];
    v6[2] = v19[0];
    v6[3] = v12;
    v6[4] = v19[2];
    sub_2F118(v19, v17);
    sub_2F174(v18);
    sub_2EB2A8();
    sub_2F174(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_AF7C50;
    *(v13 + 32) = v7;
    *(v13 + 40) = v6;

    v3[3] = v13;
  }

  else
  {
    sub_BAD20(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_AF82E0;
    v16 = v3[1];
    *(v15 + 32) = *v3;
    *(v15 + 40) = v16;
    *(v15 + 48) = v3[2];

    v3[3] = v15;
  }

  return result;
}

double sub_BC23C()
{
  sub_BC280(&v1);
  xmmword_DED390 = v3;
  unk_DED3A0 = v4;
  xmmword_DED3B0 = v5;
  result = *&v2;
  xmmword_DED370 = v1;
  unk_DED380 = v2;
  return result;
}

double sub_BC280@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v3 = qword_E718D8;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = xmmword_AF7C20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v2;
  *(a1 + 56) = 2;
  result = 20.0;
  *(a1 + 64) = xmmword_AF7C40;
  return result;
}

void sub_BC364()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication12ShowcaseCell____lazy_storage___measurementTextStackView);
}

uint64_t type metadata accessor for ShowcaseCell()
{
  result = qword_DED400;
  if (!qword_DED400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_BC5E0()
{
  result = qword_DED410;
  if (!qword_DED410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DED410);
  }

  return result;
}

uint64_t sub_BC638(void *a1)
{
  [a1 displayScale];
  [a1 horizontalSizeClass];
  return sub_AB3A00();
}

void *sub_BC6F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_BC728()
{
  sub_89F60();
  v0 = sub_ABA550();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v1 = qword_E718C8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  v26 = v1;
  *&v39[0] = v1;
  *(&v39[0] + 1) = v4;
  v39[1] = xmmword_AF7C20;
  v39[2] = xmmword_AF82C0;
  v40 = v0;
  v41 = 1;
  v42 = xmmword_AFB2E0;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0x656E696C64616568, 0xE800000000000000, v39);
  v6 = objc_opt_self();
  v23 = v3;
  v25 = v4;
  v22 = v4;
  v21 = v0;
  sub_2F118(v39, v57);
  v24 = v5;

  v7 = [v6 preferredFontForTextStyle:UIFontTextStyleBody];
  v20 = v0;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v8 = qword_E718D8;
  v9 = qword_E718D8;
  v10 = [v2 clearColor];
  *&v33[0] = v8;
  *(&v33[0] + 1) = v10;
  v33[1] = xmmword_AF7C20;
  v34 = 0;
  v35 = 0;
  v36 = v7;
  v37 = 1;
  v38 = xmmword_AF7C30;
  swift_allocObject();
  v11 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v33);
  v19 = v9;
  v18 = v10;
  v17 = v7;
  sub_2F118(v33, v57);

  v12 = [v6 preferredFontForTextStyle:UIFontTextStyleBody];
  v13 = [v2 clearColor];
  *&v27[0] = v1;
  *(&v27[0] + 1) = v13;
  v27[1] = xmmword_AF7C20;
  v28 = 0;
  v29 = 0;
  v30 = v12;
  v31 = 1;
  v32 = xmmword_AFB810;
  swift_allocObject();
  v14 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF82E0;
  *(v15 + 32) = v24;
  *(v15 + 40) = v11;
  *(v15 + 48) = v14;
  sub_2F118(v27, v57);

  v43[0] = v26;
  v43[1] = v13;
  v44 = xmmword_AF7C20;
  v45 = 0;
  v46 = 0;
  v47 = v12;
  v48 = 1;
  v49 = xmmword_AFB810;
  sub_2F174(v43);
  v50[0] = v8;
  v50[1] = v10;
  v51 = xmmword_AF7C20;
  v52 = 0;
  v53 = 0;
  v54 = v7;
  v55 = 1;
  v56 = xmmword_AF7C30;
  sub_2F174(v50);
  v57[0] = v26;
  v57[1] = v25;
  v58 = xmmword_AF7C20;
  v59 = xmmword_AF82C0;
  v60 = v20;
  v61 = 1;
  v62 = xmmword_AFB2E0;
  sub_2F174(v57);

  return v24;
}

double sub_BCB9C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if ([a1 horizontalSizeClass] == &dword_0 + 2)
    {
      a2 = 2;
    }

    else
    {
      a2 = 1;
    }
  }

  v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v7 = qword_E718D8;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 clearColor];
  *a4 = v7;
  *(a4 + 8) = v10;
  *(a4 + 16) = xmmword_AF7C20;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = v6;
  *(a4 + 56) = a2;
  result = 20.0;
  *(a4 + 64) = xmmword_AF7C40;
  return result;
}

double sub_BCCA4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 horizontalSizeClass];
  v4 = objc_opt_self();
  v5 = &UIFontTextStyleBody;
  if (v3 == &dword_0 + 2)
  {
    v5 = &UIFontTextStyleSubheadline;
  }

  v6 = [v4 preferredFontForTextStyle:*v5];
  v7 = qword_DE6C88;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  if (v3 == &dword_0 + 2)
  {
    v9 = 20.0;
  }

  else
  {
    v9 = 22.0;
  }

  if (v3 == &dword_0 + 2)
  {
    v10 = 20.0;
  }

  else
  {
    v10 = 8.0;
  }

  v11 = qword_E718C8;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];

  *a2 = v11;
  *(a2 + 8) = v14;
  result = 0.0;
  *(a2 + 16) = xmmword_AF7C20;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v8;
  *(a2 + 56) = 1;
  *(a2 + 64) = v9;
  *(a2 + 72) = v10;
  return result;
}

double sub_BCDCC(void *a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0);
  __chkstk_darwin(v4 - 8);
  v55 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v54 - v10;
  v12 = type metadata accessor for SymbolButton.Configuration(0);
  v13 = *(v12 - 1);
  v14 = __chkstk_darwin(v12);
  v60 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = (&v54 - v16);
  [a1 displayScale];
  v54 = [a1 horizontalSizeClass];
  sub_AB3A00();
  v59 = sub_BC728();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_BCB9C(a1, 0, 1, v64);
  swift_beginAccess();
  v25 = v19[3];
  v24 = v19[4];
  v26 = v19[6];
  v62[3] = v19[5];
  v62[4] = v26;
  v62[1] = v25;
  v62[2] = v24;
  v62[0] = v19[2];
  v27 = v64[4];
  v19[5] = v64[3];
  v19[6] = v27;
  v28 = v64[1];
  v19[2] = v64[0];
  v19[3] = v28;
  v19[4] = v64[2];
  sub_2F118(v64, v66);
  sub_2F174(v62);
  v58 = v19;
  sub_2EB2A8();
  sub_2F174(v64);
  sub_BCCA4(a1, v65);
  swift_beginAccess();
  v30 = v21[3];
  v29 = v21[4];
  v31 = v21[6];
  v63[3] = v21[5];
  v63[4] = v31;
  v63[1] = v30;
  v63[2] = v29;
  v63[0] = v21[2];
  v32 = v65[4];
  v21[5] = v65[3];
  v21[6] = v32;
  v33 = v65[1];
  v21[2] = v65[0];
  v21[3] = v33;
  v21[4] = v65[2];
  sub_2F118(v65, v66);
  sub_2F174(v63);
  sub_2EB2A8();
  sub_2F174(v65);
  v56 = v23;
  v57 = v21;
  sub_2F48A4(v23, a1, 0, 0);
  (*(v13 + 56))(v11, 1, 1, v12);
  v61 = v11;
  sub_BD3C8(v11, v9);
  v34 = *(v13 + 48);
  if (v34(v9, 1, v12) == 1)
  {
    SymbolButton.Configuration.init()(v17);
    if (v34(v9, 1, v12) != 1)
    {
      sub_12E1C(v9, &unk_DFAAB0);
    }
  }

  else
  {
    sub_BD554(v9, v17);
  }

  sub_25C978(0xFEu, 0, v66);
  sub_BD438(v66, v17);
  v35 = SymbolButton.Configuration.platterMinimumSize.unsafeMutableAddressor();
  v36 = *v35;
  *(v17 + v12[13]) = *v35;
  SymbolButton.CustomView.init(view:)(0, v67, v36, v37);
  v38 = v17 + v12[10];
  sub_160B4(v67, v38, &qword_DED418);
  v39 = v55;
  sub_ABA670();
  v40 = sub_ABA680();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  sub_160B4(v39, v17 + v12[9], &unk_DFFBC0);
  if (*v38)
  {
    v41 = *&UIEdgeInsetsZero.bottom;
    *(v38 + 8) = *&UIEdgeInsetsZero.top;
    *(v38 + 24) = v41;
  }

  v42 = SymbolButton.Background.tertiary.unsafeMutableAddressor();
  v43 = *v42;
  v44 = v42[1];
  v46 = v42[2];
  v45 = v42[3];
  v47 = v17[25];
  v48 = v17[26];

  v49 = v44;
  sub_3F9D0(v47, v48);
  v17[25] = v43;
  v17[26] = v44;
  v17[27] = v46;
  v17[28] = v45;
  sub_12E1C(v61, &unk_DFAAB0);
  v50 = v60;
  sub_BD494(v17, v60);
  v51 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v52 = SymbolButton.init(configuration:handler:)(v50, 0, 0);
  [v52 intrinsicContentSize];
  sub_BD4F8(v17);

  return a2;
}

uint64_t sub_BD3C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BD494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BD4F8(uint64_t a1)
{
  v2 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BD554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_BD5B8()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_headline);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_artworkDisplayStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_badgeView) = 0;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_textComponents);
  *v4 = sub_BC728();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12ShowcaseCell_measurementTextStackViewComponent) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication12ShowcaseCell____lazy_storage___measurementTextStackView) = 0;
  sub_ABAFD0();
  __break(1u);
}

void *sub_BD694()
{
  v1 = v0;
  v35 = sub_ABA140();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_ABA100();
  __chkstk_darwin(v4);
  v5 = sub_AB7C50();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 72) = _swiftEmptyArrayStorage;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + 80) = UnfairLock.init()();
  v33[1] = sub_13C80(0, &qword_DE8ED0);
  sub_AB7C30();
  *&v37[0] = _swiftEmptyArrayStorage;
  sub_C33F4(&qword_DED790, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01270);
  sub_809E0(&qword_DED7A0, &qword_E01270);
  sub_ABABB0();
  (*(v34 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
  *(v0 + 88) = sub_ABA180();
  *(v0 + 96) = [objc_allocWithZone(type metadata accessor for MediaSocialProfileCoordinator()) init];
  *(v0 + 104) = sub_965C0(_swiftEmptyArrayStorage);
  sub_C32A0(v37);
  v6 = v37[7];
  *(v0 + 208) = v37[6];
  *(v0 + 224) = v6;
  *(v0 + 240) = v37[8];
  v7 = v38;
  v8 = v37[3];
  *(v0 + 144) = v37[2];
  *(v0 + 160) = v8;
  v9 = v37[5];
  *(v0 + 176) = v37[4];
  *(v0 + 192) = v9;
  v10 = v37[1];
  *(v0 + 112) = v37[0];
  *(v0 + 128) = v10;
  *(v0 + 256) = v7;
  *(v0 + 264) = 0;
  v11 = JSBridge.shared.unsafeMutableAddressor();
  v12 = *v11;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = *&stru_B8.segname[(swift_isaMask & *v12) + 16];
  v15 = v12;

  v14(sub_C32F8, v13);

  v16 = swift_allocObject();
  swift_weakInit();
  if (qword_DE6B00 != -1)
  {
    swift_once();
  }

  v17 = qword_E71628;
  v18 = v1[12];
  v19 = swift_allocObject();
  *(v19 + 16) = sub_C3300;
  *(v19 + 24) = v16;
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v20 = v17;
  v21 = v18;

  v1[7] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v18, 1, 1, sub_70638, v19);

  v22 = *JSBridge.bridgeInitializationDidSucceed.unsafeMutableAddressor();
  v23 = *v11;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v22;
  v26 = v23;

  swift_allocObject();
  v1[8] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v25, v23, 1, 1, sub_C3308, v24);

  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_C3300;
  *(v28 + 24) = v16;
  aBlock[4] = sub_70638;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1546C;
  aBlock[3] = &block_descriptor_20;
  v29 = _Block_copy(aBlock);

  v30 = [v27 scheduledTimerWithTimeInterval:0 repeats:v29 block:4.0];

  _Block_release(v29);
  v31 = v1[2];
  v1[2] = v30;

  return v1;
}

void sub_BDCE8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(a1 + 48);
    v5 = OBJC_IVAR____TtC11MusicJSCore7JSStore_account;
    swift_beginAccess();
    v6 = *&v4[v5];
    v7 = v6;
    v8 = *JSStore.didChangeAccountNotification.unsafeMutableAddressor();
    v9 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v10 = v8;
    v11 = v4;
    *(v3 + 40) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v10, v4, 1, 1, sub_C3954, v9);

    sub_C09B8(v6);
  }
}

void sub_BDE28()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_AB2BB0();
    if (v5)
    {
      type metadata accessor for JSStore();
      if (swift_dynamicCast())
      {
        v0 = OBJC_IVAR____TtC11MusicJSCore7JSStore_account;
        swift_beginAccess();
        v1 = *&v3[v0];
        v2 = v1;
        sub_C09B8(v1);

        return;
      }
    }

    else
    {
      sub_12E1C(v4, &unk_DE8E40);
    }
  }
}

void sub_BDF2C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 96);

    sub_381ED0(sub_C3328, a1);
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;
    if (v5)
    {
      [v5 invalidate];
    }

    else
    {
    }
  }
}

uint64_t sub_BE01C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    memmove(v8, (result + 112), 0x98uLL);
    if (sub_90064(v8) == 1)
    {
      v2 = sub_6B7B4(0, 1, 1, _swiftEmptyArrayStorage);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_6B7B4((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v2[v4 + 32] = 0;
      if (*(v1 + 264))
      {
LABEL_6:
        if (!*(v2 + 2))
        {
LABEL_17:
        }

LABEL_14:
        v7 = *(v1 + 16);
        *(v1 + 16) = 0;
        if (v7)
        {
          [v7 invalidate];
        }

        sub_BE928(v2);
        goto LABEL_17;
      }
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
      if (*(v1 + 264))
      {
        goto LABEL_6;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_6B7B4(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    if (v6 >= v5 >> 1)
    {
      v2 = sub_6B7B4((v5 > 1), v6 + 1, 1, v2);
    }

    *(v2 + 2) = v6 + 1;
    v2[v6 + 32] = 1;
    goto LABEL_14;
  }

  return result;
}

void *sub_BE1B0()
{
  type metadata accessor for SocialUserProfileCoordinator();
  swift_allocObject();
  result = sub_BD694();
  qword_E70D38 = result;
  return result;
}

uint64_t sub_BE1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 224);
  v3 = *(a1 + 192);
  v20 = *(a1 + 208);
  v21 = v2;
  v4 = *(a1 + 224);
  v22 = *(a1 + 240);
  v5 = *(a1 + 160);
  v7 = *(a1 + 128);
  v16 = *(a1 + 144);
  v6 = v16;
  v17 = v5;
  v8 = *(a1 + 160);
  v9 = *(a1 + 192);
  v18 = *(a1 + 176);
  v10 = v18;
  v19 = v9;
  v11 = *(a1 + 128);
  v15[0] = *(a1 + 112);
  v12 = v15[0];
  v15[1] = v11;
  *(a2 + 96) = v20;
  *(a2 + 112) = v4;
  *(a2 + 128) = *(a1 + 240);
  *(a2 + 32) = v6;
  *(a2 + 48) = v8;
  *(a2 + 64) = v10;
  *(a2 + 80) = v3;
  v23 = *(a1 + 256);
  *(a2 + 144) = *(a1 + 256);
  *a2 = v12;
  *(a2 + 16) = v7;
  return sub_C3374(v15, v14);
}

uint64_t sub_BE288(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 224);
  v4 = *(a1 + 192);
  v22 = *(a1 + 208);
  v23 = v3;
  v5 = *(a1 + 224);
  v24 = *(a1 + 240);
  v6 = *(a1 + 160);
  v7 = *(a1 + 128);
  v18 = *(a1 + 144);
  v19 = v6;
  v8 = *(a1 + 160);
  v9 = *(a1 + 192);
  v20 = *(a1 + 176);
  v21 = v9;
  v10 = *(a1 + 128);
  v17[0] = *(a1 + 112);
  v17[1] = v10;
  v26[6] = v22;
  v26[7] = v5;
  v26[8] = *(a1 + 240);
  v26[2] = v18;
  v26[3] = v8;
  v26[4] = v20;
  v26[5] = v4;
  v25 = *(a1 + 256);
  v27 = *(a1 + 256);
  v26[0] = v17[0];
  v26[1] = v7;
  v11 = *(a2 + 112);
  *(a1 + 208) = *(a2 + 96);
  *(a1 + 224) = v11;
  *(a1 + 240) = *(a2 + 128);
  *(a1 + 256) = *(a2 + 144);
  v12 = *(a2 + 48);
  *(a1 + 144) = *(a2 + 32);
  *(a1 + 160) = v12;
  v13 = *(a2 + 80);
  *(a1 + 176) = *(a2 + 64);
  *(a1 + 192) = v13;
  v14 = *(a2 + 16);
  *(a1 + 112) = *a2;
  *(a1 + 128) = v14;
  sub_C3374(v17, v16);
  sub_C3374(a2, v16);
  sub_12E1C(v26, &unk_E05300);
  sub_BECA0(v17);
  return sub_12E1C(v17, &unk_E05300);
}

id sub_BE3B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 264);
  *a2 = v2;
  return v2;
}

uint64_t sub_BE3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  swift_beginAccess();
  v8 = *(a2 + 104);

  v9 = sub_D12B8(v7, v8);

  if (v9)
  {
    sub_13C80(0, &qword_DE8ED0);
    v10 = swift_allocObject();
    v10[2] = a3;
    v10[3] = a4;
    v10[4] = v9;

    v11 = v9;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_C3964, v10);
  }

  else
  {
    v13 = *(a2 + 264);
    if (v13)
    {
      v14 = swift_allocObject();
      v14[2] = a2;
      v14[3] = v7;
      v14[4] = v13;
      v15 = v13;

      sub_C3548(v15, v7, sub_C3DF0, v14);
    }

    else
    {
      v16 = *(a2 + 224);
      v17 = *(a2 + 192);
      v48 = *(a2 + 208);
      v49 = v16;
      v18 = *(a2 + 224);
      v50 = *(a2 + 240);
      v19 = *(a2 + 160);
      v20 = *(a2 + 128);
      v44 = *(a2 + 144);
      v45 = v19;
      v21 = *(a2 + 160);
      v22 = *(a2 + 192);
      v46 = *(a2 + 176);
      v47 = v22;
      v23 = *(a2 + 128);
      v43[0] = *(a2 + 112);
      v43[1] = v23;
      v24 = *(a2 + 224);
      v39 = *(a2 + 208);
      v40 = v24;
      v41 = *(a2 + 240);
      v25 = *(a2 + 160);
      v35 = *(a2 + 144);
      v36 = v25;
      v26 = *(a2 + 192);
      v37 = *(a2 + 176);
      v38 = v26;
      v27 = *(a2 + 128);
      v33 = *(a2 + 112);
      v34 = v27;
      v60 = v48;
      v61 = v18;
      v62 = *(a2 + 240);
      v56 = v44;
      v57 = v21;
      v58 = v46;
      v59 = v17;
      v51 = *(a2 + 256);
      v42 = *(a2 + 256);
      v63 = *(a2 + 256);
      v54 = v33;
      v55 = v20;
      result = sub_90064(&v54);
      if (result != 1)
      {
        v52[6] = v60;
        v52[7] = v61;
        v52[8] = v62;
        v53 = v63;
        v52[2] = v56;
        v52[3] = v57;
        v52[4] = v58;
        v52[5] = v59;
        v52[0] = v54;
        v52[1] = v55;
        type metadata accessor for SocialLegacyProfileBuilder();
        swift_allocObject();
        v28 = v7;
        sub_C3374(v43, v31);
        sub_C3714(v28);

        v29 = sub_C2754(v52);

        v31[6] = v39;
        v31[7] = v40;
        v31[8] = v41;
        v32 = v42;
        v31[2] = v35;
        v31[3] = v36;
        v31[4] = v37;
        v31[5] = v38;
        v31[0] = v33;
        v31[1] = v34;
        sub_C343C(v31, v30);
        sub_C0F2C(v29, v28, 0, v43);
        sub_12E1C(v43, &unk_E05300);

        return sub_12E1C(v43, &unk_E05300);
      }
    }
  }

  return result;
}

void sub_BE70C()
{
  sub_C32A0(v0);
  UnfairLock.assertNotOwned()();
  UnfairLock.locked<A>(_:)(sub_C3FA0);
}

uint64_t sub_BE7D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 104);

  v7 = sub_D12B8(a2, v6);

  *a3 = v7;
  return result;
}

uint64_t sub_BE84C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_13C80(0, &qword_DE8ED0);
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  v7 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_C3964, v6);
}

void sub_BE928(uint64_t a1)
{
  if (sub_412F90(0, a1))
  {
    sub_38251C();
    v2 = swift_allocObject();
    swift_weakInit();

    sub_381ED0(sub_C3D78, v2);
  }

  if (sub_412F90(1, a1))
  {
    UnfairLock.assertNotOwned()();
    UnfairLock.locked<A>(_:)(sub_C3F88);
  }
}

uint64_t sub_BEA0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);
    UnfairLock.locked<A>(_:)(a4);
  }

  return result;
}

NSString sub_BEAC0()
{
  result = sub_AB9260();
  qword_E70D40 = result;
  return result;
}

NSString sub_BEAF8()
{
  result = sub_AB9260();
  qword_E70D48 = result;
  return result;
}

uint64_t sub_BEB30()
{
  v1 = v0;
  UnfairLock.assertOwned()();
  swift_beginAccess();
  v2 = *(v0 + 72);
  v3 = *(v2 + 16);

  if (v3)
  {
    v5 = 0;
    v6 = v2 + 32;
    v7 = _swiftEmptyArrayStorage;
    while (v5 < *(v2 + 16))
    {
      sub_8FEC8(v6, v12);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_C3D40(v12, v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_6D680(0, v7[2] + 1, 1);
          v7 = v13;
        }

        v10 = v7[2];
        v9 = v7[3];
        if (v10 >= v9 >> 1)
        {
          sub_6D680((v9 > 1), v10 + 1, 1);
          v7 = v13;
        }

        v7[2] = v10 + 1;
        result = sub_C3D40(v11, &v7[5 * v10 + 4]);
      }

      else
      {
        result = sub_8FF3C(v12);
      }

      ++v5;
      v6 += 40;
      if (v3 == v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_13:

    *(v1 + 72) = v7;
  }

  return result;
}

uint64_t sub_BECA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v89 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_AB7C50();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnfairLock.assertOwned()();
  LODWORD(v86) = *(v1 + 24);
  if ((v86 & 1) == 0)
  {
    *(v1 + 24) = 1;
  }

  type metadata accessor for SocialContactsCoordinator();
  v8 = *(v1 + 224);
  v177[6] = *(v1 + 208);
  v177[7] = v8;
  v177[8] = *(v1 + 240);
  v178 = *(v1 + 256);
  v9 = *(v1 + 160);
  v177[2] = *(v1 + 144);
  v177[3] = v9;
  v10 = *(v1 + 192);
  v177[4] = *(v1 + 176);
  v177[5] = v10;
  v11 = *(v1 + 128);
  v177[0] = *(v1 + 112);
  v177[1] = v11;
  sub_C3374(v177, &v146);
  v12 = sub_16ABF0(v177);
  sub_12E1C(v177, &unk_E05300);
  if (v12)
  {
    sub_16CE70();
  }

  v13 = *(v2 + 192);
  v14 = *(v2 + 224);
  v169 = *(v2 + 208);
  v170 = v14;
  v171 = *(v2 + 240);
  v15 = *(v2 + 128);
  v16 = *(v2 + 160);
  v165 = *(v2 + 144);
  v166 = v16;
  v17 = *(v2 + 160);
  v18 = *(v2 + 192);
  v167 = *(v2 + 176);
  v168 = v18;
  v19 = *(v2 + 128);
  v164[0] = *(v2 + 112);
  v164[1] = v19;
  v20 = *(v2 + 160);
  v21 = *(v2 + 192);
  v122 = *(v2 + 176);
  v123 = v21;
  v124 = *(v2 + 208);
  v22 = *(v2 + 128);
  v118 = *(v2 + 112);
  v119 = v22;
  v120 = *(v2 + 144);
  v121 = v20;
  v23 = *(v2 + 248);
  v108 = *(v2 + 232);
  v109 = v23;
  v24 = *(a1 + 16);
  v154 = *a1;
  v155 = v24;
  v25 = *(a1 + 80);
  v158 = *(a1 + 64);
  v159 = v25;
  v26 = *(a1 + 48);
  v156 = *(a1 + 32);
  v157 = v26;
  v27 = *(a1 + 128);
  v161 = *(a1 + 112);
  v162 = v27;
  v160 = *(a1 + 96);
  v173[4] = v167;
  v173[5] = v13;
  v173[6] = v169;
  v173[0] = v118;
  v173[1] = v15;
  v172 = *(v2 + 256);
  v28 = v170;
  v163 = *(a1 + 144);
  v173[2] = v165;
  v173[3] = v17;
  v175 = *(v2 + 232);
  v176 = *(v2 + 248);
  v174 = v170;
  v29 = sub_90064(v173);
  v91 = v5;
  if (v29 == 1)
  {
    v152 = v160;
    *v153 = v161;
    *&v153[2] = v162;
    v153[4] = v163;
    v148 = v156;
    v149 = v157;
    v150 = v158;
    v151 = v159;
    v146 = v154;
    v147 = v155;
    if (sub_90064(&v146) == 1)
    {
      v142 = v122;
      v143 = v123;
      v144 = v124;
      v138 = v118;
      v139 = v119;
      v140 = v120;
      v141 = v121;
      *&v145[0] = v28;
      *(&v145[1] + 8) = v109;
      *(v145 + 8) = v108;
      sub_C3374(v164, &v128);
      sub_C3374(a1, &v128);
      result = sub_12E1C(&v138, &unk_E05300);
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  v152 = v160;
  *v153 = v161;
  *&v153[2] = v162;
  v153[4] = v163;
  v148 = v156;
  v149 = v157;
  v150 = v158;
  v151 = v159;
  v146 = v154;
  v147 = v155;
  if (sub_90064(&v146) == 1)
  {
LABEL_9:
    v150 = v122;
    v151 = v123;
    v152 = v124;
    v146 = v118;
    v147 = v119;
    v148 = v120;
    v149 = v121;
    *&v153[3] = v109;
    *&v153[1] = v108;
    *&v153[19] = v161;
    *&v153[21] = v162;
    *&v153[7] = v155;
    *&v153[5] = v154;
    *&v153[15] = v159;
    *&v153[13] = v158;
    *&v153[11] = v157;
    *&v153[9] = v156;
    v153[0] = v28;
    v153[23] = v163;
    *&v153[17] = v160;
    sub_C3374(v164, &v138);
    sub_C3374(a1, &v138);
    sub_12E1C(&v146, &unk_DED7B0);
LABEL_10:
    v85 = v4;
    v31 = *(v2 + 224);
    v160 = *(v2 + 208);
    v161 = v31;
    v162 = *(v2 + 240);
    v163 = *(v2 + 256);
    v32 = *(v2 + 160);
    v156 = *(v2 + 144);
    v157 = v32;
    v33 = *(v2 + 192);
    v158 = *(v2 + 176);
    v159 = v33;
    v34 = *(v2 + 128);
    v154 = *(v2 + 112);
    v155 = v34;
    if (sub_90064(&v154) == 1)
    {
      UnfairLock.assertOwned()();
      swift_beginAccess();
      v35 = *(v2 + 72);
      v36 = *(v35 + 16);
      if (v36)
      {
        v37 = v35 + 32;
        v86 = *(v2 + 72);

        v38 = 0;
        do
        {
          sub_8FEC8(v37, &v146);
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_unknownObjectRelease();
            v39 = *(&v147 + 1);
            v40 = v148;
            sub_13C80(0, &qword_DE8ED0);
            v41 = swift_allocObject();
            v41[2] = v39;
            v41[3] = v40;
            v41[4] = 0;

            static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_C3FC4, v41);
          }

          else
          {
            v38 = 1;
          }

          sub_8FF3C(&v146);
          v37 += 40;
          --v36;
        }

        while (v36);

        if (v38)
        {
          sub_BEB30();
        }
      }
    }

    if (!*(v2 + 264))
    {
      v46 = sub_965C0(_swiftEmptyArrayStorage);
      swift_beginAccess();
      *(v2 + 104) = v46;

      sub_C06F4();
    }

    v47 = *(v2 + 224);
    v48 = *(v2 + 192);
    v134 = *(v2 + 208);
    v135 = v47;
    v49 = *(v2 + 224);
    v136 = *(v2 + 240);
    v50 = *(v2 + 160);
    v51 = *(v2 + 128);
    v130 = *(v2 + 144);
    v131 = v50;
    v52 = *(v2 + 160);
    v53 = *(v2 + 192);
    v132 = *(v2 + 176);
    v133 = v53;
    v54 = *(v2 + 128);
    v128 = *(v2 + 112);
    v129 = v54;
    v144 = v134;
    v145[0] = v49;
    v145[1] = *(v2 + 240);
    v140 = v130;
    v141 = v52;
    v142 = v132;
    v143 = v48;
    v137 = *(v2 + 256);
    *&v145[2] = *(v2 + 256);
    v138 = v128;
    v139 = v51;
    v55 = sub_90064(&v138);
    v4 = v85;
    if (v55 != 1)
    {
      v56 = objc_opt_self();
      v152 = v134;
      *v153 = v135;
      *&v153[2] = v136;
      v153[4] = v137;
      v148 = v130;
      v149 = v131;
      v150 = v132;
      v151 = v133;
      v146 = v128;
      v147 = v129;
      sub_C343C(&v146, &v118);
      v57 = sub_AB9260();
      v58 = sub_AB9260();
      v59 = [v56 resolvableIdentityWithIdentifier:v57 displayName:v58];

      MRSetApplicationUserIdentity();
      sub_12E1C(&v128, &unk_E05300);
    }

    v60 = JSBridge.shared.unsafeMutableAddressor();
    v61 = *&stru_B8.segname[(swift_isaMask & **v60) + 16];
    v62 = *v60;

    v61(sub_C33E4, v2);

    v63 = *(v2 + 224);
    v64 = *(v2 + 192);
    v114 = *(v2 + 208);
    v115 = v63;
    v65 = *(v2 + 224);
    v116 = *(v2 + 240);
    v66 = *(v2 + 160);
    v67 = *(v2 + 128);
    v110 = *(v2 + 144);
    v111 = v66;
    v68 = *(v2 + 160);
    v69 = *(v2 + 192);
    v112 = *(v2 + 176);
    v113 = v69;
    v70 = *(v2 + 128);
    v108 = *(v2 + 112);
    v109 = v70;
    v124 = v114;
    v125 = v65;
    v126 = *(v2 + 240);
    v120 = v110;
    v121 = v68;
    v122 = v112;
    v123 = v64;
    v117 = *(v2 + 256);
    v127 = *(v2 + 256);
    v118 = v108;
    v119 = v67;
    if (sub_90064(&v118) != 1 && BYTE9(v121) == 1 && BYTE8(v121) == 1)
    {
      v104 = v124;
      v105 = v125;
      v106 = v126;
      v107 = v127;
      v100 = v120;
      v101 = v121;
      v102 = v122;
      v103 = v123;
      v98 = v118;
      v99 = v119;
      UIScreen.Dimensions.size.getter(*&v118);
      v152 = v104;
      *v153 = v105;
      *&v153[2] = v106;
      v153[4] = v107;
      v148 = v100;
      v149 = v101;
      v150 = v102;
      v151 = v103;
      v146 = v98;
      v147 = v99;
      if (byte_DF2A18 != 1)
      {
        byte_DF2A18 = 1;
        v71 = objc_allocWithZone(NSOperationQueue);
        v94[6] = v114;
        v94[7] = v115;
        v94[8] = v116;
        v95 = v117;
        v94[2] = v110;
        v94[3] = v111;
        v94[4] = v112;
        v94[5] = v113;
        v94[0] = v108;
        v94[1] = v109;
        sub_C3374(&v108, v96);
        sub_C343C(v94, v96);
        v72 = [v71 init];
        v73 = sub_AB9260();
        [v72 setName:v73];

        [v72 setQualityOfService:9];
        v74 = swift_allocObject();
        v75 = *v153;
        *(v74 + 120) = v152;
        *(v74 + 136) = v75;
        *(v74 + 152) = *&v153[2];
        v76 = v149;
        *(v74 + 56) = v148;
        *(v74 + 72) = v76;
        v77 = v151;
        *(v74 + 88) = v150;
        *(v74 + 104) = v77;
        v78 = v147;
        *(v74 + 24) = v146;
        *(v74 + 16) = 0;
        v79 = v153[4];
        *(v74 + 40) = v78;
        *(v74 + 176) = 0;
        *(v74 + 184) = 0;
        *(v74 + 168) = v79;
        v93[4] = sub_C3538;
        v93[5] = v74;
        v93[0] = _NSConcreteStackBlock;
        v93[1] = 1107296256;
        v93[2] = sub_1B5EB4;
        v93[3] = &block_descriptor_75;
        v80 = _Block_copy(v93);
        v96[6] = v114;
        v96[7] = v115;
        v96[8] = v116;
        v97 = v117;
        v96[2] = v110;
        v96[3] = v111;
        v96[4] = v112;
        v96[5] = v113;
        v96[0] = v108;
        v96[1] = v109;
        sub_C343C(v96, &v92);

        [v72 addOperationWithBlock:v80];
        sub_12E1C(&v108, &unk_E05300);
        _Block_release(v80);

        sub_12E1C(&v108, &unk_E05300);
      }
    }

    goto LABEL_31;
  }

  v134 = v160;
  v135 = v161;
  v136 = v162;
  v137 = v163;
  v130 = v156;
  v131 = v157;
  v132 = v158;
  v133 = v159;
  v128 = v154;
  v129 = v155;
  v84[1] = v161;
  sub_C3374(v164, &v138);
  sub_C3374(v164, &v138);
  sub_C3374(a1, &v138);
  v42 = v4;
  isa = sub_AB8FD0().super.isa;
  v44 = sub_AB8FD0().super.isa;
  v45 = [(objc_class *)isa isEqualToDictionary:v44];

  v4 = v42;
  sub_12E1C(v164, &unk_E05300);
  sub_12E1C(&v128, &unk_E05300);
  v141 = v121;
  v142 = v122;
  v143 = v123;
  v144 = v124;
  v138 = v118;
  v139 = v119;
  v140 = v120;
  *&v145[0] = v28;
  *(&v145[1] + 8) = v109;
  *(v145 + 8) = v108;
  result = sub_12E1C(&v138, &unk_E05300);
  if ((v45 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  if ((v86 & 1) == 0)
  {
LABEL_31:
    *&v156 = sub_C33EC;
    *(&v156 + 1) = v2;
    *&v154 = _NSConcreteStackBlock;
    *(&v154 + 1) = 1107296256;
    *&v155 = sub_1B5EB4;
    *(&v155 + 1) = &block_descriptor_69;
    v81 = _Block_copy(&v154);

    v82 = v87;
    sub_AB7C30();
    *&v138 = _swiftEmptyArrayStorage;
    sub_C33F4(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
    sub_809E0(&qword_DF06D0, &unk_DE9C30);
    v83 = v89;
    sub_ABABB0();
    sub_ABA160();
    (*(v91 + 8))(v83, v4);
    (*(v88 + 8))(v82, v90);
    _Block_release(v81);
  }

  return result;
}

void sub_BFA24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = OBJC_IVAR____TtC11MusicJSCore7JSStore_account;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = *(a2 + 240);
    v65 = *(a2 + 224);
    v66 = v6;
    v7 = *(a2 + 144);
    v8 = *(a2 + 176);
    v61 = *(a2 + 160);
    v62 = v8;
    v9 = *(a2 + 208);
    v10 = v9;
    v63 = *(a2 + 192);
    v64 = v9;
    v11 = *(a2 + 112);
    v12 = *(a2 + 144);
    v59 = *(a2 + 128);
    v60 = v12;
    v13 = *(a2 + 160);
    v14 = *(a2 + 192);
    v55 = *(a2 + 176);
    v56 = v14;
    v57 = *(a2 + 208);
    v58 = v11;
    v15 = *(a2 + 128);
    v51 = *(a2 + 112);
    v52 = v15;
    v53 = *(a2 + 144);
    v54 = v13;
    v16 = *(a2 + 248);
    v49 = *(a2 + 232);
    v50 = v16;
    v68[0] = v51;
    v68[1] = v59;
    v68[5] = v63;
    v68[6] = v10;
    v68[3] = v61;
    v68[4] = v55;
    v67 = *(a2 + 256);
    v17 = v65;
    v68[2] = v7;
    v70 = *(a2 + 232);
    v71 = *(a2 + 248);
    v69 = v65;
    if (sub_90064(v68) == 1)
    {
      v85 = v55;
      v86 = v56;
      v87 = v57;
      v81 = v51;
      v82 = v52;
      v83 = v53;
      v84 = v54;
      *v88 = v65;
      *&v88[24] = v50;
      *&v88[8] = v49;
      v18 = v5;
      sub_C3374(&v58, v72);
      sub_12E1C(&v81, &unk_E05300);
      v17 = 0;
    }

    else
    {
      v85 = v55;
      v86 = v56;
      v87 = v57;
      v81 = v51;
      v82 = v52;
      v83 = v53;
      v84 = v54;
      *v88 = v65;
      *&v88[24] = v50;
      *&v88[8] = v49;
      v19 = v5;
      sub_C3374(&v58, v72);

      sub_12E1C(&v81, &unk_E05300);
    }

    JSAccount.userProfileDictionary.setter(v17);
    type metadata accessor for SocialContactsCoordinator();
    v20 = *(a2 + 224);
    v21 = *(a2 + 192);
    v77 = *(a2 + 208);
    v78 = v20;
    v22 = *(a2 + 224);
    v79 = *(a2 + 240);
    v23 = *(a2 + 160);
    v24 = *(a2 + 128);
    v73 = *(a2 + 144);
    v74 = v23;
    v25 = *(a2 + 160);
    v26 = *(a2 + 192);
    v75 = *(a2 + 176);
    v76 = v26;
    v27 = *(a2 + 128);
    v72[0] = *(a2 + 112);
    v72[1] = v27;
    v28 = *(a2 + 224);
    v45 = *(a2 + 208);
    v46 = v28;
    v47 = *(a2 + 240);
    v29 = *(a2 + 160);
    v41 = *(a2 + 144);
    v42 = v29;
    v30 = *(a2 + 192);
    v43 = *(a2 + 176);
    v44 = v30;
    v31 = *(a2 + 128);
    v39 = *(a2 + 112);
    v40 = v31;
    v87 = v77;
    *v88 = v22;
    *&v88[16] = *(a2 + 240);
    v83 = v73;
    v84 = v25;
    v85 = v75;
    v86 = v21;
    v80 = *(a2 + 256);
    v48 = *(a2 + 256);
    *&v88[32] = *(a2 + 256);
    v81 = v39;
    v82 = v24;
    if (sub_90064(&v81) == 1 || (v35[6] = v45, v35[7] = v46, v35[8] = v47, v36 = v48, v35[2] = v41, v35[3] = v42, v35[4] = v43, v35[5] = v44, v35[0] = v39, v35[1] = v40, sub_C343C(v35, &v34), (sub_16ABF0(v72) & 1) != 0))
    {
      v37 = 0u;
      v38 = 0u;
    }

    else
    {
      sub_16C270(0xD000000000000010, 0x8000000000B4F1E0, &v37);
      if (*(&v38 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2BB0);
        if (swift_dynamicCast())
        {
          v33 = v34;
          sub_12E1C(v72, &unk_E05300);
          v32 = v33;
          goto LABEL_10;
        }

LABEL_9:
        sub_12E1C(v72, &unk_E05300);
        v32 = &_swiftEmptySetSingleton;
LABEL_10:
        JSAccount.friendsDiscoverySocialProfileIDs.setter(v32);

        return;
      }
    }

    sub_12E1C(&v37, &unk_DE8E40);
    goto LABEL_9;
  }
}

void sub_BFDCC(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (qword_DE67B8 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:qword_E70D48 object:a1];
}

void sub_BFE78(void *a1)
{
  v2 = v1;
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v47 = *(v8 - 8);
  __chkstk_darwin(v8);
  v46 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnfairLock.assertOwned()();
  v10 = v1[33];
  if (a1)
  {
    if (!v10)
    {
      goto LABEL_5;
    }

    type metadata accessor for JSSocialProfile();
    v11 = v10;
    v12 = a1;
    v13 = sub_ABA790();

    if (v13)
    {
      return;
    }

    v10 = v2[33];
    if (!v10)
    {
LABEL_5:
      v43 = v7;
      v44 = v8;
      v45 = v5;
      v2[6] = 0;

      UnfairLock.assertOwned()();
      swift_beginAccess();
      v14 = v2[9];
      v15 = *(v14 + 16);
      if (v15)
      {
        v41[1] = v2[9];
        v42 = v4;
        v16 = v14 + 32;

        v17 = 0;
        do
        {
          sub_8FEC8(v16, aBlock);
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_unknownObjectRelease();
            v19 = v50;
            v18 = v51;
            sub_13C80(0, &qword_DE8ED0);
            v20 = swift_allocObject();
            v20[2] = v19;
            v20[3] = v18;
            v20[4] = 0;

            static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_C3FC4, v20);
          }

          else
          {
            v17 = 1;
          }

          sub_8FF3C(aBlock);
          v16 += 40;
          --v15;
        }

        while (v15);

        v4 = v42;
        if (v17)
        {
          sub_BEB30();
        }
      }

      goto LABEL_15;
    }
  }

  else if (!v10)
  {
    return;
  }

  v43 = v7;
  v44 = v8;
  v45 = v5;
  v21 = objc_opt_self();
  v22 = v10;
  JSSocialProfile.profileID.getter();
  v23 = sub_AB9260();

  JSSocialProfile.name.getter();
  v24 = v4;
  v25 = sub_AB9260();

  v26 = [v21 resolvableIdentityWithIdentifier:v23 displayName:v25];

  v4 = v24;
  MRSetApplicationUserIdentity();

  v27 = *JSSocialProfile.NotificationNames.didUpdate.unsafeMutableAddressor();
  v28 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v29 = v22;
  v2[6] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v27, v10, 1, 1, sub_C3D14, v28);

  v30 = *JSBridge.shared.unsafeMutableAddressor();
  v31 = v2[33];
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  v33 = *&stru_B8.segname[(swift_isaMask & *v30) + 16];
  v34 = v31;
  v35 = v30;
  v33(sub_C3D1C, v32);

LABEL_15:
  v36 = sub_965C0(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v2[13] = v36;

  sub_C1574();
  v37 = swift_allocObject();
  swift_weakInit();
  v51 = sub_C3D0C;
  v52 = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  v50 = &block_descriptor_157;
  v38 = _Block_copy(aBlock);

  v39 = v46;
  sub_AB7C30();
  v48 = _swiftEmptyArrayStorage;
  sub_C33F4(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
  sub_809E0(&qword_DF06D0, &unk_DE9C30);
  v40 = v43;
  sub_ABABB0();
  sub_ABA160();
  (*(v45 + 8))(v40, v4);
  (*(v47 + 8))(v39, v44);
  _Block_release(v38);
}

uint64_t sub_C04C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnfairLock.locked<A>(_:)(sub_C3D24);
  }

  return result;
}

uint64_t sub_C054C(uint64_t a1)
{
  v2 = sub_965C0(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *(a1 + 104) = v2;

  return sub_C1574();
}

void sub_C05B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = OBJC_IVAR____TtC11MusicJSCore7JSStore_account;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    v6 = a2;
    v7 = v5;
    JSAccount.userSocialProfile.setter(a2);
  }
}

void sub_C062C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() defaultCenter];
    if (qword_DE67B0 != -1)
    {
      swift_once();
    }

    [v2 postNotificationName:qword_E70D40 object:v1];
  }
}

void sub_C06F4()
{
  v1 = v0;
  UnfairLock.assertOwned()();
  if (!*(v0 + 264))
  {
    v2 = *(v0 + 224);
    v3 = *(v0 + 192);
    v31 = *(v0 + 208);
    v32 = v2;
    v4 = *(v0 + 224);
    v33 = *(v0 + 240);
    v5 = *(v0 + 160);
    v6 = *(v0 + 128);
    v27 = *(v0 + 144);
    v28 = v5;
    v7 = *(v0 + 160);
    v8 = *(v0 + 192);
    v29 = *(v0 + 176);
    v30 = v8;
    v9 = *(v0 + 128);
    v26[0] = *(v0 + 112);
    v26[1] = v9;
    v35[6] = v31;
    v36 = v4;
    v37 = *(v0 + 240);
    v35[2] = v27;
    v35[3] = v7;
    v35[4] = v29;
    v35[5] = v3;
    v34 = *(v0 + 256);
    v38 = *(v0 + 256);
    v35[0] = v26[0];
    v35[1] = v6;
    if (sub_90064(v35) != 1)
    {
      v10 = *(&v36 + 1);
      if (*(&v36 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_AF4EC0;
        *(inited + 32) = 0xD000000000000017;
        *(inited + 40) = 0x8000000000B4F290;
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED830);
        *(inited + 48) = v10;
        swift_bridgeObjectRetain_n();
        sub_C3374(v26, v24);
        v12 = sub_97420(inited);
        swift_setDeallocating();
        sub_12E1C(inited + 32, &qword_DF06F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DED840);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_AF4EC0;
        *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
        *(v13 + 32) = v12;
        v24[0] = v13;
        memset(&v24[1], 0, 24);
        v24[4] = 1;
        v25 = 0;
        v14 = objc_allocWithZone(type metadata accessor for JSSocialProfile());
        v15 = JSSocialProfile.init(type:)(v24);
        v16 = objc_allocWithZone(MPStoreItemMetadata);
        v17 = v15;
        isa = sub_AB8FD0().super.isa;

        v19 = [v16 initWithStorePlatformDictionary:isa];

        v20 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
        swift_beginAccess();
        v21 = *&v17[v20];
        *&v17[v20] = v19;

        v22 = *(v1 + 264);
        *(v1 + 264) = v17;
        v23 = v17;
        sub_BFE78(v22);

        sub_12E1C(v26, &unk_E05300);
      }
    }
  }
}

uint64_t sub_C09B8(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  swift_weakInit();
  if (a1)
  {

    v5 = a1;
    v6 = *JSAccount.Notifications.didUpdate.unsafeMutableAddressor();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = sub_C3CB0;
    *(v7 + 24) = v4;
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v8 = v6;

    v9 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v8, a1, 1, 1, sub_C3CB8, v7);
    swift_weakDestroy();
    *(v2 + 32) = v9;
  }

  else
  {
    *(v1 + 32) = 0;
  }

  sub_C0B08(a1);
}

_OWORD *sub_C0B08(char *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (a1)
    {
      v4 = OBJC_IVAR____TtC11MusicJSCore9JSAccount_userSocialProfile;
      swift_beginAccess();
      v5 = *&a1[v4];
      result = v5;
    }

    else
    {
      v5 = 0;
    }

    __chkstk_darwin(result);
    UnfairLock.locked<A>(_:)(sub_C3CC0);

    if (!a1)
    {
    }

    v6 = v3[14];
    v7 = v3[12];
    v39 = v3[13];
    v40 = v6;
    v8 = v3[14];
    v41 = v3[15];
    v42 = *(v3 + 32);
    v9 = v3[10];
    v10 = v3[8];
    v35 = v3[9];
    v36 = v9;
    v11 = v3[10];
    v12 = v3[12];
    v37 = v3[11];
    v38 = v12;
    v13 = v3[8];
    v33 = v3[7];
    v34 = v13;
    v29 = v39;
    v30 = v8;
    v31 = v3[15];
    v25 = v35;
    v26 = v11;
    v27 = v37;
    v28 = v7;
    v32 = *(v3 + 32);
    v23 = v33;
    v24 = v10;
    memmove(v43, v3 + 7, 0x98uLL);
    if (sub_90064(v43) == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v43[14];
    }

    v15 = a1;
    sub_C3374(&v33, v44);
    JSAccount.userProfileDictionary.setter(v14);
    type metadata accessor for SocialContactsCoordinator();
    v44[6] = v39;
    v44[7] = v40;
    v44[8] = v41;
    v45 = v42;
    v44[2] = v35;
    v44[3] = v36;
    v44[4] = v37;
    v44[5] = v38;
    v44[0] = v33;
    v44[1] = v34;
    if (sub_90064(v44) != 1)
    {
      v19[6] = v29;
      v19[7] = v30;
      v19[8] = v31;
      v20 = v32;
      v19[2] = v25;
      v19[3] = v26;
      v19[4] = v27;
      v19[5] = v28;
      v19[0] = v23;
      v19[1] = v24;
      sub_C343C(v19, &v18);
      if ((sub_16ABF0(&v33) & 1) == 0)
      {
        sub_16C270(0xD000000000000010, 0x8000000000B4F1E0, &v21);
        sub_12E1C(&v33, &unk_E05300);
        if (*(&v22 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2BB0);
          if (swift_dynamicCast())
          {
            v16 = v18;
            goto LABEL_15;
          }

LABEL_14:
          v16 = &_swiftEmptySetSingleton;
LABEL_15:
          JSAccount.friendsDiscoverySocialProfileIDs.setter(v16);
          sub_12E1C(&v33, &unk_E05300);
          v17 = &v15[OBJC_IVAR____TtC11MusicJSCore9JSAccount_delegate];
          swift_beginAccess();
          *(v17 + 1) = &off_CF6AA0;
          swift_unknownObjectWeakAssign();
        }

LABEL_13:
        sub_12E1C(&v21, &unk_DE8E40);
        goto LABEL_14;
      }

      sub_12E1C(&v33, &unk_E05300);
    }

    v21 = 0u;
    v22 = 0u;
    goto LABEL_13;
  }

  return result;
}

void sub_C0E78(uint64_t a1, void (*a2)())
{
  sub_AB2BB0();
  if (v6)
  {
    type metadata accessor for JSAccount();
    if (swift_dynamicCast())
    {
      v3 = v4;
      a2();
    }
  }

  else
  {
    sub_12E1C(v5, &unk_DE8E40);
  }
}

uint64_t sub_C0F2C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  UnfairLock.assertOwned()();
  v9 = *(v4 + 264);
  if (!a3)
  {
    if (!v9)
    {
      goto LABEL_12;
    }

LABEL_6:
    v13 = *(v5 + 224);
    v14 = *(v5 + 192);
    v104 = *(v5 + 208);
    v105 = v13;
    v15 = *(v5 + 224);
    v106 = *(v5 + 240);
    v16 = *(v5 + 128);
    v17 = *(v5 + 160);
    v100 = *(v5 + 144);
    v101 = v17;
    v18 = *(v5 + 192);
    v19 = *(v5 + 160);
    v102 = *(v5 + 176);
    v103 = v18;
    v20 = *(v5 + 128);
    v99[0] = *(v5 + 112);
    v99[1] = v20;
    v21 = *(a4 + 48);
    v22 = *(a4 + 80);
    v96 = *(a4 + 64);
    v97 = v22;
    v23 = *(a4 + 80);
    v98 = *(a4 + 96);
    v24 = *(a4 + 16);
    v92 = *a4;
    v93 = v24;
    v25 = *(a4 + 48);
    v27 = *a4;
    v26 = *(a4 + 16);
    v94 = *(a4 + 32);
    v95 = v25;
    v28 = *(a4 + 136);
    v90 = *(a4 + 120);
    v91 = v28;
    v86 = v104;
    v87 = v15;
    v80 = v99[0];
    v81 = v16;
    v84 = v102;
    v85 = v14;
    v82 = v100;
    v83 = v19;
    v88 = *(v5 + 240);
    v108[4] = v96;
    v108[5] = v23;
    v108[6] = *(a4 + 96);
    v108[0] = v27;
    v108[1] = v26;
    v107 = *(v5 + 256);
    v29 = *(a4 + 112);
    v89 = *(v5 + 256);
    v108[2] = v94;
    v108[3] = v21;
    v110 = *(a4 + 120);
    v111 = *(a4 + 136);
    v109 = v29;
    if (sub_90064(v108) == 1)
    {
      v68 = v86;
      *v69 = v87;
      *&v69[16] = v88;
      *&v69[32] = v89;
      v64 = v82;
      v65 = v83;
      v66 = v84;
      v67 = v85;
      v62 = v80;
      v63 = v81;
      if (sub_90064(&v62) == 1)
      {
        v56 = v96;
        v57 = v97;
        v58 = v98;
        v52 = v92;
        v53 = v93;
        v54 = v94;
        v55 = v95;
        v59 = v29;
        v61 = v91;
        v60 = v90;
        sub_C3374(v99, v50);
        sub_C3374(a4, v50);
        sub_12E1C(&v52, &unk_E05300);
        goto LABEL_12;
      }
    }

    else
    {
      v68 = v86;
      *v69 = v87;
      *&v69[16] = v88;
      *&v69[32] = v89;
      v64 = v82;
      v65 = v83;
      v66 = v84;
      v67 = v85;
      v62 = v80;
      v63 = v81;
      if (sub_90064(&v62) != 1)
      {
        v50[6] = v86;
        v50[7] = v87;
        v50[8] = v88;
        v51 = v89;
        v50[2] = v82;
        v50[3] = v83;
        v50[4] = v84;
        v50[5] = v85;
        v50[0] = v80;
        v50[1] = v81;
        sub_C3374(v99, &v52);
        sub_C3374(v99, &v52);
        sub_C3374(a4, &v52);
        isa = sub_AB8FD0().super.isa;
        v32 = sub_AB8FD0().super.isa;
        v33 = [(objc_class *)isa isEqualToDictionary:v32];

        sub_12E1C(v99, &unk_E05300);
        sub_12E1C(v50, &unk_E05300);
        v56 = v96;
        v57 = v97;
        v58 = v98;
        v52 = v92;
        v53 = v93;
        v54 = v94;
        v55 = v95;
        v59 = v29;
        v61 = v91;
        v60 = v90;
        result = sub_12E1C(&v52, &unk_E05300);
        if ((v33 & 1) == 0)
        {
          return result;
        }

        goto LABEL_12;
      }
    }

    v66 = v96;
    v67 = v97;
    v68 = v98;
    v62 = v92;
    v63 = v93;
    v64 = v94;
    v65 = v95;
    *&v69[24] = v91;
    *&v69[8] = v90;
    v77 = v87;
    v78 = v88;
    v71 = v81;
    v70 = v80;
    v75 = v85;
    v74 = v84;
    v73 = v83;
    v72 = v82;
    *v69 = v29;
    v79 = v89;
    v76 = v86;
    sub_C3374(v99, &v52);
    sub_C3374(a4, &v52);
    return sub_12E1C(&v62, &unk_DED7B0);
  }

  if (!v9)
  {
    goto LABEL_6;
  }

  type metadata accessor for JSSocialProfile();
  v10 = v9;
  v11 = a3;
  v12 = sub_ABA790();

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_12:
  UnfairLock.assertOwned()();
  result = swift_beginAccess();
  v34 = *(v5 + 72);
  v35 = *(v34 + 16);
  if (v35)
  {
    sub_13C80(0, &qword_DEA550);
    v36 = v34 + 32;

    v37 = 0;
    do
    {
      sub_8FEC8(v36, &v62);
      v38 = v63;
      v39 = a2;
      v40 = sub_ABA790();

      if (v40)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          v42 = *(&v63 + 1);
          v41 = v64;
          sub_13C80(0, &qword_DE8ED0);
          v43 = swift_allocObject();
          v43[2] = v42;
          v43[3] = v41;
          v43[4] = a1;

          v44 = a1;
          static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_C3FC4, v43);
        }

        else
        {
          v37 = 1;
        }
      }

      sub_8FF3C(&v62);
      v36 += 40;
      --v35;
    }

    while (v35);

    if (v37)
    {
      result = sub_BEB30();
    }
  }

  if (a1)
  {
    swift_beginAccess();
    v45 = *(v5 + 104);
    if ((v45 & 0xC000000000000001) != 0)
    {
      if (v45 < 0)
      {
        v46 = *(v5 + 104);
      }

      else
      {
        v46 = v45 & 0xFFFFFFFFFFFFFF8;
      }

      v47 = a1;
      result = sub_ABAFA0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
        return result;
      }

      *(v5 + 104) = sub_426850(v46, result + 1);
    }

    else
    {
      v47 = a1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v99[0] = *(v5 + 104);
    sub_92E70(v47, a2, isUniquelyReferenced_nonNull_native);
    *(v5 + 104) = *&v99[0];
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_C1574()
{
  v98 = *(v0 + 80);
  UnfairLock.assertOwned()();
  result = swift_beginAccess();
  v2 = *(v0 + 72);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = *(v0 + 224);
  v189 = *(v0 + 208);
  v190 = v4;
  v191 = *(v0 + 240);
  v5 = *(v0 + 160);
  v185 = *(v0 + 144);
  v186 = v5;
  v6 = *(v0 + 192);
  v187 = *(v0 + 176);
  v188 = v6;
  v7 = *(v0 + 128);
  v183 = *(v0 + 112);
  v8 = *(v0 + 256);
  v9 = *(v0 + 264);
  v96 = v0;
  v192 = v8;
  v184 = v7;
  *&v193[0] = _swiftEmptyArrayStorage;
  v103 = v9;
  v102 = v9;
  sub_C3374(&v183, &v123);

  sub_ABAEC0();
  v10 = v2 + 32;
  do
  {
    sub_8FEC8(v10, &v123);
    v11 = v124;
    sub_8FF3C(&v123);
    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    v10 += 40;
    --v3;
  }

  while (v3);

  v101 = *&v193[0];
  if (*&v193[0] >> 62)
  {
LABEL_53:
    result = sub_ABB060();
    v12 = v96;
    if (result)
    {
      goto LABEL_6;
    }

LABEL_54:
    sub_12E1C(&v183, &unk_E05300);
  }

  result = *(&dword_10 + (*&v193[0] & 0xFFFFFFFFFFFFFF8));
  v12 = v96;
  if (!result)
  {
    goto LABEL_54;
  }

LABEL_6:
  if (result < 1)
  {
    goto LABEL_57;
  }

  v13 = 0;
  v105 = v101 & 0xC000000000000001;
  v99 = v101 + 32;
  v95 = &v131;
  v14 = &MPModelPropertyTVShowCreatorName_ptr;
  v108 = &v124;
  v104 = result;
  while (1)
  {
    if (v105)
    {
      v15 = sub_360814(v13, v101);
    }

    else
    {
      v15 = *(v99 + 8 * v13);
    }

    v16 = v15;
    v17 = *(v12 + 264);
    if (v17)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v12;
      *(v18 + 24) = v16;
      *(v18 + 32) = v103;
      *(v18 + 136) = v189;
      *(v18 + 152) = v190;
      *(v18 + 168) = v191;
      *(v18 + 184) = v192;
      *(v18 + 72) = v185;
      *(v18 + 88) = v186;
      *(v18 + 104) = v187;
      *(v18 + 120) = v188;
      *(v18 + 40) = v183;
      *(v18 + 56) = v184;
      v19 = type metadata accessor for JSSocialProfileModelRequest();
      v20 = objc_allocWithZone(v19);
      v21 = OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile;
      *&v20[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile] = 0;
      *&v20[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_previousResponse] = 0;
      *&v20[v21] = v17;
      v22 = v17;
      v23 = v102;
      sub_C3374(&v183, &v123);
      v109.receiver = v20;
      v109.super_class = v19;
      v24 = v22;

      v25 = v16;
      v26 = objc_msgSendSuper2(&v109, "init");
      sub_13C80(0, &qword_DED7C0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v28 = objc_opt_self();
      v29 = v26;
      v30 = [v28 kindWithModelClass:ObjCClassFromMetadata];
      [v29 setItemKind:v30];

      [v29 setItemProperties:v25];
      v31 = swift_allocObject();
      *(v31 + 16) = sub_C3C50;
      *(v31 + 24) = v18;
      *&v125 = sub_C3F08;
      *(&v125 + 1) = v31;
      *&v123 = _NSConcreteStackBlock;
      *(&v123 + 1) = 1107296256;
      *&v124 = sub_151E0;
      *(&v124 + 1) = &block_descriptor_145;
      v32 = _Block_copy(&v123);

      [v29 performWithResponseHandler:v32];
      _Block_release(v32);

      v14 = &MPModelPropertyTVShowCreatorName_ptr;

      goto LABEL_9;
    }

    v33 = *(v12 + 192);
    v171 = *(v12 + 208);
    v34 = *(v12 + 208);
    v172[0] = *(v12 + 224);
    v35 = *(v12 + 224);
    v172[1] = *(v12 + 240);
    v36 = *(v12 + 128);
    v167 = *(v12 + 144);
    v37 = *(v12 + 144);
    v168 = *(v12 + 160);
    v38 = *(v12 + 160);
    v169 = *(v12 + 176);
    v39 = *(v12 + 176);
    v170 = *(v12 + 192);
    v165 = *(v12 + 112);
    v40 = *(v12 + 112);
    v166 = *(v12 + 128);
    v179 = v34;
    v180 = v35;
    v181 = *(v12 + 240);
    v175 = v37;
    v176 = v38;
    v177 = v39;
    v178 = v33;
    v173 = v40;
    *&v172[2] = *(v12 + 256);
    v182 = *(v12 + 256);
    v174 = v36;
    if (sub_90064(&v173) != 1)
    {
      break;
    }

LABEL_9:
    if (++v13 == v104)
    {
      goto LABEL_54;
    }
  }

  v193[6] = v179;
  v193[7] = v180;
  v193[8] = v181;
  v194 = v182;
  v193[2] = v175;
  v193[3] = v176;
  v193[4] = v177;
  v193[5] = v178;
  v193[0] = v173;
  v193[1] = v174;
  type metadata accessor for SocialLegacyProfileBuilder();
  swift_allocObject();
  v41 = v16;
  sub_C3374(&v165, &v123);
  v100 = sub_C3714(v41);
  v106 = v41;

  v42 = [objc_opt_self() kind];
  __chkstk_darwin(v42);
  v43 = v14;
  v93 = v193;
  v44 = objc_allocWithZone(MPIdentifierSet);
  v45 = swift_allocObject();
  *(v45 + 16) = sub_C3FC0;
  *(v45 + 24) = v92;
  *&v125 = sub_C3FB8;
  *(&v125 + 1) = v45;
  *&v123 = _NSConcreteStackBlock;
  *(&v123 + 1) = 1107296256;
  *&v124 = sub_41A314;
  *(&v124 + 1) = &block_descriptor_123;
  v46 = _Block_copy(&v123);

  v47 = [v44 initWithModelKind:v42 block:v46];
  _Block_release(v46);

  LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

  if (v46)
  {
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v97 = v13;
  __chkstk_darwin(v48);
  v93 = v100;
  v94 = v193;
  v49 = objc_allocWithZone(v43[159]);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_C3FBC;
  *(v50 + 24) = v92;
  *&v125 = sub_C3FB8;
  *(&v125 + 1) = v50;
  *&v123 = _NSConcreteStackBlock;
  *(&v123 + 1) = 1107296256;
  *&v124 = sub_41A314;
  *(&v124 + 1) = &block_descriptor_131;
  v51 = _Block_copy(&v123);

  v107 = [v49 initWithIdentifiers:v47 block:v51];
  _Block_release(v51);

  LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

  if (v49)
  {
    goto LABEL_52;
  }

  sub_C343C(&v173, &v123);
  UnfairLock.assertOwned()();
  v12 = v96;
  v52 = *(v96 + 264);
  if (v103)
  {
    v14 = &MPModelPropertyTVShowCreatorName_ptr;
    v54 = v106;
    v53 = v107;
    v13 = v97;
    if (v52)
    {
      type metadata accessor for JSSocialProfile();
      v55 = v102;
      v56 = v52;
      v57 = sub_ABA790();

      if (v57)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v14 = &MPModelPropertyTVShowCreatorName_ptr;
    v54 = v106;
    v53 = v107;
    v13 = v97;
    if (!v52)
    {
      goto LABEL_30;
    }
  }

  v58 = *(v12 + 208);
  v158 = *(v12 + 224);
  v59 = *(v12 + 224);
  v159 = *(v12 + 240);
  v60 = *(v12 + 176);
  v61 = *(v12 + 144);
  v154 = *(v12 + 160);
  v155 = v60;
  v62 = *(v12 + 208);
  v63 = *(v12 + 176);
  v156 = *(v12 + 192);
  v157 = v62;
  v64 = *(v12 + 112);
  v65 = *(v12 + 144);
  v152 = *(v12 + 128);
  v153 = v65;
  v148 = v169;
  v149 = v170;
  v150 = v171;
  v151 = v64;
  v144 = v165;
  v145 = v166;
  v146 = v167;
  v147 = v168;
  v142 = *(v172 + 8);
  v143 = *(&v172[1] + 8);
  v132 = v64;
  v133 = v152;
  v136 = v63;
  v137 = v156;
  v134 = v61;
  v135 = v154;
  v66 = *(v12 + 240);
  v139 = v59;
  v140 = v66;
  v160 = *(v12 + 256);
  v67 = *&v172[0];
  v141 = *(v12 + 256);
  v138 = v58;
  v161[3] = v168;
  v161[4] = v169;
  v161[5] = v170;
  v161[6] = v171;
  v161[0] = v165;
  v161[1] = v166;
  v161[2] = v167;
  v163 = *(v172 + 8);
  v164 = *(&v172[1] + 8);
  v162 = *&v172[0];
  if (sub_90064(v161) != 1)
  {
    v129 = v138;
    *v130 = v139;
    *&v130[16] = v140;
    *&v130[32] = v141;
    v125 = v134;
    v126 = v135;
    v127 = v136;
    v128 = v137;
    v123 = v132;
    v124 = v133;
    if (sub_90064(&v123) != 1)
    {
      v111[6] = v138;
      v111[7] = v139;
      v111[8] = v140;
      v112 = v141;
      v111[2] = v134;
      v111[3] = v135;
      v111[4] = v136;
      v111[5] = v137;
      v111[0] = v132;
      v111[1] = v133;
      v100 = v139;
      sub_C3374(&v151, v110);
      sub_C3374(&v165, v110);
      sub_C3374(&v151, v110);
      isa = sub_AB8FD0().super.isa;
      v74 = sub_AB8FD0().super.isa;
      v75 = [(objc_class *)isa isEqualToDictionary:v74];

      sub_12E1C(&v151, &unk_E05300);
      sub_12E1C(v111, &unk_E05300);
      v117 = v148;
      v118 = v149;
      v119 = v150;
      v113 = v144;
      v114 = v145;
      v115 = v146;
      v116 = v147;
      v120 = v67;
      v122 = v143;
      v121 = v142;
      sub_12E1C(&v113, &unk_E05300);
      if ((v75 & 1) == 0)
      {

        sub_12E1C(&v165, &unk_E05300);
        sub_12E1C(&v165, &unk_E05300);
        goto LABEL_9;
      }

      v54 = v106;
      v53 = v107;
      goto LABEL_30;
    }

LABEL_27:
    v127 = v148;
    v128 = v149;
    v129 = v150;
    v123 = v144;
    v124 = v145;
    v125 = v146;
    v126 = v147;
    *v130 = v67;
    *&v130[24] = v143;
    *&v130[8] = v142;
    v68 = v133;
    v69 = v95;
    *v95 = v132;
    *(v69 + 1) = v68;
    v70 = v137;
    *(v69 + 4) = v136;
    *(v69 + 5) = v70;
    v71 = v135;
    *(v69 + 2) = v134;
    *(v69 + 3) = v71;
    v69[18] = v141;
    v72 = v140;
    *(v69 + 7) = v139;
    *(v69 + 8) = v72;
    *(v69 + 6) = v138;
    sub_C3374(&v165, &v113);
    sub_C3374(&v151, &v113);
    sub_12E1C(&v123, &unk_DED7B0);
LABEL_49:

    sub_12E1C(&v165, &unk_E05300);
    sub_12E1C(&v165, &unk_E05300);
    goto LABEL_9;
  }

  v129 = v138;
  *v130 = v139;
  *&v130[16] = v140;
  *&v130[32] = v141;
  v125 = v134;
  v126 = v135;
  v127 = v136;
  v128 = v137;
  v123 = v132;
  v124 = v133;
  if (sub_90064(&v123) != 1)
  {
    goto LABEL_27;
  }

  v117 = v148;
  v118 = v149;
  v119 = v150;
  v113 = v144;
  v114 = v145;
  v115 = v146;
  v116 = v147;
  v120 = v67;
  v122 = v143;
  v121 = v142;
  sub_C3374(&v165, v111);
  sub_C3374(&v151, v111);
  sub_12E1C(&v113, &unk_E05300);
LABEL_30:
  UnfairLock.assertOwned()();
  v76 = *(v12 + 72);
  v77 = *(v76 + 16);
  if (v77)
  {
    sub_13C80(0, &qword_DEA550);
    v78 = v76 + 32;
    v97 = v76;

    LODWORD(v100) = 0;
    do
    {
      sub_8FEC8(v78, &v123);
      v84 = v124;
      v85 = v54;
      v86 = v84;
      LOBYTE(v84) = sub_ABA790();

      if (v84)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          v79 = *(&v124 + 1);
          v80 = v125;
          sub_13C80(0, &qword_DE8ED0);
          v81 = swift_allocObject();
          v81[2] = v79;
          v81[3] = v80;
          v54 = v106;
          v82 = v107;
          v81[4] = v107;
          v83 = v82;

          static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_C3FC4, v81);
        }

        else
        {
          LODWORD(v100) = 1;
        }
      }

      sub_8FF3C(&v123);
      v78 += 40;
      --v77;
    }

    while (v77);

    v12 = v96;
    v53 = v107;
    if (v100)
    {
      sub_BEB30();
    }
  }

  if (!v53)
  {

    sub_12E1C(&v165, &unk_E05300);
    sub_12E1C(&v165, &unk_E05300);
    v14 = &MPModelPropertyTVShowCreatorName_ptr;
    goto LABEL_9;
  }

  swift_beginAccess();
  v87 = *(v12 + 104);
  v14 = &MPModelPropertyTVShowCreatorName_ptr;
  if ((v87 & 0xC000000000000001) == 0)
  {
    v90 = v53;
LABEL_48:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v161[0] = *(v12 + 104);
    sub_92E70(v53, v54, isUniquelyReferenced_nonNull_native);
    *(v12 + 104) = *&v161[0];
    swift_endAccess();
    goto LABEL_49;
  }

  if (v87 < 0)
  {
    v88 = *(v12 + 104);
  }

  else
  {
    v88 = v87 & 0xFFFFFFFFFFFFFF8;
  }

  v89 = v53;
  result = sub_ABAFA0();
  if (!__OFADD__(result, 1))
  {
    *(v12 + 104) = sub_426850(v88, result + 1);
    goto LABEL_48;
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

void sub_C2568(void *a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    v4 = [a1 results];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v4 firstItem];

    if (!v6)
    {
      goto LABEL_6;
    }

    objc_opt_self();
    a1 = swift_dynamicCastObjCClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
LABEL_6:
      a1 = 0;
    }
  }

  v7 = a1;
  a3();
}

uint64_t sub_C2628()
{

  v1 = *(v0 + 224);
  v6[6] = *(v0 + 208);
  v6[7] = v1;
  v6[8] = *(v0 + 240);
  v7 = *(v0 + 256);
  v2 = *(v0 + 160);
  v6[2] = *(v0 + 144);
  v6[3] = v2;
  v3 = *(v0 + 192);
  v6[4] = *(v0 + 176);
  v6[5] = v3;
  v4 = *(v0 + 128);
  v6[0] = *(v0 + 112);
  v6[1] = v4;
  sub_12E1C(v6, &unk_E05300);

  return v0;
}

uint64_t sub_C26F0()
{
  sub_C2628();

  return swift_deallocClassInstance();
}

uint64_t sub_C2754(uint64_t a1)
{
  v3 = [objc_opt_self() kind];
  v15 = a1;
  v4 = objc_allocWithZone(MPIdentifierSet);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_C3A60;
  *(v5 + 24) = &v14;
  v20 = sub_57B84;
  v21 = v5;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_41A314;
  v19 = &block_descriptor_94;
  v6 = _Block_copy(&aBlock);

  v7 = [v4 initWithModelKind:v3 block:v6];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    __chkstk_darwin(result);
    v13[2] = v1;
    v13[3] = a1;
    v9 = objc_allocWithZone(MPModelSocialPerson);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_C3A68;
    *(v10 + 24) = v13;
    v20 = sub_57B84;
    v21 = v10;
    aBlock = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_41A314;
    v19 = &block_descriptor_100;
    v11 = _Block_copy(&aBlock);

    v12 = [v9 initWithIdentifiers:v7 block:v11];
    _Block_release(v11);

    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if ((v11 & 1) == 0)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_C29FC(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 112);
  *(v4 + 112) = *(a2 + 96);
  *(v4 + 128) = v5;
  *(v4 + 144) = *(a2 + 128);
  *(v4 + 160) = *(a2 + 144);
  v6 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v6;
  v7 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v7;
  v8 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_C3B38;
  *(v9 + 24) = v4;
  aBlock[4] = sub_57B84;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4522E8;
  aBlock[3] = &block_descriptor_115;
  v10 = _Block_copy(aBlock);
  sub_C343C(a2, v12);

  [a1 setUniversalStoreIdentifiersWithBlock:v10];
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_C2B90(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  if (a2[16] == 1)
  {
    v6 = sub_11BEAC();
    if (v6)
    {
      v7 = v6;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v15[4] = BagProvider.clientInfo.getter;
      v15[5] = v8;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_119878;
      v15[3] = &block_descriptor_106;
      v9 = _Block_copy(v15);
      v10 = v7;

      [v5 setArtworkCatalogBlock:v9];
      _Block_release(v9);
    }

    else
    {
      [v5 setArtworkCatalogBlock:0];
    }
  }

  if (a2[17] == 1)
  {
    v11 = sub_AB9260();
    [v5 setBiography:v11];
  }

  if (a2[18] == 1)
  {
    v12 = sub_AB9260();
    [v5 setHandle:v12];
  }

  if (a2[19] == 1)
  {
    v13 = sub_AB9260();
    [v5 setName:v13];
  }

  if (a2[20] == 1)
  {
    v14 = sub_AB9260();
    [v5 setUncensoredName:v14];
  }

  if (a2[21] == 1)
  {
    [v5 setPrivatePerson:a3[58]];
  }

  if (a2[22] == 1)
  {
    [v5 setVerified:a3[59]];
  }

  if (a2[23] == 1)
  {
    [v5 setPendingRequestsCount:0];
  }

  if (a2[24] == 1)
  {
    [v5 setHasLightweightProfile:(a3[57] & 1) == 0];
  }
}

uint64_t __swift_memcpy9_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SocialLegacyProfileBuilder.InitializedProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[9])
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

uint64_t storeEnumTagSinglePayload for SocialLegacyProfileBuilder.InitializedProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_C2F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_C2FD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_C3030()
{
  if (![v0 isOwner])
  {
    return 0;
  }

  static ApplicationCapabilities.shared.getter(v14);
  sub_70C54(v14);
  if (v15 == 2)
  {

    goto LABEL_5;
  }

  v1 = sub_ABB3C0();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DED7C8);
  UnfairLock.locked<A>(_:)(sub_C3994);
  if (*&v7[0])
  {
    v2 = JSSocialProfile.name.getter();

    return v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300);
  UnfairLock.locked<A>(_:)(sub_C39C4);
  v10 = v5[6];
  v11 = v5[7];
  v12 = v5[8];
  v13 = v6;
  v7[2] = v5[2];
  v7[3] = v5[3];
  v8 = v5[4];
  v9 = v5[5];
  v7[0] = v5[0];
  v7[1] = v5[1];
  if (sub_90064(v7) == 1)
  {
    return 0;
  }

  v4 = v8;

  sub_12E1C(v5, &unk_E05300);
  return v4;
}

double sub_C32A0(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_C32C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_C3374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E05300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_C33F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C3498()
{
  if (*(v0 + 40))
  {
  }

  if (*(v0 + 176))
  {
  }

  return swift_deallocObject();
}

void sub_C3548(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for JSSocialProfileModelRequest();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile;
  *&v9[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_profile] = 0;
  *&v9[OBJC_IVAR____TtC16MusicApplication27JSSocialProfileModelRequest_previousResponse] = 0;
  *&v9[v10] = a1;
  v20.receiver = v9;
  v20.super_class = v8;
  v11 = a1;
  v12 = objc_msgSendSuper2(&v20, "init");
  sub_13C80(0, &qword_DED7C0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = v12;
  v16 = [v14 kindWithModelClass:ObjCClassFromMetadata];
  [v15 setItemKind:v16];

  [v15 setItemProperties:a2];
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  v19[4] = sub_C395C;
  v19[5] = v17;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_151E0;
  v19[3] = &block_descriptor_85;
  v18 = _Block_copy(v19);

  [v15 performWithResponseHandler:v18];
  _Block_release(v18);
}

_BYTE *sub_C3714(void *a1)
{
  v2 = [a1 properties];
  v3 = sub_AB9B40();

  v4 = sub_AB92A0();
  v6 = sub_472F00(v4, v5, v3);

  v39 = v6 & 1;
  v7 = sub_AB92A0();
  v9 = sub_472F00(v7, v8, v3);

  v38 = v9 & 1;
  v10 = sub_AB92A0();
  v12 = sub_472F00(v10, v11, v3);

  v13 = v12 & 1;
  v14 = sub_AB92A0();
  v16 = sub_472F00(v14, v15, v3);

  v17 = v16 & 1;
  v18 = sub_AB92A0();
  v20 = sub_472F00(v18, v19, v3);

  v21 = v20 & 1;
  v22 = sub_AB92A0();
  v24 = sub_472F00(v22, v23, v3);

  v25 = v24 & 1;
  v26 = sub_AB92A0();
  v28 = sub_472F00(v26, v27, v3);

  v29 = v28 & 1;
  v30 = sub_AB92A0();
  v32 = sub_472F00(v30, v31, v3);

  v33 = v32 & 1;
  v34 = sub_AB92A0();
  v36 = sub_472F00(v34, v35, v3);

  v1[16] = v39;
  v1[17] = v38;
  v1[18] = v13;
  v1[19] = v17;
  v1[20] = v21;
  v1[21] = v25;
  v1[22] = v29;
  v1[23] = v33;
  v1[24] = v36 & 1;

  return v1;
}

id sub_C3994@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 264);
  *a1 = v2;
  return v2;
}

uint64_t sub_C39C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 192);
  v20 = *(v1 + 208);
  v21 = v2;
  v4 = *(v1 + 224);
  v22 = *(v1 + 240);
  v5 = *(v1 + 160);
  v7 = *(v1 + 128);
  v16 = *(v1 + 144);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 160);
  v9 = *(v1 + 192);
  v18 = *(v1 + 176);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 128);
  v15[0] = *(v1 + 112);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 240);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 256);
  *(a1 + 144) = *(v1 + 256);
  *a1 = v12;
  *(a1 + 16) = v7;
  return sub_C3374(v15, v14);
}

uint64_t sub_C3A70()
{

  return swift_deallocObject();
}

uint64_t sub_C3AB0()
{

  return swift_deallocObject();
}

void sub_C3B38(void *a1)
{
  v2 = sub_AB9260();
  [a1 setInformalStaticAssetID:v2];
}

uint64_t sub_C3BA8()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_C3C60()
{

  return swift_deallocObject();
}

void sub_C3CC0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 264);
  *(v2 + 264) = v1;
  v4 = v1;
  sub_BFE78(v3);
}

uint64_t sub_C3DA8()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_77Tm()
{

  return swift_deallocObject();
}

unint64_t sub_C3E88()
{
  result = qword_DED850;
  if (!qword_DED850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DED850);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}