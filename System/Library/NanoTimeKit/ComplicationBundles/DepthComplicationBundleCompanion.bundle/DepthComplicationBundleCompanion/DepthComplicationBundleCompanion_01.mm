id sub_1C9A8()
{
  v1 = v0;
  v2 = sub_35328();
  v81 = *(v2 - 8);
  v82 = v2;
  __chkstk_darwin(v2);
  v4 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_35178();
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin(v5);
  v75 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3828(&qword_47B38);
  v79 = *(v7 - 8);
  v80 = v7;
  __chkstk_darwin(v7);
  v78 = v65 - v8;
  v9 = sub_35218();
  v10 = *(v9 - 8);
  v88 = v9;
  v89 = v10;
  __chkstk_darwin(v9);
  v86 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_35118();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v73 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = v65 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v65 - v20;
  __chkstk_darwin(v19);
  v90 = v65 - v22;
  v23 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_temperature;
  v24 = v13[13];
  LODWORD(v85) = enum case for Temperature.unknown(_:);
  v24(v21);
  v25 = sub_35108();
  v87 = v13;
  v26 = v13[1];
  v91 = v12;
  v83 = v26;
  v84 = v13 + 1;
  v26(v21, v12);
  p_cache = &OBJC_METACLASS____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView.cache;
  v74 = v1;
  if ((v25 & 1) != 0 || *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_unavailable) == 1)
  {
    (v24)(v90, v85, v91);
    v28 = v87;
  }

  else
  {
    v28 = v87;
    (v87[2])(v90, v1 + v23, v91);
  }

  if (qword_47630 != -1)
  {
    swift_once();
  }

  v71 = qword_48E80;
  v69 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter;
  v29 = *(qword_48E80 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter);
  v30 = v28[2];
  v31 = v91;
  v72 = (v28 + 2);
  v70 = v30;
  v30(v18, v90, v91);
  v32 = v28[11];
  v68 = (v28 + 11);
  v67 = v32;
  v33 = v32(v18, v31);
  v34 = &OBJC_METACLASS____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView.cache;
  v66 = enum case for Temperature.temperature(_:);
  if (v33 == enum case for Temperature.temperature(_:))
  {
    (v28[12])(v18, v91);
    (*(v89 + 32))(v86, v18, v88);
    v65[1] = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_settings;

    v35 = v75;
    sub_35248();
    sub_35128();
    v36 = v77;
    v37 = *(v76 + 8);
    v37(v35, v77);
    sub_35208();
    v38 = v82;
    v39 = *(v81 + 8);
    v39(v4, v82);
    sub_35248();
    sub_35128();
    v37(v35, v36);
    v28 = v87;
    sub_35318();
    v40 = v38;
    p_cache = (&OBJC_METACLASS____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView + 16);
    v39(v4, v40);
    sub_6D44(0, &qword_47B48);
    v41 = v78;
    sub_34BA8();
    v92 = sub_35598();
    v93 = v42;

    sub_1DDB8(&v92, v29);

    v43 = v41;
    v34 = (&OBJC_METACLASS____TtC32DepthComplicationBundleCompanion35DepthRectangularHistoricalGraphView + 16);
    (*(v79 + 8))(v43, v80);

    v45 = v92;
    v44 = v93;
    (*(v89 + 8))(v86, v88);
  }

  else
  {
    if (v33 != v85)
    {
      v83(v18, v91);
    }

    v44 = 0xE200000000000000;
    v45 = 11565;
  }

  v46 = v74;
  if ((sub_18E6C() || sub_195D0()) && (*(p_cache[30] + v46) & 1) == 0)
  {
    v92 = 126;
    v93 = 0xE100000000000000;
    v94._countAndFlagsBits = v45;
    v94._object = v44;
    sub_35418(v94);
  }

  v47 = sub_35398();

  v87 = [objc_opt_self() textProviderWithText:v47];

  v48 = *(v71 + v69);
  v49 = v73;
  v50 = v91;
  v70(v73, v90, v91);
  v51 = v67(v49, v50);
  if (v51 == v66)
  {
    (v28[12])(v49, v91);
    (*(v89 + 32))(v86, v49, v88);
    v85 = v34[210];
    v52 = v87;

    v74 = v48;
    v53 = v75;
    sub_35248();
    sub_35128();
    v54 = v4;
    v55 = v77;
    v56 = *(v76 + 8);
    v56(v53, v77);
    sub_35208();
    v57 = v82;
    v58 = *(v81 + 8);
    v58(v54, v82);
    sub_35248();
    sub_35128();
    v56(v53, v55);
    sub_35318();
    v58(v54, v57);
    sub_6D44(0, &qword_47B48);
    v59 = v78;
    sub_34BA8();
    sub_35598();
    (*(v79 + 8))(v59, v80);

    (*(v89 + 8))(v86, v88);
  }

  else
  {
    v60 = v51;
    v61 = v87;
    if (v60 != v85)
    {
      v83(v49, v91);
    }
  }

  v62 = sub_35398();

  v63 = v87;
  [v87 setAccessibilityLabel:v62];

  v83(v90, v91);
  return v63;
}

uint64_t sub_1D390()
{
  v1 = sub_35328();
  v2 = *(v1 - 8);
  v54 = v1;
  v55 = v2;
  __chkstk_darwin(v1);
  v53 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3828(&qword_48140);
  v5 = __chkstk_darwin(v4 - 8);
  v52 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v42 - v8;
  __chkstk_darwin(v7);
  v11 = &v42 - v10;
  v12 = sub_35118();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v51 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v42 - v17;
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  (*(v13 + 104))(&v42 - v19, enum case for Temperature.unknown(_:), v12);
  v21 = sub_35108();
  v22 = *(v13 + 8);
  result = v22(v20, v12);
  if ((v21 & 1) == 0 && *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_unavailable) != 1)
  {
    sub_350F8();
    v24 = sub_35218();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (v26(v11, 1, v24) != 1)
    {
      v50 = v25 + 48;
      v27 = v55;
      v28 = *(v55 + 104);
      v47 = v9;
      v48 = v24;
      v29 = v53;
      v30 = v54;
      v44 = enum case for WaterTemperatureUnit.celcius(_:);
      v45 = v55 + 104;
      v43 = v28;
      v28(v53);
      v49 = v26;
      sub_35208();
      v31 = v30;
      v32 = v48;
      v42 = *(v27 + 8);
      v55 = v27 + 8;
      v42(v29, v31);
      v33 = *(v25 + 8);
      v34 = v11;
      v46 = v25 + 8;
      v35 = v33;
      (v33)(v34, v32);
      v36 = v49;
      sub_18650(v18);
      v37 = v47;
      sub_350F8();
      v38 = v37;
      v22(v18, v12);
      if (v36(v37, 1, v32) == 1)
      {
        v11 = v37;
      }

      else
      {
        v39 = v53;
        v40 = v54;
        v43(v53, v44, v54);
        sub_35208();
        v42(v39, v40);
        v47 = v35;
        (v35)(v38, v32);
        v41 = v51;
        sub_18A58(v51);
        v11 = v52;
        sub_350F8();
        v22(v41, v12);
        if (v36(v11, 1, v32) != 1)
        {
          v43(v39, v44, v40);
          sub_35208();
          v42(v39, v40);
          return (v47)(v11, v32);
        }
      }
    }

    return sub_1DD50(v11);
  }

  return result;
}

id sub_1D90C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TemperatureTimelineEntryModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TemperatureTimelineEntryModel()
{
  result = qword_48130;
  if (!qword_48130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA44()
{
  result = sub_34C78();
  if (v1 <= 0x3F)
  {
    result = sub_35118();
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

id sub_1DB1C(uint64_t a1, int a2, int a3)
{
  v19 = a2;
  v20 = a3;
  v4 = sub_34C78();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_35118();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v12(v11, a1, v8);
  sub_34C68();
  v13 = type metadata accessor for TemperatureTimelineEntryModel();
  v14 = objc_allocWithZone(v13);
  (*(v5 + 16))(&v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_entryDate], v7, v4);
  v12(&v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_temperature], v11, v8);
  v15 = v20;
  v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_unavailable] = v19;
  v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_historical] = v15;
  v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion29TemperatureTimelineEntryModel_alwaysOn] = 0;
  v21.receiver = v14;
  v21.super_class = v13;
  v16 = objc_msgSendSuper2(&v21, "init");
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return v16;
}

uint64_t sub_1DD50(uint64_t a1)
{
  v2 = sub_3828(&qword_48140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DDB8(void *a1, uint64_t a2)
{
  v30 = a2;
  v26 = sub_34C08();
  __chkstk_darwin(v26);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v28 = 0;
  v29 = 0xE000000000000000;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    v19 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_25;
  }

  v22 = a1;
  v23 = v2;
  v10 = 0;
  v24 = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v25 = v7 & 0xFFFFFFFFFFFFFFLL;
  v11 = (v4 + 8);
  do
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      sub_356A8();
      v15 = v14;
      goto LABEL_16;
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
      v27[0] = v8;
      v27[1] = v25;
      v13 = v27 + v10;
    }

    else
    {
      v12 = v24;
      if ((v8 & 0x1000000000000000) == 0)
      {
        v12 = sub_356E8();
      }

      v13 = (v12 + v10);
    }

    if ((*v13 & 0x80000000) == 0)
    {
LABEL_15:
      v15 = 1;
      goto LABEL_16;
    }

    v17 = (__clz(*v13 ^ 0xFF) - 24);
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v15 = 3;
      }

      else
      {
        v15 = 4;
      }
    }

    else
    {
      if (v17 == 1)
      {
        goto LABEL_15;
      }

      v15 = 2;
    }

LABEL_16:
    sub_2BE0C(v6);
    v16 = sub_34BF8();
    (*v11)(v6, v26);
    if (v16)
    {
      sub_353F8();
    }

    v10 += v15;
  }

  while (v10 < v9);

  v19 = v28;
  v20 = v29;
  a1 = v22;
LABEL_25:
  *a1 = v19;
  a1[1] = v20;
  return result;
}

uint64_t sub_1E02C(char a1)
{
  if (qword_47638 != -1)
  {
    swift_once();
  }

  v2 = qword_48EB0;
  v3 = sub_35398();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2 compatibleWithTraitCollection:0];

  if (!v4)
  {
    result = sub_35758();
    __break(1u);
    return result;
  }

  v5 = v4;
  v6 = v5;
  if ((a1 & 1) == 0)
  {
    goto LABEL_7;
  }

  [v5 size];
  [v6 size];
  sub_355B8();
  v8 = v7;
  v10 = v9;
  v11 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v7, v9}];
  v12 = swift_allocObject();
  *(v12 + 2) = v6;
  v12[3] = v8;
  v12[4] = v10;
  v13 = swift_allocObject();
  v14 = sub_1E654;
  *(v13 + 16) = sub_1E654;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1E680;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A030;
  aBlock[3] = &unk_41700;
  v15 = _Block_copy(aBlock);
  v16 = v6;

  v17 = [v11 imageWithActions:v15];

  _Block_release(v15);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
LABEL_7:
    v14 = 0;
    v17 = v6;
  }

  v18 = [objc_opt_self() providerWithFullColorImage:v17];
  v19 = [objc_opt_self() whiteColor];
  [v18 setTintColor:v19];

  v20 = qword_48EB0;
  v21 = sub_35398();
  v22 = sub_35398();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  if (!v23)
  {
    sub_353A8();
    v23 = sub_35398();
  }

  [v18 setAccessibilityLabel:v23];

  sub_1E60C(v14);
  return v18;
}

id sub_1E450()
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

uint64_t sub_1E60C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E61C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1E6A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1E6D0(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [objc_allocWithZone(UIBezierPath) init];
  v11 = 0;
  do
  {
    v12 = v11 + 1;
    v39.origin.x = a2;
    v39.origin.y = a3;
    v39.size.width = a4;
    v39.size.height = a5;
    Width = CGRectGetWidth(v39);
    v40.origin.x = a2;
    v40.origin.y = a3;
    v40.size.width = a4;
    v40.size.height = a5;
    Height = CGRectGetHeight(v40);
    if (Height >= Width)
    {
      Height = Width;
    }

    v15 = Height * 0.5 + -1.5;
    v37 = v15 + -3.0;
    v41.origin.x = a2;
    v41.origin.y = a3;
    v41.size.width = a4;
    v41.size.height = a5;
    MidX = CGRectGetMidX(v41);
    v17 = __sincos_stret(v11 * 0.112199738 + 2.35619449);
    v35 = MidX + v17.__cosval * v15;
    v42.origin.x = a2;
    v42.origin.y = a3;
    v42.size.width = a4;
    v42.size.height = a5;
    v18 = CGRectGetMidY(v42) + v17.__sinval * v15;
    v43.origin.x = a2;
    v43.origin.y = a3;
    v43.size.width = a4;
    v43.size.height = a5;
    v19 = CGRectGetMidX(v43) + v17.__cosval * v37;
    v44.origin.x = a2;
    v44.origin.y = a3;
    v44.size.width = a4;
    v44.size.height = a5;
    v20 = CGRectGetMidY(v44) + v17.__sinval * v37;
    [v10 moveToPoint:{v35, v18}];
    [v10 addLineToPoint:{v19, v20}];
    ++v11;
  }

  while (v12 != 14);
  v21 = 0;
  do
  {
    v22 = v21 + 1;
    v45.origin.x = a2;
    v45.origin.y = a3;
    v45.size.width = a4;
    v45.size.height = a5;
    v23 = CGRectGetWidth(v45);
    v46.origin.x = a2;
    v46.origin.y = a3;
    v46.size.width = a4;
    v46.size.height = a5;
    v24 = CGRectGetHeight(v46);
    if (v24 >= v23)
    {
      v24 = v23;
    }

    v25 = v24 * 0.5 + -1.5;
    v38 = v25 + -3.0;
    v47.origin.x = a2;
    v47.origin.y = a3;
    v47.size.width = a4;
    v47.size.height = a5;
    v26 = CGRectGetMidX(v47);
    v27 = __sincos_stret(v21 * 0.174532925 + 5.49778714);
    v36 = v26 + v27.__cosval * v25;
    v48.origin.x = a2;
    v48.origin.y = a3;
    v48.size.width = a4;
    v48.size.height = a5;
    v28 = CGRectGetMidY(v48) + v27.__sinval * v25;
    v49.origin.x = a2;
    v49.origin.y = a3;
    v49.size.width = a4;
    v49.size.height = a5;
    v29 = CGRectGetMidX(v49) + v27.__cosval * v38;
    v50.origin.x = a2;
    v50.origin.y = a3;
    v50.size.width = a4;
    v50.size.height = a5;
    v30 = CGRectGetMidY(v50) + v27.__sinval * v38;
    [v10 moveToPoint:{v36, v28}];
    [v10 addLineToPoint:{v29, v30}];
    ++v21;
  }

  while (v22 != 9);
  v31 = [objc_allocWithZone(CAShapeLayer) init];
  [v31 setFrame:{a2, a3, a4, a5}];
  v32 = [a1 CGColor];
  [v31 setStrokeColor:v32];

  [v31 setLineWidth:1.15];
  [v31 setLineCap:kCALineCapRound];
  v33 = [v10 CGPath];
  [v31 setPath:v33];

  return v31;
}

void *sub_1EAC0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_35748();

    if (v4)
    {
      sub_6D44(0, &qword_483C0);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_FDE0(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

HKQuantityType sub_1EBAC(uint64_t a1, id *a2, HKQuantityType *a3)
{
  sub_6D44(0, &qword_47EC0);
  result.super.super.super.isa = sub_35518(*a2).super.super.super.isa;
  a3->super.super.super.isa = result.super.super.super.isa;
  return result;
}

uint64_t sub_1EC08(uint64_t a1, uint64_t a2)
{
  v3 = sub_34D58();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_34D78();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6D44(0, &qword_47B30);
  v11 = sub_35558();
  aBlock[4] = sub_2109C;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1EF10;
  aBlock[3] = &unk_41770;
  v12 = _Block_copy(aBlock);

  sub_34D68();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_210BC(&qword_483A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_3828(&qword_483A8);
  sub_21104();
  sub_35608();
  sub_35568();
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1EEB8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1F3B4();
  }

  return result;
}

uint64_t sub_1EF10(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1EF54()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 60));

  return swift_deallocClassInstance();
}

void sub_1F000()
{
  v1 = v0;
  v2 = HKProtectedHealthDatabaseDidBecomeAvailableNotification;
  sub_6D44(0, &qword_47B30);
  v3 = sub_35558();
  v4 = swift_allocObject();
  swift_weakInit();
  v6[4] = sub_2126C;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1F1A0;
  v6[3] = &unk_41860;
  v5 = _Block_copy(v6);

  swift_beginAccess();
  notify_register_dispatch(v2, (v1 + 56), v3, v5);
  swift_endAccess();
  _Block_release(v5);
}

uint64_t sub_1F12C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1F3B4();
    swift_beginAccess();
    notify_cancel(*(v1 + 56));
  }

  return result;
}

