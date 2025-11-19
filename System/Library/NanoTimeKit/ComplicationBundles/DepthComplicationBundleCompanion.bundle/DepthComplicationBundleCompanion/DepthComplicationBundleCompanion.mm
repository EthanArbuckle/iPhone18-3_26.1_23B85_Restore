char *sub_1A68(void *a1)
{
  v3 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthValueLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthUnitLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_numberOfDivesLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeUnitLabel;
  *&v1[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeValueLabel;
  *&v1[v8] = [objc_allocWithZone(UILabel) init];
  type metadata accessor for DepthComplicationMetrics(0);
  swift_storeEnumTagMultiPayload();
  v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_alwaysOn] = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_device] = a1;
  v9 = objc_allocWithZone(CLKDeviceMetrics);
  v89 = a1;
  v10 = [v9 initWithDevice:? identitySizeClass:?];
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_deviceMetrics] = v10;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v95.receiver = v1;
  v95.super_class = type metadata accessor for DepthRectangularSimpleHistoryView();
  v14 = objc_msgSendSuper2(&v95, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  [v14 setClipsToBounds:1];
  sub_3828(&qword_47868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_366A0;
  v94 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthLabel;
  v16 = *(v14 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthLabel);
  *(inited + 32) = v16;
  v93 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthUnitLabel;
  v17 = *(v14 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthUnitLabel);
  *(inited + 40) = v17;
  v92 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_numberOfDivesLabel;
  v18 = *(v14 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_numberOfDivesLabel);
  *(inited + 48) = v18;
  v91 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeUnitLabel;
  v19 = *(v14 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeUnitLabel);
  *(inited + 56) = v19;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = 0;
  p_cache = &OBJC_METACLASS____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView.cache;
  do
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v26 = sub_356C8();
    }

    else
    {
      if (v24 >= *(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_43;
      }

      v26 = *(inited + 8 * v24 + 32);
    }

    v27 = v26;
    if (qword_476F0 != -1)
    {
      swift_once();
    }

    ++v24;
    [v27 setFont:qword_48F70];
    v28 = [objc_opt_self() grayColor];
    [v27 setTextColor:v28];
  }

  while (v24 != 4);
  swift_setDeallocating();
  swift_arrayDestroy();
  p_cache = v94;
  v29 = qword_476C0;
  v30 = *(v14 + v94);
  inited = v30;
  if (v29 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    [inited setTextColor:qword_48F40];

    v31 = *(v14 + v92);
    v32 = objc_opt_self();
    v33 = v31;
    v90 = v32;
    v34 = [v32 whiteColor];
    [v33 setTextColor:v34];

    v35 = qword_47638;
    v36 = *&p_cache[v14];
    if (v35 != -1)
    {
      swift_once();
    }

    v37 = qword_48EB0;
    v38 = sub_35398();
    v39 = sub_35398();
    v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

    sub_353A8();
    sub_3938();
    sub_355F8();
    v41 = sub_35398();

    [v36 setText:v41];

    v42 = *(v14 + v93);
    v43 = sub_35398();
    [v42 setText:v43];

    v44 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthValueLabel;
    v45 = *(v14 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthValueLabel);
    v46 = sub_35398();
    [v45 setText:v46];

    v47 = *(v14 + v92);
    v48 = sub_35398();
    [v47 setText:v48];

    v49 = *(v14 + v91);
    v50 = sub_35398();
    [v49 setText:v50];

    v51 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeValueLabel;
    v52 = *(v14 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeValueLabel);
    v53 = sub_35398();
    [v52 setText:v53];

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_366B0;
    v54 = *(v14 + v44);
    *(inited + 32) = v54;
    v55 = *(v14 + v51);
    *(inited + 40) = v55;
    p_cache = (inited & 0xC000000000000001);
    v56 = v54;
    v57 = v55;
    if ((inited & 0xC000000000000001) != 0)
    {
      v58 = sub_356C8();
    }

    else
    {
      if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_44;
      }

      v58 = v56;
    }

    v59 = v58;
    if (qword_476F8 != -1)
    {
      swift_once();
    }

    [v59 setFont:qword_48F78];
    v60 = [v90 grayColor];
    [v59 setTextColor:v60];

    if (p_cache)
    {
      break;
    }

    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 2uLL)
    {
      v61 = *(inited + 40);
      goto LABEL_21;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v61 = sub_356C8();
LABEL_21:
  v62 = v61;
  if (qword_476F8 != -1)
  {
    swift_once();
  }

  [v62 setFont:qword_48F78];
  v63 = [v90 grayColor];
  [v62 setTextColor:v63];

  swift_setDeallocating();
  swift_arrayDestroy();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_366C0;
  v64 = *(v14 + v94);
  *(inited + 32) = v64;
  v65 = *(v14 + v44);
  *(inited + 40) = v65;
  v66 = *(v14 + v93);
  *(inited + 48) = v66;
  v67 = *(v14 + v92);
  *(inited + 56) = v67;
  p_cache = *(v14 + v91);
  *(inited + 64) = p_cache;
  v68 = *(v14 + v51);
  *(inited + 72) = v68;
  v69 = inited & 0xC000000000000001;
  v70 = v64;
  v71 = v65;
  v72 = v66;
  v73 = v67;
  v74 = p_cache;
  v75 = v68;
  if ((inited & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
    {
      v76 = v70;
      goto LABEL_26;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v76 = sub_356C8();
LABEL_26:
  v77 = v76;
  [v14 addSubview:v76];

  if (v69)
  {
    v78 = sub_356C8();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      goto LABEL_43;
    }

    v78 = *(inited + 40);
  }

  v79 = v78;
  [v14 addSubview:v78];

  if (v69)
  {
    v80 = sub_356C8();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 3uLL)
    {
      goto LABEL_43;
    }

    v80 = *(inited + 48);
  }

  v81 = v80;
  [v14 addSubview:v80];

  if (v69)
  {
    v82 = sub_356C8();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 4uLL)
    {
      goto LABEL_43;
    }

    v82 = *(inited + 56);
  }

  v83 = v82;
  [v14 addSubview:v82];

  if (v69)
  {
    v84 = sub_356C8();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 5uLL)
    {
      goto LABEL_43;
    }

    v84 = *(inited + 64);
  }

  v85 = v84;
  [v14 addSubview:v84];

  if (!v69)
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 6uLL)
    {
      v86 = *(inited + 72);
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v86 = sub_356C8();
LABEL_41:
  v87 = v86;
  [v14 addSubview:v86];

  swift_setDeallocating();
  swift_arrayDestroy();
  return v14;
}

void sub_24C0()
{
  v1 = v0;
  v72 = sub_350A8();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v68 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_34EA8();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v66 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_35098();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_34E08();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_350E8();
  v59 = *(v60 - 8);
  v6 = __chkstk_darwin(v60);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v56 - v8;
  v9 = type metadata accessor for HistoricalDepthMetrics(0);
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v73 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DepthComplicationMetrics(0);
  __chkstk_darwin(v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthValueLabel);
  v15 = objc_opt_self();
  v16 = [v15 grayColor];
  v76 = v14;
  [v14 setTextColor:v16];

  v17 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeValueLabel);
  v18 = [v15 grayColor];
  v77 = v17;
  [v17 setTextColor:v18];

  v19 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthUnitLabel);
  v20 = [v15 grayColor];
  [v19 setTextColor:v20];

  v21 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_numberOfDivesLabel);
  v22 = [v15 whiteColor];
  [v21 setTextColor:v22];

  if (qword_47630 != -1)
  {
    swift_once();
  }

  v23 = qword_48E80;
  v24 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter;
  v25 = *(*(qword_48E80 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter) + 16);
  sub_34FC8();

  v26 = sub_35398();

  [v19 setText:v26];

  v27 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_metrics;
  swift_beginAccess();
  sub_3870(v1 + v27, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = type metadata accessor for DepthComplicationMetrics;
      v30 = v13;
LABEL_13:
      sub_39F0(v30, v29);
      return;
    }
  }

  else if ((*(v74 + 48))(v13, 1, v75) != 1)
  {
    sub_398C(v13, v73);
    [v21 setHidden:0];
    v56 = v23;
    v74 = *(v23 + v24);

    v38 = v57;
    sub_6E80(v57);
    v39 = v61;
    sub_350B8();
    v40 = *(v59 + 8);
    v41 = v38;
    v42 = v60;
    v40(v41, v60);
    v43 = v58;
    sub_6E80(v58);
    v44 = v63;
    sub_350C8();
    v40(v43, v42);
    (*(v70 + 104))(v68, enum case for UnitOption.noUnit(_:), v72);
    v45 = v66;
    sub_34E98();
    sub_34FD8();
    (*(v69 + 8))(v45, v71);
    (*(v65 + 8))(v44, v67);
    (*(v62 + 8))(v39, v64);

    v46 = sub_35398();

    [v76 setText:v46];

    v47 = v56;
    v48 = v73;
    v49 = *(*(v56 + v24) + 16);
    sub_35028();

    v50 = sub_35398();

    [v21 setText:v50];

    v51 = *(*(v47 + v24) + 16);
    sub_35018();

    v52 = sub_35398();

    [v77 setText:v52];

    v53 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeUnitLabel);
    v54 = *(*(v47 + v24) + 16);
    sub_35008();

    v55 = sub_35398();

    [v53 setText:v55];

    v29 = type metadata accessor for HistoricalDepthMetrics;
    v30 = v48;
    goto LABEL_13;
  }

  [v21 setHidden:1];
  v31 = sub_35398();
  [v76 setText:v31];

  v32 = sub_35398();
  [v77 setText:v32];

  v33 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeUnitLabel);
  if (qword_47638 != -1)
  {
    swift_once();
  }

  v34 = qword_48EB0;
  v35 = sub_35398();
  v36 = sub_35398();
  v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

  if (!v37)
  {
    sub_353A8();
    v37 = sub_35398();
  }

  [v33 setText:v37];
}

id sub_2EC8()
{
  v1 = v0;
  [v0 bounds];
  y = v58.origin.y;
  v2 = *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthLabel];
  v3 = *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_numberOfDivesLabel];
  v4 = *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthValueLabel];
  v5 = *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeValueLabel];
  v6 = *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthUnitLabel];
  v7 = *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeUnitLabel];
  x = v58.origin.x;
  v54 = v58.origin.x;
  height = v58.size.height;
  width = v58.size.width;
  v10 = v58.size.height;
  v11 = CGRectGetWidth(v58) * 0.4;
  [v2 intrinsicContentSize];
  v59.size.width = v12;
  v14 = v13;
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.height = v14;
  v15 = CGRectGetWidth(v59);
  if (v11 < v15)
  {
    v15 = v11;
  }

  v51 = v15;
  [v3 intrinsicContentSize];
  v60.size.width = v16;
  v18 = v17;
  v60.origin.y = 0.0;
  v60.origin.x = v11 + 2.0;
  v60.size.height = v18;
  v19 = CGRectGetWidth(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = v10;
  v20 = CGRectGetWidth(v61) - (v11 + 2.0);
  v53 = v11 + 2.0;
  if (v20 < v19)
  {
    v19 = v20;
  }

  [v2 setFrame:{0.0, 0.0, v51, v14, *&width}];
  [v3 setFrame:{v11 + 2.0, 0.0, v19, v18}];
  [v6 intrinsicContentSize];
  v22 = v21;
  v24 = v23;
  v52 = v23;
  v62.origin.x = v54;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v25 = CGRectGetHeight(v62);
  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.width = v22;
  v63.size.height = v24;
  v64.origin.y = v25 - CGRectGetHeight(v63);
  v50 = v64.origin.y;
  v64.origin.x = 0.0;
  v64.size.width = v22;
  v64.size.height = v24;
  v26 = CGRectGetWidth(v64);
  if (v11 < v26)
  {
    v26 = v11;
  }

  v49 = v26;
  [v7 intrinsicContentSize];
  v28 = v27;
  v30 = v29;
  v65.origin.x = v54;
  v65.origin.y = y;
  v65.size.width = v48;
  v65.size.height = height;
  v31 = CGRectGetHeight(v65);
  v66.origin.x = 0.0;
  v66.origin.y = 0.0;
  v66.size.width = v28;
  v66.size.height = v30;
  v32 = v31 - CGRectGetHeight(v66);
  v67.origin.x = v53;
  v67.origin.y = v32;
  v67.size.width = v28;
  v67.size.height = v30;
  v33 = CGRectGetWidth(v67);
  v68.origin.x = v54;
  v68.origin.y = y;
  v68.size.width = v48;
  v68.size.height = height;
  v34 = CGRectGetWidth(v68) - v53;
  if (v34 < v33)
  {
    v33 = v34;
  }

  [v6 setFrame:{0.0, v50, v49, v52}];
  [v7 setFrame:{v53, v32, v33, v30}];
  [v4 intrinsicContentSize];
  v36 = v35;
  v38 = v37;
  v69.origin.x = v54;
  v69.origin.y = y;
  v69.size.width = v48;
  v69.size.height = height;
  v39 = CGRectGetHeight(v69) * 0.5;
  v70.origin.x = 0.0;
  v70.origin.y = 0.0;
  v70.size.width = v36;
  v70.size.height = v38;
  v40 = v39 - CGRectGetHeight(v70) * 0.5;
  [v5 intrinsicContentSize];
  v71.size.width = v41;
  v43 = v42;
  v71.origin.x = v53;
  v71.origin.y = v40;
  v71.size.height = v43;
  v44 = CGRectGetWidth(v71);
  v72.origin.x = v54;
  v72.size.height = height;
  v72.origin.y = y;
  v72.size.width = v48;
  v45 = CGRectGetWidth(v72) - v53;
  if (v45 >= v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v45;
  }

  [v4 setFrame:{0.0, v40, v36, v38}];

  return [v5 setFrame:{v53, v40, v46, v43}];
}

uint64_t sub_32BC()
{
  sub_3828(&qword_47868);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_366A0;
  *(v1 + 32) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthValueLabel) layer];
  *(v1 + 40) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeValueLabel) layer];
  *(v1 + 48) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthUnitLabel) layer];
  *(v1 + 56) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeUnitLabel) layer];
  return v1;
}

void *sub_3398()
{
  v1 = sub_32BC();
  sub_13900(v1);
  sub_3828(&qword_47868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_366B0;
  *(inited + 32) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthLabel) layer];
  *(inited + 40) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_numberOfDivesLabel) layer];
  sub_13900(inited);
  return &_swiftEmptyArrayStorage;
}

id sub_3490()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DepthRectangularSimpleHistoryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DepthRectangularSimpleHistoryView()
{
  result = qword_47858;
  if (!qword_47858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_35E0()
{
  result = type metadata accessor for DepthComplicationMetrics(319);
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

id sub_3694(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DepthComplicationMetrics(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3870(a1, v7);
  v8 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_metrics;
  swift_beginAccess();
  sub_38D4(v7, &v2[v8]);
  swift_endAccess();
  v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_alwaysOn] = a2;
  sub_24C0();
  [v2 setNeedsLayout];
  return [v2 layoutIfNeeded];
}

uint64_t sub_3788()
{
  sub_3828(&qword_47868);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_366B0;
  *(v1 + 32) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthLabel) layer];
  *(v1 + 40) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_numberOfDivesLabel) layer];
  return v1;
}

uint64_t sub_3828(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DepthComplicationMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_38D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DepthComplicationMetrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_3938()
{
  result = qword_47870;
  if (!qword_47870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_47870);
  }

  return result;
}

uint64_t sub_398C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalDepthMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_39F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_3A50()
{
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthValueLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_depthUnitLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_numberOfDivesLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeUnitLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_timeValueLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  type metadata accessor for DepthComplicationMetrics(0);
  swift_storeEnumTagMultiPayload();
  *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion33DepthRectangularSimpleHistoryView_alwaysOn) = 0;
  sub_35758();
  __break(1u);
}

__n128 sub_3B90(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_3BA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3BC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_3C10(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_3C1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_3C3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_3C90(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_3CE4()
{
  type metadata accessor for TimelineDataProvider();
  swift_allocObject();
  result = sub_3D24();
  qword_48E80 = result;
  return result;
}

uint64_t sub_3D24()
{
  v1 = v0;
  v2 = sub_35118();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v69 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_34C78();
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_351D8();
  v68 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DepthComplicationMetrics(0);
  v7 = __chkstk_darwin(v62);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = &v57 - v9;
  v61 = sub_35298();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() fiui_sharedHealthStoreForCarousel];
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v58 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_healthStore;
  *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_healthStore) = v11;
  *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_subscriptions) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_isActiveDive) = 0;
  v75 = 37;
  v76 = 0xE100000000000000;
  v77._countAndFlagsBits = sub_35848();
  sub_35418(v77);

  v12 = sub_34ED8();
  v13 = objc_allocWithZone(HKObserverSet);
  v14 = sub_35398();

  v15 = [v13 initWithName:v14 loggingCategory:v12];

  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_depthSubscribers) = v15;
  v75 = 37;
  v76 = 0xE100000000000000;
  v78._countAndFlagsBits = sub_35848();
  sub_35418(v78);

  v16 = sub_34ED8();
  v17 = objc_allocWithZone(HKObserverSet);
  v18 = sub_35398();

  v19 = [v17 initWithName:v18 loggingCategory:v16];

  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_temperatureSubscribers) = v19;
  v20 = objc_allocWithZone(NSUserDefaults);
  v21 = sub_35398();
  v22 = [v20 initWithSuiteName:v21];

  if (!v22)
  {
LABEL_8:
    result = sub_35758();
    __break(1u);
    return result;
  }

  v23 = *&v58[v1];
  type metadata accessor for HealthKitSettingsStore();
  swift_allocObject();
  v24 = v23;
  v25 = v22;
  v26 = sub_20CF4(v24, v25);

  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_healthKitSettingsStore) = v26;
  v28 = v26[10];
  v27 = v26[11];
  v29 = v26[12];
  type metadata accessor for SettingsStore();
  swift_allocObject();
  v30 = v25;

  v31 = sub_3323C(v30, v27, v28, v29);
  v58 = v30;

  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settingsStore) = v31;

  v32 = v59;
  sub_34D08();

  v33 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  v34 = v60;
  v35 = v61;
  (*(v60 + 32))(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings, v32, v61);
  swift_beginAccess();
  (*(v34 + 16))(v32, v1 + v33, v35);
  type metadata accessor for ComplicationFormatter();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter) = sub_2C100(v32);
  swift_beginAccess();
  v36 = v72;
  sub_35268();
  LOBYTE(v35) = sub_351B8();
  v68 = *(v68 + 8);
  (v68)(v36, v73);
  swift_endAccess();
  if (v35)
  {
    v37 = enum case for WaterDepth.unknown(_:);
    v38 = sub_34E08();
    v39 = v67;
    (*(*(v38 - 8) + 104))(v67, v37, v38);
    v40 = *(type metadata accessor for LiveMetrics(0) + 20);
    v41 = enum case for UnderwaterTime.zero(_:);
    v42 = sub_35198();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    type metadata accessor for DisplayTime(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v39 = v67;
  }

  swift_storeEnumTagMultiPayload();
  v43 = v63;
  sub_3870(v39, v63);
  v44 = v64;
  sub_34C68();
  v45 = type metadata accessor for DepthTimelineEntryModel(0);
  v46 = objc_allocWithZone(v45);
  v48 = v65;
  v47 = v66;
  (*(v65 + 16))(&v46[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_entryDate], v44, v66);
  v46[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_alwaysOn] = 0;
  sub_3870(v43, &v46[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics]);
  v74.receiver = v46;
  v74.super_class = v45;
  v49 = objc_msgSendSuper2(&v74, "init");
  (*(v48 + 8))(v44, v47);
  sub_63AC(v43);
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_currentDepthModel) = v49;
  v50 = v39;
  v52 = v69;
  v51 = v70;
  v53 = v71;
  (*(v70 + 104))(v69, enum case for Temperature.unknown(_:), v71);
  swift_beginAccess();
  v54 = v72;
  sub_35268();
  LOBYTE(v49) = sub_351B8();
  (v68)(v54, v73);
  swift_endAccess();
  v55 = sub_1DB1C(v52, (v49 & 1) == 0, 0);
  (*(v51 + 8))(v52, v53);
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_currentTemperatureModel) = v55;
  sub_46D8();

  sub_63AC(v50);
  return v1;
}

uint64_t sub_4678(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_46D8()
{
  swift_allocObject();
  swift_weakInit();

  sub_3828(&qword_47B50);
  sub_6DCC();
  sub_34D48();

  swift_beginAccess();
  sub_34CE8();
  swift_endAccess();
}

uint64_t sub_47DC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_56B0(a1);
  }

  return result;
}

