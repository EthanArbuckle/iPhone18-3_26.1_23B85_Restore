uint64_t sub_1000700F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100070150()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000701A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100070384(uint64_t a1)
{
  v3 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timezone;
  swift_beginAccess();
  sub_1000725E4(a1, v1 + v8);
  swift_endAccess();
  v9 = *(v1 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_dateFormatter);
  sub_100012680(v1 + v8, v7);
  v10 = sub_1000AB91C();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    isa = sub_1000AB8EC().super.isa;
    (*(v11 + 8))(v7, v10);
  }

  [v9 setTimeZone:isa];

  return sub_100072654(a1);
}

char *sub_100070520()
{
  v1 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView;
  *&v0[v1] = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_dateFormatter;
  v3 = [objc_allocWithZone(NSDateFormatter) init];
  [v3 setDateStyle:0];
  [v3 setTimeStyle:1];
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViewHeightConstraint] = 0;
  v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_areConflictsShowing] = 1;
  *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews] = 0;
  *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots] = 0;
  v4 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timezone;
  v5 = sub_1000AB91C();
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded] = 0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for IMBTimeslotsContainerView();
  v6 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView;
  v8 = *&v6[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView];
  v9 = v6;
  v10 = sub_1000AC02C();
  [v8 setAccessibilityIdentifier:v10];

  v11 = [*&v6[v7] layer];
  [v11 setMasksToBounds:1];

  [v9 addSubview:*&v6[v7]];
  sub_100070984();

  return v9;
}

char *sub_100070750(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_dateFormatter;
  v5 = [objc_allocWithZone(NSDateFormatter) init];
  [v5 setDateStyle:0];
  [v5 setTimeStyle:1];
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViewHeightConstraint] = 0;
  v1[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_areConflictsShowing] = 1;
  *&v1[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews] = 0;
  *&v1[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots] = 0;
  v6 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timezone;
  v7 = sub_1000AB91C();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v1[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for IMBTimeslotsContainerView();
  v8 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);
  v9 = v8;
  if (v8)
  {
    v10 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView;
    v11 = *&v8[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView];
    v12 = v8;
    v13 = sub_1000AC02C();
    [v11 setAccessibilityIdentifier:v13];

    v14 = [*&v9[v10] layer];
    [v14 setMasksToBounds:1];

    [v12 addSubview:*&v9[v10]];
    sub_100070984();
  }

  return v9;
}

void sub_100070984()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 topAnchor];
  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v4 = 10.0;
  }

  else
  {
    v4 = 12.0;
  }

  v5 = [v2 constraintEqualToAnchor:v3 constant:v4];

  [v5 setActive:1];
  v6 = [v1 leadingAnchor];
  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  [v8 setActive:1];
  v9 = [v1 trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  [v11 setActive:1];
  v12 = [v1 bottomAnchor];
  v13 = [v0 bottomAnchor];
  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v14 = 10.0;
  }

  else
  {
    v14 = 12.0;
  }

  v15 = [v12 constraintEqualToAnchor:v13 constant:v14];

  [v15 setActive:1];
  v16 = [v0 heightAnchor];
  v17 = [v16 constraintGreaterThanOrEqualToConstant:68.0];

  v18 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViewHeightConstraint;
  v19 = *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViewHeightConstraint];
  *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViewHeightConstraint] = v17;
  v20 = v17;

  if (!v20)
  {
    __break(1u);
    goto LABEL_13;
  }

  LODWORD(v21) = 1132068864;
  [v20 setPriority:v21];

  v22 = *&v0[v18];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v22 setActive:1];
}