uint64_t sub_1F1A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1F1F4()
{
  if (kHKNanoLifestylePrivacyPreferencesChangedNotification)
  {
    v1 = v0;
    sub_353A8();
    sub_6D44(0, &qword_47B30);
    v2 = sub_35558();
    v3 = swift_allocObject();
    swift_weakInit();
    v6[4] = sub_21264;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1F1A0;
    v6[3] = &unk_41838;
    v4 = _Block_copy(v6);

    v5 = sub_353E8();

    swift_beginAccess();
    notify_register_dispatch((v5 + 32), (v1 + 60), v2, v4);
    swift_endAccess();

    _Block_release(v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1F35C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1FEE8();
  }

  return result;
}

void sub_1F3B4()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[8];
  v4 = sub_35398();
  v5 = [v3 stringForKey:v4];

  if (v5)
  {
    v6 = objc_opt_self();

    v7 = [v6 unitFromString:v5];

    v23[0] = v7;
    sub_34CF8();
  }

  v8 = v1[8];
  v9 = sub_35398();
  v10 = [v8 stringForKey:v9];

  if (v10)
  {
    v11 = objc_opt_self();

    v12 = [v11 unitFromString:v10];

    v23[0] = v12;
    sub_34CF8();
  }

  v13 = v1[2];
  sub_3828(&qword_47868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_366B0;
  if (qword_47640 != -1)
  {
    swift_once();
  }

  v15 = qword_48158;
  *(inited + 32) = qword_48158;
  v16 = qword_47648;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_48160;
  *(inited + 40) = qword_48160;
  v19 = v18;
  sub_20BB4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_6D44(0, &qword_47EC0);
  sub_21168();
  isa = sub_354B8().super.isa;

  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  *(v21 + 24) = v2;
  v23[4] = sub_21208;
  v23[5] = v21;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_1FE0C;
  v23[3] = &unk_417C0;
  v22 = _Block_copy(v23);

  [v13 preferredUnitsForQuantityTypes:isa completion:v22];
  _Block_release(v22);
}

uint64_t sub_1F730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v5 = sub_34CD8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_34D58();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_34D78();
  v36 = *(v13 - 8);
  v37 = v13;
  __chkstk_darwin(v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_47640 != -1)
  {
    swift_once();
  }

  v16 = sub_1EAC0(qword_48158, a1);
  if (v16)
  {
    v17 = v16;
    v34 = v10;
    if (qword_47648 != -1)
    {
      swift_once();
    }

    v18 = sub_1EAC0(qword_48160, a1);
    if (v18)
    {
      v19 = v18;
      sub_6D44(0, &qword_47B30);
      v20 = sub_35558();
      v21 = swift_allocObject();
      v21[2] = v35;
      v21[3] = v17;
      v21[4] = v19;
      aBlock[4] = sub_21258;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1EF10;
      aBlock[3] = &unk_41810;
      v22 = _Block_copy(aBlock);

      v23 = v17;
      v24 = v19;

      sub_34D68();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_210BC(&qword_483A0, &type metadata accessor for DispatchWorkItemFlags);
      sub_3828(&qword_483A8);
      sub_21104();
      sub_35608();
      sub_35568();
      _Block_release(v22);

      (*(v34 + 8))(v12, v9);
      return (*(v36 + 8))(v15, v37);
    }
  }

  sub_34EC8();
  swift_errorRetain();
  v26 = sub_34CC8();
  v27 = sub_354F8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315138;
    if (a2)
    {
      swift_getErrorValue();
      v30 = sub_35808();
      v32 = v31;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v33 = sub_31484(v30, v32, aBlock);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_0, v26, v27, "Failed to retrieve preferred depth units from HealthKit with error %s", v28, 0xCu);
    sub_6408(v29);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1FC60(uint64_t a1, uint64_t a2, void *a3)
{

  sub_34CF8();

  v11 = a3;

  sub_34CF8();

  v5 = *(a1 + 64);

  sub_34D08();

  v6 = [v11 unitString];

  if (!v6)
  {
    sub_353A8();
    v6 = sub_35398();
  }

  v7 = sub_35398();
  [v5 setObject:v6 forKey:v7];

  v8 = *(a1 + 64);

  sub_34D08();

  v9 = [v11 unitString];

  if (!v9)
  {
    sub_353A8();
    v9 = sub_35398();
  }

  v10 = sub_35398();
  [v8 setObject:v9 forKey:v10];
}

void sub_1FE0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_6D44(0, &qword_47EC0);
  sub_6D44(0, &qword_483C0);
  sub_21168();
  v5 = sub_35358();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1FEE8()
{
  sub_353A8();
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_35398();

  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    [v2 hk_BOOLForKey:kHKPrivacyPreferencesKeyEnableFitnessTracking defaultValue:1];

    sub_34CF8();
  }

  else
  {
    result = sub_35758();
    __break(1u);
  }

  return result;
}

uint64_t sub_2000C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_35648();

    if (v9)
    {

      sub_6D44(0, &qword_47EC0);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_35638();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_20244(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_20434();
    }

    v18 = v8;
    sub_2065C(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_6D44(0, &qword_47EC0);
  v11 = sub_355C8(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_206E0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_355D8();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

Swift::Int sub_20244(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_3828(&qword_483C8);
    v2 = sub_35688();
    v14 = v2;
    sub_35628();
    if (sub_35658())
    {
      sub_6D44(0, &qword_47EC0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_20434();
        }

        v2 = v14;
        result = sub_355C8(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_35658());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_20434()
{
  v1 = v0;
  v2 = *v0;
  sub_3828(&qword_483C8);
  result = sub_35678();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_355C8(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_2065C(uint64_t a1, void *a2)
{
  sub_355C8(a2[5]);
  result = sub_35618();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_206E0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_20434();
  }

  else
  {
    if (v7 > v6)
    {
      sub_20850();
      goto LABEL_12;
    }

    sub_209A0();
  }

  v8 = *v3;
  v9 = sub_355C8(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_6D44(0, &qword_47EC0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_355D8();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_357E8();
  __break(1u);
}

id sub_20850()
{
  v1 = v0;
  sub_3828(&qword_483C8);
  v2 = *v0;
  v3 = sub_35668();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_209A0()
{
  v1 = v0;
  v2 = *v0;
  sub_3828(&qword_483C8);
  result = sub_35678();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_355C8(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_20BB4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_6D44(0, &qword_47EC0);
    sub_21168();
    result = sub_354C8();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_356C8();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_2000C(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_35768();
  }

  v5 = result;
  v4 = sub_35768();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

void *sub_20CF4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_35578();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[3] = 0x6544646568636143;
  v2[4] = 0xEF74696E55687470;
  v2[5] = 0xD00000000000001ALL;
  v2[6] = 0x80000000000382B0;
  v2[7] = 0;
  v2[9] = 0;
  if (qword_47640 != -1)
  {
    swift_once();
  }

  result = _HKGenerateDefaultUnitForQuantityType();
  if (result)
  {
    v18 = result;
    sub_3828(&qword_48388);
    swift_allocObject();
    v2[10] = sub_34D28();
    if (qword_47648 != -1)
    {
      swift_once();
    }

    result = _HKGenerateDefaultUnitForQuantityType();
    if (result)
    {
      v18 = result;
      swift_allocObject();
      v2[11] = sub_34D28();
      LOBYTE(v18) = 1;
      sub_3828(&qword_48390);
      swift_allocObject();
      v2[12] = sub_34D28();
      v2[8] = a2;
      v2[2] = a1;
      v11 = objc_opt_self();
      v12 = a2;
      v13 = a1;
      v14 = [v11 defaultCenter];
      v15 = v13;
      sub_35588();

      swift_allocObject();
      swift_weakInit();
      sub_210BC(&qword_48398, &type metadata accessor for NSNotificationCenter.Publisher);
      v16 = sub_34D48();

      (*(v7 + 8))(v9, v6);
      v3[9] = v16;

      sub_1F000();
      sub_1F1F4();
      sub_1F3B4();
      sub_1FEE8();
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2105C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_210A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_210BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21104()
{
  result = qword_483B0;
  if (!qword_483B0)
  {
    sub_6E30(&qword_483A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_483B0);
  }

  return result;
}

unint64_t sub_21168()
{
  result = qword_483B8;
  if (!qword_483B8)
  {
    sub_6D44(255, &qword_47EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_483B8);
  }

  return result;
}

uint64_t sub_211D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_21210()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_21310()
{
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___icon;
  v2 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___icon);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___icon);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_21384()
{
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___labels;
  v2 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___labels);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___labels);
  }

  else
  {
    type metadata accessor for DepthRichCircularLabelView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_213FC()
{
  v1 = sub_34EE8();
  v49 = *(v1 - 8);
  v50 = v1;
  __chkstk_darwin(v1);
  v48 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_35178();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_35298();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_35098();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_34F28();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_34F88();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = sub_34E08();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
  swift_beginAccess();
  (*(v19 + 16))(v21, v0 + v22, v18);
  result = (*(v19 + 88))(v21, v18);
  if (result == enum case for WaterDepth.shallow(_:))
  {
    return (*(v19 + 8))(v21, v18);
  }

  if (result == enum case for WaterDepth.nominal(_:))
  {
    (*(v19 + 96))(v21, v18);
    v25 = v38;
    v24 = v39;
    (*(v38 + 32))(v17, v21, v39);
    sub_34F38();
    v26 = v37;
    (*(v37 + 104))(v9, enum case for DeviceType.ultra(_:), v7);
    sub_34EF8();
    (*(v26 + 8))(v9, v7);
    if (qword_47630 != -1)
    {
      swift_once();
    }

    v27 = qword_48E80;
    v28 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
    swift_beginAccess();
    v29 = v43;
    v30 = v27 + v28;
    v31 = v41;
    v32 = v44;
    (*(v43 + 16))(v41, v30, v44);
    v33 = v45;
    sub_35248();
    (*(v29 + 8))(v31, v32);
    v34 = v48;
    sub_35148();
    (*(v46 + 8))(v33, v47);
    sub_34F08();
    (*(v49 + 8))(v34, v50);
    (*(v40 + 8))(v11, v42);
    sub_34F38();
    v35 = *(v25 + 8);
    v35(v15, v24);
    return (v35)(v17, v24);
  }

  else if (result == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
    return (*(v19 + 8))(v21, v18);
  }

  else if (result != enum case for WaterDepth.unknown(_:) && result != enum case for WaterDepth.notSubmerged(_:) && result != enum case for WaterDepth.depthExceedingSensorLimit(_:))
  {
    return (*(v19 + 8))(v21, v18);
  }

  return result;
}

uint64_t sub_21AB8()
{
  v1 = sub_35098();
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin(v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_35298();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_34E08();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  if (*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_alwaysOn) == 1 && *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical) != 1)
  {
    goto LABEL_22;
  }

  v14 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
  swift_beginAccess();
  v15 = *(v8 + 16);
  v15(v13, v0 + v14, v7);
  v16 = (*(v8 + 88))(v13, v7);
  if (v16 == enum case for WaterDepth.shallow(_:) || v16 == enum case for WaterDepth.nominal(_:) || v16 == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    if (v16 == enum case for WaterDepth.unknown(_:) || v16 == enum case for WaterDepth.notSubmerged(_:))
    {
      goto LABEL_22;
    }

    if (v16 != enum case for WaterDepth.depthExceedingSensorLimit(_:))
    {
      (*(v8 + 8))(v13, v7);
      goto LABEL_22;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_unavailable) == 1)
  {
LABEL_22:
    sub_3828(&qword_47868);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_36AC0;
    *(v28 + 32) = sub_21310();
    return v28;
  }

  v31 = sub_21384();
  v32 = v0;
  v15(v11, v0 + v14, v7);
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v19 = qword_48E80;
  v20 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  swift_beginAccess();
  v21 = v33;
  v22 = v34;
  (*(v33 + 16))(v6, v19 + v20, v34);
  v24 = v35;
  v23 = v36;
  v25 = (*(v35 + 104))(v3, enum case for DeviceType.ultra(_:), v36);
  LOBYTE(v19) = sub_21F34(v25, v3);
  (*(v24 + 8))(v3, v23);
  (*(v21 + 8))(v6, v22);
  (*(v8 + 8))(v11, v7);
  v26 = v19;
  v27 = v31;
  v28 = sub_2D89C(v26, *(v32 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical));

  return v28;
}

uint64_t sub_21F34(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v2 = sub_34F28();
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v57 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_35178();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_35298();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_34EE8();
  v52 = *(v63 - 8);
  v9 = __chkstk_darwin(v63);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  v13 = sub_34E08();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_34F88();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v53 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v61 = &v48 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v48 - v24;
  __chkstk_darwin(v23);
  v27 = &v48 - v26;
  (*(v14 + 16))(v16, v62, v13);
  v28 = (*(v14 + 88))(v16, v13);
  if (v28 == enum case for WaterDepth.shallow(_:) || v28 == enum case for WaterDepth.nominal(_:) || v28 == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
    (*(v14 + 96))(v16, v13);
    v62 = v18;
    v30 = v27;
    (*(v18 + 32))(v27, v16, v17);
    if (qword_47630 != -1)
    {
      swift_once();
    }

    v31 = qword_48E80;
    v32 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
    swift_beginAccess();
    v33 = v49;
    v34 = v31 + v32;
    v35 = v50;
    (*(v49 + 16))(v8, v34, v50);
    v36 = v51;
    sub_35248();
    (*(v33 + 8))(v8, v35);
    sub_35148();
    (*(v55 + 8))(v36, v56);
    v37 = v57;
    sub_34EF8();
    sub_34F08();
    (*(v59 + 8))(v37, v60);
    sub_34F78();
    v38 = v52;
    v39 = *(v52 + 16);
    v40 = v54;
    v41 = v63;
    v39(v54, v12, v63);
    sub_34F68();
    sub_34F78();
    v39(v40, v12, v41);
    v42 = v25;
    v43 = v53;
    sub_34F68();
    sub_27A84(&qword_48568, &type metadata accessor for DepthValue);
    LOBYTE(v36) = sub_35368();
    v44 = *(v62 + 8);
    v44(v30, v17);
    if (v36)
    {
      v45 = v61;
      v46 = sub_34F48();
      v44(v43, v17);
      v44(v45, v17);
      v44(v42, v17);
      (*(v38 + 8))(v12, v63);
      return (v46 & 1) == 0;
    }

    else
    {
      v44(v43, v17);
      v44(v61, v17);
      v44(v42, v17);
      (*(v38 + 8))(v12, v63);
      return 2;
    }
  }

  else
  {
    v29 = 0;
    if (v28 != enum case for WaterDepth.unknown(_:) && v28 != enum case for WaterDepth.notSubmerged(_:))
    {
      if (v28 == enum case for WaterDepth.depthExceedingSensorLimit(_:))
      {
        return 2;
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        return 0;
      }
    }
  }

  return v29;
}

void *sub_226D8()
{
  v1 = sub_35098();
  v38 = *(v1 - 8);
  v39 = v1;
  __chkstk_darwin(v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_35298();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_34E08();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  if (*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_alwaysOn) == 1 && *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical) != 1)
  {
    goto LABEL_24;
  }

  v14 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
  swift_beginAccess();
  v15 = *(v8 + 16);
  v15(v13, v0 + v14, v7);
  v16 = (*(v8 + 88))(v13, v7);
  if (v16 == enum case for WaterDepth.shallow(_:) || v16 == enum case for WaterDepth.nominal(_:) || v16 == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    if (v16 == enum case for WaterDepth.unknown(_:) || v16 == enum case for WaterDepth.notSubmerged(_:))
    {
      goto LABEL_24;
    }

    if (v16 != enum case for WaterDepth.depthExceedingSensorLimit(_:))
    {
      (*(v8 + 8))(v13, v7);
      goto LABEL_24;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_unavailable) == 1)
  {
LABEL_24:
    sub_3828(&qword_47868);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_36AC0;
    v32 = sub_21310();
    result = v31;
    *(v31 + 32) = v32;
    return result;
  }

  v35 = sub_21384();
  v15(v11, v0 + v14, v7);
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v19 = qword_48E80;
  v20 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  swift_beginAccess();
  v21 = v36;
  v22 = v37;
  (*(v36 + 16))(v6, v19 + v20, v37);
  v24 = v38;
  v23 = v39;
  v25 = (*(v38 + 104))(v3, enum case for DeviceType.ultra(_:), v39);
  v26 = sub_21F34(v25, v3);
  (*(v24 + 8))(v3, v23);
  (*(v21 + 8))(v6, v22);
  (*(v8 + 8))(v11, v7);
  if (!v26)
  {
    sub_3828(&qword_47868);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_36AC0;
    v28 = v35;
    v29 = sub_2D144();
    goto LABEL_26;
  }

  if (v26 == 1)
  {
    sub_3828(&qword_47868);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_36AC0;
    v28 = v35;
    v29 = sub_2D210();
LABEL_26:
    *(v27 + 32) = v29;

    return v27;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_22BD8()
{
  v1 = v0;
  v2 = sub_34E08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = &_swiftEmptyArrayStorage;
  v19 = &_swiftEmptyArrayStorage;
  v7 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_tickLayer);
  if (v7)
  {
    v8 = v7;
    sub_35448();
    if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v19 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_35478();
    }

    sub_35488();

    v6 = v19;
  }

  v9 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthLayer);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v10, v2);
    v11 = (*(v3 + 88))(v5, v2);
    if (v11 == enum case for WaterDepth.shallow(_:) || v11 == enum case for WaterDepth.nominal(_:))
    {
      goto LABEL_8;
    }

    if (v11 == enum case for WaterDepth.depthExceedingNominalRange(_:))
    {
      v13 = *(v3 + 8);
      v14 = v9;
      v13(v5, v2);
    }

    else
    {
      if (v11 == enum case for WaterDepth.unknown(_:) || v11 == enum case for WaterDepth.notSubmerged(_:))
      {
        return v6;
      }

      if (v11 != enum case for WaterDepth.depthExceedingSensorLimit(_:))
      {
LABEL_8:
        (*(v3 + 8))(v5, v2);
        return v6;
      }

      v16 = v9;
    }

    if (*(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical))
    {
    }

    else
    {
      v17 = v9;
      sub_35448();
      if (*(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v19 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_35478();
      }

      sub_35488();

      return v19;
    }
  }

  return v6;
}

void *sub_22E98()
{
  v1 = v0;
  v2 = sub_34E08();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  result = &_swiftEmptyArrayStorage;
  v33 = &_swiftEmptyArrayStorage;
  v9 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthLayer);
  if (!v9)
  {
    goto LABEL_9;
  }

  v31 = v5;
  v10 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
  swift_beginAccess();
  v11 = v3[2];
  v32 = v1;
  v11(v7, v1 + v10, v2);
  v12 = v3[11];
  v13 = v12(v7, v2);
  v14 = enum case for WaterDepth.shallow(_:);
  if (v13 == enum case for WaterDepth.shallow(_:) || v13 == enum case for WaterDepth.nominal(_:))
  {
    goto LABEL_4;
  }

  if (v13 == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
    v27 = enum case for WaterDepth.depthExceedingNominalRange(_:);
    v28 = enum case for WaterDepth.nominal(_:);
    v20 = v3[1];
    v29 = v3 + 1;
    v30 = v20;
    v21 = v9;
    v30(v7, v2);
    goto LABEL_17;
  }

  if (v13 == enum case for WaterDepth.unknown(_:) || v13 == enum case for WaterDepth.notSubmerged(_:))
  {
    v24 = v9;
    goto LABEL_5;
  }

  if (v13 == enum case for WaterDepth.depthExceedingSensorLimit(_:))
  {
    v27 = enum case for WaterDepth.depthExceedingNominalRange(_:);
    v28 = enum case for WaterDepth.nominal(_:);
    v25 = v9;
LABEL_17:
    v22 = v31;
    v11(v31, v32 + v10, v2);
    v23 = v12(v22, v2);
    if (v23 == v14)
    {

      (v3[1])(v22, v2);
      result = &_swiftEmptyArrayStorage;
      v1 = v32;
      goto LABEL_9;
    }

    v1 = v32;
    if (v23 == v28)
    {
      goto LABEL_23;
    }

    if (v23 == v27)
    {
      (v3[1])(v22, v2);
    }

    else
    {
      if (v23 == enum case for WaterDepth.unknown(_:) || v23 == enum case for WaterDepth.notSubmerged(_:))
      {
LABEL_32:

        goto LABEL_33;
      }

      if (v23 != enum case for WaterDepth.depthExceedingSensorLimit(_:))
      {
LABEL_23:

        (v3[1])(v22, v2);
LABEL_33:
        result = &_swiftEmptyArrayStorage;
        goto LABEL_9;
      }
    }

    if (*(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical))
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_4:
  v15 = v3[1];
  v16 = v9;
  v15(v7, v2);
LABEL_5:
  v1 = v32;
LABEL_6:
  v17 = v9;
  sub_35448();
  if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v33 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_35478();
  }

  sub_35488();

  result = v33;
LABEL_9:
  v18 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthTickLayer);
  if (v18 && *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical) == 1)
  {
    v19 = v18;
    sub_35448();
    if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v33 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_35478();
    }

    sub_35488();

    return v33;
  }

  return result;
}

id sub_232C0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_filterProvider] = 0;
  v3 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
  v4 = enum case for WaterDepth.unknown(_:);
  v5 = sub_34E08();
  (*(*(v5 - 8) + 104))(&v1[v3], v4, v5);
  v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_unavailable] = 1;
  v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical] = 0;
  v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_alwaysOn] = 0;
  v6 = &v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_summary];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_tickLayer] = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthLayer] = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthTickLayer] = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___icon] = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___labels] = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_fontDescriptor] = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_device] = a1;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_fontSizeFactor] = 0x3FF0000000000000;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DepthRichCircularView();
  return objc_msgSendSuper2(&v8, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

void sub_23444(void *a1)
{
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_filterProvider) = 0;
  v2 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
  v3 = enum case for WaterDepth.unknown(_:);
  v4 = sub_34E08();
  (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_unavailable) = 1;
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical) = 0;
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_alwaysOn) = 0;
  v5 = v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_summary;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_tickLayer) = 0;
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthLayer) = 0;
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthTickLayer) = 0;
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___icon) = 0;
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___labels) = 0;
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_fontDescriptor) = 0;
  sub_35758();
  __break(1u);
}