void sub_483C(uint64_t a1, int a2)
{
  v111 = a1;
  v103 = sub_351D8();
  v109 = *(v103 - 8);
  __chkstk_darwin(v103);
  v108 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_35298();
  v106 = *(v4 - 8);
  v107 = v4;
  __chkstk_darwin(v4);
  v105 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_34CD8();
  v101 = *(v102 - 8);
  v6 = __chkstk_darwin(v102);
  v98 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v86 - v8;
  v93 = sub_35328();
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_35178();
  v11 = *(v89 - 8);
  __chkstk_darwin(v89);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_3828(&qword_47B38);
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v90 = &v86 - v14;
  v97 = sub_35218();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_35118();
  v16 = *(v104 - 8);
  v17 = __chkstk_darwin(v104);
  v100 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v86 - v19;
  v21 = sub_34D88();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6D44(0, &qword_47B30);
  *v24 = sub_35558();
  (*(v22 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v21);
  v25 = sub_34D98();
  (*(v22 + 8))(v24, v21);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v27 = a2;
  v26 = a2 == 0;
  v28 = v110;
  LODWORD(v29) = a2;
  v30 = v104;
  if (!v26)
  {
    if (v27 == 1 && *(v110 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_isActiveDive) != 1)
    {
      return;
    }

    v88 = v29;
    v31 = *(v110 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter);
    (*(v16 + 16))(v20, v111, v104);
    v32 = (*(v16 + 88))(v20, v30);
    if (v32 == enum case for Temperature.temperature(_:))
    {
      (*(v16 + 96))(v20, v30);
      (*(v96 + 32))(v95, v20, v97);
      v86 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_settings;

      sub_35248();
      sub_35128();
      v33 = *(v11 + 8);
      v34 = v89;
      v33(v13, v89);
      sub_35208();
      v87 = v16;
      v35 = *(v91 + 8);
      v36 = v93;
      v35(v10, v93);
      sub_35248();
      sub_35128();
      v33(v13, v34);
      sub_35318();
      v37 = v36;
      v30 = v104;
      v35(v10, v37);
      v16 = v87;
      v28 = v110;
      sub_6D44(0, &qword_47B48);
      v38 = v90;
      sub_34BA8();
      aBlock = sub_35598();
      v113 = v39;

      sub_1DDB8(&aBlock, v31);

      (*(v92 + 8))(v38, v94);

      v41 = aBlock;
      v40 = v113;
      (*(v96 + 8))(v95, v97);
    }

    else
    {
      if (v32 != enum case for Temperature.unknown(_:))
      {
        (*(v16 + 8))(v20, v30);
      }

      v40 = 0xE200000000000000;
      v41 = 11565;
    }

    v42 = v99;
    sub_34EB8();

    v43 = sub_34CC8();
    v44 = sub_35508();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v45 = 136380931;
      v46 = sub_31484(v41, v40, &aBlock);

      *(v45 + 4) = v46;
      *(v45 + 12) = 2080;
      v47 = 0xE700000000000000;
      v48 = 0x73726F736E6573;
      v49 = 0xE800000000000000;
      v50 = 0x656469727265766FLL;
      v51 = 0x8000000000037740;
      v52 = 0xD000000000000013;
      if (v88 != 4)
      {
        v52 = 0x64676E69766964;
        v51 = 0xE700000000000000;
      }

      if (v88 != 3)
      {
        v50 = v52;
        v49 = v51;
      }

      if (v88 != 1)
      {
        v48 = 0x694B68746C616548;
        v47 = 0xE900000000000074;
      }

      if (v88 <= 2u)
      {
        v53 = v48;
      }

      else
      {
        v53 = v50;
      }

      if (v88 <= 2u)
      {
        v54 = v47;
      }

      else
      {
        v54 = v49;
      }

      v55 = sub_31484(v53, v54, &aBlock);

      *(v45 + 14) = v55;
      _os_log_impl(&dword_0, v43, v44, "TimelineDataProvider: Received water temperature update: %{private}s (%s)", v45, 0x16u);
      swift_arrayDestroy();

      (*(v101 + 8))(v99, v102);
    }

    else
    {

      (*(v101 + 8))(v42, v102);
    }

    LOBYTE(v29) = v88;
  }

  v56 = v100;
  (*(v16 + 104))(v100, enum case for Temperature.unknown(_:), v30);
  sub_6CD4();
  v57 = v111;
  v58 = sub_35388();
  (*(v16 + 8))(v56, v30);
  p_cache = &OBJC_METACLASS____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView.cache;
  v60 = v103;
  if ((v58 & 1) != 0 || (v61 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings, swift_beginAccess(), v62 = v106, v63 = v107, v64 = v28 + v61, v65 = v105, (*(v106 + 16))(v105, v64, v107), v66 = v108, sub_35268(), (*(v62 + 8))(v65, v63), LOBYTE(v65) = sub_351B8(), (*(v109 + 8))(v66, v60), (v65 & 1) == 0))
  {
    v67 = v98;
    sub_34EB8();
    v68 = sub_34CC8();
    v69 = sub_35508();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      aBlock = v71;
      *v70 = 136315138;
      if (v58)
      {
        v72 = 1701602409;
      }

      else
      {
        v72 = 0x616C696176616E75;
      }

      if (v58)
      {
        v73 = 0xE400000000000000;
      }

      else
      {
        v73 = 0xEB00000000656C62;
      }

      v74 = v67;
      v75 = v29;
      v29 = sub_31484(v72, v73, &aBlock);

      *(v70 + 4) = v29;
      LOBYTE(v29) = v75;
      _os_log_impl(&dword_0, v68, v69, "TimelineDataProvider: Updating water temperature model (%s)", v70, 0xCu);
      sub_6408(v71);
      v60 = v103;

      v76 = v74;
      p_cache = (&OBJC_METACLASS____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView + 16);
      (*(v101 + 8))(v76, v102);
    }

    else
    {

      (*(v101 + 8))(v67, v102);
    }
  }

  v77 = p_cache[465];
  swift_beginAccess();
  v79 = v106;
  v78 = v107;
  v80 = v105;
  (*(v106 + 16))(v105, &v77[v28], v107);
  v81 = v108;
  sub_35268();
  (*(v79 + 8))(v80, v78);
  LOBYTE(v80) = sub_351B8();
  (*(v109 + 8))(v81, v60);
  v82 = sub_1DB1C(v57, (v80 & 1) == 0, v29 == 2);
  v83 = *(v28 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_currentTemperatureModel);
  *(v28 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_currentTemperatureModel) = v82;

  v84 = *(v28 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_temperatureSubscribers);
  v116 = sub_6D2C;
  v117 = v28;
  aBlock = _NSConcreteStackBlock;
  v113 = 1107296256;
  v114 = sub_4678;
  v115 = &unk_41520;
  v85 = _Block_copy(&aBlock);

  [v84 notifyObservers:v85];
  _Block_release(v85);
}