id sub_100070C60()
{
  result = UIApp;
  if (UIApp)
  {
    v2 = [UIApp preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    if ((IsAccessibilityContentSizeCategory & 1) == 0)
    {
      v4 = (sub_10002CE60() & 0xFE) != 0 ? 20.0 : 24.0;
      [v0 frame];
      Width = CGRectGetWidth(v14);
      v6 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews;
      swift_beginAccess();
      v7 = *&v0[v6];
      if (v7)
      {
        if (v7 >> 62)
        {
LABEL_23:
          v8 = sub_1000AC65C();
        }

        else
        {
          v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v8)
        {
          v9 = 0;
          Width = (Width - v4) / 3.0;
          while (1)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v10 = sub_1000AC5AC();
            }

            else
            {
              if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v10 = *(v7 + 8 * v9 + 32);
            }

            v11 = v10;
            v12 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            result = *&v10[OBJC_IVAR____TtC8Business15IMBTimeslotView_widthLayoutConstraint];
            if (!result)
            {
              break;
            }

            [result setConstant:Width];

            ++v9;
            if (v12 == v8)
            {
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_25;
        }

LABEL_19:
      }
    }

    v13.receiver = v0;
    v13.super_class = type metadata accessor for IMBTimeslotsContainerView();
    return objc_msgSendSuper2(&v13, "layoutSubviews");
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_100070E64()
{
  result = UIApp;
  if (!UIApp)
  {
    goto LABEL_92;
  }

  v2 = [UIApp preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  v112 = *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView];
  v4 = [v112 subviews];
  sub_100072598();
  v5 = sub_1000AC19C();

  v119 = v0;
  if (v5 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000AC65C())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_1000AC5AC();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
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

  v11 = v0;
  v13 = sub_100070320();
  if (*v12)
  {
    *v12 = _swiftEmptyArrayStorage;
  }

  (v13)(v121, 0);
  v14 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews;
  swift_beginAccess();
  v15 = *&v119[v14];
  *&v119[v14] = _swiftEmptyArrayStorage;

  result = *&v119[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots];
  if (!result)
  {
    return sub_100071D20();
  }

  v110 = result & 0xFFFFFFFFFFFFFF8;
  v118 = *&v119[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots];
  v16 = result >> 62;
  if (IsAccessibilityContentSizeCategory)
  {
    if (v16)
    {
      goto LABEL_87;
    }

    v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_83;
    }

    goto LABEL_21;
  }

  if (v16)
  {
    v106 = *&v119[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslots];
    v47 = sub_1000AC65C();
    result = v106;
  }

  else
  {
    v47 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v109 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_dateFormatter;
  v48 = result;

  if (!v47)
  {
    v30 = 0;
    v85 = 0;
LABEL_81:

    goto LABEL_82;
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  v30 = 0;
  v52 = v48;
  v107 = v47;
  v108 = v48 & 0xC000000000000001;
  while (v108)
  {
    result = sub_1000AC5AC();
    v54 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_85;
    }

LABEL_49:
    v114 = v54;
    v55 = objc_allocWithZone(type metadata accessor for IMBTimeslotView());

    v57 = sub_1000798CC(v56);
    v58 = *&v11[v109];
    v59 = *&v57[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
    isa = sub_1000AB77C().super.isa;
    v61 = [v58 stringFromDate:isa];

    if (!v61)
    {
      sub_1000AC06C();
      v61 = sub_1000AC02C();
    }

    [v59 setText:v61];

    *&v57[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeSelectionDelegate + 8] = &off_1000DD610;
    result = swift_unknownObjectWeakAssign();
    v117 = v50;
    v111 = v50 + 3 * (v49 / 3);
    if (v111)
    {
      v62 = (&stru_1000E5FF8 + 8);
      if (!v30)
      {
        goto LABEL_91;
      }

      v63 = v30;
      p_attr = (&stru_1000E5FF8 + 8);
    }

    else
    {
      v63 = [objc_allocWithZone(UIView) init];
      [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
      v65 = v112;
      [v112 addSubview:v63];
      if (v30)
      {
        if (v51)
        {
          v66 = v30;
          v67 = [v51 trailingAnchor];
          v68 = [v66 trailingAnchor];
          v69 = [v67 constraintEqualToAnchor:v68];

          p_attr = &stru_1000E5FF8.attr;
          [v69 setActive:1];
        }

        else
        {
          v73 = v30;
          p_attr = &stru_1000E5FF8.attr;
        }

        v74 = [v63 topAnchor];
        v75 = [v30 bottomAnchor];
        if ((sub_10002CE60() & 0xFE) != 0)
        {
          v76 = 10.0;
        }

        else
        {
          v76 = 12.0;
        }

        v72 = [v74 constraintEqualToAnchor:v75 constant:v76];

        [v72 setActive:1];
        v65 = v112;
      }

      else
      {
        v70 = [v63 topAnchor];
        v71 = [v112 topAnchor];
        v72 = [v70 constraintEqualToAnchor:v71];

        p_attr = &stru_1000E5FF8.attr;
        [v72 setActive:1];
        v30 = 0;
      }

      v77 = [v63 leadingAnchor];
      v78 = [v65 leadingAnchor];
      v79 = v65;
      v80 = [v77 constraintEqualToAnchor:v78];

      [v80 setActive:1];
      v81 = [v63 trailingAnchor];
      v82 = v79;
      v62 = &stru_1000E5FF8.attr;
      v83 = [v82 trailingAnchor];
      v84 = [v81 constraintEqualToAnchor:v83];

      [v84 setActive:1];
      v30 = v63;
    }

    v85 = v57;
    [v63 addSubview:v85];
    [v85 setTranslatesAutoresizingMaskIntoConstraints:0];
    v86 = [v85 topAnchor];
    v87 = [v63 topAnchor];
    v88 = [v86 v62[293]];

    [v88 p_attr[316]];
    v89 = [v85 bottomAnchor];

    v90 = [v63 bottomAnchor];
    v91 = [v89 v62[293]];

    [v91 p_attr[316]];
    if (v51)
    {
      v51 = v51;
      v92 = [v85 widthAnchor];

      v93 = [v51 widthAnchor];
      v94 = [v92 v62[293]];

      [v94 p_attr[316]];
      if (v111)
      {
        v95 = [v85 leadingAnchor];

        v96 = [v51 trailingAnchor];
        if ((sub_10002CE60() & 0xFE) != 0)
        {
          v97 = 10.0;
        }

        else
        {
          v97 = 12.0;
        }

        v98 = [v95 constraintEqualToAnchor:v96 constant:v97];
        v99 = v117;
        goto LABEL_72;
      }
    }

    else
    {
    }

    v99 = v117;
    v95 = [v85 leadingAnchor];

    v96 = [v63 leadingAnchor];
    v98 = [v95 v62[293]];
LABEL_72:
    v100 = v98;

    [v100 setActive:1];
    v11 = v119;
    v102 = sub_100070320();
    if (*v101)
    {
      v103 = v101;
      sub_1000AC17C();
      if (*((*v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v104 = *((*v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000AC1BC();
      }

      sub_1000AC1DC();
    }

    else
    {
    }

    (v102)(v121, 0);

    v50 = v99 - 1;
    ++v49;
    v51 = v85;
    v52 = v118;
    if (v114 == v107)
    {
      goto LABEL_81;
    }
  }

  if (v49 >= *(v110 + 16))
  {
    goto LABEL_86;
  }

  v53 = *(v52 + 8 * v49 + 32);

  v54 = v49 + 1;
  if (!__OFADD__(v49, 1))
  {
    goto LABEL_49;
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  v105 = result;
  v17 = sub_1000AC65C();
  result = v105;
  if (!v17)
  {
LABEL_83:
    [v119 setNeedsLayout];
    [v119 layoutIfNeeded];
    return sub_100071D20();
  }

LABEL_21:
  if (v17 >= 1)
  {
    v113 = result & 0xC000000000000001;
    v115 = *&v119[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_dateFormatter];

    v19 = 0;
    v20 = 0;
    v116 = v17;
    do
    {
      if (v113)
      {
        v21 = sub_1000AC5AC();
      }

      else
      {
        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = type metadata accessor for IMBTimeslotView();
      v23 = objc_allocWithZone(v22);
      *&v23[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeSelectionDelegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v23[OBJC_IVAR____TtC8Business15IMBTimeslotView_widthLayoutConstraint] = 0;
      v24 = OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel;
      v25 = objc_allocWithZone(UILabel);

      *&v23[v24] = [v25 init];
      v23[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected] = 0;
      *&v23[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeslot] = v21;
      v120.receiver = v23;
      v120.super_class = v22;

      v26 = objc_msgSendSuper2(&v120, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
      sub_100079D3C();
      sub_100079F40();

      *&v26[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeSelectionDelegate + 8] = &off_1000DD610;
      swift_unknownObjectWeakAssign();
      v27 = *&v26[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
      v28 = sub_1000AB77C().super.isa;
      v29 = [v115 stringFromDate:v28];

      if (!v29)
      {
        sub_1000AC06C();
        v29 = sub_1000AC02C();
      }

      [v27 setText:v29];

      v30 = v26;
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v112 addSubview:v30];
      v31 = [v30 topAnchor];
      if (v19)
      {
        v32 = [v19 bottomAnchor];
        if ((sub_10002CE60() & 0xFE) != 0)
        {
          v33 = 10.0;
        }

        else
        {
          v33 = 12.0;
        }

        v34 = [v31 constraintEqualToAnchor:v32 constant:v33];
        v35 = (&stru_1000E5FF8 + 8);
      }

      else
      {
        v32 = [v112 topAnchor];
        v35 = &stru_1000E5FF8.attr;
        v34 = [v31 constraintEqualToAnchor:v32];
      }

      v36 = v34;

      [v36 setActive:1];
      v37 = [v30 leadingAnchor];
      v38 = [v112 leadingAnchor];
      v39 = [v37 v35[293]];

      [v39 setActive:1];
      v40 = [v30 trailingAnchor];
      v41 = [v112 trailingAnchor];
      v42 = [v40 v35[293]];

      [v42 setActive:1];
      v44 = sub_100070320();
      if (*v43)
      {
        v45 = v43;
        sub_1000AC17C();
        if (*((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v46 = *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1000AC1BC();
        }

        sub_1000AC1DC();
      }

      else
      {
      }

      (v44)(v121, 0);
      ++v20;

      v19 = v30;
      v18 = v118;
    }

    while (v116 != v20);
LABEL_82:

    goto LABEL_83;
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

id sub_100071D20()
{
  v1 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViews;
  result = swift_beginAccess();
  v3 = *&v0[v1];
  if (v3)
  {
    v4 = UIApp;
    if (!UIApp)
    {
      __break(1u);
      goto LABEL_70;
    }

    v5 = [v4 preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    v41 = OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded;
    v6 = v3 >> 62;
    v39 = v3 >> 62;
    if (v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_expanded] == 1)
    {
      if (v6)
      {
        goto LABEL_21;
      }

      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    else
    {
      v7 = 3;
      if (v6)
      {
        goto LABEL_22;
      }
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000AC65C())
    {
      v9 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = sub_1000AC5AC();
        }

        else
        {
          if (v9 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v3 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
          v13 = 0.0;
        }

        else
        {
          v13 = 1.0;
        }

        [v10 setAlpha:{v13, v39}];

        ++v9;
        if (v12 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v7 = sub_1000AC65C();
LABEL_22:
      ;
    }

LABEL_23:
    v14 = *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotsView];
    v15 = [v14 subviews];
    sub_100072598();
    v16 = sub_1000AC19C();

    if (v16 >> 62)
    {
      if (sub_1000AC65C())
      {
        goto LABEL_25;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_25:
      if ((v16 & 0xC000000000000001) != 0)
      {
        v17 = sub_1000AC5AC();
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_67;
        }

        v17 = *(v16 + 32);
      }

      v15 = v17;

      v18 = v0[v41];
      v19 = *&v0[OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeslotViewHeightConstraint];
      if ((IsAccessibilityContentSizeCategory & 1) == 0)
      {
        if (!v0[v41])
        {
          if (v19)
          {
            v34 = v19;

            [v15 bounds];
            v36 = v35;
            v37 = sub_10002CE60();
            v38 = 20.0;
            if ((v37 & 0xFE) == 0)
            {
              v38 = 24.0;
            }

            [v34 setConstant:v36 + v38];

            goto LABEL_60;
          }

LABEL_73:
          __break(1u);
          return result;
        }

        if (v19)
        {
          goto LABEL_34;
        }

        goto LABEL_71;
      }

      if (!v0[v41])
      {
        if (v19)
        {
          if (v40)
          {
            v27 = sub_1000AC65C();
          }

          else
          {
            v27 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v28 = v19;

          if (v27 >= 3)
          {
            v29 = 3;
          }

          else
          {
            v29 = v27;
          }

          [v15 bounds];
          v31 = v30;
          if ((sub_10002CE60() & 0xFE) != 0)
          {
            v32 = 10.0;
          }

          else
          {
            v32 = 12.0;
          }

          if ((sub_10002CE60() & 0xFE) != 0)
          {
            v33 = 10.0;
          }

          else
          {
            v33 = 12.0;
          }

          [v28 setConstant:v33 + (v31 + v32) * v29];

          goto LABEL_60;
        }

        goto LABEL_72;
      }

      if (v19)
      {
LABEL_34:
        v16 = v19;

        v20 = [v14 subviews];
        v21 = sub_1000AC19C();

        if (!(v21 >> 62))
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:

          [v15 bounds];
          v24 = v23;
          if ((sub_10002CE60() & 0xFE) != 0)
          {
            v25 = 10.0;
          }

          else
          {
            v25 = 12.0;
          }

          if ((sub_10002CE60() & 0xFE) != 0)
          {
            v26 = 10.0;
          }

          else
          {
            v26 = 12.0;
          }

          [v16 setConstant:v26 + (v24 + v25) * v22];

LABEL_60:
          return [v0 layoutIfNeeded];
        }

LABEL_67:
        v22 = sub_1000AC65C();
        goto LABEL_36;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    return [v0 layoutIfNeeded];
  }

  return result;
}

id sub_1000721D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBTimeslotsContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IMBTimeslotsContainerView()
{
  result = qword_1000F1FD0;
  if (!qword_1000F1FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000722FC()
{
  sub_1000723C0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000723C0()
{
  if (!qword_1000F1FE0)
  {
    sub_1000AB91C();
    v0 = sub_1000AC42C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000F1FE0);
    }
  }
}

uint64_t sub_100072418(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000724A8()
{
  v1 = v0 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100072520()
{
  v1 = v0 + OBJC_IVAR____TtC8Business25IMBTimeslotsContainerView_timeSelectionDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_100072598()
{
  result = qword_1000F0F30;
  if (!qword_1000F0F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000F0F30);
  }

  return result;
}

uint64_t sub_1000725E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100072654(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000726BC()
{
  v1 = OBJC_IVAR____TtC8Business20IMBWebViewController_navigationToolbar;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for IMBWebNavigationToolbar()) init];
  v2 = OBJC_IVAR____TtC8Business20IMBWebViewController_URLView;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for IMBWebURLView()) init];
  v3 = OBJC_IVAR____TtC8Business20IMBWebViewController_titleView;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for IMBWebTitleView()) init];
  *&v0[OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint] = 0;
  v4 = sub_1000AC02C();

  v7.receiver = v0;
  v7.super_class = type metadata accessor for IMBWebViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCallbackURI:", v4);

  return v5;
}

id sub_100072924()
{
  v1 = v0;
  v2 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v19 - v5;
  v7 = [v0 webkitView];
  v8 = [v7 hasOnlySecureContent];

  result = *&v1[OBJC_IVAR____TtC8Business20IMBWebViewController_titleView];
  v10 = "setHidden:";
  if (!v8)
  {
LABEL_5:
    [result v10];
    [*&v1[OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint] setActive:1];
    result = [v1 view];
    if (result)
    {
      v12 = result;
      [result setNeedsLayout];

      result = [v1 view];
      if (result)
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [result setHidden:0];
  [*&v1[OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint] setActive:0];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = result;
  [result setNeedsLayout];

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_7:
  v13 = result;
  [result layoutIfNeeded];

  v14 = *&v1[OBJC_IVAR____TtC8Business20IMBWebViewController_URLView];
  v15 = [v1 webkitView];
  v16 = [v15 URL];

  if (v16)
  {
    sub_1000AB6AC();

    v17 = sub_1000AB6EC();
    (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
  }

  else
  {
    v18 = sub_1000AB6EC();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  }

  sub_10007DB4C(v6, v8);
  return sub_10004B9C0(v6);
}

void sub_100072BC4()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for IMBWebViewController();
  objc_msgSendSuper2(&v17, "setupSubviews");
  v2 = *&v0[OBJC_IVAR____TtC8Business20IMBWebViewController_navigationToolbar];
  *(v2 + OBJC_IVAR____TtC8Business23IMBWebNavigationToolbar_actionDelegate + 8) = &off_1000DD630;
  swift_unknownObjectWeakAssign();
  v3 = sub_100017CEC();
  [v3 setEnabled:0];

  v4 = sub_100017E70();
  [v4 setEnabled:0];

  if (sub_10002CE60() == 2)
  {
    v5 = [v1 webkitView];
    v6 = [v5 layer];

    [v6 setBorderWidth:1.0];
    v7 = [v1 webkitView];
    v8 = [v7 layer];

    v9 = [objc_opt_self() systemGray3Color];
    v10 = [v9 CGColor];

    [v8 setBorderColor:v10];
  }

  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = v11;
  [v11 addSubview:*&v1[OBJC_IVAR____TtC8Business20IMBWebViewController_titleView]];

  v13 = [v1 view];
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v13;
  [v13 addSubview:v2];

  v15 = [v1 view];
  if (v15)
  {
    v16 = v15;
    [v15 addSubview:*&v1[OBJC_IVAR____TtC8Business20IMBWebViewController_URLView]];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_100072E54()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business20IMBWebViewController_titleView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 webkitView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = *&v0[OBJC_IVAR____TtC8Business20IMBWebViewController_navigationToolbar];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *&v0[OBJC_IVAR____TtC8Business20IMBWebViewController_URLView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v1 heightAnchor];
  v6 = [v5 constraintEqualToConstant:0.0];

  v7 = *&v0[OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint];
  v108 = OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint;
  *&v0[OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint] = v6;

  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000B04B0;
  v9 = [v1 topAnchor];
  v10 = [v0 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_26;
  }

  v11 = v10;
  v12 = [v10 safeAreaLayoutGuide];

  v13 = [v12 topAnchor];
  v14 = [v9 constraintEqualToAnchor:v13];

  *(v8 + 32) = v14;
  v15 = [v1 leftAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v16;
  v110 = v3;
  v18 = [v16 leftAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  *(v8 + 40) = v19;
  v20 = [v1 rightAnchor];
  v21 = [v0 view];
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = v21;
  v23 = objc_opt_self();
  v24 = [v22 rightAnchor];

  v25 = [v20 constraintEqualToAnchor:v24];
  *(v8 + 48) = v25;
  sub_10000F840();
  isa = sub_1000AC18C().super.isa;

  [v23 activateConstraints:isa];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000B04B0;
  v28 = [v4 topAnchor];
  v29 = [v1 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v27 + 32) = v30;
  v31 = [v4 leftAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v33 = v32;
  v34 = [v32 leftAnchor];

  v35 = [v31 constraintEqualToAnchor:v34];
  *(v27 + 40) = v35;
  v36 = [v4 rightAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v38 = v37;
  v39 = [v37 rightAnchor];

  v40 = [v36 constraintEqualToAnchor:v39];
  *(v27 + 48) = v40;
  v41 = sub_1000AC18C().super.isa;

  [v23 activateConstraints:v41];

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000B04B0;
  v43 = [v0 webkitView];
  v44 = [v43 topAnchor];

  v45 = [v4 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v42 + 32) = v46;
  v47 = [v0 webkitView];
  v48 = [v47 leftAnchor];

  v49 = [v0 view];
  if (!v49)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v50 = v49;
  v51 = [v49 leftAnchor];

  v52 = [v48 constraintEqualToAnchor:v51];
  *(v42 + 40) = v52;
  v53 = [v0 webkitView];
  v54 = [v53 rightAnchor];

  v55 = [v0 view];
  if (!v55)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v56 = v55;
  v57 = [v55 rightAnchor];

  v58 = [v54 constraintEqualToAnchor:v57];
  *(v42 + 48) = v58;
  v59 = sub_1000AC18C().super.isa;

  [v23 activateConstraints:v59];

  if (sub_10002CE60() == 2)
  {
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1000B08E0;
    v61 = [v110 topAnchor];
    v62 = [v0 webkitView];
    v63 = [v62 bottomAnchor];

    v64 = [v61 constraintEqualToAnchor:v63];
    *(v60 + 32) = v64;
    v65 = [v110 leftAnchor];
    v66 = [v0 view];
    if (v66)
    {
      v67 = v66;
      v68 = [v66 leftAnchor];

      v69 = [v65 constraintEqualToAnchor:v68 constant:-19.0];
      *(v60 + 40) = v69;
      v70 = [v110 rightAnchor];
      v71 = [v0 view];
      if (v71)
      {
        v72 = v71;
        v73 = [v71 rightAnchor];

        v74 = [v70 constraintEqualToAnchor:v73 constant:26.0];
        *(v60 + 48) = v74;
        v75 = [v110 bottomAnchor];
        v76 = [v0 view];
        if (v76)
        {
          v77 = v76;
          v78 = [v76 safeAreaLayoutGuide];

          v79 = [v78 bottomAnchor];
          v80 = [v75 constraintEqualToAnchor:v79];

          *(v60 + 56) = v80;
          v81 = [v110 heightAnchor];
          v82 = sub_10002CE60();
          v83 = 60.0;
          if ((v82 & 0xFE) == 0)
          {
            v83 = 44.0;
          }

          v84 = [v81 constraintEqualToConstant:{v83, v108}];

          *(v60 + 64) = v84;
          v85 = sub_1000AC18C().super.isa;

          [v23 activateConstraints:v85];

          v86 = *&v0[v109];
          if (v86)
          {

            [v86 setActive:1];
          }

          return;
        }

        goto LABEL_36;
      }

      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1000B04D0;
  v88 = [v110 topAnchor];
  v89 = [v0 webkitView];
  v90 = [v89 bottomAnchor];

  v91 = [v88 constraintEqualToAnchor:v90];
  *(v87 + 32) = v91;
  v92 = [v110 leftAnchor];
  v93 = [v0 view];
  if (!v93)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v94 = v93;
  v95 = [v93 leftAnchor];

  v96 = [v92 constraintEqualToAnchor:v95];
  *(v87 + 40) = v96;
  v97 = [v110 rightAnchor];
  v98 = [v0 view];
  if (!v98)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v99 = v98;
  v100 = [v98 rightAnchor];

  v101 = [v97 constraintEqualToAnchor:v100];
  *(v87 + 48) = v101;
  v102 = [v110 bottomAnchor];
  v103 = [v0 view];
  if (!v103)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v104 = v103;
  v105 = [v103 safeAreaLayoutGuide];

  v106 = [v105 bottomAnchor];
  v107 = [v102 constraintEqualToAnchor:v106];

  *(v87 + 56) = v107;
  v111 = sub_1000AC18C().super.isa;

  [v23 activateConstraints:v111];
}

void sub_100073B40()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Business20IMBWebViewController_navigationToolbar];
  v3 = sub_100017CEC();
  v4 = [v1 webkitView];
  v5 = [v4 canGoBack];

  [v3 setEnabled:v5];
  v8 = sub_100017E70();
  v6 = [v1 webkitView];
  v7 = [v6 canGoForward];

  [v8 setEnabled:v7];
}

id sub_100073CA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBWebViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100073DE0()
{
  v1 = OBJC_IVAR____TtC8Business20IMBWebViewController_navigationToolbar;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for IMBWebNavigationToolbar()) init];
  v2 = OBJC_IVAR____TtC8Business20IMBWebViewController_URLView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for IMBWebURLView()) init];
  v3 = OBJC_IVAR____TtC8Business20IMBWebViewController_titleView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for IMBWebTitleView()) init];
  *(v0 + OBJC_IVAR____TtC8Business20IMBWebViewController_titleViewHeightConstraint) = 0;
  sub_1000AC63C();
  __break(1u);
}

id sub_100073EB4(void *a1)
{
  v2 = v1;
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = &v20 - v12;
  result = [a1 URL];
  if (result)
  {
    v15 = result;
    sub_1000AB6AC();

    (*(v5 + 32))(v13, v10, v4);
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_1000AC2BC();
    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1000AF0E0;
    v17 = sub_1000AB64C();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_10000587C();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_1000ABA5C();

    [v2 updateNavigationBar];
    return (*(v5 + 8))(v13, v4);
  }

  return result;
}

id sub_10007412C()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *(v0 + qword_1000F2040);
  v4 = *(v0 + qword_1000F2040 + 8);
  v5 = *(v0 + qword_1000F2048);
  v6 = v0;

  v7 = sub_1000AC02C();

  [v5 removeObserver:v6 forKeyPath:v7];

  v8 = *((v2 & v1) + 0x50);
  v10.receiver = v6;
  v10.super_class = type metadata accessor for KVObserver();
  return objc_msgSendSuper2(&v10, "dealloc");
}

void sub_100074240(uint64_t a1)
{
  v2 = *(a1 + qword_1000F2038 + 8);

  v3 = *(a1 + qword_1000F2040 + 8);

  v4 = *(a1 + qword_1000F2048);
}

uint64_t sub_1000742A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_1000AC06C();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v14, 0, sizeof(v14));
    v11 = a5;
    v12 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_1000AC47C();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_10007467C();
  v10 = sub_1000ABFBC();

LABEL_8:
  sub_1000744DC(v14, v10);

  return sub_1000172E0(v14);
}

uint64_t sub_100074420()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100074478()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1000744DC(uint64_t a1, uint64_t a2)
{
  v3 = *((swift_isaMask & *v2) + 0x50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(a1, a2);
  v9 = v15 - v8;
  if (v7)
  {
    v11 = *(v2 + qword_1000F2038);
    v10 = *(v2 + qword_1000F2038 + 8);
    if (*(v7 + 16) && (v12 = v7, v13 = sub_10004F380(NSKeyValueChangeNewKey), (v14 & 1) != 0))
    {
      sub_1000068B4(*(v12 + 56) + 32 * v13, v15);
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    sub_10000413C(&unk_1000F1DF0, &qword_1000B18F0);
    swift_dynamicCast();
    v11(v9);
    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

unint64_t sub_10007467C()
{
  result = qword_1000EF168;
  if (!qword_1000EF168)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EF168);
  }

  return result;
}

uint64_t Date.init(fromUTCString:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = sub_1000AB7EC();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  v8 = __chkstk_darwin(v5, v7);
  v48 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v49 = &v48 - v11;
  v12 = sub_1000AB84C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000AB8BC();
  v18 = *(v50 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v50, v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8, v25);
  v27 = &v48 - v26;
  v55 = sub_1000AB91C();
  v28 = *(v55 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v55, v30);
  v32 = &v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = HIBYTE(a2) & 0xF;
  v51 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v33 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    goto LABEL_9;
  }

  sub_1000AB8DC();
  result = (*(v28 + 48))(v27, 1, v55);
  if (result != 1)
  {
    (*(v28 + 32))(v32, v27, v55);
    v35 = [objc_allocWithZone(NSDateFormatter) init];
    (*(v13 + 104))(v17, enum case for Calendar.Identifier.gregorian(_:), v12);
    sub_1000AB85C();
    (*(v13 + 8))(v17, v12);
    isa = sub_1000AB86C().super.isa;
    (*(v18 + 8))(v22, v50);
    [v35 setCalendar:isa];

    v37 = sub_1000AC02C();
    [v35 setDateFormat:v37];

    v38 = sub_1000AB8EC().super.isa;
    [v35 setTimeZone:v38];

    v39 = sub_1000AC02C();

    v40 = [v35 dateFromString:v39];

    if (v40)
    {
      v41 = v48;
      sub_1000AB7BC();

      v42 = v52;
      v43 = v49;
      v44 = v41;
      v45 = v53;
      (*(v52 + 32))(v49, v44, v53);
      sub_1000AB7AC();
      v46 = v54;
      sub_1000AB79C();

      (*(v42 + 8))(v43, v45);
      (*(v28 + 8))(v32, v55);
      v47 = 0;
      return (*(v42 + 56))(v46, v47, 1, v45);
    }

    (*(v28 + 8))(v32, v55);

LABEL_9:
    v47 = 1;
    v45 = v53;
    v46 = v54;
    v42 = v52;
    return (*(v42 + 56))(v46, v47, 1, v45);
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Date.toUTCString()()
{
  v0 = sub_10000413C(&qword_1000EF7D0, &qword_1000B5060);
  v1 = *(*(v0 - 8) + 64);
  v3 = __chkstk_darwin(v0 - 8, v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v6);
  v8 = &v22 - v7;
  sub_1000AB8CC();
  v9 = [objc_allocWithZone(NSDateFormatter) init];
  v10 = sub_1000AC02C();
  [v9 setDateFormat:v10];

  sub_100012680(v8, v5);
  v11 = sub_1000AB91C();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v5, 1, v11) != 1)
  {
    isa = sub_1000AB8EC().super.isa;
    (*(v12 + 8))(v5, v11);
  }

  [v9 setTimeZone:isa];

  v14 = sub_1000AB77C().super.isa;
  v15 = [v9 stringFromDate:v14];

  v16 = sub_1000AC06C();
  v18 = v17;

  sub_100072654(v8);
  v19 = v16;
  v20 = v18;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

void sub_100074E74()
{
  sub_10000E6D4(v0 + OBJC_IVAR____TtC8Business23BIABubbleViewController_context, v21);
  v1 = v22;
  v2 = sub_1000315C0(v21, v22);
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v2, v2);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v19 = type metadata accessor for PluginBubbleContext();
  v20 = &off_1000DAEB0;
  v18[0] = v7;
  v8 = objc_allocWithZone(type metadata accessor for BIABubbleView());
  v9 = v19;
  v10 = sub_1000315C0(v18, v19);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v10, v10);
  v13 = (v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v16 = v0;
  v17 = sub_100075604(v16, v15, v8);

  sub_10000E738(v18);
  sub_10000E738(v21);
  [v16 setView:v17];
}

id sub_1000750D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BIABubbleViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100075138(uint64_t a1, char *a2)
{
  v4 = sub_10000413C(&qword_1000F2250, &qword_1000B4CF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v16 - v8;
  v18[3] = type metadata accessor for PluginBubbleContext();
  v18[4] = &off_1000DAEB0;
  v18[0] = a1;
  v10 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_viewModel;
  v11 = type metadata accessor for BIABubbleViewModel(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController__shouldBeVisible;
  v17 = 0;
  sub_1000ABC0C();
  (*(v5 + 32))(&a2[v12], v9, v4);
  sub_10000E6D4(v18, &a2[OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_context]);
  v13 = type metadata accessor for BIABubbleOptionsViewController();
  v16.receiver = a2;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  sub_10000E738(v18);
  return v14;
}

id sub_1000752F8(uint64_t a1, char *a2)
{
  v14[3] = type metadata accessor for PluginBubbleContext();
  v14[4] = &off_1000DAEB0;
  v14[0] = a1;
  *&a2[OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController____lazy_storage___optionsLabel] = 0;
  *&a2[OBJC_IVAR____TtC8Business33BIABubbleOptionsiOSViewController_containingViewGestureRecognizer] = 0;
  sub_10000E6D4(v14, v12);
  v4 = v13;
  v5 = sub_1000315C0(v12, v13);
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v5, v5);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = sub_100075138(*v8, a2);
  sub_10000E738(v14);
  sub_10000E738(v12);
  return v10;
}

id sub_100075424(void *a1)
{
  v2 = type metadata accessor for PluginBubbleContext();
  v27[3] = v2;
  v27[4] = &off_1000DAEB0;
  v27[0] = a1;
  sub_10000E6D4(v27, v25);
  v3 = v26;
  v4 = sub_1000315C0(v25, v26);
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v4, v4);
  v7 = (&v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v23 = v2;
  v24 = &off_1000DAEB0;
  v22[0] = v9;
  v10 = objc_allocWithZone(type metadata accessor for BIABubbleOptionsiOSViewController());
  v11 = v23;
  v12 = sub_1000315C0(v22, v23);
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v12, v12);
  v15 = (&v22[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v18 = a1;
  v19 = sub_1000752F8(v17, v10);
  sub_10000E738(v22);
  sub_10000E738(v25);
  sub_10000E738(v27);
  return v19;
}

id sub_100075604(void *a1, uint64_t a2, _BYTE *a3)
{
  v87 = a1;
  v90 = sub_10000413C(&qword_1000F2248, &qword_1000B4308);
  v89 = *(v90 - 8);
  v5 = *(v89 + 64);
  __chkstk_darwin(v90, v6);
  v88 = &v86 - v7;
  v105 = type metadata accessor for PluginBubbleContext();
  v106 = &off_1000DAEB0;
  v104 = a2;
  v8 = &a3[OBJC_IVAR____TtC8Business13BIABubbleView_delegate];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC8Business13BIABubbleView_viewModel;
  v10 = type metadata accessor for BIABubbleViewModel(0);
  (*(*(v10 - 8) + 56))(&a3[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC8Business13BIABubbleView_contentViewBottomConstraint;
  *&a3[v11] = [objc_allocWithZone(NSLayoutConstraint) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_bubbleConstraints] = 0;
  a3[OBJC_IVAR____TtC8Business13BIABubbleView_wasSizeRequested] = 0;
  sub_10000E6D4(&v104, &a3[OBJC_IVAR____TtC8Business13BIABubbleView_context]);
  v12 = [objc_allocWithZone(UIView) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_contentView] = v12;
  v13 = [objc_allocWithZone(UIImageView) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_imageView] = v13;
  v14 = [objc_allocWithZone(UIView) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_textAndOptionsView] = v14;
  v15 = [objc_allocWithZone(UIView) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_titleAndSubtitleView] = v15;
  v16 = [objc_allocWithZone(UIImageView) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_iconView] = v16;
  v17 = [objc_allocWithZone(UILabel) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_titleLabel] = v17;
  v18 = [objc_allocWithZone(UILabel) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_subtitleLabel] = v18;
  v19 = sub_1000058D0(&v104, v105);
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_optionsViewController] = sub_100075424(*v19);
  type metadata accessor for BIABubbleBinaryChoiceView();
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_binaryChoiceView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&a3[OBJC_IVAR____TtC8Business13BIABubbleView_subscriptions] = _swiftEmptyArrayStorage;
  v20 = type metadata accessor for BIABubbleView();
  v103.receiver = a3;
  v103.super_class = v20;
  v21 = objc_msgSendSuper2(&v103, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B3CB0;
  v99 = OBJC_IVAR____TtC8Business13BIABubbleView_contentView;
  v97 = *(v21 + OBJC_IVAR____TtC8Business13BIABubbleView_contentView);
  *(inited + 32) = v97;
  v92 = inited + 32;
  v94 = OBJC_IVAR____TtC8Business13BIABubbleView_imageView;
  v23 = *(v21 + OBJC_IVAR____TtC8Business13BIABubbleView_imageView);
  *(inited + 40) = v23;
  v100 = OBJC_IVAR____TtC8Business13BIABubbleView_textAndOptionsView;
  v24 = *(v21 + OBJC_IVAR____TtC8Business13BIABubbleView_textAndOptionsView);
  *(inited + 48) = v24;
  v93 = OBJC_IVAR____TtC8Business13BIABubbleView_titleAndSubtitleView;
  v25 = *(v21 + OBJC_IVAR____TtC8Business13BIABubbleView_titleAndSubtitleView);
  *(inited + 56) = v25;
  v101 = OBJC_IVAR____TtC8Business13BIABubbleView_iconView;
  v26 = *(v21 + OBJC_IVAR____TtC8Business13BIABubbleView_iconView);
  *(inited + 64) = v26;
  v98 = OBJC_IVAR____TtC8Business13BIABubbleView_binaryChoiceView;
  v27 = *(v21 + OBJC_IVAR____TtC8Business13BIABubbleView_binaryChoiceView);
  *(inited + 72) = v27;
  v95 = OBJC_IVAR____TtC8Business13BIABubbleView_titleLabel;
  v28 = *(v21 + OBJC_IVAR____TtC8Business13BIABubbleView_titleLabel);
  *(inited + 80) = v28;
  v102 = OBJC_IVAR____TtC8Business13BIABubbleView_subtitleLabel;
  v96 = *(v21 + OBJC_IVAR____TtC8Business13BIABubbleView_subtitleLabel);
  *(inited + 88) = v96;
  v29 = (inited & 0xC000000000000001);
  v30 = inited & 0xFFFFFFFFFFFFFF8;
  v91 = v21;
  v31 = v97;
  v32 = v23;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v37 = v28;
  v38 = v96;
  v39 = 0;
  do
  {
    if (v29)
    {
      v40 = sub_1000AC5AC();
    }

    else
    {
      if (v39 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_24:
        swift_once();
        goto LABEL_10;
      }

      v40 = *(inited + 8 * v39 + 32);
    }

    v24 = v40;
    ++v39;
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v41) = 1144750080;
    [v24 setContentHuggingPriority:1 forAxis:v41];
  }

  while (v39 != 8);
  swift_setDeallocating();
  v42 = *(inited + 16);
  swift_arrayDestroy();
  v43 = v99;
  v44 = *(v21 + v99);
  inited = v91;
  [inited addSubview:v44];
  v24 = v94;
  [*(v21 + v43) addSubview:*(v21 + v94)];
  v45 = *(v21 + v43);
  v46 = v100;
  [v45 addSubview:*(v21 + v100)];
  v47 = v93;
  [*(v21 + v46) addSubview:*(v21 + v93)];
  [*(v21 + v47) addSubview:*(v21 + v101)];
  v30 = v95;
  [*(v21 + v47) addSubview:*(v21 + v95)];
  [*(v21 + v47) addSubview:*(v21 + v102)];
  v29 = OBJC_IVAR____TtC8Business13BIABubbleView_optionsViewController;
  v48 = *(inited + OBJC_IVAR____TtC8Business13BIABubbleView_optionsViewController);
  v49 = *(v21 + v46);
  result = [v48 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v51 = result;
  [v49 addSubview:result];

  [*(v21 + v46) addSubview:*(v21 + v98)];
  v52 = v87;
  [v87 addChildViewController:*&v29[inited]];
  [*&v29[inited] didMoveToParentViewController:v52];
  if (qword_1000EEDD0 != -1)
  {
    goto LABEL_24;
  }

LABEL_10:
  v97 = v29;
  v53 = qword_1000FBF00;
  [inited setBackgroundColor:qword_1000FBF00];

  [*(v21 + v99) setBackgroundColor:v53];
  v54 = qword_1000EEDE0;
  v55 = *&v24[v21];
  if (v54 != -1)
  {
    swift_once();
  }

  v56 = qword_1000FBF10;
  [v55 setTintColor:qword_1000FBF10];

  [*&v24[v21] setContentMode:1];
  v57 = *&v24[v21];
  v58 = qword_1000EEDC8;
  v59 = v57;
  if (v58 != -1)
  {
    swift_once();
  }

  [v59 setBackgroundColor:qword_1000FBEF8];

  [*(v21 + v100) setBackgroundColor:v53];
  v60 = v101;
  [*(v21 + v101) setContentMode:2];
  [*(v21 + v60) setClipsToBounds:1];
  v61 = [*(v21 + v60) layer];
  [v61 setCornerRadius:13.0];

  v62 = qword_1000EEDD8;
  v63 = *(v21 + v30);
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = qword_1000FBF08;
  [v63 setTextColor:v56];
  [v63 setFont:v64];
  [v63 setLineBreakMode:0];
  [v63 setNumberOfLines:0];
  LODWORD(v65) = 1148846080;
  [v63 setContentCompressionResistancePriority:1 forAxis:v65];
  [v63 setTranslatesAutoresizingMaskIntoConstraints:0];

  v66 = qword_1000EEDE8;
  v67 = *(v21 + v102);
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = qword_1000FBF18;
  if (qword_1000EEDF0 != -1)
  {
    swift_once();
  }

  [v67 setTextColor:qword_1000FBF20];
  [v67 setFont:v68];
  [v67 setLineBreakMode:0];
  [v67 setNumberOfLines:0];
  LODWORD(v69) = 1148846080;
  [v67 setContentCompressionResistancePriority:1 forAxis:v69];
  [v67 setTranslatesAutoresizingMaskIntoConstraints:0];

  v70 = v97;
  v71 = *&v97[inited];
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v73 = swift_unknownObjectWeakLoadStrong();
  v74 = *((swift_isaMask & *v71) + 0xE8);
  v75 = inited;
  v76 = v71;
  v74(Strong, v73);

  v77 = (*(v21 + v98) + OBJC_IVAR____TtC8Business25BIABubbleBinaryChoiceView_delegate);
  v78 = *v77;
  *v77 = inited;
  v77[1] = &off_1000DCEE0;
  v79 = v75;
  swift_unknownObjectRelease();
  v80 = *&v70[inited];
  swift_beginAccess();
  v81 = v80;
  sub_10000413C(&qword_1000F2250, &qword_1000B4CF0);
  v82 = v88;
  sub_1000ABC1C();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10007620C();
  v83 = v90;
  sub_1000ABC5C();

  (*(v89 + 8))(v82, v83);
  v84 = OBJC_IVAR____TtC8Business13BIABubbleView_subscriptions;
  swift_beginAccess();
  sub_1000AC17C();
  if (*((*(v79 + v84) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v79 + v84) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v85 = *((*(v79 + v84) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1000AC1BC();
  }

  sub_1000AC1DC();
  swift_endAccess();

  sub_10000E738(&v104);
  return v79;
}

uint64_t sub_1000761CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10007620C()
{
  result = qword_1000F2258;
  if (!qword_1000F2258)
  {
    sub_1000041E8(&qword_1000F2248, &qword_1000B4308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F2258);
  }

  return result;
}

void sub_100076270(void *a1)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000AF0F0;
  v4 = type metadata accessor for IMBMessagesAppViewController();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_100079030(&qword_1000F2380, v5, type metadata accessor for IMBMessagesAppViewController);
  *(v3 + 32) = v1;
  *(v3 + 96) = sub_100005A24(0, &qword_1000F0730, MSConversation_ptr);
  *(v3 + 104) = sub_100078FE0(&unk_1000F2400, &qword_1000F0730, MSConversation_ptr);
  *(v3 + 72) = a1;
  v6 = v1;
  v7 = a1;
  sub_1000ABA5C();

  v8.receiver = v6;
  v8.super_class = v4;
  objc_msgSendSuper2(&v8, "willBecomeActiveWithConversation:", v7);
  sub_1000769FC(v7, [v6 presentationStyle]);
}

void sub_100076470(id a1)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000B0620;
  v4 = type metadata accessor for IMBMessagesAppViewController();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_100079030(&qword_1000F2380, v5, type metadata accessor for IMBMessagesAppViewController);
  *(v3 + 32) = v1;
  if (a1)
  {
    if (a1 == 2)
    {
      v6 = 0xEA00000000007470;
      v7 = 0x697263736E617274;
    }

    else if (a1 == 1)
    {
      v6 = 0xE800000000000000;
      v7 = 0x6465646E61707865;
    }

    else
    {
      v6 = 0xE700000000000000;
      v7 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v7 = 0x746361706D6F63;
  }

  *(v3 + 96) = &type metadata for String;
  *(v3 + 104) = sub_10000587C();
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  v8 = v1;
  v9 = [v8 activeConversation];
  if (v9)
  {
    v10 = v9;
    *(v3 + 136) = sub_100005A24(0, &qword_1000F0730, MSConversation_ptr);
    *(v3 + 144) = sub_100078FE0(&unk_1000F2400, &qword_1000F0730, MSConversation_ptr);
    *(v3 + 112) = v10;
    sub_1000ABA5C();

    v13.receiver = v8;
    v13.super_class = v4;
    objc_msgSendSuper2(&v13, "willTransitionToPresentationStyle:", a1);
    v11 = [v8 activeConversation];
    if (v11)
    {
      v12 = v11;
      if ([v8 presentationStyle] != a1)
      {
        sub_1000769FC(v12, a1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000767E0()
{
  v1 = *&v0[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v2 willMoveToParentViewController:v0];
  [v0 addChildViewController:v2];
  v3 = [v0 view];
  if (!v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v4 addSubview:v5];

  [v2 didMoveToParentViewController:v0];
  v17 = [v2 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = [v0 view];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v17 setFrame:{v10, v12, v14, v16}];
}

uint64_t sub_100076970()
{
  v1 = OBJC_IVAR___IMBMessagesAppViewController____lazy_storage___dismissalDelegator;
  if (*(v0 + OBJC_IVAR___IMBMessagesAppViewController____lazy_storage___dismissalDelegator))
  {
    v2 = *(v0 + OBJC_IVAR___IMBMessagesAppViewController____lazy_storage___dismissalDelegator);
  }

  else
  {
    type metadata accessor for IMBMessagesAppViewControllerDismissalDelegator();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1000769FC(void *a1, uint64_t a2)
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000AF0F0;
  *(v5 + 56) = type metadata accessor for IMBMessagesAppViewController();
  *(v5 + 64) = sub_100079030(&qword_1000F2380, v6, type metadata accessor for IMBMessagesAppViewController);
  *(v5 + 32) = v2;
  if (a2)
  {
    if (a2 == 2)
    {
      v7 = 0xEA00000000007470;
      v8 = 0x697263736E617274;
    }

    else if (a2 == 1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6465646E61707865;
    }

    else
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    v8 = 0x746361706D6F63;
  }

  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = sub_10000587C();
  *(v5 + 72) = v8;
  *(v5 + 80) = v7;
  v9 = v2;
  sub_1000ABA5C();

  if (a2 == 2)
  {
    sub_100077E94(a1);
  }

  else
  {
    sub_100076BC0(a1, a2 == 1);
  }
}

void sub_100076BC0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for URLHelper();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 selectedMessage];
  if (v11)
  {
    v12 = v11;
    v13 = type metadata accessor for IMBMessage();
    v157 = v12;
    v14 = sub_1000866E4(v157);
    if (v14)
    {
      v15 = v14;
      v16 = [v15 rootKey];
      if (!v16)
      {
        sub_1000AC06C();
        v16 = sub_1000AC02C();
      }

      v17 = sub_1000AC06C();
      v19 = v18;
      v21 = v17 == sub_1000AC06C() && v19 == v20;
      v154 = v16;
      if (v21)
      {
        v36 = v16;
      }

      else
      {
        v22 = sub_1000AC7AC();
        v23 = v16;
        v24 = v22;
        v25 = v23;

        if ((v24 & 1) == 0)
        {
          v26 = sub_1000AC06C();
          v28 = v27;
          if (v26 == sub_1000AC06C() && v28 == v29)
          {
          }

          else
          {
            v44 = sub_1000AC7AC();

            if ((v44 & 1) == 0)
            {
              v78 = sub_1000AC06C();
              v80 = v79;
              if (v78 == sub_1000AC06C() && v80 == v81)
              {
              }

              else
              {
                v82 = sub_1000AC7AC();

                if ((v82 & 1) == 0)
                {
                  v99 = sub_1000AC06C();
                  v101 = v100;
                  if (v99 == sub_1000AC06C() && v101 == v102)
                  {
                  }

                  else
                  {
LABEL_61:
                    v103 = sub_1000AC7AC();

                    if ((v103 & 1) == 0)
                    {
                      v112 = sub_1000AC06C();
                      v114 = v113;
                      if (v112 == sub_1000AC06C() && v114 == v115)
                      {

                        v56 = &OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_containingView;
                      }

                      else
                      {
                        v116 = sub_1000AC7AC();

                        v56 = &OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_containingView;
                        if ((v116 & 1) == 0)
                        {

                          if (qword_1000EEE80 == -1)
                          {
LABEL_69:
                            v119 = v56[1];
                            sub_1000AC2AC();
                            sub_10000413C(&qword_1000F0060, &unk_1000B0470);
                            v120 = swift_allocObject();
                            *(v120 + 16) = xmmword_1000AF0F0;
                            *(v120 + 56) = type metadata accessor for IMBMessagesAppViewController();
                            *(v120 + 64) = sub_100079030(&qword_1000F2380, v121, type metadata accessor for IMBMessagesAppViewController);
                            *(v120 + 32) = v3;
                            v122 = sub_1000AC06C();
                            v124 = v123;
                            v125 = v3;

                            *(v120 + 96) = &type metadata for String;
                            *(v120 + 104) = sub_10000587C();
                            *(v120 + 72) = v122;
                            *(v120 + 80) = v124;
                            sub_1000ABA5C();

                            v126 = v157;

                            return;
                          }

LABEL_90:
                          swift_once();
                          goto LABEL_69;
                        }
                      }

                      v117 = [v15 isFromMe];
                      v118 = objc_allocWithZone(type metadata accessor for IMBJITAppKitViewController());
                      v42 = sub_100067310(a1, v15, v117 ^ 1u);
LABEL_33:
                      v57 = v42;
                      sub_100076970();
                      *&v57[OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate + 8] = &off_1000DD7F0;
                      swift_unknownObjectWeakAssign();

                      v58 = v57;
                      if (sub_10002CE60() != 2)
                      {
                        v58 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v57];
                        [v58 setNavigationBarHidden:1 animated:0];
                      }

                      v152 = v57;
                      v59 = qword_1000EEE80;
                      v153 = v58;
                      v60 = v154;
                      if (v59 != -1)
                      {
                        swift_once();
                      }

                      v61 = v56[1];
                      v25 = sub_1000AC2BC();
                      v160 = sub_10000413C(&qword_1000F0060, &unk_1000B0470);
                      a1 = swift_allocObject();
                      *(a1 + 16) = xmmword_1000B3CA0;
                      v159 = type metadata accessor for IMBMessagesAppViewController();
                      *(a1 + 56) = v159;
                      v158 = sub_100079030(&qword_1000F2380, v62, type metadata accessor for IMBMessagesAppViewController);
                      *(a1 + 64) = v158;
                      *(a1 + 32) = v3;
                      *(a1 + 96) = sub_100005A24(0, &qword_1000F07C8, MSMessage_ptr);
                      *(a1 + 104) = sub_100078FE0(&qword_1000F23B0, &qword_1000F07C8, MSMessage_ptr);
                      *(a1 + 72) = v157;
                      *(a1 + 136) = v13;
                      *(a1 + 144) = sub_100079030(&qword_1000F23B8, 255, type metadata accessor for IMBMessage);
                      *(a1 + 112) = v15;
                      v163 = sub_100005A24(0, &qword_1000F23C0, NSString_ptr);
                      v164 = sub_100078FE0(&qword_1000F23C8, &qword_1000F23C0, NSString_ptr);
                      *&v162 = v60;
                      sub_10001A72C(&v162, a1 + 152);
                      v63 = v157;
                      v151 = v15;
                      v3 = v3;
                      v150 = v63;
                      v64 = [v63 _data];
                      if (!v64)
                      {
LABEL_85:
                        __break(1u);
                        goto LABEL_86;
                      }

                      v65 = v64;
                      v66 = sub_1000AB73C();
                      v68 = v67;

                      isa = sub_1000AB72C().super.isa;
                      sub_10000E964(v66, v68);
                      v15 = &qword_1000F23D0;
                      v13 = NSData_ptr;
                      *(a1 + 216) = sub_100005A24(0, &qword_1000F23D0, NSData_ptr);
                      *(a1 + 224) = sub_100078FE0(&qword_1000F23D8, &qword_1000F23D0, NSData_ptr);
                      *(a1 + 192) = isa;
                      sub_1000ABA5C();

                      v70 = [v3 childViewControllers];
                      v157 = sub_100005A24(0, &qword_1000F1DE0, UIViewController_ptr);
                      v25 = sub_1000AC19C();

                      v161 = v61;
                      if (v25 >> 62)
                      {
                        v56 = sub_1000AC65C();
                        p_attr = &stru_1000E5FF8.attr;
                        if (v56)
                        {
LABEL_40:
                          v10 = 0;
                          v156 = v25 & 0xC000000000000001;
                          v6 = v25 & 0xFFFFFFFFFFFFFF8;
                          v155 = xmmword_1000AF0F0;
                          while (1)
                          {
                            if (v156)
                            {
                              v72 = sub_1000AC5AC();
                            }

                            else
                            {
                              if (v10 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                goto LABEL_60;
                              }

                              v72 = *(v25 + 8 * v10 + 32);
                            }

                            v15 = v72;
                            v13 = (v10 + 1);
                            if (__OFADD__(v10, 1))
                            {
                              __break(1u);
LABEL_60:
                              __break(1u);
                              goto LABEL_61;
                            }

                            sub_1000AC2AC();
                            a1 = p_attr;
                            v73 = swift_allocObject();
                            *(v73 + 16) = v155;
                            v74 = v158;
                            *(v73 + 56) = v159;
                            *(v73 + 64) = v74;
                            *(v73 + 32) = v3;
                            *(v73 + 96) = v157;
                            *(v73 + 104) = sub_100078FE0(&unk_1000F23E0, &qword_1000F1DE0, UIViewController_ptr);
                            *(v73 + 72) = v15;
                            v75 = v3;
                            v15 = v15;
                            sub_1000ABA5C();
                            p_attr = a1;

                            [v15 willMoveToParentViewController:0];
                            [v15 removeFromParentViewController];
                            v76 = [v15 *(a1 + 2416)];
                            if (!v76)
                            {
                              break;
                            }

                            v77 = v76;
                            [v76 removeFromSuperview];

                            [v15 didMoveToParentViewController:0];
                            ++v10;
                            if (v13 == v56)
                            {
                              goto LABEL_73;
                            }
                          }

                          __break(1u);
                          goto LABEL_85;
                        }
                      }

                      else
                      {
                        v56 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        p_attr = &stru_1000E5FF8.attr;
                        if (v56)
                        {
                          goto LABEL_40;
                        }
                      }

LABEL_73:

                      v25 = sub_1000AC2AC();
                      v15 = swift_allocObject();
                      *(v15 + 1) = xmmword_1000AF0F0;
                      v127 = v158;
                      v15[7] = v159;
                      v15[8] = v127;
                      v15[4] = v3;
                      v15[12] = v157;
                      v15[13] = sub_100078FE0(&unk_1000F23E0, &qword_1000F1DE0, UIViewController_ptr);
                      v128 = v153;
                      v15[9] = v153;
                      v3 = v3;
                      v129 = v128;
                      sub_1000ABA5C();

                      [v129 willMoveToParentViewController:v3];
                      [v3 addChildViewController:v129];
                      v130 = [v3 p_attr[302]];
                      if (v130)
                      {
                        v25 = v130;
                        v131 = [v129 p_attr[302]];
                        v132 = v154;
                        v133 = v152;
                        if (v131)
                        {
                          v15 = v131;
                          [v25 addSubview:v131];

                          [v129 didMoveToParentViewController:v3];
                          v25 = [v129 p_attr[302]];

                          if (v25)
                          {
                            v134 = [v3 p_attr[302]];
                            if (v134)
                            {
                              v135 = v134;
                              [v134 bounds];
                              v137 = v136;
                              v139 = v138;
                              v141 = v140;
                              v143 = v142;

                              [v25 setFrame:{v137, v139, v141, v143}];
                              v144 = v151;
                              v145 = [v151 rootObject];

                              if (v145)
                              {
                                objc_opt_self();
                                if (!swift_dynamicCastObjCClass())
                                {

                                  swift_unknownObjectRelease();
                                  return;
                                }

                                swift_unknownObjectRelease();
                                v146 = [v3 p_attr[302]];
                                if (!v146)
                                {
                                  __break(1u);
                                  return;
                                }

                                v147 = v146;
                                v148 = [objc_opt_self() clearColor];
                                [v147 setBackgroundColor:v148];
                              }

                              else
                              {
                              }

                              return;
                            }

                            goto LABEL_89;
                          }

LABEL_88:
                          __break(1u);
LABEL_89:
                          __break(1u);
                          goto LABEL_90;
                        }

LABEL_87:
                        __break(1u);
                        goto LABEL_88;
                      }

LABEL_86:
                      __break(1u);
                      goto LABEL_87;
                    }
                  }

                  sub_10004EA70(v10);
                  v163 = v6;
                  v164 = &off_1000DCB20;
                  v104 = sub_100030970(&v162);
                  sub_10001E764(v10, v104);
                  v105 = objc_allocWithZone(type metadata accessor for IMBAuthenticationViewController());
                  v106 = v163;
                  v107 = sub_1000315C0(&v162, v163);
                  v108 = *(*(v106 - 8) + 64);
                  __chkstk_darwin(v107, v107);
                  v110 = &v149 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v111 + 16))(v110);
                  v53 = v15;
                  v54 = a1;
                  v55 = sub_1000796E8(v54, v53, v110, v105);
                  goto LABEL_31;
                }
              }

              v83 = [v15 isFromMe];
              sub_10004EA70(v10);
              v163 = v6;
              v164 = &off_1000DCB20;
              v84 = sub_100030970(&v162);
              sub_10001E764(v10, v84);
              if (v83)
              {
                v85 = objc_allocWithZone(type metadata accessor for IMBTimeSelectedViewController());
                v86 = v163;
                v87 = sub_1000315C0(&v162, v163);
                v88 = *(*(v86 - 8) + 64);
                __chkstk_darwin(v87, v87);
                v90 = &v149 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v91 + 16))(v90);
                v53 = v15;
                v54 = a1;
                v55 = sub_10007930C(v54, v53, v90, v85);
              }

              else
              {
                v92 = objc_allocWithZone(type metadata accessor for IMBTimeSelectionTableViewController());
                v93 = v163;
                v94 = sub_1000315C0(&v162, v163);
                v95 = *(*(v93 - 8) + 64);
                __chkstk_darwin(v94, v94);
                v97 = &v149 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v98 + 16))(v97);
                v53 = v15;
                v54 = a1;
                v55 = sub_10007951C(v54, v53, v97, v92);
              }

LABEL_31:
              v42 = v55;

              sub_10001E7C8(v10);
              sub_10000E738(&v162);
LABEL_32:
              v56 = &OBJC_IVAR____TtC8Business30BIABubbleOptionsViewController_containingView;
              goto LABEL_33;
            }
          }

          sub_10004EA70(v10);
          v163 = v6;
          v164 = &off_1000DCB20;
          v45 = sub_100030970(&v162);
          sub_10001E764(v10, v45);
          v46 = objc_allocWithZone(type metadata accessor for IMBHTMLContentViewController());
          v47 = v163;
          v48 = sub_1000315C0(&v162, v163);
          v49 = *(*(v47 - 8) + 64);
          __chkstk_darwin(v48, v48);
          v51 = &v149 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v52 + 16))(v51);
          v53 = v15;
          v54 = a1;
          v55 = sub_100079084(v54, v53, v51, v46);
          goto LABEL_31;
        }
      }

      v37 = sub_10002CE60();
      v38 = [v15 isFromMe];
      if (v37 == 2)
      {
        v39 = objc_allocWithZone(type metadata accessor for MacListPickerTableViewController());
        v40 = v15;
        v41 = a1;
        v42 = sub_1000A4BA8(v41, v40, v38 ^ 1u);
      }

      else
      {
        v43 = objc_allocWithZone(type metadata accessor for IMBListPickerTableViewController());
        v42 = sub_10001B8D0(a1, v15, v38 ^ 1u);
      }

      goto LABEL_32;
    }
  }

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC2AC();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000AF0F0;
  *(v30 + 56) = type metadata accessor for IMBMessagesAppViewController();
  *(v30 + 64) = sub_100079030(&qword_1000F2380, v31, type metadata accessor for IMBMessagesAppViewController);
  *(v30 + 32) = v3;
  v32 = (a2 & 1) == 0;
  if (a2)
  {
    v33 = 0x6465646E61707865;
  }

  else
  {
    v33 = 0x746361706D6F63;
  }

  if (v32)
  {
    v34 = 0xE700000000000000;
  }

  else
  {
    v34 = 0xE800000000000000;
  }

  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = sub_10000587C();
  *(v30 + 72) = v33;
  *(v30 + 80) = v34;
  v35 = v3;
  sub_1000ABA5C();
}

void sub_100077E94(void *a1)
{
  v3 = type metadata accessor for URLHelper();
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v41[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
  if (*&v1[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController])
  {
    if (qword_1000EEE80 != -1)
    {
      swift_once();
    }

    sub_10000413C(&qword_1000F0060, &unk_1000B0470);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000B0620;
    *(v10 + 56) = type metadata accessor for IMBMessagesAppViewController();
    *(v10 + 64) = sub_100079030(&qword_1000F2380, v11, type metadata accessor for IMBMessagesAppViewController);
    *(v10 + 32) = v1;
    v12 = v1;
    v44[0] = [a1 selectedMessage];
    sub_10000413C(&qword_1000F2388, &qword_1000B43D0);
    v13 = sub_1000AC0CC();
    v15 = v14;
    *(v10 + 96) = &type metadata for String;
    v16 = sub_10000587C();
    *(v10 + 104) = v16;
    *(v10 + 72) = v13;
    *(v10 + 80) = v15;
    *v44 = *v9;
    v17 = v44[0];
    sub_10000413C(&unk_1000F2390, &qword_1000B43D8);
    v18 = sub_1000AC0CC();
    *(v10 + 136) = &type metadata for String;
    *(v10 + 144) = v16;
    *(v10 + 112) = v18;
    *(v10 + 120) = v19;
    sub_1000AC2BC();
    sub_1000ABA5C();

    return;
  }

  v20 = v6;
  objc_allocWithZone(type metadata accessor for PluginBubbleContext());
  v21 = v1;
  v22 = a1;
  v23 = sub_1000163BC(v21, v22);
  if (v23)
  {
    v24 = v23;
    sub_10000E6D4(&v21[OBJC_IVAR___IMBMessagesAppViewController_featureFlagArbiter], v44);
    sub_10004EA70(v8);
    v42 = v20;
    v43 = &off_1000DCB20;
    v25 = sub_100030970(v41);
    sub_10001E764(v8, v25);
    v26 = objc_allocWithZone(type metadata accessor for IMBTranscriptMessageViewController());
    v27 = v42;
    v28 = sub_1000315C0(v41, v42);
    v29 = *(*(v27 - 8) + 64);
    __chkstk_darwin(v28, v28);
    v31 = &v41[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v31);
    v33 = sub_100078D04(v24, v44, v31, v26);
    sub_10001E7C8(v8);
    sub_10000E738(v41);
    *&v33[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_messagesAppProxy + 8] = &off_1000DD808;
    swift_unknownObjectWeakAssign();
    if (!*v9)
    {
      *v9 = v33;
      *(v9 + 1) = &off_1000DBE98;
      v34 = v33;
      sub_1000767E0();

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1000AF0E0;
  *(v35 + 56) = type metadata accessor for IMBMessagesAppViewController();
  *(v35 + 64) = sub_100079030(&qword_1000F2380, v36, type metadata accessor for IMBMessagesAppViewController);
  *(v35 + 32) = v21;
  v21;
  sub_1000AC2BC();
  sub_1000ABA5C();

  v37 = objc_allocWithZone(type metadata accessor for IMBTranscriptEmptyMessageViewController());
  v38 = sub_100030A78(v22);
  *&v38[OBJC_IVAR____TtC8Business39IMBTranscriptEmptyMessageViewController_messagesAppProxy + 8] = &off_1000DD808;
  swift_unknownObjectWeakAssign();
  if (*v9)
  {
LABEL_15:
    __break(1u);
    return;
  }

  *v9 = v38;
  *(v9 + 1) = &off_1000DB8F8;
  v40 = v38;
  sub_1000767E0();
  v39 = v40;
}

id sub_1000783AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR___IMBMessagesAppViewController_featureFlagArbiter];
  v7 = [objc_allocWithZone(BCFeatureFlag) init];
  *(v6 + 3) = sub_100005A24(0, &unk_1000F23F0, BCFeatureFlag_ptr);
  *(v6 + 4) = &off_1000DB3C8;
  *v6 = v7;
  v8 = &v3[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR___IMBMessagesAppViewController____lazy_storage___dismissalDelegator] = 0;
  if (a2)
  {
    v9 = sub_1000AC02C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for IMBMessagesAppViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100078514(void *a1)
{
  v3 = &v1[OBJC_IVAR___IMBMessagesAppViewController_featureFlagArbiter];
  v4 = [objc_allocWithZone(BCFeatureFlag) init];
  *(v3 + 3) = sub_100005A24(0, &unk_1000F23F0, BCFeatureFlag_ptr);
  *(v3 + 4) = &off_1000DB3C8;
  *v3 = v4;
  v5 = &v1[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR___IMBMessagesAppViewController____lazy_storage___dismissalDelegator] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for IMBMessagesAppViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1000786DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBMessagesAppViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100078790()
{
  v1 = sub_1000AC8EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000413C(&qword_1000F0728, &unk_1000B1A10);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v24 - v10;
  v27 = v0;
  sub_10000413C(&unk_1000F2370, &unk_1000B43C0);
  v12 = swift_allocObject();
  v13 = v12;
  *(v12 + 16) = xmmword_1000AF0F0;
  *(v12 + 32) = 0xD000000000000014;
  *(v12 + 40) = 0x80000001000BB9C0;
  v14 = *&v0[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
  if (v14)
  {
    v15 = *&v0[OBJC_IVAR___IMBMessagesAppViewController_embeddedTranscriptViewController];
    ObjectType = swift_getObjectType();
    *&v25 = v14;
    sub_100006910(&v25, (v13 + 48));
  }

  else
  {
    *(v12 + 72) = &type metadata for String;
    *(v12 + 48) = 7104878;
    *(v12 + 56) = 0xE300000000000000;
  }

  *(v13 + 80) = 0x65746E6573657270;
  *(v13 + 88) = 0xEB00000000435664;
  v16 = v0;
  v17 = v14;
  v18 = [v16 presentedViewController];
  if (v18)
  {
    v19 = v18;
    ObjectType = sub_100005A24(0, &qword_1000F1DE0, UIViewController_ptr);
    *&v25 = v19;
    sub_100006910(&v25, (v13 + 96));
  }

  else
  {
    *(v13 + 120) = &type metadata for String;
    *(v13 + 96) = 7104878;
    *(v13 + 104) = 0xE300000000000000;
  }

  v20 = enum case for Mirror.DisplayStyle.class(_:);
  v21 = sub_1000AC8DC();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v11, v20, v21);
  (*(v22 + 56))(v11, 0, 1, v21);
  (*(v2 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  type metadata accessor for IMBMessagesAppViewController();
  return sub_1000AC8FC();
}

void sub_100078AD0()
{
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000AF0F0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong description];

    v4 = sub_1000AC06C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *(v0 + 56) = &type metadata for String;
  v7 = sub_10000587C();
  *(v0 + 64) = v7;
  v8 = 0x80000001000BB9E0;
  v9 = 0xD000000000000024;
  if (v6)
  {
    v9 = v4;
    v8 = v6;
  }

  *(v0 + 32) = v9;
  *(v0 + 40) = v8;
  swift_getWitnessTable();
  v10 = sub_1000AC78C();
  *(v0 + 96) = &type metadata for String;
  *(v0 + 104) = v7;
  *(v0 + 72) = v10;
  *(v0 + 80) = v11;
  sub_1000ABA5C();

  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    [v12 dismiss];
  }
}

uint64_t sub_100078CA4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

char *sub_100078D04(void *a1, uint64_t *a2, uint64_t a3, char *a4)
{
  v24[3] = type metadata accessor for URLHelper();
  v24[4] = &off_1000DCB20;
  v8 = sub_100030970(v24);
  sub_100078F7C(a3, v8);
  *&a4[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_messagesAppProxy + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &a4[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_bubbleView];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&a4[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_authvc] = 0;
  *&a4[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext] = a1;
  sub_10000E6D4(a2, &a4[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_featureFlagArbiter]);
  sub_10000E6D4(v24, &a4[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_urlHelper]);
  v23.receiver = a4;
  v23.super_class = type metadata accessor for IMBTranscriptMessageViewController();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
  v12 = qword_1000EEE80;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000AF0F0;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = NSStringFromClass(ObjCClassFromMetadata);
  v17 = sub_1000AC06C();
  v19 = v18;

  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_10000587C();
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  v20 = *(*&v13[OBJC_IVAR____TtC8Business34IMBTranscriptMessageViewController_pluginBubbleContext] + OBJC_IVAR____TtC8Business19PluginBubbleContext_bcMessage);
  *(v14 + 96) = sub_100005A24(0, &qword_1000EF020, BCMessage_ptr);
  *(v14 + 104) = sub_100078FE0(&qword_1000F23A0, &qword_1000EF020, BCMessage_ptr);
  *(v14 + 72) = v20;
  v21 = v20;
  sub_1000ABA5C();

  sub_10000E738(a2);
  sub_10000E738(v24);
  return v13;
}

uint64_t sub_100078F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLHelper();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100078FE0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005A24(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100079030(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_100079084(void *a1, void *a2, uint64_t a3, char *a4)
{
  v26[3] = type metadata accessor for URLHelper();
  v26[4] = &off_1000DCB20;
  v8 = sub_100030970(v26);
  sub_100078F7C(a3, v8);
  v9 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_scrollview;
  *&a4[v9] = [objc_allocWithZone(UIScrollView) init];
  v10 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_footerToolbar;
  *&a4[v10] = [objc_allocWithZone(UIToolbar) init];
  v11 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_toolbarBorder;
  *&a4[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_shareButtonItem;
  v13 = type metadata accessor for IMBHTMLContentViewController();
  v14 = objc_allocWithZone(UIBarButtonItem);
  sub_10000413C(&unk_1000F06C0, &qword_1000B43E0);
  v15 = [v14 initWithBarButtonSystemItem:9 target:sub_1000AC7CC() action:{"shareButtonTapped:", v13}];
  swift_unknownObjectRelease();
  *&a4[v12] = v15;
  *&a4[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webview] = 0;
  *&a4[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_headerView] = 0;
  *&a4[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_contentHeaderView] = 0;
  *&a4[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_webviewHeightConstraint] = 0;
  *&a4[OBJC_IVAR____TtC8Business28IMBHTMLContentViewController_content] = 0;
  sub_10000E6D4(v26, v24);
  v16 = v25;
  v17 = sub_1000315C0(v24, v25);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17, v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_1000A47C0(a1, a2, v20, a4);
  sub_10000E738(v26);
  sub_10000E738(v24);
  return v22;
}

id sub_10007930C(void *a1, void *a2, uint64_t a3, char *a4)
{
  v24[3] = type metadata accessor for URLHelper();
  v24[4] = &off_1000DCB20;
  v8 = sub_100030970(v24);
  sub_100078F7C(a3, v8);
  v9 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_dayLabel;
  *&a4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_dateLabel;
  *&a4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_timeLabel;
  *&a4[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_warningLabel;
  *&a4[v12] = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_containerView;
  *&a4[v13] = [objc_allocWithZone(UIView) init];
  *&a4[OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_proposedEvent] = 0;
  sub_10000E6D4(v24, v22);
  v14 = v23;
  v15 = sub_1000315C0(v22, v23);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15, v15);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_1000A49E0(a1, a2, v18, a4);
  sub_10000E738(v24);
  sub_10000E738(v22);
  return v20;
}

id sub_10007951C(void *a1, void *a2, uint64_t a3, char *a4)
{
  v19[3] = type metadata accessor for URLHelper();
  v19[4] = &off_1000DCB20;
  v8 = sub_100030970(v19);
  sub_100078F7C(a3, v8);
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_proposedEvent] = 0;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates] = _swiftEmptyArrayStorage;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_datesDictionary] = _swiftEmptyDictionarySingleton;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_conflictedEvents] = _swiftEmptyDictionarySingleton;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedTimeslot] = 0;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedEvent] = 0;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessage] = 0;
  *&a4[OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_selectedMessageInfo] = 0;
  sub_10000E6D4(v19, v17);
  v9 = v18;
  v10 = sub_1000315C0(v17, v18);
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v10, v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_1000A49E0(a1, a2, v13, a4);
  sub_10000E738(v19);
  sub_10000E738(v17);
  return v15;
}

id sub_1000796E8(void *a1, void *a2, uint64_t a3, char *a4)
{
  v8 = type metadata accessor for URLHelper();
  v9 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8 - 8, v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = v24 - v15;
  sub_10001E7C8(a3);
  v17 = OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager;
  *&a4[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_authenticationManager] = 0;
  v18 = OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_webViewController;
  *&a4[v18] = [objc_allocWithZone(type metadata accessor for IMBWebViewController()) initWithCallbackURI:BCOAuthRedirectURI];
  *&a4[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_session] = 0;
  a4[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_didShowAuth] = 0;
  *&a4[OBJC_IVAR____TtC8Business31IMBAuthenticationViewController_aswasWindow] = 0;
  if ([a2 rootObject])
  {
    v24[1] = &OBJC_PROTOCOL___BCOAuth2RequestProtocol;
    v19 = swift_dynamicCastObjCProtocolConditional();
    if (v19)
    {
      v20 = [objc_allocWithZone(BCAuthenticationManager) initWithAuthenticationRequest:v19];
      swift_unknownObjectRelease();
      v21 = *&a4[v17];
      *&a4[v17] = v20;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_10004EA70(v16);
  sub_10001E764(v16, v13);
  v22 = sub_1000A47C0(a1, a2, v13, a4);
  sub_10001E7C8(v16);
  return v22;
}

id sub_1000798CC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_widthLayoutConstraint] = 0;
  v3 = OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected] = 0;
  *&v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeslot] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for IMBTimeslotView();

  v4 = objc_msgSendSuper2(&v6, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100079D3C();
  sub_100079F40();

  return v4;
}

void sub_100079ACC(uint64_t a1)
{
  if (!a1)
  {
    v5 = OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected;
    v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected] = 0;
    v6 = *&v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
    if (sub_10002CE60() > 1u)
    {
      v9 = [objc_opt_self() labelColor];
    }

    else
    {
      v7 = sub_10002CE60();
      v8 = sub_1000AC02C();
      v9 = [objc_opt_self() colorNamed:v8];

      if (v7 >= 2)
      {
        if (!v9)
        {
          __break(1u);
          return;
        }
      }

      else if (!v9)
      {
        __break(1u);
LABEL_11:
        v4 = 1;
        goto LABEL_12;
      }
    }

    [v6 setTextColor:v9];

    v19 = [v1 layer];
    sub_10007A630();
    v21 = v20;
    [v19 setBorderColor:v20];

    sub_10007A730(v1[v5]);
    v23 = v22;
    [v1 setBackgroundColor:?];
    goto LABEL_16;
  }

  v2 = *&v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeslot];
  if (*(a1 + 16) == *(v2 + 16) && *(a1 + 24) == *(v2 + 24))
  {
    goto LABEL_11;
  }

  v4 = sub_1000AC7AC();
LABEL_12:
  v10 = OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected;
  v11 = v4 & 1;
  v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected] = v4 & 1;
  v12 = *&v1[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];

  sub_10007A518(v11);
  v14 = v13;
  [v12 setTextColor:v13];

  v15 = [v1 layer];
  sub_10007A630();
  v17 = v16;
  [v15 setBorderColor:v16];

  sub_10007A730(v1[v10]);
  v23 = v18;
  [v1 setBackgroundColor:?];

LABEL_16:
}

void sub_100079D3C()
{
  v1 = [v0 layer];
  v2 = sub_10002CE60();
  v3 = 8.0;
  if (v2 == 2)
  {
    v3 = 4.0;
  }

  [v1 setCornerRadius:v3];

  v4 = [v0 layer];
  [v4 setBorderWidth:1.0];

  v5 = *&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
  if (qword_1000EEE78 != -1)
  {
    swift_once();
  }

  [v5 setFont:qword_1000F2410];
  [v5 setTextAlignment:1];
  [v0 addSubview:v5];
  v6 = OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected;
  sub_10007A518(v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected]);
  v8 = v7;
  [v5 setTextColor:v7];

  v9 = [v0 layer];
  sub_10007A630();
  v11 = v10;
  [v9 setBorderColor:v10];

  sub_10007A730(v0[v6]);
  v13 = v12;
  [v0 setBackgroundColor:v12];

  v14 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"timeViewTappedWithGestureRecognizer:"];
  [v0 addGestureRecognizer:v14];
}

void sub_100079F40()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 topAnchor];
  v4 = sub_10002CE60();
  v5 = 12.0;
  if (v4 == 2)
  {
    v5 = 8.0;
  }

  v6 = [v2 constraintEqualToAnchor:v3 constant:v5];

  [v6 setActive:1];
  v7 = [v1 bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = sub_10002CE60();
  v10 = -11.0;
  if (v9 == 2)
  {
    v10 = -8.0;
  }

  v11 = [v7 constraintEqualToAnchor:v8 constant:v10];

  [v11 setActive:1];
  v12 = [v1 centerXAnchor];
  v13 = [v0 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  [v14 setActive:1];
  LODWORD(v15) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v15];
  v16 = [v0 widthAnchor];
  v17 = [v16 constraintEqualToConstant:0.0];

  v18 = OBJC_IVAR____TtC8Business15IMBTimeslotView_widthLayoutConstraint;
  v19 = *&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_widthLayoutConstraint];
  *&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_widthLayoutConstraint] = v17;
  v20 = v17;

  if (!v20)
  {
    __break(1u);
    goto LABEL_11;
  }

  LODWORD(v21) = 1132068864;
  [v20 setPriority:v21];

  v22 = *&v0[v18];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v22 setActive:1];
}

id sub_10007A230(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  if (v1 == 2)
  {
    v3 = 0.25;
  }

  else
  {
    v3 = 0.55;
  }

  v4 = &selRef_blackColor;
  if (v1 != 2)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

void sub_10007A2D0()
{
  if (sub_10002CE60() == 2)
  {
    v0 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    v1 = [objc_opt_self() systemFontOfSize:13.0];
    v2 = [v0 scaledFontForFont:v1];
  }

  else
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  }

  qword_1000F2410 = v2;
}

id sub_10007A3EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBTimeslotView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10007A4B0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

void sub_10007A518(char a1)
{
  if (sub_10002CE60() > 1u)
  {
    v2 = objc_opt_self();
    v3 = &selRef_labelColor;
    if (a1)
    {
      v3 = &selRef_whiteColor;
    }

    goto LABEL_6;
  }

  if (a1)
  {
    v2 = objc_opt_self();
    v3 = &selRef_whiteColor;
LABEL_6:
    v4 = [v2 *v3];

    v5 = v4;
    return;
  }

  v6 = sub_10002CE60();
  v7 = sub_1000AC02C();
  v8 = [objc_opt_self() colorNamed:v7];

  if (v6 < 2)
  {
    if (v8)
    {
      return;
    }

    __break(1u);
  }

  if (!v8)
  {
    __break(1u);
  }
}

void sub_10007A630()
{
  if (sub_10002CE60() > 1u)
  {
    goto LABEL_5;
  }

  v0 = sub_10002CE60();
  v1 = sub_1000AC02C();
  v2 = [objc_opt_self() colorNamed:v1];

  if (v0 < 2)
  {
    if (!v2)
    {
      __break(1u);
LABEL_5:
      v2 = [objc_opt_self() clearColor];
      v3 = [v2 CGColor];
LABEL_8:
      v3;

      return;
    }

LABEL_7:
    v3 = [v2 CGColor];
    goto LABEL_8;
  }

  if (v2)
  {
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10007A730(char a1)
{
  LOBYTE(v1) = a1;
  if (sub_10002CE60() <= 1u)
  {
    if ((v1 & 1) == 0)
    {
LABEL_10:
      v6 = [objc_opt_self() clearColor];

      v7 = v6;
      return;
    }

    v2 = sub_10002CE60();
    v3 = sub_1000AC02C();
    v1 = [objc_opt_self() colorNamed:v3];

    if (v2 >= 2)
    {
      if (v1)
      {
        return;
      }

      __break(1u);
      goto LABEL_16;
    }

    if (v1)
    {
      return;
    }

    __break(1u);
  }

  if ((v1 & 1) == 0)
  {
    v8 = objc_allocWithZone(UIColor);
    v10[4] = sub_10007A230;
    v10[5] = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10007A4B0;
    v10[3] = &unk_1000DD840;
    v9 = _Block_copy(v10);
    [v8 initWithDynamicProvider:v9];
    _Block_release(v9);

    return;
  }

  v4 = sub_10002CE60();
  v5 = sub_1000AC02C();
  v1 = [objc_opt_self() colorNamed:v5];

  if (v4 < 2)
  {
    if (v1)
    {
      return;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_16:
  if (!v1)
  {
    __break(1u);
  }
}

uint64_t sub_10007A93C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10007A954()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
  v2 = OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected;
  sub_10007A518(v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected]);
  v4 = v3;
  [v1 setTextColor:v3];

  v5 = [v0 layer];
  sub_10007A630();
  v7 = v6;
  [v5 setBorderColor:v6];

  sub_10007A730(v0[v2]);
  v9 = v8;
  [v0 setBackgroundColor:v8];
}

void sub_10007AA2C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeSelectionDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(*&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeslot], ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected;
  v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_isSelected] = 1;
  v6 = *&v0[OBJC_IVAR____TtC8Business15IMBTimeslotView_timeLabel];
  sub_10002CE60();
  v7 = [objc_opt_self() whiteColor];
  [v6 setTextColor:v7];

  v8 = [v1 layer];
  sub_10007A630();
  v10 = v9;
  [v8 setBorderColor:v9];

  sub_10007A730(*(v1 + v5));
  v12 = v11;
  [v1 setBackgroundColor:v11];
}

uint64_t sub_10007AC4C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_10007ACA8(void *a1, void *a2, char a3)
{
  v68._object = a2;
  *&v3[OBJC_IVAR____TtC8Business26QuickReplyFromMeBubbleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v74.receiver = v3;
  v74.super_class = type metadata accessor for QuickReplyFromMeBubbleView();
  v5 = objc_msgSendSuper2(&v74, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = qword_1000EEDA8;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  [v7 setBackgroundColor:qword_1000FBED8];
  v8 = [objc_allocWithZone(UILabel) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v69 = objc_opt_self();
  v9 = [v69 labelColor];
  [v8 setTextColor:v9];

  [v8 setMinimumScaleFactor:0.4];
  [v8 setAdjustsFontSizeToFitWidth:1];
  v10 = objc_opt_self();
  v11 = [v10 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  v12 = [v11 fontDescriptorWithSymbolicTraits:0x8000];
  v71 = a1;
  if (v12)
  {
    v13 = v12;

    v11 = v13;
  }

  sub_10000413C(&qword_1000EF8B0, &unk_1000B4000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000AF0E0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_10000413C(&qword_1000EF8B8, &qword_1000B0600);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_1000AF0E0;
  *(v15 + 32) = UIFontWeightTrait;
  *(v15 + 40) = UIFontWeightSemibold;
  v16 = UIFontDescriptorTraitsAttribute;
  v17 = UIFontWeightTrait;
  v18 = sub_10004FA58(v15);
  swift_setDeallocating();
  sub_10000E784(v15 + 32, &qword_1000EF8C0, &qword_1000B0608);
  *(inited + 64) = sub_10000413C(&qword_1000EF8C8, &unk_1000B0610);
  *(inited + 40) = v18;
  sub_10004FB48(inited);
  swift_setDeallocating();
  sub_10000E784(inited + 32, &qword_1000EF8D0, qword_1000B4010);
  type metadata accessor for AttributeName(0);
  sub_10007BCD0(&qword_1000EF1A0, type metadata accessor for AttributeName);
  isa = sub_1000ABFAC().super.isa;

  v20 = [v11 fontDescriptorByAddingAttributes:isa];

  v21 = objc_opt_self();
  v22 = [v21 fontWithDescriptor:v20 size:0.0];

  [v8 setFont:v22];
  [v8 setNumberOfLines:0];
  type metadata accessor for UILayoutPriority(0);
  sub_10007BCD0(&qword_1000F2558, type metadata accessor for UILayoutPriority);
  sub_1000ABA9C();
  LODWORD(v23) = v73;
  [v8 setContentCompressionResistancePriority:0 forAxis:v23];
  sub_1000ABA9C();
  LODWORD(v24) = v73;
  [v8 setContentCompressionResistancePriority:1 forAxis:v24];
  sub_1000ABAAC();
  LODWORD(v25) = v73;
  [v8 setContentHuggingPriority:0 forAxis:v25];
  sub_1000ABAAC();
  LODWORD(v26) = v73;
  [v8 setContentHuggingPriority:1 forAxis:v26];
  if ((a3 & 1) != 0 || (v68._object & 0x8000000000000000) != 0 || v71[2] <= v68._object)
  {
  }

  else
  {
    v27 = &v71[4 * v68._object];
    v28 = *(v27 + 6);
    v29 = *(v27 + 7);

    v30 = sub_1000AC02C();

    [v8 setText:v30];
  }

  v31 = [objc_allocWithZone(UILabel) init];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = [v69 secondaryLabelColor];
  [v31 setTextColor:v32];

  [v31 setMinimumScaleFactor:0.4];
  [v31 setAdjustsFontSizeToFitWidth:1];
  v33 = [v10 preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  v34 = [v33 fontDescriptorWithSymbolicTraits:0x8000];
  if (v34)
  {
    v35 = v34;

    v33 = v35;
  }

  v36 = [v21 fontWithDescriptor:v33 size:0.0];

  [v31 setFont:v36];
  v37 = [objc_opt_self() mainBundle];
  v68._countAndFlagsBits = 0xE000000000000000;
  v75._countAndFlagsBits = 0x44455443454C4553;
  v75._object = 0xEF4E4F4954504F5FLL;
  v76.value._countAndFlagsBits = 0;
  v76.value._object = 0;
  v38.super.isa = v37;
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  sub_1000AB61C(v75, v76, v38, v77, v68);

  v39 = sub_1000AC02C();

  [v31 setText:v39];

  [v31 setNumberOfLines:0];
  sub_1000ABAAC();
  LODWORD(v40) = v73;
  [v31 setContentCompressionResistancePriority:0 forAxis:v40];
  sub_1000ABAAC();
  LODWORD(v41) = v73;
  [v31 setContentCompressionResistancePriority:1 forAxis:v41];
  sub_1000ABAAC();
  LODWORD(v42) = v73;
  [v31 setContentHuggingPriority:0 forAxis:v42];
  sub_1000ABAAC();
  LODWORD(v43) = v73;
  [v31 setContentHuggingPriority:1 forAxis:v43];
  [v7 addSubview:v8];
  [v7 addSubview:v31];
  v72 = objc_opt_self();
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1000B08F0;
  v45 = [v8 topAnchor];
  v46 = [v7 topAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:10.0];

  *(v44 + 32) = v47;
  v48 = [v8 leadingAnchor];
  v49 = [v7 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:16.0];

  *(v44 + 40) = v50;
  v51 = [v8 trailingAnchor];
  v52 = [v7 trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:-16.0];

  *(v44 + 48) = v53;
  v54 = [v31 topAnchor];
  v55 = [v8 bottomAnchor];

  v56 = [v54 constraintEqualToAnchor:v55 constant:2.0];
  *(v44 + 56) = v56;
  v57 = [v31 leadingAnchor];
  v58 = [v7 leadingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:16.0];

  *(v44 + 64) = v59;
  v60 = [v31 bottomAnchor];
  v61 = [v7 bottomAnchor];
  if (qword_1000EEDB8 != -1)
  {
    swift_once();
  }

  v62 = [v60 constraintEqualToAnchor:v61 constant:-10.0 - *&qword_1000FBEE8];

  *(v44 + 72) = v62;
  v63 = [v31 trailingAnchor];

  v64 = [v7 trailingAnchor];
  v65 = [v63 constraintEqualToAnchor:v64 constant:-16.0];

  *(v44 + 80) = v65;
  sub_10000F840();
  v66 = sub_1000AC18C().super.isa;

  [v72 activateConstraints:v66];

  sub_10007B874();
  return v7;
}

void sub_10007B874()
{
  v1 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  v2 = [objc_allocWithZone(UIPanGestureRecognizer) init];
  v3 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v3 setNumberOfTapsRequired:2];
  v4 = v3;
  [v4 setCancelsTouchesInView:0];
  [v4 setDelaysTouchesEnded:0];

  v5 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v5 requireGestureRecognizerToFail:v1];
  [v5 requireGestureRecognizerToFail:v2];
  [v5 requireGestureRecognizerToFail:v4];
  [v5 setCancelsTouchesInView:0];
  [v5 setDelaysTouchesEnded:0];
  [v0 addGestureRecognizer:v1];
  [v0 addGestureRecognizer:v2];
  [v0 addGestureRecognizer:v4];
  [v0 addGestureRecognizer:v5];
}

double sub_10007BA78(double a1)
{
  [v1 systemLayoutSizeFittingSize:fmin(a1 withHorizontalFittingPriority:263.0) verticalFittingPriority:?];
  v3 = v2;
  if (qword_1000EEE80 != -1)
  {
    swift_once();
  }

  sub_1000AC29C();
  sub_10000413C(&qword_1000F0060, &unk_1000B0470);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000AF0F0;
  v5 = sub_1000AC36C();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  v8 = sub_10000587C();
  *(v4 + 64) = v8;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v9 = sub_1000AC36C();
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v8;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_1000ABA5C();

  return v3;
}

id sub_10007BC18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickReplyFromMeBubbleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007BC80(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8Business26QuickReplyFromMeBubbleView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_10007BCD0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10007BE00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeparatorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10007BE34()
{
  v1 = [*v0 leadingAnchor];

  return v1;
}

id sub_10007BE6C()
{
  v1 = [*v0 trailingAnchor];

  return v1;
}

id sub_10007BEA4()
{
  v1 = [*v0 topAnchor];

  return v1;
}

void *sub_10007BF40(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16) || (v4 = sub_10004F0CC(0x6C6562616CLL, 0xE500000000000000), (v5 & 1) == 0) || (sub_1000068B4(*(a1 + 56) + 32 * v4, v15), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1000EEE80 == -1)
    {
      goto LABEL_14;
    }

LABEL_23:
    swift_once();
    goto LABEL_14;
  }

  if (*(a1 + 16))
  {
    v6 = sub_10004F0CC(0x746E756F6D61, 0xE600000000000000);
    if (v7)
    {
      sub_1000068B4(*(a1 + 56) + 32 * v6, v15);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16) && (v8 = sub_10004F0CC(1701869940, 0xE400000000000000), (v9 & 1) != 0))
        {
          sub_1000068B4(*(a1 + 56) + 32 * v8, v15);

          if (swift_dynamicCast())
          {
            if (v13 == 0x676E69646E6570 && v14 == 0xE700000000000000)
            {

              v10 = 1;
LABEL_20:
              v2[5] = v14;
              v2[6] = v10;
              v2[2] = v13;
              v2[3] = v14;
              v2[4] = v13;
              return v2;
            }

            v12 = sub_1000AC7AC();

            if (v12)
            {
              v10 = 1;
              goto LABEL_20;
            }
          }
        }

        else
        {
        }

        v10 = 0;
        goto LABEL_20;
      }
    }
  }

  if (qword_1000EEE80 != -1)
  {
    goto LABEL_23;
  }

LABEL_14:
  sub_1000AC2AC();
  sub_1000ABA5C();
  type metadata accessor for IMBLineItem();
  swift_deallocPartialClassInstance();
  return 0;
}

void *sub_10007C280()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v0[3];
  v14 = &type metadata for String;
  *&v13 = v2;
  *(&v13 + 1) = v3;
  sub_100006910(&v13, v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v12, 0x6C6562616CLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v5 = v1[4];
  v6 = v1[5];
  v14 = &type metadata for String;
  *&v13 = v5;
  *(&v13 + 1) = v6;
  sub_100006910(&v13, v12);

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v12, 0x746E756F6D61, 0xE600000000000000, v7);
  v8 = v1[6];
  type metadata accessor for PKPaymentSummaryItemType(0);
  v14 = v9;
  *&v13 = v8;
  sub_100006910(&v13, v12);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_10003A3E8(v12, 1701869940, 0xE400000000000000, v10);
  return _swiftEmptyDictionarySingleton;
}

id sub_10007C3AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = objc_allocWithZone(NSDecimalNumber);
  v6 = sub_1000AC02C();
  v7 = [v5 initWithString:v6];

  v8 = sub_1000AC02C();
  v9 = [objc_opt_self() summaryItemWithLabel:v8 amount:v7];

  [v9 setType:v0[6]];
  return v9;
}

uint64_t sub_10007C478()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_10007C670()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  return v1;
}

id sub_10007C770()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BIABubbleOptionsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BIABubbleOptionsViewController()
{
  result = qword_1000F2720;
  if (!qword_1000F2720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007C8A4()
{
  sub_10005C128();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10007C984();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10007C984()
{
  if (!qword_1000F2730)
  {
    v0 = sub_1000ABC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000F2730);
    }
  }
}

uint64_t sub_10007C9DC(uint64_t a1)
{
  v2 = sub_10000413C(&qword_1000F08E0, &unk_1000B4690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10007CA44()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for IMBJITAppKitErrorViewController();
  objc_msgSendSuper2(&v42, "viewDidLoad");
  v1 = [objc_allocWithZone(type metadata accessor for RetryView()) init];
  v2 = &v0[OBJC_IVAR____TtC8Business31IMBJITAppKitErrorViewController_delegate];
  swift_unknownObjectWeakLoadStrong();
  *&v1[OBJC_IVAR____TtC8Business9RetryView_delegate + 8] = *(v2 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v3 = v1;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 addSubview:v3];

  v6 = [v3 topAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v7 layoutMarginsGuide];

  v10 = [v9 topAnchor];
  v11 = [v6 constraintGreaterThanOrEqualToAnchor:v10 constant:8.0];

  LODWORD(v12) = 1132068864;
  [v11 setPriority:v12];
  v13 = [v3 bottomAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 layoutMarginsGuide];

  v17 = [v16 bottomAnchor];
  v18 = [v13 constraintGreaterThanOrEqualToAnchor:v17];

  LODWORD(v19) = 1132068864;
  [v18 setPriority:v19];
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000B08E0;
  v21 = [v3 centerYAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = v22;
  v24 = [v22 centerYAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v20 + 32) = v25;
  v26 = [v3 leadingAnchor];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v28 = v27;
  v29 = [v27 layoutMarginsGuide];

  v30 = [v29 leadingAnchor];
  v31 = [v26 constraintEqualToAnchor:v30];

  *(v20 + 40) = v31;
  v32 = [v3 trailingAnchor];

  v33 = [v0 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 layoutMarginsGuide];

    v37 = [v36 trailingAnchor];
    v38 = [v32 constraintEqualToAnchor:v37];

    *(v20 + 48) = v38;
    *(v20 + 56) = v11;
    *(v20 + 64) = v18;
    sub_10000F840();
    v39 = v11;
    v40 = v18;
    isa = sub_1000AC18C().super.isa;

    [v35 activateConstraints:isa];

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_10007D0C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBJITAppKitErrorViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007D128()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

id sub_10007D194()
{
  v1 = OBJC_IVAR____TtC8Business13IMBWebURLView_domainLabel;
  *&v0[v1] = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC8Business13IMBWebURLView_separator;
  *&v0[v2] = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC8Business13IMBWebURLView_navigationURL;
  v4 = sub_1000AB6EC();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v11.receiver = v0;
  v11.super_class = type metadata accessor for IMBWebURLView();
  v5 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10007D49C();
  sub_10007D648();
  if (sub_10002CE60() == 2)
  {
    v6 = objc_allocWithZone(UIContextMenuInteraction);
    v7 = v5;
    v8 = [v6 initWithDelegate:v7];
    [v7 addInteraction:v8];
    v9 = [objc_allocWithZone(UIToolTipInteraction) init];
    [v9 setDelegate:v7];

    [v7 addInteraction:v9];
  }

  else
  {
    v9 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v5 action:"handleLongPress"];
    [v9 setDelegate:v5];
    [v5 addGestureRecognizer:v9];
  }

  return v5;
}

id sub_10007D49C()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business13IMBWebURLView_domainLabel];
  [v1 setNumberOfLines:1];
  v2 = [objc_opt_self() defaultMetrics];
  v3 = objc_opt_self();
  [v3 labelFontSize];
  v4 = [v3 boldSystemFontOfSize:?];
  v5 = [v2 scaledFontForFont:v4];

  [v1 setFont:v5];
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  [v1 setTextColor:v7];

  [v1 setTextAlignment:1];
  v8 = *&v0[OBJC_IVAR____TtC8Business13IMBWebURLView_separator];
  v9 = [v6 systemGray2Color];
  [v8 setBackgroundColor:v9];

  [v0 addSubview:v1];

  return [v0 addSubview:v8];
}

void sub_10007D648()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Business13IMBWebURLView_domainLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC8Business13IMBWebURLView_separator];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000B04B0;
  v5 = [v2 topAnchor];
  v6 = [v1 topAnchor];
  if ((sub_10002CE60() & 0xFE) != 0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 8.0;
  }

  v38 = objc_opt_self();
  v8 = [v5 constraintEqualToAnchor:v6 constant:v7];

  *(v4 + 32) = v8;
  v9 = [v2 leadingAnchor];
  v10 = [v1 layoutMarginsGuide];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v4 + 40) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v1 layoutMarginsGuide];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v4 + 48) = v16;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  isa = sub_1000AC18C().super.isa;

  [v38 activateConstraints:isa];

  v18 = [v3 bottomAnchor];
  v19 = [v1 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  LODWORD(v21) = 1132068864;
  [v20 setPriority:v21];
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000B08E0;
  v23 = [v3 topAnchor];
  v24 = [v2 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:8.0];

  *(v22 + 32) = v25;
  v26 = [v3 leftAnchor];
  v27 = [v1 leftAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v22 + 40) = v28;
  v29 = [v3 rightAnchor];
  v30 = [v1 rightAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v22 + 48) = v31;
  v32 = [v3 heightAnchor];
  v33 = [objc_opt_self() mainScreen];
  [v33 scale];
  v35 = v34;

  v36 = [v32 constraintEqualToConstant:1.0 / v35];
  *(v22 + 56) = v36;
  *(v22 + 64) = v20;
  v37 = v20;
  v39 = sub_1000AC18C().super.isa;

  [v38 activateConstraints:v39];
}

uint64_t sub_10007DB4C(uint64_t a1, int a2)
{
  v5 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8, v11);
  v13 = &v26[-v12];
  v14 = sub_1000AB6EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v26[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10003C3C8(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10000E784(v13, &unk_1000F06A0, &unk_1000B0450);
  }

  (*(v15 + 32))(v19, v13, v14);
  v21 = *(v15 + 16);
  v21(v10, v19, v14);
  v27 = a2;
  v22 = *(v15 + 56);
  v22(v10, 0, 1, v14);
  v23 = OBJC_IVAR____TtC8Business13IMBWebURLView_navigationURL;
  swift_beginAccess();
  sub_10007F374(v10, v2 + v23);
  swift_endAccess();
  v24 = *(v2 + OBJC_IVAR____TtC8Business13IMBWebURLView_domainLabel);
  v21(v10, v19, v14);
  v22(v10, 0, 1, v14);
  v25 = sub_10007DE04(v10, v27 & 1);
  sub_10000E784(v10, &unk_1000F06A0, &unk_1000B0450);
  [v24 setAttributedText:v25];

  return (*(v15 + 8))(v19, v14);
}

id sub_10007DE04(uint64_t a1, char a2)
{
  v4 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = v58 - v7;
  v9 = [objc_allocWithZone(NSMutableAttributedString) init];
  v10 = [objc_allocWithZone(NSMutableAttributedString) init];
  sub_10003C3C8(a1, v8);
  v11 = sub_1000AB6EC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {

    sub_10000E784(v8, &unk_1000F06A0, &unk_1000B0450);
  }

  else
  {
    v60 = v10;
    v58[1] = URL.displayDomainString.getter();
    v58[2] = v13;
    (*(v12 + 8))(v8, v11);
    v59 = v9;
    if (a2)
    {
      v14 = [objc_allocWithZone(NSTextAttachment) init];
      v15 = objc_opt_self();
      v16 = sub_1000AC02C();
      v17 = [v15 __systemImageNamedSwift:v16];

      if (v17)
      {
        v18 = [v17 imageWithRenderingMode:2];
      }

      else
      {
        v18 = 0;
      }

      v33 = [objc_opt_self() defaultMetrics];
      v34 = objc_opt_self();
      [v34 labelFontSize];
      v35 = [v34 boldSystemFontOfSize:?];
      v36 = [v33 scaledFontForFont:v35];

      [v36 capHeight];
      v38 = v37;

      v39 = [objc_opt_self() configurationWithPointSize:7 weight:v38];
      v40 = [v18 imageByApplyingSymbolConfiguration:v39];
      [v14 setImage:v40];

      v41 = [objc_opt_self() attributedStringWithAttachment:v14];
      v42 = v60;
      [v60 appendAttributedString:v41];
      v43 = [objc_opt_self() labelColor];
      v44 = [v41 length];
      v58[0] = NSForegroundColorAttributeName;
      [v42 addAttribute:NSForegroundColorAttributeName value:v43 range:{0, v44}];

      isa = sub_1000AC1EC().super.super.isa;
      [v42 addAttribute:NSBaselineOffsetAttributeName value:isa range:{0, objc_msgSend(v41, "length")}];
    }

    else
    {
      v19 = [objc_opt_self() mainBundle];
      v57._countAndFlagsBits = 0xE000000000000000;
      v62._countAndFlagsBits = 0x554345535F544F4ELL;
      v62._object = 0xEA00000000004552;
      v63.value._countAndFlagsBits = 0;
      v63.value._object = 0;
      v20.super.isa = v19;
      v64._countAndFlagsBits = 0;
      v64._object = 0xE000000000000000;
      sub_1000AB61C(v62, v63, v20, v64, v57);

      v21 = objc_allocWithZone(NSMutableAttributedString);
      v22 = sub_1000AC02C();

      v23 = [v21 initWithString:v22];

      v24 = v60;
      [v60 appendAttributedString:v23];

      v25 = [objc_opt_self() secondaryLabelColor];
      v26 = v24;
      v27 = [v26 length];
      v58[0] = NSForegroundColorAttributeName;
      [v26 addAttribute:NSForegroundColorAttributeName value:v25 range:{0, v27}];

      v28 = [objc_opt_self() defaultMetrics];
      v29 = objc_opt_self();
      [v29 labelFontSize];
      v30 = [v29 systemFontOfSize:?];
      isa = [v28 scaledFontForFont:v30];

      v32 = [v26 length];
      [v26 addAttribute:NSFontAttributeName value:isa range:{0, v32}];
    }

    v45 = objc_allocWithZone(NSMutableAttributedString);
    v46 = sub_1000AC02C();

    v47 = [v45 initWithString:v46];

    v48 = objc_allocWithZone(NSMutableAttributedString);
    v49 = sub_1000AC02C();

    v50 = [v48 initWithString:v49];

    v51 = [v61 effectiveUserInterfaceLayoutDirection];
    v52 = [objc_opt_self() secondaryLabelColor];
    v53 = [v50 length];
    [v50 addAttribute:v58[0] value:v52 range:{0, v53}];

    v9 = v59;
    if (v51 == 1)
    {
      [v59 appendAttributedString:v47];
      [v9 appendAttributedString:v50];
      v54 = v60;
      [v9 appendAttributedString:v60];
    }

    else
    {
      v55 = v60;
      [v59 appendAttributedString:v60];
      [v9 appendAttributedString:v50];
      [v9 appendAttributedString:v47];
    }
  }

  return v9;
}

void sub_10007E664()
{
  v1 = sub_1000AB6EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v15 - v10;
  v12 = [objc_opt_self() generalPasteboard];
  v13 = OBJC_IVAR____TtC8Business13IMBWebURLView_navigationURL;
  swift_beginAccess();
  sub_10003C3C8(v0 + v13, v11);
  if ((*(v2 + 48))(v11, 1, v1))
  {
    sub_10000E784(v11, &unk_1000F06A0, &unk_1000B0450);
    v14 = 0;
  }

  else
  {
    (*(v2 + 16))(v6, v11, v1);
    sub_10000E784(v11, &unk_1000F06A0, &unk_1000B0450);
    sub_1000AB64C();
    (*(v2 + 8))(v6, v1);
    v14 = sub_1000AC02C();
  }

  [v12 setString:v14];
}

id sub_10007E934()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBWebURLView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IMBWebURLView()
{
  result = qword_1000F28B0;
  if (!qword_1000F28B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007EA20()
{
  sub_10007EAC0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10007EAC0()
{
  if (!qword_1000F28C0)
  {
    sub_1000AB6EC();
    v0 = sub_1000AC42C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000F28C0);
    }
  }
}

UIMenu sub_10007EBEC(uint64_t a1, void *a2)
{
  sub_100005A24(0, &qword_1000F2A00, UIAction_ptr);
  v3 = [objc_opt_self() mainBundle];
  v10._countAndFlagsBits = 0xE000000000000000;
  v13._object = 0x80000001000BC390;
  v13._countAndFlagsBits = 0xD000000000000014;
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v4.super.isa = v3;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_1000AB61C(v13, v15, v4, v17, v10);

  *(swift_allocObject() + 16) = a2;
  v5 = a2;
  v6 = sub_1000AC3EC();
  sub_100005A24(0, &qword_1000F2A08, UIMenu_ptr);
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000B04C0;
  *(v7 + 32) = v6;
  v11 = v7;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  v12.value.super.isa = 0;
  v12.is_nil = 0;
  v8.value = 0;
  return sub_1000AC37C(v14, v16, v12, v8, 0xFFFFFFFFFFFFFFFFLL, v11, 0);
}

id sub_10007ED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10007F01C;
  v16 = &unk_1000DD978;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10007F06C;
  v16 = &unk_1000DD950;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_100026FE0(a4);
  sub_100026FE0(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

id sub_10007F01C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

id sub_10007F06C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_100005A24(0, &qword_1000F29F8, UIMenuElement_ptr);
  v3 = sub_1000AC19C();

  v4 = v2(v3);

  return v4;
}

id sub_10007F0FC()
{
  v1 = sub_1000AB6EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtC8Business13IMBWebURLView_navigationURL;
  swift_beginAccess();
  sub_10003C3C8(v0 + v12, v11);
  if ((*(v2 + 48))(v11, 1, v1))
  {
    sub_10000E784(v11, &unk_1000F06A0, &unk_1000B0450);
    return 0;
  }

  else
  {
    (*(v2 + 16))(v6, v11, v1);
    sub_10000E784(v11, &unk_1000F06A0, &unk_1000B0450);
    sub_1000AB64C();
    (*(v2 + 8))(v6, v1);
    v14 = sub_1000AC02C();

    v15 = [objc_opt_self() configurationWithToolTip:v14];

    return v15;
  }
}

uint64_t sub_10007F308()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007F348(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007F374(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&unk_1000F06A0, &unk_1000B0450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_10007F3F0()
{
  sub_1000A8790();
  v1 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator);
  v2 = [objc_opt_self() mainBundle];
  v8._countAndFlagsBits = 0xE000000000000000;
  v10._countAndFlagsBits = 0x4E495F4E474953;
  v10._object = 0xE700000000000000;
  v11.value._countAndFlagsBits = 0;
  v11.value._object = 0;
  v3.super.isa = v2;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_1000AB61C(v10, v11, v3, v12, v8);

  v4 = sub_1000AC02C();

  [v1 setText:v4];

  if (*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowButton) ^ 1;
  }

  [v1 setHidden:v5 & 1];
  v6 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);

  return [v6 addSubview:v1];
}

void sub_10007F534()
{
  sub_1000A8C28();
  [*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator) setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = objc_opt_self();
  v45 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints);
  v2 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_largeLabelContainerConstraints);
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);

  isa = sub_1000AC18C().super.isa;

  [v1 deactivateConstraints:isa];

  v4 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewFirstConstraintsIconSmall);

  v5 = sub_1000AC18C().super.isa;

  [v1 deactivateConstraints:v5];

  v44 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall);
  v6 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainerFirstConstraintsIconSmall);

  v7 = sub_1000AC18C().super.isa;

  v43 = v1;
  [v1 deactivateConstraints:v7];

  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000B04B0;
  v9 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
  v10 = [v9 topAnchor];
  v11 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
  v12 = [v11 topAnchor];
  v13 = [v10 constraintGreaterThanOrEqualToAnchor:v12 constant:10.0];

  *(v8 + 32) = v13;
  v14 = [v9 bottomAnchor];
  v15 = [v11 bottomAnchor];
  v16 = [v14 constraintLessThanOrEqualToAnchor:v15 constant:-10.0];

  *(v8 + 40) = v16;
  v17 = [v9 centerYAnchor];
  v18 = [v11 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v8 + 48) = v19;
  v20 = *v44;
  *v44 = v8;

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000B04B0;
  v22 = [v9 topAnchor];
  v23 = [v11 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:10.0];

  *(v21 + 32) = v24;
  v25 = [v9 bottomAnchor];
  v26 = [v11 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-10.0];

  *(v21 + 40) = v27;
  v28 = [v9 leadingAnchor];
  v29 = v45;
  v30 = [v11 leadingAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];

  *(v21 + 48) = v31;
  v32 = *v45;
  *v45 = v21;

  if (UIApp)
  {
    v33 = [UIApp preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    if (IsAccessibilityContentSizeCategory)
    {
      LODWORD(v35) = 1144750080;
      [*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_titleLabel) setContentCompressionResistancePriority:1 forAxis:v35];
    }

    v36 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_style);
    v37 = sub_1000AC06C();
    v39 = v38;
    if (v37 == sub_1000AC06C() && v39 == v40)
    {
    }

    else
    {
      v41 = sub_1000AC7AC();

      if ((v41 & 1) == 0)
      {
        v29 = v44;
      }
    }

    v42 = *v29;

    sub_1000802BC();
    sub_10007FBD0();
    v46 = sub_1000AC18C().super.isa;

    [v43 activateConstraints:v46];
  }

  else
  {
    __break(1u);
  }
}

