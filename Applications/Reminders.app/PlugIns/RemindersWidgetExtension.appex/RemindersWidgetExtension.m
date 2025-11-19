uint64_t sub_100001D68@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v45 = type metadata accessor for TTRTodayComplicationWidgetProvider();
  v1 = *(*(v45 - 8) + 64);
  __chkstk_darwin();
  v3 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C0FD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004D04(&qword_1000ECB38, &qword_1000C3668);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = v44 - v12;
  v14 = sub_100004D04(&qword_1000ECB40, &qword_1000C3670);
  v15 = *(v14 - 8);
  v47 = v14;
  v48 = v15;
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v18 = v44 - v17;
  v19 = sub_100004D04(&qword_1000ECB48, &qword_1000C3678);
  v20 = *(v19 - 8);
  v49 = v19;
  v50 = v20;
  v21 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v46 = v44 - v22;
  (*(v5 + 104))(v8, enum case for REMWidgetRefresh.WidgetKind.widgetForTodayList(_:), v4);
  sub_1000C0FC8();
  (*(v5 + 8))(v8, v4);
  sub_10000538C(v44[1], v3, type metadata accessor for TTRTodayComplicationWidgetProvider);
  type metadata accessor for TTRTodayComplicationWidget.WidgetPlaceholderWrapper(0);
  sub_1000052EC(&qword_1000ECB50, type metadata accessor for TTRTodayComplicationWidget.WidgetPlaceholderWrapper);
  sub_1000052EC(&qword_1000ECB58, type metadata accessor for TTRTodayComplicationWidgetProvider);
  sub_1000C23F8();
  sub_1000C19E8();
  v23 = sub_1000C1DB8();
  v25 = v24;
  v27 = v26;
  v28 = sub_100008478(&qword_1000ECB60, &qword_1000ECB38, &qword_1000C3668);
  sub_1000C1AC8();
  sub_10000537C(v23, v25, v27 & 1);

  (*(v10 + 8))(v13, v9);
  sub_1000C19E8();
  v29 = sub_1000C1DB8();
  v31 = v30;
  LOBYTE(v13) = v32;
  v52 = v9;
  v53 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  sub_1000C1A88();
  sub_10000537C(v29, v31, v13 & 1);

  v36 = v34;
  (*(v48 + 8))(v18, v34);
  sub_100004D04(&qword_1000ECB68, &unk_1000C3680);
  v37 = sub_1000C2378();
  v38 = *(v37 - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000C3590;
  (*(v38 + 104))(v41 + v40, enum case for WidgetFamily.accessoryInline(_:), v37);
  v52 = v36;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v42 = v49;
  sub_1000C1AA8();

  return (*(v50 + 8))(v35, v42);
}

uint64_t sub_100002454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = (*(*(sub_100004D04(&qword_1000ECC00, &qword_1000C3700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = v23 - v4;
  v6 = sub_1000C1778();
  v23[0] = *(v6 - 8);
  v7 = *(v23[0] + 64);
  __chkstk_darwin();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s10WidgetViewVMa();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004D04(&qword_1000ECC08, &qword_1000C3708);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v18 = v23 - v17;
  v19 = *(a1 + *(type metadata accessor for TTRTodayComplicationWidgetViewModel() + 20));
  if (v19 == 2 || (v19 & 1) == 0)
  {
    sub_10000538C(a1, v13, type metadata accessor for TTRTodayComplicationWidgetViewModel);
    sub_10000538C(v13, v5, _s10WidgetViewVMa);
    swift_storeEnumTagMultiPayload();
    v22 = sub_1000052EC(&qword_1000ECC10, _s10WidgetViewVMa);
    v24 = v10;
    v25 = v22;
    swift_getOpaqueTypeConformance2();
    sub_1000C1AE8();
    return sub_100006718(v13, _s10WidgetViewVMa);
  }

  else
  {
    sub_10000538C(a1, v13, type metadata accessor for TTRTodayComplicationWidgetViewModel);
    sub_1000C1768();
    v20 = sub_1000052EC(&qword_1000ECC10, _s10WidgetViewVMa);
    sub_1000C1F48();
    (*(v23[0] + 8))(v9, v6);
    sub_100006718(v13, _s10WidgetViewVMa);
    (*(v15 + 16))(v5, v18, v14);
    swift_storeEnumTagMultiPayload();
    v24 = v10;
    v25 = v20;
    swift_getOpaqueTypeConformance2();
    sub_1000C1AE8();
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_10000289C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v59 = type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView(0);
  v3 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v54 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100004D04(&qword_1000ECD30, &qword_1000C37B8);
  v5 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v58 = &v52 - v6;
  v57 = type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView(0);
  v7 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004D04(&qword_1000ECD38, &unk_1000C37C0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = type metadata accessor for TTRTodayComplicationWidget.InlineReminderView(0);
  v15 = *(*(v14 - 1) + 64);
  __chkstk_darwin(v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100004D04(&qword_1000ECD18, &qword_1000C37B0);
  v18 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v56 = &v52 - v19;
  v20 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v52 - v22;
  v24 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A4F58(v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v52 = v10;
    v53 = v13;
    sub_1000084C0(v23, &qword_1000ECD40, &unk_1000C5880);
    v29 = sub_1000A568C();
    if (v29 <= 0)
    {
      v45 = sub_1000C0938();
      v46 = v54;
      (*(*(v45 - 8) + 16))(v54, a1, v45);
      v47 = type metadata accessor for TTRTodayComplicationWidget.TodayInlineView(0);
      v48 = *(a1 + *(v47 + 20));
      v49 = *(a1 + *(v47 + 24));
      v51 = v58;
      v50 = v59;
      *(v46 + *(v59 + 20)) = v48;
      *(v46 + *(v50 + 24)) = v49;
      sub_10000538C(v46, v51, type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView);
      swift_storeEnumTagMultiPayload();
      sub_1000052EC(&qword_1000ECD20, type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView);
      sub_1000052EC(&qword_1000ECD28, type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView);

      v37 = v56;
      sub_1000C1AE8();
      v38 = type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView;
      v39 = v46;
    }

    else
    {
      v30 = v29;
      v31 = v57;
      v32 = *(v57 + 20);
      v33 = sub_1000C0938();
      (*(*(v33 - 8) + 16))(&v9[v32], a1, v33);
      v34 = type metadata accessor for TTRTodayComplicationWidget.TodayInlineView(0);
      v35 = *(a1 + *(v34 + 20));
      v36 = *(a1 + *(v34 + 24));
      *v9 = v30;
      *&v9[*(v31 + 24)] = v35;
      *&v9[*(v31 + 28)] = v36;
      sub_10000538C(v9, v58, type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView);
      swift_storeEnumTagMultiPayload();
      sub_1000052EC(&qword_1000ECD20, type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView);
      sub_1000052EC(&qword_1000ECD28, type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView);

      v37 = v56;
      sub_1000C1AE8();
      v38 = type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView;
      v39 = v9;
    }

    sub_100006718(v39, v38);
    sub_1000082B4(v37, v53, &qword_1000ECD18, &qword_1000C37B0);
    swift_storeEnumTagMultiPayload();
    sub_1000052EC(&qword_1000ECD08, type metadata accessor for TTRTodayComplicationWidget.InlineReminderView);
    sub_1000065B4();
    sub_1000C1AE8();
    return sub_1000084C0(v37, &qword_1000ECD18, &qword_1000C37B0);
  }

  else
  {
    sub_100006778(v23, v28, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    sub_10000538C(v28, v17, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    v40 = type metadata accessor for TTRTodayComplicationWidget.TodayInlineView(0);
    v41 = *(a1 + v40[5]);
    v42 = *(a1 + v40[6]);
    v43 = *(a1 + v40[7]);
    *&v17[v14[5]] = v41;
    *&v17[v14[6]] = v42;
    *&v17[v14[7]] = v43;
    sub_10000538C(v17, v13, type metadata accessor for TTRTodayComplicationWidget.InlineReminderView);
    swift_storeEnumTagMultiPayload();
    sub_1000052EC(&qword_1000ECD08, type metadata accessor for TTRTodayComplicationWidget.InlineReminderView);
    sub_1000065B4();

    sub_1000C1AE8();
    sub_100006718(v17, type metadata accessor for TTRTodayComplicationWidget.InlineReminderView);
    return sub_100006718(v28, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  }
}

uint64_t sub_10000309C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v27 - v6;
  v8 = sub_1000C1CD8();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006778(a1, a2, type metadata accessor for TTRTodayComplicationWidgetViewModel);
  v13 = type metadata accessor for TTRTodayComplicationWidget.TodayInlineView(0);
  v14 = *(v13 + 20);
  v28 = v13;
  v29 = v14;
  v31 = enum case for Font.TextStyle.body(_:);
  v15 = v9[13];
  v27[1] = v9 + 13;
  v37 = v15;
  v15(v12);
  v16 = enum case for Font.Design.default(_:);
  v36 = enum case for Font.Design.default(_:);
  v17 = sub_1000C1C38();
  v18 = *(v17 - 8);
  v35 = *(v18 + 104);
  v35(v7, v16, v17);
  v34 = *(v18 + 56);
  v34(v7, 0, 1, v17);
  v19 = sub_1000C1C78();
  sub_1000084C0(v7, &qword_1000ECC38, &qword_1000C3720);
  v20 = v9[1];
  v32 = v9 + 1;
  v33 = v20;
  v20(v12, v8);
  v21 = v30;
  *(v30 + v29) = v19;
  v22 = v28;
  v29 = *(v28 + 24);
  v37(v12, v31, v8);
  v35(v7, v36, v17);
  v34(v7, 0, 1, v17);
  v23 = sub_1000C1C78();
  sub_1000084C0(v7, &qword_1000ECC38, &qword_1000C3720);
  v33(v12, v8);
  *(v21 + v29) = v23;
  v24 = *(v22 + 28);
  v37(v12, v31, v8);
  v35(v7, v36, v17);
  v34(v7, 0, 1, v17);
  sub_1000C1C78();
  sub_1000084C0(v7, &qword_1000ECC38, &qword_1000C3720);
  v33(v12, v8);
  sub_1000C1C48();
  v25 = sub_1000C1C88();

  *(v21 + v24) = v25;
  return result;
}

uint64_t sub_100003468()
{
  v1 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_100004D04(&qword_1000ECCE8, &qword_1000C37A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000289C(v0, &v12 - v7);
  v9 = sub_1000C0938();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4, v0, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  sub_10000645C(&qword_1000ECCF0, &qword_1000ECCE8, &qword_1000C37A0, sub_1000064D8);
  sub_1000C1E38();
  sub_1000084C0(v4, &qword_1000ECCE0, &qword_1000C4EF0);
  return sub_1000084C0(v8, &qword_1000ECCE8, &qword_1000C37A0);
}

uint64_t sub_100003640()
{
  v1 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v11[-v3 - 16];
  v5 = sub_1000C1998();
  v13 = 1;
  sub_100003868(v0, v14);
  v12[3] = *(v15 + 9);
  *(&v12[2] + 7) = v15[0];
  *(&v12[1] + 7) = v14[1];
  *(v12 + 7) = v14[0];
  *&v11[1] = v12[0];
  v10 = v5;
  v11[0] = v13;
  *&v11[17] = v12[1];
  *&v11[33] = v12[2];
  *&v11[49] = v12[3];
  v6 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) + 28);
  v7 = sub_1000C0938();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, v0 + v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  sub_100004D04(&qword_1000ECF18, &qword_1000C3928);
  sub_100008478(&qword_1000ECF20, &qword_1000ECF18, &qword_1000C3928);
  sub_1000C1E38();
  sub_1000084C0(v4, &qword_1000ECCE0, &qword_1000C4EF0);
  v16[2] = *&v11[16];
  v16[3] = *&v11[32];
  v16[4] = *&v11[48];
  v17 = v11[64];
  v16[0] = v10;
  v16[1] = *v11;
  return sub_1000084C0(v16, &qword_1000ECF18, &qword_1000C3928);
}

id sub_100003868@<X0>(void **a1@<X0>, __int128 *a2@<X8>)
{
  v79 = a2;
  v3 = sub_1000C07C8();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v71 - v7;
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  sub_1000082B4(a1 + *(v14 + 24), v8, &qword_1000ECE78, &unk_1000C3810);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000084C0(v8, &qword_1000ECE78, &unk_1000C3810);
    if (qword_1000EC848 != -1)
    {
      swift_once();
    }

    v15 = qword_1000EC850;
    v16 = type metadata accessor for TTRTodayComplicationWidget.InlineReminderView(0);
    v17 = *(a1 + *(v16 + 24));
    KeyPath = swift_getKeyPath();
    v18 = *a1;
    v75 = v16;
    v19 = *(a1 + *(v16 + 28));
    v77 = v15;

    result = [v18 string];
    if (!result)
    {
      goto LABEL_15;
    }

    v21 = result;
    v80 = xmmword_1000C35A0;
    LOBYTE(v81) = 0;
    *(&v81 + 1) = &_swiftEmptyArrayStorage;
    v22 = [objc_opt_self() attributeName];
    v78 = [v18 length];
    v23 = swift_allocObject();
    v23[2] = &v80;
    v23[3] = v21;
    v23[4] = v19;
    v23[5] = 0;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1000083E4;
    *(v24 + 24) = v23;
    *v88 = sub_100008400;
    *&v88[8] = v24;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v87 = sub_100045698;
    *(&v87 + 1) = &unk_1000E7BA8;
    v25 = _Block_copy(&aBlock);
    v26 = v21;

    [v18 enumerateAttribute:v22 inRange:0 options:v78 usingBlock:{0, v25}];

    _Block_release(v25);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v28 = v80;
      v29 = v81;

      v30 = *(a1 + *(v75 + 5));
      v31 = sub_1000C1DA8();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      sub_10000537C(v28, *(&v28 + 1), v29);

      v38 = v77;

      v39 = KeyPath;

      sub_100008420(v31, v33, v35 & 1);

      sub_100008420(v31, v33, v35 & 1);

      sub_10000537C(v31, v33, v35 & 1);

      v85 = v35 & 1;
      v83 = 1;
      *&aBlock = v38;
      *(&aBlock + 1) = v39;
      *&v87 = v17;
      *(&v87 + 1) = v31;
      *v88 = v33;
      v88[8] = v35 & 1;
      *&v88[9] = *v84;
      *&v88[12] = *&v84[3];
      *&v88[16] = v37;
      v88[24] = 1;
      sub_100004D04(&qword_1000ECF28, &qword_1000C3960);
      sub_100008478(&qword_1000ECF30, &qword_1000ECF28, &qword_1000C3960);
      sub_1000C1AE8();
      sub_10000537C(v31, v33, v35 & 1);

LABEL_12:
      aBlock = v80;
      v87 = v81;
      *v88 = v82[0];
      *&v88[9] = *(v82 + 9);
      v69 = v81;
      v70 = v79;
      *v79 = v80;
      v70[1] = v69;
      v70[2] = *v88;
      *(v70 + 41) = *&v88[9];
      return result;
    }

    __break(1u);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    if (qword_1000EC838 != -1)
    {
      swift_once();
    }

    KeyPath = v10;
    v77 = v9;
    v40 = qword_1000EC840;
    v41 = type metadata accessor for TTRTodayComplicationWidget.InlineReminderView(0);
    v42 = *(a1 + *(v41 + 24));
    v72 = swift_getKeyPath();
    v43 = *a1;
    v78 = v41;
    v44 = *(v41 + 28);
    v71 = a1;
    v45 = *(a1 + v44);
    v74 = v40;

    v73 = v42;

    v75 = v13;
    sub_1000C07B8();
    sub_1000052EC(&qword_1000ECF38, &type metadata accessor for AttributedString.CharacterView);
    v46 = sub_1000C2718();
    v48 = v47;
    result = [v43 string];
    if (!result)
    {
      goto LABEL_16;
    }

    v49 = result;
    *&aBlock = v46;
    *(&aBlock + 1) = v48;

    v89._countAndFlagsBits = 32;
    v89._object = 0xE100000000000000;
    sub_1000C26D8(v89);
    v80 = aBlock;
    LOBYTE(v81) = 0;
    *(&v81 + 1) = &_swiftEmptyArrayStorage;
    v50 = [objc_opt_self() attributeName];
    v51 = [v43 length];
    v52 = swift_allocObject();
    v52[2] = &v80;
    v52[3] = v49;
    v52[4] = v45;
    v52[5] = 0;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_100008748;
    *(v53 + 24) = v52;
    *v88 = sub_100008724;
    *&v88[8] = v53;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v87 = sub_100045698;
    *(&v87 + 1) = &unk_1000E7C20;
    v54 = _Block_copy(&aBlock);
    v55 = v49;

    [v43 enumerateAttribute:v50 inRange:0 options:v51 usingBlock:{0, v54}];

    _Block_release(v54);
    LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

    if ((v51 & 1) == 0)
    {
      v56 = v80;
      v57 = v81;

      v58 = *(v71 + v78[5]);
      v59 = sub_1000C1DA8();
      v61 = v60;
      v63 = v62;
      v78 = v64;
      sub_10000537C(v56, *(&v56 + 1), v57);

      v65 = v74;

      v66 = v73;

      v67 = v72;

      sub_100008420(v59, v61, v63 & 1);
      v68 = v78;

      sub_100008420(v59, v61, v63 & 1);

      sub_10000537C(v59, v61, v63 & 1);

      v85 = v63 & 1;
      v83 = 0;
      *&aBlock = v65;
      *(&aBlock + 1) = v67;
      *&v87 = v66;
      *(&v87 + 1) = v59;
      *v88 = v61;
      v88[8] = v63 & 1;
      *&v88[9] = *v84;
      *&v88[12] = *&v84[3];
      *&v88[16] = v68;
      v88[24] = 0;
      sub_100004D04(&qword_1000ECF28, &qword_1000C3960);
      sub_100008478(&qword_1000ECF30, &qword_1000ECF28, &qword_1000C3960);
      sub_1000C1AE8();
      sub_10000537C(v59, v61, v63 & 1);

      result = (*(KeyPath + 8))(v75, v77);
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000043A8()
{
  v1 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v11[-v3 - 16];
  v5 = sub_1000C1998();
  v14 = 1;
  sub_1000045AC(v0, &v15);
  v13 = BYTE8(v17);
  v10 = v5;
  v11[0] = v14;
  *&v11[8] = v15;
  *&v11[24] = v16;
  *&v11[40] = v17;
  LOBYTE(v12) = BYTE8(v17);
  *(&v12 + 1) = v18;
  v6 = *(type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView(0) + 20);
  v7 = sub_1000C0938();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, v0 + v6, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  sub_100004D04(&qword_1000ECF40, &qword_1000C3968);
  sub_100008478(&qword_1000ECF48, &qword_1000ECF40, &qword_1000C3968);
  sub_1000C1E38();
  sub_1000084C0(v4, &qword_1000ECCE0, &qword_1000C4EF0);
  v17 = *&v11[16];
  v18 = *&v11[32];
  v19 = v12;
  v15 = v10;
  v16 = *v11;
  return sub_1000084C0(&v15, &qword_1000ECF40, &qword_1000C3968);
}

uint64_t sub_1000045AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1000EC848 != -1)
  {
    swift_once();
  }

  v4 = qword_1000EC850;
  v5 = type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView(0);
  v6 = *(a1 + *(v5 + 28));
  KeyPath = swift_getKeyPath();
  v8 = *a1;

  sub_10001E1F0(v8);
  v9 = *(a1 + *(v5 + 24));
  v10 = sub_1000C1DA8();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  *a2 = v4;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v6;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14 & 1;
  *(a2 + 48) = v16;

  sub_100008420(v10, v12, v14 & 1);

  sub_10000537C(v10, v12, v14 & 1);
}

uint64_t sub_100004738()
{
  v1 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10[-v3 - 16];
  v5 = sub_1000C1998();
  v13 = 1;
  sub_100004930(v0, &v14);
  v12 = BYTE8(v16);
  v9 = v5;
  v10[0] = v13;
  *&v10[8] = v14;
  *&v10[24] = v15;
  *&v10[40] = v16;
  LOBYTE(v11) = BYTE8(v16);
  *(&v11 + 1) = v17;
  v6 = sub_1000C0938();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, v0, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  sub_100004D04(&qword_1000ECF40, &qword_1000C3968);
  sub_100008478(&qword_1000ECF48, &qword_1000ECF40, &qword_1000C3968);
  sub_1000C1E38();
  sub_1000084C0(v4, &qword_1000ECCE0, &qword_1000C4EF0);
  v16 = *&v10[16];
  v17 = *&v10[32];
  v18 = v11;
  v14 = v9;
  v15 = *v10;
  return sub_1000084C0(&v14, &qword_1000ECF40, &qword_1000C3968);
}

uint64_t sub_100004930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1000EC848 != -1)
  {
    swift_once();
  }

  v4 = qword_1000EC850;
  v5 = type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView(0);
  v6 = *(a1 + *(v5 + 24));
  KeyPath = swift_getKeyPath();

  v18._object = 0x80000001000CBA20;
  v19._countAndFlagsBits = 0xD000000000000063;
  v19._object = 0x80000001000CBA40;
  v18._countAndFlagsBits = 0xD000000000000012;
  sub_1000C0D78(v18, v19);
  v8 = *(a1 + *(v5 + 20));
  v9 = sub_1000C1DA8();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  *a2 = v4;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13 & 1;
  *(a2 + 48) = v15;

  sub_100008420(v9, v11, v13 & 1);

  sub_10000537C(v9, v11, v13 & 1);
}

uint64_t sub_100004AF0()
{
  result = sub_1000C2018();
  qword_1000EC840 = result;
  return result;
}

uint64_t sub_100004B20()
{
  result = sub_1000C2018();
  qword_1000EC850 = result;
  return result;
}

uint64_t sub_100004B5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100004D04(&qword_1000ECA80, &qword_1000C35C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  sub_1000082B4(a1, &v7, &qword_1000ECA90, &qword_1000C35D0);
  if (v8)
  {
    sub_100004E0C(&v7, v9);
    sub_100004E0C(v9, &v7);
    sub_100004D04(&qword_1000ECA98, &qword_1000C35D8);
    swift_dynamicCast();
    result = v10;
  }

  else
  {
    sub_1000084C0(&v7, &qword_1000ECA90, &qword_1000C35D0);
    sub_1000C1A58();
    swift_getOpaqueTypeConformance2();
    result = sub_1000C1B28();
  }

  *a2 = result;
  return result;
}

void *sub_100004CA8()
{
  if (sub_1000BFCB0(2, 16, 1, 0))
  {
    return &type metadata for LimitedAvailabilityWidget;
  }

  return sub_100004D04(&qword_1000ECA80, &qword_1000C35C8);
}

uint64_t sub_100004D04(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004D4C()
{
  if (sub_1000BFCB0(2, 16, 1, 0))
  {

    return sub_100004DB8();
  }

  else
  {

    return swift_getOpaqueTypeConformance2();
  }
}

unint64_t sub_100004DB8()
{
  result = qword_1000ECA88;
  if (!qword_1000ECA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECA88);
  }

  return result;
}

uint64_t sub_100004E0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_100004E24(char *a1, char *a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidgetProvider();
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = (v6 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(v4 + 20);
    v8 = sub_1000C1118();
    v9 = *(*(v8 - 8) + 16);

    v9(&a1[v7], &a2[v7], v8);
  }

  return a1;
}

uint64_t sub_100004F08(char *a1)
{
  v2 = *a1;

  v3 = *(type metadata accessor for TTRTodayComplicationWidgetProvider() + 20);
  v4 = sub_1000C1118();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

char *sub_100004F80(char *a1, char *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for TTRTodayComplicationWidgetProvider() + 20);
  v5 = sub_1000C1118();
  v6 = *(*(v5 - 8) + 16);

  v6(&a1[v4], &a2[v4], v5);
  return a1;
}

char *sub_10000501C(char *a1, char *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(type metadata accessor for TTRTodayComplicationWidgetProvider() + 20);
  v6 = sub_1000C1118();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *sub_1000050AC(char *a1, char *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for TTRTodayComplicationWidgetProvider() + 20);
  v5 = sub_1000C1118();
  (*(*(v5 - 8) + 32))(&a1[v4], &a2[v4], v5);
  return a1;
}

char *sub_10000512C(char *a1, char *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(type metadata accessor for TTRTodayComplicationWidgetProvider() + 20);
  v6 = sub_1000C1118();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

__n128 initializeWithTake for TTRNewWidgetViewModel.ShareeIcon(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s24RemindersWidgetExtension16TTRAnyListWidgetV14ReminderVStackV9CacheDataVwet_0(uint64_t a1, int a2)
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

uint64_t _s24RemindersWidgetExtension16TTRAnyListWidgetV14ReminderVStackV9CacheDataVwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_1000052EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005334(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000537C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000538C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1000053F4(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = v4;
    v7 = sub_1000C0938();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
    *(a1 + *(v6 + 24)) = *(a2 + *(v6 + 24));
  }

  return a1;
}

uint64_t sub_1000054D4(uint64_t a1)
{
  v2 = sub_1000C0938();
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = *(a1 + *(type metadata accessor for TTRTodayComplicationWidgetViewModel() + 24));
}

uint64_t sub_10000554C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0938();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  v5 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));

  return a1;
}

uint64_t sub_1000055D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0938();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  v5 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v6 = *(v5 + 24);
  v7 = *(a2 + v6);
  v8 = *(a1 + v6);
  *(a1 + v6) = v7;

  return a1;
}

uint64_t sub_100005668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0938();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  v5 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  *(a1 + *(v5 + 24)) = *(a2 + *(v5 + 24));
  return a1;
}

uint64_t sub_1000056EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0938();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  v5 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  *(a1 + v6) = *(a2 + v6);

  return a1;
}

