uint64_t sub_1000946CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009472C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000947A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AppearanceEvent(0);
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
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100019558(&qword_10011EA08);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = type metadata accessor for DisappearanceEvent(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10009493C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for AppearanceEvent(0);
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
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_100019558(&qword_10011EA08);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for DisappearanceEvent(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_100094ABC()
{
  type metadata accessor for AppearanceEvent(319);
  if (v0 <= 0x3F)
  {
    sub_100094BD0(319, &qword_1001215D0, type metadata accessor for VisibleRectChangedEvent, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100094BD0(319, &unk_1001215D8, type metadata accessor for EngagementEvent, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DisappearanceEvent(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100094BD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100094C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100019558(&unk_10011E820);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D3410;
  type metadata accessor for EntryRequest();
  sub_1000CB340();
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100024C50();
  *(v8 + 32) = 0;
  *(v8 + 40) = 0xE000000000000000;
  sub_10001F934(0, &qword_10011F5F0);
  v9 = sub_1000CB160();
  sub_1000CB060();
  sub_1000C9BE0();

  type metadata accessor for TodayContent();
  sub_1000C9A20();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_1000C9990();
  sub_1000C99B0();

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;

  v13 = sub_1000C9990();
  sub_1000C99C0();
}

uint64_t sub_100094E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentServiceRequest();
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001E2E4((a1 + 16), *(a1 + 40));
  v8 = sub_1000958E0();
  v9 = type metadata accessor for EntryRequest();
  sub_100095EF4(a2 + *(v9 + 20), v7 + *(v5 + 28), type metadata accessor for LayoutContext);
  v10 = (a2 + *(v9 + 24));
  v11 = *(v10 + 4);
  *v7 = v8;
  v12 = v7 + *(v5 + 32);
  v13 = *v10;
  v14 = v10[1];
  *v12 = *v10;
  *(v12 + 1) = v14;
  *(v12 + 4) = v11;
  v15 = v13;
  type metadata accessor for ContentService();
  v16 = v15;

  v17 = sub_10006D740();
  sub_100095F5C(v7, type metadata accessor for ContentServiceRequest);
  return v17;
}

uint64_t sub_100094FDC(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for NewsTimelineEntry();
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095EF4(a1, &v7[*(v5 + 28)], type metadata accessor for TodayContent);
  sub_1000C9590();
  a2(v7);
  return sub_100095F5C(v7, type metadata accessor for NewsTimelineEntry);
}

uint64_t sub_1000950B8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1000CB040();
  sub_100019558(&unk_10011E820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000D3410;
  sub_100019558(&unk_10011F8D0);
  sub_1000CB340();
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100024C50();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_10001F934(0, &qword_10011F5F0);
  v5 = sub_1000CB160();
  sub_1000C9BE0();

  return a2(a1);
}

uint64_t sub_1000951FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[0] = a2;
  v4 = sub_1000C9610();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000CACC0();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for ContentServiceRequest();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for TodayContent();
  v11 = __chkstk_darwin(v10 - 8);
  v13 = (v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = (v29 - v14);
  sub_10001E2E4((v2 + 16), *(v2 + 40));
  v16 = sub_1000958E0();
  v17 = type metadata accessor for EntryRequest();
  sub_100095EF4(a1 + *(v17 + 20), v9 + *(v7 + 28), type metadata accessor for LayoutContext);
  v18 = (a1 + *(v17 + 24));
  v19 = *(v18 + 4);
  *v9 = v16;
  v20 = v9 + *(v7 + 32);
  v21 = *v18;
  v22 = v18[1];
  *v20 = *v18;
  *(v20 + 1) = v22;
  *(v20 + 4) = v19;
  v23 = v21;

  sub_1000CACB0();
  sub_1000C95E0();
  v24 = sub_1000CAD40();
  v26 = v25;
  sub_100069D80(v9, 2, v13);
  sub_10008C7B8(v24, v26, v15);

  sub_100095F5C(v13, type metadata accessor for TodayContent);
  sub_100095F5C(v9, type metadata accessor for ContentServiceRequest);
  v27 = type metadata accessor for NewsTimelineEntry();
  sub_100095EF4(v15, v29[0] + *(v27 + 20), type metadata accessor for TodayContent);
  sub_1000C9590();
  return sub_100095F5C(v15, type metadata accessor for TodayContent);
}

uint64_t sub_100095508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ContentServiceRequest();
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TodayContent();
  v10 = __chkstk_darwin(v9 - 8);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (&v30 - v13);
  sub_10001E2E4((v2 + 16), *(v2 + 40));
  v15 = sub_1000958E0();
  v16 = type metadata accessor for EntryRequest();
  sub_100095EF4(a1 + *(v16 + 20), v8 + *(v6 + 28), type metadata accessor for LayoutContext);
  v17 = (a1 + *(v16 + 24));
  v18 = *(v17 + 4);
  *v8 = v15;
  v19 = v8 + *(v6 + 32);
  v20 = *v17;
  v21 = v17[1];
  *v19 = *v17;
  *(v19 + 1) = v21;
  *(v19 + 4) = v18;
  v22 = v20;

  v23 = sub_1000C9330();
  v24 = sub_10006C6EC(v23);
  v26 = v25;
  sub_100069D80(v8, v27, v12);
  sub_10008C7B8(v24, v26, v14);

  sub_100095F5C(v12, type metadata accessor for TodayContent);
  sub_100095F5C(v8, type metadata accessor for ContentServiceRequest);
  v28 = type metadata accessor for NewsTimelineEntry();
  sub_100095EF4(v14, a2 + *(v28 + 20), type metadata accessor for TodayContent);
  sub_1000C9590();
  return sub_100095F5C(v14, type metadata accessor for TodayContent);
}

uint64_t sub_10009574C()
{
  sub_10001E37C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000957A8()
{
  sub_100019558(&qword_1001216B0);
  swift_allocObject();
  return sub_1000C9A00();
}

uint64_t type metadata accessor for EntryRequest()
{
  result = qword_100121718;
  if (!qword_100121718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100095884()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000958E0()
{
  v1 = v0;
  v2 = sub_1000C9480();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(NTPBSectionSlotCostInfo) init];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v7 = result;
  result = [objc_allocWithZone(NTPBTodayResultOperationInfo) init];
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v8 = result;
  v9 = v0 + *(type metadata accessor for EntryRequest() + 20);
  v10 = *(v9 + 32);
  [v8 setSlotsLimit:v10];
  [v8 setRespectsWidgetSlotsLimit:1];
  [v8 setRespectsWidgetVisibleSectionsPerQueueLimit:1];
  v11 = v9;
  v12 = sub_100079344();
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  [v8 setSourceNameImageSizePreset:v12];
  [v8 setFetchWidgetConfig:1];
  result = FCURLForContainerizedUserAccountCachesDirectory();
  if (result)
  {
    v13 = result;
    sub_1000C9440();

    sub_1000C93F0(v14);
    v16 = v15;
    (*(v3 + 8))(v5, v2);
    [v8 setAssetsDirectoryFileURL:v16];

    [v8 setThumbnailSizePreset:3];
    v17 = *(v9 + 16);
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        v18 = 3;
        goto LABEL_17;
      }

      if (v17 == 6)
      {
        v18 = 4;
        goto LABEL_17;
      }
    }

    else
    {
      if (v17 == 1)
      {
        [v8 setWidgetSize:1];
        goto LABEL_15;
      }

      if (v17 == 2)
      {
        v18 = 2;
LABEL_17:
        [v8 setWidgetSize:v18];
LABEL_18:
        v21 = sub_100078C80();
        [v21 nt_scaledValueForValue:1.0];
        v23 = v22;

        [v7 setSectionTitleSlotCost:v23 * 12.0 + *v9 + 6.0];
        v24 = *(v9 + 8);
        sub_100079038();
        [v7 setSectionFooterSlotCost:v24 - v25];
        sub_100079038();
        v27 = v26;
        sub_100079BA0();
        v29 = v28;
        v30 = type metadata accessor for LayoutContext();
        v31 = *(v9 + *(v30 + 40));
        sub_100079BA0();
        v33 = v31 * v32;
        sub_100079038();
        v35 = v33 - (v34 + v34);
        sub_100079038();
        v37 = v35 + (v31 + v31) * v36;
        sub_100079BA0();
        v39 = v27 + v29 * (sub_100079848() * (v37 / v38));
        sub_100079038();
        [v7 setHeadlineSlotCost:v40 + v39];
        [v8 setDynamicThumbnailSizeMinimumSizeInPixels:{*(v9 + *(v30 + 36)) * 128.0, *(v9 + *(v30 + 36)) * 128.0}];
        [v8 setAllowSectionTitles:1];
        sub_100079CC0();
        [v8 setMinHeadlineScale:?];
        sub_100079CC0();
        [v8 setMaxHeadlineScale:?];
        [v8 setBannerSlotCost:sub_100077948()];
LABEL_19:
        [v8 setSectionSlotCostInfo:v7];
        [v8 setQualityOfService:25];
        v41 = [objc_opt_self() mainScreen];
        [v41 scale];
        v43 = v42;

        [v8 setScale:v43];
        v44 = [objc_opt_self() activeInputModes];
        sub_10001F934(0, &qword_1001216B8);
        v11 = sub_1000CAED0();

        if (!(v11 >> 62))
        {
          result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_21:
            if ((v11 & 0xC000000000000001) != 0)
            {
              v45 = sub_1000CB2A0();
LABEL_24:
              v46 = v45;

              v47 = [v46 primaryLanguage];

              if (v47)
              {
LABEL_30:
                [v8 setKeyboardInputMode:v47];

                [v8 setRequest:*v1];
                return v8;
              }

LABEL_29:
              v47 = 0;
              goto LABEL_30;
            }

            if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v45 = *(v11 + 32);
              goto LABEL_24;
            }

            __break(1u);
            goto LABEL_33;
          }

LABEL_28:

          goto LABEL_29;
        }

LABEL_27:
        result = sub_1000CB3A0();
        if (result)
        {
          goto LABEL_21;
        }

        goto LABEL_28;
      }
    }

    [v8 setWidgetSize:0];
    if (v17 != 11)
    {
      goto LABEL_18;
    }

LABEL_15:
    [v7 setSectionTitleSlotCost:0.0];
    [v7 setSectionFooterSlotCost:0.0];
    [v8 slotsLimit];
    [v7 setHeadlineSlotCost:?];
    v19 = *(v9 + 24);
    v20 = *(v9 + *(type metadata accessor for LayoutContext() + 36));
    [v8 setDynamicThumbnailSizeMinimumSizeInPixels:{v19 * v20, v10 * v20}];
    [v8 setAllowSectionTitles:0];
    goto LABEL_19;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100095EF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100095F5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100095FD0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100096090(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100096134()
{
  result = sub_10001F934(319, &unk_100121728);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LayoutContext();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100096238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = *v2;
  v29 = a2;
  v4 = type metadata accessor for ContentServiceRequest();
  __chkstk_darwin(v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TodayContent();
  __chkstk_darwin(v7 - 8);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for EntryRequest();
  __chkstk_darwin(v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_100019558(&qword_1001217F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  sub_1000965BC(a1, &v28 - v14);
  v16 = type metadata accessor for NewsTimelineEntry();
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) != 1)
  {
    return sub_10009B978(v15, v29, type metadata accessor for NewsTimelineEntry);
  }

  sub_100031844(v15, &qword_1001217F0);
  v17 = (*(*(v28 + 88) + 24))();
  sub_100096830(v17, v18, a1, v12);

  v19 = sub_10001E2E4(v2 + 4, v2[7]);
  sub_10001E2E4((*v19 + 16), *(*v19 + 40));
  v20 = sub_1000958E0();
  sub_10009B9E0(v12 + *(v10 + 20), v6 + *(v4 + 20), type metadata accessor for LayoutContext);
  v21 = v12 + *(v10 + 24);
  v22 = *(v21 + 4);
  *v6 = v20;
  v23 = v6 + *(v4 + 24);
  v24 = *v21;
  v25 = *(v21 + 1);
  *v23 = *v21;
  *(v23 + 1) = v25;
  *(v23 + 4) = v22;
  v26 = v24;

  sub_100069D80(v6, 4, v9);
  sub_10009BB0C(v6, type metadata accessor for ContentServiceRequest);
  sub_10009B9E0(v9, v29 + *(v16 + 20), type metadata accessor for TodayContent);
  sub_1000C9590();
  sub_10009BB0C(v9, type metadata accessor for TodayContent);
  return sub_10009BB0C(v12, type metadata accessor for EntryRequest);
}

uint64_t sub_1000965BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for EntryRequest();
  __chkstk_darwin(v7 - 8);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([objc_opt_self() ams_shieldSignInOrCreateFlows])
  {
    sub_10001F934(0, &qword_10011F5F0);
    v10 = sub_1000CB160();
    sub_1000CB060();
    sub_1000C9BE0();

    v11 = (*(*(v6 + 88) + 24))();
    sub_100096830(v11, v12, a1, v9);

    sub_10001E2E4(v3 + 4, v3[7]);
    sub_1000951FC(v9, a2);
    sub_10009BB0C(v9, type metadata accessor for EntryRequest);
    v13 = type metadata accessor for NewsTimelineEntry();
    return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
  }

  else
  {
    sub_10001F934(0, &qword_10011F5F0);
    v15 = sub_1000CB160();
    sub_1000CB060();
    sub_1000C9BE0();

    v16 = type metadata accessor for NewsTimelineEntry();
    v17 = *(*(v16 - 8) + 56);

    return v17(a2, 1, 1, v16);
  }
}

id sub_100096830@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v58 = a2;
  v60 = a1;
  v56 = a4;
  v5 = type metadata accessor for LayoutContext();
  __chkstk_darwin(v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100019558(&qword_100120958);
  __chkstk_darwin(v8 - 8);
  v54 = &v53 - v9;
  v10 = sub_1000CA0B0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000CAB90();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v53 - v18;
  v59 = a3;
  sub_1000CABB0();
  swift_getKeyPath();
  v20 = sub_1000CABA0();

  v21 = *(v14 + 8);
  v21(v19, v13);
  if (v20)
  {
    v22 = *(v20 + 16);
    if (v22)
    {
      v23 = (v20 + 32);
      v24 = 2.0;
      do
      {
        v25 = *v23++;
        v26 = v25;
        if (v24 <= v25)
        {
          v24 = v26;
        }

        --v22;
      }

      while (v22);
    }

    else
    {
      v24 = 2.0;
    }
  }

  else
  {
    v24 = 3.0;
  }

  sub_1000CABB0();
  swift_getKeyPath();
  v27 = sub_1000CABA0();

  v21(v17, v13);
  if (v27)
  {
    v28 = v54;
    v29 = v55;
    if (*(v27 + 16))
    {
      (*(v11 + 16))(v54, v27 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    (*(v11 + 56))(v28, v30, 1, v10);
    if ((*(v11 + 48))(v28, 1, v10) != 1)
    {
      (*(v11 + 32))(v29, v28, v10);
      goto LABEL_20;
    }
  }

  else
  {
    v28 = v54;
    (*(v11 + 56))(v54, 1, 1, v10);
    v29 = v55;
  }

  (*(v11 + 104))(v29, enum case for ContentSizeCategory.large(_:), v10);
  if ((*(v11 + 48))(v28, 1, v10) != 1)
  {
    sub_100031844(v28, &qword_100120958);
  }

LABEL_20:
  v31 = sub_1000CAB70();
  sub_1000CAB80();
  v33 = v32;
  v35 = v34;
  (*(v11 + 16))(&v7[v5[8]], v29, v10);
  v36 = sub_1000CABC0();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  *(v7 + 2) = v31;
  *(v7 + 3) = v33;
  *(v7 + 4) = v35;
  *&v7[v5[9]] = v24;
  *&v7[v5[10]] = 0x3FF0000000000000;
  v7[v5[11]] = 0;
  v7[v5[12]] = v36 & 1;
  ObjectType = swift_getObjectType();
  v43 = v58;
  v44 = (*(v58 + 8))(ObjectType, v58);
  v45 = type metadata accessor for EntryRequest();
  v46 = v56;
  sub_10009B9E0(v7, v56 + *(v45 + 20), type metadata accessor for LayoutContext);
  v47 = sub_1000CAB70();
  sub_10009BB0C(v7, type metadata accessor for LayoutContext);
  (*(v11 + 8))(v29, v10);
  v49 = *(v57 + 16);
  v48 = *(v57 + 24);
  *v46 = v44;
  v50 = (v46 + *(v45 + 24));
  *v50 = v60;
  v50[1] = v43;
  v50[2] = v47;
  v50[3] = v49;
  v50[4] = v48;

  v51 = v60;

  return v51;
}

uint64_t sub_100096DC0(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100019558(&qword_1001217F0);
  __chkstk_darwin(v11 - 8);
  v13 = v20 - v12;
  v14 = *(v10 + 88);
  v15 = sub_1000CAB70();
  v16 = v5[2];
  v17 = v5[3];
  v20[1] = a1;
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v16;
  v20[5] = v17;
  sub_10001E2E4(v5 + 9, v5[12]);

  v18 = a1;
  sub_100026320(v13);
  sub_100096F50(v18, a2, v13, a3, a4);

  return sub_100031844(v13, &qword_1001217F0);
}

uint64_t sub_100096F50(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v68 = a1;
  v10 = *v6;
  v71 = a3;
  v72 = v10;
  v11 = sub_1000CABD0();
  v78 = *(v11 - 8);
  v79 = v11;
  __chkstk_darwin(v11);
  v75 = v12;
  v77 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EntryRequest();
  v73 = *(v13 - 8);
  v14 = __chkstk_darwin(v13 - 8);
  v76 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v15;
  __chkstk_darwin(v14);
  v82 = (&v67 - v16);
  v17 = sub_100019558(&qword_1001217F0);
  v69 = *(v17 - 8);
  v18 = v69[8];
  v19 = __chkstk_darwin(v17 - 8);
  v20 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v67 - v21;
  v23 = type metadata accessor for NewsTimelineEntry();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = (&v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = a2;
  sub_1000965BC(a2, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v70 = a4;
    v80 = a5;
    sub_100031844(v22, &qword_1001217F0);
    sub_10001F934(0, &qword_10011F5F0);
    v27 = v68;
    v28 = sub_1000CB160();
    v29 = sub_1000CB060();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&_mh_execute_header, v28, v29, "fetching news entry for configuration %@", v30, 0xCu);
      sub_100031844(v31, &unk_100121820);
    }

    v33 = v72;
    v34 = *(v72 + 88);
    v35 = v82;
    v36 = sub_100096830(v27, v34, v81, v82);
    __chkstk_darwin(v36);
    *(&v67 - 2) = v6;
    *(&v67 - 1) = v35;
    sub_1000C9A20();
    sub_10002DFB4(v71, v20, &qword_1001217F0);
    v37 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v38 = swift_allocObject();
    v39 = *(v33 + 80);
    *(v38 + 16) = v39;
    *(v38 + 24) = v34;
    v40 = v39;
    v67 = v39;
    v68 = v34;
    sub_10009ADF0(v20, v38 + v37);
    *(v38 + ((v18 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v41 = v27;
    v42 = sub_1000C9990();
    sub_1000C99F0();

    v43 = swift_allocObject();
    v43[2] = v40;
    v43[3] = v34;
    v71 = v6;
    v44 = v70;
    v43[4] = v41;
    v43[5] = v44;
    v43[6] = v80;
    v69 = v41;

    v45 = sub_1000C9990();
    v72 = sub_1000C99B0();

    v46 = v77;
    v47 = v78;
    v48 = v79;
    (*(v78 + 16))(v77, v81, v79);
    v49 = v35;
    v50 = v76;
    sub_10009B9E0(v49, v76, type metadata accessor for EntryRequest);
    v51 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v52 = (v75 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
    v55 = (*(v73 + 80) + v54 + 8) & ~*(v73 + 80);
    v56 = swift_allocObject();
    v57 = v68;
    *(v56 + 16) = v67;
    *(v56 + 24) = v57;
    (*(v47 + 32))(v56 + v51, v46, v48);
    v59 = v69;
    v58 = v70;
    *(v56 + v52) = v69;
    v60 = (v56 + v53);
    v61 = v80;
    *v60 = v58;
    v60[1] = v61;
    *(v56 + v54) = v71;
    sub_10009B978(v50, v56 + v55, type metadata accessor for EntryRequest);
    v62 = v59;

    v63 = sub_1000C9990();
    sub_1000C99C0();

    v64 = type metadata accessor for EntryRequest;
    v65 = v82;
  }

  else
  {
    sub_10009B978(v22, v26, type metadata accessor for NewsTimelineEntry);
    a4(v26);
    v64 = type metadata accessor for NewsTimelineEntry;
    v65 = v26;
  }

  return sub_10009BB0C(v65, v64);
}

uint64_t sub_1000976B4(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v56 = a4;
  v55 = a3;
  v7 = *v4;
  v8 = sub_1000CABD0();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin(v8);
  v60 = v9;
  v64 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TaskContext();
  v10 = __chkstk_darwin(v54);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  v15 = sub_100019558(&qword_1001217F0);
  v57 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v59 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v17;
  __chkstk_darwin(v16);
  v19 = &v47 - v18;
  sub_10001E2E4(v4 + 14, v4[17]);
  type metadata accessor for TelemetryManager();
  result = sub_1000C9810();
  if (result)
  {
    v53 = result;
    v51 = v7;
    v21 = v7[11];
    v63 = a2;
    v22 = sub_1000CAB70();
    v23 = v4[2];
    v24 = v4[3];
    *&v68 = a1;
    *(&v68 + 1) = v21;
    v61 = v21;
    v62 = v4;
    *&v69 = v22;
    *(&v69 + 1) = v23;
    v70 = v24;
    sub_10001E2E4(v4 + 9, v4[12]);
    v52 = v24;

    v25 = a1;
    sub_100026320(v19);
    v26 = *(v65 + 16);
    v26(v14, v63, v66);
    sub_10002DFB4(v19, &v14[*(v54 + 5)], &qword_1001217F0);
    sub_1000195A0(&qword_1001217F8);
    v50 = v51[10];
    type metadata accessor for TaskManager();
    sub_1000CAA60();
    v28 = v27;
    v54 = v14;
    sub_10009B9E0(v14, v12, type metadata accessor for TaskContext);
    v51 = v25;
    v29 = sub_1000AFA7C(v51, v12, v28);
    sub_1000AFD10(v55, v56);
    v30 = v62;
    if (sub_100097D8C(v19))
    {
      sub_10001E2E4((v30 + 112), *(v30 + 136));
      v31 = type metadata accessor for EventProcessingSidecarTask();
      v32 = sub_1000C9810();
      if (v32)
      {
        v67[3] = v31;
        v67[4] = &off_10010D810;
        v67[0] = v32;

        sub_1000B0FA0(v67);

        sub_10001E37C(v67);
      }
    }

    v49 = v19;
    v56 = sub_100097F60(v30);
    v55 = sub_1000C9A20();
    v48 = v29;
    v26(v64, v63, v66);
    v33 = v59;
    sub_10002DFB4(v19, v59, &qword_1001217F0);
    v34 = v65;
    v35 = (*(v65 + 80) + 48) & ~*(v65 + 80);
    v36 = (v60 + *(v57 + 80) + v35) & ~*(v57 + 80);
    v37 = (v58 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v37 + 47) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    v40 = v61;
    *(v39 + 2) = v50;
    *(v39 + 3) = v40;
    v41 = v51;
    *(v39 + 4) = v30;
    *(v39 + 5) = v41;
    (*(v34 + 32))(&v39[v35], v64, v66);
    sub_10009ADF0(v33, &v39[v36]);
    v42 = &v39[v37];
    v43 = v69;
    *v42 = v68;
    *(v42 + 1) = v43;
    *(v42 + 4) = v70;
    *&v39[v38] = v48;
    *&v39[(v38 + 15) & 0xFFFFFFFFFFFFFFF8] = v53;
    v44 = v41;

    v45 = v44;

    v46 = sub_1000C9990();
    sub_1000C99E0();

    sub_1000988A0();

    sub_10009BB0C(v54, type metadata accessor for TaskContext);
    return sub_100031844(v49, &qword_1001217F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100097D8C(uint64_t a1)
{
  sub_10001E2E4((v1 + 112), *(v1 + 136));
  sub_100019558(&unk_100120F20);
  result = sub_1000C9810();
  if (result)
  {
    v4 = [result possiblyUnfetchedAppConfiguration];
    if (([v4 respondsToSelector:"widgetAnalyticsEnabled"] & 1) != 0 && objc_msgSend(v4, "widgetAnalyticsEnabled"))
    {
      v5 = sub_100099C18(a1);
      if (v6)
      {
        v7 = 0;
LABEL_9:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v7;
      }

      v9 = v5;
      sub_10001F934(0, &qword_10011F5F0);
      v8 = sub_1000CB160();
      sub_1000CB060();
      if (v9 >= 2)
      {
        sub_1000C9BE0();
        v7 = 1;
        goto LABEL_8;
      }
    }

    else
    {
      sub_10001F934(0, &qword_10011F5F0);
      v8 = sub_1000CB160();
      sub_1000CB060();
    }

    sub_1000C9BE0();
    v7 = 0;
LABEL_8:

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100097F60(uint64_t a1)
{
  sub_10001E2E4((a1 + 112), *(a1 + 136));
  sub_100019558(&unk_10011EC80);
  result = sub_1000C97F0();
  if (result)
  {
    v3 = result;
    sub_10001E2E4((a1 + 112), *(a1 + 136));
    v4 = type metadata accessor for EventProcessingSidecarTask();
    *(swift_allocObject() + 16) = v3;
    swift_unknownObjectRetain();
    v5 = sub_1000C9800();

    if (v5)
    {
      v7[3] = v4;
      v7[4] = &off_10010D810;
      v7[0] = v5;

      v6 = sub_1000B0FA0(v7);

      swift_unknownObjectRelease();
      sub_10001E37C(v7);
    }

    else
    {
      sub_100019558(&unk_10011ED30);
      swift_allocObject();
      v6 = sub_1000C99D0();
      swift_unknownObjectRelease();
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100098100(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&unk_10011EC80);
  return sub_1000C97C0();
}

uint64_t sub_100098164(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v25 = a6;
  v26 = a7;
  v27 = a2;
  v28 = a4;
  v24 = a3;
  v10 = *a1;
  v11 = sub_1000CABD0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  v30 = *(a5 + 24);
  v31 = v15;
  (*(v12 + 16))(v14, a3, v11);
  v16 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = *(v10 + 80);
  v19 = *(v10 + 88);
  v20 = a5[1];
  *(v18 + 40) = *a5;
  *(v18 + 24) = v19;
  *(v18 + 32) = a1;
  *(v18 + 56) = v20;
  *(v18 + 72) = *(a5 + 4);
  (*(v12 + 32))(v18 + v16, v14, v11);
  v21 = v26;
  *(v18 + v17) = v25;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;

  sub_10002DFB4(&v31, v29, &unk_10011E860);
  sub_1000317E8(&v30, v29);

  sub_100096F50(v27, v24, v28, sub_10009B0EC, v18);
}

uint64_t sub_100098378(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v37 = a5;
  v31 = a4;
  v38 = sub_100019558(&qword_1001217F8);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v33 = &v31 - v8;
  v35 = sub_1000CAB10();
  v9 = *(v35 - 8);
  v10 = __chkstk_darwin(v35);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v34 = sub_1000C95A0();
  v32 = *(v34 - 8);
  v15 = __chkstk_darwin(v34);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v31 - v18;
  sub_1000C9590();
  sub_10001E2E4((a2 + 72), *(a2 + 96));
  sub_100025AE8(a1);
  v20 = type metadata accessor for NewsTimelineEntry();
  v21 = [*&a1[*(v20 + 20) + *(type metadata accessor for TodayContent() + 28)] widgetConfig];
  if (!v21)
  {
    v22 = sub_1000CAB70();
    v21 = sub_1000987F4(v22);
  }

  [v21 widgetSystemReloadInterval];
  [v21 widgetSystemReloadJitterMax];
  sub_1000C9520();
  sub_1000CAB00();
  sub_100019558(&unk_100121840);
  v23 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1000D3410;
  sub_10009B9E0(a1, v24 + v23, type metadata accessor for NewsTimelineEntry);
  v25 = v35;
  (*(v9 + 16))(v12, v14, v35);
  sub_10009BA48(&unk_1001217E0, type metadata accessor for NewsTimelineEntry);
  v26 = v33;
  sub_1000CABE0();
  sub_1000B0C50();
  TelemetryManager.flush()();

  (*(v36 + 8))(v26, v38);
  (*(v9 + 8))(v14, v25);
  v27 = *(v32 + 8);
  v28 = v17;
  v29 = v34;
  v27(v28, v34);
  return (v27)(v19, v29);
}

id sub_1000987F4(uint64_t a1)
{
  if (a1 == 11 || a1 == 1)
  {
    result = [objc_allocWithZone(NTPBTodayWidgetConfig) init];
    if (result)
    {
      v2 = result;
      [result setWidgetSystemReloadInterval:7200];
LABEL_7:
      [v2 setWidgetSystemReloadJitterMax:600];
      return v2;
    }

    __break(1u);
  }

  else
  {
    result = [objc_allocWithZone(NTPBTodayWidgetConfig) init];
    if (result)
    {
      v2 = result;
      [result setWidgetSystemReloadInterval:300];
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000988A0()
{
  v1 = sub_1000CA7E0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000CA810();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 152);
  aBlock[4] = sub_100099648;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003D408;
  aBlock[3] = &unk_10010F288;
  v8 = _Block_copy(aBlock);
  sub_1000CA7F0();
  v12 = &_swiftEmptyArrayStorage;
  sub_10009BA48(&qword_100121800, &type metadata accessor for DispatchWorkItemFlags);
  sub_100019558(&qword_100121808);
  sub_10009AF98(&qword_100121810, &qword_100121808);
  sub_1000CB200();
  sub_1000CB0E0();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  return (*(v5 + 8))(v7, v11);
}

uint64_t sub_100098B30@<X0>(void *a1@<X8>)
{
  result = sub_1000C9E00();
  *a1 = v3;
  return result;
}

uint64_t sub_100098B84(uint64_t a1)
{
  v2 = sub_1000CA0B0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000C9E30();
}

void sub_100098C4C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v7 = type metadata accessor for NewsTimelineEntry();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100019558(&qword_1001217F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  sub_10002DFB4(a2, &v30 - v12, &qword_1001217F0);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_100031844(v13, &qword_1001217F0);
    sub_10001F934(0, &qword_10011F5F0);
    v14 = a3;
    v15 = sub_1000CB160();
    v16 = sub_1000CB060();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "no previous entry for configuration %@", v17, 0xCu);
      sub_100031844(v18, &unk_100121820);
    }

    swift_willThrow();
    swift_errorRetain();
  }

  else
  {
    sub_10009B978(v13, a4, type metadata accessor for NewsTimelineEntry);
    sub_10009B9E0(a4, v10, type metadata accessor for NewsTimelineEntry);
    sub_10001F934(0, &qword_10011F5F0);
    v20 = a3;
    v21 = sub_1000CB160();
    v22 = sub_1000CB060();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v23 = 138412546;
      *(v23 + 4) = v20;
      *v24 = v20;
      *(v23 + 12) = 2080;
      sub_1000C95A0();
      sub_10009BA48(&qword_10011EA00, &type metadata accessor for Date);
      v25 = v20;
      v26 = sub_1000CB520();
      v28 = v27;
      sub_10009BB0C(v10, type metadata accessor for NewsTimelineEntry);
      v29 = sub_10009A0C0(v26, v28, &v31);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "falling back to previous entry for configuration %@ from %s", v23, 0x16u);
      sub_100031844(v24, &unk_100121820);

      sub_10001E37C(v30);
    }

    else
    {

      sub_10009BB0C(v10, type metadata accessor for NewsTimelineEntry);
    }
  }
}

uint64_t sub_1000990D8(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  sub_10001F934(0, &qword_10011F5F0);
  v6 = a2;
  v7 = sub_1000CB160();
  v8 = sub_1000CB060();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "returning content entry for configuration %@", v9, 0xCu);
    sub_100031844(v10, &unk_100121820);
  }

  return a3(a1);
}

uint64_t sub_100099220(void (*a1)(void), uint64_t a2, void *a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a7;
  v44 = a5;
  v41 = a1;
  v10 = type metadata accessor for ContentServiceRequest();
  __chkstk_darwin(v10);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for TodayContent();
  __chkstk_darwin(v13 - 8);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for NewsTimelineEntry();
  __chkstk_darwin(v42);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000CABC0();
  sub_10001F934(0, &qword_10011F5F0);
  v19 = a3;
  v20 = sub_1000CB160();
  v21 = sub_1000CB060();

  v22 = os_log_type_enabled(v20, v21);
  if (v18)
  {
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v41 = a4;
      v25 = v24;
      *v23 = 138412290;
      *(v23 + 4) = v19;
      *v24 = v19;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "returning placeholder for configuration %@", v23, 0xCu);
      sub_100031844(v25, &unk_100121820);
      a4 = v41;
    }

    v27 = sub_10001E2E4((a6 + 32), *(a6 + 56));
    sub_10001E2E4((*v27 + 16), *(*v27 + 40));
    v28 = v43;
    v29 = sub_1000958E0();
    v30 = type metadata accessor for EntryRequest();
    sub_10009B9E0(v28 + *(v30 + 20), v12 + *(v10 + 20), type metadata accessor for LayoutContext);
    v31 = v28 + *(v30 + 24);
    v32 = *(v31 + 32);
    *v12 = v29;
    v33 = v12 + *(v10 + 24);
    v34 = *v31;
    v35 = *(v31 + 16);
    *v33 = *v31;
    *(v33 + 1) = v35;
    *(v33 + 4) = v32;
    v36 = v34;

    sub_100069D80(v12, 4, v15);
    sub_10009BB0C(v12, type metadata accessor for ContentServiceRequest);
    sub_10009B9E0(v15, &v17[*(v42 + 20)], type metadata accessor for TodayContent);
    sub_1000C9590();
    sub_10009BB0C(v15, type metadata accessor for TodayContent);
  }

  else
  {
    if (v22)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v19;
      *v38 = v19;
      v39 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "returning error within preview for configuration %@", v37, 0xCu);
      sub_100031844(v38, &unk_100121820);
    }

    sub_10001E2E4((a6 + 32), *(a6 + 56));
    sub_100095508(v43, v17);
  }

  a4(v17);
  return sub_10009BB0C(v17, type metadata accessor for NewsTimelineEntry);
}

void sub_100099648()
{
  v0 = sub_1000C95A0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v34 - v6;
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v10 = sub_100019558(&qword_10011E850);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = NewsCoreUserDefaults();
  v17 = [v16 BOOLForKey:NDDownloadServiceHasUnfinishedWorkKey];

  if (v17)
  {
    v35 = v4;
    v18 = objc_opt_self();
    v19 = [v18 standardUserDefaults];
    v34 = "idget.sidecarTasks";
    v20 = sub_1000CACD0();
    v21 = [v19 objectForKey:v20];

    if (v21)
    {
      sub_1000CB1E0();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
    }

    aBlock = v40;
    v37 = v41;
    if (*(&v41 + 1))
    {
      v22 = swift_dynamicCast();
      (*(v1 + 56))(v15, v22 ^ 1u, 1, v0);
    }

    else
    {
      sub_100031844(&aBlock, &qword_100120A50);
      (*(v1 + 56))(v15, 1, 1, v0);
    }

    sub_1000C9590();
    sub_10002DFB4(v15, v13, &qword_10011E850);
    v23 = *(v1 + 48);
    if (v23(v13, 1, v0) == 1)
    {
      _s10NewsToday216TelemetryManagerC13lastFlushDate33_F9D4AB4E0910E2715C8CD19E0D9BCB9510Foundation0G0Vvpfi_0();
      if (v23(v13, 1, v0) != 1)
      {
        sub_100031844(v13, &qword_10011E850);
      }
    }

    else
    {
      (*(v1 + 32))(v7, v13, v0);
    }

    sub_1000C94E0();
    v25 = v24;
    v26 = *(v1 + 8);
    v26(v7, v0);
    v26(v9, v0);
    if (v25 > 3600.0)
    {
      v27 = NDDownloadServiceXPCConnection();
      [v27 resume];
      v38 = TodayIntentResponseCode.rawValue.getter;
      v39 = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v37 = sub_100099BB0;
      *(&v37 + 1) = &unk_10010F2B0;
      v28 = _Block_copy(&aBlock);
      v29 = [v27 remoteObjectProxyWithErrorHandler:v28];
      _Block_release(v28);
      sub_1000CB1E0();
      swift_unknownObjectRelease();
      sub_100019558(&qword_100121818);
      if (swift_dynamicCast())
      {
        [v40 ping];
        v30 = [v18 standardUserDefaults];
        v31 = v35;
        sub_1000C9590();
        isa = sub_1000C94F0().super.isa;
        v26(v31, v0);
        v33 = sub_1000CACD0();
        [v30 setObject:isa forKey:v33];
        swift_unknownObjectRelease();
      }
    }

    sub_100031844(v15, &qword_10011E850);
  }
}

void sub_100099BB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100099C18(uint64_t a1)
{
  v2 = sub_100019558(&qword_1001217F0);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  v5 = NewsCoreUserDefaults();
  v6 = [v5 objectForKey:FCWidgetOnboardingVersionSharedPreferenceKey];

  if (v6)
  {
    sub_1000CB1E0();
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
    sub_10001F934(0, &unk_100121850);
    if (swift_dynamicCast())
    {
      v7 = v15[1];
      sub_10001F934(0, &qword_10011F5F0);
      v8 = sub_1000CB160();
      sub_1000CB060();
      sub_1000C9BE0();

      v9 = [v7 integerValue];
      goto LABEL_11;
    }
  }

  else
  {
    sub_100031844(v18, &qword_100120A50);
  }

  sub_10002DFB4(a1, v4, &qword_1001217F0);
  v10 = type metadata accessor for NewsTimelineEntry();
  if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
  {
    sub_100031844(v4, &qword_1001217F0);
    sub_10001F934(0, &qword_10011F5F0);
    v7 = sub_1000CB160();
    sub_1000CB060();
    sub_1000C9BE0();
    v9 = 0;
  }

  else
  {
    v11 = &v4[*(v10 + 20)];
    v12 = *&v11[*(type metadata accessor for TodayContent() + 40)];

    sub_10009BB0C(v4, type metadata accessor for NewsTimelineEntry);
    v13 = *(v12 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_fetchInfo);

    v9 = [v13 onboardingVersion];

    sub_10001F934(0, &qword_10011F5F0);
    v7 = sub_1000CB160();
    sub_1000CB060();
    sub_1000C9BE0();
  }

LABEL_11:

  return v9;
}

uint64_t sub_100099F7C()
{

  sub_10001E37C(v0 + 32);
  sub_10001E37C(v0 + 72);
  sub_10001E37C(v0 + 112);

  return v0;
}

uint64_t sub_100099FBC()
{
  sub_100099F7C();

  return swift_deallocClassInstance();
}

unint64_t sub_10009A0C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10009A18C(v11, 0, 0, 1, a1, a2);
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
    sub_100027BB8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10001E37C(v11);
  return v7;
}

unint64_t sub_10009A18C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10009A298(a5, a6);
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
    result = sub_1000CB2E0();
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

char *sub_10009A298(uint64_t a1, unint64_t a2)
{
  v3 = sub_10009A2E4(a1, a2);
  sub_10009A414(&off_10010C388);
  return v3;
}

char *sub_10009A2E4(uint64_t a1, unint64_t a2)
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

  v6 = sub_10009A500(v5, 0);
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

  result = sub_1000CB2E0();
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
        v10 = sub_1000CADE0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10009A500(v10, 0);
        result = sub_1000CB270();
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

uint64_t sub_10009A414(uint64_t result)
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

  result = sub_10009A574(result, v11, 1, v3);
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

void *sub_10009A500(uint64_t a1, uint64_t a2)
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

  sub_100019558(&unk_100121830);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10009A574(char *result, int64_t a2, char a3, char *a4)
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
    sub_100019558(&unk_100121830);
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

uint64_t sub_10009A668(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v18 = a4;
  v19 = a1;
  v16 = a3;
  v20 = a2;
  v17 = sub_1000CB0B0();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CB0A0();
  __chkstk_darwin(v8);
  v9 = sub_1000CA810();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10001F934(0, &qword_100120570);
  v15[0] = "sidecarTaskQueue";
  v15[1] = v10;
  sub_1000CA7F0();
  *&v21 = &_swiftEmptyArrayStorage;
  sub_10009BA48(&qword_10011F5D0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100019558(&qword_10011F5D8);
  v11 = v16;
  sub_10009AF98(&qword_10011F5E0, &qword_10011F5D8);
  sub_1000CB200();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  v12 = v18;
  v4[19] = sub_1000CB0F0();
  v13 = v20;
  v4[2] = v19;
  v4[3] = v13;
  sub_10002DE48(v11, (v4 + 4));
  sub_10001E2E4(v12, *(v12 + 3));
  sub_100019558(&qword_10011F008);

  result = sub_1000C9820();
  if (v22)
  {
    sub_10001E37C(v11);
    sub_1000855E8(&v21, (v4 + 9));
    sub_1000855E8(v12, (v4 + 14));
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009A9EC()
{
  v1 = sub_1000CABD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_100019558(&qword_1001217F0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for NewsTimelineEntry();
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    v11 = sub_1000C95A0();
    (*(*(v11 - 8) + 8))(v0 + v8, v11);
    v12 = (v0 + v8 + *(v10 + 20));

    v13 = type metadata accessor for TodayContent();
    v14 = v12 + *(v13 + 20);
    v15 = type metadata accessor for Banner();
    if (!(*(*(v15 - 1) + 48))(v14, 1, v15))
    {
      v29 = v9;

      v16 = v15[7];
      v17 = sub_1000C9480();
      v18 = *(v17 - 8);
      v28 = v16;
      v19 = &v14[v16];
      v20 = v17;
      if (!(*(v18 + 48))(v19, 1, v17))
      {
        (*(v18 + 8))(&v14[v28], v20);
      }

      v21 = *&v14[v15[9]];
      if (v21 != 1)
      {
      }

      sub_1000375D8(*&v14[v15[10]], *&v14[v15[10] + 8]);
      v9 = v29;
    }

    swift_unknownObjectRelease();
    v22 = *(v13 + 36);
    v23 = sub_1000C9480();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v12 + v22, 1, v23))
    {
      (*(v24 + 8))(v12 + v22, v23);
    }
  }

  v25 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (((v25 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v26 + 8, v3 | v7 | 7);
}

uint64_t sub_10009ADF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_1001217F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009AE60()
{
  v1 = *(sub_1000CABD0() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_100019558(&qword_1001217F0) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + v7);
  v11 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100098164(v8, v9, v0 + v2, v0 + v5, (v0 + v6), v10, v11);
}

uint64_t sub_10009AF80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009AF98(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000195A0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009AFEC()
{
  v1 = sub_1000CABD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10009B0EC(char *a1)
{
  v3 = *(sub_1000CABD0() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 32);
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100098378(a1, v6, v1 + 40, v1 + v4, v7, v8);
}

uint64_t sub_10009B19C()
{
  sub_10001E2E4((*(v0 + 16) + 32), *(*(v0 + 16) + 56));
  type metadata accessor for EntryService();
  return sub_1000957A8();
}

uint64_t sub_10009B218()
{
  v1 = *(sub_100019558(&qword_1001217F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for NewsTimelineEntry();
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = sub_1000C95A0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    v7 = (v0 + v3 + *(v5 + 20));

    v8 = type metadata accessor for TodayContent();
    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for Banner();
    if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
    {
      v20 = v4;

      v11 = v10[7];
      v12 = sub_1000C9480();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(&v9[v11], 1, v12))
      {
        (*(v13 + 8))(&v9[v11], v12);
      }

      v14 = *&v9[v10[9]];
      if (v14 != 1)
      {
      }

      sub_1000375D8(*&v9[v10[10]], *&v9[v10[10] + 8]);
      v4 = v20;
    }

    swift_unknownObjectRelease();
    v15 = *(v8 + 36);
    v16 = sub_1000C9480();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v7 + v15, 1, v16))
    {
      (*(v17 + 8))(v7 + v15, v16);
    }
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v18 + 8, v2 | 7);
}

void sub_10009B560(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_100019558(&qword_1001217F0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_100098C4C(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_10009B628()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10009B68C()
{
  v1 = sub_1000CABD0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for EntryRequest() - 8);
  v7 = *(*v6 + 80);
  v8 = (v7 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7;
  v14 = *(*v6 + 64);
  v9 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v10 = v6[7];
  v11 = v10 + *(type metadata accessor for LayoutContext() + 32);
  v12 = sub_1000CA0B0();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return _swift_deallocObject(v0, v8 + v14, v9 | 7);
}

uint64_t sub_10009B870(void (*a1)(void))
{
  v3 = *(sub_1000CABD0() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for EntryRequest() - 8);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + v7);
  v13 = v1 + ((*(v8 + 80) + v7 + 8) & ~*(v8 + 80));

  return sub_100099220(a1, v1 + v4, v9, v10, v11, v12, v13);
}

uint64_t sub_10009B978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009B9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009BA48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009BA90@<X0>(void *a1@<X8>)
{
  result = sub_1000C9E00();
  *a1 = v3;
  return result;
}

uint64_t sub_10009BB0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009BB6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10009BBB8()
{
  result = qword_100121870;
  if (!qword_100121870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121870);
  }

  return result;
}

uint64_t sub_10009BC50()
{
  v0 = sub_100019558(&qword_100121920);
  sub_10001A5EC(v0, qword_100134648);
  sub_10001A5B4(v0, qword_100134648);
  sub_10009D198();
  return sub_1000C9170();
}

uint64_t sub_10009BCD4()
{
  v0 = sub_100019558(&qword_1001218B8);
  sub_10001A5EC(v0, qword_100134660);
  sub_10001A5B4(v0, qword_100134660);
  sub_10009D764();
  return sub_1000C90B0();
}

uint64_t sub_10009BD58(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000C9360();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000C9610();
  v1[6] = swift_task_alloc();
  sub_1000CACC0();
  v1[7] = swift_task_alloc();
  sub_1000C9370();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10009BE9C, 0, 0);
}

uint64_t sub_10009BE9C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_100019558(&qword_100121880);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C9380();
  sub_10001B1BC(&qword_100121928, &qword_100121930);
  *v4 = sub_1000C91C0();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10009C050()
{
  v0 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C9360();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C9610();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CACC0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C9370();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C9190();
  sub_10001A5EC(v10, qword_100134678);
  sub_10001A5B4(v10, qword_100134678);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C9380();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C9180();
}

uint64_t sub_10009C32C()
{
  v0 = sub_1000C9370();
  sub_10001A5EC(v0, qword_100134690);
  sub_10001A5B4(v0, qword_100134690);
  return sub_1000C9350();
}

uint64_t sub_10009C390()
{
  v0 = sub_100019558(&qword_10011D820);
  sub_10001A5EC(v0, qword_1001346A8);
  v1 = sub_10001A5B4(v0, qword_1001346A8);
  sub_1000C9040();
  v2 = sub_1000C9050();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10009C450()
{
  result = swift_getKeyPath();
  qword_1001346C0 = result;
  return result;
}

uint64_t sub_10009C478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_10009C49C, 0, 0);
}

uint64_t sub_10009C49C()
{
  sub_1000C8EC0();
  v1 = *(v0 + 16);
  *(v0 + 24) = v1;
  *(v0 + 72) = v1;
  sub_1000C8EC0();
  *(v0 + 145) = *(v0 + 144);
  if (qword_10011CF38 != -1)
  {
    swift_once();
  }

  v2 = qword_1001346C0;
  *(v0 + 80) = qword_1001346C0;

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = sub_10001B1BC(&qword_100121928, &qword_100121930);
  *(v0 + 96) = v4;
  *v3 = v0;
  v3[1] = sub_10009C600;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v2, &type metadata for Bool, v4);
}

uint64_t sub_10009C600()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100017FB0;
  }

  else
  {
    v2 = sub_10009C754;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10009C754()
{
  sub_1000C8EC0();
  v1 = v0[4];
  v0[5] = v1;
  v2 = qword_1001346C0;
  v0[14] = v1;
  v0[15] = v2;

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100017DD4;
  v4 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 146, v2, v4);
}

uint64_t (*sub_10009C82C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C8EB0();
  return sub_1000180D8;
}

uint64_t (*sub_10009C8A0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C8EB0();
  return sub_10001B354;
}

uint64_t sub_10009C914()
{
  if (qword_10011CF38 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10009C974()
{
  result = qword_100121888;
  if (!qword_100121888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121888);
  }

  return result;
}

unint64_t sub_10009C9CC()
{
  result = qword_100121890;
  if (!qword_100121890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121890);
  }

  return result;
}

uint64_t sub_10009CADC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CF30 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_10011D820);
  v3 = sub_10001A5B4(v2, qword_1001346A8);

  return sub_10001AC74(v3, a1);
}

uint64_t sub_10009CB60(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001840C;

  return sub_10009C478(a1, v5, v4);
}

uint64_t sub_10009CC0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009DE88();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10009CC54()
{
  result = qword_100121898;
  if (!qword_100121898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121898);
  }

  return result;
}

unint64_t sub_10009CCAC()
{
  result = qword_1001218A0;
  if (!qword_1001218A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001218A0);
  }

  return result;
}

unint64_t sub_10009CD04()
{
  result = qword_1001218A8;
  if (!qword_1001218A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001218A8);
  }

  return result;
}

uint64_t sub_10009CDBC()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  sub_1000C9680();

  if (*(v0 + 24) == 1 && (, , sub_1000C9680(), , , *(v0 + 24) == 1))
  {
    v1 = *(v0 + 16);

    sub_1000C9680();

    *v1 = *(v0 + 24);
    v2 = *(v0 + 8);
  }

  else
  {
    sub_10009D7B8();
    swift_allocError();
    swift_willThrow();
    v2 = *(v0 + 8);
  }

  return v2();
}

uint64_t sub_10009CF68()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  sub_1000C9680();

  if (*(v0 + 16) == 1 && (, , sub_1000C9680(), , , *(v0 + 16) == 1))
  {
    *(v0 + 16) = *(v0 + 17);

    sub_1000C9690();

    v1 = *(v0 + 8);
  }

  else
  {
    sub_10009D7B8();
    swift_allocError();
    swift_willThrow();
    v1 = *(v0 + 8);
  }

  return v1();
}