void sub_10007FACC()
{
  v1 = &v0[OBJC_IVAR____TtC8Business13IMBBubbleView_touch];
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 1;
  v2 = *&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_defaultColor];
  [v0 setBackgroundColor:v2];
  [*&v0[OBJC_IVAR____TtC8Business13IMBBubbleView_informationBackground] setBackgroundColor:v2];
  v3 = [*&v0[OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator] layer];
  v4 = v3;
  if (qword_1000EED80 != -1)
  {
    swift_once();
    v3 = v4;
  }

  [v3 setBackgroundColor:qword_1000FBE88];
}

id sub_10007FBD0()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImage) == 1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_style);
    v3 = sub_1000AC06C();
    v5 = v4;
    if (v3 == sub_1000AC06C() && v5 == v6)
    {
    }

    else
    {
      v8 = sub_1000AC7AC();

      if ((v8 & 1) == 0)
      {
        v10 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImageLeft);
        sub_10000413C(&unk_1000F06B0, qword_1000B0520);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1000B04D0;
        v12 = *(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageView);
        if (v10 == 1)
        {
          v13 = [v12 leadingAnchor];
          v14 = *(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
          v15 = [v14 leadingAnchor];
          v16 = [v13 constraintEqualToAnchor:v15];

          *(inited + 32) = v16;
          v17 = [v12 centerYAnchor];
          v18 = [v14 centerYAnchor];
          v19 = [v17 constraintEqualToAnchor:v18];

          *(inited + 40) = v19;
          v20 = [v12 trailingAnchor];
          v21 = *(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
          v22 = [v21 leadingAnchor];
          v23 = [v20 constraintEqualToAnchor:v22 constant:-10.0];

          *(inited + 48) = v23;
          v24 = [v21 trailingAnchor];
          v25 = [v14 trailingAnchor];
          v26 = [v24 constraintLessThanOrEqualToAnchor:v25 constant:-10.0];
        }

        else
        {
          v43 = [v12 trailingAnchor];
          v44 = *(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
          v45 = [v44 trailingAnchor];
          v46 = [v43 constraintEqualToAnchor:v45];

          *(inited + 32) = v46;
          v47 = [v12 centerYAnchor];
          v48 = [v44 centerYAnchor];
          v49 = [v47 constraintEqualToAnchor:v48];

          *(inited + 40) = v49;
          v50 = [v12 leadingAnchor];
          v51 = *(v1 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
          v52 = [v51 trailingAnchor];
          v53 = [v50 constraintEqualToAnchor:v52 constant:10.0];

          *(inited + 48) = v53;
          v24 = [v51 leadingAnchor];
          v25 = [v44 leadingAnchor];
          v26 = [v24 constraintEqualToAnchor:v25];
        }

        *(inited + 56) = v26;
        return sub_1000A50CC(inited);
      }
    }
  }

  else
  {
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_1000B04D0;
    v28 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
    v29 = [v28 trailingAnchor];
    v30 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
    v31 = [v30 trailingAnchor];
    v32 = [v29 constraintLessThanOrEqualToAnchor:v31 constant:-10.0];

    *(v27 + 32) = v32;
    v33 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageView);
    v34 = [v33 leadingAnchor];
    v35 = [v30 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    *(v27 + 40) = v36;
    v37 = [v33 trailingAnchor];
    v38 = [v28 leadingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    *(v27 + 48) = v39;
    v40 = [v28 leadingAnchor];
    v41 = [v30 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    *(v27 + 56) = v42;
    sub_1000A50CC(v27);
    result = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageViewWidthConstraint);
    if (result)
    {
      return [result setConstant:0.0];
    }
  }

  return result;
}

uint64_t sub_1000802BC()
{
  if (*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImageLeft) == 1)
  {
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B04B0;
    v2 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator);
    v3 = [v2 leadingAnchor];
    v54 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer);
    v4 = [v54 trailingAnchor];
    v5 = [v3 constraintEqualToAnchor:v4 constant:10.0];

    *(inited + 32) = v5;
    v6 = [v2 trailingAnchor];
    v7 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView);
    v8 = [v7 trailingAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];

    *(inited + 40) = v9;
    v10 = [v2 centerYAnchor];
    v11 = [v7 centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(inited + 48) = v12;
    sub_1000A50CC(inited);
    if (*(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowButton) == 1)
    {
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_1000B3780;
      v14 = [v2 widthAnchor];
      v15 = [v14 constraintGreaterThanOrEqualToConstant:65.0];

      *(v13 + 32) = v15;
      v16 = [v2 heightAnchor];
      v17 = [v16 constraintGreaterThanOrEqualToConstant:30.0];

      *(v13 + 40) = v17;
      sub_1000A50CC(v13);
      LODWORD(v18) = 1148846080;
      [v2 setContentHuggingPriority:1 forAxis:v18];
      LODWORD(v19) = 1148846080;
      [v2 setContentHuggingPriority:0 forAxis:v19];
      v20 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_style);
      v21 = sub_1000AC06C();
      v23 = v22;
      if (v21 == sub_1000AC06C() && v23 == v24)
      {
      }

      else
      {
        v43 = sub_1000AC7AC();

        if ((v43 & 1) == 0)
        {
          return result;
        }
      }

      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_1000B04B0;
      v45 = [v2 leadingAnchor];
      v46 = [v54 trailingAnchor];
      v47 = [v45 constraintEqualToAnchor:v46 constant:10.0];

      *(v44 + 32) = v47;
      v48 = [v2 trailingAnchor];
      v49 = [v7 trailingAnchor];
      v50 = [v48 constraintEqualToAnchor:v49];

      *(v44 + 40) = v50;
      v51 = [v2 centerYAnchor];
      v52 = [v7 centerYAnchor];
      v53 = [v51 constraintEqualToAnchor:v52];

      v38 = v44;
      *(v44 + 48) = v53;
    }

    else
    {
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_1000B3780;
      v34 = [v2 widthAnchor];
      v35 = [v34 constraintEqualToConstant:0.0];

      *(v33 + 32) = v35;
      v36 = [v2 heightAnchor];
      v37 = [v36 constraintEqualToConstant:0.0];

      v38 = v33;
      *(v33 + 40) = v37;
    }

    return sub_1000A50CC(v38);
  }

  v25 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_style);
  v26 = sub_1000AC06C();
  v28 = v27;
  if (v26 == sub_1000AC06C() && v28 == v29)
  {

    goto LABEL_14;
  }

  v31 = sub_1000AC7AC();

  if (v31)
  {
LABEL_14:
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_1000B04C0;
    v40 = [*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_labelContainer) trailingAnchor];
    v41 = [*(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_informationView) trailingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    v38 = v39;
    *(v39 + 32) = v42;
    return sub_1000A50CC(v38);
  }

  return result;
}