uint64_t sub_237B8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthLayer);
  if (v2)
  {
    [v2 setFilters:0];
  }

  v3 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_tickLayer);
  if (v3)
  {
    [v3 setFilters:0];
  }

  v4 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthTickLayer);
  if (v4)
  {
    [v4 setFilters:0];
  }

  sub_3828(&qword_47868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_36AB0;
  *(inited + 32) = sub_21310();
  v6 = sub_21384();
  v7 = sub_2D144();

  *(inited + 40) = v7;
  v8 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___labels);
  v9 = sub_2D210();

  *(inited + 48) = v9;
  v10 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_17;
  }

  for (i = *(inited + 32); ; i = sub_356C8())
  {
    v12 = i;
    v13 = [i layer];
    [v13 setFilters:0];

    if (v10)
    {
      v14 = sub_356C8();
    }

    else
    {
      if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
      {
        goto LABEL_17;
      }

      v14 = *(inited + 40);
    }

    v15 = v14;
    v16 = [v14 layer];
    [v16 setFilters:0];

    if (v10)
    {
      break;
    }

    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
    {
      v17 = *(inited + 48);
      goto LABEL_16;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v17 = sub_356C8();
LABEL_16:
  v18 = v17;
  v19 = [v17 layer];
  [v19 setFilters:0];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_239F0(uint64_t result, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_filterProvider);
  if (!v3)
  {
    return result;
  }

  if ((a2 & 1) == 0)
  {
    v7 = *&result;
    v8 = [swift_unknownObjectRetain() filtersForView:v2 style:0 fraction:*&result];
    if (v8)
    {
      v9 = v8;
      sub_6D44(0, &qword_48570);
      v6 = sub_35468();
    }

    else
    {
      v6 = 0;
    }

    v13 = [v3 filtersForView:v2 style:1 fraction:v7];
    if (v13)
    {
      v14 = v13;
      sub_6D44(0, &qword_48570);
      v12 = sub_35468();
    }

    else
    {
      v12 = 0;
    }

    v15 = [v3 filtersForView:v2 style:2 fraction:v7];
    if (v15)
    {
      goto LABEL_16;
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  v4 = [swift_unknownObjectRetain() filtersForView:v2 style:0];
  if (v4)
  {
    v5 = v4;
    sub_6D44(0, &qword_48570);
    v6 = sub_35468();
  }

  else
  {
    v6 = 0;
  }

  v10 = [v3 filtersForView:v2 style:1];
  if (v10)
  {
    v11 = v10;
    sub_6D44(0, &qword_48570);
    v12 = sub_35468();
  }

  else
  {
    v12 = 0;
  }

  v15 = [v3 filtersForView:v2 style:2];
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_16:
  v16 = v15;
  sub_6D44(0, &qword_48570);
  v17 = sub_35468();

LABEL_20:

  v18 = sub_21AB8();
  sub_272C0(v6, v18);

  v19 = sub_22BD8();
  sub_275E4(v6, v19);

  v20 = sub_22E98();
  sub_275E4(v12, v20);

  v21 = sub_226D8();
  sub_272C0(v17, v21);

  swift_unknownObjectRelease();
}

void sub_23CF4()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for DepthRichCircularView();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_21310();
  [*&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___icon] frame];
  CLKRectCenteredIntegralRectForDevice();
  [v9 setFrame:?];

  v10 = sub_21384();
  [v10 setFrame:{v2, v4, v6, v8}];

  sub_255E0(v2, v4, v6, v8);
}

id sub_23E40()
{
  v1 = sub_21384();
  [v1 removeFromSuperview];

  v2 = sub_21310();
  if (v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_unavailable] == 1)
  {
    if (qword_47638 != -1)
    {
      swift_once();
    }

    v3 = qword_476D0;
    v4 = qword_48EB0;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = qword_48F50;
    v6 = sub_35398();
    v7 = [objc_opt_self() imageNamed:v6 inBundle:v4 withConfiguration:v5];

    if (!v7)
    {
LABEL_14:
      result = sub_35758();
      __break(1u);
      return result;
    }
  }

  else
  {
    if (qword_476D0 != -1)
    {
      swift_once();
    }

    v8 = qword_48F50;
    v9 = sub_35398();
    v7 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

    if (!v7)
    {
      goto LABEL_14;
    }
  }

  [v2 setImage:v7];

  v10 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___icon;
  v11 = *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___icon];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 whiteColor];
  [v13 setTintColor:v14];

  [*&v0[v10] sizeToFit];
  v15 = *&v0[v10];

  return [v0 addSubview:v15];
}

void sub_2414C()
{
  v1 = v0;
  v20 = sub_35178();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_35298();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21310();
  [v9 removeFromSuperview];

  v10 = sub_21384();
  [v1 addSubview:v10];

  sub_24430();
  v11 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___labels;
  v12 = *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView____lazy_storage___labels];
  v13 = sub_2D144();

  sub_24788();
  v14 = sub_35398();

  [v13 setText:v14];

  v15 = *&v1[v11];
  v16 = sub_2D210();

  if (qword_47630 != -1)
  {
    swift_once();
  }

  v17 = qword_48E80;
  v18 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  swift_beginAccess();
  (*(v6 + 16))(v8, v17 + v18, v5);
  sub_35248();
  (*(v6 + 8))(v8, v5);
  sub_35168();
  (*(v2 + 8))(v4, v20);
  v19 = sub_35398();

  [v16 setText:v19];
}

void sub_24430()
{
  v1 = v0;
  v29 = sub_35098();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_35298();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_34E08();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_21384();
  v13 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
  swift_beginAccess();
  v14 = *(v10 + 16);
  v28 = v9;
  v14(v12, v1 + v13, v9);
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v15 = qword_48E80;
  v16 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  swift_beginAccess();
  (*(v6 + 16))(v8, v15 + v16, v5);
  v17 = v2;
  v18 = *(v2 + 104);
  v19 = v29;
  v20 = v18(v4, enum case for DeviceType.ultra(_:), v29);
  v27 = sub_21F34(v20, v4);
  (*(v17 + 8))(v4, v19);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v28);
  v21 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_fontDescriptor);
  v22 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_fontSizeFactor);
  v23 = v21;
  sub_213FC();
  v24 = v30;
  sub_2D978(v27, v21, *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical), v22, v25);
}

uint64_t sub_24788()
{
  v1 = sub_34CD8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_350A8();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_34EA8();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_35098();
  v10 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_34E08();
  v13 = *(v29 - 8);
  __chkstk_darwin(v29);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical) == 1)
  {
    v27 = v1;
    v16 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_summary;
    swift_beginAccess();
    sub_278E4(v0 + v16, &v34);
    if (v35)
    {
      sub_27998(&v34, v36);
      if (qword_47630 != -1)
      {
        swift_once();
      }

      sub_27954(v36, v37);

      sub_352F8();
      sub_27954(v36, v37);
      sub_35308();
      (*(v5 + 104))(v28, enum case for UnitOption.noUnit(_:), v30);
      sub_34E98();
      v17 = sub_34FD8();
      (*(v32 + 8))(v9, v33);
      (*(v10 + 8))(v12, v31);
      (*(v13 + 8))(v15, v29);

      sub_6408(v36);
    }

    else
    {
      sub_11E70(&v34, &unk_48550);
      sub_34EB8();
      v22 = sub_34CC8();
      v23 = sub_35508();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_0, v22, v23, "DepthRichCircularView: No summary present for historical metrics", v24, 2u);
      }

      (*(v2 + 8))(v4, v27);
      return 11565;
    }
  }

  else
  {
    v18 = v5;
    if (qword_47630 != -1)
    {
      swift_once();
    }

    v19 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
    swift_beginAccess();
    v20 = v29;
    (*(v13 + 16))(v15, v0 + v19, v29);
    v21 = v31;
    (*(v10 + 104))(v12, enum case for DeviceType.ultra(_:), v31);
    (*(v18 + 104))(v28, enum case for UnitOption.noUnit(_:), v30);

    sub_34E98();
    v17 = sub_34FD8();
    (*(v32 + 8))(v9, v33);
    (*(v10 + 8))(v12, v21);
    (*(v13 + 8))(v15, v20);
  }

  return v17;
}

uint64_t sub_24DD8()
{
  v53 = sub_350A8();
  v48 = *(v53 - 8);
  __chkstk_darwin(v53);
  v47 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_34EA8();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_34E08();
  v4 = *(v55 - 8);
  v5 = __chkstk_darwin(v55);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v45 - v7;
  v9 = sub_35098();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  v16 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_summary;
  swift_beginAccess();
  v57 = v0;
  sub_278E4(&v0[v16], v58);
  v17 = v59;
  v54 = v10;
  v56 = v15;
  if (v59)
  {
    v18 = sub_27954(v58, v59);
    v19 = *(v17 - 8);
    __chkstk_darwin(v18);
    v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v21);
    sub_11E70(v58, &unk_48550);
    sub_35308();
    (*(v19 + 8))(v21, v17);
    (*(v54 + 32))(v15, v13, v9);
  }

  else
  {
    sub_11E70(v58, &unk_48550);
    (*(v10 + 104))(v15, enum case for DeviceType.ultra(_:), v9);
  }

  v52 = v9;
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v22 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
  v23 = v57;
  swift_beginAccess();
  v45 = *(v4 + 16);
  v24 = v8;
  v25 = v4;
  v26 = v55;
  v45(v8, &v23[v22], v55);
  v27 = enum case for UnitSpace.noSpace(_:);
  v28 = sub_35338();
  v29 = v47;
  (*(*(v28 - 8) + 104))(v47, v27, v28);
  (*(v48 + 104))(v29, enum case for UnitOption.unitSpace(_:), v53);

  v30 = v46;
  sub_34E98();
  v31 = sub_34FD8();
  v53 = v32;
  (*(v49 + 8))(v30, v50);
  v33 = *(v25 + 8);
  v33(v24, v26);

  v34 = &v23[v22];
  v35 = v51;
  v45(v51, v34, v26);
  v36 = (*(v25 + 88))(v35, v26);
  if (v36 == enum case for WaterDepth.shallow(_:) || v36 == enum case for WaterDepth.nominal(_:) || v36 == enum case for WaterDepth.depthExceedingNominalRange(_:) || v36 != enum case for WaterDepth.unknown(_:) && v36 != enum case for WaterDepth.notSubmerged(_:) && v36 != enum case for WaterDepth.depthExceedingSensorLimit(_:))
  {
    v33(v35, v55);
  }

  if (qword_47638 != -1)
  {
    swift_once();
  }

  v37 = qword_48EB0;
  v38 = sub_35398();

  v39 = sub_35398();
  v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

  sub_353A8();
  sub_3828(&unk_47EE0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_36860;
  *(v41 + 56) = &type metadata for String;
  *(v41 + 64) = sub_11878();
  v42 = v53;
  *(v41 + 32) = v31;
  *(v41 + 40) = v42;
  sub_353B8();

  v43 = sub_35398();

  [v57 setAccessibilityLabel:v43];

  return (*(v54 + 8))(v56, v52);
}

void sub_255E0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_34E08();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v60 = &v50 - v14;
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_tickLayer;
  [*&v4[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_tickLayer] removeFromSuperlayer];
  v53 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthTickLayer;
  [*&v4[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthTickLayer] removeFromSuperlayer];
  v52 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthLayer;
  [*&v4[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthLayer] removeFromSuperlayer];
  v18 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
  swift_beginAccess();
  v19 = v10[2];
  v57 = v18;
  v58 = v19;
  v19(v16, &v4[v18], v9);
  v54 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_unavailable;
  v20 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical;
  v21 = sub_2B9C8(v16, v4[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_unavailable], v4[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical]);
  v22 = v10[1];
  v23 = v21;
  v56 = v22;
  v22(v16, v9);
  v59 = v23;
  v24 = sub_1E6D0(v23, a1, a2, a3, a4);
  v25 = [v4 layer];
  v26 = v24;
  [v25 insertSublayer:v26 atIndex:0];

  v27 = *&v4[v17];
  *&v4[v17] = v26;
  v28 = v26;

  if (v4[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_alwaysOn] == 1 && v4[v20] != 1)
  {

    return;
  }

  v55 = v28;
  v29 = v57;
  v30 = v60;
  v58(v60, &v4[v57], v9);
  v31 = v10[11];
  v32 = v31(v30, v9);
  v33 = enum case for WaterDepth.shallow(_:);
  v34 = enum case for WaterDepth.nominal(_:);
  v35 = enum case for WaterDepth.depthExceedingNominalRange(_:);
  if (v32 == enum case for WaterDepth.shallow(_:) || v32 == enum case for WaterDepth.nominal(_:) || v32 == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
    v56(v60, v9);
  }

  else
  {
    if (v32 == enum case for WaterDepth.unknown(_:) || v32 == enum case for WaterDepth.notSubmerged(_:))
    {
      goto LABEL_12;
    }

    if (v32 != enum case for WaterDepth.depthExceedingSensorLimit(_:))
    {

      v36 = v55;
      v56(v60, v9);
      return;
    }
  }

  if (v4[v54])
  {
LABEL_12:

    v37 = v55;
    return;
  }

  v38 = &v4[v29];
  v39 = v51;
  v58(v51, v38, v9);
  v40 = v31(v39, v9);
  if (v40 == v33 || v40 == v34)
  {
    goto LABEL_23;
  }

  if (v40 == v35)
  {
    v56(v39, v9);
    goto LABEL_18;
  }

  if (v40 == enum case for WaterDepth.unknown(_:) || v40 == enum case for WaterDepth.notSubmerged(_:))
  {
    goto LABEL_24;
  }

  if (v40 != enum case for WaterDepth.depthExceedingSensorLimit(_:))
  {
LABEL_23:
    v56(v39, v9);
    goto LABEL_24;
  }

LABEL_18:
  if (sub_2681C())
  {
LABEL_24:
    v41 = sub_25B44(v4, a1, a2, a3, a4);
    goto LABEL_25;
  }

  v41 = sub_262F8(a1, a2, a3, a4);
LABEL_25:
  v42 = v41;
  v43 = v55;
  v44 = [v4 layer];
  [v44 insertSublayer:v42 above:v43];

  v45 = *&v4[v52];
  *&v4[v52] = v42;
  v46 = v42;

  v47 = *&v4[v53];
  if (v47)
  {
    v48 = v47;
    v49 = [v4 layer];
    [v49 insertSublayer:v48 above:v46];
  }
}

id sub_25B44(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (*(a1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical) == 1)
  {
    if (qword_47658 != -1)
    {
      swift_once();
    }

    v10 = qword_48ED8;
  }

  else
  {
    v10 = [objc_opt_self() blackColor];
  }

  v11 = v10;
  v12 = sub_1E6D0(v10, a2, a3, a4, a5);
  v13 = sub_260DC(a2, a3, a4, a5);
  [v12 setMask:v13];

  v14 = *(a1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthTickLayer);
  *(a1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthTickLayer) = v12;

  v15 = sub_25CC0(a2, a3, a4, a5);
  v16 = sub_260DC(a2, a3, a4, a5);
  [v15 setMask:v16];

  return v15;
}

id sub_25CC0(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(CAGradientLayer) init];
  [v9 setFrame:{a1, a2, a3, a4}];
  v10 = *(v4 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical);
  sub_3828(&unk_48530);
  if (v10 == 1)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_36D00;
    if (qword_47660 != -1)
    {
      swift_once();
    }

    v12 = qword_48EE0;
    v13 = [qword_48EE0 CGColor];
    type metadata accessor for CGColor(0);
    v15 = v14;
    *(v11 + 56) = v14;
    *(v11 + 32) = v13;
    v16 = [v12 CGColor];
    *(v11 + 88) = v15;
    *(v11 + 64) = v16;
    isa = sub_35458().super.isa;

    [v9 setColors:isa];

    sub_3828(&qword_47868);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_366B0;
    *(v18 + 32) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
    v19 = (v18 + 40);
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_36CF0;
    if (qword_47670 != -1)
    {
      swift_once();
    }

    v21 = [qword_48EF0 CGColor];
    type metadata accessor for CGColor(0);
    v23 = v22;
    *(v20 + 56) = v22;
    *(v20 + 32) = v21;
    if (qword_47678 != -1)
    {
      swift_once();
    }

    v24 = [qword_48EF8 CGColor];
    *(v20 + 88) = v23;
    *(v20 + 64) = v24;
    if (qword_47680 != -1)
    {
      swift_once();
    }

    v25 = [qword_48F00 CGColor];
    *(v20 + 120) = v23;
    *(v20 + 96) = v25;
    v26 = sub_35458().super.isa;

    [v9 setColors:v26];

    sub_3828(&qword_47868);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_36AB0;
    *(v27 + 32) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
    *(v27 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:0.4];
    v19 = (v27 + 48);
  }

  *v19 = [objc_allocWithZone(NSNumber) initWithDouble:1.0];
  sub_6D44(0, &qword_48540);
  v28 = sub_35458().super.isa;

  [v9 setLocations:v28];

  return v9;
}