uint64_t sub_10009D0E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CF18 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_1001218B8);
  v3 = sub_10001A5B4(v2, qword_100134660);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10009D198()
{
  result = qword_1001218C0;
  if (!qword_1001218C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001218C0);
  }

  return result;
}

uint64_t sub_10009D234()
{
  v0 = qword_100121860;

  return v0;
}

unint64_t sub_10009D270()
{
  result = qword_1001218D0;
  if (!qword_1001218D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001218D0);
  }

  return result;
}

uint64_t sub_10009D2C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CF10 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_100121920);
  v3 = sub_10001A5B4(v2, qword_100134648);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10009D37C()
{
  result = qword_1001218D8;
  if (!qword_1001218D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001218D8);
  }

  return result;
}

unint64_t sub_10009D3D4()
{
  result = qword_1001218E0;
  if (!qword_1001218E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001218E0);
  }

  return result;
}

unint64_t sub_10009D42C()
{
  result = qword_1001218E8;
  if (!qword_1001218E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001218E8);
  }

  return result;
}

unint64_t sub_10009D484()
{
  result = qword_1001218F0;
  if (!qword_1001218F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001218F0);
  }

  return result;
}

uint64_t sub_10009D4D8@<X0>(uint64_t *a1@<X8>)
{
  sub_10009D764();
  result = sub_1000C8EA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10009D518()
{
  sub_10009D710();
  v1 = sub_1000C9150();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10009D600(uint64_t a1)
{
  v2 = sub_10009D198();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10009D650()
{
  result = qword_100121908;
  if (!qword_100121908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121908);
  }

  return result;
}

uint64_t sub_10009D6A4(uint64_t a1)
{
  v2 = sub_10009D484();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10009D710()
{
  result = qword_100121910;
  if (!qword_100121910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121910);
  }

  return result;
}

unint64_t sub_10009D764()
{
  result = qword_100121918;
  if (!qword_100121918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121918);
  }

  return result;
}

unint64_t sub_10009D7B8()
{
  result = qword_100121938;
  if (!qword_100121938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121938);
  }

  return result;
}