uint64_t sub_56B0(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_35118();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DepthComplicationMetrics(0);
  __chkstk_darwin(v31);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_35298();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_34D88();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6D44(0, &qword_47B30);
  *v15 = sub_35558();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_34D98();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v18 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
    swift_beginAccess();
    (*(v9 + 24))(v2 + v18, v30, v8);
    swift_endAccess();
    (*(v9 + 16))(v11, v2 + v18, v8);
    type metadata accessor for ComplicationFormatter();
    swift_allocObject();
    *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter) = sub_2C100(v11);

    sub_5BCC();
    if (*(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_isActiveDive) == 1)
    {
      v19 = enum case for WaterDepth.unknown(_:);
      v20 = sub_34E08();
      (*(*(v20 - 8) + 104))(v7, v19, v20);
      v21 = *(type metadata accessor for LiveMetrics(0) + 20);
      v22 = enum case for UnderwaterTime.zero(_:);
      v23 = sub_35198();
      (*(*(v23 - 8) + 104))(&v7[v21], v22, v23);
      type metadata accessor for DisplayTime(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_6454(v7);
      sub_63AC(v7);
      v24 = enum case for Temperature.unknown(_:);
      v26 = v32;
      v25 = v33;
      v27 = *(v32 + 104);
      v27(v5, enum case for Temperature.unknown(_:), v33);
      sub_483C(v5, 0);
      (*(v26 + 8))(v5, v25);
    }

    else
    {
      v28 = type metadata accessor for HistoricalDepthMetrics(0);
      (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
      swift_storeEnumTagMultiPayload();
      sub_6454(v7);
      sub_63AC(v7);
      v24 = enum case for Temperature.unknown(_:);
      v26 = v32;
      v25 = v33;
      v27 = *(v32 + 104);
    }

    v27(v5, v24, v25);
    sub_483C(v5, 0);
    return (*(v26 + 8))(v5, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5BCC()
{
  v1 = v0;
  v2 = sub_351D8();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  __chkstk_darwin(v2);
  v46 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_35178();
  v44 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_35298();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_34CD8();
  v12 = *(v50 - 8);
  v13 = __chkstk_darwin(v50);
  v51 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  sub_34EB8();

  v17 = sub_34CC8();
  v18 = sub_35508();

  v43 = v18;
  v19 = os_log_type_enabled(v17, v18);
  v47 = v8;
  v45 = v11;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v42 = v12;
    v21 = v20;
    v41 = swift_slowAlloc();
    v52[0] = v41;
    *v21 = 136315138;
    v22 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
    swift_beginAccess();
    (*(v9 + 16))(v11, v1 + v22, v8);
    sub_35248();
    v23 = v11;
    v24 = v9;
    (*(v9 + 8))(v23, v8);
    v25 = sub_35158();
    v27 = v26;
    (*(v44 + 8))(v7, v5);
    v28 = sub_31484(v25, v27, v52);
    v29 = v50;

    *(v21 + 4) = v28;
    _os_log_impl(&dword_0, v17, v43, "TimelineDataProvider: Settings has units: %s", v21, 0xCu);
    sub_6408(v41);

    v30 = *(v42 + 8);
    v30(v16, v29);
  }

  else
  {
    v24 = v9;

    v30 = *(v12 + 8);
    v30(v16, v50);
  }

  sub_34EB8();

  v31 = sub_34CC8();
  v32 = sub_35508();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 67109120;
    v34 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
    swift_beginAccess();
    v35 = v1 + v34;
    v36 = v45;
    v37 = v47;
    (*(v24 + 16))(v45, v35, v47);
    v38 = v46;
    sub_35268();
    (*(v24 + 8))(v36, v37);
    LOBYTE(v36) = sub_351B8();
    (*(v49 + 8))(v38, v48);
    *(v33 + 4) = v36 & 1;

    _os_log_impl(&dword_0, v31, v32, "TimelineDataProvider: Settings has fitness tracking enabled: %{BOOL}d", v33, 8u);
  }

  else
  {
  }

  return (v30)(v51, v50);
}

uint64_t sub_6140()
{
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  v2 = sub_35298();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_6230()
{
  sub_6140();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimelineDataProvider()
{
  result = qword_47958;
  if (!qword_47958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_62DC()
{
  result = sub_35298();
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

uint64_t sub_63AC(uint64_t a1)
{
  v2 = type metadata accessor for DepthComplicationMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6408(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_6454(uint64_t a1)
{
  v66 = a1;
  v1 = sub_34CD8();
  v64 = *(v1 - 8);
  v65 = v1;
  __chkstk_darwin(v1);
  v63 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_34C78();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v60 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_351D8();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_35298();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DepthComplicationMetrics(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v54 - v13;
  v15 = __chkstk_darwin(v12);
  v59 = &v54 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v54 - v18;
  __chkstk_darwin(v17);
  v21 = &v54 - v20;
  v22 = sub_34D88();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_6D44(0, &qword_47B30);
  *v25 = sub_35558();
  (*(v23 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v22);
  v26 = sub_34D98();
  (*(v23 + 8))(v25, v22);
  if (v26)
  {
    v27 = v66;
    sub_3870(v66, v21);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_63AC(v21);
    v29 = v67;
    if (EnumCaseMultiPayload == 1 && (*(v67 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_isActiveDive) & 1) != 0 || (sub_3870(v27, v19), v30 = swift_getEnumCaseMultiPayload(), sub_63AC(v19), !v30) && (*(v29 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_isActiveDive) & 1) == 0)
    {
      v36 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
      swift_beginAccess();
      v37 = v54;
      v38 = v29 + v36;
      v39 = v55;
      (*(v54 + 16))(v7, v38, v55);
      v40 = v56;
      sub_35268();
      (*(v37 + 8))(v7, v39);
      LOBYTE(v39) = sub_351B8();
      (*(v57 + 8))(v40, v58);
      v41 = v61;
      v42 = (v61 + 16);
      v43 = v59;
      if (v39)
      {
        sub_3870(v27, v59);
        v44 = v60;
        sub_34C68();
        v45 = type metadata accessor for DepthTimelineEntryModel(0);
        v46 = objc_allocWithZone(v45);
        v47 = v62;
        (*v42)(&v46[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_entryDate], v44, v62);
        v46[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_alwaysOn] = 0;
        sub_3870(v43, &v46[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics]);
        v68 = v46;
        v48 = &v68;
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v44 = v60;
        sub_34C68();
        v45 = type metadata accessor for DepthTimelineEntryModel(0);
        v49 = objc_allocWithZone(v45);
        v47 = v62;
        (*v42)(&v49[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_entryDate], v44, v62);
        v49[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_alwaysOn] = 0;
        sub_3870(v43, &v49[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics]);
        v70.receiver = v49;
        v48 = &v70;
      }

      v48->super_class = v45;
      v50 = [(objc_super *)v48 init];
      (*(v41 + 8))(v44, v47);
      sub_63AC(v43);
      v51 = *(v29 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_currentDepthModel);
      *(v29 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_currentDepthModel) = v50;

      v52 = *(v29 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_depthSubscribers);
      aBlock[4] = sub_6CA4;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_4678;
      aBlock[3] = &unk_414F8;
      v53 = _Block_copy(aBlock);

      [v52 notifyObservers:v53];
      _Block_release(v53);
    }

    else
    {
      v31 = v63;
      sub_34EB8();
      sub_3870(v27, v14);

      v32 = sub_34CC8();
      v33 = sub_354F8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 67109376;
        sub_3870(v14, v11);
        v35 = swift_getEnumCaseMultiPayload() == 1;
        sub_63AC(v11);
        sub_63AC(v14);
        *(v34 + 4) = v35;
        *(v34 + 8) = 1024;
        *(v34 + 10) = *(v29 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_isActiveDive);

        _os_log_impl(&dword_0, v32, v33, "TimelineDataProvider: Not updating depth model with sensor due to mismatching isHistorical=%{BOOL}d and isActiveDive=%{BOOL}d", v34, 0xEu);
      }

      else
      {
        sub_63AC(v14);
      }

      (*(v64 + 8))(v31, v65);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_6CBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_6CD4()
{
  result = qword_47B40;
  if (!qword_47B40)
  {
    sub_35118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_47B40);
  }

  return result;
}

uint64_t sub_6D44(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_6D8C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_6DCC()
{
  result = qword_47B58;
  if (!qword_47B58)
  {
    sub_6E30(&qword_47B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_47B58);
  }

  return result;
}

uint64_t sub_6E30(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_6E80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_35098();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3828(&qword_47EB8);
  __chkstk_darwin(v5 - 8);
  v31 = &v25 - v6;
  v7 = sub_351E8();
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_34E08();
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin(v9);
  v36 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_34C78();
  __chkstk_darwin(v11 - 8);
  v12 = sub_34C28();
  __chkstk_darwin(v12 - 8);
  v25 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_34CB8();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v25 - v19;
  sub_34CA8();
  v21 = *(v15 + 16);
  v21(v18, v20, v14);
  sub_34C48();
  v22 = type metadata accessor for HistoricalDepthMetrics(0);
  sub_34C18();
  (*(v26 + 16))(v36, v2, v27);
  (*(v29 + 104))(v28, enum case for TemperatureRange.unknown(_:), v30);
  v23 = v31;
  v21(v31, v20, v14);
  (*(v15 + 56))(v23, 0, 1, v14);
  (*(v33 + 16))(v32, v2 + *(v22 + 36), v34);
  sub_350D8();
  return (*(v15 + 8))(v20, v14);
}

uint64_t sub_72F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1869768058;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x76697461746E6574;
    }

    else
    {
      v4 = 0x6574656C706D6F63;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x657669746361;
    }

    else
    {
      v4 = 1869768058;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x76697461746E6574;
  v8 = 0xE900000000000065;
  if (a2 != 2)
  {
    v7 = 0x6574656C706D6F63;
    v8 = 0xE900000000000064;
  }

  if (a2)
  {
    v2 = 0x657669746361;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_357D8();
  }

  return v11 & 1;
}

void *sub_743C()
{
  v1 = sub_352E8();
  v24 = *(v1 - 8);
  v25 = v1;
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_35198();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DisplayTime(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v27 = &_swiftEmptyDictionarySingleton;
  sub_11D90(v0, &v22 - v11, type metadata accessor for DisplayTime);
  swift_getEnumCaseMultiPayload();
  sub_11714(v12, type metadata accessor for DisplayTime);
  v13 = sub_35398();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = &_swiftEmptyDictionarySingleton;
  sub_103C8(v13, 0xD00000000000002ALL, 0x8000000000037A10, isUniquelyReferenced_nonNull_native, &v26);
  v27 = v26;
  sub_11D90(v0, v10, type metadata accessor for DisplayTime);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v24;
    v15 = v25;
    (*(v24 + 32))(v3, v10, v25);
    v17 = DiveUnderwaterTime.asComplicationMetadata.getter();
    sub_7C9C(v17);

    (*(v16 + 8))(v3, v15);
  }

  else
  {
    v19 = v22;
    v18 = v23;
    (*(v22 + 32))(v6, v10, v23);
    v20 = UnderwaterTime.asComplicationMetadata.getter();
    sub_7C9C(v20);

    (*(v19 + 8))(v6, v18);
  }

  return v27;
}

uint64_t UnderwaterTime.asComplicationMetadata.getter()
{
  v1 = sub_35198();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_34C78();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v35 = &v35 - v10;
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  UnderwaterTime.category.getter();
  v13 = sub_35398();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = &_swiftEmptyDictionarySingleton;
  sub_103C8(v13, 0xD00000000000002DLL, 0x8000000000037760, isUniquelyReferenced_nonNull_native, &v38);
  v15 = v38;
  (*(v2 + 16))(v4, v0, v1);
  v16 = (*(v2 + 88))(v4, v1);
  if (v16 == enum case for UnderwaterTime.active(_:))
  {
    (*(v2 + 96))(v4, v1);
    v17 = v36;
    v18 = v4;
    v19 = v37;
    (*(v36 + 32))(v8, v18, v37);
    isa = sub_34C58().super.isa;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v15;
    sub_103C8(isa, 0xD00000000000002BLL, 0x80000000000377F0, v21, &v38);
    v15 = v38;
    (*(v17 + 8))(v8, v19);
    return v15;
  }

  if (v16 == enum case for UnderwaterTime.tentative(_:) || v16 == enum case for UnderwaterTime.completed(_:))
  {
    (*(v2 + 96))(v4, v1);
    v23 = *(sub_3828(&qword_47B60) + 48);
    v25 = v36;
    v24 = v37;
    v26 = *(v36 + 32);
    v26(v12, v4, v37);
    v27 = v35;
    v26(v35, &v4[v23], v24);
    v28 = sub_34C58().super.isa;
    v29 = *(v25 + 8);
    v29(v12, v24);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v15;
    sub_103C8(v28, 0xD00000000000002BLL, 0x80000000000377F0, v30, &v38);
    v31 = v38;
    v32 = sub_34C58().super.isa;
    v29(v27, v24);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v31;
    sub_103C8(v32, 0xD000000000000029, 0x8000000000037820, v33, &v38);
    return v38;
  }

  if (v16 == enum case for UnderwaterTime.zero(_:))
  {
    return v15;
  }

  result = sub_35758();
  __break(1u);
  return result;
}

uint64_t sub_7C9C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v30 = v1;
  while (v5)
  {
LABEL_11:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    v13 = *(*(a1 + 56) + 8 * v9);
    swift_unknownObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v1;
    v16 = sub_FD68(v12, v11);
    v18 = v15[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      result = sub_357F8();
      __break(1u);
      return result;
    }

    v22 = v17;
    if (v15[3] < v21)
    {
      sub_FE24(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_FD68(v12, v11);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_27;
      }

LABEL_16:
      v24 = v15;
      if (v22)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v28 = v16;
    sub_10258();
    v16 = v28;
    v24 = v15;
    if (v22)
    {
LABEL_4:
      *(v24[7] + 8 * v16) = v13;
      goto LABEL_5;
    }

LABEL_17:
    v24[(v16 >> 6) + 8] |= 1 << v16;
    v25 = (v24[6] + 16 * v16);
    *v25 = v12;
    v25[1] = v11;
    *(v24[7] + 8 * v16) = v13;
    v26 = v24[2];
    v20 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v20)
    {
      goto LABEL_26;
    }

    v24[2] = v27;

LABEL_5:
    v5 &= v5 - 1;
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v1 = v30;
    *v30 = v24;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }
}

void *DiveUnderwaterTime.asComplicationMetadata.getter()
{
  v0 = sub_35198();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &_swiftEmptyDictionarySingleton;
  sub_352B8();
  if ((v4 & 1) == 0)
  {
    isa = sub_354A8().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = &_swiftEmptyDictionarySingleton;
    sub_103C8(isa, 0xD000000000000039, 0x8000000000037850, isUniquelyReferenced_nonNull_native, &v9);
    v10 = v9;
  }

  sub_352C8();
  v7 = UnderwaterTime.asComplicationMetadata.getter();
  (*(v1 + 8))(v3, v0);
  sub_7C9C(v7);

  return v10;
}

uint64_t sub_8024@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_3828(&qword_47EA8);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  v7 = sub_352E8();
  v54 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_34CD8();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v50 - v15;
  __chkstk_darwin(v14);
  v52 = &v50 - v17;
  v18 = sub_3828(&qword_47B78);
  __chkstk_darwin(v18 - 8);
  v20 = &v50 - v19;
  v21 = sub_35198();
  v53 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v24 = sub_FD68(0xD00000000000002ALL, 0x8000000000037A10);
  if ((v25 & 1) == 0)
  {
    goto LABEL_10;
  }

  v58 = *(*(a1 + 56) + 8 * v24);
  swift_unknownObjectRetain();
  sub_3828(&qword_47B70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v50 = v16;
  v51 = a2;
  v26._rawValue = &off_41178;
  v27 = sub_357A8(v26, v57);

  if (v27 == 1)
  {
    static DiveUnderwaterTime.diveUnderwaterTime(fromComplicationMetadata:)(a1, v6);
    v41 = v54;
    v42 = (*(v54 + 48))(v6, 1, v7);
    v43 = v51;
    if (v42 == 1)
    {
      sub_11E70(v6, &qword_47EA8);
      sub_34EB8();
      v44 = sub_34CC8();
      v45 = sub_354F8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_0, v44, v45, "DisplayTime: Failed to decode DiveUnderwaterTime from metadata", v46, 2u);
      }

      (*(v55 + 8))(v50, v56);
      v36 = type metadata accessor for DisplayTime(0);
      v37 = *(*(v36 - 8) + 56);
      v38 = v43;
      goto LABEL_14;
    }

    v49 = *(v41 + 32);
    v49(v9, v6, v7);
    v49(v43, v9, v7);
    v48 = type metadata accessor for DisplayTime(0);
    swift_storeEnumTagMultiPayload();
    v37 = *(*(v48 - 8) + 56);
    v38 = v43;
LABEL_22:
    v39 = 0;
    v36 = v48;
    return v37(v38, v39, 1, v36);
  }

  a2 = v51;
  if (v27)
  {
LABEL_10:
    sub_34EB8();
    v33 = sub_34CC8();
    v34 = sub_354F8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "DisplayTime: Failed to decode category from metadata", v35, 2u);
    }

    (*(v55 + 8))(v13, v56);
    goto LABEL_13;
  }

  static UnderwaterTime.underwaterTime(fromComplicationMetadata:)(a1, v20);
  v28 = v53;
  if ((*(v53 + 48))(v20, 1, v21) != 1)
  {
    v47 = *(v28 + 32);
    v47(v23, v20, v21);
    v47(a2, v23, v21);
    v48 = type metadata accessor for DisplayTime(0);
    swift_storeEnumTagMultiPayload();
    v37 = *(*(v48 - 8) + 56);
    v38 = a2;
    goto LABEL_22;
  }

  sub_11E70(v20, &qword_47B78);
  v29 = v52;
  sub_34EB8();
  v30 = sub_34CC8();
  v31 = sub_354F8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "DisplayTime: Failed to decode UnderwaterTime from metadata", v32, 2u);
  }

  (*(v55 + 8))(v29, v56);
LABEL_13:
  v36 = type metadata accessor for DisplayTime(0);
  v37 = *(*(v36 - 8) + 56);
  v38 = a2;
LABEL_14:
  v39 = 1;
  return v37(v38, v39, 1, v36);
}

uint64_t static UnderwaterTime.underwaterTime(fromComplicationMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0xEF79726F67657461;
  v5 = 0x63676E697373696DLL;
  v6 = sub_3828(&qword_47B68);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  if (!*(a1 + 16))
  {
    goto LABEL_8;
  }

  v12 = sub_FD68(0xD00000000000002DLL, 0x8000000000037760);
  if (v13)
  {
    v28 = *(*(a1 + 56) + 8 * v12);
    swift_unknownObjectRetain();
    sub_3828(&qword_47B70);
    if (swift_dynamicCast())
    {
      v5 = v26;
      v4 = v27;
    }
  }

  if (*(a1 + 16) && (v14 = sub_FD68(0xD00000000000002BLL, 0x80000000000377F0), (v15 & 1) != 0))
  {
    v26 = *(*(a1 + 56) + 8 * v14);
    swift_unknownObjectRetain();
    sub_3828(&qword_47B70);
    v16 = sub_34C78();
    v17 = swift_dynamicCast();
    (*(*(v16 - 8) + 56))(v11, v17 ^ 1u, 1, v16);
  }

  else
  {
LABEL_8:
    v18 = sub_34C78();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  }

  if (*(a1 + 16) && (v19 = sub_FD68(0xD000000000000029, 0x8000000000037820), (v20 & 1) != 0))
  {
    v26 = *(*(a1 + 56) + 8 * v19);
    swift_unknownObjectRetain();
    sub_3828(&qword_47B70);
    v21 = sub_34C78();
    v22 = swift_dynamicCast();
    (*(*(v21 - 8) + 56))(v9, v22 ^ 1u, 1, v21);
  }

  else
  {
    v23 = sub_34C78();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  }

  sub_9BAC(v5, v4, v11, v9, a2);

  sub_11E70(v9, &qword_47B68);
  return sub_11E70(v11, &qword_47B68);
}

uint64_t static DiveUnderwaterTime.diveUnderwaterTime(fromComplicationMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3828(&qword_47B78);
  __chkstk_darwin(v4 - 8);
  v6 = v19 - v5;
  v7 = sub_35198();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v19 - v12;
  static UnderwaterTime.underwaterTime(fromComplicationMetadata:)(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_11E70(v6, &qword_47B78);
    v14 = 1;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    if (*(a1 + 16))
    {
      v15 = sub_FD68(0xD000000000000039, 0x8000000000037850);
      if (v16)
      {
        v19[1] = *(*(a1 + 56) + 8 * v15);
        swift_unknownObjectRetain();
        sub_3828(&qword_47B70);
        swift_dynamicCast();
      }
    }

    (*(v8 + 16))(v11, v13, v7);
    sub_352A8();
    (*(v8 + 8))(v13, v7);
    v14 = 0;
  }

  v17 = sub_352E8();
  return (*(*(v17 - 8) + 56))(a2, v14, 1, v17);
}

uint64_t sub_8D4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v3 = sub_34CD8();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3828(&qword_47EA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for DisplayTime(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3828(&qword_47E78);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v15 = sub_34E08();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_928C(a1);
  sub_34DF8();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = &qword_47E78;
    v20 = v14;
  }

  else
  {
    v34 = v11;
    v21 = a1;
    v22 = *(v16 + 32);
    v22(v18, v14, v15);
    sub_8024(v21, v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v29 = v7;
      v30 = v34;
      sub_1163C(v29, v34, type metadata accessor for DisplayTime);
      v31 = v38;
      v22(v38, v18, v15);
      v32 = type metadata accessor for LiveMetrics(0);
      sub_1163C(v30, &v31[*(v32 + 20)], type metadata accessor for DisplayTime);
      return (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    }

    (*(v16 + 8))(v18, v15);
    v19 = &qword_47EA0;
    v20 = v7;
  }

  sub_11E70(v20, v19);
  v23 = v35;
  sub_34EB8();
  v24 = sub_34CC8();
  v25 = sub_35508();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_0, v24, v25, "LiveMetrics: Failed to decode LiveMetrics from metadata", v26, 2u);
  }

  (*(v36 + 8))(v23, v37);
  v27 = type metadata accessor for LiveMetrics(0);
  return (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
}

uint64_t static WaterDepth.currentDepth(fromMetadata:)(uint64_t a1)
{
  sub_928C(a1);
  sub_34DF8();
}

unint64_t sub_928C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_3828(&qword_47F10);
    v2 = sub_35798();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_unknownObjectRetain();
        sub_3828(&qword_47B70);
        swift_dynamicCast();
        sub_11DF8(&v22, v24);
        sub_11DF8(v24, v25);
        sub_11DF8(v25, &v23);
        result = sub_FD68(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_6408(v11);
          result = sub_11DF8(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_11DF8(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t UnderwaterTime.Category.stringValue.getter(unsigned __int8 a1)
{
  v1 = 1869768058;
  v2 = 0x76697461746E6574;
  if (a1 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (a1)
  {
    v1 = 0x657669746361;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t static UnderwaterTime.Category.fromString(_:)(uint64_t a1, void *a2)
{

  v4._rawValue = &off_411C8;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v5 = sub_357A8(v4, v7);

  if (v5 >= 4)
  {
    return 4;
  }

  else
  {
    return v5;
  }
}

Swift::Int sub_95D0()
{
  sub_35818();
  sub_35408();

  return sub_35838();
}

uint64_t sub_9694()
{
  sub_35408();
}

Swift::Int sub_9744()
{
  sub_35818();
  sub_35408();

  return sub_35838();
}

uint64_t sub_9804@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9DepthCore14UnderwaterTimeO0A27ComplicationBundleCompanionE8CategoryO8rawValueAFSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_9834(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1869768058;
  v4 = 0xE900000000000065;
  v5 = 0x76697461746E6574;
  if (*v1 != 2)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  if (*v1)
  {
    v3 = 0x657669746361;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t UnderwaterTime.category.getter()
{
  v1 = v0;
  v2 = sub_35198();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for UnderwaterTime.active(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = sub_34C78();
    (*(*(v7 - 8) + 8))(v5, v7);
    return 1;
  }

  else if (v6 == enum case for UnderwaterTime.tentative(_:))
  {
    (*(v3 + 96))(v5, v2);
    v9 = *(sub_3828(&qword_47B60) + 48);
    v10 = sub_34C78();
    v11 = *(*(v10 - 8) + 8);
    v11(&v5[v9], v10);
    v11(v5, v10);
    return 2;
  }

  else if (v6 == enum case for UnderwaterTime.completed(_:))
  {
    (*(v3 + 96))(v5, v2);
    v12 = *(sub_3828(&qword_47B60) + 48);
    v13 = sub_34C78();
    v14 = *(*(v13 - 8) + 8);
    v14(&v5[v12], v13);
    v14(v5, v13);
    return 3;
  }

  else if (v6 == enum case for UnderwaterTime.zero(_:))
  {
    return 0;
  }

  else
  {
    result = sub_35758();
    __break(1u);
  }

  return result;
}

uint64_t sub_9BAC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_34CD8();
  v106 = *(v10 - 8);
  v107 = v10;
  __chkstk_darwin(v10);
  v109 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_34C78();
  v110 = *(v108 - 8);
  v12 = __chkstk_darwin(v108);
  v98 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = &v94 - v14;
  v100 = sub_3828(&qword_47B68);
  v15 = __chkstk_darwin(v100);
  v99 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v105 = &v94 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v94 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v94 - v23;
  __chkstk_darwin(v22);
  v26 = &v94 - v25;
  v27 = sub_3828(&qword_47F18);
  __chkstk_darwin(v27);
  v29 = &v94 - v28;

  v101 = a1;
  v104 = a2;
  v30 = _s9DepthCore14UnderwaterTimeO0A27ComplicationBundleCompanionE8CategoryO8rawValueAFSgSS_tcfC_0(a1, a2);
  v31 = v30;
  if (v30 != 4)
  {
    v95 = a3;
    v96 = v21;
    v103 = a5;
    v35 = *(v27 + 48);
    v36 = *(v27 + 64);
    *v29 = v30;
    v37 = v35;
    v38 = a3;
    v39 = v36;
    sub_11E08(v38, &v29[v35], &qword_47B68);
    v102 = v29;
    sub_11E08(a4, &v29[v39], &qword_47B68);
    v40 = a4;
    if (v31 <= 1)
    {
      v41 = v110;
      if (!v31)
      {
        v42 = enum case for UnderwaterTime.zero(_:);
        v43 = sub_35198();
        v44 = *(v43 - 8);
        v45 = v103;
        (*(v44 + 104))(v103, v42, v43);
        (*(v44 + 56))(v45, 0, 1, v43);
        v46 = v102;
        sub_11E70(&v102[v39], &qword_47B68);
        v47 = &v46[v37];
        v48 = &qword_47B68;
        return sub_11E70(v47, v48);
      }

      v59 = v102;
      v53 = v108;
      v54 = (*(v110 + 48))(&v102[v37], 1, v108);
      v52 = v103;
      if (v54 != 1)
      {
        (*(v41 + 32))(v103, v59 + v37, v53);
        v55 = enum case for UnderwaterTime.active(_:);
        v56 = sub_35198();
        v57 = *(v56 - 8);
        (*(v57 + 104))(v52, v55, v56);
        (*(v57 + 56))(v52, 0, 1, v56);
        v48 = &qword_47B68;
        v47 = v59 + v39;
        return sub_11E70(v47, v48);
      }

LABEL_18:
      v62 = v52;
      v63 = v109;
      sub_34EC8();
      v64 = v96;
      sub_11E08(v95, v96, &qword_47B68);
      v65 = v105;
      sub_11E08(v40, v105, &qword_47B68);
      v66 = v104;

      v67 = sub_34CC8();
      v68 = sub_354F8();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        LODWORD(v108) = v68;
        v70 = v69;
        v110 = swift_slowAlloc();
        v111 = v110;
        *v70 = 136315650;
        *(v70 + 4) = sub_31484(v101, v66, &v111);
        *(v70 + 12) = 2080;
        v71 = v99;
        sub_11E08(v64, v99, &qword_47B68);
        v72 = sub_353D8();
        v74 = v73;
        sub_11E70(v64, &qword_47B68);
        v75 = sub_31484(v72, v74, &v111);
        v59 = v102;

        *(v70 + 14) = v75;
        *(v70 + 22) = 2080;
        sub_11E08(v65, v71, &qword_47B68);
        v76 = sub_353D8();
        v78 = v77;
        sub_11E70(v65, &qword_47B68);
        v79 = sub_31484(v76, v78, &v111);
        v80 = v103;

        *(v70 + 24) = v79;
        _os_log_impl(&dword_0, v67, v108, "UnderwaterTime: Unable to create time from category=%s startDate=%s endDate=%s", v70, 0x20u);
        swift_arrayDestroy();

        (*(v106 + 8))(v109, v107);
      }

      else
      {

        sub_11E70(v65, &qword_47B68);
        sub_11E70(v64, &qword_47B68);
        (*(v106 + 8))(v63, v107);
        v80 = v62;
      }

      v81 = sub_35198();
      (*(*(v81 - 8) + 56))(v80, 1, 1, v81);
      v48 = &qword_47F18;
      v47 = v59;
      return sub_11E70(v47, v48);
    }

    v49 = v110;
    if (v31 == 2)
    {
      v50 = *(v110 + 48);
      v59 = v102;
      v60 = v108;
      v51 = v50(&v102[v37], 1, v108);
      v52 = v103;
      if (v51 == 1)
      {
        goto LABEL_18;
      }

      sub_11E08(v59 + v37, v26, &qword_47B68);
      if (v50((v59 + v39), 1, v60) == 1)
      {
        v24 = v26;
        goto LABEL_17;
      }

      v82 = *(v49 + 32);
      v83 = v97;
      v82(v97, v26, v60);
      v84 = v98;
      v82(v98, (v59 + v39), v60);
      v85 = *(sub_3828(&qword_47B60) + 48);
      v82(v52, v83, v60);
      v82((v52 + v85), v84, v60);
      v86 = &enum case for UnderwaterTime.tentative(_:);
    }

    else
    {
      v58 = *(v110 + 48);
      v59 = v102;
      v60 = v108;
      v61 = v58(&v102[v37], 1, v108);
      v52 = v103;
      if (v61 == 1)
      {
        goto LABEL_18;
      }

      sub_11E08(v59 + v37, v24, &qword_47B68);
      if (v58((v59 + v39), 1, v60) == 1)
      {
LABEL_17:
        (*(v49 + 8))(v24, v60);
        goto LABEL_18;
      }

      v87 = *(v49 + 32);
      v88 = v97;
      v87(v97, v24, v60);
      v89 = v98;
      v87(v98, (v59 + v39), v60);
      v90 = *(sub_3828(&qword_47B60) + 48);
      v87(v52, v88, v60);
      v87((v52 + v90), v89, v60);
      v86 = &enum case for UnderwaterTime.completed(_:);
    }

    v91 = *v86;
    v92 = sub_35198();
    v93 = *(v92 - 8);
    (*(v93 + 104))(v52, v91, v92);
    (*(v93 + 56))(v52, 0, 1, v92);
    v48 = &qword_47B68;
    v47 = v59 + v37;
    return sub_11E70(v47, v48);
  }

  v32 = sub_35198();
  v33 = *(*(v32 - 8) + 56);

  return v33(a5, 1, 1, v32);
}

uint64_t sub_A6A4@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = sub_34CD8();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HistoricalDepthMetrics(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DepthComplicationMetrics(0);
  v9 = __chkstk_darwin(v8);
  v36 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v36 - v12;
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v16 = sub_3828(&qword_47EB0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v36 - v20;
  v22 = v1;
  sub_11D90(v1, v15, type metadata accessor for DepthComplicationMetrics);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_11714(v15, type metadata accessor for DepthComplicationMetrics);
  }

  else
  {
    sub_116A4(v15, v21);
    sub_11E08(v21, v19, &qword_47EB0);
    if ((*(v5 + 48))(v19, 1, v4) != 1)
    {
      sub_1163C(v19, v7, type metadata accessor for HistoricalDepthMetrics);
      v33 = v40;
      sub_6E80(v40);
      sub_11714(v7, type metadata accessor for HistoricalDepthMetrics);
      sub_11E70(v21, &qword_47EB0);
      v32 = 0;
      goto LABEL_9;
    }

    sub_11E70(v21, &qword_47EB0);
    sub_11E70(v19, &qword_47EB0);
  }

  v23 = v37;
  sub_34EB8();
  sub_11D90(v22, v13, type metadata accessor for DepthComplicationMetrics);
  v24 = sub_34CC8();
  v25 = sub_35508();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v41 = v27;
    *v26 = 136315138;
    sub_11D90(v13, v36, type metadata accessor for DepthComplicationMetrics);
    v28 = sub_353C8();
    v30 = v29;
    sub_11714(v13, type metadata accessor for DepthComplicationMetrics);
    v31 = sub_31484(v28, v30, &v41);

    *(v26 + 4) = v31;
    _os_log_impl(&dword_0, v24, v25, "DepthComplicationMetrics: Not rendering summary for non-historic metrics (%s)", v26, 0xCu);
    sub_6408(v27);
  }

  else
  {

    sub_11714(v13, type metadata accessor for DepthComplicationMetrics);
  }

  (*(v38 + 8))(v23, v39);
  v32 = 1;
  v33 = v40;
LABEL_9:
  v34 = sub_350E8();
  return (*(*(v34 - 8) + 56))(v33, v32, 1, v34);
}

uint64_t sub_ABDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for LiveMetrics(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3828(&qword_47EB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_34E08();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DepthComplicationMetrics(0);
  __chkstk_darwin(v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_11D90(v2, v16, type metadata accessor for DepthComplicationMetrics);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1163C(v16, v6, type metadata accessor for LiveMetrics);
      (*(v11 + 16))(a1, v6, v10);
      return sub_11714(v6, type metadata accessor for LiveMetrics);
    }

    return (*(v11 + 104))(a1, enum case for WaterDepth.unknown(_:), v10);
  }

  sub_116A4(v16, v9);
  v19 = type metadata accessor for HistoricalDepthMetrics(0);
  if ((*(*(v19 - 8) + 48))(v9, 1, v19) == 1)
  {
    sub_11E70(v9, &qword_47EB0);
    return (*(v11 + 104))(a1, enum case for WaterDepth.unknown(_:), v10);
  }

  (*(v11 + 16))(v13, v9, v10);
  sub_11714(v9, type metadata accessor for HistoricalDepthMetrics);
  return (*(v11 + 32))(a1, v13, v10);
}

uint64_t sub_AEF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_350E8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HistoricalDepthMetrics(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DepthComplicationMetrics(0);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_11D90(v1, v13, type metadata accessor for DepthComplicationMetrics);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_11714(v13, type metadata accessor for DepthComplicationMetrics);
    }

    goto LABEL_5;
  }

  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
LABEL_5:
    v15 = enum case for DeviceType.ultra(_:);
    v16 = sub_35098();
    return (*(*(v16 - 8) + 104))(a1, v15, v16);
  }

  sub_1163C(v13, v10, type metadata accessor for HistoricalDepthMetrics);
  sub_6E80(v6);
  sub_350C8();
  (*(v4 + 8))(v6, v3);
  return sub_11714(v10, type metadata accessor for HistoricalDepthMetrics);
}

void *sub_B1A8()
{
  v53 = type metadata accessor for LiveMetrics(0);
  __chkstk_darwin(v53);
  v2 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_34CD8();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = __chkstk_darwin(v3);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v47 - v6;
  v7 = type metadata accessor for HistoricalDepthMetrics(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DepthComplicationMetrics(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v47 - v14;
  v55 = &_swiftEmptyDictionarySingleton;
  sub_11D90(v0, &v47 - v14, type metadata accessor for DepthComplicationMetrics);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_11714(v15, type metadata accessor for DepthComplicationMetrics);
  }

  v16 = sub_35398();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = &_swiftEmptyDictionarySingleton;
  sub_103C8(v16, 0xD000000000000012, 0x8000000000037950, isUniquelyReferenced_nonNull_native, &v54);
  v18 = v54;
  v55 = v54;
  sub_11D90(v0, v13, type metadata accessor for DepthComplicationMetrics);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1163C(v13, v2, type metadata accessor for LiveMetrics);
      v54 = &_swiftEmptyDictionarySingleton;
      v20 = sub_34DD8();
      sub_7C9C(v20);

      v21 = sub_743C();
      sub_7C9C(v21);

      sub_7C9C(v54);

      v22 = type metadata accessor for LiveMetrics;
LABEL_12:
      sub_11714(v2, v22);
    }
  }

  else if ((*(v8 + 48))(v13, 1, v7) != 1)
  {
    v2 = v52;
    sub_1163C(v13, v52, type metadata accessor for HistoricalDepthMetrics);
    isa = sub_354A8().super.super.isa;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v18;
    sub_103C8(isa, 0xD000000000000012, 0x80000000000379B0, v24, &v54);
    v25 = v54;
    v26 = sub_354A8().super.super.isa;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v25;
    sub_103C8(v26, 0xD00000000000001CLL, 0x80000000000379D0, v27, &v54);
    v28 = v54;
    v29 = sub_354D8().super.super.isa;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v28;
    sub_103C8(v29, 0xD000000000000017, 0x8000000000037970, v30, &v54);
    v55 = v54;
    sub_35088();
    v31 = sub_35398();

    v32 = v55;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v32;
    sub_103C8(v31, 0xD000000000000014, 0x8000000000037990, v33, &v54);
    v55 = v54;
    v34 = sub_34DC8();
    sub_7C9C(v34);

    v35 = *&v2[*(v7 + 32)];
    if (v35)
    {
      v36 = v48;
      sub_34EB8();
      v37 = sub_34CC8();
      v38 = sub_35508();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_0, v37, v38, "DepthComplicationMetrics: Adding graph metadata", v39, 2u);
      }

      (*(v50 + 8))(v36, v51);
      sub_34B98();
      swift_allocObject();
      sub_34B88();
      v54 = v35;
      sub_3828(&unk_47C48);
      sub_11CC4(&qword_47EF8, &qword_47F00);
      v40 = sub_34B78();
      v42 = v41;

      v43 = sub_34C38().super.isa;
      v44 = v55;
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v54 = v44;
      sub_103C8(v43, 0xD000000000000018, 0x80000000000379F0, v45, &v54);
      sub_115E8(v40, v42);
      v55 = v54;
    }

    v22 = type metadata accessor for HistoricalDepthMetrics;
    goto LABEL_12;
  }

  return v55;
}

uint64_t sub_BA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_35198();
  v93 = *(v3 - 8);
  v94 = v3;
  __chkstk_darwin(v3);
  v92 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_34CD8();
  v5 = *(v98 - 8);
  v6 = __chkstk_darwin(v98);
  v8 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v86 - v10;
  __chkstk_darwin(v9);
  v13 = v86 - v12;
  v14 = sub_3828(&qword_47E70);
  __chkstk_darwin(v14 - 8);
  v88 = v86 - v15;
  v16 = sub_35098();
  v90 = *(v16 - 8);
  v91 = v16;
  __chkstk_darwin(v16);
  v89 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_3828(&qword_47E78);
  __chkstk_darwin(v18 - 8);
  v20 = v86 - v19;
  v21 = sub_34E08();
  v22 = *(v21 - 8);
  v96 = v21;
  v97 = v22;
  __chkstk_darwin(v21);
  v95 = v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_3828(&qword_47E80);
  __chkstk_darwin(v24 - 8);
  v26 = v86 - v25;
  v27 = type metadata accessor for LiveMetrics(0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v99 = a1, v31 = sub_FD68(0xD000000000000012, 0x8000000000037950), (v32 & 1) == 0) || (v102 = *(*(v99 + 56) + 8 * v31), swift_unknownObjectRetain(), v33 = sub_3828(&qword_47B70), (swift_dynamicCast() & 1) == 0))
  {
    sub_34EB8();
    v42 = sub_34CC8();
    v43 = sub_354F8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "DepthComplicationMetrics: Unable to recreate historical metrics from metadata, category is missing.", v44, 2u);
    }

    (*(v5 + 8))(v8, v98);
    goto LABEL_14;
  }

  v86[1] = v33;
  v34 = v101[0];
  v35 = v101[1];

  v36._rawValue = &off_41248;
  v87 = v34;
  v103._countAndFlagsBits = v34;
  v103._object = v35;
  v37 = sub_357A8(v36, v103);

  switch(v37)
  {
    case 0:

      v51 = v99;
      sub_928C(v99);
      sub_34DB8();

      v53 = v96;
      v52 = v97;
      if ((*(v97 + 48))(v20, 1, v96) == 1)
      {
        sub_11E70(v20, &qword_47E78);
LABEL_50:
        v85 = type metadata accessor for HistoricalDepthMetrics(0);
        v41 = v100;
        (*(*(v85 - 8) + 56))(v100, 1, 1, v85);
        v50 = type metadata accessor for DepthComplicationMetrics(0);
        goto LABEL_51;
      }

      v59 = v95;
      (*(v52 + 32))(v95, v20, v53);
      if (!*(v51 + 16) || (v60 = sub_FD68(0xD000000000000017, 0x8000000000037970), (v61 & 1) == 0) || (v101[0] = *(*(v51 + 56) + 8 * v60), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0) || !*(v51 + 16) || (v62 = v102, v63 = sub_FD68(0xD000000000000014, 0x8000000000037990), (v64 & 1) == 0) || (v102 = *(*(v51 + 56) + 8 * v63), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
      {
LABEL_49:
        (*(v52 + 8))(v59, v53);
        goto LABEL_50;
      }

      v65 = v88;
      sub_35078();
      v67 = v90;
      v66 = v91;
      v68 = *(v90 + 48);
      if (v68(v65, 1, v91) == 1)
      {
        v69 = v89;
        (*(v67 + 104))(v89, enum case for DeviceType.unknown(_:), v66);
        if (v68(v65, 1, v66) != 1)
        {
          sub_11E70(v65, &qword_47E70);
        }
      }

      else
      {
        v69 = v89;
        (*(v67 + 32))(v89, v65, v66);
      }

      if (*(v99 + 16))
      {
        v70 = sub_FD68(0xD000000000000012, 0x80000000000379B0);
        v71 = v99;
        if ((v72 & 1) == 0 || (v101[0] = *(*(v99 + 56) + 8 * v70), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
        {
LABEL_43:
          if (*(v71 + 16))
          {
            v77 = sub_FD68(0xD000000000000012, 0x80000000000379B0);
            if (v78)
            {
              v101[0] = *(*(v71 + 56) + 8 * v77);
              swift_unknownObjectRetain();
              if ((swift_dynamicCast() & 1) == 0)
              {
                (*(v90 + 8))(v89, v91);
                (*(v97 + 8))(v95, v96);
                goto LABEL_50;
              }

              v76 = v102;
              v73 = v102;
LABEL_47:
              v80 = v96;
              v79 = v97;
              v81 = v100;
              v82 = v95;
              (*(v97 + 16))(v100, v95, v96);
              v83 = sub_110BC(v99);
              (*(v79 + 8))(v82, v80);
              v84 = type metadata accessor for HistoricalDepthMetrics(0);
              (*(v90 + 32))(v81 + v84[9], v89, v91);
              *(v81 + v84[5]) = v73;
              *(v81 + v84[6]) = v76;
              *(v81 + v84[7]) = v62;
              *(v81 + v84[8]) = v83;
              (*(*(v84 - 1) + 56))(v81, 0, 1, v84);
              v50 = type metadata accessor for DepthComplicationMetrics(0);
              swift_storeEnumTagMultiPayload();
              v46 = *(*(v50 - 8) + 56);
              v47 = v81;
LABEL_52:
              v48 = 0;
              v45 = v50;
              return v46(v47, v48, 1, v45);
            }
          }

          goto LABEL_48;
        }

        if (*(v71 + 16))
        {
          v73 = v102;
          v74 = sub_FD68(0xD00000000000001CLL, 0x80000000000379D0);
          v71 = v99;
          if (v75)
          {
            v101[0] = *(*(v99 + 56) + 8 * v74);
            swift_unknownObjectRetain();
            if (swift_dynamicCast())
            {
              v76 = v102;
              goto LABEL_47;
            }

            v53 = v96;
            v52 = v97;
            v71 = v99;
            v67 = v90;
            v66 = v91;
            v69 = v89;
            v59 = v95;
          }

          goto LABEL_43;
        }
      }

LABEL_48:
      (*(v67 + 8))(v69, v66);
      goto LABEL_49;
    case 2:

      v50 = type metadata accessor for DepthComplicationMetrics(0);
      v41 = v100;
LABEL_51:
      swift_storeEnumTagMultiPayload();
      v46 = *(*(v50 - 8) + 56);
      v47 = v41;
      goto LABEL_52;
    case 1:

      sub_8D4C(v99, v26);
      if ((*(v28 + 48))(v26, 1, v27) == 1)
      {
        sub_11E70(v26, &qword_47E80);
        sub_34EB8();
        v38 = sub_34CC8();
        v39 = sub_354F8();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_0, v38, v39, "DepthComplicationMetrics: Failed to decode live current depth value", v40, 2u);
        }

        (*(v5 + 8))(v13, v98);
        v41 = v100;
        (*(v97 + 104))(v100, enum case for WaterDepth.unknown(_:), v96);
        (*(v93 + 104))(v92, enum case for UnderwaterTime.zero(_:), v94);
        sub_352A8();
        type metadata accessor for DisplayTime(0);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_1163C(v26, v30, type metadata accessor for LiveMetrics);
        v41 = v100;
        sub_1163C(v30, v100, type metadata accessor for LiveMetrics);
      }

      v50 = type metadata accessor for DepthComplicationMetrics(0);
      goto LABEL_51;
  }

  sub_34EB8();

  v54 = sub_34CC8();
  v55 = sub_354F8();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v101[0] = v57;
    *v56 = 136315138;
    v58 = sub_31484(v87, v35, v101);

    *(v56 + 4) = v58;
    _os_log_impl(&dword_0, v54, v55, "DepthComplicationMetrics: Unable to recreate historical metrics from metadata, category %s is invalid", v56, 0xCu);
    sub_6408(v57);
  }

  else
  {
  }

  (*(v5 + 8))(v11, v98);
LABEL_14:
  v45 = type metadata accessor for DepthComplicationMetrics(0);
  v46 = *(*(v45 - 8) + 56);
  v47 = v100;
  v48 = 1;
  return v46(v47, v48, 1, v45);
}