void sub_100080B0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator);
}

id sub_100080B4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBActionBubbleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100080BF0()
{
  result = qword_1000F2A70;
  if (!qword_1000F2A70)
  {
    sub_100005A24(255, &qword_1000F2A68, UITouch_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F2A70);
  }

  return result;
}

void *sub_100080C58(int a1, void *a2, void *a3)
{
  v37 = a1;
  v6 = type metadata accessor for URLHelper();
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9, v12);
  v14 = &v36[-v13];
  v15 = OBJC_IVAR____TtC8Business19IMBActionBubbleView_tapIndicator;
  *&v3[v15] = [objc_allocWithZone(type metadata accessor for IMBAuthenticationTapIndicator()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_message] = a3;
  v16 = a3;
  v17 = [v16 rootKey];
  v18 = sub_1000AC06C();
  v20 = v19;

  if (v18 == sub_1000AC06C() && v20 == v21)
  {
  }

  else
  {
    v23 = sub_1000AC7AC();

    if ((v23 & 1) == 0 && [v16 rootObject])
    {
      swift_unknownObjectRelease();
      v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid] = 0;
      v24 = (v37 & 1) == 0;
      v25 = 1;
      goto LABEL_10;
    }
  }

  v24 = 0;
  v25 = 0;
  v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid] = 1;