uint64_t sub_1000057A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_100005840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1000058CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10000595C()
{
  sub_100005334(&qword_1000ECB48, &qword_1000C3678);
  sub_100005334(&qword_1000ECB40, &qword_1000C3670);
  sub_100005334(&qword_1000ECB38, &qword_1000C3668);
  sub_100008478(&qword_1000ECB60, &qword_1000ECB38, &qword_1000C3668);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100005AD4()
{
  result = qword_1000ECC28;
  if (!qword_1000ECC28)
  {
    sub_100005334(&qword_1000ECC30, &qword_1000C3718);
    _s10WidgetViewVMa();
    sub_1000052EC(&qword_1000ECC10, _s10WidgetViewVMa);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECC28);
  }

  return result;
}

uint64_t sub_100005BCC(uint64_t a1, id *a2)
{
  result = sub_1000C2658();
  *a2 = 0;
  return result;
}

uint64_t sub_100005C44(uint64_t a1, id *a2)
{
  v3 = sub_1000C2668();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100005CC4@<X0>(void *a1@<X8>)
{
  sub_1000C2678();
  v2 = sub_1000C2638();

  *a1 = v2;
  return result;
}

uint64_t sub_100005D08()
{
  v1 = *v0;
  sub_1000C2678();
  v2 = sub_1000C26F8();

  return v2;
}

uint64_t sub_100005D44()
{
  v1 = *v0;
  sub_1000C2678();
  sub_1000C26C8();
}

Swift::Int sub_100005D98()
{
  v1 = *v0;
  sub_1000C2678();
  sub_1000C2D68();
  sub_1000C26C8();
  v2 = sub_1000C2D88();

  return v2;
}

uint64_t sub_100005E0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1000C2678();
  v6 = v5;
  if (v4 == sub_1000C2678() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000C2CD8();
  }

  return v9 & 1;
}

void *sub_100005EC8(void *a1, void *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0938();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
    *(v4 + *(v8 + 20)) = *(a2 + *(v8 + 20));
    *(v4 + *(v8 + 24)) = *(a2 + *(v8 + 24));
    v9 = a3[6];
    *(v4 + a3[5]) = *(a2 + a3[5]);
    *(v4 + v9) = *(a2 + v9);
    *(v4 + a3[7]) = *(a2 + a3[7]);
  }

  return v4;
}

uint64_t sub_100005FE4(uint64_t a1, int *a2)
{
  v4 = sub_1000C0938();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(type metadata accessor for TTRTodayComplicationWidgetViewModel() + 24));

  v6 = *(a1 + a2[5]);

  v7 = *(a1 + a2[6]);

  v8 = *(a1 + a2[7]);
}

uint64_t sub_100006084(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
  *(a1 + *(v7 + 24)) = *(a2 + *(v7 + 24));
  v8 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v8) = *(a2 + v8);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_100006158(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
  v8 = *(v7 + 24);
  v9 = *(a1 + v8);
  *(a1 + v8) = *(a2 + v8);

  v10 = a3[5];
  v11 = *(a1 + v10);
  *(a1 + v10) = *(a2 + v10);

  v12 = a3[6];
  v13 = *(a1 + v12);
  *(a1 + v12) = *(a2 + v12);

  v14 = a3[7];
  v15 = *(a2 + v14);
  v16 = *(a1 + v14);
  *(a1 + v14) = v15;

  return a1;
}

uint64_t sub_10000624C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
  *(a1 + *(v7 + 24)) = *(a2 + *(v7 + 24));
  v8 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v8) = *(a2 + v8);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1000062FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
  v8 = *(v7 + 24);
  v9 = *(a1 + v8);
  *(a1 + v8) = *(a2 + v8);

  v10 = a3[5];
  v11 = *(a1 + v10);
  *(a1 + v10) = *(a2 + v10);

  v12 = a3[6];
  v13 = *(a1 + v12);
  *(a1 + v12) = *(a2 + v12);

  v14 = a3[7];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  return a1;
}

uint64_t sub_10000645C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005334(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000064D8()
{
  result = qword_1000ECCF8;
  if (!qword_1000ECCF8)
  {
    sub_100005334(&qword_1000ECD00, &qword_1000C37A8);
    sub_1000052EC(&qword_1000ECD08, type metadata accessor for TTRTodayComplicationWidget.InlineReminderView);
    sub_1000065B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECCF8);
  }

  return result;
}

unint64_t sub_1000065B4()
{
  result = qword_1000ECD10;
  if (!qword_1000ECD10)
  {
    sub_100005334(&qword_1000ECD18, &qword_1000C37B0);
    sub_1000052EC(&qword_1000ECD20, type metadata accessor for TTRTodayComplicationWidget.InlineOverdueRemindersCountView);
    sub_1000052EC(&qword_1000ECD28, type metadata accessor for TTRTodayComplicationWidget.InlineNoDueRemindersView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECD10);
  }

  return result;
}

uint64_t sub_1000066E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100006718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100006778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *sub_1000067E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    v4 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0938();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = *(a3 + 24);
    *(v4 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(v4 + v8) = *(a2 + v8);
  }

  return v4;
}

uint64_t sub_1000068B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0938();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20));

  v6 = *(a1 + *(a2 + 24));
}

uint64_t sub_100006938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1000069C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = *(a3 + 24);
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  return a1;
}

uint64_t sub_100006A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_100006AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = *(a3 + 24);
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  return a1;
}

uint64_t sub_100006BE4()
{
  result = sub_1000C0938();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_100006C80(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = a3[5];
    v8 = sub_1000C0938();
    (*(*(v8 - 8) + 16))(&v3[v5], &a2[v5], v8);
    v9 = a3[7];
    *&v3[a3[6]] = *&a2[a3[6]];
    *&v3[v9] = *&a2[v9];
  }

  return v3;
}

uint64_t sub_100006D64(uint64_t a1, int *a2)
{
  v4 = a2[5];
  v5 = sub_1000C0938();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + a2[6]);

  v7 = *(a1 + a2[7]);
}

char *sub_100006DF0(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1000C0938();
  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v8] = *&a2[v8];

  return a1;
}

char *sub_100006E8C(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1000C0938();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  v9 = *&a1[v8];
  *&a1[v8] = *&a2[v8];

  v10 = a3[7];
  v11 = *&a1[v10];
  *&a1[v10] = *&a2[v10];

  return a1;
}

char *sub_100006F40(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1000C0938();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v8] = *&a2[v8];
  return a1;
}

char *sub_100006FD0(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1000C0938();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  v9 = *&a1[v8];
  *&a1[v8] = *&a2[v8];

  v10 = a3[7];
  v11 = *&a1[v10];
  *&a1[v10] = *&a2[v10];

  return a1;
}

uint64_t sub_100007088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0938();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10000715C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C0938();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100007218()
{
  result = sub_1000C0938();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_1000072C4(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = a2[1];
    *(a1 + 1) = v7;
    v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v9 = v8[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v7;
    if (v12(a2 + v9, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v6[v9], a2 + v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v6[v9], a2 + v9, v10);
      (*(v11 + 56))(&v6[v9], 0, 1, v10);
    }

    v16 = v8[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v6[v16], a2 + v16, v17);
    v18 = v8[8];
    v19 = *(a2 + v18);
    *&v6[v18] = v19;
    *&v6[v8[9]] = *(a2 + v8[9]);
    v6[v8[10]] = *(a2 + v8[10]);
    v6[v8[11]] = *(a2 + v8[11]);
    v20 = a3[6];
    *&v6[a3[5]] = *(a2 + a3[5]);
    *&v6[v20] = *(a2 + v20);
    *&v6[a3[7]] = *(a2 + a3[7]);
    v21 = v19;
  }

  return v6;
}

uint64_t sub_100007500(id *a1, int *a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v5 = v4[6];
  v6 = sub_1000C0818();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v8 = v4[7];
  v9 = sub_1000C0938();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);

  v10 = *(a1 + a2[5]);

  v11 = *(a1 + a2[6]);

  v12 = *(a1 + a2[7]);
}

char *sub_10000763C(char *a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = a3[6];
  *&a1[a3[5]] = *(a2 + a3[5]);
  *&a1[v19] = *(a2 + v19);
  *&a1[a3[7]] = *(a2 + a3[7]);
  v20 = v18;

  return a1;
}

uint64_t sub_100007830(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 24))(a1 + v13, a2 + v13, v14);
      goto LABEL_7;
    }

    (*(v15 + 8))(a1 + v13, v14);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 16))(a1 + v13, a2 + v13, v14);
  (*(v15 + 56))(a1 + v13, 0, 1, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  v26 = a3[5];
  v27 = *(a1 + v26);
  *(a1 + v26) = *(a2 + v26);

  v28 = a3[6];
  v29 = *(a1 + v28);
  *(a1 + v28) = *(a2 + v28);

  v30 = a3[7];
  v31 = *(a2 + v30);
  v32 = *(a1 + v30);
  *(a1 + v30) = v31;

  return a1;
}

char *sub_100007AB0(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v14] = *&a2[v14];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

uint64_t sub_100007C6C(uint64_t a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, &a2[v9], v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v9), &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 32))(a1 + v9, &a2[v9], v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(a1 + v16, &a2[v16], v17);
  v18 = v8[8];
  v19 = *(a1 + v18);
  *(a1 + v18) = *&a2[v18];

  *(a1 + v8[9]) = *&a2[v8[9]];
  *(a1 + v8[10]) = a2[v8[10]];
  *(a1 + v8[11]) = a2[v8[11]];
  v20 = a3[5];
  v21 = *(a1 + v20);
  *(a1 + v20) = *&a2[v20];

  v22 = a3[6];
  v23 = *(a1 + v22);
  *(a1 + v22) = *&a2[v22];

  v24 = a3[7];
  v25 = *(a1 + v24);
  *(a1 + v24) = *&a2[v24];

  return a1;
}

uint64_t sub_100007EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100007FE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000080B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_100008154()
{
  sub_100005334(&qword_1000ECCE8, &qword_1000C37A0);
  sub_10000645C(&qword_1000ECCF0, &qword_1000ECCE8, &qword_1000C37A0, sub_1000064D8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100008240@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1000C2638();

  *a2 = v5;
  return result;
}

uint64_t sub_100008288@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000C2678();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000082B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004D04(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000831C(uint64_t a1)
{
  v2 = sub_1000052EC(&qword_1000ECF70, type metadata accessor for Key);
  v3 = sub_1000052EC(&qword_1000ECF78, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100008408(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008420(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100008430()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008478(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005334(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000084C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004D04(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100008534(uint64_t a1, unint64_t *a2)
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

uint64_t sub_10000859C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_100005334(a2, a3);
  sub_100008478(a4, a2, a3);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100008750()
{
  result = qword_1000ECFA0;
  if (!qword_1000ECFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFA0);
  }

  return result;
}

uint64_t sub_1000087E8()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000C0888();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000C2628();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C0898();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1000C0728();
  sub_10000D9B0(v15, qword_1000FAA00);
  sub_10000D978(v15, qword_1000FAA00);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000C08A8();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1000C0718();
}

uint64_t sub_100008AC4@<X0>(uint64_t a1@<X8>)
{
  v31[3] = a1;
  v1 = sub_100004D04(&qword_1000ED0F0, &qword_1000C43C8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v32 = v31 - v3;
  v4 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v31[0] = v31 - v6;
  v7 = sub_1000C0888();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C0B68();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_1000C2628();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1000C0898();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v31[2] = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v31[1] = v31 - v21;
  sub_1000C2618();
  sub_1000C0B58();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v8 + 104);
  v23(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v7);
  v24 = v31[0];
  sub_1000C08A8();
  v25 = *(v17 + 56);
  v17 += 56;
  v25(v24, 0, 1, v16);
  v26 = v32;
  sub_1000C05F8();
  v27 = sub_1000C0608();
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
  v28 = *(v17 + 16);
  v29 = (*(v17 + 24) + 32) & ~*(v17 + 24);
  *(swift_allocObject() + 16) = xmmword_1000C3590;
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v7);
  sub_1000C08A8();
  sub_1000C2618();
  sub_1000C0B58();
  v23(v11, v22, v7);
  sub_1000C08A8();
  return sub_1000C0618();
}

uint64_t sub_100008FF8()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAA18);
  sub_10000D978(v0, qword_1000FAA18);
  return sub_1000C0878();
}

uint64_t sub_10000905C()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v19 - v2;
  v19[0] = sub_1000C0888();
  v4 = *(v19[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v19[0]);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000C2628();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C0898();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  sub_10000D9B0(v15, qword_1000FAA30);
  v16 = sub_10000D978(v15, qword_1000FAA30);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v19[0]);
  sub_1000C08A8();
  (*(v13 + 56))(v3, 1, 1, v12);
  sub_1000C0588();
  v17 = sub_1000C0578();
  return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
}

uint64_t sub_10000938C()
{
  result = swift_getKeyPath();
  qword_1000FAA48 = result;
  return result;
}

uint64_t sub_1000093EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = *(*(sub_100004D04(&qword_1000ED110, &unk_1000C8A60) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_100004D04(&qword_1000ED118, &qword_1000C4400) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100004D04(&qword_1000ED120, &qword_1000C4408) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v7 = sub_1000C0318();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = sub_100004D04(&qword_1000ED128, &qword_1000C4410);
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000095CC, 0, 0);
}

uint64_t sub_1000095CC()
{
  v1 = v0[8];
  sub_1000C0368();
  v2 = async function pointer to IntentDialog._CapturedContent.init<>(entity:_:)[1];
  v3 = swift_task_alloc();
  v0[20] = v3;
  v4 = sub_10000AAC0();
  *v3 = v0;
  v3[1] = sub_10000969C;
  v5 = v0[19];

  return IntentDialog._CapturedContent.init<>(entity:_:)(v5, v0 + 2, sub_10000DCA0, 0, &type metadata for ShowSuggestionsEntity, v4);
}

uint64_t sub_10000969C()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return _swift_task_switch(sub_100009798, 0, 0);
}

uint64_t sub_100009798()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1000C0368();
  v3 = *(v0 + 24);
  *(v0 + 32) = v3;
  *(v0 + 168) = v3;
  sub_1000C0368();
  *(v0 + 201) = *(v0 + 200);
  if (qword_1000EC870 != -1)
  {
    swift_once();
  }

  v4 = qword_1000FAA48;
  *(v0 + 176) = qword_1000FAA48;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  v7 = sub_100008478(&qword_1000ED100, &qword_1000ED108, &qword_1000C43E8);
  *v6 = v0;
  v6[1] = sub_1000098F8;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 201, v4, &type metadata for Bool, v7);
}

uint64_t sub_1000098F8()
{
  v2 = *(*v1 + 184);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v5 = sub_100009CB4;
  }

  else
  {
    v5 = sub_100009A4C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100009A4C()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v12 = v0[18];
  v13 = v0[15];
  v4 = v0[12];
  v15 = v0[14];
  v16 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v14 = v0[7];
  sub_1000C0368();
  v0[6] = v0[5];
  v8 = sub_1000C06F8();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = sub_1000C0738();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_100008750();
  sub_10000AE98();
  sub_1000C02E8();
  (*(v2 + 16))(v12, v1, v3);
  sub_1000C0308();
  sub_1000C0328();
  (*(v15 + 8))(v13, v16);

  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100009CB4()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  (*(v0[17] + 8))(v0[19], v0[16]);

  v6 = v0[1];
  v7 = v0[24];

  return v6();
}