id sub_260DC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Height = CGRectGetHeight(*&a1);
  v9 = Height * 0.5;
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  v10 = CGRectGetMidY(v24) + Height * 0.5 * -0.707106781;
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  v11 = CGRectGetMidY(v25) + Height * 0.5 * 0.707106781 - v10;
  sub_213FC();
  v13 = v10 + v12 * v11;
  v14 = sqrt(v9 * v9 - (v13 - v9) * (v13 - v9));
  v15 = Height * 0.5 + v14;
  v16 = Height - v15;
  atan2(v13 - v9, v9 + v14 - v9);
  atan2(v13 - v9, v16 - v9);
  v17 = [objc_allocWithZone(UIBezierPath) init];
  [v17 moveToPoint:{v15, v13}];
  sub_355A8();
  [v17 addQuadCurveToPoint:v16 controlPoint:{v13, v18, v19}];
  sub_355A8();
  [v17 addArcWithCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
  v20 = [objc_allocWithZone(CAShapeLayer) init];
  [v20 setFrame:{a1, a2, a3, a4}];
  v21 = [v17 CGPath];
  [v20 setPath:v21];

  return v20;
}

id sub_262F8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical;
  if (*(v4 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical) == 1)
  {
    if (qword_47658 != -1)
    {
      swift_once();
    }

    v10 = qword_48ED8;
  }

  else
  {
    v10 = [objc_opt_self() blackColor];
  }

  v11 = v10;
  v12 = sub_1E6D0(v10, a1, a2, a3, a4);

  v13 = *(v4 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthTickLayer);
  *(v4 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depthTickLayer) = v12;
  v14 = v12;

  v15 = [objc_allocWithZone(CAShapeLayer) init];
  [v15 setFrame:{a1, a2, a3, a4}];
  v16 = [objc_opt_self() bezierPathWithOvalInRect:{a1, a2, a3, a4}];
  v17 = [v16 CGPath];

  [v15 setPath:v17];
  if (*(v4 + v9) == 1)
  {
    if (qword_47660 != -1)
    {
      swift_once();
    }

    v18 = &qword_48EE0;
  }

  else
  {
    if (qword_476A8 != -1)
    {
      swift_once();
    }

    v18 = &qword_48F28;
  }

  v19 = [*v18 CGColor];
  [v15 setFillColor:v19];

  [v15 addSublayer:v14];
  return v15;
}

id sub_265A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DepthRichCircularView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DepthRichCircularView()
{
  result = qword_484C0;
  if (!qword_484C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26738()
{
  result = sub_34E08();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2681C()
{
  v0 = sub_35098();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v11 - v5;
  v7 = *(v1 + 104);
  v7(v11 - v5, enum case for DeviceType.ultra(_:), v0);
  v7(v4, enum case for DeviceType.nonUltra(_:), v0);
  sub_27A84(&qword_48548, &type metadata accessor for DeviceType);
  sub_35438();
  sub_35438();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_357D8();
  }

  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v6, v0);

  return v8 & 1;
}

id sub_26A0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_34CD8();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3828(&qword_48578);
  __chkstk_darwin(v7 - 8);
  v54 = v51 - v8;
  v9 = sub_34E08();
  v58 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v57 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v51 - v12;
  v14 = sub_3828(&qword_48580);
  __chkstk_darwin(v14 - 8);
  v16 = v51 - v15;
  v17 = type metadata accessor for DepthComplicationMetrics(0);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(a1);
  v53 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = v51 - v22;
  v24 = __chkstk_darwin(v21);
  if (v24)
  {
    v26 = v51 - v25;
    v27 = [v24 metadata];
    if (v27)
    {
      v28 = v27;
      v52 = v9;
      v51[1] = sub_3828(&qword_47B70);
      v29 = sub_35358();

      sub_BA2C(v29, v16);
      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {

        sub_11E70(v16, &qword_48580);
      }

      else
      {
        v30 = v26;
        sub_279B0(v16, v26);
        if (*(v29 + 16) && (v31 = sub_FD68(0x6E4F737961776C61, 0xE800000000000000), (v32 & 1) != 0))
        {
          v33 = *(*(v29 + 56) + 8 * v31);
          swift_unknownObjectRetain();

          *&v60 = v33;
          if (swift_dynamicCast())
          {
            v34 = v59;
            sub_ABDC(v13);
            v35 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
            swift_beginAccess();
            v36 = v58;
            v9 = v52;
            (*(v58 + 40))(&v2[v35], v13, v52);
            swift_endAccess();
            sub_3870(v30, v23);
            LOBYTE(v35) = swift_getEnumCaseMultiPayload() == 2;
            sub_63AC(v23);
            v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_unavailable] = v35;
            v37 = v53;
            sub_3870(v30, v53);
            LOBYTE(v35) = swift_getEnumCaseMultiPayload() == 0;
            sub_63AC(v37);
            v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical] = v35;
            v38 = v54;
            sub_A6A4(v54);
            v39 = sub_350E8();
            v40 = *(v39 - 8);
            if ((*(v40 + 48))(v38, 1, v39) == 1)
            {
              sub_63AC(v30);
              sub_11E70(v38, &qword_48578);
              v60 = 0u;
              v61 = 0u;
              v62 = 0;
            }

            else
            {
              *(&v61 + 1) = v39;
              v62 = sub_27A84(&qword_48588, &type metadata accessor for DiveSummary);
              v49 = sub_27ACC(&v60);
              (*(v40 + 32))(v49, v38, v39);
              sub_63AC(v30);
            }

            v50 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_summary;
            swift_beginAccess();
            sub_27A14(&v60, &v2[v50]);
            swift_endAccess();
            v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_alwaysOn] = v34;
            goto LABEL_16;
          }
        }

        else
        {
        }

        sub_63AC(v26);
      }

      v9 = v52;
    }
  }

  sub_34EB8();
  v41 = sub_34CC8();
  v42 = sub_354F8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "Circular complication missing expected metadata.", v43, 2u);
  }

  (*(v55 + 8))(v6, v56);
  v36 = v58;
  (*(v58 + 104))(v13, enum case for WaterDepth.unknown(_:), v9);
  v44 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
  swift_beginAccess();
  (*(v36 + 40))(&v2[v44], v13, v9);
  swift_endAccess();
  v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_unavailable] = 1;
  v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical] = 0;
  v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_alwaysOn] = 0;
LABEL_16:
  sub_237B8();
  v45 = v57;
  if (v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_alwaysOn] == 1 && v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_historical] != 1)
  {
    goto LABEL_27;
  }

  v46 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_depth;
  swift_beginAccess();
  (*(v36 + 16))(v45, &v2[v46], v9);
  v47 = (*(v36 + 88))(v45, v9);
  if (v47 == enum case for WaterDepth.shallow(_:) || v47 == enum case for WaterDepth.nominal(_:) || v47 == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
    (*(v36 + 8))(v45, v9);
  }

  else
  {
    if (v47 == enum case for WaterDepth.unknown(_:) || v47 == enum case for WaterDepth.notSubmerged(_:))
    {
      goto LABEL_27;
    }

    if (v47 != enum case for WaterDepth.depthExceedingSensorLimit(_:))
    {
      (*(v36 + 8))(v45, v9);
      goto LABEL_27;
    }
  }

  if (v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion21DepthRichCircularView_unavailable] != 1)
  {
    sub_2414C();
    goto LABEL_29;
  }

LABEL_27:
  sub_23E40();
LABEL_29:
  sub_24DD8();
  [v2 setNeedsLayout];
  return [v2 layoutIfNeeded];
}

void sub_272C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_35768())
  {
    v4 = 0;
    v5 = a2 & 0xC000000000000001;
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v7 = a1;
    }

    v23 = v7;
    v25 = i;
    while (1)
    {
      if (v5)
      {
        v9 = sub_356C8();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_31;
        }

        v9 = *(a2 + 32 + 8 * v4);
      }

      v10 = v9;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v12 = [v9 layer];
      v13 = v12;
      if (a1)
      {
        v26 = v12;
        if (a1 >> 62)
        {
          v14 = sub_35768();
          v27 = v10;
          if (v14)
          {
LABEL_15:
            v29 = &_swiftEmptyArrayStorage;
            sub_31A2C(0, v14 & ~(v14 >> 63), 0);
            if (v14 < 0)
            {
              goto LABEL_32;
            }

            v15 = v29;
            if ((a1 & 0xC000000000000001) != 0)
            {
              for (j = 0; j != v14; ++j)
              {
                sub_356C8();
                sub_6D44(0, &qword_48570);
                swift_dynamicCast();
                v29 = v15;
                v18 = v15[2];
                v17 = v15[3];
                if (v18 >= v17 >> 1)
                {
                  sub_31A2C((v17 > 1), v18 + 1, 1);
                  v15 = v29;
                }

                v15[2] = v18 + 1;
                sub_11DF8(v28, &v15[4 * v18 + 4]);
              }
            }

            else
            {
              sub_6D44(0, &qword_48570);
              v19 = (a1 + 32);
              do
              {
                v20 = *v19;
                swift_dynamicCast();
                v29 = v15;
                v22 = v15[2];
                v21 = v15[3];
                if (v22 >= v21 >> 1)
                {
                  sub_31A2C((v21 > 1), v22 + 1, 1);
                  v15 = v29;
                }

                v15[2] = v22 + 1;
                sub_11DF8(v28, &v15[4 * v22 + 4]);
                ++v19;
                --v14;
              }

              while (v14);
            }

            v5 = a2 & 0xC000000000000001;
            i = v25;
            v6 = a2 & 0xFFFFFFFFFFFFFF8;
          }
        }

        else
        {
          v14 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
          v27 = v10;
          if (v14)
          {
            goto LABEL_15;
          }
        }

        isa = sub_35458().super.isa;

        v13 = v26;
        v10 = v27;
        goto LABEL_7;
      }

      isa = 0;
LABEL_7:
      [v13 setFilters:{isa, v23}];

      if (v4 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }
}

void sub_275E4(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_35768())
  {
    v4 = 0;
    v5 = a2 & 0xC000000000000001;
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    v21 = i;
    while (1)
    {
      if (v5)
      {
        v8 = sub_356C8();
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_29;
        }

        v8 = *(a2 + 32 + 8 * v4);
      }

      v9 = v8;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      if (a1)
      {
        if (a1 >> 62)
        {
          v11 = sub_35768();
          v22 = v9;
          if (v11)
          {
LABEL_13:
            v24 = &_swiftEmptyArrayStorage;
            sub_31A2C(0, v11 & ~(v11 >> 63), 0);
            if (v11 < 0)
            {
              goto LABEL_30;
            }

            v12 = v24;
            if ((a1 & 0xC000000000000001) != 0)
            {
              for (j = 0; j != v11; ++j)
              {
                sub_356C8();
                sub_6D44(0, &qword_48570);
                swift_dynamicCast();
                v24 = v12;
                v15 = v12[2];
                v14 = v12[3];
                if (v15 >= v14 >> 1)
                {
                  sub_31A2C((v14 > 1), v15 + 1, 1);
                  v12 = v24;
                }

                v12[2] = v15 + 1;
                sub_11DF8(v23, &v12[4 * v15 + 4]);
              }
            }

            else
            {
              sub_6D44(0, &qword_48570);
              v16 = (a1 + 32);
              do
              {
                v17 = *v16;
                swift_dynamicCast();
                v24 = v12;
                v19 = v12[2];
                v18 = v12[3];
                if (v19 >= v18 >> 1)
                {
                  sub_31A2C((v18 > 1), v19 + 1, 1);
                  v12 = v24;
                }

                v12[2] = v19 + 1;
                sub_11DF8(v23, &v12[4 * v19 + 4]);
                ++v16;
                --v11;
              }

              while (v11);
            }

            v5 = a2 & 0xC000000000000001;
            i = v21;
            v6 = a2 & 0xFFFFFFFFFFFFFF8;
          }
        }

        else
        {
          v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
          v22 = v8;
          if (v11)
          {
            goto LABEL_13;
          }
        }

        isa = sub_35458().super.isa;

        v9 = v22;
        goto LABEL_5;
      }

      isa = 0;
LABEL_5:
      [v9 setFilters:isa];

      if (v4 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }
}

uint64_t sub_278E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3828(&unk_48550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_27954(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_27998(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_279B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DepthComplicationMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_3828(&unk_48550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_27ACC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_27B30(void *a1)
{
  type metadata accessor for DepthComplicationMetrics(0);
  swift_storeEnumTagMultiPayload();
  v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_alwaysOn] = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView] = xmmword_36DC0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_filterProvider] = 0;
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_device] = a1;
  v3 = objc_allocWithZone(CLKDeviceMetrics);
  v4 = a1;
  v5 = [v3 initWithDevice:v4 identitySizeClass:8];
  *&v1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_deviceMetrics] = v5;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DepthRectangularView();
  v9 = objc_msgSendSuper2(&v11, "initWithFrame:", CGRectZero.origin.x, y, width, height);
  [v9 setClipsToBounds:1];

  return v9;
}

BOOL sub_27DAC(uint64_t a1)
{
  v41 = a1;
  v40 = sub_34FB8();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v2 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_35298();
  v39 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HistoricalDepthMetrics(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3828(&qword_47EB0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v16 = type metadata accessor for DepthComplicationMetrics(0);
  __chkstk_darwin(v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3870(v41, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = *(v42 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView + 8) >> 62 != 1;
      sub_296F0(v18, type metadata accessor for DepthComplicationMetrics);
      return v20;
    }

    v26 = v42 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView;
    goto LABEL_11;
  }

  v22 = v9;
  v41 = v5;
  v24 = v39;
  v23 = v40;
  sub_116A4(v18, v15);
  sub_142F0(v15, v13);
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
    sub_11E70(v15, &qword_47EB0);
    sub_11E70(v13, &qword_47EB0);
    v25 = v42;
LABEL_10:
    v26 = v25 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView;
LABEL_11:
    v37 = *(v26 + 8) >> 62 == 0;
    return !v37;
  }

  v25 = v42;
  v27 = v13;
  v28 = v22;
  sub_29DB8(v27, v22, type metadata accessor for HistoricalDepthMetrics);
  v29 = *(v22 + *(v6 + 24));
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v30 = qword_48E80;
  v31 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  swift_beginAccess();
  v32 = v24;
  v33 = *(v24 + 16);
  v34 = v41;
  v33(v41, v30 + v31, v3);
  sub_35228();
  (*(v32 + 8))(v34, v3);
  sub_34F98();
  v36 = v35;
  (*(v38 + 8))(v2, v23);
  sub_296F0(v28, type metadata accessor for HistoricalDepthMetrics);
  sub_11E70(v15, &qword_47EB0);
  if (v36 > v29)
  {
    goto LABEL_10;
  }

  v37 = *(v25 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView + 8) >> 62 == 2;
  return !v37;
}

void sub_2828C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3828(&qword_47EB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for DepthComplicationMetrics(0);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView];
  if (*&v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView + 8] >> 62 != 3)
  {
    [*v10 removeFromSuperview];
    v11 = *v10;
    v12 = v10[1];
    *v10 = xmmword_36DC0;
    sub_296DC(v11, v12);
  }

  sub_3870(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_296F0(v9, type metadata accessor for DepthComplicationMetrics);
      v14 = *&v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_device];
      v15 = objc_allocWithZone(type metadata accessor for DepthRectangularLiveView());
      v16 = sub_1491C(v14);
      v18 = *v10;
      v17 = v10[1];
      *v10 = v16;
      v10[1] = 0x4000000000041630;
      sub_296DC(v18, v17);
      goto LABEL_9;
    }

    v19 = type metadata accessor for HistoricalDepthMetrics(0);
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  }

  else
  {
    sub_116A4(v9, v6);
  }

  sub_284B8(v6);
  sub_11E70(v6, &qword_47EB0);
LABEL_9:
  if (v10[1] >> 62 != 3)
  {
    [v2 addSubview:*v10];
  }
}

void sub_284B8(uint64_t a1)
{
  v2 = sub_34CD8();
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v46 = &v45 - v6;
  v7 = sub_34FB8();
  v47 = *(v7 - 8);
  v48 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_35298();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3828(&qword_47EB0);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - v15;
  v17 = type metadata accessor for HistoricalDepthMetrics(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_142F0(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_11E70(v16, &qword_47EB0);
LABEL_7:
    sub_34EB8();
    v26 = sub_34CC8();
    v27 = sub_35508();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_0, v26, v27, "DepthRectangularView: Reconfiguring with historical simple", v28, 2u);
    }

    (*(v49 + 8))(v5, v50);
    v29 = v51;
    v30 = *(v51 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_device);
    v31 = objc_allocWithZone(type metadata accessor for DepthRectangularSimpleHistoryView());
    v32 = sub_1A68(v30);
    v33 = &off_41318;
    goto LABEL_13;
  }

  sub_29DB8(v16, v20, type metadata accessor for HistoricalDepthMetrics);
  v21 = *&v20[*(v17 + 24)];
  if (qword_47630 != -1)
  {
    swift_once();
  }

  v22 = qword_48E80;
  v23 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  swift_beginAccess();
  (*(v11 + 16))(v13, v22 + v23, v10);
  sub_35228();
  (*(v11 + 8))(v13, v10);
  sub_34F98();
  v25 = v24;
  (*(v47 + 8))(v9, v48);
  if (v25 > v21)
  {
    sub_296F0(v20, type metadata accessor for HistoricalDepthMetrics);
    goto LABEL_7;
  }

  v34 = v46;
  sub_34EB8();
  v35 = sub_34CC8();
  v36 = sub_35508();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_0, v35, v36, "DepthRectangularView: Reconfiguring with historical graph", v37, 2u);
  }

  (*(v49 + 8))(v34, v50);
  v29 = v51;
  v38 = *(v51 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_device);
  v39 = objc_allocWithZone(type metadata accessor for DepthRectangularHistoricalGraphView());
  sub_1224C(v38);
  v41 = v40;
  sub_296F0(v20, type metadata accessor for HistoricalDepthMetrics);
  v32 = v41;
  v33 = 0x8000000000041600;
LABEL_13:
  v42 = (v29 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView);
  v44 = *(v29 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView);
  v43 = *(v29 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView + 8);
  *v42 = v32;
  v42[1] = v33;
  sub_296DC(v44, v43);
}