uint64_t sub_C7BC()
{
  v1 = type metadata accessor for LiveMetrics(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3828(&qword_47EB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for DepthComplicationMetrics(0);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_34E08();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  sub_11D90(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics, v9, type metadata accessor for DepthComplicationMetrics);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1163C(v9, v3, type metadata accessor for LiveMetrics);
      (*(v11 + 16))(v16, v3, v10);
      sub_11714(v3, type metadata accessor for LiveMetrics);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_116A4(v9, v6);
  v18 = type metadata accessor for HistoricalDepthMetrics(0);
  if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
  {
    sub_11E70(v6, &qword_47EB0);
LABEL_6:
    (*(v11 + 104))(v16, enum case for WaterDepth.unknown(_:), v10);
    goto LABEL_8;
  }

  (*(v11 + 16))(v14, v6, v10);
  sub_11714(v6, type metadata accessor for HistoricalDepthMetrics);
  (*(v11 + 32))(v16, v14, v10);
LABEL_8:
  v19 = (*(v11 + 88))(v16, v10);
  v21 = v19 == enum case for WaterDepth.shallow(_:) || v19 == enum case for WaterDepth.nominal(_:) || v19 == enum case for WaterDepth.depthExceedingNominalRange(_:);
  v22 = !v21;
  if (v21)
  {
    goto LABEL_22;
  }

  v23 = 1;
  if (v19 != enum case for WaterDepth.unknown(_:) && v19 != enum case for WaterDepth.notSubmerged(_:))
  {
    if (v19 == enum case for WaterDepth.depthExceedingSensorLimit(_:))
    {
      return 0;
    }

LABEL_22:
    (*(v11 + 8))(v16, v10);
    return v22;
  }

  return v23;
}

uint64_t sub_CBBC()
{
  v1 = type metadata accessor for LiveMetrics(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3828(&qword_47EB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for DepthComplicationMetrics(0);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_34E08();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  sub_11D90(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics, v9, type metadata accessor for DepthComplicationMetrics);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1163C(v9, v3, type metadata accessor for LiveMetrics);
      (*(v11 + 16))(v16, v3, v10);
      sub_11714(v3, type metadata accessor for LiveMetrics);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_116A4(v9, v6);
  v18 = type metadata accessor for HistoricalDepthMetrics(0);
  if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
  {
    sub_11E70(v6, &qword_47EB0);
LABEL_6:
    (*(v11 + 104))(v16, enum case for WaterDepth.unknown(_:), v10);
    goto LABEL_8;
  }

  (*(v11 + 16))(v14, v6, v10);
  sub_11714(v6, type metadata accessor for HistoricalDepthMetrics);
  (*(v11 + 32))(v16, v14, v10);
LABEL_8:
  v19 = (*(v11 + 88))(v16, v10);
  v21 = v19 != enum case for WaterDepth.shallow(_:) && v19 != enum case for WaterDepth.nominal(_:);
  if (!v21 || v19 == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
LABEL_19:
    (*(v11 + 8))(v16, v10);
    return v21;
  }

  v23 = 0;
  if (v19 != enum case for WaterDepth.unknown(_:) && v19 != enum case for WaterDepth.notSubmerged(_:))
  {
    if (v19 == enum case for WaterDepth.depthExceedingSensorLimit(_:))
    {
      return 1;
    }

    goto LABEL_19;
  }

  return v23;
}

id sub_D01C(uint64_t a1)
{
  switch(a1)
  {
    case 8:

      return sub_D2EC();
    case 11:

      return sub_D14C();
    case 10:

      return sub_D16C();
    default:
      sub_356B8(45);

      v3._countAndFlagsBits = sub_357B8();
      sub_35418(v3);

      result = sub_35758();
      __break(1u);
      break;
  }

  return result;
}

id sub_D18C(void (*a1)(void), Class *a2)
{
  a1(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() fullColorImageProviderWithImageViewClass:ObjCClassFromMetadata];
  v12 = sub_11774(&_swiftEmptyArrayStorage);
  v5 = sub_B1A8();
  sub_7C9C(v5);

  isa = sub_35498().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v12;
  sub_103C8(isa, 0x6E4F737961776C61, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v11);
  sub_3828(&qword_47B70);
  v8 = sub_35348().super.isa;

  [v4 setMetadata:v8];

  v9 = [objc_allocWithZone(*a2) initWithImageProvider:v4];
  return v9;
}

id sub_D2EC()
{
  v1 = type metadata accessor for DepthComplicationMetrics(0);
  v2 = __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  if ((sub_C7BC() & 1) != 0 || (sub_11D90(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics, v6, type metadata accessor for DepthComplicationMetrics), v7 = swift_getEnumCaseMultiPayload(), sub_11714(v6, type metadata accessor for DepthComplicationMetrics), v7 == 2))
  {
    v8 = sub_EEB8();
    v9 = sub_D4EC();
    v10 = sub_E0FC();
    sub_11D90(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics, v4, type metadata accessor for DepthComplicationMetrics);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_11714(v4, type metadata accessor for DepthComplicationMetrics);
    if (EnumCaseMultiPayload == 2)
    {
      v12 = sub_118CC();
    }

    else
    {
      v12 = sub_11B08();
    }

    v13 = v12;
    v14 = [objc_allocWithZone(CLKComplicationTemplateGraphicCornerGaugeImage) initWithGaugeProvider:v8 leadingTextProvider:v9 trailingTextProvider:v10 imageProvider:v12];
  }

  else
  {
    v8 = sub_EEB8();
    v9 = sub_D4EC();
    v10 = sub_E0FC();
    v13 = sub_E940();
    v14 = [objc_allocWithZone(CLKComplicationTemplateGraphicCornerGaugeText) initWithGaugeProvider:v8 leadingTextProvider:v9 trailingTextProvider:v10 outerTextProvider:v13];
  }

  v15 = v14;

  return v15;
}

id sub_D4EC()
{
  v62 = sub_3828(&qword_47EF0);
  __chkstk_darwin(v62);
  v61 = &v61 - v0;
  v69 = type metadata accessor for DepthComplicationMetrics(0);
  v1 = __chkstk_darwin(v69);
  v67 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v70 = &v61 - v3;
  v95 = sub_350A8();
  v97 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_34EA8();
  v96 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_35068();
  v6 = *(v92 - 8);
  __chkstk_darwin(v92);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_35098();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_34F88();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_34E08();
  v65 = *(v90 - 8);
  v17 = __chkstk_darwin(v90);
  v64 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v61 - v19;
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v77 = qword_48E80;
  v75 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter;
  v68 = *(qword_48E80 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter);

  sub_34F58();
  v21 = *(v10 + 104);
  v74 = enum case for DeviceType.ultra(_:);
  v76 = v10 + 104;
  v73 = v21;
  v21(v12);
  sub_35058();
  sub_35048();
  v22 = *(v6 + 8);
  v84 = v8;
  v85 = v6 + 8;
  v72 = v22;
  v22(v8, v92);
  v23 = *(v10 + 8);
  v23(v12, v9);
  v24 = *(v14 + 8);
  v80 = v16;
  v82 = v14 + 8;
  v83 = v13;
  v71 = v24;
  v24(v16, v13);
  v25 = v20;
  v26 = v89 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics;
  sub_AEF4(v12);
  v27 = *(v97 + 104);
  v97 += 104;
  v79 = v27;
  v27(v93, enum case for UnitOption.noUnit(_:), v95);
  v28 = v91;
  sub_34E98();
  v63 = v25;
  sub_34FD8();
  v29 = *(v96 + 8);
  v96 += 8;
  v78 = v29;
  v29(v28, v94);
  v66 = v12;
  v86 = v9;
  v87 = v10 + 8;
  v81 = v23;
  v23(v12, v9);
  v30 = v65;
  v31 = (v65 + 8);
  v32 = v90;
  v89 = *(v65 + 8);
  v89(v25, v90);

  v33 = sub_35398();

  v34 = [objc_opt_self() textProviderWithText:v33];

  v68 = v34;
  v35 = v64;
  sub_ABDC(v64);
  v36 = v70;
  sub_11D90(v26, v70, type metadata accessor for DepthComplicationMetrics);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_11714(v36, type metadata accessor for DepthComplicationMetrics);
  v70 = v26;
  v38 = v67;
  sub_11D90(v26, v67, type metadata accessor for DepthComplicationMetrics);
  LODWORD(v34) = swift_getEnumCaseMultiPayload();
  sub_11714(v38, type metadata accessor for DepthComplicationMetrics);
  v39 = v63;
  v88 = v31;
  if (v34)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v40 = v89;
      v41 = *(v62 + 48);
      v42 = v61;
      (*(v30 + 16))(v61, v35, v32);
      v42[v41] = 0;
      v43 = (*(v30 + 88))(v42, v32);
      v44 = v92;
      v45 = v80;
      v46 = v66;
      if (v43 == enum case for WaterDepth.shallow(_:))
      {
        v47 = v40;
        v40(v42, v32);
LABEL_7:
        v48 = v46;
        if (qword_47698 != -1)
        {
          swift_once();
        }

        v49 = &qword_48F18;
        goto LABEL_27;
      }

      if (v43 != enum case for WaterDepth.nominal(_:) && v43 != enum case for WaterDepth.depthExceedingNominalRange(_:))
      {
        v47 = v40;
        v42 = v88;
        if (v43 == enum case for WaterDepth.unknown(_:) || v43 == enum case for WaterDepth.notSubmerged(_:))
        {
          goto LABEL_7;
        }

        if (v43 == enum case for WaterDepth.depthExceedingSensorLimit(_:))
        {
          goto LABEL_24;
        }

        sub_357C8();
        __break(1u);
      }

      v47 = v40;
      v40(v42, v32);
LABEL_24:
      v48 = v46;
      if (qword_47688 != -1)
      {
        swift_once();
      }

      v49 = &qword_48F08;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_11:
    v47 = v89;
    v48 = v66;
    v44 = v92;
    v45 = v80;
    if (qword_47650 != -1)
    {
      swift_once();
    }

    v49 = &qword_48ED0;
    goto LABEL_27;
  }

  v47 = v89;
  v48 = v66;
  v44 = v92;
  v45 = v80;
  if (qword_47658 != -1)
  {
    swift_once();
  }

  v49 = &qword_48ED8;
LABEL_27:
  v50 = *v49;
  v47(v35, v32);
  v51 = v68;
  [v68 setTintColor:v50];

  sub_34F58();
  v52 = v86;
  v73(v48, v74, v86);
  v53 = v84;
  sub_35058();
  sub_35048();
  v72(v53, v44);
  v54 = v81;
  v81(v48, v52);
  v71(v45, v83);
  sub_AEF4(v48);
  v55 = enum case for UnitSpace.noSpace(_:);
  v56 = sub_35338();
  v57 = v93;
  (*(*(v56 - 8) + 104))(v93, v55, v56);
  v79(v57, enum case for UnitOption.unitSpace(_:), v95);
  v58 = v91;
  sub_34E98();
  sub_34FD8();
  v78(v58, v94);
  v54(v48, v52);
  v89(v39, v90);

  v59 = sub_35398();

  [v51 setAccessibilityLabel:v59];

  return v51;
}

uint64_t sub_E0FC()
{
  v1 = v0;
  v47 = sub_3828(&qword_47EF0);
  __chkstk_darwin(v47);
  v48 = &v45[-v2];
  v56 = type metadata accessor for DepthComplicationMetrics(0);
  v3 = __chkstk_darwin(v56);
  v55 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v54 = &v45[-v5];
  v59 = sub_350A8();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v50 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_34EA8();
  v53 = *(v58 - 8);
  __chkstk_darwin(v58);
  v8 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_34E08();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v52 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v45[-v13];
  v51 = sub_35098();
  v15 = *(v51 - 8);
  __chkstk_darwin(v51);
  v17 = &v45[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v49 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics;

  sub_AEF4(v17);
  v18 = *(v10 + 104);
  v46 = enum case for WaterDepth.depthExceedingSensorLimit(_:);
  v18(v14);
  (*(v57 + 104))(v50, enum case for UnitOption.noUnit(_:), v59);
  sub_34E98();
  v19 = sub_34FD8();
  v21 = v20;
  (*(v53 + 8))(v8, v58);
  v50 = v10;
  v22 = *(v10 + 8);
  v59 = v9;
  v23 = v9;
  v24 = v22;
  v57 = v10 + 8;
  v22(v14, v23);
  (*(v15 + 8))(v17, v51);

  v53 = v19;
  v58 = v21;
  v25 = sub_35398();
  v26 = [objc_opt_self() textProviderWithText:v25];

  v27 = v26;
  v28 = v49;
  v29 = v52;
  sub_ABDC(v52);
  v30 = v28;
  v31 = v54;
  sub_11D90(v1 + v28, v54, type metadata accessor for DepthComplicationMetrics);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_11714(v31, type metadata accessor for DepthComplicationMetrics);
  v33 = v1 + v30;
  v34 = v55;
  sub_11D90(v33, v55, type metadata accessor for DepthComplicationMetrics);
  LODWORD(v26) = swift_getEnumCaseMultiPayload();
  sub_11714(v34, type metadata accessor for DepthComplicationMetrics);
  if (!v26)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v38 = v59;
      v40 = v24;
      if (qword_47658 != -1)
      {
        swift_once();
      }

      v41 = qword_48ED8;
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_11:
    v38 = v59;
    v40 = v24;
    if (qword_47650 != -1)
    {
      swift_once();
    }

    v41 = qword_48ED0;
    goto LABEL_29;
  }

  v35 = v48;
  v36 = *(v47 + 48);
  v37 = v50;
  v38 = v59;
  (*(v50 + 2))(v48, v29, v59);
  v35[v36] = 1;
  v39 = (*(v37 + 11))(v35, v38);
  v40 = v24;
  if (v39 == enum case for WaterDepth.shallow(_:))
  {
    v24(v35, v38);
    goto LABEL_7;
  }

  if (v39 == enum case for WaterDepth.nominal(_:))
  {
    if (qword_47690 != -1)
    {
      swift_once();
    }

    v42 = qword_48F10;
    v24(v29, v38);
    v29 = v35;
    goto LABEL_30;
  }

  if (v39 == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
    v24(v35, v38);
    goto LABEL_26;
  }

  if (v39 == enum case for WaterDepth.unknown(_:) || v39 == enum case for WaterDepth.notSubmerged(_:))
  {
LABEL_7:
    if (qword_476A0 != -1)
    {
      swift_once();
    }

    v41 = qword_48F20;
LABEL_29:
    v42 = v41;
LABEL_30:
    v40(v29, v38);
    [v27 setTintColor:v42];

    v43 = sub_35398();

    [v27 setAccessibilityLabel:v43];

    return v27;
  }

  if (v39 == v46)
  {
LABEL_26:
    if (qword_476A8 != -1)
    {
      swift_once();
    }

    v41 = qword_48F28;
    goto LABEL_29;
  }

  result = sub_357C8();
  __break(1u);
  return result;
}

id sub_E940()
{
  v33 = sub_350A8();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v1 = &v28 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_34EA8();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_35098();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_34E08();
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_47630 != -1)
  {
    swift_once();
  }

  sub_ABDC(v9);
  sub_AEF4(v6);
  v10 = enum case for UnitSpace.noSpace(_:);
  v11 = sub_35338();
  (*(*(v11 - 8) + 104))(v1, v10, v11);
  (*(v31 + 104))(v1, enum case for UnitOption.unitSpace(_:), v33);
  sub_34E98();
  v12 = sub_34FD8();
  v14 = v13;
  (*(v30 + 8))(v3, v32);
  v15 = v6;
  v16 = v12;
  (*(v4 + 8))(v15, v29);
  (*(v7 + 8))(v9, v28);

  sub_CBBC();
  v17 = sub_35398();
  v18 = [objc_opt_self() textProviderWithText:v17];

  [v18 setUseLowercaseSmallCaps:1];
  v19 = qword_47638;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_48EB0;
  v22 = sub_35398();

  v23 = sub_35398();
  v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

  sub_353A8();
  sub_3828(&unk_47EE0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_36860;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_11878();
  *(v25 + 32) = v16;
  *(v25 + 40) = v14;
  sub_353B8();

  v26 = sub_35398();

  [v20 setAccessibilityLabel:v26];

  return v20;
}

id sub_EEB8()
{
  v1 = v0;
  v2 = type metadata accessor for DepthComplicationMetrics(0);
  v3 = __chkstk_darwin(v2);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v32 - v6;
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_34E08();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics;
  sub_ABDC(&v32 - v14);
  sub_11D90(v0 + v16, v9, type metadata accessor for DepthComplicationMetrics);
  v32 = v2;
  v17 = swift_getEnumCaseMultiPayload() == 2;
  sub_11714(v9, type metadata accessor for DepthComplicationMetrics);
  sub_11D90(v1 + v16, v7, type metadata accessor for DepthComplicationMetrics);
  LOBYTE(v9) = swift_getEnumCaseMultiPayload() == 0;
  sub_11714(v7, type metadata accessor for DepthComplicationMetrics);
  sub_2B0EC(v15, v17, v9);
  v18 = *(v33 + 8);
  v19 = v15;
  v20 = v34;
  v18(v19, v34);
  sub_ABDC(v13);
  v21 = v1 + v16;
  v22 = v35;
  sub_11D90(v21, v35, type metadata accessor for DepthComplicationMetrics);
  v23 = swift_getEnumCaseMultiPayload() == 0;
  sub_11714(v22, type metadata accessor for DepthComplicationMetrics);
  sub_2B51C(v13, v23);
  v18(v13, v20);
  sub_F210();
  v25 = v24;
  sub_6D44(0, &unk_47ED0);
  isa = sub_35458().super.isa;

  sub_6D44(0, &qword_48540);
  v27 = sub_35458().super.isa;

  v28 = objc_opt_self();
  LODWORD(v29) = v25;
  v30 = [v28 gaugeProviderWithStyle:1 gaugeColors:isa gaugeColorLocations:v27 fillFraction:v29];

  return v30;
}

uint64_t sub_F210()
{
  v1 = v0;
  v64 = sub_34CD8();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v80 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3828(&qword_47EC8);
  __chkstk_darwin(v3 - 8);
  v71 = &v61 - v4;
  v5 = sub_34F88();
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = __chkstk_darwin(v5);
  v68 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v61 - v8;
  v81 = sub_34E08();
  v79 = *(v81 - 8);
  v9 = __chkstk_darwin(v81);
  v62 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v70 = &v61 - v12;
  __chkstk_darwin(v11);
  v76 = &v61 - v13;
  v14 = sub_35098();
  v74 = *(v14 - 8);
  v75 = v14;
  __chkstk_darwin(v14);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_350E8();
  v65 = *(v17 - 8);
  v66 = v17;
  __chkstk_darwin(v17);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HistoricalDepthMetrics(0);
  v69 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_34F28();
  v77 = *(v23 - 8);
  v78 = v23;
  __chkstk_darwin(v23);
  v82 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DepthComplicationMetrics(0);
  v26 = __chkstk_darwin(v25);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v61 - v29;
  result = sub_C7BC();
  if (result)
  {
    return result;
  }

  v32 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics;
  sub_11D90(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics, v30, type metadata accessor for DepthComplicationMetrics);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_11714(v30, type metadata accessor for DepthComplicationMetrics);
  if (EnumCaseMultiPayload == 2)
  {
    return result;
  }

  sub_11D90(v1 + v32, v28, type metadata accessor for DepthComplicationMetrics);
  v34 = swift_getEnumCaseMultiPayload();
  v35 = v32;
  if (v34)
  {
    v37 = v81;
    v36 = v82;
    if (v34 == 1)
    {
      sub_11714(v28, type metadata accessor for DepthComplicationMetrics);
    }
  }

  else
  {
    v38 = (*(v69 + 48))(v28, 1, v20);
    v37 = v81;
    v36 = v82;
    if (v38 != 1)
    {
      sub_1163C(v28, v22, type metadata accessor for HistoricalDepthMetrics);
      sub_6E80(v19);
      sub_350C8();
      (*(v65 + 8))(v19, v66);
      sub_34EF8();
      (*(v74 + 8))(v16, v75);
      sub_11714(v22, type metadata accessor for HistoricalDepthMetrics);
      goto LABEL_9;
    }
  }

  v40 = v74;
  v39 = v75;
  (*(v74 + 104))(v16, enum case for DeviceType.ultra(_:), v75);
  sub_34EF8();
  (*(v40 + 8))(v16, v39);
LABEL_9:
  v41 = v80;
  v42 = v76;
  sub_ABDC(v76);
  v43 = v79;
  v44 = (*(v79 + 88))(v42, v37);
  if (v44 == enum case for WaterDepth.shallow(_:) || v44 == enum case for WaterDepth.nominal(_:))
  {
    v45 = *(v43 + 8);
    v45(v42, v37);
    v46 = v70;
    sub_ABDC(v70);
    v47 = v71;
    sub_34DE8();
    v45(v46, v37);
    v49 = v72;
    v48 = v73;
    if ((*(v72 + 48))(v47, 1, v73) != 1)
    {
      v50 = v67;
      (*(v49 + 32))(v67, v47, v48);
      sub_34F38();
      v51 = v68;
      sub_34F18();
      sub_34F38();
      v52 = *(v49 + 8);
      v52(v51, v48);
      v52(v50, v48);
      return (*(v77 + 8))(v36, v78);
    }

    sub_11E70(v47, &qword_47EC8);
    return (*(v77 + 8))(v36, v78);
  }

  if (v44 == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
    (*(v77 + 8))(v36, v78);
    return (*(v43 + 8))(v42, v37);
  }

  if (v44 == enum case for WaterDepth.unknown(_:) || v44 == enum case for WaterDepth.notSubmerged(_:) || v44 == enum case for WaterDepth.depthExceedingSensorLimit(_:))
  {
    return (*(v77 + 8))(v36, v78);
  }

  v81 = v35;
  sub_34EB8();
  v53 = v1;
  v54 = sub_34CC8();
  v55 = sub_354F8();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v83 = v57;
    *v56 = 136315138;
    sub_ABDC(v62);
    v58 = sub_353D8();
    v60 = sub_31484(v58, v59, &v83);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_0, v54, v55, "DepthTimelineEntryModel: gaugeFullAction: unknown switch case %s", v56, 0xCu);
    sub_6408(v57);
    v36 = v82;
  }

  (*(v63 + 8))(v41, v64);
  (*(v77 + 8))(v36, v78);
  return (*(v43 + 8))(v42, v37);
}

id sub_FCAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DepthTimelineEntryModel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_FD68(uint64_t a1, uint64_t a2)
{
  sub_35818();
  sub_35408();
  v4 = sub_35838();

  return sub_100CC(a1, a2, v4);
}

unint64_t sub_FDE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_355C8(*(v2 + 40));

  return sub_10184(a1, v4);
}