uint64_t sub_100009D7C()
{
  v0 = sub_100004D04(&qword_1000ED130, &qword_1000C4418);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - v3;
  if (qword_1000EC870 != -1)
  {
    swift_once();
  }

  sub_1000C05D8();

  sub_10000AE98();
  sub_100008478(&qword_1000ED138, &qword_1000ED130, &qword_1000C4418);
  sub_1000C05C8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100009EF0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000C0368();
  *a1 = v5;
  return result;
}

uint64_t sub_100009F2C(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_1000C0378();
}

uint64_t (*sub_100009F74(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000C0358();
  return sub_100009FE8;
}

uint64_t sub_100009FEC@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_1000C0368();
  *a1 = v5;
  return result;
}

uint64_t sub_10000A028(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_1000C0378();
}

uint64_t (*sub_10000A060(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

uint64_t sub_10000A0D4()
{
  if (qword_1000EC870 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10000A158()
{
  result = qword_1000ECFB8;
  if (!qword_1000ECFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFB8);
  }

  return result;
}

unint64_t sub_10000A1B0()
{
  result = qword_1000ECFC0;
  if (!qword_1000ECFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFC0);
  }

  return result;
}

uint64_t sub_10000A29C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000EC868 != -1)
  {
    swift_once();
  }

  v2 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  v3 = sub_10000D978(v2, qword_1000FAA30);

  return sub_10000DA20(v3, a1);
}

uint64_t sub_10000A320(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DC8C;

  return sub_1000093EC(a1, v5, v4);
}

uint64_t sub_10000A3CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000CFBC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000A414()
{
  result = qword_1000ECFC8;
  if (!qword_1000ECFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFC8);
  }

  return result;
}

unint64_t sub_10000A46C()
{
  result = qword_1000ECFD0;
  if (!qword_1000ECFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFD0);
  }

  return result;
}

uint64_t sub_10000A4E0()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  v3 = [v2 enableAutoCompleteReminders];

  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000A5A8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() daemonUserDefaults];
  [v2 setEnableAutoCompleteReminders:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000A640(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_1000C0898() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10000A6D0, 0, 0);
}

uint64_t sub_10000A6D0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_100004D04(&qword_1000ECFB0, qword_1000C3B00);
  sub_1000C0878();
  sub_100008478(&qword_1000ED100, &qword_1000ED108, &qword_1000C43E8);
  *v2 = sub_1000C0768();

  v3 = v0[1];

  return v3();
}

unint64_t sub_10000A7F4()
{
  result = qword_1000ECFD8;
  if (!qword_1000ECFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFD8);
  }

  return result;
}

uint64_t sub_10000A848(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000B1DC();
  *v5 = v2;
  v5[1] = sub_10000A8F8;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_10000A8F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_10000AA10()
{
  result = qword_1000ECFE0;
  if (!qword_1000ECFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFE0);
  }

  return result;
}

unint64_t sub_10000AA68()
{
  result = qword_1000ECFE8;
  if (!qword_1000ECFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFE8);
  }

  return result;
}

unint64_t sub_10000AAC0()
{
  result = qword_1000ECFF0;
  if (!qword_1000ECFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFF0);
  }

  return result;
}

uint64_t sub_10000AB18(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000B1DC();
  *v6 = v2;
  v6[1] = sub_10000DCD8;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_10000ABCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_10000B1DC();
  *v5 = v2;
  v5[1] = sub_10000DCA4;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_10000AC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000AD3C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10000AD3C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_10000AE40()
{
  result = qword_1000ECFF8;
  if (!qword_1000ECFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECFF8);
  }

  return result;
}

unint64_t sub_10000AE98()
{
  result = qword_1000ED000;
  if (!qword_1000ED000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED000);
  }

  return result;
}

unint64_t sub_10000AEF0()
{
  result = qword_1000ED008;
  if (!qword_1000ED008)
  {
    sub_100005334(&qword_1000ED010, qword_1000C3DA0);
    sub_10000AE98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED008);
  }

  return result;
}

uint64_t sub_10000AF74(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000A7F4();
  *v6 = v2;
  v6[1] = sub_10000B028;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000B028()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000B11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000B028;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_10000B1DC()
{
  result = qword_1000ED018;
  if (!qword_1000ED018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED018);
  }

  return result;
}

uint64_t sub_10000B230()
{
  v0 = qword_1000ECF80;

  return v0;
}

unint64_t sub_10000B26C()
{
  result = qword_1000ED020;
  if (!qword_1000ED020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED020);
  }

  return result;
}

unint64_t sub_10000B2C4()
{
  result = qword_1000ED028;
  if (!qword_1000ED028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED028);
  }

  return result;
}

unint64_t sub_10000B31C()
{
  result = qword_1000ED030;
  if (!qword_1000ED030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED030);
  }

  return result;
}

unint64_t sub_10000B380()
{
  result = qword_1000ED038;
  if (!qword_1000ED038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED038);
  }

  return result;
}

unint64_t sub_10000B3D8()
{
  result = qword_1000ED040;
  if (!qword_1000ED040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED040);
  }

  return result;
}

unint64_t sub_10000B430()
{
  result = qword_1000ED048;
  if (!qword_1000ED048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED048);
  }

  return result;
}

uint64_t sub_10000B490@<X0>(uint64_t *a1@<X8>)
{
  sub_10000A46C();
  result = sub_1000C0348();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000B54C(uint64_t a1)
{
  v2 = sub_10000AAC0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000B59C()
{
  result = qword_1000ED060;
  if (!qword_1000ED060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED060);
  }

  return result;
}

uint64_t sub_10000B5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000DC8C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000B6B8(uint64_t a1)
{
  v2 = sub_10000B430();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10000B708()
{
  result = qword_1000ED068;
  if (!qword_1000ED068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED068);
  }

  return result;
}

uint64_t sub_10000B75C(uint64_t a1)
{
  if (qword_1000EC8E0 != -1)
  {
    swift_once();
  }

  sub_1000C26D8(xmmword_1000FAAD8);
  v2 = sub_10000AAC0();

  return _EntityURLRepresentation.init(_:)(0xD000000000000041, 0x80000001000CBC20, a1, v2);
}

uint64_t sub_10000B81C()
{
  sub_10000D924();
  v1 = sub_1000C0668();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000B88C()
{
  result = qword_1000ED070;
  if (!qword_1000ED070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED070);
  }

  return result;
}

uint64_t sub_10000B8E0()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAA50);
  sub_10000D978(v0, qword_1000FAA50);
  return sub_1000C0878();
}

uint64_t sub_10000B944@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_1000C0888();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000C0B68();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000C2628();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1000C0898();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_1000C08A8();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_1000C0588();
  v18 = sub_1000C0578();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t (*sub_10000BC40(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000C0358();
  return sub_10000DCA8;
}

void sub_10000BCB4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10000BD00()
{
  result = qword_1000ED078;
  if (!qword_1000ED078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED078);
  }

  return result;
}

unint64_t sub_10000BD54()
{
  result = qword_1000ED080;
  if (!qword_1000ED080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED080);
  }

  return result;
}

uint64_t sub_10000BDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D87C();
  v5 = sub_10000D924();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000BE14()
{
  v0 = qword_1000ECF90;

  return v0;
}

unint64_t sub_10000BE50()
{
  result = qword_1000ED088;
  if (!qword_1000ED088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED088);
  }

  return result;
}

unint64_t sub_10000BEA8()
{
  result = qword_1000ED090;
  if (!qword_1000ED090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED090);
  }

  return result;
}

uint64_t sub_10000BFA4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10000D978(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10000C060(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000D87C();
  v8 = sub_10000D8D0();
  v9 = sub_10000D924();
  *v6 = v2;
  v6[1] = sub_10000C134;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10000C134()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_10000C23C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000D420();
  *a1 = result;
  return result;
}

uint64_t sub_10000C264(uint64_t a1)
{
  v2 = sub_10000BD00();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t destroy for ShowSuggestionsEntity.UpdateIntent_value(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

void *sub_10000C310(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for ShowSuggestionsEntity.UpdateIntent_value(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;

  return a1;
}

uint64_t *assignWithTake for ShowSuggestionsEntity.UpdateIntent_value(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRNewWidgetViewModel.ShareeIcon(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRNewWidgetViewModel.ShareeIcon(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10000C504@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100004D04(&qword_1000ED148, &qword_1000C44B0);
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = sub_100004D04(&qword_1000ED150, &qword_1000C44B8);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_100004D04(&qword_1000ED158, &qword_1000C44C0);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v27 = &v27 - v13;
  v14 = sub_100004D04(&qword_1000ED160, &qword_1000C44C8);
  v15 = *(v14 - 8);
  v34 = v14;
  v35 = v15;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v28 = &v27 - v17;
  swift_getKeyPath();
  sub_100004D04(&qword_1000ED168, &qword_1000C44D0);
  sub_100004D04(&qword_1000ED170, qword_1000C44D8);
  sub_10000A46C();
  sub_100008478(&qword_1000ED178, &qword_1000ED168, &qword_1000C44D0);
  sub_10000DABC();
  sub_1000C2398();
  sub_1000C19E8();
  v18 = sub_100008478(&qword_1000ED188, &qword_1000ED148, &qword_1000C44B0);
  sub_1000C1AB8();

  (*(v29 + 8))(v4, v1);
  sub_1000C19E8();
  v37 = v1;
  v38 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v27;
  v21 = v30;
  sub_1000C1A78();

  (*(v31 + 8))(v9, v21);
  v37 = v21;
  v38 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = v28;
  v24 = v32;
  sub_1000C1AD8();
  (*(v33 + 8))(v20, v24);
  v37 = v24;
  v38 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  sub_1000C1A98();
  return (*(v35 + 8))(v23, v25);
}

uint64_t sub_10000CA68()
{
  v0 = sub_1000C19E8();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10000CAD8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C0888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C0B68();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000C2628();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000C0898();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C08A8();
  result = sub_1000C1DD8();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

double sub_10000CCEC@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C0888();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C0B68();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000C2628();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000C0898();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_1000C08A8();
  v21[1] = sub_1000C1DD8();
  v21[2] = v15;
  v21[3] = v16 & 1;
  v21[4] = v17;
  v22 = (a1 & 1) == 0;
  sub_1000C1AE8();
  result = *&v23;
  v19 = v24;
  v20 = v25;
  *a2 = v23;
  *(a2 + 16) = v19;
  *(a2 + 32) = v20;
  return result;
}

uint64_t sub_10000CFBC()
{
  v0 = sub_100004D04(&qword_1000ED0C8, &unk_1000CAFB0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_1000C0658();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_1000C0898();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100004D04(&qword_1000ED0C0, &unk_1000C43B0);
  sub_1000C0878();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_1000C0318();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_10000AAC0();
  v28 = sub_1000C0388();
  sub_100004D04(&qword_1000ED0D0, &qword_1000C43C0);
  sub_1000C0878();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_1000C2808();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_1000C0398();
  return v28;
}

uint64_t sub_10000D420()
{
  v0 = sub_1000C0658();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v28 - v7;
  v9 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_1000C0888();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C0B68();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_1000C2628();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_1000C0898();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28[1] = sub_100004D04(&qword_1000ED0C0, &unk_1000C43B0);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_1000C08A8();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 0;
  v25 = sub_1000C0318();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_10000AAC0();
  return sub_1000C0388();
}

unint64_t sub_10000D87C()
{
  result = qword_1000ED0D8;
  if (!qword_1000ED0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED0D8);
  }

  return result;
}

unint64_t sub_10000D8D0()
{
  result = qword_1000ED0E0;
  if (!qword_1000ED0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED0E0);
  }

  return result;
}

unint64_t sub_10000D924()
{
  result = qword_1000ED0E8;
  if (!qword_1000ED0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED0E8);
  }

  return result;
}

uint64_t sub_10000D978(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000D9B0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000DA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000ED140, &unk_1000C8AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000DABC()
{
  result = qword_1000ED180;
  if (!qword_1000ED180)
  {
    sub_100005334(&qword_1000ED170, qword_1000C44D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED180);
  }

  return result;
}

uint64_t sub_10000DB38()
{
  sub_100005334(&qword_1000ED160, &qword_1000C44C8);
  sub_100005334(&qword_1000ED158, &qword_1000C44C0);
  sub_100005334(&qword_1000ED150, &qword_1000C44B8);
  sub_100005334(&qword_1000ED148, &qword_1000C44B0);
  sub_100008478(&qword_1000ED188, &qword_1000ED148, &qword_1000C44B0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000DCDC()
{
  v0 = sub_1000C0888();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C0B68();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1000C2628();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000C08A8();
}

unint64_t sub_10000DF48()
{
  result = qword_1000ED1B0;
  if (!qword_1000ED1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1B0);
  }

  return result;
}

uint64_t sub_10000DF9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x5F544C5541464544;
    }

    else
    {
      v3 = 0x746F6F7223;
    }

    if (v2)
    {
      v4 = 0xEC0000005453494CLL;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001000CB8A0;
    v3 = 0xD000000000000012;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x474E414C5F444441;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 3)
    {
      v4 = 0xEC00000045474155;
    }

    else
    {
      v4 = 0x80000001000CB8C0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x5F544C5541464544;
    }

    else
    {
      v9 = 0x746F6F7223;
    }

    if (a2)
    {
      v8 = 0xEC0000005453494CLL;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x474E414C5F444441;
    v6 = 0x80000001000CB8C0;
    if (a2 == 3)
    {
      v6 = 0xEC00000045474155;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001000CB8A0;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_1000C2CD8();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

Swift::Int sub_10000E150()
{
  v1 = *v0;
  sub_1000C2D68();
  sub_1000C26C8();

  return sub_1000C2D88();
}

uint64_t sub_10000E248()
{
  *v0;
  *v0;
  *v0;
  sub_1000C26C8();
}

Swift::Int sub_10000E32C()
{
  v1 = *v0;
  sub_1000C2D68();
  sub_1000C26C8();

  return sub_1000C2D88();
}

uint64_t sub_10000E420@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011498(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000E450(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746F6F7223;
  v5 = 0x80000001000CB8A0;
  v6 = 0xEC00000045474155;
  v7 = 0x474E414C5F444441;
  if (v2 != 3)
  {
    v7 = 0xD000000000000011;
    v6 = 0x80000001000CB8C0;
  }

  if (v2 == 2)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v8 = v7;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0x5F544C5541464544;
    v3 = 0xEC0000005453494CLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v8;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10000E558()
{
  v1 = *v0;
  v2 = 0x746F6F7223;
  v3 = 0x474E414C5F444441;
  if (v1 != 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 2)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = v3;
  }

  if (*v0)
  {
    v2 = 0x5F544C5541464544;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10000E608@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100011498(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_10000E654()
{
  result = qword_1000ED1C8;
  if (!qword_1000ED1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1C8);
  }

  return result;
}

unint64_t sub_10000E6AC()
{
  result = qword_1000ED1D0;
  if (!qword_1000ED1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1D0);
  }

  return result;
}

unint64_t sub_10000E704()
{
  result = qword_1000ED1D8;
  if (!qword_1000ED1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1D8);
  }

  return result;
}

uint64_t sub_10000E758()
{
  v0 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000C0888();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C0B68();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000C2628();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000C0898();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1000C0728();
  sub_10000D9B0(v15, qword_1000FAA68);
  sub_10000D978(v15, qword_1000FAA68);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000C08A8();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1000C0718();
}

uint64_t sub_10000EA34@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_100004D04(&qword_1000ED0F0, &qword_1000C43C8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v67[-v6];
  v8 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v74 = &v67[-v10];
  v11 = sub_1000C0888();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v67[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1000C0B68();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_1000C2628();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v72 = sub_1000C0898();
  v20 = *(v72 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v72);
  v73 = &v67[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v70 = &v67[-v24];
  v71 = a2;
  v75 = v7;
  if (a1 <= 1u)
  {
    sub_1000C2618();
    sub_1000C0B58();
    if (a1)
    {
      v57 = *(v12 + 104);
      v58 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v68 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v57(v15);
      v69 = v57;
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      (v57)(v15, v58, v11);
      v59 = v74;
      sub_1000C08A8();
      v61 = *(v20 + 56);
      v60 = v20 + 56;
      v61(v59, 0, 1, v72);
      v62 = v75;
      sub_1000C05F8();
      v63 = sub_1000C0608();
      (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
      sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
      v64 = *(v60 + 16);
      v65 = (*(v60 + 24) + 32) & ~*(v60 + 24);
      *(swift_allocObject() + 16) = xmmword_1000C44F0;
      sub_1000C2618();
      sub_1000C0B58();
      v45 = v68;
      v38 = v69;
      v69(v15, v68, v11);
    }

    else
    {
      v36 = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v37 = *(v12 + 104);
      LODWORD(v69) = enum case for LocalizedStringResource.BundleDescription.main(_:);
      v37(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      v37(v15, v36, v11);
      v38 = v37;
      v39 = v74;
      sub_1000C08A8();
      v41 = *(v20 + 56);
      v40 = v20 + 56;
      v41(v39, 0, 1, v72);
      sub_1000C05F8();
      v42 = sub_1000C0608();
      (*(*(v42 - 8) + 56))(v7, 0, 1, v42);
      sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
      v43 = *(v40 + 16);
      v44 = (*(v40 + 24) + 32) & ~*(v40 + 24);
      v72 = 2 * v43;
      *(swift_allocObject() + 16) = xmmword_1000C4500;
      sub_1000C2618();
      sub_1000C0B58();
      v45 = v69;
      v38(v15, v69, v11);
      sub_1000C08A8();
      sub_1000C2618();
      sub_1000C0B58();
      v38(v15, v45, v11);
    }

    sub_1000C08A8();
    sub_1000C2618();
    sub_1000C0B58();
    v38(v15, v45, v11);
    sub_1000C08A8();
    sub_1000C2618();
    sub_1000C0B58();
    v38(v15, v45, v11);
  }

  else if (a1 == 2)
  {
    sub_1000C2618();
    sub_1000C0B58();
    v46 = *(v12 + 104);
    v47 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    LODWORD(v69) = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v46(v15);
    sub_1000C08A8();
    sub_1000C2618();
    sub_1000C0B58();
    (v46)(v15, v47, v11);
    v48 = v74;
    sub_1000C08A8();
    v50 = *(v20 + 56);
    v49 = v20 + 56;
    v50(v48, 0, 1, v72);
    sub_1000C05F8();
    v51 = sub_1000C0608();
    (*(*(v51 - 8) + 56))(v7, 0, 1, v51);
    sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
    v52 = *(v49 + 16);
    v53 = (*(v49 + 24) + 32) & ~*(v49 + 24);
    *(swift_allocObject() + 16) = xmmword_1000C3590;
    sub_1000C2618();
    sub_1000C0B58();
    v54 = v69;
    (v46)(v15, v69, v11);
    sub_1000C08A8();
    sub_1000C2618();
    sub_1000C0B58();
    (v46)(v15, v54, v11);
  }

  else
  {
    sub_1000C2618();
    sub_1000C0B58();
    v25 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v26 = *(v12 + 104);
    v27 = v11;
    v26(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
    v28 = v26;
    sub_1000C08A8();
    sub_1000C2618();
    sub_1000C0B58();
    v26(v15, v25, v27);
    if (a1 == 3)
    {
      v29 = v74;
      sub_1000C08A8();
      v31 = *(v20 + 56);
      v30 = v20 + 56;
      v31(v29, 0, 1, v72);
    }

    else
    {
      v55 = v74;
      sub_1000C08A8();
      v56 = *(v20 + 56);
      v30 = v20 + 56;
      v56(v55, 0, 1, v72);
    }

    v32 = v75;
    sub_1000C05F8();
    v33 = sub_1000C0608();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    sub_100004D04(&qword_1000ED0F8, &qword_1000C43D0);
    v34 = *(v30 + 16);
    v35 = (*(v30 + 24) + 32) & ~*(v30 + 24);
    *(swift_allocObject() + 16) = xmmword_1000C3590;
    sub_1000C2618();
    sub_1000C0B58();
    v28(v15, v25, v27);
    sub_1000C08A8();
    sub_1000C2618();
    sub_1000C0B58();
    v28(v15, v25, v27);
  }

  sub_1000C08A8();
  return sub_1000C0618();
}

uint64_t sub_10000FBA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DCD8;

  return sub_10001182C(a1);
}

uint64_t sub_10000FC50(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000DCA4;

  return sub_1000114E4();
}

unint64_t sub_10000FCF4()
{
  result = qword_1000ED1E0;
  if (!qword_1000ED1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1E0);
  }

  return result;
}

uint64_t sub_10000FD48(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000DCA4;

  return sub_100011E04();
}

uint64_t sub_10000FDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10000A8F8;

  return (sub_100012000)(a2, a3);
}

unint64_t sub_10000FEAC()
{
  result = qword_1000ED1E8;
  if (!qword_1000ED1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1E8);
  }

  return result;
}

unint64_t sub_10000FF04()
{
  result = qword_1000ED1F0;
  if (!qword_1000ED1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1F0);
  }

  return result;
}

unint64_t sub_10000FF5C()
{
  result = qword_1000ED1F8;
  if (!qword_1000ED1F8)
  {
    sub_100005334(&qword_1000ED200, qword_1000C4710);
    sub_10000FF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED1F8);
  }

  return result;
}

uint64_t sub_10000FFE0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000FCF4();
  *v6 = v2;
  v6[1] = sub_10000B028;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100010094(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100010138;

  return sub_100011B74();
}

uint64_t sub_100010138(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_10001024C()
{
  result = qword_1000ED208;
  if (!qword_1000ED208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED208);
  }

  return result;
}

uint64_t sub_1000102A0()
{
  v0 = sub_100004D04(&qword_1000ED2A8, &qword_1000C4CF8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100004D04(&qword_1000ED2B0, &qword_1000C4D00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10000E704();
  sub_1000C06C8();
  v9._object = 0x80000001000CCDF0;
  v9._countAndFlagsBits = 0xD000000000000042;
  sub_1000C06B8(v9);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000C06A8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000C06B8(v10);
  return sub_1000C06D8();
}

uint64_t sub_100010464()
{
  v0 = qword_1000ED190;

  return v0;
}

unint64_t sub_10001049C()
{
  result = qword_1000ED210;
  if (!qword_1000ED210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED210);
  }

  return result;
}

unint64_t sub_1000104F4()
{
  result = qword_1000ED218;
  if (!qword_1000ED218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED218);
  }

  return result;
}

unint64_t sub_10001054C()
{
  result = qword_1000ED220;
  if (!qword_1000ED220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED220);
  }

  return result;
}

unint64_t sub_1000105A4()
{
  result = qword_1000ED228;
  if (!qword_1000ED228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED228);
  }

  return result;
}

uint64_t sub_1000105F8()
{
  sub_1000127C0();
  v1 = sub_1000C0668();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100010668()
{
  result = qword_1000ED230;
  if (!qword_1000ED230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED230);
  }

  return result;
}

unint64_t sub_1000106C0()
{
  result = qword_1000ED238;
  if (!qword_1000ED238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED238);
  }

  return result;
}

unint64_t sub_100010718()
{
  result = qword_1000ED240;
  if (!qword_1000ED240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED240);
  }

  return result;
}

unint64_t sub_100010770()
{
  result = qword_1000ED248;
  if (!qword_1000ED248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED248);
  }

  return result;
}

uint64_t sub_10001084C(uint64_t a1)
{
  v2 = sub_10000E704();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001089C()
{
  result = qword_1000ED260;
  if (!qword_1000ED260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED260);
  }

  return result;
}

uint64_t sub_1000108F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000B028;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000109BC(uint64_t a1)
{
  v2 = sub_100010718();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100010A0C()
{
  result = qword_1000ED268;
  if (!qword_1000ED268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED268);
  }

  return result;
}

uint64_t sub_100010A64()
{
  v0 = sub_1000C0898();
  sub_10000D9B0(v0, qword_1000FAA80);
  sub_10000D978(v0, qword_1000FAA80);
  return sub_1000C0878();
}

uint64_t sub_100010AC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_1000C0888();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000C0B68();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000C2628();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1000C0898();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_1000C08A8();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_1000C0588();
  v18 = sub_1000C0578();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_100010DF8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000C0368();
  *a1 = v5;
  return result;
}

uint64_t sub_100010E34(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_1000C0378();
}

void (*sub_100010E6C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000C0358();
  return sub_10000BCB4;
}

unint64_t sub_100010EE0()
{
  result = qword_1000ED270;
  if (!qword_1000ED270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED270);
  }

  return result;
}