void sub_28A74()
{
  v19.receiver = v0;
  v19.super_class = type metadata accessor for DepthRectangularView();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v1 = &v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView];
  v2 = *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView + 8];
  if (v2 >> 62 != 3)
  {
    v3 = *v1;
    sub_296C8(*v1, *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView + 8]);
    sub_296C8(v3, v2);
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [*&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_deviceMetrics] scaledValue:CLKRichRectangularContentMargin];
    v13 = v12;
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    v21 = CGRectInset(v20, v13, 0.0);
    [v3 setFrame:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
    sub_296DC(v3, v2);
    if ([v3 effectiveUserInterfaceLayoutDirection] == &dword_0 + 1)
    {
      CGAffineTransformMakeScale(&v18, -1.0, 1.0);
      tx = v18.tx;
      ty = v18.ty;
      v16 = *&v18.c;
      v17 = *&v18.a;
      sub_296C8(v3, v2);
      *&v18.a = v17;
      *&v18.c = v16;
      v18.tx = tx;
      v18.ty = ty;
      [v3 setTransform:&v18];
      sub_28C48(v3);
      sub_296DC(v3, v2);
    }

    sub_296DC(v3, v2);
  }
}

uint64_t sub_28C48(void *a1)
{
  v1 = [a1 subviews];
  sub_6D44(0, &qword_48650);
  v2 = sub_35468();

  if (v2 >> 62)
  {
    v3 = sub_35768();
    if (v3)
    {
LABEL_3:
      sub_6D44(0, &qword_48658);
      result = swift_getObjCClassFromMetadata();
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        v5 = result;
        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v7 = sub_356C8();
          }

          else
          {
            v7 = *(v2 + 8 * i + 32);
          }

          v8 = v7;
          if (([v7 isKindOfClass:v5] & 1) != 0 || objc_msgSend(v8, "semanticContentAttribute") == &dword_0 + 3)
          {
            CGAffineTransformMakeScale(&v9, -1.0, 1.0);
            [v8 setTransform:&v9];
          }

          else
          {
            sub_28C48(v8);
          }
        }
      }

      return result;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

void sub_28E94(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_filterProvider);
  if (v2)
  {
    v3 = v1;
    v4 = v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView;
    v5 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView);
    v6 = *(v4 + 8);
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 != 2)
      {
        return;
      }

      v8 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    }

    else if (v7)
    {
      v8 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    ObjectType = swift_getObjectType();
    v11 = *(v8 + 16);
    swift_unknownObjectRetain();
    sub_296C8(v5, v6);
    v12 = v11(ObjectType, v8);
    v13 = (*(v8 + 24))(ObjectType, v8);
    v14 = (*(v8 + 32))(ObjectType, v8);
    sub_17C4C(v2, v3, *&a1, 0, v12, v13, v14);

    sub_296DC(v5, v6);

    swift_unknownObjectRelease();
  }
}

void sub_2906C()
{
  v1 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_filterProvider);
  if (v1)
  {
    v2 = v0;
    v3 = v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView;
    v4 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView);
    v5 = *(v3 + 8);
    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v6 != 2)
      {
        return;
      }

      v7 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    }

    else if (v6)
    {
      v7 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v5;
    }

    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    sub_296C8(v4, v5);
    v10 = v9(ObjectType, v7);
    v11 = (*(v7 + 24))(ObjectType, v7);
    v12 = (*(v7 + 32))(ObjectType, v7);
    sub_17C4C(v1, v2, 0, 1, v10, v11, v12);

    sub_296DC(v4, v5);

    swift_unknownObjectRelease();
  }
}

void sub_29224()
{
  v1 = v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView;
  v3 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView);
  v2 = *(v1 + 8);
  v4 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return;
    }

    v5 = v2 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else if (v4)
  {
    v5 = v2 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  ObjectType = swift_getObjectType();
  v7 = *(v5 + 40);
  sub_296C8(v3, v2);
  v8 = v7(ObjectType, v5);
  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); i; i = sub_35768())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_356C8();
      }

      else
      {
        if (v11 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_19;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v12 setFilters:0];

      ++v11;
      if (v14 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:
  sub_296DC(v3, v2);
}

id sub_293DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DepthRectangularView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DepthRectangularView()
{
  result = qword_48640;
  if (!qword_48640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_294FC()
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

uint64_t sub_295B8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_295D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 16))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_29630(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_29690(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0xC000000000000000;
  }

  return result;
}

id sub_296C8(id result, unint64_t a2)
{
  if (a2 >> 62 != 3)
  {
    return result;
  }

  return result;
}

void sub_296DC(id a1, unint64_t a2)
{
  if (a2 >> 62 != 3)
  {
  }
}

uint64_t sub_296F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29750(uint64_t a1)
{
  v2 = v1;
  v4 = sub_34CD8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v46 - v8;
  v10 = sub_3828(&qword_48580);
  __chkstk_darwin(v10 - 8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for DepthComplicationMetrics(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(a1);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v46 - v19;
  if (v18)
  {
    v21 = [v18 metadata];
    if (v21)
    {
      v22 = v21;
      v47 = v5;
      v48 = v4;
      sub_3828(&qword_47B70);
      v23 = sub_35358();

      sub_BA2C(v23, v12);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {

        sub_11E70(v12, &qword_48580);
      }

      else
      {
        sub_29DB8(v12, v20, type metadata accessor for DepthComplicationMetrics);
        if (*(v23 + 16) && (v24 = sub_FD68(0x6E4F737961776C61, 0xE800000000000000), (v25 & 1) != 0))
        {
          v26 = *(*(v23 + 56) + 8 * v24);
          swift_unknownObjectRetain();

          v51 = v26;
          if (swift_dynamicCast())
          {
            v27 = v50;
            sub_29DB8(v20, v17, type metadata accessor for DepthComplicationMetrics);
            v28 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_metrics;
            swift_beginAccess();
            sub_38D4(v17, &v2[v28]);
            swift_endAccess();
            v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_alwaysOn] = v27;
            v5 = v47;
            v4 = v48;
            goto LABEL_15;
          }
        }

        else
        {
        }

        sub_296F0(v20, type metadata accessor for DepthComplicationMetrics);
      }

      v5 = v47;
      v4 = v48;
    }
  }

  sub_34EB8();
  v29 = sub_34CC8();
  v30 = sub_354F8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_0, v29, v30, "DepthRectangularView: Rectangular complication missing expected metadata.", v31, 2u);
  }

  (*(v5 + 8))(v9, v4);
  swift_storeEnumTagMultiPayload();
  v32 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_metrics;
  swift_beginAccess();
  sub_38D4(v17, &v2[v32]);
  swift_endAccess();
  v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_alwaysOn] = 0;
LABEL_15:
  sub_29224();
  v33 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_metrics;
  swift_beginAccess();
  sub_3870(&v2[v33], v17);
  v34 = sub_27DAC(v17);
  sub_296F0(v17, type metadata accessor for DepthComplicationMetrics);
  if (v34)
  {
    sub_34EB8();
    v35 = sub_34CC8();
    v36 = sub_35508();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "DepthRectangularView: Needs configuration", v37, 2u);
    }

    (*(v5 + 8))(v49, v4);
    sub_3870(&v2[v33], v17);
    sub_2828C(v17);
    sub_296F0(v17, type metadata accessor for DepthComplicationMetrics);
  }

  v38 = *&v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView];
  v39 = *&v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView + 8];
  v40 = v39 >> 62;
  if ((v39 >> 62) <= 1)
  {
    if (v40)
    {
      v41 = v39 & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = *&v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_activeView + 8];
    }

    goto LABEL_25;
  }

  if (v40 == 2)
  {
    v41 = v39 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_25:
    ObjectType = swift_getObjectType();
    sub_3870(&v2[v33], v17);
    v43 = v2[OBJC_IVAR____TtC32DepthComplicationBundleCompanion20DepthRectangularView_alwaysOn];
    v44 = *(v41 + 8);
    sub_296C8(v38, v39);
    v44(v17, v43, ObjectType, v41);
    sub_296DC(v38, v39);
    sub_296F0(v17, type metadata accessor for DepthComplicationMetrics);
  }

  [v2 setNeedsLayout];
  return [v2 layoutIfNeeded];
}

uint64_t sub_29DB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_2A010()
{
  v1 = sub_351D8();
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_35298();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_35118();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for Temperature.unknown(_:), v8);
  v12 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion14BaseDataSource_timelineDataProvider);
  v13 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  swift_beginAccess();
  (*(v5 + 16))(v7, v12 + v13, v4);
  sub_35268();
  (*(v5 + 8))(v7, v4);
  v14 = sub_351B8();
  (*(v19 + 8))(v3, v20);
  v15 = sub_1DB1C(v11, (v14 & 1) == 0, 0);
  (*(v9 + 8))(v11, v8);
  v16 = sub_19C78([v18 family]);

  return v16;
}

id sub_2A310()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TemperatureDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2A368()
{
  if (qword_47638 != -1)
  {
    swift_once();
  }

  v0 = qword_48EB0;
  v1 = sub_35398();
  v2 = sub_35398();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_353A8();
  return v4;
}

void sub_2A460(char *a1, uint64_t a2)
{
  v29 = a2;
  v24 = a1;
  v3 = sub_34C78();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_351D8();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_35298();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_35118();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, enum case for Temperature.unknown(_:), v12);
  v16 = *&a1[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14BaseDataSource_timelineDataProvider];
  v17 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_settings;
  swift_beginAccess();
  (*(v9 + 16))(v11, v16 + v17, v8);
  sub_35268();
  (*(v9 + 8))(v11, v8);
  LOBYTE(v11) = sub_351B8();
  (*(v5 + 8))(v7, v25);
  v18 = sub_1DB1C(v15, (v11 & 1) == 0, 0);
  (*(v13 + 8))(v15, v12);
  v19 = v26;
  sub_34C68();
  v20 = sub_19C78([v24 family]);
  isa = sub_34C58().super.isa;
  v22 = [objc_opt_self() entryWithDate:isa complicationTemplate:v20];

  (*(v27 + 8))(v19, v28);
  (*(v29 + 16))(v29, v22);
}

Swift::Int sub_2A830()
{
  v1 = *v0;
  sub_35818();
  sub_35828(v1);
  return sub_35838();
}

Swift::Int sub_2A8A4()
{
  v1 = *v0;
  sub_35818();
  sub_35828(v1);
  return sub_35838();
}

id sub_2A8E8()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  qword_48ED0 = result;
  return result;
}

id sub_2A960()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.278431373 green:0.278431373 blue:0.28627451 alpha:1.0];
  qword_48EE0 = result;
  return result;
}

id sub_2A9AC()
{
  sub_3828(&qword_47868);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_366B0;
  *(v0 + 32) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
  result = [objc_allocWithZone(NSNumber) initWithDouble:1.0];
  *(v0 + 40) = result;
  qword_48EE8 = v0;
  return result;
}

id sub_2AA40()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.309803922 green:0.988235294 blue:1.0 alpha:1.0];
  qword_48EF0 = result;
  return result;
}

id sub_2AA8C()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.337254902 green:0.792156863 blue:0.988235294 alpha:1.0];
  qword_48EF8 = result;
  return result;
}

id sub_2AADC()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0392156863 green:0.517647059 blue:1.0 alpha:1.0];
  qword_48F00 = result;
  return result;
}

id sub_2ABD8()
{
  result = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.894117647 blue:0.17254902 alpha:1.0];
  qword_48F28 = result;
  return result;
}

id sub_2AC24()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.803921569 blue:1.0 alpha:1.0];
  qword_48F30 = result;
  return result;
}

void sub_2AC98(uint64_t a1, void *a2, id *a3, void *a4)
{
  if (*a2 != -1)
  {
    v7 = a3;
    swift_once();
    a3 = v7;
  }

  v5 = *a3;
  v6 = [v5 colorWithAlphaComponent:0.5];

  *a4 = v6;
}

id sub_2AD14()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.521568627 green:0.97254902 blue:0.992156863 alpha:1.0];
  qword_48F40 = result;
  return result;
}

id sub_2AD68()
{
  result = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.88627451 blue:0.356862745 alpha:1.0];
  qword_48F48 = result;
  return result;
}

id sub_2ADB4()
{
  result = [objc_opt_self() configurationWithPointSize:18.0];
  qword_48F50 = result;
  return result;
}

void sub_2AE1C(double a1, uint64_t a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = CLKRoundedFontDesignName;
  v7 = [v5 systemFontOfSize:v6 weight:a1 design:UIFontWeightSemibold];

  v8 = [v7 CLKFontWithMonospacedNumbers];
  *a3 = v8;
}

void sub_2AED0()
{
  v0 = objc_opt_self();
  v1 = CLKRoundedFontDesignName;
  v2 = [v0 systemFontOfSize:v1 weight:11.0 design:UIFontWeightSemibold];

  qword_48F68 = v2;
}

id sub_2AF7C(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() systemFontOfSize:a1 weight:UIFontWeightMedium];
  *a3 = result;
  return result;
}

id sub_2B08C(uint64_t a1, void *a2, void **a3, void **a4)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  v5 = *a3;
  *a4 = *a3;

  return v5;
}

uint64_t sub_2B0EC(uint64_t a1, char a2, char a3)
{
  v6 = sub_34E08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_3828(&qword_47868);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_366B0;
    if (qword_47650 != -1)
    {
      swift_once();
    }

    v11 = qword_48ED0;
LABEL_9:
    *(v10 + 32) = v11;
    *(v10 + 40) = v11;
    v12 = v11;
LABEL_10:
    v13 = v12;
    return v10;
  }

  if (a3)
  {
    sub_3828(&qword_47868);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_366B0;
    if (qword_47658 != -1)
    {
      swift_once();
    }

    v11 = qword_48ED8;
    goto LABEL_9;
  }

  (*(v7 + 16))(v9, a1, v6);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 == enum case for WaterDepth.shallow(_:) || v15 == enum case for WaterDepth.nominal(_:))
  {
    (*(v7 + 8))(v9, v6);
    goto LABEL_17;
  }

  if (v15 == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
    (*(v7 + 8))(v9, v6);
LABEL_29:
    sub_3828(&qword_47868);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_36AB0;
    if (qword_47688 != -1)
    {
      swift_once();
    }

    v21 = qword_48F08;
    *(v10 + 32) = qword_48F08;
    v22 = qword_47690;
    v23 = v21;
    if (v22 != -1)
    {
      swift_once();
    }

    v24 = qword_48F10;
    *(v10 + 40) = qword_48F10;
    v25 = qword_476A8;
    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    v12 = qword_48F28;
    *(v10 + 48) = qword_48F28;
    goto LABEL_10;
  }

  if (v15 == enum case for WaterDepth.unknown(_:) || v15 == enum case for WaterDepth.notSubmerged(_:))
  {
LABEL_17:
    sub_3828(&qword_47868);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_366B0;
    if (qword_47688 != -1)
    {
      swift_once();
    }

    v17 = qword_48F08;
    *(v10 + 32) = qword_48F08;
    v18 = qword_47690;
    v19 = v17;
    if (v18 != -1)
    {
      swift_once();
    }

    v12 = qword_48F10;
    *(v10 + 40) = qword_48F10;
    goto LABEL_10;
  }

  if (v15 == enum case for WaterDepth.depthExceedingSensorLimit(_:))
  {
    goto LABEL_29;
  }

  result = sub_357C8();
  __break(1u);
  return result;
}

uint64_t sub_2B51C(uint64_t a1, char a2)
{
  v4 = sub_34E08();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    goto LABEL_8;
  }

  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for WaterDepth.shallow(_:) || v8 == enum case for WaterDepth.nominal(_:))
  {
    (*(v5 + 8))(v7, v4);
    goto LABEL_8;
  }

  if (v8 == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
    (*(v5 + 8))(v7, v4);
LABEL_19:
    sub_3828(&qword_47868);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_36AB0;
    *(v10 + 32) = [objc_allocWithZone(NSNumber) initWithDouble:0.0];
    *(v10 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:0.5];
    *(v10 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:0.75];
    return v10;
  }

  if (v8 == enum case for WaterDepth.unknown(_:) || v8 == enum case for WaterDepth.notSubmerged(_:))
  {
LABEL_8:
    if (qword_47668 != -1)
    {
      swift_once();
    }

    v10 = qword_48EE8;

    return v10;
  }

  if (v8 == enum case for WaterDepth.depthExceedingSensorLimit(_:))
  {
    goto LABEL_19;
  }

  result = sub_357C8();
  __break(1u);
  return result;
}

uint64_t sub_2B788(char a1, char a2)
{
  sub_3828(&qword_47868);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_366B0;
  if (a1)
  {
    if (qword_47650 != -1)
    {
      swift_once();
    }

    v5 = qword_48ED0;
LABEL_9:
    *(v4 + 32) = v5;
    *(v4 + 40) = v5;
    v6 = v5;
    goto LABEL_15;
  }

  if (a2)
  {
    if (qword_47658 != -1)
    {
      swift_once();
    }

    v5 = qword_48ED8;
    goto LABEL_9;
  }

  if (qword_47710 != -1)
  {
    swift_once();
  }

  v7 = qword_48F90;
  *(v4 + 32) = qword_48F90;
  v8 = qword_47718;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v6 = qword_48F98;
  *(v4 + 40) = qword_48F98;
LABEL_15:
  v10 = v6;
  return v4;
}

double sub_2B8F0(char a1, double a2)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 25.0;
    }

    v2 = a2 + -0.5 + a2 + -0.5;
    v3 = sub_2B9C0(v2 * 60.0 + (1.0 - v2) * 44.0);
    v4 = (1.0 - v2) * -24.0;
    v5 = -10.0;
  }

  else
  {
    v2 = a2 + a2;
    v6 = 1.0 - (a2 + a2);
    v3 = sub_2B9C0((a2 + a2) * -18.0 + v6 * -28.0);
    v4 = v6 * 24.0;
    v5 = 44.0;
  }

  v7 = v2 * v5 + v4;
  v8 = v3 * 0.5;
  sub_2B9C0(v7);
  return v8;
}

uint64_t sub_2B9C8(uint64_t a1, char a2, char a3)
{
  v6 = sub_34E08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_47650 != -1)
    {
      swift_once();
    }

    v10 = &qword_48ED0;
    return *v10;
  }

  if (a3)
  {
    if (qword_47658 != -1)
    {
      swift_once();
    }

    v10 = &qword_48ED8;
    return *v10;
  }

  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == enum case for WaterDepth.shallow(_:) || v11 == enum case for WaterDepth.nominal(_:) || v11 == enum case for WaterDepth.depthExceedingNominalRange(_:))
  {
    (*(v7 + 8))(v9, v6);
LABEL_27:
    if (qword_476B0 != -1)
    {
      swift_once();
    }

    v10 = &qword_48F30;
    return *v10;
  }

  if (v11 == enum case for WaterDepth.unknown(_:) || v11 == enum case for WaterDepth.notSubmerged(_:))
  {
    if (qword_476B8 != -1)
    {
      swift_once();
    }

    v10 = &qword_48F38;
    return *v10;
  }

  if (v11 == enum case for WaterDepth.depthExceedingSensorLimit(_:))
  {
    goto LABEL_27;
  }

  result = sub_357C8();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for ComplicationStyle.GaugePosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ComplicationStyle.GaugePosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2BDB8()
{
  result = qword_48688;
  if (!qword_48688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_48688);
  }

  return result;
}