LABEL_10:
  v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowButton] = v24;
  v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImage] = v25;
  v26 = [v16 isFromMe];
  v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_shouldShowImageLeft] = v26 ^ 1;
  v27 = [v16 rootKey];
  if (!v27)
  {
    sub_1000AC06C();
    v27 = sub_1000AC02C();
  }

  if (v3[OBJC_IVAR____TtC8Business19IMBActionBubbleView_isInvalid])
  {
    goto LABEL_17;
  }

  v28 = sub_1000AC06C();
  v30 = v29;
  if (v28 == sub_1000AC06C() && v30 == v31)
  {

LABEL_17:
    a2 = BCBubbleViewStyleIcon;
    goto LABEL_18;
  }

  v32 = sub_1000AC7AC();

  if (v32)
  {
    goto LABEL_17;
  }

LABEL_18:
  v33 = a2;
  sub_10004EA70(v14);
  sub_10001E764(v14, v11);
  v34 = sub_10003F008(v37 & 1, v33, v11, v3);

  sub_10001E7C8(v14);
  return v34;
}

void sub_100081094()
{
  v1 = v0;
  sub_100005A24(0, &qword_1000F2AA8, BCOAuth2Request_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_1000AC02C();
  v5 = sub_1000AC02C();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_1000AC06C();
  v9 = v8;

  v17 = [objc_allocWithZone(NSMutableAttributedString) init];
  if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
  {

    v10._countAndFlagsBits = 32;
    v10._object = 0xE100000000000000;
  }

  else
  {
    v10._countAndFlagsBits = v7;
    v10._object = v9;
  }

  sub_1000AC12C(v10);

  v11 = objc_allocWithZone(NSMutableAttributedString);
  v12 = sub_1000AC02C();

  v13 = [v11 initWithString:v12];

  [v17 appendAttributedString:v13];
  v14 = *&v1[OBJC_IVAR____TtC8Business15IMBWebTitleView_titleLabel];
  [v14 setNumberOfLines:0];
  v15 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v14 setFont:v15];

  v16 = [objc_opt_self() labelColor];
  [v14 setTextColor:v16];

  [v14 setAttributedText:v17];
  [v14 setTextAlignment:1];
  [v1 addSubview:v14];
}