uint64_t sub_100010F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012718();
  v5 = sub_1000127C0();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100010FA0()
{
  v0 = qword_1000ED1A0;

  return v0;
}

unint64_t sub_100010FDC()
{
  result = qword_1000ED278;
  if (!qword_1000ED278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED278);
  }

  return result;
}

unint64_t sub_100011034()
{
  result = qword_1000ED280;
  if (!qword_1000ED280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED280);
  }

  return result;
}

uint64_t sub_100011110@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10000D978(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000111BC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100012718();
  v8 = sub_10001276C();
  v9 = sub_1000127C0();
  *v6 = v2;
  v6[1] = sub_10000C134;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100011290@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000122B8();
  *a1 = result;
  return result;
}

uint64_t sub_1000112B8(uint64_t a1)
{
  v2 = sub_100010EE0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100011338(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1000113C8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100011498(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000E77B0;
  v6._object = a2;
  v4 = sub_1000C2C88(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000114E4()
{
  v1 = sub_1000C0B68();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000115AC, 0, 0);
}

uint64_t sub_1000115AC()
{
  v1 = 0;
  v2 = (v0[3] + 8);
  do
  {
    v3 = *(&off_1000E7870 + v1 + 32);
    if (v3 < 3)
    {
      goto LABEL_4;
    }

    if (v3 == 3)
    {
      v6 = v0[5];
      sub_1000C0B58();
      sub_1000C1088();
      sub_1000C0B08();
      v8 = sub_1000C1078();
      v9 = v0[5];
    }

    else
    {
      v7 = v0[4];
      sub_1000C0B58();
      sub_1000C1088();
      sub_1000C0B08();
      v8 = sub_1000C1078();
      v9 = v0[4];
    }

    (*v2)(v9, v0[2]);

    if (v8)
    {
LABEL_4:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000BA320(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
      }

      v5 = *(&_swiftEmptyArrayStorage + 2);
      v4 = *(&_swiftEmptyArrayStorage + 3);
      if (v5 >= v4 >> 1)
      {
        sub_1000BA320((v4 > 1), v5 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
      *(&_swiftEmptyArrayStorage + v5 + 32) = v3;
    }

    ++v1;
  }

  while (v1 != 5);
  v10 = *(&_swiftEmptyArrayStorage + 2);
  if (v10)
  {
    sub_1000BA300(0, v10, 0);
    v11 = *(&_swiftEmptyArrayStorage + 2);
    v12 = 32;
    do
    {
      v13 = *(&_swiftEmptyArrayStorage + v12);
      v14 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v14 >> 1)
      {
        sub_1000BA300((v14 > 1), v11 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      *(&_swiftEmptyArrayStorage + v11 + 32) = v13;
      ++v12;
      ++v11;
      --v10;
    }

    while (v10);
  }

  v16 = v0[4];
  v15 = v0[5];

  v17 = v0[1];

  return v17(&_swiftEmptyArrayStorage);
}

uint64_t sub_10001182C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000C0B68();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000118F8, 0, 0);
}

uint64_t sub_1000118F8()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = (v0[4] + 8);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = v6 == 3;
      if (v6 < 3)
      {
        goto LABEL_5;
      }

      if (v7)
      {
        v10 = v0[6];
        sub_1000C0B58();
        sub_1000C1088();
        sub_1000C0B08();
        v12 = sub_1000C1078();
        v13 = v0[6];
      }

      else
      {
        v11 = v0[5];
        sub_1000C0B58();
        sub_1000C1088();
        sub_1000C0B08();
        v12 = sub_1000C1078();
        v13 = v0[5];
      }

      (*v4)(v13, v0[3]);

      if (v12)
      {
LABEL_5:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000BA320(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v9 = *(&_swiftEmptyArrayStorage + 2);
        v8 = *(&_swiftEmptyArrayStorage + 3);
        if (v9 >= v8 >> 1)
        {
          sub_1000BA320((v8 > 1), v9 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v9 + 1;
        *(&_swiftEmptyArrayStorage + v9 + 32) = v5;
      }

      --v2;
    }

    while (v2);
  }

  v14 = *(&_swiftEmptyArrayStorage + 2);
  if (v14)
  {
    sub_1000BA300(0, v14, 0);
    v15 = *(&_swiftEmptyArrayStorage + 2);
    v16 = 32;
    do
    {
      v17 = *(&_swiftEmptyArrayStorage + v16);
      v18 = *(&_swiftEmptyArrayStorage + 3);
      if (v15 >= v18 >> 1)
      {
        sub_1000BA300((v18 > 1), v15 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v15 + 1;
      *(&_swiftEmptyArrayStorage + v15 + 32) = v17;
      ++v16;
      ++v15;
      --v14;
    }

    while (v14);
  }

  v20 = v0[5];
  v19 = v0[6];

  v21 = v0[1];

  return v21(&_swiftEmptyArrayStorage);
}

uint64_t sub_100011B74()
{
  v1 = sub_1000C0B68();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_100011C3C, 0, 0);
}

uint64_t sub_100011C3C()
{
  v1 = 0;
  v2 = (v0[3] + 8);
  do
  {
    v3 = *(&off_1000E7898 + v1 + 32);
    if (v3 == 3)
    {
      v5 = v0[5];
      sub_1000C0B58();
      sub_1000C1088();
      sub_1000C0B08();
      LOBYTE(v5) = sub_1000C1078();
      (*v2)(v0[5], v0[2]);

      if (v5)
      {
        v3 = 3;
        goto LABEL_10;
      }
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_10;
      }

      v4 = v0[4];
      sub_1000C0B58();
      sub_1000C1088();
      sub_1000C0B08();
      LOBYTE(v4) = sub_1000C1078();
      (*v2)(v0[4], v0[2]);

      if (v4)
      {
        v3 = 4;
        goto LABEL_10;
      }
    }

    ++v1;
  }

  while (v1 != 5);
  v3 = 5;
LABEL_10:
  v7 = v0[4];
  v6 = v0[5];

  v8 = v0[1];

  return v8(v3);
}

uint64_t sub_100011E20()
{
  sub_1000BA300(0, 5, 0);
  v2 = *(&_swiftEmptyArrayStorage + 2);
  v1 = *(&_swiftEmptyArrayStorage + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1000BA300((v1 > 1), v2 + 1, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v4;
  *(&_swiftEmptyArrayStorage + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_1000BA300((v1 > 1), v2 + 2, 1);
    v1 = *(&_swiftEmptyArrayStorage + 3);
    v3 = v1 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v5;
  *(&_swiftEmptyArrayStorage + v4 + 32) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_1000BA300((v1 > 1), v2 + 3, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v6;
  *(&_swiftEmptyArrayStorage + v5 + 32) = 2;
  v7 = *(&_swiftEmptyArrayStorage + 3);
  v8 = v7 >> 1;
  v9 = v2 + 4;
  if ((v7 >> 1) < (v2 + 4))
  {
    sub_1000BA300((v7 > 1), v2 + 4, 1);
    v7 = *(&_swiftEmptyArrayStorage + 3);
    v8 = v7 >> 1;
  }

  *(&_swiftEmptyArrayStorage + 2) = v9;
  *(&_swiftEmptyArrayStorage + v6 + 32) = 3;
  if (v8 < (v2 + 5))
  {
    sub_1000BA300((v7 > 1), v2 + 5, 1);
  }

  *(&_swiftEmptyArrayStorage + 2) = v2 + 5;
  *(&_swiftEmptyArrayStorage + v9 + 32) = 4;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100012000(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(*(sub_1000C0898() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100012090, 0, 0);
}

uint64_t sub_100012090()
{
  for (i = 0; i != 5; ++i)
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    v7 = *(&off_1000E78C0 + i + 32);
    sub_10000DCDC();
    v0[2] = sub_1000C2698();
    v0[3] = v8;
    v0[4] = v6;
    v0[5] = v5;
    sub_100012814();
    LOBYTE(v4) = sub_1000C2A68();

    if (v4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000BA320(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
      }

      v3 = *(&_swiftEmptyArrayStorage + 2);
      v2 = *(&_swiftEmptyArrayStorage + 3);
      if (v3 >= v2 >> 1)
      {
        sub_1000BA320((v2 > 1), v3 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v3 + 1;
      *(&_swiftEmptyArrayStorage + v3 + 32) = v7;
    }
  }

  v9 = *(&_swiftEmptyArrayStorage + 2);
  if (v9)
  {
    sub_1000BA300(0, v9, 0);
    v10 = &_swiftEmptyArrayStorage;
    v11 = *(&_swiftEmptyArrayStorage + 2);
    v12 = 32;
    do
    {
      v13 = *(&_swiftEmptyArrayStorage + v12);
      v14 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v14 >> 1)
      {
        sub_1000BA300((v14 > 1), v11 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      *(&_swiftEmptyArrayStorage + v11 + 32) = v13;
      ++v12;
      ++v11;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = &off_1000E78E8;
  }

  v15 = v0[8];

  v16 = v0[1];

  return v16(v10);
}

uint64_t sub_1000122B8()
{
  v0 = sub_1000C0658();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004D04(&qword_1000ED0B0, &unk_1000C43A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_100004D04(&qword_1000ED0B8, &qword_1000CB660);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_1000C0888();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C0B68();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_1000C2628();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_1000C0898();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28 = sub_100004D04(&qword_1000ED288, &qword_1000C4CF0);
  sub_1000C2618();
  sub_1000C0B58();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_1000C08A8();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 5;
  v25 = sub_1000C0318();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_10000E704();
  return sub_1000C0388();
}

unint64_t sub_100012718()
{
  result = qword_1000ED290;
  if (!qword_1000ED290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED290);
  }

  return result;
}

unint64_t sub_10001276C()
{
  result = qword_1000ED298;
  if (!qword_1000ED298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED298);
  }

  return result;
}

unint64_t sub_1000127C0()
{
  result = qword_1000ED2A0;
  if (!qword_1000ED2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED2A0);
  }

  return result;
}

unint64_t sub_100012814()
{
  result = qword_1000ED2B8;
  if (!qword_1000ED2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED2B8);
  }

  return result;
}

uint64_t sub_100012888(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0x80000001000CCEE0;
  v10._countAndFlagsBits = 0x7462755320646C25;
  v10._object = 0xEC000000736B7361;
  v8._countAndFlagsBits = 0xD000000000000029;
  v8._object = 0x80000001000CCE90;
  v9.value._object = 0x80000001000CCEC0;
  v9.value._countAndFlagsBits = 0xD000000000000011;
  v3.super.isa = v2;
  sub_1000C0838(v8, v9, v3, v10, v7);

  sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C3590;
  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = a1;
  v5 = sub_1000C2648();

  return v5;
}

uint64_t sub_1000129D8(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0x80000001000CCF50;
  v10._countAndFlagsBits = 0x696D657220646C25;
  v10._object = 0xED0000737265646ELL;
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x80000001000CCF20;
  v9.value._object = 0x80000001000CCEC0;
  v9.value._countAndFlagsBits = 0xD000000000000011;
  v3.super.isa = v2;
  sub_1000C0838(v8, v9, v3, v10, v7);

  sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C3590;
  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = a1;
  v5 = sub_1000C2648();

  return v5;
}

Swift::Int sub_100012B40()
{
  v1 = *v0;
  sub_1000C2D68();
  sub_1000C2D78(v1);
  return sub_1000C2D88();
}

Swift::Int sub_100012BB4()
{
  v1 = *v0;
  sub_1000C2D68();
  sub_1000C2D78(v1);
  return sub_1000C2D88();
}

void *sub_100012C08()
{
  v0 = sub_1000C2378();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _swiftEmptyArrayStorage;
  sub_1000BA340(0, 3, 0);
  v5 = v16;
  v6 = enum case for WidgetFamily.systemLarge(_:);
  v7 = *(v1 + 104);
  HIDWORD(v15) = enum case for WidgetFamily.systemMedium(_:);
  v7(v4, enum case for WidgetFamily.systemSmall(_:), v0);
  v16 = v5;
  v9 = v5[2];
  v8 = v5[3];
  if (v9 >= v8 >> 1)
  {
    sub_1000BA340(v8 > 1, v9 + 1, 1);
    v5 = v16;
  }

  v5[2] = v9 + 1;
  (*(v1 + 32))(v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v9, v4, v0);
  (*(v1 + 104))(v4, HIDWORD(v15), v0);
  v16 = v5;
  v11 = v5[2];
  v10 = v5[3];
  if (v11 >= v10 >> 1)
  {
    sub_1000BA340(v10 > 1, v11 + 1, 1);
    v5 = v16;
  }

  v5[2] = v11 + 1;
  (*(v1 + 32))(v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v4, v0);
  (*(v1 + 104))(v4, v6, v0);
  v16 = v5;
  v13 = v5[2];
  v12 = v5[3];
  if (v13 >= v12 >> 1)
  {
    sub_1000BA340(v12 > 1, v13 + 1, 1);
    v5 = v16;
  }

  v5[2] = v13 + 1;
  (*(v1 + 32))(v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13, v4, v0);
  return v5;
}

uint64_t getEnumTagSinglePayload for TTRSupportedSystemWidgetFamily(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TTRSupportedSystemWidgetFamily(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100013048()
{
  result = qword_1000ED2C8;
  if (!qword_1000ED2C8)
  {
    sub_100005334(&qword_1000ED2D0, qword_1000C4D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED2C8);
  }

  return result;
}

unint64_t sub_1000130B0()
{
  result = qword_1000ED2D8;
  if (!qword_1000ED2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED2D8);
  }

  return result;
}

char *sub_100013104(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v22 = *a2;
    *v4 = *a2;
    v4 = (v22 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v6;
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    v7 = type metadata accessor for TTRNewWidgetViewModel(0);
    v8 = v7[7];
    v9 = sub_1000C0E58();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], a2 + v8, v9);
    v11 = v7[8];
    v12 = &v4[v11];
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    *(v12 + 1) = v14;
    v15 = v7[9];
    v16 = &v4[v15];
    v17 = (a2 + v15);
    v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v19 = *(v18 - 1);
    v20 = *(v19 + 48);

    if (v20(v17, 1, v18))
    {
      v21 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
    }

    else
    {
      v64 = v19;
      v23 = *v17;
      v24 = v17[1];
      *v16 = *v17;
      v16[1] = v24;
      v62 = v18[6];
      v25 = sub_1000C0818();
      v59 = *(v25 - 8);
      v60 = *(v59 + 48);
      v26 = v23;
      v27 = v24;
      if (v60(v17 + v62, 1, v25))
      {
        v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v16 + v62, v17 + v62, *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v59 + 16))(v16 + v62, v17 + v62, v25);
        (*(v59 + 56))(v16 + v62, 0, 1, v25);
      }

      v29 = v18[7];
      v30 = sub_1000C0938();
      (*(*(v30 - 8) + 16))(v16 + v29, v17 + v29, v30);
      v31 = v18[8];
      v32 = *(v17 + v31);
      *(v16 + v31) = v32;
      *(v16 + v18[9]) = *(v17 + v18[9]);
      *(v16 + v18[10]) = *(v17 + v18[10]);
      *(v16 + v18[11]) = *(v17 + v18[11]);
      v33 = *(v64 + 56);
      v34 = v32;
      v33(v16, 0, 1, v18);
    }

    v35 = v7[10];
    v65 = *(a2 + v35);
    *&v4[v35] = v65;
    v36 = v7[11];
    v37 = &v4[v36];
    v38 = (a2 + v36);
    v39 = v38[1];
    *v37 = *v38;
    *(v37 + 1) = v39;
    v40 = v7[12];
    v63 = *(a2 + v40);
    *&v4[v40] = v63;
    v41 = v7[13];
    v42 = &v4[v41];
    v43 = (a2 + v41);
    v44 = v43[1];
    *v42 = *v43;
    *(v42 + 1) = v44;
    v45 = v7[14];
    v46 = &v4[v45];
    v47 = (a2 + v45);
    v48 = v47[1];
    *v46 = *v47;
    *(v46 + 1) = v48;
    v4[v7[15]] = *(a2 + v7[15]);
    v49 = v7[16];
    v50 = &v4[v49];
    v51 = (a2 + v49);
    v52 = v51[1];
    *v50 = *v51;
    *(v50 + 1) = v52;
    *&v4[v7[17]] = *(a2 + v7[17]);
    v53 = v7[18];
    v54 = sub_1000C0938();
    v61 = *(*(v54 - 8) + 16);
    v55 = v65;

    v56 = v63;

    v61(&v4[v53], a2 + v53, v54);
    *&v4[v7[19]] = *(a2 + v7[19]);
    v4[v7[20]] = *(a2 + v7[20]);
    v57 = *(a3 + 24);
    *&v4[*(a3 + 20)] = *(a2 + *(a3 + 20));
    *&v4[v57] = *(a2 + v57);
  }

  return v4;
}

uint64_t sub_10001359C(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 32);

  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = v4[7];
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = *(a1 + v4[8] + 8);

  v8 = (a1 + v4[9]);
  v9 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {

    v10 = v9[6];
    v11 = sub_1000C0818();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v8 + v10, 1, v11))
    {
      (*(v12 + 8))(v8 + v10, v11);
    }

    v13 = v9[7];
    v14 = sub_1000C0938();
    (*(*(v14 - 8) + 8))(v8 + v13, v14);
  }

  v15 = *(a1 + v4[11] + 8);

  v16 = *(a1 + v4[13] + 8);

  v17 = *(a1 + v4[14] + 8);

  v18 = *(a1 + v4[16] + 8);

  v19 = *(a1 + v4[17]);

  v20 = v4[18];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 8))(a1 + v20, v21);
  v22 = *(a1 + v4[19]);
}

uint64_t sub_10001380C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = v6[8];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  v14 = v6[9];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);

  if (v19(v16, 1, v17))
  {
    v20 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v20 - 8) + 64));
  }

  else
  {
    v62 = v18;
    v21 = *v16;
    v22 = v16[1];
    *v15 = *v16;
    v15[1] = v22;
    v60 = v17[6];
    v23 = sub_1000C0818();
    v57 = *(v23 - 8);
    v58 = *(v57 + 48);
    v24 = v21;
    v25 = v22;
    if (v58(v16 + v60, 1, v23))
    {
      v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v15 + v60, v16 + v60, *(*(v26 - 8) + 64));
    }

    else
    {
      (*(v57 + 16))(v15 + v60, v16 + v60, v23);
      (*(v57 + 56))(v15 + v60, 0, 1, v23);
    }

    v27 = v17[7];
    v28 = sub_1000C0938();
    (*(*(v28 - 8) + 16))(v15 + v27, v16 + v27, v28);
    v29 = v17[8];
    v30 = *(v16 + v29);
    *(v15 + v29) = v30;
    *(v15 + v17[9]) = *(v16 + v17[9]);
    *(v15 + v17[10]) = *(v16 + v17[10]);
    *(v15 + v17[11]) = *(v16 + v17[11]);
    v31 = *(v62 + 56);
    v32 = v30;
    v31(v15, 0, 1, v17);
  }

  v33 = v6[10];
  v63 = *(a2 + v33);
  *(a1 + v33) = v63;
  v34 = v6[11];
  v35 = (a1 + v34);
  v36 = (a2 + v34);
  v37 = v36[1];
  *v35 = *v36;
  v35[1] = v37;
  v38 = v6[12];
  v61 = *(a2 + v38);
  *(a1 + v38) = v61;
  v39 = v6[13];
  v40 = (a1 + v39);
  v41 = (a2 + v39);
  v42 = v41[1];
  *v40 = *v41;
  v40[1] = v42;
  v43 = v6[14];
  v44 = (a1 + v43);
  v45 = (a2 + v43);
  v46 = v45[1];
  *v44 = *v45;
  v44[1] = v46;
  *(a1 + v6[15]) = *(a2 + v6[15]);
  v47 = v6[16];
  v48 = (a1 + v47);
  v49 = (a2 + v47);
  v50 = v49[1];
  *v48 = *v49;
  v48[1] = v50;
  *(a1 + v6[17]) = *(a2 + v6[17]);
  v51 = v6[18];
  v52 = sub_1000C0938();
  v59 = *(*(v52 - 8) + 16);
  v53 = v63;

  v54 = v61;

  v59(a1 + v51, a2 + v51, v52);
  *(a1 + v6[19]) = *(a2 + v6[19]);
  *(a1 + v6[20]) = *(a2 + v6[20]);
  v55 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v55) = *(a2 + v55);

  return a1;
}