uint64_t sub_FE24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_3828(&qword_47F08);
  v34 = a2;
  result = sub_35788();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_35818();
      sub_35408();
      result = sub_35838();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_100CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_357D8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10184(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_6D44(0, &qword_47EC0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_355D8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_10258()
{
  v1 = v0;
  sub_3828(&qword_47F08);
  v2 = *v0;
  v3 = sub_35778();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_103C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_FD68(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_FE24(v16, a4 & 1);
      v11 = sub_FD68(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_357F8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10258();
      v11 = v19;
    }
  }

  v21 = *a5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t _s9DepthCore14UnderwaterTimeO0A27ComplicationBundleCompanionE8CategoryO8rawValueAFSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_411C8;
  v6._object = a2;
  v4 = sub_357A8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10594()
{
  result = qword_47B80;
  if (!qword_47B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_47B80);
  }

  return result;
}

uint64_t _s8CategoryOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s8CategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10780()
{
  result = sub_34C78();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DepthComplicationMetrics(319);
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

uint64_t sub_10888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_34E08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_35098();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_109CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_34E08();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  else
  {
    v11 = sub_35098();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10B10()
{
  sub_34E08();
  if (v0 <= 0x3F)
  {
    sub_10BC0();
    if (v1 <= 0x3F)
    {
      sub_35098();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10BC0()
{
  if (!qword_47C40)
  {
    sub_6E30(&unk_47C48);
    v0 = sub_355E8();
    if (!v1)
    {
      atomic_store(v0, &qword_47C40);
    }
  }
}

void sub_10C58()
{
  if (!qword_47D08)
  {
    type metadata accessor for HistoricalDepthMetrics(255);
    v0 = sub_355E8();
    if (!v1)
    {
      atomic_store(v0, &qword_47D08);
    }
  }
}

uint64_t sub_10CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_34E08();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DisplayTime(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10DF4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10E40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_34E08();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DisplayTime(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10F3C()
{
  result = sub_34E08();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DisplayTime(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1103C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_110BC(uint64_t a1)
{
  v2 = sub_34CD8();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v5 = __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v30 - v9;
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  if (!*(a1 + 16) || (sub_FD68(0xD000000000000018, 0x80000000000379F0), (v13 & 1) == 0))
  {
    sub_34EB8();
    v18 = sub_34CC8();
    v19 = sub_354F8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "DepthComplicationMetrics: graphData metadata is nil", v20, 2u);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  if (!*(a1 + 16) || (v14 = sub_FD68(0xD000000000000018, 0x80000000000379F0), (v15 & 1) == 0) || (v33 = *(*(a1 + 56) + 8 * v14), swift_unknownObjectRetain(), sub_3828(&qword_47B70), (swift_dynamicCast() & 1) == 0))
  {
    sub_34EB8();
    v21 = sub_34CC8();
    v22 = sub_354F8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "DepthComplicationMetrics: Graph metadata is not castable to data", v23, 2u);
    }

    (*(v3 + 8))(v10, v2);
    return 0;
  }

  v17 = v31;
  v16 = v32;
  sub_34B68();
  swift_allocObject();
  sub_34B58();
  sub_3828(&unk_47C48);
  sub_11CC4(&qword_47E88, &qword_47E90);
  sub_34B48();

  v25 = v31;
  sub_34EB8();
  v26 = sub_34CC8();
  v27 = sub_354F8();
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_0, v26, v27, "DepthComplicationMetrics: Decoded graph data", v29, 2u);
  }

  sub_115E8(v17, v16);

  (*(v3 + 8))(v12, v2);
  return v25;
}

uint64_t sub_115E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1163C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_116A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3828(&qword_47EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_11714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_11774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3828(&qword_47F08);
    v3 = sub_35798();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_FD68(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_11878()
{
  result = qword_48560;
  if (!qword_48560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_48560);
  }

  return result;
}

uint64_t sub_118CC()
{
  if (qword_47638 != -1)
  {
    swift_once();
  }

  v0 = qword_48EB0;
  v1 = sub_35398();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    v3 = [objc_opt_self() providerWithFullColorImage:v2];
    v4 = [objc_opt_self() whiteColor];
    [v3 setTintColor:v4];

    v5 = qword_48EB0;
    v6 = sub_35398();
    v7 = sub_35398();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    if (!v8)
    {
      sub_353A8();
      v8 = sub_35398();
    }

    [v3 setAccessibilityLabel:v8];

    return v3;
  }

  else
  {
    result = sub_35758();
    __break(1u);
  }

  return result;
}

id sub_11B08()
{
  v0 = sub_35398();
  v1 = [objc_opt_self() symbolImageProviderWithSystemName:v0];

  v2 = [objc_opt_self() whiteColor];
  [v1 setTintColor:v2];

  v3 = qword_47638;
  v4 = v1;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_48EB0;
  v6 = sub_35398();
  v7 = sub_35398();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_353A8();
    v8 = sub_35398();
  }

  [v4 setAccessibilityLabel:v8];

  return v4;
}

uint64_t sub_11CC4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_6E30(&unk_47C48);
    sub_11D4C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_11D4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_34E88();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_11D90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_11DF8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_11E08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_3828(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_11E70(uint64_t a1, uint64_t *a2)
{
  v3 = sub_3828(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WaterDepth.simulatedSubmersionState.getter()
{
  v1 = v0;
  v2 = sub_34E08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for WaterDepth.shallow(_:))
  {
    v7 = 200;
LABEL_7:
    (*(v3 + 8))(v5, v2);
    return v7;
  }

  if (v6 == enum case for WaterDepth.nominal(_:))
  {
    v7 = 300;
    goto LABEL_7;
  }

  if (v6 == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
    v7 = 500;
    goto LABEL_7;
  }

  if (v6 == enum case for WaterDepth.unknown(_:))
  {
    return 0;
  }

  if (v6 == enum case for WaterDepth.notSubmerged(_:))
  {
    return 100;
  }

  if (v6 == enum case for WaterDepth.depthExceedingSensorLimit(_:))
  {
    return 600;
  }

  result = sub_357C8();
  __break(1u);
  return result;
}

uint64_t CMWaterSubmersionDepthState.description.getter(uint64_t a1)
{
  if (a1 <= 299)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E752ELL;
    }

    if (a1 != 100)
    {
      if (a1 == 200)
      {
        return 0xD000000000000010;
      }

      return 0x4E574F4E4B4E55;
    }

    return 0x656D627553746F6ELL;
  }

  else if (a1 > 499)
  {
    if (a1 != 500)
    {
      if (a1 == 600)
      {
        return 0xD000000000000011;
      }

      return 0x4E574F4E4B4E55;
    }

    return 0x78614D747361702ELL;
  }

  else
  {
    if (a1 != 300)
    {
      if (a1 == 400)
      {
        return 0xD000000000000014;
      }

      return 0x4E574F4E4B4E55;
    }

    return 0x6772656D6275732ELL;
  }
}

id sub_121C4()
{
  type metadata accessor for ComplicationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_48EB0 = result;
  return result;
}

void sub_1224C(void *a1)
{
  v3 = sub_3828(&qword_47EB0);
  __chkstk_darwin(v3 - 8);
  v73 = &v67 - v4;
  v5 = type metadata accessor for HistoricalDepthMetrics(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v75 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_maxDepthLabel;
  *&v1[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_durationLabel;
  *&v1[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_graphView;
  *&v1[v10] = [objc_allocWithZone(type metadata accessor for DepthGraphView()) init];
  v72 = v6;
  v11 = *(v6 + 56);
  v74 = v5;
  v11(&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_metrics], 1, 1, v5);
  v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_alwaysOn] = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_device] = a1;
  v12 = objc_allocWithZone(NSTextAttachment);
  v13 = a1;
  v14 = [v12 init];
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_depthSymbolAttachment] = v14;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v18 = type metadata accessor for DepthRectangularHistoricalGraphView();
  v76.receiver = v1;
  v76.super_class = v18;
  v19 = objc_msgSendSuper2(&v76, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  [v19 setClipsToBounds:1];
  v20 = *&v19[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_depthSymbolAttachment];
  v21 = sub_35398();
  v22 = [objc_opt_self() _systemImageNamed:v21];

  if (!v22)
  {
    __break(1u);
    return;
  }

  v68 = v13;
  v23 = objc_opt_self();
  v24 = [v23 whiteColor];
  v25 = [v22 imageWithTintColor:v24];

  [v20 setImage:v25];
  v71 = sub_3828(&qword_47868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_366B0;
  v70 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_maxDepthLabel;
  v27 = *&v19[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_maxDepthLabel];
  *(inited + 32) = v27;
  v69 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_durationLabel;
  v28 = *&v19[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_durationLabel];
  *(inited + 40) = v28;
  v29 = inited & 0xC000000000000001;
  v30 = (inited & 0xFFFFFFFFFFFFFF8);
  v31 = v27;
  v32 = v28;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_33;
  }

  for (i = v31; ; i = sub_356C8())
  {
    v34 = i;
    if (qword_476F0 != -1)
    {
      swift_once();
    }

    [v34 setFont:qword_48F70];
    v35 = [v23 whiteColor];
    [v34 setTextColor:v35];

    if (v29)
    {
      break;
    }

    if (v30[2] >= 2uLL)
    {
      v36 = *(inited + 40);
      goto LABEL_10;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v36 = sub_356C8();
LABEL_10:
  v37 = v36;
  v38 = v75;
  if (qword_476F0 != -1)
  {
    swift_once();
  }

  [v37 setFont:qword_48F70];
  v39 = [v23 whiteColor];
  [v37 setTextColor:v39];

  swift_setDeallocating();
  swift_arrayDestroy();
  v40 = v69;
  v41 = qword_476C0;
  v42 = *&v19[v69];
  v43 = v70;
  if (v41 != -1)
  {
    swift_once();
  }

  [v42 setTextColor:qword_48F40];

  v44 = *&v19[v43];
  v45 = sub_12AEC();
  [v44 setAttributedText:v45];

  v46 = *&v19[v40];
  v47 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_metrics;
  swift_beginAccess();
  v48 = &v19[v47];
  v49 = v73;
  sub_142F0(v48, v73);
  v50 = v74;
  if ((*(v72 + 48))(v49, 1, v74) == 1)
  {
    v51 = v46;
    sub_14360(v49);
  }

  else
  {
    sub_398C(v49, v38);
    v52 = qword_47630;
    v53 = v46;
    if (v52 != -1)
    {
      swift_once();
    }

    v54 = *(v38 + *(v50 + 20));
    v55 = *(*(qword_48E80 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter) + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_compactDiveDurationFormatter);

    v56 = [v55 stringFromTimeInterval:v54];
    if (v56)
    {
      v57 = v56;
      sub_353A8();
    }

    else
    {
    }

    sub_39F0(v38, type metadata accessor for HistoricalDepthMetrics);
  }

  v58 = sub_35398();

  [v46 setText:v58];

  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_36AB0;
  v59 = *&v19[v43];
  *(v29 + 32) = v59;
  v23 = *&v19[v40];
  *(v29 + 40) = v23;
  inited = *&v19[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_graphView];
  *(v29 + 48) = inited;
  v60 = v29 & 0xC000000000000001;
  v30 = v59;
  v61 = v23;
  v62 = inited;
  if ((v29 & 0xC000000000000001) != 0)
  {
    v63 = sub_356C8();
  }

  else
  {
    if (!*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_32;
    }

    v63 = v30;
  }

  v30 = v63;
  v23 = &off_45000;
  [v19 addSubview:v63];

  if (!v60)
  {
    if (*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)) >= 2uLL)
    {
      v64 = *(v29 + 40);
      goto LABEL_28;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v64 = sub_356C8();
LABEL_28:
  v30 = v64;
  [v19 addSubview:v64];

  if (!v60)
  {
    if (*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
    {
      v65 = *(v29 + 48);
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v65 = sub_356C8();
LABEL_31:
  v66 = v65;
  [v19 addSubview:v65];

  swift_setDeallocating();
  swift_arrayDestroy();
}

id sub_12AEC()
{
  v46 = sub_350A8();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v42 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_34EA8();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v40 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_35098();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_34E08();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_350E8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v34 - v10;
  v12 = sub_3828(&qword_47EB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for HistoricalDepthMetrics(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_metrics;
  swift_beginAccess();
  sub_142F0(v0 + v19, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_14360(v14);
    v20 = objc_allocWithZone(NSAttributedString);
    v21 = sub_35398();
    v22 = [v20 initWithString:v21];
  }

  else
  {
    sub_398C(v14, v18);
    sub_6D44(0, &qword_48040);
    v22 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_depthSymbolAttachment)];
    if (qword_47630 != -1)
    {
      swift_once();
    }

    sub_6E80(v11);
    v23 = v35;
    sub_350B8();
    v24 = *(v6 + 8);
    v24(v11, v5);
    sub_6E80(v9);
    v25 = v37;
    sub_350C8();
    v24(v9, v5);
    v26 = enum case for UnitSpace.noSpace(_:);
    v27 = sub_35338();
    v28 = v42;
    (*(*(v27 - 8) + 104))(v42, v26, v27);
    (*(v44 + 104))(v28, enum case for UnitOption.unitSpace(_:), v46);
    v29 = v40;
    sub_34E98();
    sub_34FD8();
    (*(v43 + 8))(v29, v45);
    (*(v39 + 8))(v25, v41);
    (*(v36 + 8))(v23, v38);

    v30 = objc_allocWithZone(NSAttributedString);
    v31 = sub_35398();

    v32 = [v30 initWithString:v31];

    [v22 appendAttributedString:v32];
    sub_39F0(v18, type metadata accessor for HistoricalDepthMetrics);
  }

  return v22;
}

id sub_13198()
{
  v1 = *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_maxDepthLabel];
  [v1 intrinsicContentSize];
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  Width = CGRectGetWidth(v22);
  if (Width < v3)
  {
    v3 = Width;
  }

  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v3;
  v23.size.height = v5;
  [v0 bounds];
  v8 = v7;
  [v0 bounds];
  v10 = v9;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v3;
  v24.size.height = v5;
  v11 = v10 - CGRectGetMaxY(v24);
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v3;
  v25.size.height = v5;
  [*&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_graphView] setFrame:{0.0, CGRectGetMaxY(v25), v8, v11}];
  [v1 setFrame:{0.0, 0.0, v3, v5}];
  v12 = *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_durationLabel];
  [v12 intrinsicContentSize];
  v14 = v13;
  v16 = v15;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = v3;
  v26.size.height = v5;
  v17 = CGRectGetMaxX(v26) + 5.0;
  [v0 bounds];
  v18 = CGRectGetMaxX(v27) - v17;
  if (v18 >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v18;
  }

  return [v12 setFrame:{v17, 0.0, v19, v16}];
}

uint64_t sub_133A4(void *a1, void *a2)
{
  sub_3828(&qword_47868);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_36AC0;
  *(v5 + 32) = [*(v2 + *a1) layer];
  v6 = *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_graphView);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_36AC0;
  v8 = *(v6 + *a2);
  *(inited + 32) = v8;
  v9 = v8;
  sub_13900(inited);
  return v5;
}

uint64_t sub_13480()
{
  v1 = v0;
  sub_3828(&qword_47868);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_36AC0;
  *(v2 + 32) = [*(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_maxDepthLabel) layer];
  v3 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_graphView);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_36AC0;
  v5 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_maxDotLayer;
  v6 = *(v3 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_maxDotLayer);
  *(inited + 32) = v6;
  v22 = v2;
  v7 = v6;
  sub_13900(inited);
  v8 = sub_30FC4();
  sub_13900(v8);
  sub_13900(&_swiftEmptyArrayStorage);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_36AC0;
  *(v9 + 32) = [*(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_durationLabel) layer];
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_36AC0;
  v11 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_barLayer;
  v12 = *(v3 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_barLayer);
  *(v10 + 32) = v12;
  v13 = v12;
  sub_13900(v10);
  sub_13900(v9);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_36AC0;
  v15 = *(v3 + v5);
  *(v14 + 32) = v15;
  v16 = v15;
  v17 = sub_30FC4();
  sub_13900(v17);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_36AC0;
  v19 = *(v3 + v11);
  *(v18 + 32) = v19;
  v20 = v19;
  sub_13900(v18);
  sub_13900(v14);
  return v22;
}

id sub_136DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DepthRectangularHistoricalGraphView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DepthRectangularHistoricalGraphView()
{
  result = qword_48018;
  if (!qword_48018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_137F4()
{
  sub_10C58();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_138AC()
{
  v0 = sub_30FC4();
  sub_13900(v0);
  return &_swiftEmptyArrayStorage;
}

uint64_t sub_13900(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_35768();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_35768();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_139F0(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_13A90(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_139F0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_35768();
LABEL_9:
  result = sub_356D8();
  *v1 = result;
  return result;
}

uint64_t sub_13A90(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_35768();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_35768();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_13CA8();
          for (i = 0; i != v6; ++i)
          {
            sub_3828(&qword_48030);
            v9 = sub_13C20(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_6D44(0, &qword_48028);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_13C20(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_356C8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_13CA0;
  }

  __break(1u);
  return result;
}

unint64_t sub_13CA8()
{
  result = qword_48038;
  if (!qword_48038)
  {
    sub_6E30(&qword_48030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_48038);
  }

  return result;
}

id sub_13D0C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HistoricalDepthMetrics(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v40 - v8;
  v10 = type metadata accessor for DepthComplicationMetrics(0);
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3828(&qword_47EB0);
  v14 = __chkstk_darwin(v13 - 8);
  v42 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v40 - v20;
  __chkstk_darwin(v19);
  v23 = &v40 - v22;
  sub_143C8(a1, v12, type metadata accessor for DepthComplicationMetrics);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v5 + 56))(v23, 1, 1, v4);
    sub_39F0(v12, type metadata accessor for DepthComplicationMetrics);
  }

  else
  {
    sub_116A4(v12, v23);
  }

  v24 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_metrics;
  swift_beginAccess();
  sub_14280(v23, &v2[v24]);
  swift_endAccess();
  v25 = *&v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_graphView];
  sub_142F0(&v2[v24], v21);
  v26 = *(v5 + 48);
  if (v26(v21, 1, v4))
  {
    sub_14360(v21);
    v27 = 0;
  }

  else
  {
    sub_143C8(v21, v9, type metadata accessor for HistoricalDepthMetrics);
    sub_14360(v21);
    v27 = *&v9[*(v4 + 32)];

    sub_39F0(v9, type metadata accessor for HistoricalDepthMetrics);
  }

  sub_142F0(&v2[v24], v18);
  if (v26(v18, 1, v4))
  {
    sub_14360(v18);
    v28 = 0.0;
  }

  else
  {
    sub_143C8(v18, v9, type metadata accessor for HistoricalDepthMetrics);
    sub_14360(v18);
    v28 = *&v9[*(v4 + 20)];
    sub_39F0(v9, type metadata accessor for HistoricalDepthMetrics);
  }

  *&v25[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_graphData] = v27;

  sub_2EAB4(v28);
  [v25 setNeedsLayout];
  v29 = *&v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_maxDepthLabel];
  v30 = sub_12AEC();
  [v29 setAttributedText:v30];

  v31 = *&v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_durationLabel];
  v32 = v42;
  sub_142F0(&v2[v24], v42);
  if (v26(v32, 1, v4) == 1)
  {
    sub_14360(v32);
  }

  else
  {
    v33 = v41;
    sub_398C(v32, v41);
    if (qword_47630 != -1)
    {
      swift_once();
    }

    v34 = *(v33 + *(v4 + 20));
    v35 = *(*(qword_48E80 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter) + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_compactDiveDurationFormatter);

    v36 = [v35 stringFromTimeInterval:v34];
    if (v36)
    {
      v37 = v36;
      sub_353A8();
    }

    else
    {
    }

    sub_39F0(v33, type metadata accessor for HistoricalDepthMetrics);
  }

  v38 = sub_35398();

  [v31 setText:v38];

  return [v2 setNeedsLayout];
}

uint64_t sub_14280(uint64_t a1, uint64_t a2)
{
  v4 = sub_3828(&qword_47EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_142F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_3828(&qword_47EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14360(uint64_t a1)
{
  v2 = sub_3828(&qword_47EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_143C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_14430()
{
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_maxDepthLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_durationLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_graphView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for DepthGraphView()) init];
  v4 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_metrics;
  v5 = type metadata accessor for HistoricalDepthMetrics(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView_alwaysOn) = 0;
  sub_35758();
  __break(1u);
}

id sub_14548()
{
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView____lazy_storage___underwaterTimeTypeLabel;
  v2 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView____lazy_storage___underwaterTimeTypeLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView____lazy_storage___underwaterTimeTypeLabel);
  }

  else
  {
    v4 = sub_145A8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_145A8()
{
  v0 = [objc_allocWithZone(NSTextAttachment) init];
  v1 = sub_35398();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    if (qword_476F0 != -1)
    {
      swift_once();
    }

    v3 = qword_48F70;
    v4 = objc_opt_self();
    v5 = [v4 configurationWithFont:v3];
    sub_3828(&qword_47868);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_36AC0;
    *(v6 + 32) = [objc_opt_self() whiteColor];
    sub_6D44(0, &unk_47ED0);
    isa = sub_35458().super.isa;

    v8 = [v4 configurationWithPaletteColors:isa];

    v9 = [v5 configurationByApplyingConfiguration:v8];
    v10 = [v2 imageWithConfiguration:v9];
  }

  else
  {
    v10 = 0;
  }

  [v0 setImage:v10];

  sub_6D44(0, &qword_48040);
  v11 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v0];
  if (qword_47638 != -1)
  {
    swift_once();
  }

  v12 = qword_48EB0;
  v13 = sub_35398();
  v14 = sub_35398();
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  if (!v15)
  {
    sub_353A8();
    v15 = sub_35398();
  }

  v16 = [objc_allocWithZone(NSAttributedString) initWithString:v15];

  [v11 appendAttributedString:v16];
  return v11;
}

char *sub_1491C(void *a1)
{
  v3 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthValueLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthUnitLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_displayedTimeTypeLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeUnitLabel;
  *&v1[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeValueLabel;
  *&v1[v8] = [objc_allocWithZone(UILabel) init];
  type metadata accessor for DepthComplicationMetrics(0);
  swift_storeEnumTagMultiPayload();
  v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_alwaysOn] = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_updateTimer] = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView____lazy_storage___underwaterTimeTypeLabel] = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_device] = a1;
  v9 = objc_allocWithZone(CLKDeviceMetrics);
  v93 = a1;
  v10 = [v9 initWithDevice:? identitySizeClass:?];
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_deviceMetrics] = v10;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v98.receiver = v1;
  v98.super_class = type metadata accessor for DepthRectangularLiveView();
  v14 = objc_msgSendSuper2(&v98, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  [v14 setClipsToBounds:1];
  sub_3828(&qword_47868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_366A0;
  v96 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthLabel;
  v16 = *&v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthLabel];
  *(inited + 32) = v16;
  v97 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthUnitLabel;
  v17 = *&v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthUnitLabel];
  *(inited + 40) = v17;
  v95 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_displayedTimeTypeLabel;
  v18 = *&v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_displayedTimeTypeLabel];
  *(inited + 48) = v18;
  v94 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeUnitLabel;
  v19 = *&v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeUnitLabel];
  *(inited + 56) = v19;
  v20 = (inited & 0xC000000000000001);
  v21 = (inited & 0xFFFFFFFFFFFFFF8);
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v19;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_55;
  }

  if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_53;
  }

  for (i = v22; ; i = sub_356C8())
  {
    v27 = i;
    if (qword_476F0 != -1)
    {
      swift_once();
    }

    [v27 setFont:qword_48F70];

    if (v20)
    {
      v28 = sub_356C8();
    }

    else
    {
      if (v21[2] < 2uLL)
      {
        goto LABEL_53;
      }

      v28 = *(inited + 40);
    }

    v29 = v28;
    if (qword_476F0 != -1)
    {
      swift_once();
    }

    [v29 setFont:qword_48F70];

    if (v20)
    {
      v30 = sub_356C8();
    }

    else
    {
      if (v21[2] < 3uLL)
      {
        goto LABEL_53;
      }

      v30 = *(inited + 48);
    }

    v31 = v30;
    if (qword_476F0 != -1)
    {
      swift_once();
    }

    [v31 setFont:qword_48F70];

    if (v20)
    {
      v32 = sub_356C8();
    }

    else
    {
      if (v21[2] < 4uLL)
      {
        goto LABEL_53;
      }

      v32 = *(inited + 56);
    }

    v33 = v32;
    if (qword_476F0 != -1)
    {
      swift_once();
    }

    [v33 setFont:qword_48F70];

    swift_setDeallocating();
    swift_arrayDestroy();
    v34 = *&v14[v94];
    v35 = objc_opt_self();
    v36 = v34;
    v37 = [v35 grayColor];
    [v36 setTextColor:v37];

    v38 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeValueLabel;
    v39 = *&v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeValueLabel];
    v40 = [v35 whiteColor];
    [v39 setTextColor:v40];

    v41 = *&v14[v95];
    v42 = [v35 whiteColor];
    [v41 setTextColor:v42];

    v43 = qword_47638;
    v44 = *&v14[v96];
    if (v43 != -1)
    {
      swift_once();
    }

    v45 = qword_48EB0;
    v46 = sub_35398();
    v47 = sub_35398();
    v48 = [v45 localizedStringForKey:v46 value:0 table:v47];

    sub_353A8();
    sub_3938();
    sub_355F8();
    v49 = sub_35398();

    [v44 setText:v49];

    v50 = *&v14[v97];
    v51 = sub_35398();
    [v50 setText:v51];

    v52 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthValueLabel;
    v53 = *&v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthValueLabel];
    v54 = sub_35398();
    [v53 setText:v54];

    v55 = *&v14[v95];
    v56 = sub_35398();
    [v55 setText:v56];

    v57 = *&v14[v94];
    v58 = sub_35398();
    [v57 setText:v58];

    v59 = *&v14[v38];
    v60 = sub_35398();
    [v59 setText:v60];

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_366B0;
    v61 = *&v14[v52];
    *(inited + 32) = v61;
    v20 = v38;
    v62 = *&v14[v38];
    *(inited + 40) = v62;
    v21 = (inited & 0xC000000000000001);
    v63 = v61;
    v64 = v62;
    if ((inited & 0xC000000000000001) != 0)
    {
      v65 = sub_356C8();
    }

    else
    {
      if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_54;
      }

      v65 = v63;
    }

    v66 = v65;
    if (qword_476F8 != -1)
    {
      swift_once();
    }

    [v66 setFont:qword_48F78];

    if (v21)
    {
      break;
    }

    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 2uLL)
    {
      v67 = *(inited + 40);
      goto LABEL_31;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  v67 = sub_356C8();
LABEL_31:
  v68 = v67;
  v69 = v38;
  if (qword_476F8 != -1)
  {
    swift_once();
  }

  [v68 setFont:qword_48F78];

  swift_setDeallocating();
  swift_arrayDestroy();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_366C0;
  v70 = *&v14[v96];
  *(inited + 32) = v70;
  v96 = inited + 32;
  v71 = *&v14[v52];
  *(inited + 40) = v71;
  v21 = *&v14[v97];
  *(inited + 48) = v21;
  v72 = *&v14[v95];
  *(inited + 56) = v72;
  v20 = *&v14[v94];
  *(inited + 64) = v20;
  v73 = *&v14[v69];
  *(inited + 72) = v73;
  v74 = inited & 0xC000000000000001;
  v75 = v70;
  v76 = v71;
  v77 = v21;
  v78 = v72;
  v79 = v20;
  v80 = v73;
  if ((inited & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
    {
      v81 = v75;
      goto LABEL_36;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v81 = sub_356C8();
LABEL_36:
  [v14 addSubview:v81];

  if (v74)
  {
    v82 = sub_356C8();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      goto LABEL_52;
    }

    v82 = *(inited + 40);
  }

  v83 = v82;
  [v14 addSubview:v82];

  if (v74)
  {
    v84 = sub_356C8();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 3uLL)
    {
      goto LABEL_52;
    }

    v84 = *(inited + 48);
  }

  v85 = v84;
  [v14 addSubview:v84];

  if (v74)
  {
    v86 = sub_356C8();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 4uLL)
    {
      goto LABEL_52;
    }

    v86 = *(inited + 56);
  }

  v87 = v86;
  [v14 addSubview:v86];

  if (v74)
  {
    v88 = sub_356C8();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 5uLL)
    {
      goto LABEL_52;
    }

    v88 = *(inited + 64);
  }

  v89 = v88;
  [v14 addSubview:v88];

  if (!v74)
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 6uLL)
    {
      v90 = *(inited + 72);
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  v90 = sub_356C8();
LABEL_51:
  v91 = v90;
  [v14 addSubview:v90];

  swift_setDeallocating();
  swift_arrayDestroy();
  return v14;
}