uint64_t sub_2BE0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_34C08();
  v5 = *(v4 - 8);
  v6 = (__chkstk_darwin)();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - v10;
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = sub_3828(&qword_487A8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v25 - v18;
  v20 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter____lazy_storage___degreeSymbolStrippingSet;
  swift_beginAccess();
  sub_2C764(v2 + v20, v19);
  if ((*(v5 + 48))(v19, 1, v4) != 1)
  {
    return (*(v5 + 32))(a1, v19, v4);
  }

  sub_2C6FC(v19);
  sub_34BB8();
  sub_34BC8();
  sub_34BD8();
  v25 = v17;
  v26 = v2;
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v11, v4);
  sub_34BE8();
  sub_34BD8();
  v21(v11, v4);
  v21(v13, v4);
  v22 = v25;
  (*(v5 + 16))(v25, a1, v4);
  (*(v5 + 56))(v22, 0, 1, v4);
  v23 = v26;
  swift_beginAccess();
  sub_2C7D4(v22, v23 + v20);
  return swift_endAccess();
}

id sub_2C100(uint64_t a1)
{
  v2 = v1;
  v4 = sub_35298();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter____lazy_storage___degreeSymbolStrippingSet;
  v9 = sub_34C08();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_settings;
  v11 = *(v5 + 16);
  v27 = a1;
  v11(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_settings, a1, v4);
  v11(v7, v2 + v10, v4);
  v12 = objc_allocWithZone(sub_35038());
  *(v2 + 16) = sub_34FE8();
  v13 = [objc_allocWithZone(NSNumberFormatter) init];
  v14 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_depthIntegerNumberFormatter;
  *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_depthIntegerNumberFormatter) = v13;
  [v13 setMaximumFractionDigits:0];
  [*(v2 + v14) setMinimumFractionDigits:0];
  v15 = [objc_allocWithZone(NSMeasurementFormatter) init];
  v16 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_temperatureFormatter;
  *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_temperatureFormatter) = v15;
  [v15 setUnitStyle:1];
  result = [*(v2 + v16) numberFormatter];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v18 = result;
  [result setMaximumFractionDigits:0];

  result = [*(v2 + v16) numberFormatter];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v19 = result;
  [result setMinimumFractionDigits:0];

  [*(v2 + v16) setUnitOptions:1];
  v20 = [objc_allocWithZone(NSMeasurementFormatter) init];
  v21 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_temperatureUnitlessFormatter;
  *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_temperatureUnitlessFormatter) = v20;
  [v20 setUnitStyle:1];
  [*(v2 + v21) setUnitOptions:5];
  result = [*(v2 + v21) numberFormatter];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v22 = result;
  [result setMaximumFractionDigits:0];

  result = [*(v2 + v21) numberFormatter];
  if (result)
  {
    v23 = result;
    [result setMinimumFractionDigits:0];

    v24 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_compactDiveDurationFormatter) = v24;
    v25 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_compactDiveDurationFormatter;
    [v24 setAllowedUnits:192];
    [*(v2 + v25) setZeroFormattingBehavior:0x10000];
    [*(v2 + v25) setUnitsStyle:0];
    (*(v5 + 8))(v27, v4);
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2C478()
{
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_settings;
  v2 = sub_35298();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_2C6FC(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter____lazy_storage___degreeSymbolStrippingSet);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ComplicationFormatter()
{
  result = qword_486E8;
  if (!qword_486E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2C5C0()
{
  sub_35298();
  if (v0 <= 0x3F)
  {
    sub_2C6A4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2C6A4()
{
  if (!qword_486F8)
  {
    sub_34C08();
    v0 = sub_355E8();
    if (!v1)
    {
      atomic_store(v0, &qword_486F8);
    }
  }
}

uint64_t sub_2C6FC(uint64_t a1)
{
  v2 = sub_3828(&qword_487A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2C764(uint64_t a1, uint64_t a2)
{
  v4 = sub_3828(&qword_487A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_3828(&qword_487A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_2CA34()
{
  v1 = sub_34C78();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DepthComplicationMetrics(0);
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for WaterDepth.unknown(_:);
  v9 = sub_34E08();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  v10 = *(type metadata accessor for LiveMetrics(0) + 20);
  v11 = enum case for UnderwaterTime.zero(_:);
  v12 = sub_35198();
  (*(*(v12 - 8) + 104))(&v7[v10], v11, v12);
  type metadata accessor for DisplayTime(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_34C68();
  v13 = type metadata accessor for DepthTimelineEntryModel(0);
  v14 = objc_allocWithZone(v13);
  (*(v2 + 16))(&v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_entryDate], v4, v1);
  v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_alwaysOn] = 0;
  sub_3870(v7, &v14[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics]);
  v18.receiver = v14;
  v18.super_class = v13;
  v15 = objc_msgSendSuper2(&v18, "init");
  (*(v2 + 8))(v4, v1);
  sub_63AC(v7);
  v16 = sub_D01C([v0 family]);

  return v16;
}

id sub_2CCFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DepthDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2CD54()
{
  if (qword_47638 != -1)
  {
    swift_once();
  }

  v0 = qword_48EB0;
  v1 = sub_35398();
  v2 = sub_35398();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_353A8();
  return v4;
}

void sub_2CE40(void *a1, uint64_t a2)
{
  v4 = sub_34C78();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DepthComplicationMetrics(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = enum case for WaterDepth.unknown(_:);
  v12 = sub_34E08();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  v13 = *(type metadata accessor for LiveMetrics(0) + 20);
  v14 = enum case for UnderwaterTime.zero(_:);
  v15 = sub_35198();
  (*(*(v15 - 8) + 104))(&v10[v13], v14, v15);
  type metadata accessor for DisplayTime(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_34C68();
  v16 = type metadata accessor for DepthTimelineEntryModel(0);
  v17 = objc_allocWithZone(v16);
  (*(v5 + 16))(&v17[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_entryDate], v7, v4);
  v17[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_alwaysOn] = 0;
  sub_3870(v10, &v17[OBJC_IVAR____TtC32DepthComplicationBundleCompanion23DepthTimelineEntryModel_metrics]);
  v23.receiver = v17;
  v23.super_class = v16;
  v18 = objc_msgSendSuper2(&v23, "init");
  v19 = *(v5 + 8);
  v19(v7, v4);
  sub_63AC(v10);
  sub_34C68();
  v20 = sub_D01C([a1 family]);
  isa = sub_34C58().super.isa;
  v22 = [objc_opt_self() entryWithDate:isa complicationTemplate:v20];

  v19(v7, v4);
  (*(a2 + 16))(a2, v22);
}

id sub_2D144()
{
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___depthLabel;
  v2 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___depthLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___depthLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    [v4 setFont:*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_depthLabelFont)];
    [v4 setNumberOfLines:1];
    [v4 setTextAlignment:1];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2D210()
{
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___unitLabel;
  v2 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___unitLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___unitLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    [v4 setFont:*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_unitLabelFont)];
    [v4 setNumberOfLines:1];
    [v4 setTextAlignment:1];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_2D2DC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___depthLabel] = 0;
  *&v4[OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___unitLabel] = 0;
  v9 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_depthLabelFont;
  if (qword_476D8 != -1)
  {
    swift_once();
  }

  v10 = qword_48F58;
  *&v4[v9] = qword_48F58;
  v11 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_unitLabelFont;
  v12 = qword_476E8;
  v13 = v10;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_48F68;
  *&v4[v11] = qword_48F68;
  v15 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_limitFont;
  v16 = qword_476E0;
  v17 = v14;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_48F60;
  *&v4[v15] = qword_48F60;
  *&v4[OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_activeConstraints] = &_swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_lineHeightConstraints] = &_swiftEmptyArrayStorage;
  v41.receiver = v4;
  v41.super_class = type metadata accessor for DepthRichCircularLabelView();
  v19 = v18;
  v20 = objc_msgSendSuper2(&v41, "initWithFrame:", a1, a2, a3, a4);
  v21 = sub_2D144();
  [v20 addSubview:{v21, v41.receiver, v41.super_class}];

  v22 = sub_2D210();
  [v20 addSubview:v22];

  v23 = objc_opt_self();
  sub_3828(&qword_47868);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_366A0;
  v25 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___depthLabel;
  v26 = [*&v20[OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___depthLabel] leadingAnchor];
  v27 = [v20 leadingAnchor];

  v28 = [v26 constraintEqualToAnchor:v27];
  *(v24 + 32) = v28;
  v29 = [*&v20[v25] trailingAnchor];
  v30 = [v20 trailingAnchor];

  v31 = [v29 constraintEqualToAnchor:v30];
  *(v24 + 40) = v31;
  v32 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___unitLabel;
  v33 = [*&v20[OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___unitLabel] leadingAnchor];
  v34 = [v20 leadingAnchor];

  v35 = [v33 constraintEqualToAnchor:v34];
  *(v24 + 48) = v35;
  v36 = [*&v20[v32] trailingAnchor];
  v37 = [v20 trailingAnchor];

  v38 = [v36 constraintEqualToAnchor:v37];
  *(v24 + 56) = v38;
  sub_2E684();
  isa = sub_35458().super.isa;

  [v23 activateConstraints:isa];

  sub_2E104();
  sub_2D978(0, 0, 0, 1.0, 0.0);

  return v20;
}

void sub_2D718(void *a1)
{
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___depthLabel) = 0;
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___unitLabel) = 0;
  v2 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_depthLabelFont;
  if (qword_476D8 != -1)
  {
    swift_once();
  }

  v3 = qword_48F58;
  *(v1 + v2) = qword_48F58;
  v4 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_unitLabelFont;
  v5 = qword_476E8;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_48F68;
  *(v1 + v4) = qword_48F68;
  v8 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_limitFont;
  v9 = qword_476E0;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  *(v1 + v8) = qword_48F60;
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_activeConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_lineHeightConstraints) = &_swiftEmptyArrayStorage;
  sub_35758();
  __break(1u);
}

void *sub_2D89C(char a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_3828(&qword_47868);
  if (!a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_36AC0;
    v4 = sub_2D210();
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_36AC0;
    v4 = sub_2D144();
LABEL_7:
    v6 = v4;
    result = v3;
    *(v3 + 32) = v6;
    return result;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_366B0;
  *(v7 + 32) = sub_2D144();
  v8 = sub_2D210();
  result = v7;
  *(v7 + 40) = v8;
  return result;
}

void sub_2D978(char a1, void *a2, char a3, double a4, double a5)
{
  v10 = sub_2D144();
  v11 = [v10 layer];

  [v11 setFilters:0];
  v12 = sub_2D210();
  v13 = [v12 layer];

  [v13 setFilters:0];
  sub_2E338(a2, a4);
  v14 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___depthLabel;
  [*&v5[OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___depthLabel] setFont:*&v5[OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_depthLabelFont]];
  v15 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___unitLabel;
  [*&v5[OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___unitLabel] setFont:*&v5[OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_unitLabelFont]];
  v16 = sub_2B8F0(a1, a5);
  v18 = v17;
  v19 = objc_opt_self();
  v20 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_activeConstraints;
  sub_2E684();

  isa = sub_35458().super.isa;

  v72 = v19;
  [v19 deactivateConstraints:isa];

  sub_3828(&qword_47868);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_366B0;
  if (a1)
  {
    if (a1 == 1)
    {
      v23 = [*&v5[v14] firstBaselineAnchor];
      v24 = [v5 topAnchor];
      v25 = [v23 constraintEqualToAnchor:v24 constant:v16];

      *(v22 + 32) = v25;
      v26 = [*&v5[v15] firstBaselineAnchor];
      v27 = [v5 bottomAnchor];
      v28 = [v26 constraintEqualToAnchor:v27 constant:v18];

      *(v22 + 40) = v28;
      *&v5[v20] = v22;

      v29 = *&v5[v14];
      v30 = objc_opt_self();
      v31 = v29;
      v32 = &selRef_whiteColor;
      if ((a3 & 1) == 0)
      {
        v32 = &selRef_blackColor;
      }

      v33 = [v30 *v32];
      [v31 setTextColor:v33];

      v34 = *&v5[v15];
      if (a3)
      {
        v35 = qword_47658;
        v36 = v34;
        v37 = v72;
        if (v35 != -1)
        {
          swift_once();
        }

        v38 = qword_48ED8;
      }

      else
      {
        v65 = objc_opt_self();
        v36 = v34;
        v38 = [v65 whiteColor];
        v37 = v19;
      }

      [v36 setTextColor:v38];
    }

    else
    {
      v50 = [*&v5[v14] firstBaselineAnchor];
      v51 = [v5 topAnchor];
      v52 = [v50 constraintEqualToAnchor:v51 constant:v16];

      *(v22 + 32) = v52;
      v53 = [*&v5[v15] firstBaselineAnchor];
      v54 = [v5 bottomAnchor];
      v55 = [v53 constraintEqualToAnchor:v54 constant:v18];

      *(v22 + 40) = v55;
      *&v5[v20] = v22;

      v56 = *&v5[v14];
      v57 = objc_opt_self();
      v58 = v56;
      if (a3)
      {
        v59 = &selRef_whiteColor;
      }

      else
      {
        v59 = &selRef_blackColor;
      }

      v60 = [v57 *v59];
      [v58 setTextColor:v60];

      v61 = *&v5[v15];
      v62 = objc_opt_self();
      v63 = v61;
      v64 = [v62 *v59];
      [v63 setTextColor:v64];

      [*&v5[v14] setFont:*&v5[OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_limitFont]];
      v37 = v72;
    }
  }

  else
  {
    v39 = [*&v5[v15] firstBaselineAnchor];
    v40 = [v5 topAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:v18];

    *(v22 + 32) = v41;
    v42 = [*&v5[v14] firstBaselineAnchor];
    v43 = [v5 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43 constant:v16];

    *(v22 + 40) = v44;
    *&v5[v20] = v22;

    v45 = *&v5[v14];
    if (a3)
    {
      v46 = qword_47658;
      v47 = v45;
      v37 = v72;
      if (v46 != -1)
      {
        swift_once();
      }

      v48 = qword_48ED8;
      v49 = &selRef_whiteColor;
    }

    else
    {
      v66 = objc_opt_self();
      v47 = v45;
      v48 = [v66 whiteColor];
      v49 = &selRef_blackColor;
      v37 = v19;
    }

    [v47 setTextColor:v48];

    v67 = *&v5[v15];
    v68 = objc_opt_self();
    v69 = v67;
    v70 = [v68 *v49];
    [v69 setTextColor:v70];
  }

  v71 = sub_35458().super.isa;

  [v37 activateConstraints:v71];

  sub_2E104();
}

void sub_2E104()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_lineHeightConstraints;
  sub_2E684();

  isa = sub_35458().super.isa;

  [v1 deactivateConstraints:isa];

  sub_3828(&qword_47868);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_366B0;
  v5 = sub_2D144();
  v6 = [v5 heightAnchor];

  v7 = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___depthLabel) font];
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  [v7 lineHeight];
  v10 = v9;

  v11 = [v6 constraintEqualToConstant:v10];
  *(v4 + 32) = v11;
  v12 = sub_2D210();
  v13 = [v12 heightAnchor];

  v14 = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView____lazy_storage___unitLabel) font];
  if (!v14)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 lineHeight];
  v17 = v16;

  v18 = [v13 constraintEqualToConstant:v17];
  *(v4 + 40) = v18;
  *(v0 + v2) = v4;

  v19 = sub_35458().super.isa;

  [v1 activateConstraints:v19];
}

void sub_2E338(void *a1, double a2)
{
  if (a1)
  {
    v4 = a2 * 19.5;
    v6 = objc_opt_self();
    v7 = a1;
    v8 = [v6 fontWithDescriptor:v7 size:v4];
    v9 = [v8 CLKFontWithMonospacedNumbers];

    v10 = *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_depthLabelFont);
    *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_depthLabelFont) = v9;

    v11 = [v6 fontWithDescriptor:v7 size:a2 * 11.0];
    v12 = *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_unitLabelFont);
    *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_unitLabelFont) = v11;

    v13 = [v6 fontWithDescriptor:v7 size:a2 * 15.0];
    v14 = [v13 CLKFontWithMonospacedNumbers];

    v15 = *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_limitFont);
    *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_limitFont) = v14;
  }

  else
  {
    if (qword_476D8 != -1)
    {
      swift_once();
    }

    v16 = qword_48F58;
    v17 = *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_depthLabelFont);
    *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_depthLabelFont) = qword_48F58;
    v18 = v16;

    if (qword_476E8 != -1)
    {
      swift_once();
    }

    v19 = qword_48F68;
    v20 = *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_unitLabelFont);
    *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_unitLabelFont) = qword_48F68;
    v21 = v19;

    if (qword_476E0 != -1)
    {
      swift_once();
    }

    v22 = qword_48F60;
    v24 = *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_limitFont);
    *(v2 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion26DepthRichCircularLabelView_limitFont) = qword_48F60;
    v23 = v22;
    v15 = v24;
  }
}

id sub_2E590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DepthRichCircularLabelView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_2E684()
{
  result = qword_48838;
  if (!qword_48838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_48838);
  }

  return result;
}

char *sub_2E6D0()
{
  *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_graphData] = 0;
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationStartLabel;
  *&v0[v1] = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationEndLabel;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_gridLayer;
  *&v0[v3] = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_dotLayer;
  *&v0[v4] = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_maxDotLayer;
  *&v0[v5] = [objc_allocWithZone(CAShapeLayer) init];
  v6 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_barLayer;
  *&v0[v6] = [objc_allocWithZone(CAShapeLayer) init];
  v23.receiver = v0;
  v23.super_class = type metadata accessor for DepthGraphView();
  v7 = objc_msgSendSuper2(&v23, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_3828(&qword_47868);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_366B0;
  v9 = *&v7[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationStartLabel];
  *(inited + 32) = v9;
  v10 = *&v7[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationEndLabel];
  *(inited + 40) = v10;
  v11 = v7;
  v12 = v9;
  v13 = v10;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_13;
  }

  if (!*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_12;
  }

  for (i = v12; ; i = sub_356C8())
  {
    v15 = i;
    if (qword_476F0 != -1)
    {
      swift_once();
    }

    v16 = [qword_48F70 fontWithSize:12.0];
    [v15 setFont:v16];

    v17 = [objc_opt_self() grayColor];
    [v15 setTextColor:v17];

    [v11 addSubview:v15];
    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) >= 2uLL)
    {
      v18 = *(inited + 40);
      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v18 = sub_356C8();
LABEL_9:
  v19 = v18;
  if (qword_476F0 != -1)
  {
    swift_once();
  }

  v20 = [qword_48F70 fontWithSize:12.0];
  [v19 setFont:v20];

  v21 = [objc_opt_self() grayColor];
  [v19 setTextColor:v21];

  [v11 addSubview:v19];
  swift_setDeallocating();
  swift_arrayDestroy();
  [v11 setSemanticContentAttribute:3];

  return v11;
}