char *sub_100013C58(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  v6 = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);

  v7 = type metadata accessor for TTRNewWidgetViewModel(0);
  v8 = v7[7];
  v9 = sub_1000C0E58();
  (*(*(v9 - 8) + 24))(&a1[v8], &a2[v8], v9);
  v10 = v7[8];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *v11 = *v12;
  v13 = *(v11 + 1);
  *(v11 + 1) = *(v12 + 1);

  v14 = v7[9];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);
  v20 = v19(v15, 1, v17);
  v21 = v19(v16, 1, v17);
  if (!v20)
  {
    if (v21)
    {
      sub_10001A504(v15, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v28 = *v16;
    v29 = *v15;
    *v15 = *v16;
    v30 = v28;

    v31 = *(v15 + 1);
    v32 = *(v16 + 1);
    *(v15 + 1) = v32;
    v33 = v32;

    v34 = v17[6];
    v35 = sub_1000C0818();
    v86 = *(v35 - 8);
    v36 = *(v86 + 48);
    v88 = v36(&v15[v34], 1, v35);
    v37 = v36(&v16[v34], 1, v35);
    if (v88)
    {
      if (!v37)
      {
        (*(v86 + 16))(&v15[v34], &v16[v34], v35);
        (*(v86 + 56))(&v15[v34], 0, 1, v35);
        goto LABEL_18;
      }

      v38 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v39 = &v15[v34];
      v40 = &v16[v34];
    }

    else
    {
      if (!v37)
      {
        (*(v86 + 24))(&v15[v34], &v16[v34], v35);
        goto LABEL_18;
      }

      (*(v86 + 8))(&v15[v34], v35);
      v38 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v39 = &v15[v34];
      v40 = &v16[v34];
    }

    memcpy(v39, v40, v38);
LABEL_18:
    v47 = v17[7];
    v48 = sub_1000C0938();
    (*(*(v48 - 8) + 24))(&v15[v47], &v16[v47], v48);
    v49 = v17[8];
    v50 = *&v15[v49];
    v51 = *&v16[v49];
    *&v15[v49] = v51;
    v52 = v51;

    *&v15[v17[9]] = *&v16[v17[9]];
    v15[v17[10]] = v16[v17[10]];
    v15[v17[11]] = v16[v17[11]];
    goto LABEL_19;
  }

  if (v21)
  {
LABEL_7:
    v27 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v27 - 8) + 64));
    goto LABEL_19;
  }

  v22 = *v16;
  *v15 = *v16;
  v87 = *(v16 + 1);
  *(v15 + 1) = v87;
  v89 = v17[6];
  v23 = sub_1000C0818();
  v84 = *(v23 - 8);
  v85 = *(v84 + 48);
  v24 = v22;
  v25 = v87;
  if (v85(&v16[v89], 1, v23))
  {
    v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v15[v89], &v16[v89], *(*(v26 - 8) + 64));
  }

  else
  {
    (*(v84 + 16))(&v15[v89], &v16[v89], v23);
    (*(v84 + 56))(&v15[v89], 0, 1, v23);
  }

  v41 = v17[7];
  v42 = sub_1000C0938();
  (*(*(v42 - 8) + 16))(&v15[v41], &v16[v41], v42);
  v43 = v17[8];
  v44 = *&v16[v43];
  *&v15[v43] = v44;
  *&v15[v17[9]] = *&v16[v17[9]];
  v15[v17[10]] = v16[v17[10]];
  v15[v17[11]] = v16[v17[11]];
  v45 = *(v18 + 56);
  v46 = v44;
  v45(v15, 0, 1, v17);
LABEL_19:
  v53 = v7[10];
  v54 = *&a2[v53];
  v55 = *&a1[v53];
  *&a1[v53] = v54;
  v56 = v54;

  v57 = v7[11];
  v58 = &a1[v57];
  v59 = &a2[v57];
  *v58 = *v59;
  v60 = *(v58 + 1);
  *(v58 + 1) = *(v59 + 1);

  v61 = v7[12];
  v62 = *&a1[v61];
  v63 = *&a2[v61];
  *&a1[v61] = v63;
  v64 = v63;

  v65 = v7[13];
  v66 = &a1[v65];
  v67 = &a2[v65];
  *v66 = *v67;
  v68 = *(v66 + 1);
  *(v66 + 1) = *(v67 + 1);

  v69 = v7[14];
  v70 = &a1[v69];
  v71 = &a2[v69];
  *v70 = *v71;
  v72 = *(v70 + 1);
  *(v70 + 1) = *(v71 + 1);

  a1[v7[15]] = a2[v7[15]];
  v73 = v7[16];
  v74 = &a1[v73];
  v75 = &a2[v73];
  *v74 = *v75;
  v76 = *(v74 + 1);
  *(v74 + 1) = *(v75 + 1);

  v77 = v7[17];
  v78 = *&a1[v77];
  *&a1[v77] = *&a2[v77];

  v79 = v7[18];
  v80 = sub_1000C0938();
  (*(*(v80 - 8) + 24))(&a1[v79], &a2[v79], v80);
  v81 = v7[19];
  v82 = *&a1[v81];
  *&a1[v81] = *&a2[v81];

  a1[v7[20]] = a2[v7[20]];
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

uint64_t sub_10001439C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  *(a1 + v6[8]) = *(a2 + v6[8]);
  v9 = v6[9];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v11, 1, v12))
  {
    v14 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v10, v11, *(*(v14 - 8) + 64));
  }

  else
  {
    v26 = a3;
    v15 = v11[1];
    *v10 = *v11;
    v10[1] = v15;
    v16 = v12[6];
    v17 = sub_1000C0818();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v11 + v16, 1, v17))
    {
      v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v10 + v16, v11 + v16, *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v18 + 32))(v10 + v16, v11 + v16, v17);
      (*(v18 + 56))(v10 + v16, 0, 1, v17);
    }

    v20 = v12[7];
    v21 = sub_1000C0938();
    (*(*(v21 - 8) + 32))(v10 + v20, v11 + v20, v21);
    *(v10 + v12[8]) = *(v11 + v12[8]);
    *(v10 + v12[9]) = *(v11 + v12[9]);
    *(v10 + v12[10]) = *(v11 + v12[10]);
    *(v10 + v12[11]) = *(v11 + v12[11]);
    (*(v13 + 56))(v10, 0, 1, v12);
    a3 = v26;
  }

  *(a1 + v6[10]) = *(a2 + v6[10]);
  *(a1 + v6[11]) = *(a2 + v6[11]);
  *(a1 + v6[12]) = *(a2 + v6[12]);
  *(a1 + v6[13]) = *(a2 + v6[13]);
  *(a1 + v6[14]) = *(a2 + v6[14]);
  *(a1 + v6[15]) = *(a2 + v6[15]);
  *(a1 + v6[16]) = *(a2 + v6[16]);
  *(a1 + v6[17]) = *(a2 + v6[17]);
  v22 = v6[18];
  v23 = sub_1000C0938();
  (*(*(v23 - 8) + 32))(a1 + v22, a2 + v22, v23);
  *(a1 + v6[19]) = *(a2 + v6[19]);
  *(a1 + v6[20]) = *(a2 + v6[20]);
  v24 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v24) = *(a2 + v24);
  return a1;
}

uint64_t sub_10001473C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v6 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v8 = type metadata accessor for TTRNewWidgetViewModel(0);
  v9 = v8[7];
  v10 = sub_1000C0E58();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = v8[8];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v15 = *v13;
  v14 = v13[1];
  v16 = v12[1];
  *v12 = v15;
  v12[1] = v14;

  v17 = v8[9];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v21 = *(v20 - 1);
  v22 = *(v21 + 48);
  v23 = v22(v18, 1, v20);
  v24 = v22(v19, 1, v20);
  if (!v23)
  {
    if (v24)
    {
      sub_10001A504(v18, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v31 = *v18;
    *v18 = *v19;

    v32 = *(v18 + 1);
    *(v18 + 1) = *(v19 + 1);

    v33 = v20[6];
    v34 = sub_1000C0818();
    v82 = *(v34 - 8);
    v35 = *(v82 + 48);
    v83 = v35(&v18[v33], 1, v34);
    v36 = v35(&v19[v33], 1, v34);
    if (v83)
    {
      if (!v36)
      {
        (*(v82 + 32))(&v18[v33], &v19[v33], v34);
        (*(v82 + 56))(&v18[v33], 0, 1, v34);
        goto LABEL_18;
      }

      v37 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v38 = &v18[v33];
      v39 = &v19[v33];
    }

    else
    {
      if (!v36)
      {
        (*(v82 + 40))(&v18[v33], &v19[v33], v34);
        goto LABEL_18;
      }

      (*(v82 + 8))(&v18[v33], v34);
      v37 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v38 = &v18[v33];
      v39 = &v19[v33];
    }

    memcpy(v38, v39, v37);
LABEL_18:
    v42 = v20[7];
    v43 = sub_1000C0938();
    (*(*(v43 - 8) + 40))(&v18[v42], &v19[v42], v43);
    v44 = v20[8];
    v45 = *&v18[v44];
    *&v18[v44] = *&v19[v44];

    *&v18[v20[9]] = *&v19[v20[9]];
    v18[v20[10]] = v19[v20[10]];
    v18[v20[11]] = v19[v20[11]];
    goto LABEL_19;
  }

  if (v24)
  {
LABEL_7:
    v30 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v18, v19, *(*(v30 - 8) + 64));
    goto LABEL_19;
  }

  v25 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v25;
  v26 = v20[6];
  v27 = sub_1000C0818();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(&v19[v26], 1, v27))
  {
    v29 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v18[v26], &v19[v26], *(*(v29 - 8) + 64));
  }

  else
  {
    (*(v28 + 32))(&v18[v26], &v19[v26], v27);
    (*(v28 + 56))(&v18[v26], 0, 1, v27);
  }

  v40 = v20[7];
  v41 = sub_1000C0938();
  (*(*(v41 - 8) + 32))(&v18[v40], &v19[v40], v41);
  *&v18[v20[8]] = *&v19[v20[8]];
  *&v18[v20[9]] = *&v19[v20[9]];
  v18[v20[10]] = v19[v20[10]];
  v18[v20[11]] = v19[v20[11]];
  (*(v21 + 56))(v18, 0, 1, v20);
LABEL_19:
  v46 = v8[10];
  v47 = *(a1 + v46);
  *(a1 + v46) = *(a2 + v46);

  v48 = v8[11];
  v49 = (a1 + v48);
  v50 = (a2 + v48);
  v52 = *v50;
  v51 = v50[1];
  v53 = v49[1];
  *v49 = v52;
  v49[1] = v51;

  v54 = v8[12];
  v55 = *(a1 + v54);
  *(a1 + v54) = *(a2 + v54);

  v56 = v8[13];
  v57 = (a1 + v56);
  v58 = (a2 + v56);
  v60 = *v58;
  v59 = v58[1];
  v61 = v57[1];
  *v57 = v60;
  v57[1] = v59;

  v62 = v8[14];
  v63 = (a1 + v62);
  v64 = (a2 + v62);
  v66 = *v64;
  v65 = v64[1];
  v67 = v63[1];
  *v63 = v66;
  v63[1] = v65;

  *(a1 + v8[15]) = *(a2 + v8[15]);
  v68 = v8[16];
  v69 = (a1 + v68);
  v70 = (a2 + v68);
  v72 = *v70;
  v71 = v70[1];
  v73 = v69[1];
  *v69 = v72;
  v69[1] = v71;

  v74 = v8[17];
  v75 = *(a1 + v74);
  *(a1 + v74) = *(a2 + v74);

  v76 = v8[18];
  v77 = sub_1000C0938();
  (*(*(v77 - 8) + 40))(a1 + v76, a2 + v76, v77);
  v78 = v8[19];
  v79 = *(a1 + v78);
  *(a1 + v78) = *(a2 + v78);

  *(a1 + v8[20]) = *(a2 + v8[20]);
  v80 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v80) = *(a2 + v80);
  return a1;
}