id sub_15424()
{
  v1 = *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_updateTimer];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for DepthRectangularLiveView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for DepthRectangularLiveView()
{
  result = qword_480D0;
  if (!qword_480D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_15654(uint64_t a1, char a2)
{
  v30 = sub_34CD8();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v31[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DepthComplicationMetrics(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v31[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v31[-1] - v13;
  __chkstk_darwin(v12);
  v16 = &v31[-1] - v15;
  v17 = type metadata accessor for LiveMetrics(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v31[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_11D90(a1, v16, type metadata accessor for DepthComplicationMetrics);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_179D8(v16, v19);
    sub_11D90(a1, v14, type metadata accessor for DepthComplicationMetrics);
    v20 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_metrics;
    swift_beginAccess();
    sub_38D4(v14, &v2[v20]);
    swift_endAccess();
    v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_alwaysOn] = a2 & 1;
    sub_15A6C(v19);
    sub_16788(v19);
    [v2 setNeedsLayout];
    [v2 layoutIfNeeded];
    return sub_17A3C(v19, type metadata accessor for LiveMetrics);
  }

  else
  {
    sub_17A3C(v16, type metadata accessor for DepthComplicationMetrics);
    sub_34EB8();
    sub_11D90(a1, v11, type metadata accessor for DepthComplicationMetrics);
    v22 = sub_34CC8();
    v23 = sub_35508();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v24 = 136315138;
      sub_11D90(v11, v14, type metadata accessor for DepthComplicationMetrics);
      v26 = sub_353C8();
      v28 = v27;
      sub_17A3C(v11, type metadata accessor for DepthComplicationMetrics);
      v29 = sub_31484(v26, v28, v31);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_0, v22, v23, "DepthRectangularLiveView: Unexpected metrics type: %s", v24, 0xCu);
      sub_6408(v25);
    }

    else
    {

      sub_17A3C(v11, type metadata accessor for DepthComplicationMetrics);
    }

    return (*(v5 + 8))(v7, v30);
  }
}

void sub_15A6C(uint64_t a1)
{
  v2 = v1;
  v111 = a1;
  v3 = sub_352E8();
  v105 = *(v3 - 8);
  v106 = v3;
  __chkstk_darwin(v3);
  v104 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_35198();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin(v5);
  v101 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for DisplayTime(0);
  v7 = __chkstk_darwin(v107);
  v108 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v100 = &v94 - v10;
  __chkstk_darwin(v9);
  v99 = &v94 - v11;
  v12 = sub_350A8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_34EA8();
  v16 = *(v110 - 8);
  __chkstk_darwin(v110);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_35098();
  __chkstk_darwin(v19);
  if (*(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_alwaysOn) == 1)
  {
    v23 = *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthValueLabel);
    v24 = sub_35398();
    v110 = v23;
    [v23 setText:v24];

    v25 = *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeValueLabel);
    v26 = sub_35398();
    [v25 setText:v26];

    v27 = *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_displayedTimeTypeLabel);
    v28 = sub_35398();
    [v27 setText:v28];

    v29 = *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeUnitLabel);
    v30 = &off_45000;
    v31 = v2;
    if (qword_47638 != -1)
    {
      swift_once();
    }

    v32 = qword_48EB0;
    v33 = sub_35398();
    v34 = sub_35398();
    v35 = [v32 localizedStringForKey:v33 value:0 table:v34];

    if (!v35)
    {
      sub_353A8();
      v35 = sub_35398();
    }

    [v29 setText:v35];

    p_superclass = (_TtC32DepthComplicationBundleCompanion15DepthDataSource + 8);
    v37 = v110;
  }

  else
  {
    v97 = v22;
    v38 = *(v22 + 104);
    v39 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v98 = v21;
    v38(v39, enum case for DeviceType.unknown(_:), v21);
    v40 = *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthValueLabel);
    v109 = v2;
    if (qword_47630 != -1)
    {
      swift_once();
    }

    v41 = qword_48E80;
    v42 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter;
    (*(v13 + 104))(v15, enum case for UnitOption.noUnit(_:), v12);

    sub_34E98();
    v43 = v111;
    v96 = v39;
    sub_34FD8();
    (*(v16 + 8))(v18, v110);

    v44 = sub_35398();

    v110 = v40;
    [v40 setText:v44];

    v45 = *(v109 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeValueLabel);
    v95 = v42;
    v46 = *(*(v41 + v42) + 16);
    v47 = *(type metadata accessor for LiveMetrics(0) + 20);
    v48 = v99;
    sub_11D90(v43 + v47, v99, type metadata accessor for DisplayTime);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v49 = v104;
      v50 = v105;
      v51 = v48;
      v52 = v106;
      (*(v105 + 32))(v104, v51, v106);
      v53 = v46;
      sub_352D8();
    }

    else
    {
      v49 = v101;
      v50 = v102;
      v54 = v48;
      v52 = v103;
      (*(v102 + 32))(v101, v54, v103);
      v55 = v46;
      sub_35188();
    }

    (*(v50 + 8))(v49, v52);
    sub_35018();

    v56 = sub_35398();

    v30 = &off_45000;
    [v45 setText:v56];

    v57 = *(v109 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeUnitLabel);
    v58 = *(*(v41 + v95) + 16);
    v59 = v111;
    v60 = v100;
    sub_11D90(v111 + v47, v100, type metadata accessor for DisplayTime);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61 = v104;
      v62 = v105;
      v63 = v60;
      v64 = v106;
      (*(v105 + 32))(v104, v63, v106);
      v65 = v58;
      sub_352D8();
    }

    else
    {
      v61 = v101;
      v62 = v102;
      v66 = v60;
      v64 = v103;
      (*(v102 + 32))(v101, v66, v103);
      v67 = v58;
      sub_35188();
    }

    (*(v62 + 8))(v61, v64);
    v68 = v108;
    sub_35008();

    v69 = sub_35398();

    [v57 setText:v69];

    sub_11D90(v59 + v47, v68, type metadata accessor for DisplayTime);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v31 = v109;
    v71 = *(v109 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_displayedTimeTypeLabel);
    if (EnumCaseMultiPayload == 1)
    {
      v72 = sub_14548();
      v73 = &selRef_setAttributedText_;
      v37 = v110;
    }

    else
    {
      v37 = v110;
      if (qword_47638 != -1)
      {
        swift_once();
      }

      v74 = qword_48EB0;
      v75 = sub_35398();
      v76 = sub_35398();
      v72 = [v74 localizedStringForKey:v75 value:0 table:v76];

      if (!v72)
      {
        sub_353A8();
        v72 = sub_35398();
      }

      v73 = &selRef_setText_;
    }

    [v71 *v73];

    (*(v97 + 8))(v96, v98);
    sub_17A3C(v68, type metadata accessor for DisplayTime);
    p_superclass = _TtC32DepthComplicationBundleCompanion15DepthDataSource.superclass;
  }

  v77 = *(v31 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthUnitLabel);
  if (p_superclass[198] != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v78 = *(*(qword_48E80 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter) + 16);
    sub_34FF8();

    v79 = sub_35398();

    [v77 v30[343]];

    if (sub_34DA8())
    {
      if (qword_476C8 != -1)
      {
        swift_once();
      }

      v80 = &qword_48F48;
    }

    else
    {
      if (qword_476C0 != -1)
      {
        swift_once();
      }

      v80 = &qword_48F40;
    }

    v81 = *v80;
    sub_3828(&qword_47868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_36AB0;
    v83 = *(v31 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthLabel);
    *(inited + 32) = v83;
    *(inited + 40) = v37;
    *(inited + 48) = v77;
    v31 = inited & 0xC000000000000001;
    v84 = v81;
    v85 = v83;
    v86 = v37;
    v30 = v77;
    if ((inited & 0xC000000000000001) != 0)
    {
      v87 = sub_356C8();
    }

    else
    {
      if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_44;
      }

      v87 = v85;
    }

    v77 = v87;
    [v87 setTextColor:v84];

    if (v31)
    {
      v88 = sub_356C8();
    }

    else
    {
      if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
      {
        goto LABEL_44;
      }

      v88 = *(inited + 40);
    }

    v77 = v88;
    [v88 setTextColor:v84];

    if (v31)
    {
      break;
    }

    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
    {
      v89 = *(inited + 48);
      goto LABEL_40;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v89 = sub_356C8();
LABEL_40:
  v90 = v89;
  [v89 setTextColor:v84];

  swift_setDeallocating();
  swift_arrayDestroy();
  if (sub_34DA8())
  {
LABEL_43:
  }

  else
  {
    v91 = [(SEL *)v30 textColor];
    if (v91)
    {
      v92 = v91;
      v93 = [v91 colorWithAlphaComponent:0.7];

      [(SEL *)v30 setTextColor:v93];
      goto LABEL_43;
    }

    __break(1u);
  }
}

void sub_16788(uint64_t a1)
{
  v3 = type metadata accessor for DisplayTime(0);
  __chkstk_darwin(v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_updateTimer;
  [*(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_updateTimer) invalidate];
  v7 = *(v1 + v6);
  *(v1 + v6) = 0;

  if ((*(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_alwaysOn) & 1) == 0)
  {
    v8 = type metadata accessor for LiveMetrics(0);
    sub_11D90(a1 + *(v8 + 20), v5, type metadata accessor for DisplayTime);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_17A3C(v5, type metadata accessor for DisplayTime);
    if (EnumCaseMultiPayload != 1)
    {
      v10 = objc_opt_self();
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_17AD4;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_169D0;
      aBlock[3] = &unk_41688;
      v12 = _Block_copy(aBlock);

      v13 = [v10 scheduledTimerWithTimeInterval:1 repeats:v12 block:1.0];
      _Block_release(v12);
      v14 = *(v1 + v6);
      *(v1 + v6) = v13;
    }
  }
}

void sub_1697C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_16A38();
  }
}