void sub_100081360()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Business15IMBWebTitleView_titleLabel];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = sub_10002CE60();
  v4 = objc_opt_self();
  sub_10000413C(&unk_1000F06B0, qword_1000B0520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000B04D0;
  v6 = [v2 topAnchor];
  v7 = [v1 topAnchor];
  if (v3 == 2)
  {
    v8 = [v6 constraintEqualToAnchor:v7 constant:8.0];

    *(v5 + 32) = v8;
    v9 = [v2 leadingAnchor];
    v10 = [v1 layoutMarginsGuide];
    v11 = [v10 leadingAnchor];

    v12 = [v9 constraintEqualToAnchor:v11];
    *(v5 + 40) = v12;
    v13 = [v2 trailingAnchor];
    v14 = [v1 layoutMarginsGuide];
    v15 = [v14 trailingAnchor];

    v16 = [v13 constraintEqualToAnchor:v15];
    *(v5 + 48) = v16;
    v17 = [v2 centerYAnchor];
    v18 = [v1 layoutMarginsGuide];
    v19 = [v18 centerYAnchor];
  }

  else
  {
    v20 = [v6 constraintEqualToAnchor:v7];

    *(v5 + 32) = v20;
    v21 = [v2 leadingAnchor];
    v22 = [v1 layoutMarginsGuide];
    v23 = [v22 leadingAnchor];

    v24 = [v21 constraintEqualToAnchor:v23];
    *(v5 + 40) = v24;
    v25 = [v2 trailingAnchor];
    v26 = [v1 layoutMarginsGuide];
    v27 = [v26 trailingAnchor];

    v28 = [v25 constraintEqualToAnchor:v27];
    *(v5 + 48) = v28;
    v17 = [v2 bottomAnchor];
    v19 = [v1 bottomAnchor];
  }

  v29 = [v17 constraintEqualToAnchor:v19];

  *(v5 + 56) = v29;
  sub_100005A24(0, &qword_1000EF6A8, NSLayoutConstraint_ptr);
  isa = sub_1000AC18C().super.isa;

  [v4 activateConstraints:isa];
}

id sub_1000817B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBWebTitleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100081820(uint64_t result)
{
  if (result)
  {
    v1 = result + 56;
    v2 = 1 << *(result + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(result + 56);
    v5 = (v2 + 63) >> 6;

    v6 = 0;
    v7 = &_swiftEmptyArrayStorage;
    v17 = result;
    if (v4)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= v5)
      {

        return v7;
      }

      v4 = *(v1 + 8 * v8);
      ++v6;
      if (v4)
      {
        v6 = v8;
        do
        {
LABEL_9:
          v9 = *(*(result + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
          v10 = sub_1000AC06C();
          v12 = v11;
          v13 = v9;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_10003859C(0, *(v7 + 2) + 1, 1, v7);
          }

          v15 = *(v7 + 2);
          v14 = *(v7 + 3);
          if (v15 >= v14 >> 1)
          {
            v7 = sub_10003859C((v14 > 1), v15 + 1, 1, v7);
          }

          v4 &= v4 - 1;

          *(v7 + 2) = v15 + 1;
          v16 = &v7[16 * v15];
          *(v16 + 4) = v10;
          *(v16 + 5) = v12;
          result = v17;
        }

        while (v4);
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100081990(uint64_t a1)
{
  v1 = &_swiftEmptySetSingleton;
  v33 = &_swiftEmptySetSingleton;
  v2 = *(a1 + 16);
  if (v2)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v4 = *(i - 1);
      v5 = *i;
      v6 = sub_1000AC0DC();
      v8 = v7;
      sub_1000AC06C();
      v9 = sub_1000AC0DC();
      v11 = v10;

      if (v9 == v6 && v11 == v8)
      {
        break;
      }

      v13 = sub_1000AC7AC();

      if (v13)
      {
        goto LABEL_10;
      }

      sub_1000AC06C();
      v15 = sub_1000AC0DC();
      v17 = v16;

      if (v15 == v6 && v17 == v8)
      {

LABEL_18:

        v14 = PKContactFieldName;
        goto LABEL_11;
      }

      v18 = sub_1000AC7AC();

      if (v18)
      {
        goto LABEL_18;
      }

      sub_1000AC06C();
      v19 = sub_1000AC0DC();
      v21 = v20;

      if (v19 == v6 && v21 == v8)
      {

LABEL_23:

        v14 = PKContactFieldPhoneticName;
        goto LABEL_11;
      }

      v22 = sub_1000AC7AC();

      if (v22)
      {
        goto LABEL_23;
      }

      sub_1000AC06C();
      v23 = sub_1000AC0DC();
      v25 = v24;

      if (v23 == v6 && v25 == v8)
      {

LABEL_28:

        v14 = PKContactFieldPhoneNumber;
        goto LABEL_11;
      }

      v26 = sub_1000AC7AC();

      if (v26)
      {
        goto LABEL_28;
      }

      sub_1000AC06C();
      v27 = sub_1000AC0DC();
      v29 = v28;

      if (v27 == v6 && v29 == v8)
      {
      }

      else
      {
        v30 = sub_1000AC7AC();

        if ((v30 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v14 = PKContactFieldEmailAddress;
LABEL_11:
      sub_10009F308(&v32, v14);

LABEL_12:
      if (!--v2)
      {
        return v33;
      }
    }

LABEL_10:

    v14 = PKContactFieldPostalAddress;
    goto LABEL_11;
  }

  return v1;
}

uint64_t sub_100081D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_10001E824();
  result = sub_1000AC40C();
  *a4 = result;
  return result;
}

uint64_t sub_100081D74()
{
  v0 = sub_1000ABA8C();
  sub_100081DF4(v0, qword_1000FC018);
  sub_10004212C(v0, qword_1000FC018);
  return sub_1000ABA7C();
}

uint64_t *sub_100081DF4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_100081E7C(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  type metadata accessor for PKPaymentNetwork(0);
  isa = sub_1000AC18C().super.isa;
  v5 = [v3 canMakePaymentsUsingNetworks:isa capabilities:a2];

  return v5;
}

void sub_100081EF4()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  [v3 setBackgroundColor:v5];

  v6 = *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame:{v10, v12, v14, v16}];
  [v6 setDataSource:v1];
  [v6 setDelegate:v1];
  [v6 setRowHeight:UITableViewAutomaticDimension];
  [v6 setEstimatedRowHeight:128.0];
  [v6 setSeparatorStyle:1];
  v17 = [objc_allocWithZone(UIView) init];
  [v6 setTableFooterView:v17];

  if (sub_10002CE60() >= 2u)
  {
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    v18 = qword_1000FBEF0;
  }

  else
  {
    v18 = [v4 systemGroupedBackgroundColor];
  }

  v19 = v18;
  [v6 setBackgroundColor:v18];

  sub_100082370();
  v20 = sub_10005867C();

  [v6 setInsetsContentViewsToSafeArea:!v20];
  v21 = sub_1000822D8();
  [v6 setTableHeaderView:v21];

  v22 = *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel];
  v23 = [v4 labelColor];
  [v22 setTextColor:v23];

  [v22 setTextAlignment:1];
  [v22 setHidden:1];
  [v22 setUserInteractionEnabled:0];
  v24 = [v1 view];
  if (!v24)
  {
    goto LABEL_17;
  }

  v25 = v24;
  [v24 addSubview:v6];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v27 = v26;
  [v26 addSubview:v22];

  v28 = *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarModel];

  LOBYTE(v27) = sub_10005867C();

  if (v27)
  {
    v29 = sub_10008240C();
    sub_1000931A4(v29);
  }
}