uint64_t sub_100014E50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v126 = type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView(0);
  v4 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_100004D04(&qword_1000ED450, &qword_1000C4F08);
  v7 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v125 = &v103 - v8;
  v116 = sub_100004D04(&qword_1000ED458, &qword_1000C4F10);
  v9 = *(*(v116 - 1) + 64);
  __chkstk_darwin(v116);
  v118 = &v103 - v10;
  v124 = sub_100004D04(&qword_1000ED460, &qword_1000C4F18);
  v11 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v119 = &v103 - v12;
  v117 = sub_100004D04(&qword_1000ED468, &qword_1000C4F20);
  v13 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v115 = &v103 - v14;
  v15 = type metadata accessor for TTRIAnyListComplicationWidgetView.InteractiveReminderView(0);
  v16 = *(*(v15 - 1) + 64);
  v17 = __chkstk_darwin(v15);
  v108 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v111 = &v103 - v20;
  __chkstk_darwin(v19);
  v22 = &v103 - v21;
  v23 = sub_100004D04(&qword_1000ED470, &qword_1000C4F28);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23);
  v107 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v109 = (&v103 - v28);
  v29 = __chkstk_darwin(v27);
  v113 = &v103 - v30;
  v31 = __chkstk_darwin(v29);
  v112 = &v103 - v32;
  v33 = __chkstk_darwin(v31);
  v110 = &v103 - v34;
  v35 = __chkstk_darwin(v33);
  v114 = &v103 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v103 - v38;
  __chkstk_darwin(v37);
  v41 = &v103 - v40;
  v42 = sub_100004D04(&qword_1000ED478, &qword_1000C4F30);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v123 = &v103 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v121 = &v103 - v46;
  v47 = type metadata accessor for TTRNewWidgetViewModel(0);
  v48 = a1;
  v127 = 0;
  v49 = 0;
  v128 = 0;
  v129 = 0;
  v50 = *(v48 + *(v47 + 76));
  if (*(v50 + 16) <= 1uLL)
  {
    v51 = v47;
    v105 = v6;
    v106 = v23;
    v52 = v48[1];
    v129 = *v48;
    v104 = v48;
    KeyPath = swift_getKeyPath();

    v54 = sub_1000C1FC8();
    v55 = *(v50 + 16);
    v128 = v52;
    v49 = KeyPath;
    v56 = v54;

    v127 = v56;
    if (v55 < 2)
    {
      v120 = v49;
      if (v55)
      {
        v86 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) - 8);
        v87 = v108;
        sub_10001A0E0(v50 + ((*(v86 + 80) + 32) & ~*(v86 + 80)), v108, type metadata accessor for TTRNewWidgetViewModel.Reminder);
        *(v87 + v15[5]) = 1;
        v88 = v87 + v15[6];
        *v88 = swift_getKeyPath();
        *(v88 + 8) = 0;
        v89 = v87 + v15[7];
        *v89 = swift_getKeyPath();
        *(v89 + 8) = 0;
        sub_1000C2108();
        sub_1000C1788();
        v90 = v107;
        sub_10001A1F0(v87, v107);
        v91 = (v90 + *(v106 + 36));
        v92 = v142;
        v91[4] = v141;
        v91[5] = v92;
        v91[6] = v143;
        v93 = v138;
        *v91 = v137;
        v91[1] = v93;
        v94 = v140;
        v91[2] = v139;
        v91[3] = v94;
        v95 = v109;
        sub_10001DA60(v90, v109, &qword_1000ED470, &qword_1000C4F28);
        sub_1000082B4(v95, v118, &qword_1000ED470, &qword_1000C4F28);
        swift_storeEnumTagMultiPayload();
        sub_100008478(&qword_1000ED480, &qword_1000ED468, &qword_1000C4F20);
        sub_10001A254();
        v96 = v119;
        sub_1000C1AE8();
        sub_1000082B4(v96, v125, &qword_1000ED460, &qword_1000C4F18);
        swift_storeEnumTagMultiPayload();
        sub_10001A358();
        sub_10001A310(&qword_1000ED4A0, type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView);
        v81 = v121;
        sub_1000C1AE8();
        sub_1000084C0(v96, &qword_1000ED460, &qword_1000C4F18);
        sub_1000084C0(v95, &qword_1000ED470, &qword_1000C4F28);
      }

      else
      {
        v97 = *(v51 + 28);
        v98 = sub_1000C0E58();
        v99 = v105;
        (*(*(v98 - 8) + 16))(v105, v104 + v97, v98);
        v100 = v126;
        v101 = v99 + *(v126 + 20);
        *v101 = swift_getKeyPath();
        *(v101 + 8) = 0;
        v102 = *(v100 + 24);
        *(v99 + v102) = sub_1000C1FC8();
        sub_10001A0E0(v99, v125, type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView);
        swift_storeEnumTagMultiPayload();
        sub_10001A358();
        sub_10001A310(&qword_1000ED4A0, type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView);
        v81 = v121;
        sub_1000C1AE8();
        sub_10001A504(v99, type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView);
      }

      goto LABEL_6;
    }

    v23 = v106;
  }

  v109 = a2;
  v57 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) - 8);
  v58 = v50 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
  sub_10001A0E0(v58, v22, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v22[v15[5]] = 0;
  v59 = &v22[v15[6]];
  *v59 = swift_getKeyPath();
  v59[8] = 0;
  v60 = &v22[v15[7]];
  *v60 = swift_getKeyPath();
  v60[8] = 0;
  sub_1000C2108();
  sub_1000C1788();
  sub_10001A1F0(v22, v39);
  v61 = &v39[*(v23 + 36)];
  v62 = v135;
  *(v61 + 4) = v134;
  *(v61 + 5) = v62;
  *(v61 + 6) = v136;
  v63 = v131;
  *v61 = v130;
  *(v61 + 1) = v63;
  v64 = v133;
  *(v61 + 2) = v132;
  *(v61 + 3) = v64;
  result = sub_10001DA60(v39, v41, &qword_1000ED470, &qword_1000C4F28);
  if (*(v50 + 16) >= 2uLL)
  {
    v120 = v49;
    v66 = v111;
    sub_10001A0E0(v58 + *(v57 + 72), v111, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    *(v66 + v15[5]) = 0;
    v67 = v66 + v15[6];
    *v67 = swift_getKeyPath();
    *(v67 + 8) = 0;
    v68 = v66 + v15[7];
    *v68 = swift_getKeyPath();
    *(v68 + 8) = 0;
    sub_1000C2108();
    sub_1000C1788();
    v69 = v66;
    v70 = v110;
    sub_10001A1F0(v69, v110);
    v71 = (v70 + *(v23 + 36));
    v72 = v142;
    v71[4] = v141;
    v71[5] = v72;
    v71[6] = v143;
    v73 = v138;
    *v71 = v137;
    v71[1] = v73;
    v74 = v140;
    v71[2] = v139;
    v71[3] = v74;
    v75 = v114;
    sub_10001DA60(v70, v114, &qword_1000ED470, &qword_1000C4F28);
    v76 = v112;
    sub_1000082B4(v41, v112, &qword_1000ED470, &qword_1000C4F28);
    v77 = v113;
    sub_1000082B4(v75, v113, &qword_1000ED470, &qword_1000C4F28);
    v78 = v115;
    sub_1000082B4(v76, v115, &qword_1000ED470, &qword_1000C4F28);
    v79 = sub_100004D04(&qword_1000ED4B0, &qword_1000C4FB8);
    sub_1000082B4(v77, v78 + *(v79 + 48), &qword_1000ED470, &qword_1000C4F28);
    sub_1000084C0(v77, &qword_1000ED470, &qword_1000C4F28);
    sub_1000084C0(v76, &qword_1000ED470, &qword_1000C4F28);
    sub_1000082B4(v78, v118, &qword_1000ED468, &qword_1000C4F20);
    swift_storeEnumTagMultiPayload();
    sub_100008478(&qword_1000ED480, &qword_1000ED468, &qword_1000C4F20);
    v116 = v41;
    sub_10001A254();
    v80 = v119;
    sub_1000C1AE8();
    sub_1000082B4(v80, v125, &qword_1000ED460, &qword_1000C4F18);
    swift_storeEnumTagMultiPayload();
    sub_10001A358();
    sub_10001A310(&qword_1000ED4A0, type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView);
    v81 = v121;
    sub_1000C1AE8();
    sub_1000084C0(v80, &qword_1000ED460, &qword_1000C4F18);
    sub_1000084C0(v78, &qword_1000ED468, &qword_1000C4F20);
    sub_1000084C0(v75, &qword_1000ED470, &qword_1000C4F28);
    sub_1000084C0(v116, &qword_1000ED470, &qword_1000C4F28);
    a2 = v109;
LABEL_6:
    v82 = v123;
    sub_1000082B4(v81, v123, &qword_1000ED478, &qword_1000C4F30);
    v83 = v129;
    v84 = v128;
    *a2 = v129;
    a2[1] = v84;
    a2[2] = v120;
    a2[3] = 0;
    a2[4] = v127;
    v85 = sub_100004D04(&qword_1000ED4A8, &qword_1000C4F88);
    sub_1000082B4(v82, a2 + *(v85 + 48), &qword_1000ED478, &qword_1000C4F30);
    sub_10001A410(v83, v84);
    sub_10001A460(v83, v84);
    sub_1000084C0(v81, &qword_1000ED478, &qword_1000C4F30);
    sub_1000084C0(v82, &qword_1000ED478, &qword_1000C4F30);
    return sub_10001A460(v83, v84);
  }

  __break(1u);
  return result;
}

uint64_t sub_100015DA0()
{
  v1 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = sub_100004D04(&qword_1000ED438, &qword_1000C4EF8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  *v8 = sub_1000C1A48();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = sub_100004D04(&qword_1000ED440, &qword_1000C4F00);
  sub_100014E50(v0, &v8[*(v9 + 44)]);
  v10 = *(type metadata accessor for TTRNewWidgetViewModel(0) + 72);
  v11 = sub_1000C0938();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v4, v0 + v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  sub_100008478(&qword_1000ED448, &qword_1000ED438, &qword_1000C4EF8);
  sub_1000C1E38();
  sub_1000084C0(v4, &qword_1000ECCE0, &qword_1000C4EF0);
  return sub_1000084C0(v8, &qword_1000ED438, &qword_1000C4EF8);
}

uint64_t sub_100015FA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000C1938();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v29 = a1[2];
  v30 = *(a1 + 24);
  v11 = v30;

  sub_1000082B4(&v29, &v28, &qword_1000ED668, &qword_1000C76F0);
  if (v11 != 1)
  {
    sub_1000C2958();
    v12 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_1000084C0(&v29, &qword_1000ED668, &qword_1000C76F0);
    (*(v5 + 8))(v8, v4);
  }

  v13 = sub_1000C1DA8();
  v15 = v14;
  v17 = v16;

  v18 = a1[4];
  v19 = sub_1000C1D78();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10000537C(v13, v15, v17 & 1);

  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v25;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_100008420(v19, v21, v23 & 1);

  sub_10000537C(v19, v21, v23 & 1);
}

__n128 sub_100016228@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v15[0] = *v1;
  v15[1] = v3;
  v16 = *(v1 + 32);
  v4 = sub_1000C1998();
  sub_100015FA8(v15, &v10);
  v5 = v11;
  v6 = v12;
  v7 = v13;
  v8 = v14;
  result = v10;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  return result;
}

id sub_1000162A8@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v2 = sub_1000C1938();
  v79 = *(v2 - 1);
  v80 = v2;
  v3 = *(v79 + 8);
  __chkstk_darwin(v2);
  v78 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100004D04(&qword_1000ED608, &unk_1000C52E0);
  v5 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v86 = (&v77 - v6);
  v84 = type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle(0);
  v7 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100004D04(&qword_1000ED610, &qword_1000C6390);
  v81 = *(v83 - 8);
  v10 = *(v81 + 64);
  __chkstk_darwin(v83);
  v12 = &v77 - v11;
  v85 = sub_100004D04(&qword_1000ED618, &qword_1000C52F0);
  v13 = *(v85 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v85);
  v16 = &v77 - v15;
  v17 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v77 - v19;
  v21 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  sub_1000082B4(v1 + v21[6], v20, &qword_1000ECE78, &unk_1000C3810);
  v22 = sub_1000C0818();
  v23 = (*(*(v22 - 8) + 48))(v20, 1, v22);
  sub_1000084C0(v20, &qword_1000ECE78, &unk_1000C3810);
  if (v23 == 1)
  {
    if (*(v1 + v21[9]) >= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  else
  {
    v24 = 1;
  }

  v25 = *(v1 + v21[8]);
  if (v25)
  {
    v26 = *(v1 + v21[10]);
    v27 = *v1;
    v28 = v25;
    v79 = v16;
    v80 = v28;
    v29 = v28;
    v30 = [v27 string];
    v31 = sub_1000C2678();
    v33 = v32;

    aBlock = sub_1000BB438(v29, v31, v33, v26 ^ 1u);
    v89 = v34;
    v90 = v35;
    sub_10001C6DC();
    sub_1000C20C8();
    LOBYTE(v26) = *(v1 + *(type metadata accessor for TTRIAnyListComplicationWidgetView.InteractiveReminderView(0) + 20));
    sub_10001A0E0(v1, v9, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    v36 = v84;
    v9[*(v84 + 20)] = v26;
    *&v9[v36[6]] = v24;
    v37 = &v9[v36[7]];
    *v37 = swift_getKeyPath();
    v37[8] = 0;
    v38 = &v9[v36[8]];
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    v39 = &v9[v36[9]];
    *v39 = swift_getKeyPath();
    v39[8] = 0;
    v40 = sub_100008478(&qword_1000ED628, &qword_1000ED610, &qword_1000C6390);
    v41 = sub_10001A310(&qword_1000ED630, type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle);
    v42 = v79;
    v43 = v83;
    sub_1000C1E98();
    sub_10001A504(v9, type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle);
    (*(v81 + 8))(v12, v43);
    v44 = v85;
    (*(v13 + 16))(v86, v42, v85);
    swift_storeEnumTagMultiPayload();
    sub_100004D04(&qword_1000ED620, &qword_1000C63C0);
    aBlock = v43;
    v89 = v36;
    v90 = v40;
    v91 = v41;
    swift_getOpaqueTypeConformance2();
    sub_10001C624();
    sub_1000C1AE8();

    return (*(v13 + 8))(v42, v44);
  }

  v81 = v24;
  v46 = *v1;
  v77 = type metadata accessor for TTRIAnyListComplicationWidgetView.InteractiveReminderView(0);
  v47 = v1 + *(v77 + 28);
  v48 = *v47;
  v49 = v47[8];

  if ((v49 & 1) == 0)
  {
    sub_1000C2958();
    v50 = sub_1000C1BC8();
    sub_1000C1548();

    v51 = v78;
    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v79 + 1))(v51, v80);
    v48 = aBlock;
  }

  result = [v46 string];
  if (!result)
  {
    goto LABEL_17;
  }

  v52 = result;
  v94 = xmmword_1000C35A0;
  v95 = 0;
  v96 = &_swiftEmptyArrayStorage;
  v53 = [objc_opt_self() attributeName];
  v54 = [v46 length];
  v55 = swift_allocObject();
  v55[2] = &v94;
  v55[3] = v52;
  v55[4] = v48;
  v55[5] = 0;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1000083E4;
  *(v56 + 24) = v55;
  v92 = sub_100008400;
  v93 = v56;
  aBlock = _NSConcreteStackBlock;
  v89 = 1107296256;
  v90 = sub_100045698;
  v91 = &unk_1000E80C0;
  v57 = _Block_copy(&aBlock);

  v58 = v52;

  [v46 enumerateAttribute:v53 inRange:0 options:v54 usingBlock:{0, v57}];

  _Block_release(v57);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v59 = v94;
  v60 = v95;

  v61 = v1 + *(v77 + 24);
  v62 = *v61;
  v63 = v61[8];

  if ((v63 & 1) == 0)
  {
    sub_1000C2958();
    v64 = sub_1000C1BC8();
    sub_1000C1548();

    v65 = v78;
    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v79 + 1))(v65, v80);
  }

  v66 = sub_1000C1DA8();
  v68 = v67;
  v70 = v69;
  v72 = v71;

  sub_10000537C(v59, *(&v59 + 1), v60);

  KeyPath = swift_getKeyPath();
  v74 = v86;
  *v86 = v66;
  v74[1] = v68;
  *(v74 + 16) = v70 & 1;
  v74[3] = v72;
  v74[4] = KeyPath;
  v74[5] = v81;
  *(v74 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  sub_100004D04(&qword_1000ED620, &qword_1000C63C0);
  v75 = sub_100008478(&qword_1000ED628, &qword_1000ED610, &qword_1000C6390);
  v76 = sub_10001A310(&qword_1000ED630, type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle);
  aBlock = v83;
  v89 = v84;
  v90 = v75;
  v91 = v76;
  swift_getOpaqueTypeConformance2();
  sub_10001C624();
  return sub_1000C1AE8();
}

uint64_t sub_100016D9C@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100004D04(&qword_1000ED738, &qword_1000C5430);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  __chkstk_darwin(v4);
  v51 = (&v44 - v6);
  v7 = sub_1000C1938();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  __chkstk_darwin(v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100004D04(&qword_1000ED740, &qword_1000C5438);
  v10 = *(*(v49 - 8) + 64);
  v11 = __chkstk_darwin(v49);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = sub_100004D04(&qword_1000ED748, &qword_1000C5440);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v52 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v44 - v19;
  v53 = sub_1000C1B18();
  v57 = sub_1000C1A48();
  v63 = 0;
  sub_10001748C(a1, &v60);
  v66 = v61[1];
  v67 = v61[2];
  v68 = v61[3];
  v69 = *&v61[4];
  v64 = v60;
  v65 = v61[0];
  v71 = *&v61[4];
  v70[2] = v61[1];
  v70[3] = v61[2];
  v70[4] = v61[3];
  v70[0] = v60;
  v70[1] = v61[0];
  sub_1000082B4(&v64, v58, &qword_1000ED750, &qword_1000C5448);
  sub_1000084C0(v70, &qword_1000ED750, &qword_1000C5448);
  *(&v62[2] + 7) = v66;
  *(&v62[3] + 7) = v67;
  *(&v62[4] + 7) = v68;
  *(&v62[5] + 7) = v69;
  *(v62 + 7) = v64;
  *(&v62[1] + 7) = v65;
  v54 = v63;
  if ((sub_1000C1B18() & 1) != 0 && *(a1 + *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) + 44)) == 1)
  {
    v45 = sub_1000C2018();
    v21 = a1 + *(type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle(0) + 28);
    v22 = *v21;
    v23 = v21[8];

    if ((v23 & 1) == 0)
    {
      sub_1000C2958();
      v24 = sub_1000C1BC8();
      sub_1000C1548();

      v25 = v46;
      sub_1000C1928();
      swift_getAtKeyPath();

      (*(v47 + 8))(v25, v48);
      v22 = v60;
    }

    KeyPath = swift_getKeyPath();
    LODWORD(v48) = sub_1000C1B08();
    v27 = &v14[*(v49 + 36)];
    v28 = *(sub_100004D04(&qword_1000ED768, &qword_1000C5490) + 28);
    v29 = enum case for Image.Scale.small(_:);
    v30 = sub_1000C2048();
    (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
    *v27 = swift_getKeyPath();
    *v14 = v45;
    *(v14 + 1) = KeyPath;
    *(v14 + 2) = v22;
    *(v14 + 6) = v48;
    v31 = v50;
    sub_1000082B4(v14, v50, &qword_1000ED740, &qword_1000C5438);
    v32 = v51;
    *v51 = 0;
    *(v32 + 8) = 1;
    v33 = sub_100004D04(&qword_1000ED770, &qword_1000C54C8);
    sub_1000082B4(v31, v32 + *(v33 + 48), &qword_1000ED740, &qword_1000C5438);
    sub_1000084C0(v14, &qword_1000ED740, &qword_1000C5438);
    sub_1000084C0(v31, &qword_1000ED740, &qword_1000C5438);
    sub_10001DA60(v32, v20, &qword_1000ED738, &qword_1000C5430);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  (*(v55 + 56))(v20, v34, 1, v56);
  v35 = v53 & 1;
  v36 = v52;
  sub_1000082B4(v20, v52, &qword_1000ED748, &qword_1000C5440);
  v37 = v57;
  v58[0] = v57;
  v58[1] = 0;
  v38 = v54;
  LOBYTE(v59[0]) = v54;
  *(&v59[1] + 1) = v62[1];
  *(v59 + 1) = v62[0];
  *(&v59[4] + 1) = v62[4];
  *(&v59[3] + 1) = v62[3];
  *(&v59[2] + 1) = v62[2];
  v59[5] = *(&v62[4] + 15);
  v39 = v59[0];
  *(a2 + 8) = v57;
  v40 = v59[1];
  *(a2 + 56) = v59[2];
  v41 = v59[4];
  *(a2 + 72) = v59[3];
  *(a2 + 88) = v41;
  *(a2 + 104) = v59[5];
  *(a2 + 24) = v39;
  *a2 = v35;
  *(a2 + 40) = v40;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v42 = sub_100004D04(&qword_1000ED758, &qword_1000C5450);
  sub_1000082B4(v36, a2 + *(v42 + 80), &qword_1000ED748, &qword_1000C5440);
  sub_1000082B4(v58, &v60, &qword_1000ED760, &qword_1000C5458);
  sub_1000084C0(v20, &qword_1000ED748, &qword_1000C5440);
  sub_1000084C0(v36, &qword_1000ED748, &qword_1000C5440);
  *(&v61[2] + 1) = v62[2];
  *(&v61[3] + 1) = v62[3];
  *(&v61[4] + 1) = v62[4];
  v61[5] = *(&v62[4] + 15);
  *(v61 + 1) = v62[0];
  v60 = v37;
  LOBYTE(v61[0]) = v38;
  *(&v61[1] + 1) = v62[1];
  return sub_1000084C0(&v60, &qword_1000ED760, &qword_1000C5458);
}

id sub_10001748C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v74 = &v73 - v6;
  v80 = sub_1000C0818();
  v79 = *(v80 - 8);
  v7 = *(v79 + 64);
  v8 = __chkstk_darwin(v80);
  v73 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v75 = &v73 - v10;
  v11 = sub_1000C1938();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v88 = type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle(0);
  v89 = a1;
  v17 = a1 + v88[9];
  v18 = *v17;
  LOBYTE(a1) = v17[8];

  if ((a1 & 1) == 0)
  {
    sub_1000C2958();
    v19 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v12 + 8))(v15, v11);
    v18 = aBlock[0];
  }

  v76 = v15;
  v77 = v12;
  v78 = v11;
  result = [v16 string];
  if (result)
  {
    v21 = result;
    v93 = xmmword_1000C35A0;
    v94 = 0;
    v95 = &_swiftEmptyArrayStorage;
    v22 = [objc_opt_self() attributeName];
    v23 = [v16 length];
    v24 = swift_allocObject();
    v24[2] = &v93;
    v24[3] = v21;
    v24[4] = v18;
    v24[5] = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100008748;
    *(v25 + 24) = v24;
    aBlock[4] = sub_100008724;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100045698;
    aBlock[3] = &unk_1000E8158;
    v26 = _Block_copy(aBlock);

    v27 = v21;

    [v16 enumerateAttribute:v22 inRange:0 options:v23 usingBlock:{0, v26}];

    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v29 = v93;
      v30 = v94;

      v31 = v89 + v88[7];
      v32 = v31[8];
      if (v32 == 1)
      {
        aBlock[0] = *v31;
      }

      else
      {
        v33 = *v31;

        sub_1000C2958();
        v34 = sub_1000C1BC8();
        sub_1000C1548();

        v35 = v76;
        sub_1000C1928();
        swift_getAtKeyPath();

        (*(v77 + 8))(v35, v78);
      }

      v36 = sub_1000C1DA8();
      v85 = v37;
      v86 = v36;
      v39 = v38;
      v87 = v40;

      sub_10000537C(v29, *(&v29 + 1), v30);

      v42 = v88;
      v41 = v89;
      v82 = *(v89 + v88[6]);
      KeyPath = swift_getKeyPath();
      v81 = sub_1000C1B08();
      v91 = v39 & 1;
      v90 = 0;
      v43 = *(v41 + v42[5]) == 1;
      v83 = a2;
      if (!v43)
      {
        goto LABEL_12;
      }

      v44 = v74;
      sub_100017DAC(v74);
      v45 = v79;
      v46 = v80;
      if ((*(v79 + 48))(v44, 1, v80) == 1)
      {
        sub_1000084C0(v44, &qword_1000ECE78, &unk_1000C3810);
LABEL_12:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
LABEL_17:
        v66 = v90;
        v67 = v91;
        v68 = v85;
        v69 = v86;
        sub_100008420(v86, v85, v91 & 1);
        v70 = v87;

        v71 = KeyPath;

        sub_10001DAC8(v47, v48, v49, v50);
        sub_10001DB0C(v47, v48, v49, v50);
        v72 = v83;
        *v83 = v69;
        v72[1] = v68;
        *(v72 + 16) = v67;
        v72[3] = v70;
        v72[4] = v71;
        v72[5] = v82;
        *(v72 + 48) = v66;
        *(v72 + 13) = v81;
        v72[7] = v47;
        v72[8] = v48;
        v72[9] = v49;
        v72[10] = v50;
        sub_10001DB0C(v47, v48, v49, v50);
        sub_10000537C(v69, v68, v67 & 1);
      }

      v51 = v75;
      (*(v45 + 32))(v75, v44, v46);
      (*(v45 + 16))(v73, v51, v46);
      v52 = sub_1000C1DC8();
      v54 = v53;
      v56 = v55;

      if ((v32 & 1) == 0)
      {
        sub_1000C2958();
        v57 = sub_1000C1BC8();
        sub_1000C1548();

        v58 = v76;
        sub_1000C1928();
        swift_getAtKeyPath();

        (*(v77 + 8))(v58, v78);
      }

      v25 = sub_1000C1DA8();
      v26 = v59;
      LOBYTE(v23) = v60;

      sub_10000537C(v52, v54, v56 & 1);

      if (qword_1000EC978 == -1)
      {
LABEL_16:

        v47 = sub_1000C1D78();
        v48 = v61;
        v62 = v25;
        v64 = v63;
        v50 = v65;

        sub_10000537C(v62, v26, v23 & 1);

        (*(v79 + 8))(v75, v80);
        v49 = v64 & 1;
        sub_100008420(v47, v48, v49);

        goto LABEL_17;
      }
    }

    swift_once();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100017DAC@<X0>(char *a1@<X8>)
{
  v3 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = sub_1000C0818();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  sub_1000082B4(v1 + *(v12 + 24), v6, &qword_1000ECE78, &unk_1000C3810);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000084C0(v6, &qword_1000ECE78, &unk_1000C3810);
    v13 = *(v1 + *(v12 + 36));
    if (v13 < 1)
    {
      v15 = 1;
      return (*(v8 + 56))(a1, v15, 1, v7);
    }

    sub_100012888(v13);
    sub_1000C07D8();
  }

  else
  {
    v14 = *(v8 + 32);
    v14(v11, v6, v7);
    v14(a1, v11, v7);
  }

  v15 = 0;
  return (*(v8 + 56))(a1, v15, 1, v7);
}