void sub_169D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_16A38()
{
  v1 = v0;
  v2 = sub_34CD8();
  v75 = *(v2 - 8);
  v76 = v2;
  __chkstk_darwin(v2);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_352E8();
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin(v5);
  v71 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_35198();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v68 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DisplayTime(0);
  v10 = __chkstk_darwin(v9);
  v67 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v67 - v13;
  __chkstk_darwin(v12);
  v16 = &v67 - v15;
  v17 = type metadata accessor for DepthComplicationMetrics(0);
  v18 = __chkstk_darwin(v17);
  v74 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v67 - v20;
  v22 = type metadata accessor for LiveMetrics(0);
  __chkstk_darwin(v22);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_metrics;
  swift_beginAccess();
  sub_11D90(&v1[v25], v21, type metadata accessor for DepthComplicationMetrics);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = type metadata accessor for DepthComplicationMetrics;
    v27 = v21;
    goto LABEL_5;
  }

  sub_179D8(v21, v24);
  if (v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_alwaysOn])
  {
    v26 = type metadata accessor for LiveMetrics;
    v27 = v24;
LABEL_5:
    sub_17A3C(v27, v26);
    v28 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_updateTimer;
    [*&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_updateTimer] invalidate];
    v29 = *&v1[v28];
    *&v1[v28] = 0;

    sub_34EB8();
    v30 = v1;
    v31 = sub_34CC8();
    v32 = sub_35508();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v77 = v34;
      *v33 = 136315394;
      sub_11D90(&v1[v25], v74, type metadata accessor for DepthComplicationMetrics);
      v35 = sub_353C8();
      v37 = sub_31484(v35, v36, &v77);

      *(v33 + 4) = v37;
      *(v33 + 12) = 1024;
      v38 = v30[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_alwaysOn];

      *(v33 + 14) = v38;
      _os_log_impl(&dword_0, v31, v32, "DepthRectangularLiveView: updateTimeDisplay: Invalid state to update time display (metrics: %s, alwaysOn: %{BOOL}d)", v33, 0x12u);
      sub_6408(v34);
    }

    else
    {
    }

    return (*(v75 + 8))(v4, v76);
  }

  v40 = *(v22 + 20);
  sub_11D90(&v24[v40], v16, type metadata accessor for DisplayTime);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_17A3C(v24, type metadata accessor for LiveMetrics);
    v26 = type metadata accessor for DisplayTime;
    v27 = v16;
    goto LABEL_5;
  }

  sub_17A3C(v16, type metadata accessor for DisplayTime);
  v41 = *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeValueLabel];
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v42 = qword_48E80;
  v76 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter;
  v43 = *(*(qword_48E80 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter) + 16);
  sub_11D90(&v24[v40], v14, type metadata accessor for DisplayTime);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v71;
    v45 = v72;
    v46 = v14;
    v47 = v73;
    (*(v72 + 32))(v71, v46, v73);
    v48 = v43;
    sub_352D8();
    (*(v45 + 8))(v44, v47);
  }

  else
  {
    v75 = v42;
    v49 = v41;
    v50 = v68;
    v51 = v69;
    v52 = v70;
    (*(v69 + 32))(v68, v14, v70);
    v53 = v43;
    sub_35188();
    v54 = v51;
    v41 = v49;
    v42 = v75;
    (*(v54 + 8))(v50, v52);
  }

  sub_35018();

  v55 = sub_35398();

  [v41 setText:v55];

  v56 = *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeUnitLabel];
  v57 = *(*(v42 + v76) + 16);
  v58 = v67;
  sub_11D90(&v24[v40], v67, type metadata accessor for DisplayTime);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = v71;
    v60 = v72;
    v61 = v58;
    v62 = v73;
    (*(v72 + 32))(v71, v61, v73);
    v63 = v57;
    sub_352D8();
  }

  else
  {
    v59 = v68;
    v60 = v69;
    v64 = v58;
    v62 = v70;
    (*(v69 + 32))(v68, v64, v70);
    v65 = v57;
    sub_35188();
  }

  (*(v60 + 8))(v59, v62);
  sub_35008();

  v66 = sub_35398();

  [v56 setText:v66];

  [v1 setNeedsLayout];
  return sub_17A3C(v24, type metadata accessor for LiveMetrics);
}

id sub_172A4()
{
  v1 = v0;
  [v0 bounds];
  y = v58.origin.y;
  v2 = *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthLabel];
  v3 = *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_displayedTimeTypeLabel];
  v4 = *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthValueLabel];
  v5 = *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeValueLabel];
  v6 = *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthUnitLabel];
  v7 = *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeUnitLabel];
  x = v58.origin.x;
  v54 = v58.origin.x;
  height = v58.size.height;
  width = v58.size.width;
  v10 = v58.size.height;
  v11 = CGRectGetWidth(v58) * 0.4;
  [v2 intrinsicContentSize];
  v59.size.width = v12;
  v14 = v13;
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.height = v14;
  v15 = CGRectGetWidth(v59);
  if (v11 < v15)
  {
    v15 = v11;
  }

  v51 = v15;
  [v3 intrinsicContentSize];
  v60.size.width = v16;
  v18 = v17;
  v60.origin.y = 0.0;
  v60.origin.x = v11 + 2.0;
  v60.size.height = v18;
  v19 = CGRectGetWidth(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = v10;
  v20 = CGRectGetWidth(v61) - (v11 + 2.0);
  v53 = v11 + 2.0;
  if (v20 < v19)
  {
    v19 = v20;
  }

  [v2 setFrame:{0.0, 0.0, v51, v14, *&width}];
  [v3 setFrame:{v11 + 2.0, 0.0, v19, v18}];
  [v6 intrinsicContentSize];
  v22 = v21;
  v24 = v23;
  v52 = v23;
  v62.origin.x = v54;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v25 = CGRectGetHeight(v62);
  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v63.size.width = v22;
  v63.size.height = v24;
  v64.origin.y = v25 - CGRectGetHeight(v63);
  v50 = v64.origin.y;
  v64.origin.x = 0.0;
  v64.size.width = v22;
  v64.size.height = v24;
  v26 = CGRectGetWidth(v64);
  if (v11 < v26)
  {
    v26 = v11;
  }

  v49 = v26;
  [v7 intrinsicContentSize];
  v28 = v27;
  v30 = v29;
  v65.origin.x = v54;
  v65.origin.y = y;
  v65.size.width = v48;
  v65.size.height = height;
  v31 = CGRectGetHeight(v65);
  v66.origin.x = 0.0;
  v66.origin.y = 0.0;
  v66.size.width = v28;
  v66.size.height = v30;
  v32 = v31 - CGRectGetHeight(v66);
  v67.origin.x = v53;
  v67.origin.y = v32;
  v67.size.width = v28;
  v67.size.height = v30;
  v33 = CGRectGetWidth(v67);
  v68.origin.x = v54;
  v68.origin.y = y;
  v68.size.width = v48;
  v68.size.height = height;
  v34 = CGRectGetWidth(v68) - v53;
  if (v34 < v33)
  {
    v33 = v34;
  }

  [v6 setFrame:{0.0, v50, v49, v52}];
  [v7 setFrame:{v53, v32, v33, v30}];
  [v4 intrinsicContentSize];
  v36 = v35;
  v38 = v37;
  v69.origin.x = v54;
  v69.origin.y = y;
  v69.size.width = v48;
  v69.size.height = height;
  v39 = CGRectGetHeight(v69) * 0.5;
  v70.origin.x = 0.0;
  v70.origin.y = 0.0;
  v70.size.width = v36;
  v70.size.height = v38;
  v40 = v39 - CGRectGetHeight(v70) * 0.5;
  [v5 intrinsicContentSize];
  v71.size.width = v41;
  v43 = v42;
  v71.origin.x = v53;
  v71.origin.y = v40;
  v71.size.height = v43;
  v44 = CGRectGetWidth(v71);
  v72.origin.x = v54;
  v72.size.height = height;
  v72.origin.y = y;
  v72.size.width = v48;
  v45 = CGRectGetWidth(v72) - v53;
  if (v45 >= v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = v45;
  }

  [v4 setFrame:{0.0, v40, v36, v38}];

  return [v5 setFrame:{v53, v40, v46, v43}];
}

uint64_t sub_17698()
{
  sub_3828(&qword_47868);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_366A0;
  *(v1 + 32) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthLabel) layer];
  *(v1 + 40) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthUnitLabel) layer];
  *(v1 + 48) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_displayedTimeTypeLabel) layer];
  *(v1 + 56) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeUnitLabel) layer];
  return v1;
}

uint64_t sub_17774()
{
  v1 = v0;
  sub_3828(&qword_47868);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_366B0;
  *(v2 + 32) = [*(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthValueLabel) layer];
  *(v2 + 40) = [*(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeValueLabel) layer];
  sub_13900(&_swiftEmptyArrayStorage);
  v3 = sub_17698();
  sub_13900(v3);
  return v2;
}

uint64_t sub_17870()
{
  result = type metadata accessor for DepthComplicationMetrics(319);
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

uint64_t sub_17934()
{
  sub_3828(&qword_47868);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_366B0;
  *(v1 + 32) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthValueLabel) layer];
  *(v1 + 40) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeValueLabel) layer];
  return v1;
}

uint64_t sub_179D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_17A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_17A9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_17ADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_17AF4()
{
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthValueLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_depthUnitLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_displayedTimeTypeLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeUnitLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_timeValueLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  type metadata accessor for DepthComplicationMetrics(0);
  swift_storeEnumTagMultiPayload();
  *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_alwaysOn) = 0;
  *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView_updateTimer) = 0;
  *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion24DepthRectangularLiveView____lazy_storage___underwaterTimeTypeLabel) = 0;
  sub_35758();
  __break(1u);
}

uint64_t sub_17C4C(id a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  if (a4)
  {
    v12 = [a1 filtersForView:a2 style:0];
    if (v12)
    {
      isa = v12;
      sub_18604();
      v13 = sub_35468();
    }

    else
    {
      v13 = 0;
    }

    v16 = [a1 filtersForView:a2 style:1];
    if (v16)
    {
      isa = v16;
      sub_18604();
      v80 = sub_35468();
    }

    else
    {
      v80 = 0;
    }

    v18 = [a1 filtersForView:a2 style:2];
    if (v18)
    {
      goto LABEL_14;
    }

LABEL_71:
    v79 = 0;
    if (!(a5 >> 62))
    {
      goto LABEL_15;
    }

    goto LABEL_72;
  }

  v15 = [a1 filtersForView:a2 style:0 fraction:*&a3];
  if (v15)
  {
    isa = v15;
    sub_18604();
    v13 = sub_35468();
  }

  else
  {
    v13 = 0;
  }

  v17 = [a1 filtersForView:a2 style:1 fraction:*&a3];
  if (v17)
  {
    isa = v17;
    sub_18604();
    v80 = sub_35468();
  }

  else
  {
    v80 = 0;
  }

  v18 = [a1 filtersForView:a2 style:2 fraction:*&a3];
  if (!v18)
  {
    goto LABEL_71;
  }

LABEL_14:
  isa = v18;
  sub_18604();
  v79 = sub_35468();

  if (!(a5 >> 62))
  {
LABEL_15:
    v19 = *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_16;
  }

LABEL_72:
  v19 = sub_35768();
LABEL_16:
  v20 = &off_45000;
  v75 = a7;
  if (v19)
  {
    v21 = 0;
    v22 = a5 & 0xC000000000000001;
    v23 = a5 + 32;
    v24 = a5 & 0xFFFFFFFFFFFFFF8;
    v77 = v23;
    v70 = v22;
    v72 = v19;
    v69 = v24;
    while (1)
    {
      if (v22)
      {
        v25 = sub_356C8();
      }

      else
      {
        if (v21 >= *(v24 + 16))
        {
          goto LABEL_74;
        }

        v25 = *(v77 + 8 * v21);
      }

      v26 = v25;
      v27 = __OFADD__(v21++, 1);
      if (v27)
      {
        __break(1u);
LABEL_74:
        __break(1u);
        while (2)
        {
          __break(1u);
          while (2)
          {
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            v36 = sub_35768();
            if (!v36)
            {
              goto LABEL_80;
            }

LABEL_44:
            v37 = 0;
            v38 = isa & 0xC000000000000001;
            v39 = isa & 0xFFFFFFFFFFFFFF8;
            v40 = isa + 32;
            v76 = v36;
            v71 = isa + 32;
            v73 = isa & 0xFFFFFFFFFFFFFF8;
LABEL_47:
            if (v38)
            {
              v41 = sub_356C8();
            }

            else
            {
              if (v37 >= *(v39 + 16))
              {
                continue;
              }

              v41 = *(v40 + 8 * v37);
            }

            break;
          }

          v42 = v41;
          v27 = __OFADD__(v37++, 1);
          if (v27)
          {
            continue;
          }

          break;
        }

        if (v80)
        {
          if (v80 >> 62)
          {
            isa = sub_35768();
            if (isa)
            {
LABEL_54:
              v83 = &_swiftEmptyArrayStorage;
              sub_31A2C(0, isa & ~(isa >> 63), 0);
              if (isa < 0)
              {
                goto LABEL_78;
              }

              v43 = v83;
              if ((v80 & 0xC000000000000001) != 0)
              {
                for (i = 0; i != isa; ++i)
                {
                  sub_356C8();
                  sub_18604();
                  swift_dynamicCast();
                  v83 = v43;
                  v46 = v43[2];
                  v45 = v43[3];
                  if (v46 >= v45 >> 1)
                  {
                    sub_31A2C((v45 > 1), v46 + 1, 1);
                    v43 = v83;
                  }

                  v43[2] = v46 + 1;
                  sub_11DF8(v82, &v43[4 * v46 + 4]);
                }
              }

              else
              {
                sub_18604();
                v47 = (v80 + 32);
                do
                {
                  v48 = *v47;
                  swift_dynamicCast();
                  v83 = v43;
                  v50 = v43[2];
                  v49 = v43[3];
                  if (v50 >= v49 >> 1)
                  {
                    sub_31A2C((v49 > 1), v50 + 1, 1);
                    v43 = v83;
                  }

                  v43[2] = v50 + 1;
                  sub_11DF8(v82, &v43[4 * v50 + 4]);
                  ++v47;
                  --isa;
                }

                while (isa);
              }

              v20 = &off_45000;
              v36 = v76;
              v40 = v71;
              v39 = v73;
            }
          }

          else
          {
            isa = *(&dword_10 + (v80 & 0xFFFFFFFFFFFFFF8));
            if (isa)
            {
              goto LABEL_54;
            }
          }

          isa = sub_35458().super.isa;
        }

        else
        {
          isa = 0;
        }

        [v42 v20[387]];

        if (v37 == v36)
        {
          goto LABEL_80;
        }

        goto LABEL_47;
      }

      if (v13)
      {
        break;
      }

      isa = 0;
LABEL_19:
      [v26 v20[387]];

      if (v21 == v19)
      {
        goto LABEL_42;
      }
    }

    if (v13 >> 62)
    {
      isa = sub_35768();
      if (isa)
      {
        goto LABEL_27;
      }
    }

    else
    {
      isa = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
      if (isa)
      {
LABEL_27:
        v83 = &_swiftEmptyArrayStorage;
        sub_31A2C(0, isa & ~(isa >> 63), 0);
        if (isa < 0)
        {
          goto LABEL_77;
        }

        v28 = v83;
        if ((v13 & 0xC000000000000001) != 0)
        {
          for (j = 0; j != isa; ++j)
          {
            sub_356C8();
            sub_18604();
            swift_dynamicCast();
            v83 = v28;
            v31 = v28[2];
            v30 = v28[3];
            if (v31 >= v30 >> 1)
            {
              sub_31A2C((v30 > 1), v31 + 1, 1);
              v28 = v83;
            }

            v28[2] = v31 + 1;
            sub_11DF8(v82, &v28[4 * v31 + 4]);
          }
        }

        else
        {
          sub_18604();
          v32 = (v13 + 32);
          do
          {
            v33 = *v32;
            swift_dynamicCast();
            v83 = v28;
            v35 = v28[2];
            v34 = v28[3];
            if (v35 >= v34 >> 1)
            {
              sub_31A2C((v34 > 1), v35 + 1, 1);
              v28 = v83;
            }

            v28[2] = v35 + 1;
            sub_11DF8(v82, &v28[4 * v35 + 4]);
            ++v32;
            --isa;
          }

          while (isa);
        }

        v20 = &off_45000;
        v22 = v70;
        v19 = v72;
        v24 = v69;
      }
    }

    isa = sub_35458().super.isa;

    goto LABEL_19;
  }

LABEL_42:

  isa = a6;
  if (a6 >> 62)
  {
    goto LABEL_79;
  }

  v36 = *(&dword_10 + (a6 & 0xFFFFFFFFFFFFFF8));
  if (v36)
  {
    goto LABEL_44;
  }

LABEL_80:

  v51 = v75;
  if (v75 >> 62)
  {
    goto LABEL_110;
  }

  v52 = *(&dword_10 + (v75 & 0xFFFFFFFFFFFFFF8));
  if (v52)
  {
LABEL_82:
    v53 = 0;
    v54 = v51 & 0xC000000000000001;
    v81 = v51 & 0xFFFFFFFFFFFFFF8;
    v74 = v52;
    v78 = v51 + 32;
    while (1)
    {
      if (v54)
      {
        v56 = sub_356C8();
      }

      else
      {
        if (v53 >= *(v81 + 16))
        {
          goto LABEL_108;
        }

        v56 = *(v78 + 8 * v53);
      }

      v57 = v56;
      v27 = __OFADD__(v53++, 1);
      if (v27)
      {
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        v52 = sub_35768();
        if (!v52)
        {
        }

        goto LABEL_82;
      }

      if (v79)
      {
        break;
      }

      v55 = 0;
LABEL_84:
      [v57 v20[387]];

      if (v53 == v52)
      {
      }
    }

    if (v79 >> 62)
    {
      v58 = sub_35768();
      if (v58)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v58 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
      if (v58)
      {
LABEL_92:
        v83 = &_swiftEmptyArrayStorage;
        sub_31A2C(0, v58 & ~(v58 >> 63), 0);
        if (v58 < 0)
        {
          goto LABEL_109;
        }

        v59 = v83;
        if ((v79 & 0xC000000000000001) != 0)
        {
          for (k = 0; k != v58; ++k)
          {
            sub_356C8();
            sub_18604();
            swift_dynamicCast();
            v83 = v59;
            v62 = v59[2];
            v61 = v59[3];
            if (v62 >= v61 >> 1)
            {
              sub_31A2C((v61 > 1), v62 + 1, 1);
              v59 = v83;
            }

            v59[2] = v62 + 1;
            sub_11DF8(v82, &v59[4 * v62 + 4]);
          }
        }

        else
        {
          sub_18604();
          v63 = (v79 + 32);
          do
          {
            v64 = *v63;
            swift_dynamicCast();
            v83 = v59;
            v66 = v59[2];
            v65 = v59[3];
            if (v66 >= v65 >> 1)
            {
              sub_31A2C((v65 > 1), v66 + 1, 1);
              v59 = v83;
            }

            v59[2] = v66 + 1;
            sub_11DF8(v82, &v59[4 * v66 + 4]);
            ++v63;
            --v58;
          }

          while (v58);
        }

        v52 = v74;
        v51 = v75;
        v20 = &off_45000;
      }
    }

    v55 = sub_35458().super.isa;

    goto LABEL_84;
  }
}

unint64_t sub_18604()
{
  result = qword_48570;
  if (!qword_48570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_48570);
  }

  return result;
}

uint64_t sub_18650@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = sub_3828(&qword_48150);
  __chkstk_darwin(v28);
  v27 = &v25 - v1;
  v2 = sub_35178();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_35298();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_35328();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v16 = qword_48E80;
  v17 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  swift_beginAccess();
  (*(v6 + 16))(v8, v16 + v17, v5);
  sub_35248();
  (*(v6 + 8))(v8, v5);
  sub_35128();
  (*(v25 + 8))(v4, v26);
  v18 = v27;
  v19 = *(v28 + 48);
  (*(v10 + 16))(v27, v15, v9);
  v18[v19] = 0;
  v20 = (*(v10 + 88))(v18, v9);
  if (v20 == enum case for WaterTemperatureUnit.celcius(_:) || v20 == enum case for WaterTemperatureUnit.fahrenheit(_:))
  {
    (*(v10 + 104))(v13, v20, v9);
    v21 = v29;
    sub_351F8();
    (*(v10 + 8))(v15, v9);
    v22 = enum case for Temperature.temperature(_:);
    v23 = sub_35118();
    return (*(*(v23 - 8) + 104))(v21, v22, v23);
  }

  else
  {
    result = sub_357C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_18A58@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = sub_3828(&qword_48150);
  __chkstk_darwin(v28);
  v27 = &v25 - v1;
  v2 = sub_35178();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_35298();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_35328();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v16 = qword_48E80;
  v17 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  swift_beginAccess();
  (*(v6 + 16))(v8, v16 + v17, v5);
  sub_35248();
  (*(v6 + 8))(v8, v5);
  sub_35128();
  (*(v25 + 8))(v4, v26);
  v18 = v27;
  v19 = *(v28 + 48);
  (*(v10 + 16))(v27, v15, v9);
  v18[v19] = 1;
  v20 = (*(v10 + 88))(v18, v9);
  if (v20 == enum case for WaterTemperatureUnit.celcius(_:) || v20 == enum case for WaterTemperatureUnit.fahrenheit(_:))
  {
    (*(v10 + 104))(v13, v20, v9);
    v21 = v29;
    sub_351F8();
    (*(v10 + 8))(v15, v9);
    v22 = enum case for Temperature.temperature(_:);
    v23 = sub_35118();
    return (*(*(v23 - 8) + 104))(v21, v22, v23);
  }

  else
  {
    result = sub_357C8();
    __break(1u);
  }

  return result;
}

BOOL sub_18E6C()
{
  v0 = sub_34CD8();
  v70 = *(v0 - 8);
  v71 = v0;
  __chkstk_darwin(v0);
  v69 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_35178();
  v73 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_35298();
  v72 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_35328();
  v4 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3828(&qword_48140);
  v7 = __chkstk_darwin(v6 - 8);
  v62 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v11 = sub_35118();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  (*(v12 + 104))(&v50 - v16, enum case for Temperature.unknown(_:), v11);
  v18 = sub_35108();
  v19 = *(v12 + 8);
  v19(v17, v11);
  if (v18)
  {
    return 0;
  }

  sub_350F8();
  v20 = sub_35218();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v10, 1, v20) == 1)
  {
    goto LABEL_6;
  }

  v57 = v19;
  v58 = v22;
  v59 = v20;
  v60 = v21;
  v61 = v4;
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v23 = qword_48E80;
  v24 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  swift_beginAccess();
  v25 = v72;
  v26 = *(v72 + 16);
  v56 = v23;
  v55 = v24;
  v27 = v23 + v24;
  v28 = v65;
  v29 = v67;
  v54 = v72 + 16;
  v53 = v26;
  v26(v65, v27, v67);
  v30 = v64;
  sub_35248();
  v31 = v29;
  v32 = v30;
  v33 = *(v25 + 8);
  v72 = v25 + 8;
  v33(v28, v31);
  v34 = v63;
  sub_35128();
  v35 = *(v73 + 8);
  v73 += 8;
  v52 = v35;
  v35(v32, v68);
  sub_35208();
  v37 = v36;
  v38 = *(v61 + 8);
  v61 += 8;
  v51 = v38;
  v38(v34, v66);
  v39 = v59;
  v40 = *(v60 + 8);
  v60 += 8;
  v50 = v40;
  v40(v10, v59);
  sub_18650(v15);
  v10 = v62;
  sub_350F8();
  v57(v15, v11);
  if (v58(v10, 1, v39) == 1)
  {
LABEL_6:
    sub_1DD50(v10);
    v41 = v69;
    sub_34EB8();
    v42 = sub_34CC8();
    v43 = sub_354F8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_0, v42, v43, "Unable to convert temperatures for comparison.", v44, 2u);
    }

    (*(v70 + 8))(v41, v71);
    return 0;
  }

  v46 = v65;
  v47 = v67;
  v53(v65, v56 + v55, v67);
  sub_35248();
  v33(v46, v47);
  sub_35128();
  v52(v32, v68);
  sub_35208();
  v49 = v48;
  v51(v34, v66);
  v50(v10, v39);
  return v37 < v49;
}