id sub_1000822D8()
{
  v1 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader;
  v2 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader);
  }

  else
  {
    v4 = (*((swift_isaMask & *v0) + 0x118))();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100082370()
{
  v1 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarModel;
  if (*(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarModel);
  }

  else
  {
    v2 = (*((swift_isaMask & *v0) + 0x120))();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_10008240C()
{
  v1 = v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarViewController);
  if (v2)
  {
    v3 = *(v1 + 8);
    v4 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarViewController);
  }

  else
  {
    v5 = v0;
    v6 = sub_100082370();
    if (sub_10002CE60() == 2)
    {
      v7 = objc_allocWithZone(type metadata accessor for MacFooterToolbarViewController());
      v8 = sub_1000A55F8(v6);
      v9 = &off_1000DDFF8;
    }

    else
    {
      v10 = objc_allocWithZone(type metadata accessor for iOSFooterToolbarViewController());
      v8 = sub_10002D06C(v6);
      v9 = &off_1000DB7A0;
    }

    ObjectType = swift_getObjectType();
    v12 = v9[3];
    v13 = swift_unknownObjectRetain();
    v12(v13, &off_1000DD9E0);
    (v9[8])(v5, ObjectType, v9);
    v14 = *v1;
    *v1 = v8;
    *(v1 + 8) = v9;
    v4 = v8;

    v2 = 0;
  }

  v15 = v2;
  return v4;
}

void sub_10008254C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView];
  p_attr = &stru_1000E5FF8.attr;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v2 topAnchor];
  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v4 constraintEqualToAnchor:v7];
  v9 = &stru_1000E5FF8.attr;
  [v8 setActive:1];

  v10 = [v2 rightAnchor];
  v11 = [v1 view];
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11;
  v13 = [v11 rightAnchor];

  v14 = [v10 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [v2 leftAnchor];
  v16 = [v1 view];
  if (!v16)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v16;
  v18 = [v16 leftAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  sub_100082370();
  LOBYTE(v19) = sub_10005867C();

  if ((v19 & 1) != 0 && (v20 = sub_10008240C(), v21 = [v20 view], v20, v21))
  {
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_10000413C(&unk_1000F06B0, qword_1000B0520);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1000B04D0;
    v23 = [v21 topAnchor];
    v24 = [v2 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    *(v22 + 32) = v25;
    v26 = [v21 leadingAnchor];
    v27 = [v1 view];
    if (!v27)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v28 = v27;
    v29 = [v27 leadingAnchor];

    v30 = [v26 constraintEqualToAnchor:v29];
    *(v22 + 40) = v30;
    v31 = [v21 trailingAnchor];
    v32 = [v1 view];
    if (!v32)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v33 = v32;
    v34 = [v32 trailingAnchor];

    v35 = [v31 constraintEqualToAnchor:v34];
    *(v22 + 48) = v35;
    v36 = [v21 bottomAnchor];
    v37 = [v1 view];
    if (!v37)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v38 = v37;
    v39 = objc_opt_self();
    v40 = [v38 bottomAnchor];

    v41 = [v36 constraintEqualToAnchor:v40];
    *(v22 + 56) = v41;
    sub_10000F840();
    v42.super.isa = sub_1000AC18C().super.isa;

    [v39 activateConstraints:v42.super.isa];

    v9 = (&stru_1000E5FF8 + 8);
    p_attr = (&stru_1000E5FF8 + 8);
  }

  else
  {
    v43 = [v2 bottomAnchor];
    v44 = [v1 view];
    if (!v44)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v45 = v44;
    v46 = [v44 bottomAnchor];

    v42.super.isa = [v43 constraintEqualToAnchor:v46];
    [(objc_class *)v42.super.isa setActive:1];
  }

  v47 = *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel];
  [v47 p_attr[286]];
  v48 = [v47 leftAnchor];
  v49 = [v1 view];
  if (!v49)
  {
    goto LABEL_20;
  }

  v50 = v49;
  v51 = [v49 layoutMarginsGuide];

  v52 = [v51 leftAnchor];
  v53 = [v48 constraintEqualToAnchor:v52];

  [v53 v9[316]];
  v54 = [v47 rightAnchor];
  v55 = [v1 view];
  if (!v55)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v56 = v55;
  v57 = [v55 layoutMarginsGuide];

  v58 = [v57 rightAnchor];
  v59 = [v54 constraintEqualToAnchor:v58];

  [v59 v9[316]];
  v60 = [v47 centerYAnchor];
  v61 = [v2 centerYAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];

  [v62 v9[316]];
}

char *sub_100082C90()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController_message);
  v2 = [v1 receivedMessage];
  if (v2 && (v3 = v2, v4 = [v2 title], v3, v4))
  {
    v5 = sub_1000AC06C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v1 receivedMessage];
  if (v8 && (v9 = v8, v10 = [v8 subtitle], v9, v10))
  {
    v11 = sub_1000AC06C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [*(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView) separatorColor];
  v15 = objc_allocWithZone(type metadata accessor for IMBTableHeaderView());
  return sub_1000906F4(v5, v7, v11, v13, v14);
}

double sub_100082DD8()
{
  type metadata accessor for FooterToolbarModel();
  v0 = swift_allocObject();
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *&result = 2;
  *(v0 + 56) = xmmword_1000B1160;
  *(v0 + 72) = 0xE000000000000000;
  return result;
}

uint64_t sub_100082ED0()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for IMBDetailedMessageTableViewController();
  objc_msgSendSuper2(&v26, "viewDidLayoutSubviews");
  v1 = sub_1000822D8();
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v27.origin.x = v3;
  v27.origin.y = v5;
  v27.size.width = v7;
  v27.size.height = v9;
  Width = CGRectGetWidth(v27);
  v11 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader;
  LODWORD(v12) = 1148846080;
  LODWORD(v13) = 1112014848;
  [*&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader] systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:UILayoutFittingCompressedSize.height verticalFittingPriority:{v12, v13}];
  [*&v0[v11] setFrame:{v3, v5, v7, v14}];
  result = sub_10002CE60();
  if (result == 2)
  {
    v16 = *&v0[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView];
    [v16 contentSize];
    v18 = v17;
    [v16 bounds];
    Height = CGRectGetHeight(v28);
    v20 = sub_100082370();
    v21 = *(v20 + 96);
    if (Height >= v18)
    {
      *(v20 + 96) = 0;
      if (v21)
      {
        v22 = *(v20 + 80);
        if (v22)
        {
          v25 = *(v20 + 88);

          v24 = 0;
          goto LABEL_9;
        }
      }
    }

    else
    {
      *(v20 + 96) = 1;
      if (!v21)
      {
        v22 = *(v20 + 80);
        if (v22)
        {
          v23 = *(v20 + 88);

          v24 = 1;
LABEL_9:
          v22(v24);

          return sub_100026FE0(v22);
        }
      }
    }
  }

  return result;
}

id sub_100083410(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView;
  *&v1[v3] = [objc_allocWithZone(UITableView) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_nothingAvailableLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___tableViewHeader] = 0;
  *&v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarModel] = 0;
  v5 = &v1[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarViewController];
  v6 = type metadata accessor for IMBDetailedMessageTableViewController();
  *v5 = 0;
  *(v5 + 1) = 0;
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

void sub_100083524()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarModel);

  v2 = *(v0 + OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController____lazy_storage___footerToolbarViewController);
}

id sub_100083594()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBDetailedMessageTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000836E0()
{
  v1 = v0 + OBJC_IVAR____TtC8Business32IMBDetailedMessageViewController__dismissalDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 16);
      v6 = type metadata accessor for IMBDetailedMessageTableViewController();
      v5(v0, v6, ObjectType, v3);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t URL.displayDomainString.getter()
{
  v0 = sub_1000AB5AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB64C();
  v6 = objc_allocWithZone(NSURL);
  v7 = sub_1000AC02C();

  v8 = [v6 initWithString:v7];

  if (!v8)
  {
    return 0;
  }

  v9 = [v8 safari_userVisibleStringConsideringLongURLs];
  if (!v9)
  {
    sub_1000AC06C();
    v9 = sub_1000AC02C();
  }

  v10 = [v9 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];

  v11 = sub_1000AC06C();
  v13 = v12;

  v16[0] = v11;
  v16[1] = v13;
  sub_1000AB58C();
  sub_10002BD70();
  v14 = sub_1000AC43C();

  (*(v1 + 8))(v5, v0);

  return v14;
}

id sub_100083984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC8Business21IMBImageTableViewCell_largeImageView;
  *&v3[v6] = [objc_allocWithZone(UIImageView) init];
  if (a3)
  {
    v7 = sub_1000AC02C();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for IMBImageTableViewCell();
  v8 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = v8;
  sub_100083B54();
  sub_100083CD8();

  return v9;
}

id sub_100083A98(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business21IMBImageTableViewCell_largeImageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for IMBImageTableViewCell();
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_100083B54();
    sub_100083CD8();
  }

  return v5;
}

void sub_100083B54()
{
  if (sub_10002CE60() == 2)
  {
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    [v0 setBackgroundColor:qword_1000FBEF0];
  }

  [v0 setBounds:{0.0, 0.0, 350.0, 10000.0}];
  [v0 setSelectionStyle:0];
  v1 = *&v0[OBJC_IVAR____TtC8Business21IMBImageTableViewCell_largeImageView];
  v2 = [v1 layer];
  [v2 setMasksToBounds:1];

  v3 = [v1 layer];
  [v3 setCornerRadius:8.0];

  [v1 setContentMode:2];
  v4 = [v0 contentView];
  [v4 addSubview:v1];
}

void sub_100083CD8()
{
  v1 = *&v0[OBJC_IVAR____TtC8Business21IMBImageTableViewCell_largeImageView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 topAnchor];
  v3 = [v0 contentView];
  v4 = [v3 topAnchor];

  v5 = sub_10002CE60();
  v6 = 20.0;
  if (v5 == 2)
  {
    v6 = 10.0;
  }

  v7 = [v2 constraintEqualToAnchor:v4 constant:v6];

  [v7 setActive:1];
  v8 = [v1 leftAnchor];
  v9 = [v0 contentView];
  v10 = [v9 layoutMarginsGuide];

  v11 = [v10 leftAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];

  [v12 setActive:1];
  v13 = [v1 rightAnchor];
  v14 = [v0 contentView];
  v15 = [v14 layoutMarginsGuide];

  v16 = [v15 rightAnchor];
  v17 = [v13 constraintEqualToAnchor:v16];

  [v17 setActive:1];
  v18 = [v1 bottomAnchor];
  v19 = [v0 contentView];
  v20 = [v19 bottomAnchor];

  v21 = sub_10002CE60();
  v22 = -20.0;
  if (v21 == 2)
  {
    v22 = -10.0;
  }

  v23 = [v18 constraintEqualToAnchor:v20 constant:v22];

  [v23 setActive:1];
}

id sub_100083FDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBImageTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100084044()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_100084118()
{
  v1 = *(v0 + 40);
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

  v2 = *(v0 + 16);
  if (v1 >= *(v2 + 16))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    result = sub_1000AC7EC();
    __break(1u);
  }

  else
  {
    v3 = v2 + 32 * v1;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v50 = &type metadata for String;
    *&v49 = v4;
    *(&v49 + 1) = v5;
    sub_100006910(&v49, v48);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v48, 0xD000000000000012, 0x80000001000BC8C0, isUniquelyReferenced_nonNull_native);
    v50 = &type metadata for Int;
    *&v49 = v1;
    sub_100006910(&v49, v48);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v48, 0x64657463656C6573, 0xED00007865646E49, v7);
    v47 = *(v2 + 16);
    if (v47)
    {
      v8 = 0;
      v9 = (v2 + 56);
      v10 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v8 >= *(v2 + 16))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v11 = v2;
        v12 = *(v9 - 1);
        v13 = *v9;
        v14 = *(v9 - 3);
        v15 = *(v9 - 2);
        v50 = &type metadata for String;
        *&v49 = v14;
        *(&v49 + 1) = v15;
        sub_100006910(&v49, v48);
        swift_bridgeObjectRetain_n();

        v16 = swift_isUniquelyReferenced_nonNull_native();
        v17 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265);
        v19 = _swiftEmptyDictionarySingleton[2];
        v20 = (v18 & 1) == 0;
        v21 = __OFADD__(v19, v20);
        v22 = v19 + v20;
        if (v21)
        {
          goto LABEL_35;
        }

        v23 = v18;
        if (_swiftEmptyDictionarySingleton[3] < v22)
        {
          break;
        }

        if (v16)
        {
          goto LABEL_11;
        }

        v26 = v17;
        sub_10003A9B0();
        v17 = v26;
        if (v23)
        {
LABEL_12:
          v25 = (_swiftEmptyDictionarySingleton[7] + 32 * v17);
          sub_10000E738(v25);
          sub_100006910(v48, v25);
          goto LABEL_16;
        }

LABEL_14:
        _swiftEmptyDictionarySingleton[(v17 >> 6) + 8] |= 1 << v17;
        v27 = (_swiftEmptyDictionarySingleton[6] + 16 * v17);
        *v27 = 0x696669746E656469;
        v27[1] = 0xEA00000000007265;
        sub_100006910(v48, (_swiftEmptyDictionarySingleton[7] + 32 * v17));
        v28 = _swiftEmptyDictionarySingleton[2];
        v21 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v21)
        {
          goto LABEL_37;
        }

        _swiftEmptyDictionarySingleton[2] = v29;
LABEL_16:
        v50 = &type metadata for String;
        *&v49 = v12;
        *(&v49 + 1) = v13;
        sub_100006910(&v49, v48);

        v30 = swift_isUniquelyReferenced_nonNull_native();
        v31 = sub_10004F0CC(0x656C746974, 0xE500000000000000);
        v33 = _swiftEmptyDictionarySingleton[2];
        v34 = (v32 & 1) == 0;
        v21 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v21)
        {
          goto LABEL_36;
        }

        v36 = v32;
        if (_swiftEmptyDictionarySingleton[3] < v35)
        {
          sub_100038E6C(v35, v30);
          v31 = sub_10004F0CC(0x656C746974, 0xE500000000000000);
          if ((v36 & 1) != (v37 & 1))
          {
            goto LABEL_41;
          }

LABEL_21:
          if (v36)
          {
            goto LABEL_22;
          }

          goto LABEL_24;
        }

        if (v30)
        {
          goto LABEL_21;
        }

        v39 = v31;
        sub_10003A9B0();
        v31 = v39;
        if (v36)
        {
LABEL_22:
          v38 = (_swiftEmptyDictionarySingleton[7] + 32 * v31);
          sub_10000E738(v38);
          sub_100006910(v48, v38);

          goto LABEL_26;
        }

LABEL_24:
        _swiftEmptyDictionarySingleton[(v31 >> 6) + 8] |= 1 << v31;
        v40 = (_swiftEmptyDictionarySingleton[6] + 16 * v31);
        *v40 = 0x656C746974;
        v40[1] = 0xE500000000000000;
        sub_100006910(v48, (_swiftEmptyDictionarySingleton[7] + 32 * v31));

        v41 = _swiftEmptyDictionarySingleton[2];
        v21 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v21)
        {
          goto LABEL_38;
        }

        _swiftEmptyDictionarySingleton[2] = v42;
LABEL_26:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000387AC(0, v10[2] + 1, 1, v10);
        }

        v44 = v10[2];
        v43 = v10[3];
        if (v44 >= v43 >> 1)
        {
          v10 = sub_1000387AC((v43 > 1), v44 + 1, 1, v10);
        }

        ++v8;
        v10[2] = v44 + 1;
        v10[v44 + 4] = _swiftEmptyDictionarySingleton;
        v9 += 4;
        v2 = v11;
        if (v47 == v8)
        {
          goto LABEL_33;
        }
      }

      sub_100038E6C(v22, v16);
      v17 = sub_10004F0CC(0x696669746E656469, 0xEA00000000007265);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_41;
      }

LABEL_11:
      if (v23)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_33:
    v50 = sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
    *&v49 = v10;
    sub_100006910(&v49, v48);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v48, 0x736D657469, 0xE500000000000000, v45);
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100084660(char a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v11 = type metadata accessor for URLHelper();
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v26 - v18;
  v5[OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_bubbleState] = 1;
  v20 = &v5[OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model];
  *v20 = a3;
  v20[1] = a4;
  v20[2] = a5;

  v21 = a5;
  v22 = a3;
  sub_10004EA70(v19);
  sub_10001E764(v19, v16);
  v23 = sub_10003F008(a1 & 1, a2, v16, v5);
  sub_10001E7C8(v19);
  v24 = v23;
  sub_100084820();
  sub_100084964();

  return v24;
}

void sub_100084820()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model + 8);
  v2 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model + 16);
  v3 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_bubbleState);
  v4 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model);
  v5 = v2;

  v6 = sub_10005ED9C(v3, v4, v1);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title);
  v14 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_title + 8);
  *v13 = v6;
  v13[1] = v8;

  sub_1000A9FF0();
  v15 = (v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle);
  v16 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_subtitle + 8);
  *v15 = v10;
  v15[1] = v12;

  v17 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_subtitleLabel);
  if (v12)
  {

    v18 = sub_1000AC02C();
  }

  else
  {
    v18 = 0;
  }

  [v17 setText:v18];
}

void sub_100084964()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model + 8);
  v2 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model + 16);
  v3 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_bubbleState);
  v4 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model);
  v5 = v2;

  v6 = sub_10005EF88(v3, v4);
  v8 = v7;

  v9 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_image);
  *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_image) = v6;
  v10 = v6;

  sub_1000AA2B0();
  v11 = *(v0 + OBJC_IVAR____TtC8Business13IMBBubbleView_imageView);
  if (v8)
  {
    v12 = sub_1000AC02C();
  }

  else
  {
    v12 = 0;
  }

  [v11 setAccessibilityLabel:v12];
}

uint64_t sub_100084A8C()
{
  v1 = v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model;
  v3 = *(v0 + OBJC_IVAR____TtC8Business22IMBJITAppKitBubbleView_model);
  v2 = *(v1 + 8);
}