uint64_t sub_100017FC0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000C1998();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100004D04(&qword_1000ED730, &qword_1000C5428);
  return sub_100016D9C(v1, a1 + *(v3 + 44));
}

uint64_t sub_100018024@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000C2018();
  v3 = sub_1000C1C28();
  KeyPath = swift_getKeyPath();
  v5 = sub_1000C1FD8();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_1000180D0()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C0E38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat.short(_:), v6);
  sub_1000C0E48();
  v12 = v11;
  (*(v7 + 8))(v10, v6);
  if (!v12)
  {
    sub_1000C0E08();
  }

  v13 = type metadata accessor for TTRIAnyListComplicationWidgetView.NoReminderView(0);
  v14 = (v0 + *(v13 + 20));
  v15 = *v14;
  v16 = *(v14 + 8);

  if ((v16 & 1) == 0)
  {
    sub_1000C2958();
    v17 = sub_1000C1BC8();
    v34 = v1;
    v18 = v17;
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v34);
  }

  v19 = sub_1000C1DA8();
  v21 = v20;
  v23 = v22;

  v24 = *(v0 + *(v13 + 24));
  v25 = sub_1000C1D78();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10000537C(v19, v21, v23 & 1);

  v35 = v25;
  v36 = v27;
  v37 = v29 & 1;
  v38 = v31;
  sub_1000C1F58();
  sub_10000537C(v25, v27, v29 & 1);
}

uint64_t sub_100018404(void (*a1)(void))
{
  a1();
  sub_1000C1948();
  return v2;
}

uint64_t sub_10001844C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = *a1;
  a5();

  return sub_1000C1958();
}

uint64_t sub_1000184E8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v22 = *a2;
    *a1 = *a2;
    a1 = v22 + ((v5 + 16) & ~v5);
  }

  else
  {
    v6 = v4;
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    v8 = *(v4 + 28);
    v9 = sub_1000C0E58();
    v10 = *(*(v9 - 8) + 16);

    v10(a1 + v8, a2 + v8, v9);
    v11 = v6[8];
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
    v15 = v6[9];
    v16 = (a1 + v15);
    v17 = (a2 + v15);
    v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v19 = *(v18 - 1);
    v20 = *(v19 + 48);

    if (v20(v17, 1, v18))
    {
      v21 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
    }

    else
    {
      v63 = v19;
      v23 = *v17;
      v24 = v17[1];
      *v16 = *v17;
      v16[1] = v24;
      v61 = v18[6];
      v25 = sub_1000C0818();
      v58 = *(v25 - 8);
      v59 = *(v58 + 48);
      v26 = v23;
      v27 = v24;
      if (v59(v17 + v61, 1, v25))
      {
        v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v16 + v61, v17 + v61, *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v58 + 16))(v16 + v61, v17 + v61, v25);
        (*(v58 + 56))(v16 + v61, 0, 1, v25);
      }

      v29 = v18[7];
      v30 = sub_1000C0938();
      (*(*(v30 - 8) + 16))(v16 + v29, v17 + v29, v30);
      v31 = v18[8];
      v32 = *(v17 + v31);
      *(v16 + v31) = v32;
      *(v16 + v18[9]) = *(v17 + v18[9]);
      *(v16 + v18[10]) = *(v17 + v18[10]);
      *(v16 + v18[11]) = *(v17 + v18[11]);
      v33 = *(v63 + 56);
      v34 = v32;
      v33(v16, 0, 1, v18);
    }

    v35 = v6[10];
    v64 = *(a2 + v35);
    *(a1 + v35) = v64;
    v36 = v6[11];
    v37 = (a1 + v36);
    v38 = (a2 + v36);
    v39 = v38[1];
    *v37 = *v38;
    v37[1] = v39;
    v40 = v6[12];
    v62 = *(a2 + v40);
    *(a1 + v40) = v62;
    v41 = v6[13];
    v42 = (a1 + v41);
    v43 = (a2 + v41);
    v44 = v43[1];
    *v42 = *v43;
    v42[1] = v44;
    v45 = v6[14];
    v46 = (a1 + v45);
    v47 = (a2 + v45);
    v48 = v47[1];
    *v46 = *v47;
    v46[1] = v48;
    *(a1 + v6[15]) = *(a2 + v6[15]);
    v49 = v6[16];
    v50 = (a1 + v49);
    v51 = (a2 + v49);
    v52 = v51[1];
    *v50 = *v51;
    v50[1] = v52;
    *(a1 + v6[17]) = *(a2 + v6[17]);
    v53 = v6[18];
    v54 = sub_1000C0938();
    v60 = *(*(v54 - 8) + 16);
    v55 = v64;

    v56 = v62;

    v60(a1 + v53, a2 + v53, v54);
    *(a1 + v6[19]) = *(a2 + v6[19]);
    *(a1 + v6[20]) = *(a2 + v6[20]);
  }

  return a1;
}

uint64_t sub_100018964(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v5 = type metadata accessor for TTRNewWidgetViewModel(0);
  v6 = v5[7];
  v7 = sub_1000C0E58();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  v9 = v5[8];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v12 = v11[1];
  *v10 = *v11;
  v10[1] = v12;
  v13 = v5[9];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 48);

  if (v18(v15, 1, v16))
  {
    v19 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v14, v15, *(*(v19 - 8) + 64));
  }

  else
  {
    v60 = v17;
    v20 = *v15;
    v21 = v15[1];
    *v14 = *v15;
    v14[1] = v21;
    v58 = v16[6];
    v22 = sub_1000C0818();
    v55 = *(v22 - 8);
    v56 = *(v55 + 48);
    v23 = v20;
    v24 = v21;
    if (v56(v15 + v58, 1, v22))
    {
      v25 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v14 + v58, v15 + v58, *(*(v25 - 8) + 64));
    }

    else
    {
      (*(v55 + 16))(v14 + v58, v15 + v58, v22);
      (*(v55 + 56))(v14 + v58, 0, 1, v22);
    }

    v26 = v16[7];
    v27 = sub_1000C0938();
    (*(*(v27 - 8) + 16))(v14 + v26, v15 + v26, v27);
    v28 = v16[8];
    v29 = *(v15 + v28);
    *(v14 + v28) = v29;
    *(v14 + v16[9]) = *(v15 + v16[9]);
    *(v14 + v16[10]) = *(v15 + v16[10]);
    *(v14 + v16[11]) = *(v15 + v16[11]);
    v30 = *(v60 + 56);
    v31 = v29;
    v30(v14, 0, 1, v16);
  }

  v32 = v5[10];
  v61 = *(a2 + v32);
  *(a1 + v32) = v61;
  v33 = v5[11];
  v34 = (a1 + v33);
  v35 = (a2 + v33);
  v36 = v35[1];
  *v34 = *v35;
  v34[1] = v36;
  v37 = v5[12];
  v59 = *(a2 + v37);
  *(a1 + v37) = v59;
  v38 = v5[13];
  v39 = (a1 + v38);
  v40 = (a2 + v38);
  v41 = v40[1];
  *v39 = *v40;
  v39[1] = v41;
  v42 = v5[14];
  v43 = (a1 + v42);
  v44 = (a2 + v42);
  v45 = v44[1];
  *v43 = *v44;
  v43[1] = v45;
  *(a1 + v5[15]) = *(a2 + v5[15]);
  v46 = v5[16];
  v47 = (a1 + v46);
  v48 = (a2 + v46);
  v49 = v48[1];
  *v47 = *v48;
  v47[1] = v49;
  *(a1 + v5[17]) = *(a2 + v5[17]);
  v50 = v5[18];
  v51 = sub_1000C0938();
  v57 = *(*(v51 - 8) + 16);
  v52 = v61;

  v53 = v59;

  v57(a1 + v50, a2 + v50, v51);
  *(a1 + v5[19]) = *(a2 + v5[19]);
  *(a1 + v5[20]) = *(a2 + v5[20]);

  return a1;
}

char *sub_100018D94(char *a1, char *a2)
{
  *a1 = *a2;
  v4 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  v5 = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);

  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = v6[8];
  v10 = &a1[v9];
  v11 = &a2[v9];
  *v10 = *v11;
  v12 = *(v10 + 1);
  *(v10 + 1) = *(v11 + 1);

  v13 = v6[9];
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, v16);
  v20 = v18(v15, 1, v16);
  if (!v19)
  {
    if (v20)
    {
      sub_10001A504(v14, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v27 = *v15;
    v28 = *v14;
    *v14 = *v15;
    v29 = v27;

    v30 = *(v14 + 1);
    v31 = *(v15 + 1);
    *(v14 + 1) = v31;
    v32 = v31;

    v33 = v16[6];
    v34 = sub_1000C0818();
    v84 = *(v34 - 8);
    v35 = *(v84 + 48);
    v87 = v35(&v14[v33], 1, v34);
    v36 = v35(&v15[v33], 1, v34);
    if (v87)
    {
      if (!v36)
      {
        (*(v84 + 16))(&v14[v33], &v15[v33], v34);
        (*(v84 + 56))(&v14[v33], 0, 1, v34);
        goto LABEL_18;
      }

      v37 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v38 = &v14[v33];
      v39 = &v15[v33];
    }

    else
    {
      if (!v36)
      {
        (*(v84 + 24))(&v14[v33], &v15[v33], v34);
        goto LABEL_18;
      }

      (*(v84 + 8))(&v14[v33], v34);
      v37 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v38 = &v14[v33];
      v39 = &v15[v33];
    }

    memcpy(v38, v39, v37);
LABEL_18:
    v46 = v16[7];
    v47 = sub_1000C0938();
    (*(*(v47 - 8) + 24))(&v14[v46], &v15[v46], v47);
    v48 = v16[8];
    v49 = *&v14[v48];
    v50 = *&v15[v48];
    *&v14[v48] = v50;
    v51 = v50;

    *&v14[v16[9]] = *&v15[v16[9]];
    v14[v16[10]] = v15[v16[10]];
    v14[v16[11]] = v15[v16[11]];
    goto LABEL_19;
  }

  if (v20)
  {
LABEL_7:
    v26 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v14, v15, *(*(v26 - 8) + 64));
    goto LABEL_19;
  }

  v21 = *v15;
  *v14 = *v15;
  v86 = *(v15 + 1);
  *(v14 + 1) = v86;
  v88 = v16[6];
  v22 = sub_1000C0818();
  v83 = *(v22 - 8);
  v85 = *(v83 + 48);
  v23 = v21;
  v24 = v86;
  if (v85(&v15[v88], 1, v22))
  {
    v25 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v14[v88], &v15[v88], *(*(v25 - 8) + 64));
  }

  else
  {
    (*(v83 + 16))(&v14[v88], &v15[v88], v22);
    (*(v83 + 56))(&v14[v88], 0, 1, v22);
  }

  v40 = v16[7];
  v41 = sub_1000C0938();
  (*(*(v41 - 8) + 16))(&v14[v40], &v15[v40], v41);
  v42 = v16[8];
  v43 = *&v15[v42];
  *&v14[v42] = v43;
  *&v14[v16[9]] = *&v15[v16[9]];
  v14[v16[10]] = v15[v16[10]];
  v14[v16[11]] = v15[v16[11]];
  v44 = *(v17 + 56);
  v45 = v43;
  v44(v14, 0, 1, v16);
LABEL_19:
  v52 = v6[10];
  v53 = *&a2[v52];
  v54 = *&a1[v52];
  *&a1[v52] = v53;
  v55 = v53;

  v56 = v6[11];
  v57 = &a1[v56];
  v58 = &a2[v56];
  *v57 = *v58;
  v59 = *(v57 + 1);
  *(v57 + 1) = *(v58 + 1);

  v60 = v6[12];
  v61 = *&a1[v60];
  v62 = *&a2[v60];
  *&a1[v60] = v62;
  v63 = v62;

  v64 = v6[13];
  v65 = &a1[v64];
  v66 = &a2[v64];
  *v65 = *v66;
  v67 = *(v65 + 1);
  *(v65 + 1) = *(v66 + 1);

  v68 = v6[14];
  v69 = &a1[v68];
  v70 = &a2[v68];
  *v69 = *v70;
  v71 = *(v69 + 1);
  *(v69 + 1) = *(v70 + 1);

  a1[v6[15]] = a2[v6[15]];
  v72 = v6[16];
  v73 = &a1[v72];
  v74 = &a2[v72];
  *v73 = *v74;
  v75 = *(v73 + 1);
  *(v73 + 1) = *(v74 + 1);

  v76 = v6[17];
  v77 = *&a1[v76];
  *&a1[v76] = *&a2[v76];

  v78 = v6[18];
  v79 = sub_1000C0938();
  (*(*(v79 - 8) + 24))(&a1[v78], &a2[v78], v79);
  v80 = v6[19];
  v81 = *&a1[v80];
  *&a1[v80] = *&a2[v80];

  a1[v6[20]] = a2[v6[20]];
  return a1;
}

uint64_t sub_1000194B4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = v4[7];
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  *(a1 + v4[8]) = *(a2 + v4[8]);
  v7 = v4[9];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v11 = *(v10 - 1);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    v12 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v8, v9, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = v9[1];
    *v8 = *v9;
    v8[1] = v13;
    v14 = v10[6];
    v15 = sub_1000C0818();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v9 + v14, 1, v15))
    {
      v17 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v8 + v14, v9 + v14, *(*(v17 - 8) + 64));
    }

    else
    {
      (*(v16 + 32))(v8 + v14, v9 + v14, v15);
      (*(v16 + 56))(v8 + v14, 0, 1, v15);
    }

    v18 = v10[7];
    v19 = sub_1000C0938();
    (*(*(v19 - 8) + 32))(v8 + v18, v9 + v18, v19);
    *(v8 + v10[8]) = *(v9 + v10[8]);
    *(v8 + v10[9]) = *(v9 + v10[9]);
    *(v8 + v10[10]) = *(v9 + v10[10]);
    *(v8 + v10[11]) = *(v9 + v10[11]);
    (*(v11 + 56))(v8, 0, 1, v10);
  }

  *(a1 + v4[10]) = *(a2 + v4[10]);
  *(a1 + v4[11]) = *(a2 + v4[11]);
  *(a1 + v4[12]) = *(a2 + v4[12]);
  *(a1 + v4[13]) = *(a2 + v4[13]);
  *(a1 + v4[14]) = *(a2 + v4[14]);
  *(a1 + v4[15]) = *(a2 + v4[15]);
  *(a1 + v4[16]) = *(a2 + v4[16]);
  *(a1 + v4[17]) = *(a2 + v4[17]);
  v20 = v4[18];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 32))(a1 + v20, a2 + v20, v21);
  *(a1 + v4[19]) = *(a2 + v4[19]);
  *(a1 + v4[20]) = *(a2 + v4[20]);
  return a1;
}

uint64_t sub_10001982C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v7 = type metadata accessor for TTRNewWidgetViewModel(0);
  v8 = v7[7];
  v9 = sub_1000C0E58();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  v10 = v7[8];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  v14 = *v12;
  v13 = v12[1];
  v15 = v11[1];
  *v11 = v14;
  v11[1] = v13;

  v16 = v7[9];
  v17 = (a1 + v16);
  v18 = (a2 + v16);
  v19 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v20 = *(v19 - 1);
  v21 = *(v20 + 48);
  v22 = v21(v17, 1, v19);
  v23 = v21(v18, 1, v19);
  if (!v22)
  {
    if (v23)
    {
      sub_10001A504(v17, type metadata accessor for TTRNewWidgetViewModel.Reminder);
      goto LABEL_7;
    }

    v30 = *v17;
    *v17 = *v18;

    v31 = *(v17 + 1);
    *(v17 + 1) = *(v18 + 1);

    v32 = v19[6];
    v33 = sub_1000C0818();
    v80 = *(v33 - 8);
    v34 = *(v80 + 48);
    v81 = v34(&v17[v32], 1, v33);
    v35 = v34(&v18[v32], 1, v33);
    if (v81)
    {
      if (!v35)
      {
        (*(v80 + 32))(&v17[v32], &v18[v32], v33);
        (*(v80 + 56))(&v17[v32], 0, 1, v33);
        goto LABEL_18;
      }

      v36 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v37 = &v17[v32];
      v38 = &v18[v32];
    }

    else
    {
      if (!v35)
      {
        (*(v80 + 40))(&v17[v32], &v18[v32], v33);
        goto LABEL_18;
      }

      (*(v80 + 8))(&v17[v32], v33);
      v36 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v37 = &v17[v32];
      v38 = &v18[v32];
    }

    memcpy(v37, v38, v36);
LABEL_18:
    v41 = v19[7];
    v42 = sub_1000C0938();
    (*(*(v42 - 8) + 40))(&v17[v41], &v18[v41], v42);
    v43 = v19[8];
    v44 = *&v17[v43];
    *&v17[v43] = *&v18[v43];

    *&v17[v19[9]] = *&v18[v19[9]];
    v17[v19[10]] = v18[v19[10]];
    v17[v19[11]] = v18[v19[11]];
    goto LABEL_19;
  }

  if (v23)
  {
LABEL_7:
    v29 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v17, v18, *(*(v29 - 8) + 64));
    goto LABEL_19;
  }

  v24 = *(v18 + 1);
  *v17 = *v18;
  *(v17 + 1) = v24;
  v25 = v19[6];
  v26 = sub_1000C0818();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(&v18[v25], 1, v26))
  {
    v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v17[v25], &v18[v25], *(*(v28 - 8) + 64));
  }

  else
  {
    (*(v27 + 32))(&v17[v25], &v18[v25], v26);
    (*(v27 + 56))(&v17[v25], 0, 1, v26);
  }

  v39 = v19[7];
  v40 = sub_1000C0938();
  (*(*(v40 - 8) + 32))(&v17[v39], &v18[v39], v40);
  *&v17[v19[8]] = *&v18[v19[8]];
  *&v17[v19[9]] = *&v18[v19[9]];
  v17[v19[10]] = v18[v19[10]];
  v17[v19[11]] = v18[v19[11]];
  (*(v20 + 56))(v17, 0, 1, v19);