void sub_2EAB4(double a1)
{
  v3 = qword_47630;
  v4 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationStartLabel);
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_48E80;
  v6 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter;
  v7 = *(*(qword_48E80 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion20TimelineDataProvider_formatter) + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_compactDiveDurationFormatter);

  v8 = [v7 stringFromTimeInterval:0.0];
  if (v8)
  {
    v9 = v8;
    sub_353A8();
  }

  else
  {
  }

  v10 = sub_35398();

  [v4 setText:v10];

  v11 = *(*(v5 + v6) + OBJC_IVAR____TtC32DepthComplicationBundleCompanion21ComplicationFormatter_compactDiveDurationFormatter);
  v12 = *(v1 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationEndLabel);

  v13 = [v11 stringFromTimeInterval:a1];
  if (v13)
  {
    v14 = v13;
    sub_353A8();
  }

  else
  {
  }

  v15 = sub_35398();

  [v12 setText:v15];
}

void sub_2ECAC()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for DepthGraphView();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationStartLabel;
  [*&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationStartLabel] intrinsicContentSize];
  v3 = v2;
  v5 = v4;
  v6 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationEndLabel;
  [*&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationEndLabel] intrinsicContentSize];
  v8 = v7;
  v10 = v9;
  [v0 bounds];
  MaxY = CGRectGetMaxY(v19);
  [*&v0[v1] _firstBaselineOffsetFromTop];
  v13 = MaxY - v12;
  [v0 bounds];
  v14 = CGRectGetMaxY(v20);
  [*&v0[v6] _firstBaselineOffsetFromTop];
  v16 = v14 - v15;
  [v0 bounds];
  v17 = CGRectGetMaxX(v21) - v8 + -5.0;
  [*&v0[v1] setFrame:{5.0, v13, v3, v5}];
  [*&v0[v6] setFrame:{v17, v16, v8, v10}];
  sub_2EE48();
}