uint64_t sub_10009D80C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100019558(&qword_10011D8F8);
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v21 - v2;
  v4 = sub_100019558(&qword_10011D900);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin(v4);
  v7 = v21 - v6;
  v8 = sub_100019558(&qword_10011D908);
  v9 = *(v8 - 8);
  v25 = v8;
  v26 = v9;
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v21[1] = "ally Download Recipes";
  v21[0] = swift_getKeyPath();
  sub_100019558(&qword_10011D910);
  sub_10009D764();
  v12 = sub_1000195A0(&qword_10011D918);
  v13 = sub_1000CA100();
  v14 = sub_10001B1BC(&qword_10011D920, &qword_10011D918);
  v15 = sub_10003B248();
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1000CAAC0();
  sub_1000CA040();
  v16 = sub_10001B1BC(&unk_10011D930, &qword_10011D8F8);
  sub_1000CA140();

  (*(v22 + 8))(v3, v1);
  v28 = v1;
  v29 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v23;
  sub_1000CA170();
  (*(v24 + 8))(v7, v18);
  v28 = v18;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  sub_1000CA130();
  return (*(v26 + 8))(v11, v19);
}

uint64_t sub_10009DC78()
{
  v0 = sub_1000CA100();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100019558(&qword_10011D918);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_1000CA040();
  sub_1000CA6B0();
  sub_1000CA0F0();
  sub_10001B1BC(&qword_10011D920, &qword_10011D918);
  sub_10003B248();
  sub_1000CA460();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10009DE88()
{
  v0 = sub_100019558(&qword_10011D7F8);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000C9140();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100019558(&qword_10011D800);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000C9370();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100019558(&qword_100121940);
  sub_1000C9350();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000C8E70();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_10009D198();
  v23 = sub_1000C8EE0();
  sub_100019558(&qword_10011D810);
  sub_1000C9350();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_1000CAF90();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_1000C8F00();
  return v23;
}

unint64_t sub_10009E338()
{
  result = qword_100121948;
  if (!qword_100121948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121948);
  }

  return result;
}