BOOL sub_195D0()
{
  v1 = sub_34CD8();
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v45 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3828(&qword_48140);
  v4 = __chkstk_darwin(v3 - 8);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = &v42 - v6;
  v7 = sub_35178();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_35298();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_35328();
  v53 = *(v14 - 8);
  v54 = v14;
  __chkstk_darwin(v14);
  v52 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_35118();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v43 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v42 - v20;
  (*(v17 + 104))(&v42 - v20, enum case for Temperature.unknown(_:), v16);
  v50 = v0;
  v22 = sub_35108();
  v23 = *(v17 + 8);
  v23(v21, v16);
  if (v22)
  {
    return 0;
  }

  v42 = v23;
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v24 = qword_48E80;
  v25 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  swift_beginAccess();
  (*(v11 + 16))(v13, v24 + v25, v10);
  sub_35248();
  (*(v11 + 8))(v13, v10);
  v26 = v52;
  sub_35128();
  (*(v48 + 8))(v9, v49);
  v27 = v51;
  sub_350F8();
  v28 = sub_35218();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v27, 1, v28) == 1 || (sub_35208(), v32 = v31, v33 = *(v29 + 8), v33(v27, v28), v34 = v43, sub_18A58(v43), v27 = v44, sub_350F8(), v42(v34, v16), v30(v27, 1, v28) == 1))
  {
    sub_1DD50(v27);
    v35 = v45;
    sub_34EB8();
    v36 = sub_34CC8();
    v37 = sub_354F8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "Unable to convert temperatures for comparison.", v38, 2u);
    }

    (*(v46 + 8))(v35, v47);
    (*(v53 + 8))(v26, v54);
    return 0;
  }

  sub_35208();
  v41 = v40;
  (*(v53 + 8))(v26, v54);
  v33(v27, v28);
  return v41 < v32;
}

id sub_19C78(uint64_t a1)
{
  if (a1 == 8)
  {

    return sub_1A200();
  }

  else if (a1 == 10)
  {

    return sub_1A07C();
  }

  else
  {
    sub_356B8(45);

    v3._countAndFlagsBits = sub_357B8();
    sub_35418(v3);

    result = sub_35758();
    __break(1u);
  }

  return result;
}

id sub_19D80()
{
  v1 = sub_35118();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_temperature;
  v5 = enum case for Temperature.unknown(_:);
  v6 = *(v2 + 104);
  v6(v4, enum case for Temperature.unknown(_:), v1);
  sub_35108();
  v7 = *(v2 + 8);
  v7(v4, v1);
  v8 = sub_35398();

  v9 = [objc_opt_self() symbolImageProviderWithSystemName:v8];

  v6(v4, v5, v1);
  LOBYTE(v5) = sub_35108();
  v7(v4, v1);
  if (v5)
  {
    v10 = [objc_opt_self() whiteColor];
  }

  else if (*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_historical) == 1)
  {
    if (qword_47658 != -1)
    {
      swift_once();
    }

    v10 = qword_48ED8;
  }

  else
  {
    v10 = [objc_allocWithZone(UIColor) initWithRed:0.384313725 green:0.796078431 blue:0.980392157 alpha:1.0];
  }

  v11 = v10;
  [v9 setTintColor:v10];

  return v9;
}

void sub_1A030(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1A07C()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_unavailable);
  sub_2B788(*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_unavailable), *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_historical));
  if (qword_47668 != -1)
  {
    swift_once();
  }

  sub_1D390();
  v3 = v2;
  sub_6D44(0, &unk_47ED0);
  isa = sub_35458().super.isa;

  sub_6D44(0, &qword_48540);
  v5 = sub_35458().super.isa;
  v6 = objc_opt_self();
  LODWORD(v7) = v3;
  v8 = [v6 gaugeProviderWithStyle:0 gaugeColors:isa gaugeColorLocations:v5 fillFraction:v7];

  if (v1)
  {
    v9 = sub_1E02C(1);
  }

  else
  {
    v9 = sub_19D80();
  }

  v10 = v9;
  v11 = sub_1C9A8();
  v12 = [objc_allocWithZone(CLKComplicationTemplateGraphicCircularOpenGaugeImage) initWithGaugeProvider:v8 bottomImageProvider:v10 centerTextProvider:v11];

  return v12;
}

id sub_1A200()
{
  v1 = sub_35118();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v4, enum case for Temperature.unknown(_:), v1);
  v5 = sub_35108();
  (*(v2 + 8))(v4, v1);
  v6 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_historical);
  if (v5 & 1) != 0 || (*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_unavailable))
  {
    v10 = v5 ^ 1 | *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_unavailable);
    sub_2B788(v10 & 1, *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_historical));
    if (qword_47668 != -1)
    {
      swift_once();
    }

    sub_1D390();
    v12 = v11;
    sub_6D44(0, &unk_47ED0);
    isa = sub_35458().super.isa;

    sub_6D44(0, &qword_48540);
    v14 = sub_35458().super.isa;
    v15 = objc_opt_self();
    LODWORD(v16) = v12;
    v17 = [v15 gaugeProviderWithStyle:0 gaugeColors:isa gaugeColorLocations:v14 fillFraction:v16];

    v18 = sub_1A678();
    v19 = sub_1B278();
    if (v10)
    {
      v20 = sub_1E02C(0);
    }

    else
    {
      v20 = sub_1E450();
    }

    v21 = v20;
    v22 = [objc_allocWithZone(CLKComplicationTemplateGraphicCornerGaugeImage) initWithGaugeProvider:v17 leadingTextProvider:v18 trailingTextProvider:v19 imageProvider:v20];
  }

  else
  {
    sub_3828(&qword_47868);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_366B0;
    if (v6)
    {
      if (qword_47658 != -1)
      {
        swift_once();
      }

      v8 = qword_48ED8;
      *(v7 + 32) = qword_48ED8;
      *(v7 + 40) = v8;
      v9 = v8;
    }

    else
    {
      if (qword_47710 != -1)
      {
        swift_once();
      }

      v23 = qword_48F90;
      *(v7 + 32) = qword_48F90;
      v24 = qword_47718;
      v25 = v23;
      if (v24 != -1)
      {
        swift_once();
      }

      v9 = qword_48F98;
      *(v7 + 40) = qword_48F98;
    }

    v26 = v9;
    if (qword_47668 != -1)
    {
      swift_once();
    }

    sub_1D390();
    v28 = v27;
    sub_6D44(0, &unk_47ED0);
    v29 = sub_35458().super.isa;

    sub_6D44(0, &qword_48540);
    v30 = sub_35458().super.isa;
    v31 = objc_opt_self();
    LODWORD(v32) = v28;
    v17 = [v31 gaugeProviderWithStyle:0 gaugeColors:v29 gaugeColorLocations:v30 fillFraction:v32];

    v18 = sub_1A678();
    v19 = sub_1B278();
    v21 = sub_1BE7C();
    v22 = [objc_allocWithZone(CLKComplicationTemplateGraphicCornerGaugeText) initWithGaugeProvider:v17 leadingTextProvider:v18 trailingTextProvider:v19 outerTextProvider:v21];
  }

  v33 = v22;

  return v33;
}

uint64_t sub_1A678()
{
  v74 = sub_3828(&qword_48148);
  __chkstk_darwin(v74);
  v75 = &v73 - v0;
  v90 = sub_35328();
  v1 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_35178();
  v3 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_3828(&qword_47B38);
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v86 = &v73 - v5;
  v6 = sub_35218();
  v99 = *(v6 - 8);
  v100 = v6;
  __chkstk_darwin(v6);
  v98 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_35118();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v97 = &v73 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v73 - v16;
  __chkstk_darwin(v15);
  v19 = &v73 - v18;
  sub_18650(&v73 - v18);
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v82 = v12;
  v79 = qword_48E80;
  v78 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter;
  v20 = *(qword_48E80 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter);
  v21 = v9[2];
  v80 = v9 + 2;
  v96 = v21;
  v21(v17, v19, v8);
  v94 = v9[11];
  v95 = v9 + 11;
  v22 = v94(v17, v8);
  v93 = enum case for Temperature.temperature(_:);
  v23 = v19;
  v77 = v1;
  v88 = v8;
  v76 = v3;
  if (v22 == enum case for Temperature.temperature(_:))
  {
    v24 = v9[12];
    v92 = v19;
    v24(v17, v8);
    (*(v99 + 32))(v98, v17, v100);
    v73 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_settings;

    v25 = v83;
    sub_35248();
    v26 = v87;
    sub_35128();
    v27 = v90;
    v84 = v9;
    v28 = *(v3 + 8);
    v29 = v85;
    v28(v25, v85);
    sub_35208();
    v30 = *(v1 + 8);
    v30(v26, v27);
    sub_35248();
    sub_35128();
    v28(v25, v29);
    v31 = v84;
    v8 = v88;
    sub_35318();
    v30(v26, v27);
    sub_6D44(0, &qword_47B48);
    v32 = v86;
    sub_34BA8();
    v101[0] = sub_35598();
    v101[1] = v33;

    sub_1DDB8(v101, v20);

    (*(v89 + 8))(v32, v91);

    (*(v99 + 8))(v98, v100);
    v34 = v92;
    v92 = v31[1];
    v92(v34, v8);
  }

  else
  {
    v35 = v9;
    v36 = enum case for Temperature.unknown(_:);
    v37 = v35[1];
    v37(v23, v8);
    v92 = v37;
    if (v22 != v36)
    {
      v37(v17, v8);
    }

    v31 = v35;
  }

  v38 = sub_35398();

  v39 = [objc_opt_self() textProviderWithText:v38];

  if (*(v81 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_unavailable) == 1)
  {
    v40 = qword_47650;
    v41 = v39;
    v42 = v97;
    v43 = v82;
    if (v40 != -1)
    {
      swift_once();
    }

    v44 = qword_48ED0;
  }

  else
  {
    v42 = v97;
    v43 = v82;
    if (*(v81 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_historical))
    {
      v45 = qword_47658;
      v46 = v39;
      if (v45 != -1)
      {
        swift_once();
      }

      v44 = qword_48ED8;
    }

    else
    {
      v47 = *(v74 + 48);
      v48 = v75;
      v96(v75, v81 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_temperature, v8);
      v48[v47] = 0;
      v49 = v94(v48, v8);
      if (v49 == v93)
      {
        v50 = qword_47710;
        v51 = v39;
        if (v50 != -1)
        {
          swift_once();
        }

        v52 = qword_48F90;
        v92(v48, v8);
        goto LABEL_26;
      }

      if (v49 != enum case for Temperature.unknown(_:))
      {
        v72 = v39;
        result = sub_357C8();
        __break(1u);
        return result;
      }

      v53 = qword_47700;
      v54 = v39;
      if (v53 != -1)
      {
        swift_once();
      }

      v44 = qword_48F80;
    }
  }

  v52 = v44;
LABEL_26:
  v82 = v39;
  [v39 setTintColor:v52];

  sub_18650(v42);
  v55 = *(v79 + v78);
  v96(v43, v42, v8);
  v56 = v94(v43, v8);
  if (v56 == v93)
  {
    v57 = v31[12];
    v84 = v31 + 12;
    v57(v43, v8);
    (*(v99 + 32))(v98, v43, v100);
    v96 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_settings;

    v58 = v83;
    sub_35248();
    v59 = v87;
    sub_35128();
    v60 = *(v76 + 8);
    v61 = v85;
    v60(v58, v85);
    sub_35208();
    v81 = v55;
    v62 = *(v77 + 8);
    v63 = v90;
    v62(v59, v90);
    sub_35248();
    sub_35128();
    v60(v58, v61);
    sub_35318();
    v62(v59, v63);
    sub_6D44(0, &qword_47B48);
    v64 = v86;
    sub_34BA8();
    sub_35598();
    (*(v89 + 8))(v64, v91);

    (*(v99 + 8))(v98, v100);
    v92(v97, v88);
  }

  else
  {
    v65 = v56;
    v66 = enum case for Temperature.unknown(_:);
    v67 = v42;
    v68 = v92;
    v92(v67, v8);
    if (v65 != v66)
    {
      v68(v43, v8);
    }
  }

  v69 = v82;
  v70 = sub_35398();

  [v69 setAccessibilityLabel:v70];

  return v69;
}

uint64_t sub_1B278()
{
  v74 = sub_3828(&qword_48148);
  __chkstk_darwin(v74);
  v75 = &v73 - v0;
  v90 = sub_35328();
  v1 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_35178();
  v3 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_3828(&qword_47B38);
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v86 = &v73 - v5;
  v6 = sub_35218();
  v99 = *(v6 - 8);
  v100 = v6;
  __chkstk_darwin(v6);
  v98 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_35118();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v97 = &v73 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v73 - v16;
  __chkstk_darwin(v15);
  v19 = &v73 - v18;
  sub_18A58(&v73 - v18);
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v82 = v12;
  v79 = qword_48E80;
  v78 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter;
  v20 = *(qword_48E80 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter);
  v21 = v9[2];
  v80 = v9 + 2;
  v96 = v21;
  v21(v17, v19, v8);
  v94 = v9[11];
  v95 = v9 + 11;
  v22 = v94(v17, v8);
  v93 = enum case for Temperature.temperature(_:);
  v23 = v19;
  v77 = v1;
  v88 = v8;
  v76 = v3;
  if (v22 == enum case for Temperature.temperature(_:))
  {
    v24 = v9[12];
    v92 = v19;
    v24(v17, v8);
    (*(v99 + 32))(v98, v17, v100);
    v73 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_settings;

    v25 = v83;
    sub_35248();
    v26 = v87;
    sub_35128();
    v27 = v90;
    v84 = v9;
    v28 = *(v3 + 8);
    v29 = v85;
    v28(v25, v85);
    sub_35208();
    v30 = *(v1 + 8);
    v30(v26, v27);
    sub_35248();
    sub_35128();
    v28(v25, v29);
    v31 = v84;
    v8 = v88;
    sub_35318();
    v30(v26, v27);
    sub_6D44(0, &qword_47B48);
    v32 = v86;
    sub_34BA8();
    v101[0] = sub_35598();
    v101[1] = v33;

    sub_1DDB8(v101, v20);

    (*(v89 + 8))(v32, v91);

    (*(v99 + 8))(v98, v100);
    v34 = v92;
    v92 = v31[1];
    v92(v34, v8);
  }

  else
  {
    v35 = v9;
    v36 = enum case for Temperature.unknown(_:);
    v37 = v35[1];
    v37(v23, v8);
    v92 = v37;
    if (v22 != v36)
    {
      v37(v17, v8);
    }

    v31 = v35;
  }

  v38 = sub_35398();

  v39 = [objc_opt_self() textProviderWithText:v38];

  if (*(v81 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_unavailable) == 1)
  {
    v40 = qword_47650;
    v41 = v39;
    v42 = v97;
    v43 = v82;
    if (v40 != -1)
    {
      swift_once();
    }

    v44 = qword_48ED0;
  }

  else
  {
    v42 = v97;
    v43 = v82;
    if (*(v81 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_historical))
    {
      v45 = qword_47658;
      v46 = v39;
      if (v45 != -1)
      {
        swift_once();
      }

      v44 = qword_48ED8;
    }

    else
    {
      v47 = *(v74 + 48);
      v48 = v75;
      v96(v75, v81 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_temperature, v8);
      v48[v47] = 1;
      v49 = v94(v48, v8);
      if (v49 == v93)
      {
        v50 = qword_47718;
        v51 = v39;
        if (v50 != -1)
        {
          swift_once();
        }

        v52 = qword_48F98;
        v92(v48, v8);
        goto LABEL_26;
      }

      if (v49 != enum case for Temperature.unknown(_:))
      {
        v72 = v39;
        result = sub_357C8();
        __break(1u);
        return result;
      }

      v53 = qword_47708;
      v54 = v39;
      if (v53 != -1)
      {
        swift_once();
      }

      v44 = qword_48F88;
    }
  }

  v52 = v44;
LABEL_26:
  v82 = v39;
  [v39 setTintColor:v52];

  sub_18A58(v42);
  v55 = *(v79 + v78);
  v96(v43, v42, v8);
  v56 = v94(v43, v8);
  if (v56 == v93)
  {
    v57 = v31[12];
    v84 = v31 + 12;
    v57(v43, v8);
    (*(v99 + 32))(v98, v43, v100);
    v96 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_settings;

    v58 = v83;
    sub_35248();
    v59 = v87;
    sub_35128();
    v60 = *(v76 + 8);
    v61 = v85;
    v60(v58, v85);
    sub_35208();
    v81 = v55;
    v62 = *(v77 + 8);
    v63 = v90;
    v62(v59, v90);
    sub_35248();
    sub_35128();
    v60(v58, v61);
    sub_35318();
    v62(v59, v63);
    sub_6D44(0, &qword_47B48);
    v64 = v86;
    sub_34BA8();
    sub_35598();
    (*(v89 + 8))(v64, v91);

    (*(v99 + 8))(v98, v100);
    v92(v97, v88);
  }

  else
  {
    v65 = v56;
    v66 = enum case for Temperature.unknown(_:);
    v67 = v42;
    v68 = v92;
    v92(v67, v8);
    if (v65 != v66)
    {
      v68(v43, v8);
    }
  }

  v69 = v82;
  v70 = sub_35398();

  [v69 setAccessibilityLabel:v70];

  return v69;
}

id sub_1BE7C()
{
  v1 = v0;
  v2 = sub_35328();
  v83 = *(v2 - 8);
  v84 = v2;
  __chkstk_darwin(v2);
  v81 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_35178();
  v76 = *(v4 - 8);
  v77 = v4;
  __chkstk_darwin(v4);
  v75 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_3828(&qword_47B38);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = v66 - v6;
  v7 = sub_35218();
  v91 = *(v7 - 8);
  v92 = v7;
  __chkstk_darwin(v7);
  v90 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_35118();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v74 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v66 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = v66 - v17;
  __chkstk_darwin(v16);
  v20 = v66 - v19;
  v21 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_temperature;
  v22 = *(v10 + 104);
  LODWORD(v89) = enum case for Temperature.unknown(_:);
  v22(v18);
  v23 = sub_35108();
  v85 = v10;
  v86 = *(v10 + 8);
  v87 = v10 + 8;
  v86(v18, v9);
  v73 = v1;
  if ((v23 & 1) != 0 || *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_unavailable) == 1)
  {
    (v22)(v20, v89, v9);
    v24 = v85;
  }

  else
  {
    v24 = v85;
    (*(v85 + 16))(v20, v1 + v21, v9);
  }

  if (qword_47630 != -1)
  {
    swift_once();
  }

  v72 = qword_48E80;
  v70 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter;
  v25 = *(qword_48E80 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter);
  v71 = *(v24 + 16);
  v71(v15, v20, v9);
  v26 = *(v24 + 88);
  v69 = v24 + 88;
  v68 = v26;
  v27 = v26(v15, v9);
  v67 = enum case for Temperature.temperature(_:);
  v88 = v20;
  v78 = v9;
  if (v27 == enum case for Temperature.temperature(_:))
  {
    (*(v24 + 96))(v15, v9);
    (*(v91 + 32))(v90, v15, v92);

    v28 = v75;
    sub_35248();
    v29 = v81;
    sub_35128();
    v30 = v77;
    v31 = *(v76 + 8);
    v31(v28, v77);
    sub_35208();
    v66[1] = v25;
    v66[2] = v24 + 16;
    v32 = *(v83 + 8);
    v33 = v84;
    v32(v29, v84);
    sub_35248();
    sub_35128();
    v31(v28, v30);
    sub_35318();
    v34 = v33;
    v24 = v85;
    v32(v29, v34);
    sub_6D44(0, &qword_47B48);
    v35 = v79;
    sub_34BA8();
    v36 = sub_35598();
    v38 = v37;
    (*(v80 + 8))(v35, v82);

    v9 = v78;
    (*(v91 + 8))(v90, v92);
  }

  else
  {
    if (v27 != v89)
    {
      v86(v15, v9);
    }

    v38 = 0xE200000000000000;
    v36 = 11565;
  }

  if (sub_18E6C() || sub_195D0())
  {
    v93 = 126;
    v94 = 0xE100000000000000;
    v95._countAndFlagsBits = v36;
    v95._object = v38;
    sub_35418(v95);
  }

  v39 = sub_35398();

  v40 = [objc_opt_self() textProviderWithText:v39];

  v41 = qword_47638;
  v42 = v40;
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = qword_48EB0;
  v44 = sub_35398();
  v45 = sub_35398();
  v46 = [v43 localizedStringForKey:v44 value:0 table:v45];

  v85 = sub_353A8();
  v48 = v47;

  sub_3828(&unk_47EE0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_36860;
  v50 = *(v72 + v70);
  v51 = v74;
  v52 = v88;
  v71(v74, v88, v9);
  v53 = v68(v51, v9);
  if (v53 == v67)
  {
    (*(v24 + 96))(v51, v9);
    (*(v91 + 32))(v90, v51, v92);

    v54 = v75;
    sub_35248();
    v89 = v42;
    v55 = v81;
    sub_35128();
    v74 = v48;
    v56 = v77;
    v76 = *(v76 + 8);
    (v76)(v54, v77);
    sub_35208();
    v73 = v50;
    v57 = v84;
    v58 = *(v83 + 8);
    v58(v55, v84);
    sub_35248();
    sub_35128();
    (v76)(v54, v56);
    sub_35318();
    v59 = v55;
    v42 = v89;
    v58(v59, v57);
    v52 = v88;
    sub_6D44(0, &qword_47B48);
    v60 = v79;
    sub_34BA8();
    v61 = sub_35598();
    v63 = v62;
    (*(v80 + 8))(v60, v82);

    (*(v91 + 8))(v90, v92);
    v9 = v78;
  }

  else
  {
    if (v53 != v89)
    {
      v86(v51, v9);
    }

    v63 = 0xE200000000000000;
    v61 = 11565;
  }

  *(v49 + 56) = &type metadata for String;
  *(v49 + 64) = sub_11878();
  *(v49 + 32) = v61;
  *(v49 + 40) = v63;
  sub_353B8();

  v64 = sub_35398();

  [v42 setAccessibilityLabel:v64];

  v86(v52, v9);
  return v42;
}