void sub_2EE48()
{
  v1 = v0;
  v271 = sub_34CD8();
  v253 = *(v271 - 8);
  v2 = __chkstk_darwin(v271);
  v282 = &v250 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v281 = &v250 - v5;
  __chkstk_darwin(v4);
  v270 = &v250 - v6;
  v278 = sub_3828(&qword_488A0);
  v257 = *(v278 - 8);
  __chkstk_darwin(v278);
  v275 = (&v250 - v7);
  v8 = sub_3828(&qword_488A8);
  v9 = __chkstk_darwin(v8 - 8);
  v277 = (&v250 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v276 = (&v250 - v11);
  v12 = sub_3828(&qword_488B0);
  v13 = __chkstk_darwin(v12 - 8);
  v295 = &v250 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  *&v291 = &v250 - v15;
  v303 = sub_34E88();
  v279 = *(v303 - 1);
  v16 = __chkstk_darwin(v303);
  v300 = &v250 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v298 = &v250 - v18;
  v289 = sub_34EE8();
  *&v290 = *(v289 - 1);
  __chkstk_darwin(v289);
  v273 = &v250 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = sub_34F88();
  v269 = *(v286 - 8);
  v20 = __chkstk_darwin(v286);
  v256 = &v250 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v255 = &v250 - v23;
  v24 = __chkstk_darwin(v22);
  v254 = &v250 - v25;
  v26 = __chkstk_darwin(v24);
  v283 = &v250 - v27;
  v28 = __chkstk_darwin(v26);
  v285 = &v250 - v29;
  __chkstk_darwin(v28);
  v284 = &v250 - v30;
  v299 = sub_34E68();
  v288 = *(v299 - 8);
  v31 = __chkstk_darwin(v299);
  v274 = &v250 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v287 = &v250 - v34;
  v35 = __chkstk_darwin(v33);
  v297 = &v250 - v36;
  v37 = __chkstk_darwin(v35);
  v302 = &v250 - v38;
  v39 = __chkstk_darwin(v37);
  v272 = &v250 - v40;
  v41 = __chkstk_darwin(v39);
  v262 = &v250 - v42;
  __chkstk_darwin(v41);
  v266 = &v250 - v43;
  v44 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_gridLayer;
  [*&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_gridLayer] removeFromSuperlayer];
  v45 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_dotLayer;
  v46 = *&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_dotLayer];
  v264 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_dotLayer;
  [v46 removeFromSuperlayer];
  v265 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_maxDotLayer;
  [*&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_maxDotLayer] removeFromSuperlayer];
  v268 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_barLayer;
  [*&v0[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_barLayer] removeFromSuperlayer];
  v47 = [objc_allocWithZone(CAShapeLayer) init];
  v48 = [objc_allocWithZone(CAShapeLayer) init];
  v49 = [objc_allocWithZone(CAShapeLayer) init];
  v301 = [objc_allocWithZone(CAShapeLayer) init];
  v50 = *(v44 + v1);
  v51 = v47;
  v52 = [v50 filters];
  [(__objc2_prot *)v51 setFilters:v52];

  v53 = *&v1[v45];
  v54 = v48;
  v55 = [v53 filters];
  [v54 setFilters:v55];

  v56 = v265;
  v57 = *&v1[v265];
  v58 = v49;
  v59 = [v57 filters];
  [v58 setFilters:v59];

  v60 = *&v1[v268];
  v61 = v301;
  v62 = [v60 filters];
  [v61 setFilters:v62];

  v63 = *(v44 + v1);
  *(v44 + v1) = v51;
  v261 = v51;

  v64 = v264;
  v65 = *&v1[v264];
  *&v1[v264] = v54;
  v260 = v54;

  v66 = *&v1[v56];
  *&v1[v56] = v58;
  v259 = v58;

  a = *&v268;
  v68 = *&v1[v268];
  *&v1[v268] = v61;
  v69 = v61;

  v301 = v44;
  v70 = *(v44 + v1);
  [v1 bounds];
  [v70 setFrame:?];

  v71 = *&v1[v64];
  [v1 bounds];
  [v71 setFrame:?];

  v72 = *&v1[v56];
  [v1 bounds];
  [v72 setFrame:?];

  v73 = *&v1[*&a];
  [v1 bounds];
  [v73 setFrame:?];

  [v1 bounds];
  v75 = v74 + -1.0;
  Mutable = CGPathCreateMutable();
  if (v75 * 0.25 == 0.0)
  {
    goto LABEL_19;
  }

  v296 = Mutable;
  v258 = v69;
  v77 = v1;
  sub_31E18(v77, 0.0, v75, v75 * 0.25, 0.5);
  v79 = v78;
  v267 = v77;

  v80 = *(v79 + 16);
  if (v80)
  {
    *&v317.a = _swiftEmptyArrayStorage;
    sub_35718();
    v81 = v79 + 56;
    do
    {
      CGPathCreateWithRect(*(v81 - 24), 0);
      sub_356F8();
      sub_35728();
      sub_35738();
      sub_35708();
      v81 += 32;
      --v80;
    }

    while (v80);

    a = v317.a;
  }

  else
  {

    a = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  }

  v263 = v1;
  if (*&a >> 62)
  {
    goto LABEL_20;
  }

  for (i = *(&dword_10 + (*&a & 0xFFFFFFFFFFFFFF8)); i; i = sub_35768())
  {
    v83 = 0;
    while (1)
    {
      if ((*&a & 0xC000000000000001) != 0)
      {
        v84 = sub_356C8();
      }

      else
      {
        if (v83 >= *(&dword_10 + (*&a & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_18;
        }

        v84 = *(*&a + 8 * v83 + 32);
      }

      v85 = v84;
      v86 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      v317.b = 0.0;
      v317.c = 0.0;
      v317.a = 1.0;
      v317.d = 1.0;
      v317.tx = 0.0;
      v317.ty = 0.0;
      sub_35528(v84, &v317);

      ++v83;
      if (v86 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v87 = v263;
  v88 = v301;
  [*(v301 + v263) setPath:v296];
  v89 = *(v88 + v87);
  v90 = objc_opt_self();
  v91 = v89;
  v92 = [v90 grayColor];
  v93 = [v92 colorWithAlphaComponent:0.5];

  v94 = [v93 CGColor];
  [v91 setFillColor:v94];

  v95 = v267;
  v96 = [v267 layer];
  [v96 addSublayer:*(v88 + v87)];

  v97 = *&v95[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_graphData];
  if (v97)
  {
    v250 = v90;
    v98 = *&v95[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationStartLabel];
    v280 = v97;

    [v98 bounds];
    v100 = v99;
    v101 = enum case for DepthUnit.m(_:);
    v102 = v290 + 104;
    v103 = *(v290 + 104);
    v104 = v273;
    v105 = v289;
    v103(v273, enum case for DepthUnit.m(_:), v289);
    sub_34F68();
    v252 = v101;
    *&v290 = v102;
    v251 = v103;
    v103(v104, v101, v105);
    sub_34F68();
    sub_34E38();
    v106 = *(v280 + 16);
    v294 = v106;
    if (v106)
    {
      v107 = *(v279 + 16);
      v108 = v280 + ((*(v279 + 80) + 32) & ~*(v279 + 80));
      v293 = *(v279 + 72);
      v109 = (v279 + 8);
      v110 = (v288 + 48);
      v111 = (v288 + 32);
      v301 = _swiftEmptyArrayStorage;
      v112 = v291;
      v292 = v107;
      do
      {
        v113 = v298;
        v114 = v303;
        (v107)(v298, v108, v303);
        sub_34E78();
        (*v109)(v113, v114);
        v115 = v299;
        if ((*v110)(v112, 1, v299) == 1)
        {
          sub_32080(v112);
        }

        else
        {
          v116 = *v111;
          (*v111)(v297, v112, v115);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v117 = v301;
          }

          else
          {
            v117 = sub_312AC(0, &v301[2]->isa + 1, 1, v301);
          }

          v119 = v117[2];
          v118 = v117[3];
          if (v119 >= v118 >> 1)
          {
            v117 = sub_312AC(v118 > 1, v119 + 1, 1, v117);
          }

          v117[2] = (v119 + 1);
          v120 = (*(v288 + 80) + 32) & ~*(v288 + 80);
          v301 = v117;
          v116(v117 + v120 + *(v288 + 72) * v119, v297, v299);
          v107 = v292;
        }

        v108 += v293;
        --v106;
      }

      while (v106);
    }

    else
    {
      v301 = _swiftEmptyArrayStorage;
    }

    v122 = v288;
    v123 = v288 + 16;
    v124 = *(v288 + 16);
    v125 = v272;
    (v124)(v272, v266, v299);
    v126 = v301[2];
    if (v126)
    {
      v127 = v301 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
      v292 = *(v122 + 72);
      v293 = (v269 + 1);
      *&v291 = v269 + 4;
      v128 = (v122 + 8);
      v129 = v286;
      v130 = v299;
      v298 = v123;
      v131 = v256;
      v297 = v124;
      v132 = v255;
      v133 = v254;
      v134 = v302;
      do
      {
        (v297)(v134, v127, v130);
        sub_34E18();
        sub_34E18();
        sub_320E8();
        v135 = sub_35378();
        v136 = (v135 & 1) == 0;
        if (v135)
        {
          v137 = v132;
        }

        else
        {
          v137 = v131;
        }

        if (v136)
        {
          v138 = v132;
        }

        else
        {
          v138 = v131;
        }

        (*v293)(v137, v129);
        (*v291)(v133, v138, v129);
        sub_34E28();
        v134 = v302;
        (*v128)(v302, v130);
        v127 = v292 + v127;
        v126 = (v126 - 1);
      }

      while (v126);

      v122 = v288;
      v124 = v297;
    }

    else
    {
    }

    v140 = *(v122 + 32);
    v139 = v122 + 32;
    v141 = v262;
    v142 = v299;
    v272 = v140;
    (v140)(v262, v125, v299);
    [v267 bounds];
    v144 = v143 - v100;
    (v124)(v287, v141, v142);
    v145 = v273;
    v251(v273, v252, v289);
    sub_34F68();
    v146 = 0;
    v273 = (v279 + 16);
    v293 = (v257 + 56);
    v292 = (v257 + 48);
    *&v291 = v279 + 32;
    *&v290 = v139 + 16;
    v147 = (v269 + 1);
    v269 += 4;
    v148 = v144 + -5.0;
    v288 = v139;
    v297 = (v139 - 24);
    v289 = (v279 + 8);
    v302 = _swiftEmptyArrayStorage;
    v298 = -1;
    v149 = v278;
    v150 = v277;
    v151 = v276;
    v152 = v295;
    v301 = v147;
    while (1)
    {
      if (v146 == v294)
      {
        v153 = 1;
        v146 = v294;
      }

      else
      {
        if ((v146 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        if (v146 >= *(v280 + 16))
        {
          goto LABEL_82;
        }

        v154 = v279;
        v155 = v280 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v146;
        v156 = *(v149 + 48);
        v157 = v275;
        *v275 = v146;
        (*(v154 + 16))(v157 + v156, v155, v303);
        sub_32140(v157, v150, &qword_488A0);
        v153 = 0;
        ++v146;
      }

      (*v293)(v150, v153, 1, v149);
      sub_32140(v150, v151, &qword_488A8);
      if ((*v292)(v151, 1, v149) == 1)
      {

        v292 = CGPathCreateMutable();
        v293 = CGPathCreateMutable();
        v289 = CGPathCreateMutable();
        v185 = *(v302 + 2);
        v186 = v271;
        v187 = v270;
        v188 = v297;
        v189 = v298;
        if (v185)
        {
          v303 = (v253 + 8);
          v190 = v302 + 56;
          *&v184 = 136315138;
          v291 = v184;
          *&v184 = 134217984;
          v290 = v184;
          do
          {
            v300 = v185;
            v298 = v189;
            v202 = v187;
            v204 = *(v190 - 3);
            v203 = *(v190 - 2);
            v205 = *(v190 - 1);
            v206 = *v190;
            sub_34EB8();
            v207 = sub_34CC8();
            v208 = sub_35508();
            v209 = os_log_type_enabled(v207, v208);
            v295 = v205;
            v294 = v203;
            if (v209)
            {
              v210 = swift_slowAlloc();
              v211 = swift_slowAlloc();
              v308 = v211;
              *v210 = v291;
              v304 = v204;
              v305 = v203;
              v306 = v205;
              v307 = v206;
              v212 = sub_353D8();
              v214 = sub_31484(v212, v213, &v308);

              *(v210 + 4) = v214;
              v187 = v270;
              _os_log_impl(&dword_0, v207, v208, "Drawing bar %s", v210, 0xCu);
              sub_6408(v211);
              v188 = v297;

              v186 = v271;

              v215 = *v303;
              (*v303)(v187, v186);
              v216 = v204;
              if ((v206 & 1) == 0)
              {
                goto LABEL_72;
              }
            }

            else
            {

              v215 = *v303;
              (*v303)(v202, v186);
              v187 = v202;
              v216 = v204;
              if ((v206 & 1) == 0)
              {
LABEL_72:
                sub_34EB8();
                v217 = sub_34CC8();
                v218 = sub_35508();
                if (os_log_type_enabled(v217, v218))
                {
                  v219 = swift_slowAlloc();
                  *v219 = v290;
                  *(v219 + 4) = v204;
                  _os_log_impl(&dword_0, v217, v218, "DepthGraphView: dotRect: %f", v219, 0xCu);
                  v188 = v297;
                }

                v215(v281, v186);
                v191 = v284;
                sub_34F58();
                sub_34F38();
                v193 = v192;
                v194 = v285;
                sub_34E58();
                sub_34F38();
                v196 = v195;
                v197 = *v301;
                v198 = v194;
                v199 = v286;
                (*v301)(v198, v286);
                (v197)(v191, v199);
                v319.origin.y = v148 * (v193 / v196) + 5.0;
                v319.size.width = 1.25;
                v319.size.height = 1.25;
                v319.origin.x = v216 + -1.25;
                v200 = CGPathCreateWithEllipseInRect(v319, 0);
                v310.b = 0.0;
                v310.c = 0.0;
                v310.a = 1.0;
                v310.d = 1.0;
                v310.tx = 0.0;
                v310.ty = 0.0;
                sub_35528(v200, &v310);
                v201 = v298;
                goto LABEL_68;
              }
            }

            sub_34EB8();
            v220 = sub_34CC8();
            v221 = sub_35508();
            if (os_log_type_enabled(v220, v221))
            {
              v222 = swift_slowAlloc();
              *v222 = v290;
              *(v222 + 4) = v204;
              _os_log_impl(&dword_0, v220, v221, "DepthGraphView: range: %f", v222, 0xCu);
              v188 = v297;
            }

            v223 = *&v295;

            v215(v282, v186);
            v312 = 0;
            v313 = 0;
            v311 = 0x3FF0000000000000;
            v314 = 0x3FF0000000000000;
            v315 = 0;
            v316 = 0;
            sub_35538();
            sub_35548();
            v201 = v298;
            if (v298)
            {
              goto LABEL_69;
            }

            v320.origin.x = v216 + -2.75;
            v320.size.width = 5.5;
            v320.size.height = 5.5;
            v320.origin.y = v223;
            v200 = CGPathCreateWithEllipseInRect(v320, 0);
            v309.b = 0.0;
            v309.c = 0.0;
            v309.a = 1.0;
            v309.d = 1.0;
            v309.tx = 0.0;
            v309.ty = 0.0;
            sub_35528(v200, &v309);
LABEL_68:

LABEL_69:
            v190 += 32;
            v189 = v201 - 1;
            v185 = v300 - 1;
          }

          while (v300 != &dword_0 + 1);
        }

        v302 = *v188;
        (v302)(v287, v299);
        v145 = v250;
        v224 = [v250 grayColor];
        v146 = v263;
        v225 = v264;
        v226 = *&v263[v264];
        v124 = &off_45000;
        v303 = v224;
        v227 = [v224 CGColor];
        v147 = &off_45000;
        [v226 setFillColor:v227];

        v228 = *(v146 + v225);
        v229 = [v228 fillColor];
        [v228 setStrokeColor:v229];

        v150 = &off_45000;
        [*(v146 + v225) setPath:v293];
        v142 = v267;
        v230 = [v267 layer];
        [v230 addSublayer:*(v146 + v225)];

        if (qword_476C0 == -1)
        {
LABEL_80:
          v231 = qword_48F40;
          v232 = v268;
          v233 = *(v146 + v268);
          v234 = [v231 *(v124 + 3176)];
          [v233 v147[412]];

          v235 = *(v146 + v232);
          v236 = [v231 *(v124 + 3176)];
          [v235 setStrokeColor:v236];

          [*(v146 + v232) setLineCap:kCALineCapRound];
          [*(v146 + v232) setLineWidth:2.5];
          v237 = v150[402];
          v238 = v292;
          [*(v146 + v232) v237];
          v239 = [v142 layer];
          [v239 addSublayer:*(v146 + v232)];

          v240 = v265;
          v241 = *(v146 + v265);
          v242 = [v145 whiteColor];
          v243 = [v242 *(v124 + 3176)];

          [v241 setFillColor:v243];
          v244 = *(v146 + v240);
          v245 = [v244 fillColor];
          [v244 setStrokeColor:v245];

          v246 = v289;
          [*(v146 + v240) setPath:v289];
          v247 = [v142 layer];
          [v247 addSublayer:*(v146 + v240)];

          (*v301)(v283, v286);
          v248 = v299;
          v249 = v302;
          (v302)(v262, v299);
          (v249)(v266, v248);
          return;
        }

LABEL_83:
        swift_once();
        goto LABEL_80;
      }

      v158 = *v151;
      (*v291)(v300, v151 + *(v149 + 48), v303);
      sub_34E78();
      v159 = (*v290)(v152, 1, v142);
      v160 = v152;
      v161 = v159;
      if (v159 == 1)
      {
        sub_32080(v160);
        v173 = 0.0;
        v178 = 0.0;
      }

      else
      {
        v162 = v274;
        (v272)(v274, v160, v142);
        v163 = v284;
        sub_34E18();
        sub_320E8();
        v164 = v286;
        v165 = sub_35368();
        v166 = *v147;
        (*v147)(v163, v164);
        if ((v165 & 1) == 0)
        {
          sub_34E18();
          v167 = v283;
          (v166)(v283, v164);
          (*v269)(v167, v163, v164);
          v298 = v158;
        }

        sub_34E48();
        sub_34F38();
        v169 = v168;
        v170 = v285;
        sub_34E58();
        sub_34F38();
        v172 = v171;
        (v166)(v170, v164);
        (v166)(v163, v164);
        v173 = v148 * (v169 / v172) + 5.0;
        sub_34E18();
        sub_34F38();
        v175 = v174;
        sub_34E58();
        sub_34F38();
        v177 = v176;
        (v166)(v170, v164);
        (v166)(v163, v164);
        v147 = v301;
        v142 = v299;
        (*v297)(v162, v299);
        v178 = v148 * (v175 / v177) + 5.0;
        v149 = v278;
        v150 = v277;
        v151 = v276;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v302 = sub_311AC(0, *(v302 + 2) + 1, 1, v302);
      }

      v180 = *(v302 + 2);
      v179 = *(v302 + 3);
      v145 = (v180 + 1);
      if (v180 >= v179 >> 1)
      {
        v302 = sub_311AC((v179 > 1), v180 + 1, 1, v302);
      }

      v181 = v158 * 4.5 + 3.5;
      v124 = v161 != 1;
      (*v289)(v300, v303);
      v182 = v302;
      *(v302 + 2) = v145;
      v183 = &v182[32 * v180];
      *(v183 + 4) = v181;
      *(v183 + 5) = v173;
      *(v183 + 6) = v178;
      v183[56] = v124;
      v152 = v295;
    }
  }

  v121 = v296;
}

uint64_t sub_30FC4()
{
  sub_3828(&qword_47868);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_366A0;
  v2 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_gridLayer);
  v3 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_dotLayer);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationStartLabel);
  v5 = v2;
  v6 = v3;
  *(v1 + 48) = [v4 layer];
  *(v1 + 56) = [*(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationEndLabel) layer];
  return v1;
}

id sub_310B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DepthGraphView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_311AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3828(&qword_488C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

size_t sub_312AC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_3828(&qword_488B8);
  v10 = *(sub_34E68() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_34E68() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_31484(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_31550(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_321AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_6408(v11);
  return v7;
}

unint64_t sub_31550(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_3165C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_356E8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_3165C(uint64_t a1, unint64_t a2)
{
  v3 = sub_316A8(a1, a2);
  sub_317D8(&off_41150);
  return v3;
}

char *sub_316A8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_318C4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_356E8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_35428();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_318C4(v10, 0);
        result = sub_35698();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_317D8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_31938(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_318C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_3828(&qword_488C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_31938(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3828(&qword_488C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_31A2C(char *a1, int64_t a2, char a3)
{
  result = sub_31A6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_31A4C(char *a1, int64_t a2, char a3)
{
  result = sub_31B7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_31A6C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3828(&unk_48530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_31B7C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_3828(&qword_488D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_31C80(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void sub_31CF4()
{
  *(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_graphData) = 0;
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationStartLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_durationEndLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_gridLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_dotLayer;
  *(v0 + v4) = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_maxDotLayer;
  *(v0 + v5) = [objc_allocWithZone(CAShapeLayer) init];
  v6 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion14DepthGraphView_barLayer;
  *(v0 + v6) = [objc_allocWithZone(CAShapeLayer) init];
  sub_35758();
  __break(1u);
}

void sub_31E18(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_31C80(a2, a3, a4);
  sub_31A4C(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    goto LABEL_30;
  }

  v11 = 0;
  v12 = 0;
  if (!v10)
  {
    v15 = a2;
    goto LABEL_16;
  }

  v13 = a2;
  do
  {
    v14 = v13 <= a3;
    if (a4 > 0.0)
    {
      v14 = v13 >= a3;
    }

    if (v14)
    {
      if (v11 & 1 | (v13 != a3))
      {
        goto LABEL_28;
      }

      v11 = 1;
      v15 = v13;
    }

    else
    {
      v16 = __OFADD__(v12++, 1);
      if (v16)
      {
        goto LABEL_29;
      }

      v15 = a2 + v12 * a4;
    }

    [a1 bounds];
    Height = CGRectGetHeight(v29);
    v19 = _swiftEmptyArrayStorage[2];
    v18 = _swiftEmptyArrayStorage[3];
    if (v19 >= v18 >> 1)
    {
      v21 = Height;
      sub_31A4C((v18 > 1), v19 + 1, 1);
      Height = v21;
    }

    _swiftEmptyArrayStorage[2] = v19 + 1;
    v20 = &_swiftEmptyArrayStorage[4 * v19];
    *(v20 + 4) = v13 + a5;
    *(v20 + 40) = xmmword_37090;
    *(v20 + 7) = Height;
    v13 = v15;
    --v10;
  }

  while (v10);
  while (1)
  {
LABEL_16:
    v22 = v15 <= a3;
    if (a4 > 0.0)
    {
      v22 = v15 >= a3;
    }

    if (!v22)
    {
      break;
    }

    if ((v15 != a3) | v11 & 1)
    {
      return;
    }

    v11 = 1;
    v23 = v15;
LABEL_23:
    [a1 bounds];
    v24 = CGRectGetHeight(v30);
    v26 = _swiftEmptyArrayStorage[2];
    v25 = _swiftEmptyArrayStorage[3];
    if (v26 >= v25 >> 1)
    {
      v28 = v24;
      sub_31A4C((v25 > 1), v26 + 1, 1);
      v24 = v28;
    }

    _swiftEmptyArrayStorage[2] = v26 + 1;
    v27 = &_swiftEmptyArrayStorage[4 * v26];
    *(v27 + 4) = v15 + a5;
    *(v27 + 40) = xmmword_37090;
    *(v27 + 7) = v24;
    v15 = v23;
  }

  v16 = __OFADD__(v12++, 1);
  if (!v16)
  {
    v23 = a2 + v12 * a4;
    goto LABEL_23;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_32080(uint64_t a1)
{
  v2 = sub_3828(&qword_488B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_320E8()
{
  result = qword_48568;
  if (!qword_48568)
  {
    sub_34F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_48568);
  }

  return result;
}

uint64_t sub_32140(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_3828(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_321AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for Bar(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 initializeWithCopy for Bar(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Bar(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Bar(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t HKUnit.depthUnit.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 footUnit];
  sub_324F4();
  v6 = sub_355D8();

  if (v6)
  {
    v7 = &enum case for DepthUnit.ft(_:);
  }

  else
  {
    v8 = [v4 meterUnit];
    v9 = sub_355D8();

    if ((v9 & 1) == 0)
    {
      sub_356B8(37);

      v14 = [v2 description];
      v15 = sub_353A8();
      v17 = v16;

      v19._countAndFlagsBits = v15;
      v19._object = v17;
      sub_35418(v19);

      v20._countAndFlagsBits = 0x74706564206F7420;
      v20._object = 0xED000074696E5568;
      sub_35418(v20);
      result = sub_35758();
      __break(1u);
      return result;
    }

    v7 = &enum case for DepthUnit.m(_:);
  }

  v10 = *v7;
  v11 = sub_34EE8();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

unint64_t sub_324F4()
{
  result = qword_483C0;
  if (!qword_483C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_483C0);
  }

  return result;
}

uint64_t HKUnit.waterTemperatureUnit.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 degreeCelsiusUnit];
  sub_324F4();
  v6 = sub_355D8();

  if (v6)
  {
    v7 = &enum case for WaterTemperatureUnit.celcius(_:);
  }

  else
  {
    v8 = [v4 degreeFahrenheitUnit];
    v9 = sub_355D8();

    if ((v9 & 1) == 0)
    {
      sub_356B8(48);

      v14 = [v2 description];
      v15 = sub_353A8();
      v17 = v16;

      v19._countAndFlagsBits = v15;
      v19._object = v17;
      sub_35418(v19);

      v20._countAndFlagsBits = 0xD000000000000018;
      v20._object = 0x8000000000038C70;
      sub_35418(v20);
      result = sub_35758();
      __break(1u);
      return result;
    }

    v7 = &enum case for WaterTemperatureUnit.fahrenheit(_:);
  }

  v10 = *v7;
  v11 = sub_35328();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

uint64_t sub_32728(void **a1, uint64_t a2, uint64_t (*a3)(void), const char *a4, void (*a5)(uint64_t), void (*a6)(char *))
{
  v46 = a5;
  v43 = a4;
  v9 = sub_351D8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_35178();
  v48 = *(v13 - 8);
  v49 = v13;
  __chkstk_darwin(v13);
  v47 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_34FB8();
  __chkstk_darwin(v15 - 8);
  v45 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_35298();
  __chkstk_darwin(v17 - 8);
  v18 = a3(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v38 - v19;
  v44 = sub_34CD8();
  v21 = *(v44 - 8);
  __chkstk_darwin(v44);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    v41 = a6;
    v42 = v12;
    sub_34EC8();
    v27 = v24;
    v28 = sub_34CC8();
    v29 = sub_35508();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v40 = v9;
      v31 = v30;
      v32 = swift_slowAlloc();
      v39 = v10;
      v33 = v32;
      *v31 = 138543362;
      *(v31 + 4) = v27;
      *v32 = v27;
      v34 = v27;
      _os_log_impl(&dword_0, v28, v29, v43, v31, 0xCu);
      sub_33A00(v33);
      v10 = v39;

      v9 = v40;
    }

    v35 = (*(v21 + 8))(v23, v44);
    v46(v35);
    v36 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion13SettingsStore_unitSettings;
    swift_beginAccess();
    v41(v20);
    swift_endAccess();

    sub_35288();
    sub_34FA8();
    sub_35238();
    (*(v48 + 16))(v47, v26 + v36, v49);
    sub_35258();
    v37 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion13SettingsStore_privacySettings;
    swift_beginAccess();
    (*(v10 + 16))(v42, v26 + v37, v9);
    sub_35278();
    sub_34D18();
  }

  return result;
}

uint64_t sub_32BD0(unsigned __int8 *a1)
{
  v2 = sub_351D8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v26 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_35178();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_34FB8();
  __chkstk_darwin(v7 - 8);
  v8 = sub_35298();
  __chkstk_darwin(v8 - 8);
  v9 = sub_34CD8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v21 = v3;
    v22 = v2;
    sub_34EC8();
    v16 = sub_34CC8();
    v17 = sub_35508();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67240192;
      *(v18 + 4) = v13;
      _os_log_impl(&dword_0, v16, v17, "SettingsStore: updated fitnessTrackingEnabled=%{BOOL,public}d", v18, 8u);
    }

    (*(v10 + 8))(v12, v9);
    v19 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion13SettingsStore_privacySettings;
    swift_beginAccess();
    sub_351C8();
    swift_endAccess();

    sub_35288();
    sub_34FA8();
    sub_35238();
    v20 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion13SettingsStore_unitSettings;
    swift_beginAccess();
    (*(v24 + 16))(v23, v15 + v20, v25);
    sub_35258();
    (*(v21 + 16))(v26, v15 + v19, v22);
    sub_35278();
    sub_34D18();
  }

  return result;
}

uint64_t sub_32FBC()
{

  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion13SettingsStore_unitSettings;
  v2 = sub_35178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion13SettingsStore_privacySettings;
  v4 = sub_351D8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_33094()
{
  sub_32FBC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SettingsStore()
{
  result = qword_48910;
  if (!qword_48910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_33140()
{
  result = sub_35178();
  if (v1 <= 0x3F)
  {
    result = sub_351D8();
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

void *sub_3323C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = a3;
  v9 = sub_34FB8();
  __chkstk_darwin(v9 - 8);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_351D8();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_35328();
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_34EE8();
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_35178();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_35298();
  __chkstk_darwin(v20 - 8);
  sub_35288();
  sub_3828(&qword_47B50);
  swift_allocObject();
  v4[2] = sub_34D28();
  v35 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion13SettingsStore_subscriptions;
  *(v4 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion13SettingsStore_subscriptions) = &_swiftEmptySetSingleton;
  v4[5] = a2;
  v4[6] = a4;
  v21 = v39;
  v5[3] = a1;
  v5[4] = v21;

  v33 = a2;

  v36 = a4;

  v22 = a1;
  sub_34D08();
  v23 = v43;
  HKUnit.depthUnit.getter(v17);

  sub_34D08();
  v24 = v42;
  HKUnit.waterTemperatureUnit.getter(v14);

  sub_35138();
  v25 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion13SettingsStore_unitSettings;
  (*(v38 + 32))(v5 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion13SettingsStore_unitSettings, v19, v40);
  sub_34D08();
  v26 = v31;
  sub_351A8();
  v27 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion13SettingsStore_privacySettings;
  v28 = v32;
  v29 = v34;
  (*(v32 + 32))(v5 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion13SettingsStore_privacySettings, v26, v34);

  sub_35288();
  sub_34FA8();
  sub_35238();
  swift_beginAccess();
  (*(v38 + 16))(v19, v5 + v25, v40);
  sub_35258();
  swift_beginAccess();
  (*(v28 + 16))(v26, v5 + v27, v29);
  sub_35278();
  sub_34D18();

  v41 = v39;
  swift_allocObject();
  swift_weakInit();

  sub_3828(&qword_48388);
  sub_339AC(&qword_48AA0, &qword_48388);
  sub_34D48();

  swift_beginAccess();
  sub_34CE8();
  swift_endAccess();

  v41 = v33;
  swift_allocObject();
  swift_weakInit();
  sub_34D48();

  swift_beginAccess();
  sub_34CE8();
  swift_endAccess();

  v41 = v36;
  swift_allocObject();
  swift_weakInit();

  sub_3828(&qword_48390);
  sub_339AC(&qword_48AA8, &qword_48390);
  sub_34D48();

  swift_beginAccess();
  sub_34CE8();
  swift_endAccess();

  return v5;
}

uint64_t sub_338AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_339AC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_6E30(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_33A00(uint64_t a1)
{
  v2 = sub_3828(&qword_47E98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_33B4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataSourceContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t static WaterDepth.from(depthValue:withDeviceType:)()
{
  v0 = sub_35068();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_35058();
  sub_35048();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_33FA4()
{
  v1 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion16OverrideProvider__depth;
  v2 = sub_3828(&qword_48D98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion16OverrideProvider__waterTemperature;
  v4 = sub_3828(&qword_48DA0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC32DepthComplicationBundleCompanion16OverrideProvider__historicalWaterTemperature, v4);
  v6 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion16OverrideProvider__historicalMetrics;
  v7 = sub_3828(&qword_48DA8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion16OverrideProvider__overrideEnabled;
  v9 = sub_3828(&qword_48DB0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  v10 = OBJC_IVAR____TtC32DepthComplicationBundleCompanion16OverrideProvider_settings;
  v11 = sub_35298();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OverrideProvider()
{
  result = qword_48B50;
  if (!qword_48B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_34214()
{
  sub_343E0(319, &qword_48B60, &type metadata accessor for WaterDepth);
  if (v0 <= 0x3F)
  {
    sub_343E0(319, &qword_48B68, &type metadata accessor for Temperature);
    if (v1 <= 0x3F)
    {
      sub_34434();
      if (v2 <= 0x3F)
      {
        sub_34498();
        if (v3 <= 0x3F)
        {
          sub_35298();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_343E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_34D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_34434()
{
  if (!qword_48B70)
  {
    sub_6E30(&qword_47EB0);
    v0 = sub_34D38();
    if (!v1)
    {
      atomic_store(v0, &qword_48B70);
    }
  }
}

void sub_34498()
{
  if (!qword_48B78)
  {
    v0 = sub_34D38();
    if (!v1)
    {
      atomic_store(v0, &qword_48B78);
    }
  }
}

uint64_t sub_34594(uint64_t a1, void *a2)
{
  v5 = sub_3828(&qword_47EB8);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  sub_34C88();
  v8 = sub_34CB8();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    isa = sub_34C98().super.isa;
    (*(v9 + 8))(v7, v8);
  }

  v11 = [a2 supportsCapability:isa];

  if (!v11)
  {
    return 0;
  }

  v12 = (*(v2 + 120))();
  v13 = *(v12 + 16);
  v14 = 32;
  do
  {
    v15 = v13-- != 0;
    v16 = v15;
    if (!v15)
    {
      break;
    }

    v17 = *(v12 + v14);
    v14 += 8;
  }

  while (v17 != a1);

  return v16;
}

id sub_3478C(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_34CD8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_47630 != -1)
  {
    swift_once();
  }

  *&v3[OBJC_IVAR____TtC32DepthComplicationBundleCompanion14BaseDataSource_timelineDataProvider] = qword_48E80;
  v11 = type metadata accessor for BaseDataSource();
  v22.receiver = v3;
  v22.super_class = v11;

  v12 = objc_msgSendSuper2(&v22, "initWithComplication:family:forDevice:", a1, a2, a3);
  sub_34EB8();
  v13 = sub_34CC8();
  v14 = sub_354E8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a2;
    v18 = v12;
    _os_log_impl(&dword_0, v13, v14, "%@ initialized for family %ld", v16, 0x16u);
    sub_33A00(v17);

    a1 = v21;
  }

  (*(v8 + 8))(v10, v7);
  return v12;
}

id sub_34A4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}