uint64_t sub_10009E3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C95A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TodayContent();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10009E4B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000C95A0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TodayContent();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for NewsTimelineEntry()
{
  result = qword_1001219A8;
  if (!qword_1001219A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009E5FC()
{
  result = sub_1000C95A0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TodayContent();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10009E680(void *a1)
{
  v3 = sub_100019558(&qword_1001219F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10001E2E4(a1, a1[3]);
  sub_10009EE14();
  sub_1000CB630();
  v8[15] = 0;
  sub_1000C95A0();
  sub_10009EF28(&qword_10011E708, &type metadata accessor for Date);
  sub_1000CB4F0();
  if (!v1)
  {
    type metadata accessor for NewsTimelineEntry();
    v8[14] = 1;
    type metadata accessor for TodayContent();
    sub_10009EF28(&qword_100121A00, type metadata accessor for TodayContent);
    sub_1000CB4F0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10009E880@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for TodayContent();
  __chkstk_darwin(v22);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000C95A0();
  v21 = *(v25 - 8);
  __chkstk_darwin(v25);
  v23 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100019558(&qword_1001219E0);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v17 - v7;
  v9 = type metadata accessor for NewsTimelineEntry();
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E2E4(a1, a1[3]);
  sub_10009EE14();
  sub_1000CB610();
  if (v2)
  {
    return sub_10001E37C(a1);
  }

  v18 = v9;
  v19 = v11;
  v12 = v21;
  v28 = 0;
  sub_10009EF28(&unk_100121BA0, &type metadata accessor for Date);
  v13 = v23;
  v14 = v25;
  sub_1000CB480();
  (*(v12 + 32))(v19, v13, v14);
  v27 = 1;
  sub_10009EF28(&qword_1001219F0, type metadata accessor for TodayContent);
  sub_1000CB480();
  (*(v24 + 8))(v8, v26);
  v15 = v19;
  sub_10009EE68(v5, &v19[*(v18 + 20)]);
  sub_10005FBA8(v15, v20);
  sub_10001E37C(a1);
  return sub_10009EECC(v15);
}

uint64_t sub_10009EC58()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_10009EC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1000CB530() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000CB530();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10009ED68(uint64_t a1)
{
  v2 = sub_10009EE14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009EDA4(uint64_t a1)
{
  v2 = sub_10009EE14();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10009EE14()
{
  result = qword_1001219E8;
  if (!qword_1001219E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001219E8);
  }

  return result;
}

uint64_t sub_10009EE68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009EECC(uint64_t a1)
{
  v2 = type metadata accessor for NewsTimelineEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009EF28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10009EF84()
{
  result = qword_100121A08;
  if (!qword_100121A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121A08);
  }

  return result;
}

unint64_t sub_10009EFDC()
{
  result = qword_100121A10;
  if (!qword_100121A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121A10);
  }

  return result;
}

unint64_t sub_10009F034()
{
  result = qword_100121A18;
  if (!qword_100121A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121A18);
  }

  return result;
}

unint64_t sub_10009F08C()
{
  result = qword_100121A20;
  if (!qword_100121A20)
  {
    sub_1000195A0(&qword_100121A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121A20);
  }

  return result;
}

void *sub_10009F100()
{
  v1 = *(v0 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results);
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1000A2024();
  objc_autoreleasePoolPop(v2);
  v4 = [v1 sections];
  v5 = [v4 array];

  v6 = sub_1000CAED0();
  v7 = sub_10007B71C(v6);

  v8 = sub_10003E814(v7, v3);

  swift_bridgeObjectRelease_n();
  return v8;
}

unint64_t sub_10009F2EC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x52656C6269736976;
    v6 = 0x6E694B6B63617473;
    if (a1 != 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x49746E65746E6F63;
    if (a1 != 5)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x44497972746E65;
    v2 = 0x4473746C75736572;
    v3 = 0x666E496863746566;
    if (a1 != 3)
    {
      v3 = 0x6F4374756F79616CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000010;
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
}

uint64_t sub_10009F46C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10009F2EC(*a1);
  v5 = v4;
  if (v3 == sub_10009F2EC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000CB530();
  }

  return v8 & 1;
}

Swift::Int sub_10009F4F4()
{
  v1 = *v0;
  sub_1000CB5C0();
  sub_10009F2EC(v1);
  sub_1000CAD90();

  return sub_1000CB5F0();
}

uint64_t sub_10009F558()
{
  sub_10009F2EC(*v0);
  sub_1000CAD90();
}

Swift::Int sub_10009F5AC()
{
  v1 = *v0;
  sub_1000CB5C0();
  sub_10009F2EC(v1);
  sub_1000CAD90();

  return sub_1000CB5F0();
}

uint64_t sub_10009F60C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A5B0C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10009F63C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10009F2EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10009F684@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A5B0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10009F6B8(uint64_t a1)
{
  v2 = sub_1000A2FDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F6F4(uint64_t a1)
{
  v2 = sub_1000A2FDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10009F730(uint64_t a1)
{
  v2 = NTTodayResults.allItems.getter();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_17:
    v5 = sub_1000CB3A0();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = sub_1000CB2A0();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    v8 = [v7 isEqual:a1];
    swift_unknownObjectRelease();
    if (v8)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  v6 = -1;
LABEL_14:

  return v6;
}

uint64_t sub_10009F850(void *a1)
{
  v31 = a1;
  v2 = sub_1000C9390();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v1 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results) sections];
  v7 = [v6 array];

  v8 = sub_1000CAED0();
  v9 = sub_10007B71C(v8);

  if (v9 >> 62)
  {
    goto LABEL_38;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v12 = 0;
    v13 = v9 & 0xC000000000000001;
    v22 = (v9 + 32);
    v23 = v9 & 0xFFFFFFFFFFFFFF8;
    v27 = v9;
    v28 = v3 + 1;
    v24 = v9 & 0xC000000000000001;
    v25 = v11;
LABEL_4:
    if (!v13)
    {
      break;
    }

    v14 = sub_1000CB2A0();
    v15 = __OFADD__(v12, 1);
    v16 = v12 + 1;
    if (!v15)
    {
      goto LABEL_10;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    result = sub_1000CB3A0();
    v11 = result;
    if (!result)
    {
      goto LABEL_39;
    }
  }

  if (v12 >= *(v23 + 16))
  {
    __break(1u);
LABEL_41:
    __break(1u);
    return result;
  }

  v14 = *&v22[8 * v12];
  v15 = __OFADD__(v12, 1);
  v16 = v12 + 1;
  if (v15)
  {
    goto LABEL_36;
  }

LABEL_10:
  v26 = v16;
  v29 = v14;
  v3 = [v14 items];
  v17 = [v3 count];
  v37 = &_swiftEmptyArrayStorage;
  sub_1000CB310();
  sub_1000CB020();
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v30 = v3;
  if (v17)
  {
    v3 = sub_1000A3084(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
    do
    {
      result = sub_1000CB190();
      if (!v35)
      {
        goto LABEL_41;
      }

      sub_100027BB8(&v34, &v32);
      sub_100019558(&unk_10011E710);
      swift_dynamicCast();
      sub_10001E37C(&v34);
      sub_1000CB2F0();
      sub_1000CB320();
      sub_1000CB330();
      sub_1000CB300();
    }

    while (--v17);
  }

  sub_1000A3084(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    sub_1000CB190();
    if (!v33)
    {
      break;
    }

    sub_100050CF0(&v32, &v34);
    sub_100050CF0(&v34, &v32);
    sub_100019558(&unk_10011E710);
    swift_dynamicCast();
    v3 = v36;
    sub_1000CB2F0();
    sub_1000CB320();
    sub_1000CB330();
    sub_1000CB300();
  }

  (*v28)(v5, v2);
  sub_10007BCC0(&v32);
  v18 = v37;
  if ((v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
  {
    v19 = sub_1000CB3A0();
  }

  else
  {
    v19 = *(v37 + 16);
  }

  v9 = 0;
  while (v19 != v9)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v3 = sub_1000CB2A0();
      if (__OFADD__(v9, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v9 >= *(v18 + 16))
      {
        goto LABEL_35;
      }

      v3 = *(v18 + 8 * v9 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v9, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    v20 = [v31 isEqual:v3];
    swift_unknownObjectRelease();
    ++v9;
    if (v20)
    {

      return v9 - 1;
    }
  }

  v12 = v26;
  v9 = v27;
  v13 = v24;
  if (v26 != v25)
  {
    goto LABEL_4;
  }

LABEL_39:

  return -1;
}

uint64_t sub_10009FD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  v6 = a4(a3);
  swift_unknownObjectRelease();

  return v6;
}

unint64_t sub_10009FDB4(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results) sections];
  v4 = [v3 array];

  v5 = sub_1000CAED0();
  v6 = sub_10007B71C(v5);

  if (v6 >> 62)
  {
LABEL_17:
    v7 = sub_1000CB3A0();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_1000CB2A0();
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = [v9 isEqual:a1];

    if (v11)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_16;
    }
  }

  v8 = -1;
LABEL_14:

  return v8;
}

void *sub_10009FF60()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results) sections];
  v2 = [v1 array];

  v3 = sub_1000CAED0();
  v4 = sub_10007B71C(v3);

  v5 = objc_autoreleasePoolPush();
  sub_1000A2024();
  objc_autoreleasePoolPop(v5);
  sub_10001F934(0, &qword_10011ED50);
  sub_10001F934(0, &unk_100121850);
  sub_1000A5554();
  v18 = sub_1000CAEF0();

  if (v4 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000CB3A0())
  {
    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_1000CB2A0();
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v11 = v8;
        v12 = sub_1000CB370();

        if (!v12)
        {
          goto LABEL_4;
        }

        swift_dynamicCast();
        v13 = v19;
        if (!v19)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (!*(v18 + 16))
        {
          goto LABEL_4;
        }

        v14 = sub_10003DCA8(v8);
        if ((v15 & 1) == 0)
        {
          goto LABEL_4;
        }

        v13 = *(*(v18 + 56) + 8 * v14);
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      v16 = [v13 integerValue];

      if (v16 > 0)
      {
        sub_1000CB2F0();
        sub_1000CB320();
        sub_1000CB330();
        sub_1000CB300();
        goto LABEL_5;
      }

LABEL_4:

LABEL_5:
      ++v7;
      if (v10 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_24:

  return &_swiftEmptyArrayStorage;
}

id sub_1000A02D4(uint64_t a1)
{
  v33 = a1;
  v2 = sub_1000C9390();
  i = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v1 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results) sections];
  v7 = [v6 array];

  v8 = sub_1000CAED0();
  v9 = sub_10007B71C(v8);

  if (v9 >> 62)
  {
    goto LABEL_38;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    v14 = v9 + 32;
    v29 = v9;
    v30 = (i + 8);
    v25 = v9 & 0xFFFFFFFFFFFFFF8;
    v26 = v9 & 0xC000000000000001;
    v27 = v10;
    v24 = v9 + 32;
LABEL_4:
    if (v12)
    {
      break;
    }

    if (v11 < *(v13 + 16))
    {
      v15 = v11;
      v16 = *(v14 + 8 * v11);
      goto LABEL_7;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v10 = sub_1000CB3A0();
    if (!v10)
    {
      goto LABEL_39;
    }
  }

  v15 = v11;
  v16 = sub_1000CB2A0();
LABEL_7:
  v32 = v16;
  v17 = __OFADD__(v15, 1);
  i = v15 + 1;
  if (v17)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v28 = i;
  i = [v32 items];
  v18 = [i count];
  v38 = &_swiftEmptyArrayStorage;
  sub_1000CB310();
  sub_1000CB020();
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v31 = i;
  if (!v18)
  {
LABEL_13:
    sub_1000A3084(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
    while (1)
    {
      sub_1000CB190();
      if (!v35)
      {
        break;
      }

      sub_100050CF0(&v34, &v36);
      sub_100050CF0(&v36, &v34);
      sub_100019558(&unk_10011E710);
      swift_dynamicCast();
      sub_1000CB2F0();
      sub_1000CB320();
      sub_1000CB330();
      sub_1000CB300();
    }

    (*v30)(v5, v2);
    sub_10007BCC0(&v34);
    v20 = v38;
    if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
    {
      v9 = sub_1000CB3A0();
    }

    else
    {
      v9 = *(v38 + 16);
    }

    for (i = 0; v9 != i; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = sub_1000CB2A0();
        if (__OFADD__(i, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (i >= *(v20 + 16))
        {
          goto LABEL_34;
        }

        v21 = *(v20 + 8 * i + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(i, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      v22 = [v21 isEqual:v33];
      swift_unknownObjectRelease();
      if (v22)
      {

        return v32;
      }
    }

    v11 = v28;
    v9 = v29;
    v13 = v25;
    v12 = v26;
    v14 = v24;
    if (v28 != v27)
    {
      goto LABEL_4;
    }

LABEL_39:

    return 0;
  }

  sub_1000A3084(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    result = sub_1000CB190();
    if (!v37)
    {
      break;
    }

    sub_100027BB8(&v36, &v34);
    sub_100019558(&unk_10011E710);
    swift_dynamicCast();
    sub_10001E37C(&v36);
    sub_1000CB2F0();
    sub_1000CB320();
    sub_1000CB330();
    sub_1000CB300();
    if (!--v18)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000A0898(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results);
  v4 = objc_autoreleasePoolPush();
  v5 = sub_1000A2024();
  objc_autoreleasePoolPop(v4);
  v6 = [v3 sections];
  v7 = [v6 array];

  v8 = sub_1000CAED0();
  v9 = sub_10007B71C(v8);

  v10 = sub_10003E814(v9, v5);

  swift_bridgeObjectRelease_n();
  if (v10 >> 62)
  {
LABEL_16:
    v11 = sub_1000CB3A0();
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v12 = 0;
      v13 = v10 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = sub_1000CB2A0();
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v12 >= *(v13 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v14 = *(v10 + 8 * v12 + 32);
          swift_unknownObjectRetain();
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_13;
          }
        }

        if ([v14 itemType] == a1)
        {
          sub_1000CB2F0();
          sub_1000CB320();
          sub_1000CB330();
          sub_1000CB300();
          v13 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v12;
      }

      while (v15 != v11);
    }
  }

  return &_swiftEmptyArrayStorage;
}

id sub_1000A0B50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!*(a2 + 16) || (sub_10003DCA8(*a1), (v4 & 1) == 0))
  {
    v5 = &_swiftEmptyArrayStorage;
    if (&_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_4;
    }

LABEL_6:
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_7;
  }

  if (!(v5 >> 62))
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = sub_1000CB3A0();
LABEL_7:

  result = [objc_allocWithZone(NSNumber) initWithInteger:v6];
  *a3 = result;
  return result;
}

uint64_t sub_1000A0D58()
{

  v0 = NTTodayResults.allItems.getter();
  if (!(v0 >> 62))
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);

    return v1;
  }

  v1 = sub_1000CB3A0();

  if ((v1 & 0x8000000000000000) == 0)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A0F2C(void *a1)
{
  v3 = v1;
  v5 = sub_100019558(&qword_100121BE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v31 - v7;
  sub_10001E2E4(a1, a1[3]);
  sub_1000A2FDC();
  sub_1000CB630();
  LOBYTE(v36[0]) = 0;
  sub_1000C95A0();
  sub_1000A3084(&qword_10011E708, &type metadata accessor for Date);
  sub_1000CB4F0();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v36[0]) = 1;
  sub_1000CB4B0();
  v10 = objc_opt_self();
  v11 = *(v3 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results);
  *&v36[0] = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v36];
  v13 = *&v36[0];
  if (!v12)
  {
    v18 = v13;
    sub_1000C9340();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  v34 = v10;
  v14 = sub_1000C94B0();
  v16 = v15;

  *&v36[0] = v14;
  *(&v36[0] + 1) = v16;
  v35 = 2;
  v17 = sub_10001F870();
  sub_1000CB4F0();
  v31[1] = v17;
  v32 = v14;
  v33 = v16;
  v19 = *(v3 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_fetchInfo);
  *&v36[0] = 0;
  v20 = [v34 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:v36];
  v21 = *&v36[0];
  if (!v20)
  {
    v26 = v21;
    sub_1000C9340();

    swift_willThrow();
    sub_10001F774(v32, v33);
    return (*(v6 + 8))(v8, v5);
  }

  v22 = sub_1000C94B0();
  v24 = v23;

  *&v36[0] = v22;
  *(&v36[0] + 1) = v24;
  v35 = 3;
  sub_1000CB4F0();
  v25 = v32;
  v34 = v24;
  LOBYTE(v36[0]) = 4;
  type metadata accessor for LayoutContext();
  sub_1000A3084(&qword_100121BE8, type metadata accessor for LayoutContext);
  sub_1000CB4F0();
  v27 = *(v3 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentID + 8);
  *&v36[0] = *(v3 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentID);
  *(&v36[0] + 1) = v27;
  v35 = 5;

  sub_100019558(&unk_100121BF0);
  sub_1000A30CC();
  sub_1000CB4F0();

  LOBYTE(v36[0]) = 6;
  sub_1000CB4E0();
  v28 = *(v3 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_visibleRect + 32);
  v29 = *(v3 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_visibleRect + 16);
  v36[0] = *(v3 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_visibleRect);
  v36[1] = v29;
  v37 = v28;
  v35 = 7;
  sub_100019558(&qword_100121C00);
  sub_1000A3148();
  sub_1000CB4F0();
  v30 = v33;
  LOBYTE(v36[0]) = 8;
  sub_1000CB4E0();
  LOBYTE(v36[0]) = 9;
  sub_1000CB4E0();
  (*(v6 + 8))(v8, v5);
  sub_10001F774(v22, v34);
  return sub_10001F774(v25, v30);
}

void *sub_1000A155C(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v60 = v2;
  v61 = v5;
  v56 = type metadata accessor for LayoutContext();
  __chkstk_darwin(v56);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C95A0();
  v57 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100019558(&qword_100121B90);
  v58 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  sub_10001E2E4(a1, a1[3]);
  sub_1000A2FDC();
  v13 = v60;
  sub_1000CB610();
  if (v13)
  {
    goto LABEL_10;
  }

  v54 = v7;
  v55 = a1;
  v14 = v58;
  v60 = v1;
  LOBYTE(v62) = 0;
  sub_1000A3084(&unk_100121BA0, &type metadata accessor for Date);
  sub_1000CB480();
  v3 = v60;
  v15 = *(v57 + 32);
  v52 = v60 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentFetchDate;
  v15();
  LOBYTE(v62) = 1;
  v16 = sub_1000CB420();
  v53 = v8;
  v18 = 0x6E776F6E6B6E75;
  if (v17)
  {
    v18 = v16;
  }

  v19 = 0xE700000000000000;
  if (v17)
  {
    v19 = v17;
  }

  v20 = (v3 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_entryID);
  *v20 = v18;
  v20[1] = v19;
  v65 = 2;
  v21 = sub_10001F720();
  v59 = 0;
  sub_1000CB480();
  v49 = v21;
  v50 = v12;
  v51 = v10;
  v22 = v62;
  v23 = sub_10001F934(0, &unk_100121BB0);
  sub_10001F934(0, &qword_100121300);
  v24 = sub_1000CB070();
  v46 = v23;
  v48 = v22;
  v27 = v57;
  if (v24)
  {
    *(v3 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results) = v24;
    v65 = 3;
    v47 = v24;
    sub_1000CB480();
    v30 = v62;
    sub_10001F934(0, &qword_100121310);
    v49 = v30;
    v31 = sub_1000CB070();
    v46 = *(&v30 + 1);
    if (v31)
    {
      v45 = *(&v22 + 1);
      *(v3 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_fetchInfo) = v31;
      LOBYTE(v62) = 4;
      v33 = v31;
      sub_1000A3084(&qword_100121BD0, type metadata accessor for LayoutContext);
      v44 = v33;
      v34 = v54;
      sub_1000CB480();
      v36 = v44;
      sub_1000A5688(v34, v3 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_layoutContext, type metadata accessor for LayoutContext);
      LOBYTE(v62) = 5;
      v37 = sub_1000CB420();
      v38 = (v3 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentID);
      *v38 = v37;
      v38[1] = v39;
      LOBYTE(v62) = 6;
      *(v60 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_appearanceType) = sub_1000CB470();
      type metadata accessor for CGRect(0);
      v65 = 7;
      sub_1000A3084(&qword_100121BD8, type metadata accessor for CGRect);
      sub_1000CB440();
      v40 = v64;
      v41 = v60 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_visibleRect;
      v42 = v63;
      *v41 = v62;
      *(v41 + 1) = v42;
      v41[32] = v40;
      LOBYTE(v62) = 8;
      *(v60 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_stackKind) = sub_1000CB470();
      LOBYTE(v62) = 9;
      v43 = sub_1000CB470();
      sub_10001F774(v48, v45);
      sub_10001F774(v49, v46);

      (*(v14 + 8))(v50, v51);
      v3 = v60;
      *(v60 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_stackLocation) = v43;
      v25 = v55;
      goto LABEL_11;
    }

    sub_1000A3030();
    swift_allocError();
    *v35 = 4;
    swift_willThrow();
    sub_10001F774(v48, *(&v22 + 1));
    sub_10001F774(v49, v46);

    (*(v14 + 8))(v50, v51);
    v29 = 1;
  }

  else
  {
    sub_1000A3030();
    swift_allocError();
    *v28 = 3;
    swift_willThrow();
    sub_10001F774(v48, *(&v22 + 1));
    (*(v14 + 8))(v50, v22);
    v29 = 0;
  }

  v32 = v59;
  (*(v27 + 8))(v52, v53);
  if (!v32)
  {

    if (!v29)
    {
      goto LABEL_9;
    }

LABEL_13:

    goto LABEL_9;
  }

  if (v29)
  {
    goto LABEL_13;
  }

LABEL_9:
  a1 = v55;
LABEL_10:
  swift_deallocPartialClassInstance();
  v25 = a1;
LABEL_11:
  sub_10001E37C(v25);
  return v3;
}

void *sub_1000A2024()
{
  v1 = sub_1000C9390();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_visibleRect);
  if (*(v0 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_visibleRect + 32))
  {
LABEL_2:

    return sub_100051348(&_swiftEmptyArrayStorage);
  }

  v8 = v5[2];
  v7 = v5[3];
  v9 = *v5;
  v10 = v5[1];
  v11 = *(v0 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results);
  v83.origin.x = *v5;
  v83.origin.y = v10;
  v83.size.width = v8;
  v83.size.height = v7;
  MinX = CGRectGetMinX(v83);
  v13 = v0 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_layoutContext;
  v14 = *(v13 + 24);
  v15 = ceil(MinX * v14);
  if (v14 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v13 + 24);
  }

  v84.origin.x = v9;
  v84.origin.y = v10;
  v84.size.width = v8;
  v84.size.height = v7;
  v75 = v7;
  MinY = CGRectGetMinY(v84);
  v18 = *(v13 + 32);
  v19 = ceil(MinY * v18);
  if (v18 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = *(v13 + 32);
  }

  v85.origin.x = v9;
  v85.origin.y = v10;
  v85.size.width = v8;
  v85.size.height = v7;
  v21 = ceil(v14 * CGRectGetWidth(v85));
  if (v14 >= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v14;
  }

  v86.origin.x = v9;
  v86.origin.y = v10;
  v86.size.width = v8;
  v86.size.height = v75;
  v23 = ceil(v18 * CGRectGetHeight(v86));
  if (v18 >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v18;
  }

  if (*(v13 + 16) == 1)
  {
    v89.origin.x = 0.0;
    v89.origin.y = 0.0;
    v87.origin.x = v16;
    v87.origin.y = v20;
    v87.size.width = v22;
    v87.size.height = v24;
    v89.size.width = v14;
    v89.size.height = v18;
    if (!CGRectContainsRect(v87, v89))
    {
      goto LABEL_2;
    }

    v25 = [v11 sections];
    v26 = [v25 array];

    v27 = sub_1000CAED0();
    sub_10007B71C(v27);

    sub_10001F934(0, &qword_10011ED50);
    sub_100019558(&qword_10011ED40);
    sub_1000A5554();
    v28 = COERCE_DOUBLE(sub_1000CAEF0());

    return *&v28;
  }

  v29 = sub_100078C80();
  [v29 nt_scaledValueForValue:1.0];
  v75 = v30;

  v74 = *v13;
  sub_100079038();
  v73 = v31;
  sub_100079BA0();
  *&v72 = v32;
  v33 = *(v13 + *(type metadata accessor for LayoutContext() + 40));
  sub_100079BA0();
  v71 = v34;
  sub_100079038();
  v70 = v35;
  sub_100079038();
  v67 = v36;
  sub_100079BA0();
  v38 = v37;
  v39 = sub_100079848();
  sub_100079038();
  *&v66 = v40;
  v68 = *(v13 + 8);
  sub_100079038();
  v64 = v41;
  v42 = [v11 sections];
  v43 = [v42 array];

  v44 = sub_1000CAED0();
  v45 = COERCE_DOUBLE(sub_10007B71C(v44));

  v46 = v45;
  if (!(*&v45 >> 62))
  {
    v47 = *((*&v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_22;
    }

LABEL_62:

    v28 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
    return *&v28;
  }

LABEL_61:
  v62 = v46;
  v47 = sub_1000CB3A0();
  v46 = v62;
  if (!v47)
  {
    goto LABEL_62;
  }

LABEL_22:
  v48 = 0.0;
  v49 = v73 + *&v72 * (v39 * ((v33 * v71 - (*&v70 + *&v70) + (v33 + v33) * v67) / v38));
  v71 = v75 * 12.0 + v74 + 6.0;
  v38 = *&v66 + v49;
  v72 = *&v46 & 0xC000000000000001;
  v66 = *&v46 & 0xFFFFFFFFFFFFFF8;
  v67 = v46;
  v65 = *&v46 + 32;
  v70 = (v2 + 8);
  v28 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v68 = v68 - v64;
  v39 = 0.0;
  v69 = v47;
  while (1)
  {
    if (*&v72 == 0.0)
    {
      if (*&v48 >= *(v66 + 16))
      {
        goto LABEL_60;
      }

      *&v46 = *(v65 + 8 * *&v48);
      v53 = __OFADD__(*&v48, 1);
      *&v54 = *&v48 + 1;
      if (v53)
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    else
    {
      v46 = COERCE_DOUBLE(sub_1000CB2A0());
      v53 = __OFADD__(*&v48, 1);
      *&v54 = *&v48 + 1;
      if (v53)
      {
        goto LABEL_57;
      }
    }

    v81 = &_swiftEmptyArrayStorage;
    v75 = v46;
    v55 = [*&v46 items];
    v2 = [v55 count];
    v80 = &_swiftEmptyArrayStorage;
    sub_1000CB310();
    v46 = COERCE_DOUBLE(sub_1000CB020());
    if (v2 < 0)
    {
      goto LABEL_58;
    }

    v73 = v28;
    v74 = v54;
    if (v2)
    {
      break;
    }

LABEL_36:
    v2 = sub_1000A3084(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
    sub_1000CB190();
    while (v77)
    {
      sub_100050CF0(&v76, &v78);
      sub_100050CF0(&v78, &v76);
      sub_100019558(&unk_10011E710);
      swift_dynamicCast();
      sub_1000CB2F0();
      sub_1000CB320();
      sub_1000CB330();
      sub_1000CB300();
      sub_1000CB190();
    }

    (*v70)(v4, v1);
    v46 = COERCE_DOUBLE(sub_10007BCC0(&v76));
    v56 = v80;
    if ((v80 & 0x8000000000000000) != 0 || (v80 & 0x4000000000000000) != 0)
    {
      v46 = COERCE_DOUBLE(sub_1000CB3A0());
      v57 = *&v46;
    }

    else
    {
      v57 = *(v80 + 16);
    }

    v39 = v71 + v39;
    if (v57)
    {
      if (v57 < 1)
      {
        goto LABEL_59;
      }

      v58 = 0;
      v50 = &_swiftEmptyArrayStorage;
      do
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v59 = sub_1000CB2A0();
        }

        else
        {
          v59 = *(v56 + 8 * v58 + 32);
          swift_unknownObjectRetain();
        }

        v60 = [v59 itemType];
        v61 = 0.0;
        if (!v60)
        {
          v61 = 1.0;
        }

        v33 = v38 * v61;
        v90.origin.x = 0.0;
        v88.origin.x = v16;
        v88.origin.y = v20;
        v88.size.width = v22;
        v88.size.height = v24;
        v90.origin.y = v39;
        v90.size.width = v14;
        v90.size.height = v33;
        if (CGRectContainsRect(v88, v90))
        {
          swift_unknownObjectRetain();
          sub_1000CAEB0();
          if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1000CAF10();
          }

          sub_1000CAF40();
          swift_unknownObjectRelease();
          v50 = v81;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v58;
        v39 = v39 + v33;
      }

      while (v57 != v58);
    }

    else
    {
      v50 = &_swiftEmptyArrayStorage;
    }

    v51 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v78 = v51;
    v2 = *&v75;
    sub_1000A4884(v50, *&v75, isUniquelyReferenced_nonNull_native);

    v28 = *&v78;
    v39 = v68 + v39;
    v48 = v74;
    if (*&v74 == v69)
    {

      return *&v28;
    }
  }

  sub_1000A3084(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    result = sub_1000CB190();
    if (!v79)
    {
      break;
    }

    sub_100027BB8(&v78, &v76);
    sub_100019558(&unk_10011E710);
    swift_dynamicCast();
    sub_10001E37C(&v78);
    sub_1000CB2F0();
    sub_1000CB320();
    sub_1000CB330();
    sub_1000CB300();
    if (!--v2)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void sub_1000A29E0(id *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000C9390();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*a1 items];
  v9 = [v8 count];
  v18 = &_swiftEmptyArrayStorage;
  sub_1000CB310();
  sub_1000CB020();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v5;
  v13 = a2;
  if (v9)
  {
    sub_1000A3084(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
    do
    {
      sub_1000CB190();
      if (!v17)
      {
        goto LABEL_10;
      }

      sub_100027BB8(&v16, &v14);
      sub_100019558(&unk_10011E710);
      swift_dynamicCast();
      sub_10001E37C(&v16);
      sub_1000CB2F0();
      sub_1000CB320();
      sub_1000CB330();
      sub_1000CB300();
    }

    while (--v9);
  }

  sub_1000A3084(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
  sub_1000CB190();
  while (v15)
  {
    sub_100050CF0(&v14, &v16);
    sub_100027BB8(&v16, &v14);
    sub_100019558(&unk_10011E710);
    swift_dynamicCast();
    sub_10001E37C(&v16);
    sub_1000CB2F0();
    sub_1000CB320();
    sub_1000CB330();
    sub_1000CB300();
    sub_1000CB190();
  }

  (*(v12 + 8))(v7, v4);
  sub_10007BCC0(&v14);

  *v13 = v18;
}

uint64_t sub_1000A2D14()
{
  v1 = OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentFetchDate;
  v2 = sub_1000C95A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100079F78(v0 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_layoutContext);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrackableWidgetState()
{
  result = qword_100121AB8;
  if (!qword_100121AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A2E5C()
{
  result = sub_1000C95A0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LayoutContext();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_1000A2F60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1000A155C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1000A2FDC()
{
  result = qword_100121B98;
  if (!qword_100121B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121B98);
  }

  return result;
}

unint64_t sub_1000A3030()
{
  result = qword_100121BC0;
  if (!qword_100121BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121BC0);
  }

  return result;
}

uint64_t sub_1000A3084(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000A30CC()
{
  result = qword_1001213A0;
  if (!qword_1001213A0)
  {
    sub_1000195A0(&unk_100121BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001213A0);
  }

  return result;
}

unint64_t sub_1000A3148()
{
  result = qword_100121C08;
  if (!qword_100121C08)
  {
    sub_1000195A0(&qword_100121C00);
    sub_1000A3084(&unk_100121C10, type metadata accessor for CGRect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121C08);
  }

  return result;
}

uint64_t sub_1000A31FC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1000CB360();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100019558(&unk_100121C40);
  v39 = a2;
  result = sub_1000CB3C0();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_100050CF0((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_100027BB8(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_1000CAC20();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_100050CF0(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000A359C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100019558(&qword_100121C50);
  v33 = a2;
  result = sub_1000CB3C0();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_1000CB5C0();
      sub_1000CAD90();
      result = sub_1000CB5F0();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1000A3848(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100019558(&qword_100121C58);
  v35 = a2;
  result = sub_1000CB3C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1000CB5C0();
      sub_1000CAD90();
      result = sub_1000CB5F0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000A3AEC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1000C9480();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageStore.Image(0);
  v58 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ImageStore.Key(0);
  v57 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = *v2;
  sub_100019558(&unk_100121C30);
  v59 = a2;
  result = sub_1000CB3C0();
  v17 = result;
  if (*(v15 + 16))
  {
    v55 = v5;
    v48 = v2;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v54 = (v6 + 48);
    v50 = (v6 + 32);
    v49 = (v6 + 8);
    v24 = result + 64;
    v53 = v15;
    v25 = v52;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v61 = *(v57 + 72);
      v32 = v31 + v61 * v30;
      if (v59)
      {
        sub_1000A5688(v32, v14, type metadata accessor for ImageStore.Key);
        v33 = *(v15 + 56);
        v60 = *(v58 + 72);
        sub_1000A5688(v33 + v60 * v30, v25, type metadata accessor for ImageStore.Image);
      }

      else
      {
        sub_1000A5620(v32, v14, type metadata accessor for ImageStore.Key);
        v34 = *(v15 + 56);
        v60 = *(v58 + 72);
        sub_1000A5620(v34 + v60 * v30, v25, type metadata accessor for ImageStore.Image);
      }

      sub_1000CB5C0();
      v35 = v14;
      v36 = v56;
      sub_1000A5620(v14, v56, type metadata accessor for ImageStore.Key);
      v37 = v55;
      if ((*v54)(v36, 1, v55) == 1)
      {
        sub_1000CB5D0(1uLL);
      }

      else
      {
        v38 = v51;
        (*v50)(v51, v36, v37);
        sub_1000CB5D0(0);
        sub_1000A3084(&qword_1001205F0, &type metadata accessor for URL);
        sub_1000CAC30();
        v39 = v38;
        v25 = v52;
        (*v49)(v39, v37);
      }

      result = sub_1000CB5F0();
      v40 = -1 << *(v17 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      v14 = v35;
      if (((-1 << v41) & ~*(v24 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v24 + 8 * v42);
          if (v46 != -1)
          {
            v26 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v41) & ~*(v24 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_1000A5688(v35, *(v17 + 48) + v61 * v26, type metadata accessor for ImageStore.Key);
      result = sub_1000A5688(v25, *(v17 + 56) + v60 * v26, type metadata accessor for ImageStore.Image);
      ++*(v17 + 16);
      v15 = v53;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v59 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_37;
    }

    v47 = 1 << *(v15 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero(v19, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v47;
    }

    *(v15 + 16) = 0;
  }

LABEL_37:
  *v3 = v17;
  return result;
}

uint64_t sub_1000A4108(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100019558(&unk_10011F9A0);
  result = sub_1000CB3C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1000CB140(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_1000A4378(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1000CB360();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10003D858(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000A4BAC();
      goto LABEL_7;
    }

    sub_1000A31FC(v17, a3 & 1);
    v23 = sub_10003D858(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000A4A00(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1000CB560();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  sub_10001E37C(v21);

  return sub_100050CF0(a1, v21);
}

unint64_t sub_1000A4550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_10003D8BC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000A359C(v18, a5 & 1);
      result = sub_10003D8BC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1000CB560();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1000A4E30();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * result);
    *v24 = a1;
    v24[1] = a2;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = (v23[6] + 16 * result);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * result);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

uint64_t sub_1000A46C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_10003D9C8(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1000A5104();
      goto LABEL_7;
    }

    sub_1000A3AEC(v16, a3 & 1);
    v23 = sub_10003D9C8(a2);
    if ((v17 & 1) == (v24 & 1))
    {
      v13 = v23;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000A5620(a2, v10, type metadata accessor for ImageStore.Key);
      return sub_1000A4AC0(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1000CB560();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = v20 + *(*(type metadata accessor for ImageStore.Image(0) - 8) + 72) * v13;

  return sub_1000A55BC(a1, v21);
}

id sub_1000A4884(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10003DCA8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000A4108(v13, a3 & 1);
      v8 = sub_10003DCA8(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_10001F934(0, &qword_10011ED50);
        result = sub_1000CB560();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1000A53F0();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

_OWORD *sub_1000A4A00(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1000CB360();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_100050CF0(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1000A4AC0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ImageStore.Key(0);
  sub_1000A5688(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ImageStore.Key);
  v10 = a4[7];
  v11 = type metadata accessor for ImageStore.Image(0);
  result = sub_1000A5688(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ImageStore.Image);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_1000A4BAC()
{
  v1 = v0;
  v26 = sub_1000CB360();
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019558(&unk_100121C40);
  v3 = *v0;
  v4 = sub_1000CB3B0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_100027BB8(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_100050CF0(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1000A4E30()
{
  v1 = v0;
  sub_100019558(&qword_100121C50);
  v2 = *v0;
  v3 = sub_1000CB3B0();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

id sub_1000A4F98()
{
  v1 = v0;
  sub_100019558(&qword_100121C58);
  v2 = *v0;
  v3 = sub_1000CB3B0();
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

        result = v20;
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

void *sub_1000A5104()
{
  v1 = v0;
  v2 = type metadata accessor for ImageStore.Image(0);
  v29 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageStore.Key(0);
  v28 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019558(&unk_100121C30);
  v8 = *v0;
  v9 = sub_1000CB3B0();
  v10 = v9;
  if (*(v8 + 16))
  {
    v27 = v1;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 64);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = *(v28 + 72) * v23;
        sub_1000A5620(*(v8 + 48) + v24, v7, type metadata accessor for ImageStore.Key);
        v25 = *(v29 + 72) * v23;
        sub_1000A5620(*(v8 + 56) + v25, v4, type metadata accessor for ImageStore.Image);
        sub_1000A5688(v7, *(v10 + 48) + v24, type metadata accessor for ImageStore.Key);
        result = sub_1000A5688(v4, *(v10 + 56) + v25, type metadata accessor for ImageStore.Image);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v27;
        goto LABEL_18;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_1000A53F0()
{
  v1 = v0;
  sub_100019558(&unk_10011F9A0);
  v2 = *v0;
  v3 = sub_1000CB3B0();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

unint64_t sub_1000A5554()
{
  result = qword_100121C20;
  if (!qword_100121C20)
  {
    sub_10001F934(255, &qword_10011ED50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121C20);
  }

  return result;
}

uint64_t sub_1000A55BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageStore.Image(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A5620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A5688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for TrackableWidgetState.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackableWidgetState.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrackableWidgetState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackableWidgetState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000A59B0()
{
  result = qword_100121C60;
  if (!qword_100121C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121C60);
  }

  return result;
}

unint64_t sub_1000A5A08()
{
  result = qword_100121C68;
  if (!qword_100121C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121C68);
  }

  return result;
}

unint64_t sub_1000A5A60()
{
  result = qword_100121C70;
  if (!qword_100121C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121C70);
  }

  return result;
}

unint64_t sub_1000A5AB8()
{
  result = qword_100121C78;
  if (!qword_100121C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121C78);
  }

  return result;
}

uint64_t sub_1000A5B0C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10010C4D8;
  v6._object = a2;
  v4 = sub_1000CB3F0(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000A5B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Section();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000A5C60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Section();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for SectionHeaderView()
{
  result = qword_100121CD8;
  if (!qword_100121CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A5D68()
{
  result = type metadata accessor for Section();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000A5DDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A5E24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A5E90@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100019558(&qword_100121D10);
  __chkstk_darwin(v3);
  v5 = (v16 - v4);
  v6 = [*(v1 + 8) name];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000CAD00();
    v10 = v9;

    *v5 = sub_1000CA770();
    v5[1] = v11;
    v12 = sub_100019558(&qword_100121D18);
    sub_1000A600C(v1, v8, v10, v5 + *(v12 + 44));

    type metadata accessor for SectionHeaderView();
    sub_1000CA7A0();
    sub_1000C9CC0();
    v13 = (v5 + *(v3 + 36));
    v14 = v16[1];
    *v13 = v16[0];
    v13[1] = v14;
    v13[2] = v16[2];
    sub_1000A832C();
  }

  result = sub_1000CA700();
  *a1 = result;
  return result;
}

uint64_t sub_1000A600C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a4;
  v6 = sub_100019558(&qword_100121D38);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_100019558(&qword_100121D40);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  *v17 = sub_1000CA0E0();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = &v17[*(sub_100019558(&qword_100121D48) + 44)];
  *v11 = sub_1000C9FC0();
  *(v11 + 1) = 0x4008000000000000;
  v11[16] = 0;
  v19 = sub_100019558(&qword_100121D50);
  sub_1000A6A00(a1, a2, v25, &v11[*(v19 + 44)]);
  sub_10002DFB4(v11, v9, &qword_100121D38);
  *v18 = 0;
  v18[8] = 1;
  v20 = sub_100019558(&qword_100121D58);
  sub_10002DFB4(v9, &v18[*(v20 + 48)], &qword_100121D38);
  sub_100031844(v11, &qword_100121D38);
  sub_100031844(v9, &qword_100121D38);
  v21 = sub_1000A62C4();
  LOBYTE(a1) = sub_1000CA250();
  sub_10002DFB4(v17, v15, &qword_100121D40);
  v22 = v26;
  sub_10002DFB4(v15, v26, &qword_100121D40);
  v23 = v22 + *(sub_100019558(&qword_100121D60) + 48);
  *v23 = v21;
  *(v23 + 8) = a1;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 1;

  sub_100031844(v17, &qword_100121D40);

  return sub_100031844(v15, &qword_100121D40);
}

id sub_1000A62C4()
{
  v1 = sub_100019558(&qword_100121D68);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v37 = &v32 - v3;
  v38 = sub_100019558(&qword_100121D70);
  __chkstk_darwin(v38);
  v36 = &v32 - v4;
  v5 = sub_1000CA550();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CA640();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24) == 1)
  {
    if (FCIsWidgetDebugInspectionEnabled())
    {

      return sub_1000A7B58();
    }

    else
    {
      v32 = v2;
      v33 = v1;
      if (qword_10011CF58 != -1)
      {
        swift_once();
      }

      v14 = qword_100134748;
      sub_1000CA620();
      (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
      v35 = sub_1000CA6A0();

      (*(v10 + 8))(v12, v9);
      v15 = sub_1000CACD0();
      v16 = objc_opt_self();
      v17 = [v16 colorWithHexString:v15];

      [v17 red];
      [v17 green];
      [v17 blue];
      v18 = enum case for Color.RGBColorSpace.sRGB(_:);
      v19 = *(v6 + 104);
      v19(v8, enum case for Color.RGBColorSpace.sRGB(_:), v5);
      v34 = sub_1000CA600();

      v20 = sub_1000CACD0();
      v21 = [v16 colorWithHexString:v20];

      [v21 red];
      [v21 green];
      [v21 blue];
      v19(v8, v18, v5);
      v22 = sub_1000CA600();

      sub_100019558(&qword_10011F238);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1000D3D20;
      *(v23 + 32) = v34;
      *(v23 + 40) = v22;

      sub_1000CA750();
      sub_1000CA7B0();
      sub_1000CA7C0();
      sub_1000C9D20();
      v24 = v43;
      LOBYTE(v42[0]) = 0;
      type metadata accessor for SectionHeaderView();
      v25 = v35;

      sub_1000CA7A0();
      sub_1000C9CC0();
      *&v41[38] = v48;
      *&v41[22] = v47;
      *&v41[6] = v46;
      *&v39[0] = v24;
      *(v39 + 8) = v44;
      *(&v39[1] + 8) = v45;
      *(&v39[2] + 1) = v25;
      *&v40[0] = 0x3FF0000000000000;
      WORD4(v40[0]) = 0;
      *(v40 + 10) = *v41;
      *(&v40[1] + 10) = *&v41[16];
      *(&v40[2] + 10) = *&v41[32];
      *(&v40[3] + 1) = *(&v48 + 1);
      v26 = sub_100019558(&qword_100121D78);
      v27 = sub_1000A83E4();
      v28 = v37;
      sub_1000CA470();
      v42[3] = v40[0];
      v42[4] = v40[1];
      v42[5] = v40[2];
      v42[6] = v40[3];
      v42[0] = v39[0];
      v42[1] = v39[1];
      v42[2] = v39[2];
      sub_100031844(v42, &qword_100121D78);
      *&v39[0] = v26;
      *(&v39[0] + 1) = v27;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v30 = v33;
      sub_1000CA420();
      (*(v32 + 8))(v28, v30);
      *&v39[0] = v30;
      *(&v39[0] + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v31 = sub_1000CA700();

      return v31;
    }
  }

  else
  {

    return sub_1000CA700();
  }
}

uint64_t sub_1000A6A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a2;
  v102 = a3;
  v106 = a4;
  v94 = sub_1000CA3B0();
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1000CA3D0();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1000CA3F0();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CA030();
  __chkstk_darwin(v8 - 8);
  v85 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100019558(&qword_10011E850);
  __chkstk_darwin(v10 - 8);
  v103 = &v79 - v11;
  v108 = sub_1000C95A0();
  v105 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100019558(&qword_100121DE8);
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v79 - v13;
  v100 = sub_100019558(&qword_100121DF0);
  __chkstk_darwin(v100);
  v83 = &v79 - v14;
  v98 = sub_100019558(&qword_100121DF8);
  __chkstk_darwin(v98);
  v99 = &v79 - v15;
  v80 = sub_1000CA0A0();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100019558(&qword_100121E00);
  __chkstk_darwin(v95);
  v19 = &v79 - v18;
  v97 = sub_100019558(&qword_100121E08);
  v20 = __chkstk_darwin(v97);
  v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v79 - v23;
  v25 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v25 - 8);
  v27 = &v79 - v26;
  v28 = sub_1000C9480();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v79 - v33;
  v35 = sub_100019558(&qword_100121E10);
  v36 = __chkstk_darwin(v35 - 8);
  v104 = &v79 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v109 = &v79 - v38;
  v96 = type metadata accessor for Section();
  sub_10002DFB4(a1 + *(v96 + 32), v27, &unk_10011E590);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_100031844(v27, &unk_10011E590);
    v39 = sub_10002C5EC();
    v41 = v101;
    v40 = v102;
    sub_1000A7870(v101, v102, v39, v19);

    v110 = v41;
    v111 = v40;
    sub_1000A8648();
    sub_100027B64();
    sub_1000CA4B0();
    sub_100031844(v19, &qword_100121E00);
    sub_1000CA080();
    sub_1000C9D70();
    (*(v79 + 8))(v17, v80);
    sub_100031844(v22, &qword_100121E08);
    sub_10002DFB4(v24, v99, &qword_100121E08);
    swift_storeEnumTagMultiPayload();
    sub_1000A8780();
    sub_1000A8890();
    sub_1000CA1B0();
    sub_100031844(v24, &qword_100121E08);
  }

  else
  {
    (*(v29 + 32))(v34, v27, v28);
    v42 = (*(v29 + 16))(v32, v34, v28);
    __chkstk_darwin(v42);
    v43 = a1;
    v45 = v101;
    v44 = v102;
    *(&v79 - 4) = a1;
    *(&v79 - 3) = v45;
    v77 = v44;
    sub_1000A8648();
    v46 = v81;
    sub_1000CA300();
    v110 = v45;
    v111 = v44;
    sub_10001B1BC(&qword_100121E40, &qword_100121DE8);
    sub_100027B64();
    v47 = v83;
    v48 = v84;
    sub_1000CA4B0();
    (*(v82 + 8))(v46, v48);
    sub_10002DFB4(v47, v99, &qword_100121DF0);
    swift_storeEnumTagMultiPayload();
    sub_1000A8780();
    sub_1000A8890();
    sub_1000CA1B0();
    sub_100031844(v47, &qword_100121DF0);
    (*(v29 + 8))(v34, v28);
    a1 = v43;
  }

  v49 = v103;
  sub_10002DFB4(a1 + *(v96 + 36), v103, &qword_10011E850);
  v50 = v105;
  v51 = v108;
  if ((*(v105 + 48))(v49, 1, v108) == 1)
  {
    sub_100031844(v49, &qword_10011E850);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v102 = a1;
    (*(v50 + 32))(v107, v49, v51);
    sub_1000CA020();
    v112._countAndFlagsBits = 40;
    v112._object = 0xE100000000000000;
    v56 = v50;
    sub_1000CA010(v112);
    (*(v92 + 104))(v91, enum case for Text.DateStyle.UnitsConfiguration.Style.brief(_:), v94);
    v57 = v87;
    sub_1000CA3C0();
    v58 = v86;
    sub_1000CA3E0();
    (*(v90 + 8))(v57, v93);
    sub_1000C9FF0();
    (*(v88 + 8))(v58, v89);
    v113._countAndFlagsBits = 41;
    v113._object = 0xE100000000000000;
    sub_1000CA010(v113);
    sub_1000CA050();
    if (qword_10011CFA0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v59 = static NSBundle.newsToday2;
    v78 = 256;
    v77 = 0;
    v60 = sub_1000CA400();
    v62 = v61;
    v64 = v63;
    sub_1000CA5F0();
    v52 = sub_1000CA340();
    v53 = v65;
    v67 = v66;
    v55 = v68;

    sub_100025894(v60, v62, v64 & 1);

    (*(v56 + 8))(v107, v108);
    v54 = v67 & 1;
    sub_100048B18(v52, v53, v67 & 1);

    a1 = v102;
  }

  v69 = *(a1 + *(type metadata accessor for SectionHeaderView() + 20));
  v70 = v109;
  v71 = v104;
  sub_10002DFB4(v109, v104, &qword_100121E10);
  v72 = v106;
  sub_10002DFB4(v71, v106, &qword_100121E10);
  v73 = sub_100019558(&qword_100121E50);
  v74 = (v72 + *(v73 + 48));
  *v74 = v52;
  v74[1] = v53;
  v74[2] = v54;
  v74[3] = v55;
  v75 = v72 + *(v73 + 64);
  sub_1000A891C(v52, v53, v54, v55);
  sub_1000A8960(v52, v53, v54, v55);
  *v75 = v69;
  *(v75 + 8) = 0;
  sub_100031844(v70, &qword_100121E10);
  sub_1000A8960(v52, v53, v54, v55);
  return sub_100031844(v71, &qword_100121E10);
}

uint64_t sub_1000A7804@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10002C5EC();
  sub_1000A7870(a1, a2, v6, a3);
}

uint64_t sub_1000A7870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v33 = a4;
  v31 = sub_100019558(&qword_100121E20);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v30 - v7;
  v9 = *(v4 + *(type metadata accessor for SectionHeaderView() + 20) + 16);
  sub_1000CA2F0();
  *&v41[0] = a1;
  *(&v41[0] + 1) = a2;
  sub_100027B64();

  v10 = sub_1000CA410();
  v12 = v11;
  LOBYTE(a1) = v13;

  v14 = sub_1000CA380();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_100025894(v10, v12, a1 & 1);

  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  v40 = v18 & 1;
  v39 = 0;
  *&v34 = v14;
  *(&v34 + 1) = v16;
  LOBYTE(v35) = v18 & 1;
  *(&v35 + 1) = v20;
  *&v36 = KeyPath;
  *(&v36 + 1) = 1;
  LOBYTE(v37) = 0;
  *(&v37 + 1) = v22;
  v38 = v30;

  v23 = sub_100019558(&qword_10011FEB8);
  v24 = sub_100059F10();
  sub_1000CA420();
  v41[2] = v36;
  v41[3] = v37;
  v42 = v38;
  v41[0] = v34;
  v41[1] = v35;
  sub_100031844(v41, &qword_10011FEB8);
  *&v34 = v23;
  *(&v34 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v33;
  v26 = v31;
  sub_1000CA470();

  (*(v32 + 8))(v8, v26);
  v27 = swift_getKeyPath();
  result = sub_100019558(&qword_100121E00);
  v29 = (v25 + *(result + 36));
  *v29 = v27;
  v29[1] = 0x3FE8000000000000;
  return result;
}

id sub_1000A7B58()
{
  v29 = sub_100019558(&qword_100121D88);
  __chkstk_darwin(v29);
  v0 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v0 - 8);
  v2 = &v26 - v1;
  v3 = sub_1000C9480();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v26 - v9;
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  result = FCURLForWidgetDebugLogs();
  if (result)
  {
    v14 = result;
    sub_1000C9440();

    v15 = sub_1000C9450();
    v17 = v16;
    v27 = *(v4 + 8);
    v27(v12, v3);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_1000CB280(37);

    v30 = 0xD000000000000023;
    v31 = 0x80000001000E5A90;
    v32._countAndFlagsBits = v15;
    v32._object = v17;
    sub_1000CADD0(v32);
    sub_1000C9460();

    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_100031844(v2, &unk_10011E590);
      sub_1000CB040();
      sub_100019558(&unk_10011E820);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1000D3410;
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_100024C50();
      *(v18 + 32) = v15;
      *(v18 + 40) = v17;
      sub_100024CA4();
      v19 = sub_1000CB160();
      sub_1000C9BE0();

      return sub_1000CA700();
    }

    else
    {

      (*(v4 + 32))(v10, v2, v3);
      v20 = (*(v4 + 16))(v7, v10, v3);
      __chkstk_darwin(v20);
      *(&v26 - 2) = v28;
      sub_100019558(&qword_100121D90);
      v21 = sub_1000195A0(&qword_100121D98);
      v22 = sub_1000195A0(&qword_100121DA0);
      v23 = sub_1000A8478();
      v30 = v22;
      v31 = v23;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v30 = v21;
      v31 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_1000CA300();
      sub_10001B1BC(&qword_100121DE0, &qword_100121D88);
      v25 = sub_1000CA700();
      v27(v10, v3);
      return v25;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A8028@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_1000CA640();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100019558(&qword_100121D98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  sub_1000CA630();
  (*(v2 + 104))(v4, enum case for Image.ResizingMode.stretch(_:), v1);
  v9 = sub_1000CA6A0();

  (*(v2 + 8))(v4, v1);
  v10 = sub_1000CA5C0();
  type metadata accessor for SectionHeaderView();
  sub_1000CA7A0();
  sub_1000C9CC0();
  *&v17[38] = v21;
  *&v17[22] = v20;
  *&v17[6] = v19;
  *(v16 + 10) = *v17;
  v18 = 0;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  *&v16[0] = 0x3FF0000000000000;
  WORD4(v16[0]) = 0;
  *(&v16[1] + 10) = *&v17[16];
  *(&v16[2] + 10) = *&v17[32];
  *(&v16[3] + 1) = *(&v21 + 1);
  v11 = sub_100019558(&qword_100121DA0);
  v12 = sub_1000A8478();
  sub_1000CA470();
  v22[2] = v16[1];
  v22[3] = v16[2];
  v22[4] = v16[3];
  v22[0] = v15;
  v22[1] = v16[0];
  sub_100031844(v22, &qword_100121DA0);
  *&v15 = v11;
  *(&v15 + 1) = v12;
  swift_getOpaqueTypeConformance2();
  sub_1000CA420();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000A832C()
{
  result = qword_100121D20;
  if (!qword_100121D20)
  {
    sub_1000195A0(&qword_100121D10);
    sub_10001B1BC(&qword_100121D28, &qword_100121D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121D20);
  }

  return result;
}

unint64_t sub_1000A83E4()
{
  result = qword_100121D80;
  if (!qword_100121D80)
  {
    sub_1000195A0(&qword_100121D78);
    sub_10004891C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121D80);
  }

  return result;
}

unint64_t sub_1000A8478()
{
  result = qword_100121DA8;
  if (!qword_100121DA8)
  {
    sub_1000195A0(&qword_100121DA0);
    sub_1000A8504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121DA8);
  }

  return result;
}

unint64_t sub_1000A8504()
{
  result = qword_100121DB0;
  if (!qword_100121DB0)
  {
    sub_1000195A0(&qword_100121DB8);
    sub_1000A8590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121DB0);
  }

  return result;
}

unint64_t sub_1000A8590()
{
  result = qword_100121DC0;
  if (!qword_100121DC0)
  {
    sub_1000195A0(&qword_100121DC8);
    sub_10001B1BC(&qword_100121DD0, &qword_100121DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121DC0);
  }

  return result;
}

unint64_t sub_1000A8648()
{
  result = qword_100121E18;
  if (!qword_100121E18)
  {
    sub_1000195A0(&qword_100121E00);
    sub_1000195A0(&qword_100121E20);
    sub_1000195A0(&qword_10011FEB8);
    sub_100059F10();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001B1BC(&qword_100121E28, &qword_100121E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121E18);
  }

  return result;
}

unint64_t sub_1000A8780()
{
  result = qword_100121E38;
  if (!qword_100121E38)
  {
    sub_1000195A0(&qword_100121DF0);
    sub_10001B1BC(&qword_100121E40, &qword_100121DE8);
    sub_1000A8838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121E38);
  }

  return result;
}

unint64_t sub_1000A8838()
{
  result = qword_10011FCB8;
  if (!qword_10011FCB8)
  {
    sub_1000CA210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FCB8);
  }

  return result;
}

unint64_t sub_1000A8890()
{
  result = qword_100121E48;
  if (!qword_100121E48)
  {
    sub_1000195A0(&qword_100121E08);
    sub_1000A8648();
    sub_1000A8838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121E48);
  }

  return result;
}

uint64_t sub_1000A891C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100048B18(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000A8960(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100025894(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000A89D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x696772614D706F74;
  if (a1 <= 3u)
  {
    v4 = 0x6C696D6146736863;
    v5 = 0xEC000000746E4979;
    if (a1 != 2)
    {
      v4 = 0x5379616C70736964;
      v5 = 0xEB00000000657A69;
    }

    v8 = 0x614D6D6F74746F62;
    v9 = 0xEC0000006E696772;
    if (!a1)
    {
      v8 = 0x696772614D706F74;
      v9 = 0xE90000000000006ELL;
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = 0x696C64616548746ELL;
    v5 = 0xEF656C616353656ELL;
    v6 = 0x686563616C507369;
    v7 = 0xED00007265646C6FLL;
    if (a1 != 7)
    {
      v6 = 0x6569766572507369;
      v7 = 0xE900000000000077;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0xD00000000000001BLL;
    v9 = 0x80000001000E1340;
    if (a1 != 4)
    {
      v8 = 0x5379616C70736964;
      v9 = 0xEC000000656C6163;
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v2 = 0xEB00000000657A69;
        if (v11 != 0x5379616C70736964)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v13 = 0x6C696D6146736863;
      v14 = 1953384825;
    }

    else
    {
      if (!a2)
      {
        goto LABEL_39;
      }

      v13 = 0x614D6D6F74746F62;
      v14 = 1852401522;
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEF656C616353656ELL;
        if (v11 != 0x696C64616548746ELL)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      if (a2 == 7)
      {
        v2 = 0xED00007265646C6FLL;
        if (v11 != 0x686563616C507369)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v3 = 0x6569766572507369;
      v2 = 0xE900000000000077;
LABEL_39:
      if (v11 != v3)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    if (a2 == 4)
    {
      v2 = 0x80000001000E1340;
      if (v11 != 0xD00000000000001BLL)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v13 = 0x5379616C70736964;
    v14 = 1701601635;
  }

  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v13)
  {
LABEL_45:
    v15 = sub_1000CB530();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_1000A8CE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x80000001000E14A0;
  v5 = 0xD000000000000024;
  if (a1 != 4)
  {
    v5 = 0x79636176697250;
    v4 = 0xE700000000000000;
  }

  if (a1 == 3)
  {
    v5 = 0xD000000000000010;
    v6 = 0x80000001000E1480;
  }

  else
  {
    v6 = v4;
  }

  v7 = 0x80000001000E1430;
  v8 = 0xD000000000000023;
  if (v2 != 1)
  {
    v8 = 0xD00000000000001DLL;
    v7 = 0x80000001000E1460;
  }

  if (v2)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x746F6F7223;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v8 = v5;
    v9 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0x80000001000E1480;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0x80000001000E14A0;
      if (v8 != 0xD000000000000024)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v10 = 0xE700000000000000;
      if (v8 != 0x79636176697250)
      {
LABEL_32:
        v11 = sub_1000CB530();
        goto LABEL_33;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0x80000001000E1430;
      if (v8 != 0xD000000000000023)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v10 = 0x80000001000E1460;
      if (v8 != 0xD00000000000001DLL)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    v10 = 0xE500000000000000;
    if (v8 != 0x746F6F7223)
    {
      goto LABEL_32;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_32;
  }

  v11 = 1;
LABEL_33:

  return v11 & 1;
}

Swift::Int sub_1000A8E9C()
{
  sub_1000CB5C0();
  sub_1000CAD90();

  return sub_1000CB5F0();
}

Swift::Int sub_1000A8FA8()
{
  sub_1000CB5C0();
  sub_1000CAD90();

  return sub_1000CB5F0();
}

unint64_t sub_1000A90F4()
{
  result = qword_100121E58;
  if (!qword_100121E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121E58);
  }

  return result;
}

uint64_t sub_1000A9150()
{
  sub_1000CAD90();
}

uint64_t sub_1000A924C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000AC090(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1000A927C@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746F6F7223;
  v5 = 0x80000001000E1480;
  v6 = 0x80000001000E14A0;
  v7 = 0xD000000000000024;
  if (v2 != 4)
  {
    v7 = 0x79636176697250;
    v6 = 0xE700000000000000;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0x80000001000E1430;
  result = 13;
  v10 = 0xD00000000000001DLL;
  if (v2 == 1)
  {
    v10 = 0xD000000000000023;
  }

  else
  {
    v8 = 0x80000001000E1460;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000A9394()
{
  v1 = *v0;
  v2 = 0x746F6F7223;
  v3 = 0xD000000000000024;
  if (v1 != 4)
  {
    v3 = 0x79636176697250;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD00000000000001DLL;
  if (v1 == 1)
  {
    v4 = 0xD000000000000023;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000A9454@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_1000AC090(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A949C()
{
  v2 = *v0;
  if (*v0 > 2u)
  {
    if (v2 == 3)
    {
      v3 = "sports_favorites_sync_setting";
      v2 = 0xD000000000000010;
    }

    else
    {
      if (v2 != 4)
      {
        return (*(v1 + 8))(0x79636176697250, 0xE700000000000000);
      }

      v3 = "reset_identifier";
      v2 = 0xD000000000000024;
    }

    goto LABEL_11;
  }

  if (*v0)
  {
    v3 = "stackLocationUInt";
    if (v2 == 1)
    {
      v2 = 0xD000000000000023;
    }

    else
    {
      v3 = "avoritesSpecifierID";
      v2 = 0xD00000000000001DLL;
    }

LABEL_11:
    v4 = v3 | 0x8000000000000000;
    return (*(v1 + 8))(v2, v4);
  }

  v4 = *v0;
  return (*(v1 + 8))(v2, v4);
}

unint64_t sub_1000A9558()
{
  result = qword_100121E70;
  if (!qword_100121E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121E70);
  }

  return result;
}

uint64_t sub_1000A95AC()
{
  v0 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v0 - 8);
  v35 = &v26 - v1;
  v2 = sub_1000C9360();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C9610();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_1000CACC0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = sub_1000C9370();
  v31 = *(v18 - 8);
  v32 = v18;
  __chkstk_darwin(v18);
  v30 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C9190();
  sub_10001A5EC(v20, qword_100134718);
  v28 = sub_10001A5B4(v20, qword_100134718);
  sub_1000CACB0();
  if (qword_10011CFA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v21 = static NSBundle.newsToday2;
  sub_1000C95E0();
  (*(v12 + 16))(v15, v17, v11);
  (*(v5 + 16))(v8, v10, v4);
  v22 = [v21 bundleURL];
  v27 = v17;
  v23 = v22;
  v24 = v29;
  sub_1000C9440();

  (*(v33 + 104))(v24, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v34);
  sub_1000C9380();

  (*(v5 + 8))(v10, v4);
  (*(v12 + 8))(v27, v11);
  (*(v31 + 56))(v35, 1, 1, v32);
  return sub_1000C9180();
}

uint64_t sub_1000A9A48@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_100019558(&qword_10011DF90);
  __chkstk_darwin(v3 - 8);
  v54 = &v49 - v4;
  v5 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v5 - 8);
  v53 = &v49 - v6;
  v7 = sub_1000C9360();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C9610();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1000CACC0();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1000C9370();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  v52 = &v49 - v17;
  if (a1 > 2u)
  {
    v51 = v16;
    if (a1 == 3)
    {
      v50 = "the Game Center Settings link.";
      sub_1000CACB0();
      sub_1000C95E0();
      v34 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v35 = *(v8 + 104);
      v35(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
      sub_1000C9380();
      sub_1000CACB0();
      sub_1000C95E0();
      v35(v10, v34, v7);
      v36 = v53;
      sub_1000C9380();
      (*(v14 + 56))(v36, 0, 1, v13);
      v37 = v54;
      sub_1000C9060();
      v38 = sub_1000C9070();
      (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
      sub_1000CACB0();
      sub_1000C95E0();
      v35(v10, v34, v7);
    }

    else
    {
      sub_1000CACB0();
      sub_1000C95E0();
      if (a1 == 4)
      {
        v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
        v24 = *(v8 + 104);
        v24(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
        sub_1000C9380();
        sub_1000CACB0();
        sub_1000C95E0();
        v24(v10, v23, v7);
        v25 = v53;
        sub_1000C9380();
        (*(v14 + 56))(v25, 0, 1, v13);
        v26 = v54;
        sub_1000C9060();
        v27 = sub_1000C9070();
        (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
        sub_1000CACB0();
        sub_1000C95E0();
        v24(v10, v23, v7);
      }

      else
      {
        v44 = enum case for LocalizedStringResource.BundleDescription.main(_:);
        v45 = *(v8 + 104);
        v45(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
        sub_1000C9380();
        sub_1000CACB0();
        sub_1000C95E0();
        v45(v10, v44, v7);
        v46 = v53;
        sub_1000C9380();
        (*(v14 + 56))(v46, 0, 1, v13);
        v47 = v54;
        sub_1000C9060();
        v48 = sub_1000C9070();
        (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
        sub_1000CACB0();
        sub_1000C95E0();
        v45(v10, v44, v7);
      }
    }
  }

  else
  {
    if (!a1)
    {
      sub_1000CACB0();
      sub_1000C95E0();
      v28 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v29 = *(v8 + 104);
      v29(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
      sub_1000C9380();
      sub_1000CACB0();
      sub_1000C95E0();
      v29(v10, v28, v7);
      v30 = v53;
      sub_1000C9380();
      (*(v14 + 56))(v30, 0, 1, v13);
      v31 = v54;
      sub_1000C9060();
      v32 = sub_1000C9070();
      (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
      sub_100019558(&qword_100121F20);
      *(swift_allocObject() + 16) = xmmword_1000D45E0;
      sub_1000C9350();
      sub_1000C9350();
      sub_1000C9350();
      return sub_1000C9090();
    }

    v51 = v16;
    if (a1 == 1)
    {
      v50 = "From Apple News: ";
      sub_1000CACB0();
      sub_1000C95E0();
      v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v19 = *(v8 + 104);
      v19(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
      sub_1000C9380();
      sub_1000CACB0();
      sub_1000C95E0();
      v19(v10, v18, v7);
      v20 = v53;
      sub_1000C9380();
      (*(v14 + 56))(v20, 0, 1, v13);
      v21 = v54;
      sub_1000C9060();
      v22 = sub_1000C9070();
      (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
      sub_1000CACB0();
      sub_1000C95E0();
      v19(v10, v18, v7);
    }

    else
    {
      sub_1000CACB0();
      sub_1000C95E0();
      v39 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v40 = *(v8 + 104);
      v40(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
      sub_1000C9380();
      sub_1000CACB0();
      sub_1000C95E0();
      v40(v10, v39, v7);
      v41 = v53;
      sub_1000C9380();
      (*(v14 + 56))(v41, 0, 1, v13);
      v42 = v54;
      sub_1000C9060();
      v43 = sub_1000C9070();
      (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      sub_1000CACB0();
      sub_1000C95E0();
      v40(v10, v39, v7);
    }
  }

  sub_1000C9380();
  return sub_1000C9080();
}

uint64_t sub_1000AA8F4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002204C;

  return sub_1000AC0DC();
}

unint64_t sub_1000AA99C()
{
  result = qword_100121E78;
  if (!qword_100121E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121E78);
  }

  return result;
}

unint64_t sub_1000AA9F4()
{
  result = qword_100121E80;
  if (!qword_100121E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121E80);
  }

  return result;
}

unint64_t sub_1000AAA4C()
{
  result = qword_100121E88;
  if (!qword_100121E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121E88);
  }

  return result;
}

uint64_t sub_1000AAAA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100024D18;

  return sub_1000AC304(a1);
}

uint64_t sub_1000AAB48(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100024CF4;

  return sub_1000AC0DC();
}

unint64_t sub_1000AABF0()
{
  result = qword_100121E90;
  if (!qword_100121E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121E90);
  }

  return result;
}

unint64_t sub_1000AAC4C()
{
  result = qword_100121E98;
  if (!qword_100121E98)
  {
    sub_1000195A0(&qword_100121EA0);
    sub_100082A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121E98);
  }

  return result;
}

uint64_t sub_1000AACD0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000A9558();
  *v5 = v2;
  v5[1] = sub_10001840C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000AAD84(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100022804;

  return sub_1000AC52C();
}

unint64_t sub_1000AAE2C()
{
  result = qword_100121EA8;
  if (!qword_100121EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121EA8);
  }

  return result;
}

uint64_t sub_1000AAE80()
{
  v0 = sub_100019558(&qword_100121F48);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_100019558(&qword_100121F50);
  __chkstk_darwin(v4);
  sub_1000AAA4C();
  sub_1000C9120();
  v7._object = 0x80000001000E6050;
  v7._countAndFlagsBits = 0xD00000000000003DLL;
  sub_1000C9110(v7);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000C9100();
  (*(v1 + 8))(v3, v0);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  sub_1000C9110(v8);
  return sub_1000C9130();
}

unint64_t sub_1000AB044()
{
  result = qword_100121EB0;
  if (!qword_100121EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121EB0);
  }

  return result;
}

unint64_t sub_1000AB09C()
{
  result = qword_100121EB8;
  if (!qword_100121EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121EB8);
  }

  return result;
}

unint64_t sub_1000AB0F4()
{
  result = qword_100121EC0;
  if (!qword_100121EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121EC0);
  }

  return result;
}

unint64_t sub_1000AB14C()
{
  result = qword_100121EC8;
  if (!qword_100121EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121EC8);
  }

  return result;
}

uint64_t sub_1000AB1A0()
{
  sub_1000AC03C();
  v1 = sub_1000C90D0();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000AB210()
{
  result = qword_100121ED0;
  if (!qword_100121ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121ED0);
  }

  return result;
}

unint64_t sub_1000AB268()
{
  result = qword_100121ED8;
  if (!qword_100121ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121ED8);
  }

  return result;
}

unint64_t sub_1000AB2C0()
{
  result = qword_100121EE0;
  if (!qword_100121EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121EE0);
  }

  return result;
}

unint64_t sub_1000AB318()
{
  result = qword_100121EE8;
  if (!qword_100121EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121EE8);
  }

  return result;
}

uint64_t sub_1000AB3E8(uint64_t a1)
{
  v2 = sub_1000AAA4C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000AB438()
{
  result = qword_100121F00;
  if (!qword_100121F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121F00);
  }

  return result;
}

uint64_t sub_1000AB494(uint64_t a1)
{
  v2 = sub_1000AB2C0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000AB4E4()
{
  result = qword_100121F08;
  if (!qword_100121F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121F08);
  }

  return result;
}

uint64_t sub_1000AB53C()
{
  v0 = sub_1000C9360();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C9610();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000CACC0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000C9370();
  sub_10001A5EC(v6, qword_100134730);
  sub_10001A5B4(v6, qword_100134730);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000C9380();
}

void (*sub_1000AB71C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C8EB0();
  return sub_1000181C4;
}

uint64_t sub_1000AB790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000ABF94();
  v5 = sub_1000AC03C();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000AB800()
{
  result = qword_100121F10;
  if (!qword_100121F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121F10);
  }

  return result;
}

unint64_t sub_1000AB858()
{
  result = qword_100121F18;
  if (!qword_100121F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121F18);
  }

  return result;
}

uint64_t sub_1000AB934(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1000ABF94();
  v6 = sub_1000ABFE8();
  v7 = sub_1000AC03C();
  *v4 = v2;
  v4[1] = sub_1000236DC;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000ABA00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000ABAAC();
  *a1 = result;
  return result;
}

uint64_t sub_1000ABA28(uint64_t a1)
{
  v2 = sub_100082944();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000ABAAC()
{
  v0 = sub_1000C9140();
  v27 = *(v0 - 8);
  v28 = v0;
  __chkstk_darwin(v0);
  v26 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100019558(&qword_10011D800);
  v3 = __chkstk_darwin(v2 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v24 = &v22 - v5;
  v6 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v6 - 8);
  v23 = &v22 - v7;
  v8 = sub_1000C9360();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C9610();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1000CACC0();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1000C9370();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22 = sub_100019558(&qword_100121F28);
  sub_1000CACB0();
  sub_1000C95E0();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_1000C9380();
  sub_1000CACB0();
  sub_1000C95E0();
  v17(v11, v16, v8);
  v18 = v23;
  sub_1000C9380();
  (*(v15 + 56))(v18, 0, 1, v14);
  v29 = 6;
  v19 = sub_1000C8E70();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, enum case for InputConnectionBehavior.default(_:), v28);
  sub_1000AAA4C();
  return sub_1000C8EE0();
}

unint64_t sub_1000ABF94()
{
  result = qword_100121F30;
  if (!qword_100121F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121F30);
  }

  return result;
}

unint64_t sub_1000ABFE8()
{
  result = qword_100121F38;
  if (!qword_100121F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121F38);
  }

  return result;
}

unint64_t sub_1000AC03C()
{
  result = qword_100121F40;
  if (!qword_100121F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121F40);
  }

  return result;
}

uint64_t sub_1000AC090(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10010C5E8;
  v6._object = a2;
  v4 = sub_1000CB3F0(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000AC0F8()
{
  for (i = 0; i != 6; ++i)
  {
    v3 = *(&off_10010C6C0 + i + 32);
    if (v3 == 2)
    {
      v4 = [objc_opt_self() sharedAccount];
      v5 = [v4 isUserSignedInToiCloud];

      if (!v5)
      {
        continue;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000501D4(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v2 = *(&_swiftEmptyArrayStorage + 2);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    if (v2 >= v1 >> 1)
    {
      sub_1000501D4((v1 > 1), v2 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v2 + 1;
    *(&_swiftEmptyArrayStorage + v2 + 32) = v3;
  }

  v6 = *(&_swiftEmptyArrayStorage + 2);
  if (v6)
  {
    sub_1000501A4(0, v6, 0);
    v7 = *(&_swiftEmptyArrayStorage + 2);
    v8 = 32;
    do
    {
      v9 = *(&_swiftEmptyArrayStorage + v8);
      v10 = *(&_swiftEmptyArrayStorage + 3);
      if (v7 >= v10 >> 1)
      {
        sub_1000501A4((v10 > 1), v7 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v7 + 1;
      *(&_swiftEmptyArrayStorage + v7 + 32) = v9;
      ++v8;
      ++v7;
      --v6;
    }

    while (v6);
  }

  v11 = *(v13 + 8);

  return v11(&_swiftEmptyArrayStorage);
}

uint64_t sub_1000AC324()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      if (v7 != 2 || (v8 = [objc_opt_self() sharedAccount], v9 = objc_msgSend(v8, "isUserSignedInToiCloud"), v8, v9))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000501D4(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v5 = *(&_swiftEmptyArrayStorage + 2);
        v4 = *(&_swiftEmptyArrayStorage + 3);
        if (v5 >= v4 >> 1)
        {
          sub_1000501D4((v4 > 1), v5 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
        *(&_swiftEmptyArrayStorage + v5 + 32) = v6;
      }

      --v2;
    }

    while (v2);
  }

  v10 = *(&_swiftEmptyArrayStorage + 2);
  if (v10)
  {
    sub_1000501A4(0, v10, 0);
    v11 = *(&_swiftEmptyArrayStorage + 2);
    v12 = 32;
    do
    {
      v13 = *(&_swiftEmptyArrayStorage + v12);
      v14 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v14 >> 1)
      {
        sub_1000501A4((v14 > 1), v11 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      *(&_swiftEmptyArrayStorage + v11 + 32) = v13;
      ++v12;
      ++v11;
      --v10;
    }

    while (v10);
  }

  v15 = *(v17 + 8);

  return v15(&_swiftEmptyArrayStorage);
}

uint64_t sub_1000AC548()
{
  for (i = 0; i != 6; ++i)
  {
    v4 = *(&off_10010C6E8 + i + 32);
    if (v4 == 2)
    {
      v5 = [objc_opt_self() sharedAccount];
      v6 = [v5 isUserSignedInToiCloud];

      if (!v6)
      {
        continue;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000501D4(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
    }

    v3 = *(&_swiftEmptyArrayStorage + 2);
    v2 = *(&_swiftEmptyArrayStorage + 3);
    if (v3 >= v2 >> 1)
    {
      sub_1000501D4((v2 > 1), v3 + 1, 1);
    }

    *(&_swiftEmptyArrayStorage + 2) = v3 + 1;
    *(&_swiftEmptyArrayStorage + v3 + 32) = v4;
  }

  if (*(&_swiftEmptyArrayStorage + 2))
  {
    v7 = *(&_swiftEmptyArrayStorage + 32);
  }

  else
  {
    v7 = 6;
  }

  v8 = *(v0 + 8);

  return v8(v7);
}

id sub_1000AC6DC()
{
  result = [objc_opt_self() mainBundle];
  qword_100121F58 = result;
  return result;
}

void sub_1000AC718()
{
  if (qword_10011CF50 != -1)
  {
    swift_once();
  }

  v0 = qword_100121F58;
  v1 = sub_1000CACD0();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    v3 = [v2 imageWithRenderingMode:2];

    qword_100134748 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000AC804()
{
  if (qword_10011CF50 != -1)
  {
    swift_once();
  }

  v0 = qword_100121F58;
  v1 = sub_1000CACD0();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_100134750 = v2;
  }

  else
  {
    __break(1u);
  }
}

id Images.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, "init");
}

id Images.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000AC9A4()
{
  result = qword_100121F98;
  if (!qword_100121F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121F98);
  }

  return result;
}

uint64_t sub_1000ACA3C()
{
  v0 = sub_100019558(&qword_100121FE0);
  sub_10001A5EC(v0, qword_100134758);
  sub_10001A5B4(v0, qword_100134758);
  sub_1000AE3FC();
  return sub_1000C90B0();
}

uint64_t sub_1000ACAC0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000C9360();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000C9610();
  v1[6] = swift_task_alloc();
  sub_1000CACC0();
  v1[7] = swift_task_alloc();
  sub_1000C9370();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000ACC04, 0, 0);
}

uint64_t sub_1000ACC04()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_100019558(&qword_100121FA8);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C9380();
  sub_10001B1BC(&qword_100122050, &qword_100122058);
  *v4 = sub_1000C91C0();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000ACDB8()
{
  v0 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C9360();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C9610();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CACC0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C9370();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C9190();
  sub_10001A5EC(v10, qword_100134770);
  sub_10001A5B4(v10, qword_100134770);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C9380();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C9180();
}

uint64_t sub_1000AD094()
{
  v0 = sub_100019558(&qword_100122048);
  sub_10001A5EC(v0, qword_100134788);
  sub_10001A5B4(v0, qword_100134788);
  sub_1000ADE28();
  return sub_1000C9170();
}

uint64_t sub_1000AD118()
{
  v0 = sub_1000C9370();
  sub_10001A5EC(v0, qword_1001347A0);
  sub_10001A5B4(v0, qword_1001347A0);
  return sub_1000C9350();
}

uint64_t sub_1000AD17C()
{
  v0 = sub_100019558(&qword_10011D820);
  sub_10001A5EC(v0, qword_1001347B8);
  v1 = sub_10001A5B4(v0, qword_1001347B8);
  sub_1000C9040();
  v2 = sub_1000C9050();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000AD23C()
{
  result = swift_getKeyPath();
  qword_1001347D0 = result;
  return result;
}

uint64_t sub_1000AD264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_1000AD288, 0, 0);
}

uint64_t sub_1000AD288()
{
  sub_1000C8EC0();
  v1 = *(v0 + 16);
  *(v0 + 24) = v1;
  *(v0 + 72) = v1;
  sub_1000C8EC0();
  *(v0 + 145) = *(v0 + 144);
  if (qword_10011CF90 != -1)
  {
    swift_once();
  }

  v2 = qword_1001347D0;
  *(v0 + 80) = qword_1001347D0;

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = sub_10001B1BC(&qword_100122050, &qword_100122058);
  *(v0 + 96) = v4;
  *v3 = v0;
  v3[1] = sub_1000AD3EC;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v2, &type metadata for Bool, v4);
}

uint64_t sub_1000AD3EC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100017FB0;
  }

  else
  {
    v2 = sub_1000AD540;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000AD540()
{
  sub_1000C8EC0();
  v1 = v0[4];
  v0[5] = v1;
  v2 = qword_1001347D0;
  v0[14] = v1;
  v0[15] = v2;

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100017DD4;
  v4 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 146, v2, v4);
}

uint64_t (*sub_1000AD618(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C8EB0();
  return sub_1000180D8;
}

uint64_t (*sub_1000AD68C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C8EB0();
  return sub_10001B354;
}

uint64_t sub_1000AD700()
{
  if (qword_10011CF90 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000AD760()
{
  result = qword_100121FB0;
  if (!qword_100121FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121FB0);
  }

  return result;
}

unint64_t sub_1000AD7B8()
{
  result = qword_100121FB8;
  if (!qword_100121FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121FB8);
  }

  return result;
}

uint64_t sub_1000AD8C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CF88 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_10011D820);
  v3 = sub_10001A5B4(v2, qword_1001347B8);

  return sub_10001AC74(v3, a1);
}

uint64_t sub_1000AD94C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001840C;

  return sub_1000AD264(a1, v5, v4);
}