id sub_100084AD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBJITAppKitBubbleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100084B84(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100084BFC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_100084D38(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_100084F48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_1000ABF0C();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v26 - v9;
  sub_1000041E8(&qword_1000F2E08, &qword_1000B4938);
  v11 = sub_1000ABC7C();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v26 - v19;
  v28 = v4;
  v29 = v5;
  v30 = v2;
  sub_1000ABD1C();
  sub_1000ABEFC();
  v33 = *(v2 + *(a1 + 36));

  sub_1000ABD9C();
  WitnessTable = swift_getWitnessTable();
  sub_1000ABE3C();

  (*(v26 + 8))(v10, v6);
  v22 = sub_100085320();
  v31 = WitnessTable;
  v32 = v22;
  swift_getWitnessTable();
  v23 = v12[2];
  v23(v20, v17, v11);
  v24 = v12[1];
  v24(v17, v11);
  v23(v27, v20, v11);
  return (v24)(v20, v11);
}

uint64_t sub_10008521C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1, a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

unint64_t sub_100085320()
{
  result = qword_1000F2E10;
  if (!qword_1000F2E10)
  {
    sub_1000041E8(&qword_1000F2E08, &qword_1000B4938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000F2E10);
  }

  return result;
}

uint64_t sub_100085384(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1000ABF0C();
  sub_1000041E8(&qword_1000F2E08, &qword_1000B4938);
  sub_1000ABC7C();
  swift_getWitnessTable();
  sub_100085320();
  return swift_getWitnessTable();
}

id sub_100085428()
{
  result = [objc_allocWithZone(BCLogger) init];
  qword_1000FC030 = result;
  return result;
}

id sub_10008545C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_leftLabel;
  *&v3[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_rightLabel;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  if (a3)
  {
    v8 = sub_1000AC02C();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for IMBInfoTableViewCell();
  v9 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  sub_100085674();
  sub_10008592C();

  return v10;
}

id sub_100085594(void *a1)
{
  v3 = OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_leftLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_rightLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for IMBInfoTableViewCell();
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_100085674();
    sub_10008592C();
  }

  return v6;
}

void sub_100085674()
{
  if (sub_10002CE60() == 2)
  {
    if (qword_1000EEDC0 != -1)
    {
      swift_once();
    }

    [v0 setBackgroundColor:qword_1000FBEF0];
    v1 = [v0 contentView];
    [v1 setDirectionalLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
  }

  [v0 setBounds:{0.0, 0.0, 350.0, 10000.0}];
  [v0 setSelectionStyle:0];
  v2 = *&v0[OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_leftLabel];
  v3 = sub_10002CE60();
  v4 = objc_opt_self();
  if (v3 == 2)
  {
    v5 = &selRef_secondaryLabelColor;
  }

  else
  {
    v5 = &selRef_labelColor;
  }

  v6 = [v4 *v5];
  [v2 setTextColor:v6];

  if (qword_1000EEEA0 != -1)
  {
    swift_once();
  }

  v7 = qword_1000F2E18;
  [v2 setFont:qword_1000F2E18];
  [v2 setNumberOfLines:0];
  v8 = *&v0[OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_rightLabel];
  v9 = sub_10002CE60();
  v10 = objc_opt_self();
  if (v9 == 2)
  {
    v11 = &selRef_labelColor;
  }

  else
  {
    v11 = &selRef_secondaryLabelColor;
  }

  v12 = [v10 *v11];
  [v8 setTextColor:v12];

  [v8 setFont:v7];
  [v8 setNumberOfLines:0];
  v13 = [v0 contentView];
  [v13 addSubview:v2];

  v14 = [v0 contentView];
  [v14 addSubview:v8];
}

id sub_10008592C()
{
  result = UIApp;
  if (UIApp)
  {
    v2 = [UIApp preferredContentSizeCategory];
    IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

    v4 = *&v0[OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_leftLabel];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *&v0[OBJC_IVAR____TtC8Business20IMBInfoTableViewCell_rightLabel];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    p_attr = &stru_1000E5FF8.attr;
    v7 = &stru_1000E5FF8.attr;
    if (IsAccessibilityContentSizeCategory)
    {
      v8 = [v4 topAnchor];
      v9 = [v0 contentView];
      v10 = [v9 topAnchor];

      v11 = sub_10002CE60();
      v12 = 20.0;
      if (v11 == 2)
      {
        v12 = 10.0;
      }

      v13 = [v8 constraintEqualToAnchor:v10 constant:v12];

      [v13 setActive:1];
      v14 = [v4 leadingAnchor];
      v15 = [v0 contentView];
      v16 = [v15 layoutMarginsGuide];

      v17 = [v16 leadingAnchor];
      v18 = [v14 constraintEqualToAnchor:v17];

      [v18 setActive:1];
      v19 = [v4 trailingAnchor];
      v20 = [v0 contentView];
      v21 = [v20 layoutMarginsGuide];

      v22 = [v21 trailingAnchor];
      v23 = [v19 constraintEqualToAnchor:v22];

      [v23 setActive:1];
      v24 = [v5 firstBaselineAnchor];
      v25 = [v4 lastBaselineAnchor];
      v26 = [v24 constraintEqualToSystemSpacingBelowAnchor:v25 multiplier:1.0];

      [v26 setActive:1];
      v27 = [v5 leadingAnchor];
      v28 = [v0 contentView];
      v29 = [v28 layoutMarginsGuide];

      v7 = (&stru_1000E5FF8 + 8);
      v30 = [v29 leadingAnchor];

      p_attr = (&stru_1000E5FF8 + 8);
      v31 = [v27 constraintEqualToAnchor:v30];
      v32 = 0;
    }

    else
    {
      v33 = [v4 leadingAnchor];
      v34 = [v0 contentView];
      v35 = [v34 layoutMarginsGuide];

      v36 = [v35 leadingAnchor];
      v37 = [v33 constraintEqualToAnchor:v36];

      [v37 setActive:1];
      v38 = [v4 trailingAnchor];
      v39 = [v5 leadingAnchor];
      v40 = [v38 constraintEqualToAnchor:v39 constant:-8.0];

      [v40 setActive:1];
      v41 = [v4 topAnchor];
      v42 = [v0 contentView];
      v43 = [v42 topAnchor];

      if (sub_10002CE60() == 2)
      {
        v44 = 10.0;
      }

      else
      {
        v44 = 20.0;
      }

      v45 = [v41 constraintEqualToAnchor:v43 constant:v44];

      [v45 setActive:1];
      LODWORD(v46) = 1148846080;
      [v4 setContentCompressionResistancePriority:0 forAxis:v46];
      v27 = [v5 topAnchor];
      v47 = [v0 contentView];
      v30 = [v47 topAnchor];

      if (sub_10002CE60() == 2)
      {
        v48 = 10.0;
      }

      else
      {
        v48 = 20.0;
      }

      v31 = [v27 constraintEqualToAnchor:v30 constant:v48];
      v32 = 2;
    }

    v49 = v31;

    [v49 setActive:1];
    v50 = [v5 trailingAnchor];
    v51 = [v0 p_attr[339]];
    v52 = [v51 layoutMarginsGuide];

    v53 = [v52 trailingAnchor];
    v54 = [v50 constraintEqualToAnchor:v53];

    [v54 setActive:1];
    v55 = [v5 bottomAnchor];
    v56 = [v0 p_attr[339]];
    v57 = [v56 bottomAnchor];

    v58 = sub_10002CE60();
    v59 = -20.0;
    if (v58 == 2)
    {
      v59 = -10.0;
    }

    v60 = [v55 v7[300]];

    [v60 setActive:1];

    return [v5 setTextAlignment:v32];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000860B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IMBInfoTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100086158()
{
  if (sub_10002CE60() == 2)
  {
    v0 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    v1 = [objc_opt_self() systemFontOfSize:13.0];
    v2 = [v0 scaledFontForFont:v1];
  }

  else
  {
    v2 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  }

  qword_1000F2E18 = v2;
}

Swift::String __swiftcall String.sha256()()
{
  v0 = sub_1000AC0BC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AC0AC();
  v6 = sub_1000AC07C();
  v8 = v7;
  (*(v1 + 8))(v5, v0);
  if (v8 >> 60 == 15)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    isa = sub_1000AB72C().super.isa;
    v12 = sub_1000864A0(isa);

    sub_100086570(v12);
    v13 = sub_1000AC0FC();
    v15 = v14;

    sub_10000E950(v6, v8);
    v10 = v15;
    v9 = v13;
  }

  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1000863A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10002BD70();
    sub_1000AC44C();
    v2 = sub_1000AC44C();

    return v2;
  }

  return result;
}

unint64_t sub_1000864A0(void *a1)
{
  v2 = sub_1000AC1CC();
  *(v2 + 16) = 32;
  *(v2 + 32) = 0u;
  v3 = (v2 + 32);
  *(v2 + 48) = 0u;
  v4 = [a1 bytes];
  result = [a1 length];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    CC_SHA256(v4, result, v3);
    v6 = [objc_allocWithZone(NSData) initWithBytes:v3 length:32];

    return v6;
  }

  __break(1u);
  return result;
}

size_t sub_100086570(void *a1)
{
  result = [a1 length];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v3 = result;
      v4 = sub_1000AC1CC();
      v4[2] = v3;
      bzero(v4 + 4, v3);
    }

    else
    {
      v4 = _swiftEmptyArrayStorage;
    }

    [a1 getBytes:v4 + 4 length:{objc_msgSend(a1, "length")}];
    v5 = v4[2];
    if (v5)
    {
      v6 = 32;
      do
      {
        v7 = *(v4 + v6);
        sub_10000413C(&qword_1000F0060, &unk_1000B0470);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1000AF0E0;
        *(v8 + 56) = &type metadata for UInt8;
        *(v8 + 64) = &protocol witness table for UInt8;
        *(v8 + 32) = v7;
        v9._countAndFlagsBits = sub_1000AC09C();
        sub_1000AC12C(v9);

        ++v6;
        --v5;
      }

      while (v5);

      return 0;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1000866E4(void *a1)
{
  v2 = v1;
  v4 = sub_10000413C(&qword_1000F2E58, &qword_1000B4958);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v40 - v11;
  v13 = sub_1000AB6EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 _data];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1000AB73C();
    v23 = v22;

    v24.super.isa = sub_1000AB72C().super.isa;
    sub_10000E964(v21, v23);
  }

  else
  {
    v24.super.isa = 0;
  }

  v25 = [a1 URL];
  if (v25)
  {
    v26 = v25;
    sub_1000AB6AC();

    sub_1000AB67C(v27);
    v29 = v28;
    (*(v14 + 8))(v18, v13);
  }

  else
  {
    v29 = 0;
  }

  v30 = [a1 session];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 identifier];

    if (v32)
    {
      sub_1000AB80C();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v36 = sub_1000AB81C();
    v37 = *(v36 - 8);
    (*(v37 + 56))(v9, v33, 1, v36);
    sub_100086A7C(v9, v12);
    isa = 0;
    if ((*(v37 + 48))(v12, 1, v36) != 1)
    {
      isa = sub_1000AB7FC().super.isa;
      (*(v37 + 8))(v12, v36);
    }
  }

  else
  {
    v34 = sub_1000AB81C();
    (*(*(v34 - 8) + 56))(v12, 1, 1, v34);
    isa = 0;
  }

  v38 = [objc_allocWithZone(v2) initWithData:v24.super.isa url:v29 sessionIdentifier:isa isFromMe:{objc_msgSend(a1, "isFromMe")}];

  return v38;
}

uint64_t sub_100086A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000413C(&qword_1000F2E58, &qword_1000B4958);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100086AEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!*(a1 + 16) || (v6 = sub_10004F0CC(0x736E6F6974636573, 0xE800000000000000), (v7 & 1) == 0))
  {

LABEL_25:

    if (qword_1000EEE80 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_26;
  }

  sub_1000068B4(*(a1 + 56) + 32 * v6, v42);

  sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v8 = *&v40[0];
  v41 = _swiftEmptyArrayStorage;
  v9 = *(*&v40[0] + 16);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        swift_once();
LABEL_26:
        sub_1000AC2AC();
        sub_1000ABA5C();
        type metadata accessor for IMBListRequest();
        swift_deallocPartialClassInstance();
        return 0;
      }

      v11 = *(v8 + 8 * v10 + 32);
      v12 = v11[2];

      if (!v12)
      {
        break;
      }

      v13 = sub_10004F0CC(0xD000000000000011, 0x80000001000B9DC0);
      if ((v14 & 1) == 0)
      {
        break;
      }

      sub_1000068B4(v11[7] + 32 * v13, v42);
      if (!swift_dynamicCast())
      {
        break;
      }

LABEL_20:
      type metadata accessor for IMBListSection();
      swift_allocObject();

      sub_100056694(v11, a2);

      sub_1000AC17C();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000AC1BC();
      }

      ++v10;
      sub_1000AC1DC();

      v29 = v41;

      v41 = v29;
      if (v9 == v10)
      {

        goto LABEL_29;
      }
    }

    v43 = &type metadata for Bool;
    LOBYTE(v42[0]) = 0;
    sub_100006910(v42, v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v11;
    v16 = sub_10004F0CC(0xD000000000000011, 0x80000001000B9DC0);
    v18 = v11[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_43;
    }

    v22 = v17;
    if (v11[3] >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = v16;
        sub_10003A9B0();
        v16 = v25;
        v11 = v39;
        if ((v22 & 1) == 0)
        {
LABEL_18:
          v11[(v16 >> 6) + 8] |= 1 << v16;
          v26 = (v11[6] + 16 * v16);
          *v26 = 0xD000000000000011;
          v26[1] = 0x80000001000B9DC0;
          sub_100006910(v40, (v11[7] + 32 * v16));
          v27 = v11[2];
          v20 = __OFADD__(v27, 1);
          v28 = v27 + 1;
          if (v20)
          {
            goto LABEL_45;
          }

          v11[2] = v28;
          goto LABEL_20;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_100038E6C(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_10004F0CC(0xD000000000000011, 0x80000001000B9DC0);
      if ((v22 & 1) != (v23 & 1))
      {
        sub_1000AC7EC();
        __break(1u);

        type metadata accessor for IMBListRequest();
        result = swift_deallocPartialClassInstance();
        __break(1u);
        return result;
      }
    }

    if ((v22 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    v24 = (v11[7] + 32 * v16);
    sub_10000E738(v24);
    sub_100006910(v40, v24);
    goto LABEL_20;
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_29:
  if (v29 >> 62)
  {
    v31 = sub_1000AC65C();
    if (v31)
    {
      goto LABEL_31;
    }

LABEL_48:
    if (v29 >> 62)
    {
      v36 = sub_1000AC65C();
    }

    else
    {
      v36 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = v36 > 1;
    goto LABEL_52;
  }

  v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_48;
  }

LABEL_31:
  v32 = 0;
  while ((v29 & 0xC000000000000001) != 0)
  {
    v33 = sub_1000AC5AC();
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_40;
    }

LABEL_35:
    if (*(v33 + 48))
    {
      goto LABEL_41;
    }

    ++v32;
    if (v34 == v31)
    {
      goto LABEL_48;
    }
  }

  if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_44;
  }

  v33 = *(v29 + 8 * v32 + 32);

  v34 = v32 + 1;
  if (!__OFADD__(v32, 1))
  {
    goto LABEL_35;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  v35 = 1;
LABEL_52:
  *(v3 + 16) = v35;

  v42[0] = sub_100087E54(v37, sub_1000A4D28, sub_1000A7528);
  sub_100087444(v42);

  *(v3 + 24) = v42[0];

  return v3;
}

void sub_1000870EC()
{
  v1 = *(v0 + 24);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    v4 = _swiftEmptyArrayStorage;
LABEL_18:
    v14 = sub_10000413C(&unk_1000F0240, &qword_1000B05A0);
    *&v13 = v4;
    sub_100006910(&v13, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003A3E8(v12, 0x736E6F6974636573, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    return;
  }

  if (v1 < 0)
  {
    v10 = *(v0 + 24);
  }

  v2 = sub_1000AC65C();
  if (!v2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        sub_1000AC5AC();
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      sub_100056B64();
      v7 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1000387AC(0, v4[2] + 1, 1, v4);
      }

      v9 = v4[2];
      v8 = v4[3];
      if (v9 >= v8 >> 1)
      {
        v4 = sub_1000387AC((v8 > 1), v9 + 1, 1, v4);
      }

      ++v3;

      v4[2] = v9 + 1;
      v4[v9 + 4] = v7;
    }

    while (v2 != v3);
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_100087298()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1000872F4()
{
  sub_1000AC58C(29);

  if (*(v0 + 16))
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_1000AC12C(v1);

  v5._countAndFlagsBits = 0xD00000000000001BLL;
  v5._object = 0x80000001000BC9E0;
  sub_1000AC12C(v5);

  v3 = *(v0 + 24);
  type metadata accessor for IMBListSection();
  v6._countAndFlagsBits = sub_1000AC1AC();
  sub_1000AC12C(v6);

  v7._countAndFlagsBits = 0x6E6F697463657320;
  v7._object = 0xEB00000000203A73;
  sub_1000AC12C(v7);

  return 0;
}

uint64_t sub_100087444(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000A4D24(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000874C0(v6);
  return sub_1000AC5FC();
}

Swift::Int sub_1000874C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000AC77C(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IMBListSection();
        v6 = sub_1000AC1CC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100087630(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000875C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000875C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + 32) >= *(*v9 + 32))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100087630(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1000A2CCC(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_100087BA0((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000A2CCC(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_1000A2C40(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 32);
      v13 = *(*(*a3 + 8 * v11) + 32);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 32);
        v17 = (v12 < v13) ^ (v16 >= v15);
        ++v14;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v9 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000386A8(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_1000386A8((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_100087BA0((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000A2CCC(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_1000A2C40(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(v27 + 32) >= *(*v29 + 32))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_100087BA0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 32) < *(*v4 + 32))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 32) < *(*v17 + 32))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *sub_100087E54(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = sub_1000AC65C();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100087F0C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  return v1;
}

uint64_t (*sub_100087F80())()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1000897AC;
}

uint64_t sub_100088038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  *a2 = v5;
  return result;
}

uint64_t sub_1000880B8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000ABC3C();
}

uint64_t sub_10008812C()
{
  v1 = OBJC_IVAR____TtCCV8Business34NotificationOptionsMacCatalystView9ViewModel6Option__label;
  v2 = sub_10000413C(&qword_1000F3230, &qword_1000B4CE8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCCV8Business34NotificationOptionsMacCatalystView9ViewModel6Option__enabled;
  v4 = sub_10000413C(&qword_1000F2250, &qword_1000B4CF0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCCV8Business34NotificationOptionsMacCatalystView9ViewModel6Option__onSelect;
  v6 = sub_10000413C(&qword_1000F3238, &qword_1000B4CF8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10008826C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for NotificationOptionsMacCatalystView.ViewModel.Option(0);
  result = sub_1000AC59C();
  *a1 = result;
  return result;
}

uint64_t sub_1000882B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NotificationOptionsMacCatalystView.ViewModel.Option(0);
  result = sub_1000ABBFC();
  *a1 = result;
  return result;
}

uint64_t sub_100088304()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  return v1;
}

uint64_t sub_100088370()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  return v1;
}

uint64_t sub_1000883E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_100088460(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000ABC3C();
}

uint64_t sub_1000884E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  *a2 = v5;
  return result;
}

uint64_t sub_100088560(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1000ABC3C();
}

uint64_t sub_1000885DC()
{
  v1 = OBJC_IVAR____TtCV8Business34NotificationOptionsMacCatalystView9ViewModel__label;
  v2 = sub_10000413C(&qword_1000F3230, &qword_1000B4CE8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV8Business34NotificationOptionsMacCatalystView9ViewModel__options;
  v4 = sub_10000413C(&qword_1000F3240, &qword_1000B4D00);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1000886F8()
{
  sub_10008894C(319, &qword_1000F2F60);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100088998(319, &qword_1000F2F68, &unk_1000F2F70, &qword_1000B49C0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100088810()
{
  sub_10008894C(319, &qword_1000F2F60);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10008894C(319, &qword_1000F2730);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100088998(319, &qword_1000F30A8, &unk_1000F30B0, &qword_1000B49D0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10008894C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000ABC4C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_100088998(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000041E8(a3, a4);
    v5 = sub_1000ABC4C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000889EC(uint64_t a1, int a2)
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

uint64_t sub_100088A34(uint64_t result, int a2, int a3)
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

uint64_t sub_100088A9C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NotificationOptionsMacCatalystView.ViewModel(0);
  result = sub_1000ABBFC();
  *a1 = result;
  return result;
}

__n128 sub_100088ADC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000413C(&qword_1000F31D0, &qword_1000B4B20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v16[-v10];
  v19 = a1;
  v20 = a2;
  v17 = a1;
  v18 = a2;
  sub_10000413C(&qword_1000F31D8, &qword_1000B4B28);
  sub_1000891E4();
  sub_1000ABDEC();
  sub_1000ABF2C();
  sub_1000ABC8C();
  (*(v7 + 32))(a3, v11, v6);
  v12 = a3 + *(sub_10000413C(&qword_1000F3218, &qword_1000B4B48) + 36);
  v13 = v26;
  *(v12 + 64) = v25;
  *(v12 + 80) = v13;
  *(v12 + 96) = v27;
  v14 = v22;
  *v12 = v21;
  *(v12 + 16) = v14;
  result = v24;
  *(v12 + 32) = v23;
  *(v12 + 48) = result;
  return result;
}

uint64_t sub_100088CB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  sub_10000413C(&unk_1000F2F70, &qword_1000B49C0);
  sub_10000413C(&qword_1000F31F0, &qword_1000B4B30);
  sub_10002C5BC(&qword_1000F3220, &unk_1000F2F70, &qword_1000B49C0);
  sub_100089268();
  sub_1000893B4();
  return sub_1000ABF1C();
}

uint64_t sub_100088DEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;

  sub_1000ABEEC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = (v8 & 1) == 0;
  result = sub_10000413C(&qword_1000F31F0, &qword_1000B4B30);
  v7 = (a2 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = sub_100089618;
  v7[2] = v5;
  return result;
}

uint64_t sub_100088F20()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  if (v1)
  {
    v1(result);
    return sub_100026FE0(v1);
  }

  return result;
}

uint64_t sub_100088FB4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  sub_10002BD70();
  result = sub_1000ABE0C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10008905C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000ABC2C();

  sub_10002BD70();
  v2 = sub_1000ABE0C();
  v4 = v3;
  v6 = v5;
  if (qword_1000EEDF8 != -1)
  {
    swift_once();
  }

  v7 = qword_1000FBF28;
  sub_1000ABDDC();
  v8 = sub_1000ABDFC();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_10008939C(v2, v4, v6 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_1000891D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100088CB4();
}

uint64_t sub_1000891DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10008905C(a1);
}