LABEL_19:
  v45 = v7[10];
  v46 = *(a1 + v45);
  *(a1 + v45) = *(a2 + v45);

  v47 = v7[11];
  v48 = (a1 + v47);
  v49 = (a2 + v47);
  v51 = *v49;
  v50 = v49[1];
  v52 = v48[1];
  *v48 = v51;
  v48[1] = v50;

  v53 = v7[12];
  v54 = *(a1 + v53);
  *(a1 + v53) = *(a2 + v53);

  v55 = v7[13];
  v56 = (a1 + v55);
  v57 = (a2 + v55);
  v59 = *v57;
  v58 = v57[1];
  v60 = v56[1];
  *v56 = v59;
  v56[1] = v58;

  v61 = v7[14];
  v62 = (a1 + v61);
  v63 = (a2 + v61);
  v65 = *v63;
  v64 = v63[1];
  v66 = v62[1];
  *v62 = v65;
  v62[1] = v64;

  *(a1 + v7[15]) = *(a2 + v7[15]);
  v67 = v7[16];
  v68 = (a1 + v67);
  v69 = (a2 + v67);
  v71 = *v69;
  v70 = v69[1];
  v72 = v68[1];
  *v68 = v71;
  v68[1] = v70;

  v73 = v7[17];
  v74 = *(a1 + v73);
  *(a1 + v73) = *(a2 + v73);

  v75 = v7[18];
  v76 = sub_1000C0938();
  (*(*(v76 - 8) + 40))(a1 + v75, a2 + v75, v76);
  v77 = v7[19];
  v78 = *(a1 + v77);
  *(a1 + v77) = *(a2 + v77);

  *(a1 + v7[20]) = *(a2 + v7[20]);
  return a1;
}

uint64_t sub_100019EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100019F20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100019FB0()
{
  result = type metadata accessor for TTRNewWidgetViewModel(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10001A0E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001A1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAnyListComplicationWidgetView.InteractiveReminderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001A254()
{
  result = qword_1000ED488;
  if (!qword_1000ED488)
  {
    sub_100005334(&qword_1000ED470, &qword_1000C4F28);
    sub_10001A310(&qword_1000ED490, type metadata accessor for TTRIAnyListComplicationWidgetView.InteractiveReminderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED488);
  }

  return result;
}

uint64_t sub_10001A310(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001A358()
{
  result = qword_1000ED498;
  if (!qword_1000ED498)
  {
    sub_100005334(&qword_1000ED460, &qword_1000C4F18);
    sub_100008478(&qword_1000ED480, &qword_1000ED468, &qword_1000C4F20);
    sub_10001A254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED498);
  }

  return result;
}

uint64_t sub_10001A410(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10001A460(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10001A504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001A5B8()
{
  result = qword_1000ED4B8;
  if (!qword_1000ED4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED4B8);
  }

  return result;
}

unint64_t sub_10001A60C()
{
  result = qword_1000ED4C0;
  if (!qword_1000ED4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED4C0);
  }

  return result;
}

unint64_t sub_10001A660()
{
  result = qword_1000ED4C8;
  if (!qword_1000ED4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED4C8);
  }

  return result;
}

unint64_t sub_10001A6B4()
{
  result = qword_1000ED4D0;
  if (!qword_1000ED4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED4D0);
  }

  return result;
}

uint64_t *sub_10001A748(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0E58();
    (*(*(v7 - 8) + 16))(v4, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = v4 + v8;
    v11 = a2 + v8;
    v12 = *v11;
    LOBYTE(v11) = v11[8];
    *v10 = v12;
    v10[8] = v11;
    *(v4 + v9) = *(a2 + v9);
  }

  return v4;
}

uint64_t sub_10001A830(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0E58();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + *(a2 + 20));

  v6 = *(a1 + *(a2 + 24));
}

uint64_t sub_10001A8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = a1 + v7;
  v10 = (a2 + v7);
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  *v9 = v11;
  *(v9 + 8) = v10;
  *(a1 + v8) = *(a2 + v8);

  return a1;
}

uint64_t sub_10001A950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  v11 = *v8;
  *v8 = v10;
  *(v8 + 8) = v9;

  v12 = *(a3 + 24);
  v13 = *(a1 + v12);
  *(a1 + v12) = *(a2 + v12);

  return a1;
}

uint64_t sub_10001AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = a1 + v7;
  v10 = a2 + v7;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(a1 + v8) = *(a2 + v8);
  return a1;
}

uint64_t sub_10001AA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0E58();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  v11 = *v8;
  *v8 = v10;
  *(v8 + 8) = v9;

  v12 = *(a3 + 24);
  v13 = *(a1 + v12);
  *(a1 + v12) = *(a2 + v12);

  return a1;
}

uint64_t sub_10001AB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0E58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001AC28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C0E58();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10001AD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *sub_10001ADB0(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = a2[1];
    *(a1 + 1) = v7;
    v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v9 = v8[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v7;
    if (v12(a2 + v9, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v6[v9], a2 + v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v6[v9], a2 + v9, v10);
      (*(v11 + 56))(&v6[v9], 0, 1, v10);
    }

    v16 = v8[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v6[v16], a2 + v16, v17);
    v18 = v8[8];
    v19 = *(a2 + v18);
    *&v6[v18] = v19;
    *&v6[v8[9]] = *(a2 + v8[9]);
    v6[v8[10]] = *(a2 + v8[10]);
    v6[v8[11]] = *(a2 + v8[11]);
    v20 = a3[6];
    v6[a3[5]] = *(a2 + a3[5]);
    v21 = &v6[v20];
    v22 = (a2 + v20);
    v23 = *v22;
    LOBYTE(v22) = *(v22 + 8);
    *v21 = v23;
    v21[8] = v22;
    v24 = a3[7];
    v25 = &v6[v24];
    v26 = (a2 + v24);
    v27 = *v26;
    LOBYTE(v26) = *(v26 + 8);
    *v25 = v27;
    v25[8] = v26;
    v28 = v19;
  }

  return v6;
}

uint64_t sub_10001B004(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v5 = v4[6];
  v6 = sub_1000C0818();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v8 = v4[7];
  v9 = sub_1000C0938();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);

  v10 = *(a1 + *(a2 + 24));

  v11 = *(a1 + *(a2 + 28));
}

char *sub_10001B134(char *a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = a3[6];
  a1[a3[5]] = *(a2 + a3[5]);
  v20 = &a1[v19];
  v21 = (a2 + v19);
  v22 = *v21;
  LOBYTE(v21) = *(v21 + 8);
  *v20 = v22;
  v20[8] = v21;
  v23 = a3[7];
  v24 = &a1[v23];
  v25 = (a2 + v23);
  v26 = *v25;
  LOBYTE(v25) = *(v25 + 8);
  *v24 = v26;
  v24[8] = v25;
  v27 = v18;

  return a1;
}

uint64_t sub_10001B340(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 24))(a1 + v13, a2 + v13, v14);
      goto LABEL_7;
    }

    (*(v15 + 8))(a1 + v13, v14);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 16))(a1 + v13, a2 + v13, v14);
  (*(v15 + 56))(a1 + v13, 0, 1, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v26 = a3[6];
  v27 = (a1 + v26);
  v28 = (a2 + v26);
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  v30 = *v27;
  *v27 = v29;
  *(v27 + 8) = v28;

  v31 = a3[7];
  v32 = (a1 + v31);
  v33 = (a2 + v31);
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v35 = *v32;
  *v32 = v34;
  *(v32 + 8) = v33;

  return a1;
}

char *sub_10001B5D0(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  v15 = &a1[v14];
  v16 = &a2[v14];
  *v15 = *v16;
  v15[8] = v16[8];
  v17 = a3[7];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v18[8] = v19[8];
  *v18 = *v19;
  return a1;
}

uint64_t sub_10001B7AC(uint64_t a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, &a2[v9], v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v9), &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 32))(a1 + v9, &a2[v9], v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(a1 + v16, &a2[v16], v17);
  v18 = v8[8];
  v19 = *(a1 + v18);
  *(a1 + v18) = *&a2[v18];

  *(a1 + v8[9]) = *&a2[v8[9]];
  *(a1 + v8[10]) = a2[v8[10]];
  *(a1 + v8[11]) = a2[v8[11]];
  v20 = a3[6];
  *(a1 + a3[5]) = a2[a3[5]];
  v21 = (a1 + v20);
  v22 = &a2[v20];
  v23 = *v22;
  LOBYTE(v22) = v22[8];
  v24 = *v21;
  *v21 = v23;
  *(v21 + 8) = v22;

  v25 = a3[7];
  v26 = (a1 + v25);
  v27 = &a2[v25];
  v28 = *v27;
  LOBYTE(v27) = v27[8];
  v29 = *v26;
  *v26 = v28;
  *(v26 + 8) = v27;

  return a1;
}

uint64_t sub_10001BA4C()
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TTRNewWidgetPresenter.ShareeInfoStyle(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t destroy for TTRIAnyListComplicationWidgetView.ListInfoView(void *a1)
{
  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[4];
}

uint64_t initializeWithCopy for TTRIAnyListComplicationWidgetView.ListInfoView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for TTRIAnyListComplicationWidgetView.ListInfoView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v5 = *(a2 + 24);
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v7 = *(a2 + 32);
  v8 = *(a1 + 32);
  *(a1 + 32) = v7;

  return a1;
}

__n128 initializeWithTake for TTRIAnyListComplicationWidgetView.ListInfoView(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TTRIAnyListComplicationWidgetView.ListInfoView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  v8 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIAnyListComplicationWidgetView.ListInfoView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for TTRIAnyListComplicationWidgetView.ListInfoView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10001BD5C()
{
  sub_100005334(&qword_1000ED438, &qword_1000C4EF8);
  sub_100008478(&qword_1000ED448, &qword_1000ED438, &qword_1000C4EF8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001BE10()
{
  v0 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_1000C1CD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for Font.TextStyle.headline(_:), v4);
  v9 = sub_1000C1C38();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = sub_1000C1C78();
  sub_1000084C0(v3, &qword_1000ECC38, &qword_1000C3720);
  result = (*(v5 + 8))(v8, v4);
  qword_1000ED2E0 = v10;
  return result;
}

uint64_t sub_10001BFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10001C834();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_10001C0CC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = sub_1000C1CD8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for Font.TextStyle.body(_:), v7);
  v12 = enum case for Font.Design.default(_:);
  v13 = sub_1000C1C38();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v6, v12, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  v15 = sub_1000C1C78();
  sub_1000084C0(v6, &qword_1000ECC38, &qword_1000C3720);
  result = (*(v8 + 8))(v11, v7);
  *a2 = v15;
  return result;
}

uint64_t sub_10001C30C(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  v5 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000C1CD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, enum case for Font.TextStyle.body(_:), v9);
  v14 = enum case for Font.Design.default(_:);
  v15 = sub_1000C1C38();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v8, v14, v15);
  v17 = (*(v16 + 56))(v8, 0, 1, v15);
  a2(v17);
  v18 = sub_1000C1C78();
  sub_1000084C0(v8, &qword_1000ECC38, &qword_1000C3720);
  result = (*(v10 + 8))(v13, v9);
  *a3 = v18;
  return result;
}

uint64_t sub_10001C538@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;
}

uint64_t sub_10001C604(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001C624()
{
  result = qword_1000ED638;
  if (!qword_1000ED638)
  {
    sub_100005334(&qword_1000ED620, &qword_1000C63C0);
    sub_100008478(&qword_1000ED640, &qword_1000ED648, &qword_1000C5330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED638);
  }

  return result;
}

unint64_t sub_10001C6DC()
{
  result = qword_1000ED650;
  if (!qword_1000ED650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED650);
  }

  return result;
}

uint64_t sub_10001C750@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_1000C1948();
  *a2 = v4;
  return result;
}

unint64_t sub_10001C7E0()
{
  result = qword_1000ED658;
  if (!qword_1000ED658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED658);
  }

  return result;
}

unint64_t sub_10001C834()
{
  result = qword_1000ED660;
  if (!qword_1000ED660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED660);
  }

  return result;
}

char *sub_10001C898(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = a2[1];
    *(a1 + 1) = v7;
    v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v9 = v8[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v7;
    if (v12(a2 + v9, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v6[v9], a2 + v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v6[v9], a2 + v9, v10);
      (*(v11 + 56))(&v6[v9], 0, 1, v10);
    }

    v16 = v8[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v6[v16], a2 + v16, v17);
    v18 = v8[8];
    v19 = *(a2 + v18);
    *&v6[v18] = v19;
    *&v6[v8[9]] = *(a2 + v8[9]);
    v6[v8[10]] = *(a2 + v8[10]);
    v6[v8[11]] = *(a2 + v8[11]);
    v20 = a3[6];
    v6[a3[5]] = *(a2 + a3[5]);
    *&v6[v20] = *(a2 + v20);
    v21 = a3[7];
    v22 = a3[8];
    v23 = &v6[v21];
    v24 = (a2 + v21);
    v25 = *v24;
    LOBYTE(v24) = *(v24 + 8);
    *v23 = v25;
    v23[8] = v24;
    v26 = &v6[v22];
    v27 = (a2 + v22);
    v28 = *v27;
    LOBYTE(v27) = *(v27 + 8);
    *v26 = v28;
    v26[8] = v27;
    v29 = a3[9];
    v30 = &v6[v29];
    v31 = (a2 + v29);
    v32 = *v31;
    LOBYTE(v31) = *(v31 + 8);
    *v30 = v32;
    v30[8] = v31;
    v33 = v19;
  }

  return v6;
}

uint64_t sub_10001CB18(id *a1, int *a2)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v5 = v4[6];
  v6 = sub_1000C0818();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(a1 + v5, 1, v6))
  {
    (*(v7 + 8))(a1 + v5, v6);
  }

  v8 = v4[7];
  v9 = sub_1000C0938();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);

  v10 = *(a1 + a2[7]);

  v11 = *(a1 + a2[8]);

  v12 = *(a1 + a2[9]);
}

char *sub_10001CC54(char *a1, uint64_t a2, int *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v5;
  v13 = v6;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = v7[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = v7[8];
  v18 = *(a2 + v17);
  *&a1[v17] = v18;
  *&a1[v7[9]] = *(a2 + v7[9]);
  a1[v7[10]] = *(a2 + v7[10]);
  a1[v7[11]] = *(a2 + v7[11]);
  v19 = a3[6];
  a1[a3[5]] = *(a2 + a3[5]);
  *&a1[v19] = *(a2 + v19);
  v20 = a3[7];
  v21 = a3[8];
  v22 = &a1[v20];
  v23 = (a2 + v20);
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  *v22 = v24;
  v22[8] = v23;
  v25 = &a1[v21];
  v26 = (a2 + v21);
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  *v25 = v27;
  v25[8] = v26;
  v28 = a3[9];
  v29 = &a1[v28];
  v30 = (a2 + v28);
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  *v29 = v31;
  v29[8] = v30;
  v32 = v18;

  return a1;
}

uint64_t sub_10001CE8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v13 = v12[6];
  v14 = sub_1000C0818();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(a1 + v13, 1, v14);
  v18 = v16(a2 + v13, 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 24))(a1 + v13, a2 + v13, v14);
      goto LABEL_7;
    }

    (*(v15 + 8))(a1 + v13, v14);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v19 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v13), (a2 + v13), *(*(v19 - 8) + 64));
    goto LABEL_7;
  }

  (*(v15 + 16))(a1 + v13, a2 + v13, v14);
  (*(v15 + 56))(a1 + v13, 0, 1, v14);
LABEL_7:
  v20 = v12[7];
  v21 = sub_1000C0938();
  (*(*(v21 - 8) + 24))(a1 + v20, a2 + v20, v21);
  v22 = v12[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = v24;

  *(a1 + v12[9]) = *(a2 + v12[9]);
  *(a1 + v12[10]) = *(a2 + v12[10]);
  *(a1 + v12[11]) = *(a2 + v12[11]);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v26 = a3[7];
  v27 = (a1 + v26);
  v28 = (a2 + v26);
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  v30 = *v27;
  *v27 = v29;
  *(v27 + 8) = v28;

  v31 = a3[8];
  v32 = (a1 + v31);
  v33 = (a2 + v31);
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v35 = *v32;
  *v32 = v34;
  *(v32 + 8) = v33;

  v36 = a3[9];
  v37 = (a1 + v36);
  v38 = (a2 + v36);
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  v40 = *v37;
  *v37 = v39;
  *(v37 + 8) = v38;

  return a1;
}

char *sub_10001D154(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v8 = v7[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(&a2[v8], 1, v9))
  {
    v11 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], &a2[v8], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v10 + 32))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v12 = v7[7];
  v13 = sub_1000C0938();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  *&a1[v7[8]] = *&a2[v7[8]];
  *&a1[v7[9]] = *&a2[v7[9]];
  a1[v7[10]] = a2[v7[10]];
  a1[v7[11]] = a2[v7[11]];
  v14 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v14] = *&a2[v14];
  v15 = a3[7];
  v16 = a3[8];
  v17 = &a1[v15];
  v18 = &a2[v15];
  *v17 = *v18;
  v17[8] = v18[8];
  v19 = &a1[v16];
  v20 = &a2[v16];
  *v19 = *v20;
  v19[8] = v20[8];
  v21 = a3[9];
  v22 = &a1[v21];
  v23 = &a2[v21];
  *v22 = *v23;
  v22[8] = v23[8];
  return a1;
}

uint64_t sub_10001D354(uint64_t a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = v8[6];
  v10 = sub_1000C0818();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(a1 + v9, 1, v10);
  v14 = v12(&a2[v9], 1, v10);
  if (!v13)
  {
    if (!v14)
    {
      (*(v11 + 40))(a1 + v9, &a2[v9], v10);
      goto LABEL_7;
    }

    (*(v11 + 8))(a1 + v9, v10);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v9), &a2[v9], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(v11 + 32))(a1 + v9, &a2[v9], v10);
  (*(v11 + 56))(a1 + v9, 0, 1, v10);
LABEL_7:
  v16 = v8[7];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 40))(a1 + v16, &a2[v16], v17);
  v18 = v8[8];
  v19 = *(a1 + v18);
  *(a1 + v18) = *&a2[v18];

  *(a1 + v8[9]) = *&a2[v8[9]];
  *(a1 + v8[10]) = a2[v8[10]];
  *(a1 + v8[11]) = a2[v8[11]];
  v20 = a3[6];
  *(a1 + a3[5]) = a2[a3[5]];
  *(a1 + v20) = *&a2[v20];
  v21 = a3[7];
  v22 = (a1 + v21);
  v23 = &a2[v21];
  v24 = *v23;
  LOBYTE(v23) = v23[8];
  v25 = *v22;
  *v22 = v24;
  *(v22 + 8) = v23;

  v26 = a3[8];
  v27 = (a1 + v26);
  v28 = &a2[v26];
  v29 = *v28;
  LOBYTE(v28) = v28[8];
  v30 = *v27;
  *v27 = v29;
  *(v27 + 8) = v28;

  v31 = a3[9];
  v32 = (a1 + v31);
  v33 = &a2[v31];
  v34 = *v33;
  LOBYTE(v33) = v33[8];
  v35 = *v32;
  *v32 = v34;
  *(v32 + 8) = v33;

  return a1;
}

uint64_t sub_10001D608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001D6E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10001D7A0()
{
  result = type metadata accessor for TTRNewWidgetViewModel.Reminder(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_10001D854()
{
  result = qword_1000ED710;
  if (!qword_1000ED710)
  {
    sub_100005334(&qword_1000ED718, &qword_1000C53A8);
    sub_100005334(&qword_1000ED610, &qword_1000C6390);
    type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle(255);
    sub_100008478(&qword_1000ED628, &qword_1000ED610, &qword_1000C6390);
    sub_10001A310(&qword_1000ED630, type metadata accessor for TTRIAnyListComplicationWidgetView.ReminderToggleStyle);
    swift_getOpaqueTypeConformance2();
    sub_10001C624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED710);
  }

  return result;
}

uint64_t sub_10001DA60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004D04(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001DAC8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100008420(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10001DB0C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000537C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIAnyListComplicationWidgetView.CompletedView(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRNewWidgetPresenter.DisplayDateStyle.TimeOfDayStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10001DD1C()
{
  result = qword_1000ED788;
  if (!qword_1000ED788)
  {
    sub_100005334(&qword_1000ED790, &unk_1000C6F50);
    sub_10001DDD4();
    sub_100008478(&qword_1000ED7B8, &qword_1000ED7C0, &unk_1000C5580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED788);
  }

  return result;
}

unint64_t sub_10001DDD4()
{
  result = qword_1000ED798;
  if (!qword_1000ED798)
  {
    sub_100005334(&qword_1000ED7A0, &unk_1000C5570);
    sub_100008478(&qword_1000ED7A8, &qword_1000ED7B0, &qword_1000C62E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED798);
  }

  return result;
}

uint64_t sub_10001DEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001DF44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s10WidgetViewVMa()
{
  result = qword_1000ED820;
  if (!qword_1000ED820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E000()
{
  result = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}