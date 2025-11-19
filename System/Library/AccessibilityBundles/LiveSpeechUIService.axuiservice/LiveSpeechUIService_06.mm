double sub_9E5DC(unsigned __int8 a1, double a2, double a3, double a4, double a5)
{
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB8C0);
  sub_BABD0();
  if (LOBYTE(v16))
  {
    v10 = 24.0;
  }

  else
  {
    v10 = 32.0;
  }

  v11 = sub_9E83C(a4, a5) - v10;
  if (a1 <= 1u)
  {
    if (a1)
    {
      sub_9E960();
    }

    else
    {
      sub_2E50(&qword_F9018);
      sub_BABD0();
      sub_2E50(&qword_F96C8);
      sub_BABD0();
      captionVisibleTextHeight(textHeight:isAccessibilityLayout:)(SLOBYTE(v16), v16);
    }
  }

  else if (a1 == 2)
  {
    sub_9B2B4(a2, a3, a4, a5);
  }

  else if (a1 == 3)
  {
    v12 = [objc_opt_self() mainScreen];
    [v12 bounds];
    v11 = v13;
  }

  else
  {
    if (qword_F8240 != -1)
    {
      swift_once();
    }

    v14 = *&qword_100BF0;
    if (qword_F8250 != -1)
    {
      swift_once();
    }

    return v14 + *&qword_100C08;
  }

  return v11;
}

double sub_9E83C(double a1, double a2)
{
  if (AXDeviceIsPad())
  {
    type metadata accessor for LiveCaptionsRootView();
    sub_2E50(&qword_F96C8);
    sub_BABD0();
    if (v15 == 1 || AXDeviceIsPadMiniIdiom() && a1 < a2)
    {
      v4 = 0.84;
    }

    else
    {
      v4 = 0.5;
    }

    return a1 * v4;
  }

  else if (a2 < a1)
  {
    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v16.origin.x = v7;
    v16.origin.y = v9;
    v16.size.width = v11;
    v16.size.height = v13;
    return CGRectGetWidth(v16) * 0.5;
  }

  return a1;
}

double sub_9E960()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v0 = AXLTSettingsManager.buttonScaledHeight.getter() + 12.0 + 6.0;
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_F9018);
  sub_BABD0();
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  captionVisibleTextHeight(textHeight:isAccessibilityLayout:)(SLOBYTE(v3), v3);
  return v0 + v1;
}

double sub_9EA78()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v0 = AXLTSettingsManager.buttonScaledHeight.getter();
  v1 = v0 + 12.0 + v0 + 12.0 + 6.0 + 42.0;
  type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_F9018);
  sub_BABD0();
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  captionVisibleTextHeight(textHeight:isAccessibilityLayout:)(SLOBYTE(v4), v4);
  return v1 + v2;
}

uint64_t sub_9EBA0(double a1, double a2, double a3, double a4)
{
  v8 = sub_B9E70();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  sub_B9C30();
  v16 = v15;
  v18 = v17;
  type metadata accessor for LiveCaptionsRootView();
  sub_B5C08(v14);
  (*(v9 + 104))(v11, enum case for LayoutDirection.rightToLeft(_:), v8);
  v19 = sub_B9E60();
  v20 = *(v9 + 8);
  v20(v11, v8);
  v20(v14, v8);
  v21 = -v16;
  if ((v19 & 1) == 0)
  {
    v21 = v16;
  }

  return sub_9DED8(v21, v18, a1, a2, a3, a4);
}

uint64_t sub_9ED58()
{
  sub_BAE30();
  sub_B9D80();
}

uint64_t sub_9EDB8(uint64_t a1)
{
  v2 = type metadata accessor for LiveCaptionsRootView();
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = LiveSpeechCaptionsViewsCoordinator.safeHeightInset()();
  v6 = (a1 + *(v2 + 64));
  v7 = *v6;
  v8 = v6[1];
  v22 = v7;
  v23 = v8;
  v24 = v5;
  sub_2E50(&qword_FA710);
  sub_BABE0();
  v9 = sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  v10 = qword_100C30;
  sub_A2438(a1, v4, type metadata accessor for LiveCaptionsRootView);
  if (!os_log_type_enabled(v10, v9))
  {
    return sub_A1E88(v4, type metadata accessor for LiveCaptionsRootView);
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v24 = *&v12;
  *v11 = 136315138;
  v13 = &v4[*(v2 + 64)];
  v14 = *v13;
  v15 = *(v13 + 1);
  v22 = v14;
  v23 = v15;
  sub_BABD0();
  v16 = sub_BB1E0();
  v18 = v17;
  sub_A1E88(v4, type metadata accessor for LiveCaptionsRootView);
  v19 = sub_7A1D8(v16, v18, &v24);

  *(v11 + 4) = v19;
  _os_log_impl(&dword_0, v10, v9, "liveCaptionsAdjustFrame bottomSafeInset %s", v11, 0xCu);
  sub_28020(v12);
}

void sub_9F020(uint64_t a1, uint64_t a2)
{
  sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  sub_B99F0();
  v3 = *(a2 + *(type metadata accessor for LiveCaptionsRootView() + 108) + 8);
  v4 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  if (*(v3 + v4) == 1)
  {
    AXLTCaptionsProvider.activate(_:)(0);
    sub_2E50(&qword_F96C8);
    sub_BABE0();
    v5 = [objc_opt_self() defaultCenter];
    if (qword_F8348 != -1)
    {
      swift_once();
    }

    [v5 postNotificationName:qword_100D78 object:0 userInfo:0];
  }
}

id sub_9F1C4(uint64_t a1, uint64_t a2)
{
  sub_BB2F0();
  if (qword_F8278 != -1)
  {
    swift_once();
  }

  sub_B99F0();
  v3 = type metadata accessor for LiveCaptionsRootView();
  sub_2E50(&qword_FB8C0);
  result = sub_BABD0();
  if (v5 != 4)
  {
    __chkstk_darwin(result);
    sub_BAE30();
    sub_B9D80();

    sub_915B8();
    LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_pip);
    sub_9D610();
    return [*(a2 + *(v3 + 92)) idleSleepTimerDisabled:0];
  }

  return result;
}

uint64_t sub_9F370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2E50(&qword_FB7E8);
  __chkstk_darwin(v6);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  sub_A2438(v2, v5, type metadata accessor for LiveCaptionsRootView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_A2628(v5, v13 + v12, type metadata accessor for LiveCaptionsRootView);
  v14 = v8 + *(v6 + 36);
  sub_9589C(v14);
  v15 = sub_BADE0();
  v17 = v16;
  v18 = (v14 + *(sub_2E50(&qword_FB7F0) + 36));
  *v18 = v15;
  v18[1] = v17;
  *v8 = sub_A0190;
  v8[1] = v13;
  v19 = sub_A0210();
  sub_B5F50(v8, v6, v19);
  sub_C5E8(v8, &qword_FB7E8);
  sub_B5F50(v11, v6, v19);
  return sub_C5E8(v11, &qword_FB7E8);
}

uint64_t sub_9F5EC(uint64_t a1)
{
  v2 = sub_2E50(&qword_F8530);
  __chkstk_darwin(v2 - 8);
  sub_57A0(a1, &v5 - v3, &qword_F8530);
  return sub_BA070();
}

double sub_9F694@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_9F714(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_B9B20();
}

unint64_t _s19LiveSpeechUIService11WindowStateO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_9F79C()
{
  result = qword_FB690;
  if (!qword_FB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB690);
  }

  return result;
}

unint64_t sub_9F7F4()
{
  result = qword_FB698;
  if (!qword_FB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB698);
  }

  return result;
}

uint64_t sub_9F884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2E50(&qword_F8AF8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2E50(&qword_F9AC0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 92));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_9F9BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2E50(&qword_F8AF8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2E50(&qword_F9AC0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 92)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for LiveCaptionsRootView()
{
  result = qword_FB6F8;
  if (!qword_FB6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9FB28()
{
  sub_9FF34(319, &qword_F8B68, &qword_F8530, &unk_C3C70, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_9FED0(319, &qword_F9B48, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_9FF34(319, &qword_F8B80, &qword_F8B88, &unk_BE4F0, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_BB3C(319, &qword_FB708);
        if (v3 <= 0x3F)
        {
          sub_BB3C(319, &unk_F88B8);
          if (v4 <= 0x3F)
          {
            sub_9FED0(319, &unk_F8B98, type metadata accessor for CGSize, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_BB3C(319, &qword_FA858);
              if (v6 <= 0x3F)
              {
                sub_9FED0(319, &qword_FB710, type metadata accessor for CGRect, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_9FF34(319, &qword_F9B40, &qword_F9020, &unk_BEA00, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_BB3C(319, &qword_F88B0);
                    if (v9 <= 0x3F)
                    {
                      sub_35DD4(319, &qword_FB718);
                      if (v10 <= 0x3F)
                      {
                        sub_9FF34(319, &qword_FB720, &qword_FB728, &unk_C2A50, &type metadata accessor for State);
                        if (v11 <= 0x3F)
                        {
                          sub_BB3C(319, &qword_FB730);
                          if (v12 <= 0x3F)
                          {
                            sub_9FF98();
                            if (v13 <= 0x3F)
                            {
                              sub_A002C();
                              if (v14 <= 0x3F)
                              {
                                type metadata accessor for LiveSpeechCaptionsViewsCoordinator();
                                if (v15 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_9FED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_9FF34(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_5520(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_9FF98()
{
  if (!qword_FB738)
  {
    type metadata accessor for ForeheadWindow();
    sub_A00C0(&qword_FB740, type metadata accessor for ForeheadWindow);
    v0 = sub_B9DE0();
    if (!v1)
    {
      atomic_store(v0, &qword_FB738);
    }
  }
}

void sub_A002C()
{
  if (!qword_FB748)
  {
    type metadata accessor for AXLTCaptionsProvider();
    sub_A00C0(&unk_FB750, type metadata accessor for AXLTCaptionsProvider);
    v0 = sub_B9DE0();
    if (!v1)
    {
      atomic_store(v0, &qword_FB748);
    }
  }
}

uint64_t sub_A00C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_A011C()
{
  result = qword_FB7E0;
  if (!qword_FB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB7E0);
  }

  return result;
}

uint64_t sub_A0190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LiveCaptionsRootView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_8E7C0(a1, v6, a2);
}

unint64_t sub_A0210()
{
  result = qword_FB7F8;
  if (!qword_FB7F8)
  {
    sub_5520(&qword_FB7E8);
    sub_D150(&qword_FB800, &qword_FB808);
    sub_D150(&qword_FB810, &qword_FB7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB7F8);
  }

  return result;
}

uint64_t sub_A03A4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  type metadata accessor for LiveCaptionsRootView();

  return sub_92F90(a1, a2, a3, a4);
}

void sub_A04B0()
{
  type metadata accessor for LiveCaptionsRootView();
  sub_B9D40();

  sub_94060();
}

uint64_t sub_A0594()
{
  v1 = type metadata accessor for LiveCaptionsRootView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  v18 = sub_B9D40();
  v4 = *(v18 - 8);
  v5 = *(v4 + 80);
  v17 = *(v4 + 64);
  v6 = v0 + v3;
  sub_2E50(&qword_FA6E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_BA500();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v3, 1, v7))
    {
      (*(v8 + 8))(v0 + v3, v7);
    }
  }

  else
  {
  }

  v9 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_BA500();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v1[6];
  sub_2E50(&qword_F8AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_B9E70();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

  else
  {
  }

  v14 = (v3 + v16 + v5) & ~v5;
  sub_E538(*(v6 + v1[7]), *(v6 + v1[7] + 8), *(v6 + v1[7] + 9));

  (*(v4 + 8))(v0 + v14, v18);

  return _swift_deallocObject(v0, v14 + v17, v2 | v5 | 7);
}

uint64_t sub_A0A3C()
{
  type metadata accessor for LiveCaptionsRootView();
  sub_B9D40();

  return sub_950F8();
}

unint64_t sub_A0B20()
{
  result = qword_FB898;
  if (!qword_FB898)
  {
    sub_5520(&qword_FB838);
    sub_A0BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB898);
  }

  return result;
}

unint64_t sub_A0BAC()
{
  result = qword_FB8A0;
  if (!qword_FB8A0)
  {
    sub_5520(&qword_FB890);
    sub_D150(&qword_FB8A8, &qword_FB888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB8A0);
  }

  return result;
}

uint64_t sub_A0C7C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for LiveCaptionsRootView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_A0D18(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LiveCaptionsRootView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_A0D8C()
{
  v1 = type metadata accessor for LiveCaptionsRootView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_2E50(&qword_FA6E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_BA500();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
  }

  v8 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_BA500();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[6];
  sub_2E50(&qword_F8AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_B9E70();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  sub_E538(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 9));

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

id sub_A11AC(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveCaptionsRootView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_9F1C4(a1, v4);
}

uint64_t sub_A124C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_A1288(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveCaptionsRootView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_9F020(a1, v4);
}

unint64_t sub_A1370()
{
  result = qword_FB8F8;
  if (!qword_FB8F8)
  {
    sub_5520(&qword_FB8F0);
    sub_A13FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB8F8);
  }

  return result;
}

unint64_t sub_A13FC()
{
  result = qword_FB900;
  if (!qword_FB900)
  {
    sub_5520(&qword_FB908);
    sub_A1488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB900);
  }

  return result;
}

unint64_t sub_A1488()
{
  result = qword_FB910;
  if (!qword_FB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB910);
  }

  return result;
}

unint64_t sub_A1530()
{
  result = qword_FB978;
  if (!qword_FB978)
  {
    sub_5520(&qword_FB918);
    sub_D150(&qword_FB980, &qword_FB988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB978);
  }

  return result;
}

unint64_t sub_A15E8()
{
  result = qword_FB990;
  if (!qword_FB990)
  {
    sub_5520(&qword_FB970);
    sub_A1530();
    sub_D150(&qword_FB538, &qword_FB540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB990);
  }

  return result;
}

unint64_t sub_A16A0()
{
  result = qword_FB9A0;
  if (!qword_FB9A0)
  {
    sub_5520(&qword_FB938);
    sub_A172C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB9A0);
  }

  return result;
}

unint64_t sub_A172C()
{
  result = qword_FB9A8;
  if (!qword_FB9A8)
  {
    sub_5520(&qword_FB930);
    sub_A17B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB9A8);
  }

  return result;
}

unint64_t sub_A17B8()
{
  result = qword_FB9B0;
  if (!qword_FB9B0)
  {
    sub_5520(&qword_FB928);
    sub_A1844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB9B0);
  }

  return result;
}

unint64_t sub_A1844()
{
  result = qword_FB9B8;
  if (!qword_FB9B8)
  {
    sub_5520(&qword_FB920);
    sub_A18FC();
    sub_D150(&qword_FB548, &qword_FAF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB9B8);
  }

  return result;
}

unint64_t sub_A18FC()
{
  result = qword_FB9C0;
  if (!qword_FB9C0)
  {
    sub_5520(&qword_FB998);
    sub_5520(&qword_FB918);
    sub_5520(&qword_FB968);
    sub_5520(&qword_FB970);
    sub_A1530();
    sub_B9F50();
    sub_A00C0(&qword_F8E40, &type metadata accessor for RoundedRectangle);
    swift_getOpaqueTypeConformance2();
    sub_A15E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB9C0);
  }

  return result;
}

id sub_A1AAC()
{
  v1 = type metadata accessor for LiveCaptionsRootView();
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 92));

  return [v2 idleSleepTimerDisabled:0];
}

unint64_t sub_A1B44()
{
  result = qword_FB9C8;
  if (!qword_FB9C8)
  {
    sub_5520(&qword_FB950);
    sub_A1BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB9C8);
  }

  return result;
}

unint64_t sub_A1BD0()
{
  result = qword_FB9D0;
  if (!qword_FB9D0)
  {
    sub_5520(&qword_FB948);
    sub_5520(&qword_FB938);
    sub_A16A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB9D0);
  }

  return result;
}

unint64_t sub_A1C98()
{
  result = qword_FB9D8;
  if (!qword_FB9D8)
  {
    sub_5520(&qword_FA368);
    sub_A00C0(&qword_FA320, &type metadata accessor for AXLTCaption);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FB9D8);
  }

  return result;
}

uint64_t sub_A1D4C(CGFloat *a1)
{
  v3 = *(type metadata accessor for LiveCaptionsRootView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];

  return sub_9A1D0(a1, v1 + v4, v6, v7, v8, v9);
}

uint64_t sub_A1E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_A1EE8()
{
  v1 = type metadata accessor for LiveCaptionsRootView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_2E50(&qword_FA6E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_BA500();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
  }

  v8 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_BA500();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[6];
  sub_2E50(&qword_F8AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_B9E70();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  sub_E538(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 9));

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32, v2 | 7);
}

uint64_t sub_A2320(uint64_t (*a1)(unint64_t, __n128, __n128, __n128, __n128))
{
  v2 = *(type metadata accessor for LiveCaptionsRootView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5.n128_u64[0] = *v4;
  v6.n128_u64[0] = v4[1];
  v7.n128_u64[0] = v4[2];
  v8.n128_u64[0] = v4[3];

  return a1(v1 + v3, v5, v6, v7, v8);
}

unint64_t sub_A23D0()
{
  result = qword_F9038;
  if (!qword_F9038)
  {
    sub_35DD4(255, &qword_F9028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F9038);
  }

  return result;
}

uint64_t sub_A2438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_A24A0()
{
  v1 = type metadata accessor for LiveSpeechCaptionsPipView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 64);
  sub_2E50(&qword_F8AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_B9E70();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_A2628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_A2690(uint64_t a1)
{
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = -1;
  return result;
}

unint64_t sub_A26C4()
{
  result = qword_FBA68;
  if (!qword_FBA68)
  {
    sub_5520(&qword_FBA60);
    sub_A2750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBA68);
  }

  return result;
}

unint64_t sub_A2750()
{
  result = qword_FBA70;
  if (!qword_FBA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBA70);
  }

  return result;
}

uint64_t sub_A27F4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5520(a2);
    a4();
    sub_D150(&qword_F9C30, &qword_F9C38);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_A28A4()
{
  result = qword_FBAB0;
  if (!qword_FBAB0)
  {
    sub_5520(&qword_FBAB8);
    sub_A2930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBAB0);
  }

  return result;
}

unint64_t sub_A2930()
{
  result = qword_FBAC0;
  if (!qword_FBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBAC0);
  }

  return result;
}

unint64_t sub_A2A14()
{
  result = qword_FBAE0;
  if (!qword_FBAE0)
  {
    sub_5520(&qword_FBAD8);
    sub_A2AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBAE0);
  }

  return result;
}

unint64_t sub_A2AA0()
{
  result = qword_FBAE8;
  if (!qword_FBAE8)
  {
    sub_5520(&qword_FBAF0);
    sub_A2B2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBAE8);
  }

  return result;
}

unint64_t sub_A2B2C()
{
  result = qword_FBAF8;
  if (!qword_FBAF8)
  {
    sub_5520(&qword_FBB00);
    sub_A2BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBAF8);
  }

  return result;
}

unint64_t sub_A2BB8()
{
  result = qword_FBB08;
  if (!qword_FBB08)
  {
    sub_5520(&qword_FBB10);
    sub_A27F4(&qword_FBB18, &qword_FBB20, &unk_C2EC0, sub_A2C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBB08);
  }

  return result;
}

unint64_t sub_A2C70()
{
  result = qword_FBB28[0];
  if (!qword_FBB28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_FBB28);
  }

  return result;
}

uint64_t sub_A2D20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A2D58()
{
  v1 = type metadata accessor for LiveCaptionsRootView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_2E50(&qword_FA6E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_BA500();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
  }

  v8 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_BA500();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[6];
  sub_2E50(&qword_F8AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_B9E70();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  sub_E538(*(v5 + v1[7]), *(v5 + v1[7] + 8), *(v5 + v1[7] + 9));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_A32F4()
{
  sub_4AA88();
  if (v0 <= 0x3F)
  {
    sub_A3AEC(319, &qword_F8CD8);
    if (v1 <= 0x3F)
    {
      sub_A3AEC(319, &qword_F8CE8);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_B9E30();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_A3410(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_B9E30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= *(v7 + 84))
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v10 + 64) + 7;
  v16 = *(v7 + 80);
  v17 = v16 + 8;
  if (a2 <= v14)
  {
    goto LABEL_34;
  }

  v18 = ((v17 + ((((((v15 + ((v12 + (((((((((v9 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + v8;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 < 2)
    {
LABEL_34:
      v26 = ((((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
      if ((v13 & 0x80000000) != 0)
      {
        if (v11 == v14)
        {
          v28 = *(v10 + 48);

          return v28((v12 + ((((((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v12, v11);
        }

        else
        {
          v29 = *(v7 + 48);

          return v29((v17 + ((((((v15 + ((v12 + ((((((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v16);
        }
      }

      else
      {
        v27 = *v26;
        if (*v26 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_34;
  }

LABEL_21:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v14 + (v25 | v23) + 1;
}

void sub_A3728(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_B9E30();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(*(v8 - 8) + 64);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  if (v13 <= *(v9 + 84))
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = *(v12 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v12 + 64) + 7;
  v18 = *(v9 + 80);
  v19 = ((v18 + 8 + ((((((v17 + ((v14 + (((((((((v11 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v18) + v10;
  if (a3 <= v16)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v16 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v16 < a2)
  {
    v21 = ~v16 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_57:
              if (v20 == 2)
              {
                *&a1[v19] = v22;
              }

              else
              {
                *&a1[v19] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v20)
    {
      a1[v19] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v19] = 0;
  }

  else if (v20)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  v26 = (((&a1[v11 + 8] & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8);
  if ((v15 & 0x80000000) != 0)
  {
    if (v13 == v16)
    {
      v28 = *(v12 + 56);

      v28((v14 + ((((((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v14, a2, v13);
    }

    else
    {
      v29 = *(v9 + 56);

      v29((v18 + 8 + ((((((v17 + ((v14 + ((((((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v18, a2);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = (a2 - 1);
    }

    *v26 = v27;
  }
}

void sub_A3AEC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_BB4D0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_A3B7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_BA180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2E50(&qword_F8398);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_57A0(v2, &v14 - v9, &qword_F8398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_B9E30();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_BB310();
    v13 = sub_BA610();
    sub_B99F0();

    sub_BA170();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_A3D7C(uint64_t a1)
{
  v3 = sub_BACC0();
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_B9F50();
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(a1 + 44)) == 1)
  {
    v10 = *(v7 + 20);
    v11 = enum case for RoundedCornerStyle.continuous(_:);
    v12 = sub_BA270();
    (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
    __asm { FMOV            V0.2D, #12.0 }

    *v9 = _Q0;
    sub_A5860(&qword_F8E40, &type metadata accessor for RoundedRectangle);
  }

  else
  {
    v18 = enum case for RoundedCornerStyle.continuous(_:);
    v19 = sub_BA270();
    (*(*(v19 - 8) + 104))(v5, v18, v19);
    sub_A5860(&qword_F8E38, &type metadata accessor for Capsule);
  }

  return sub_BAD20();
}

uint64_t sub_A3F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v97 = sub_B9F40();
  v79 = *(v97 - 8);
  __chkstk_darwin(v97);
  v78 = v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_BA2D0();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2E50(&qword_F8D80);
  __chkstk_darwin(v5);
  v94 = v60 - v6;
  v7 = sub_5520(&qword_FBBB0);
  v93 = v7;
  v95 = a1;
  v90 = *(a1 + 16);
  v8 = v90;
  v92 = sub_D150(&qword_FBBB8, &qword_FBBB0);
  v89 = *(a1 + 24);
  v110 = v7;
  v111 = v8;
  v112 = v92;
  v113 = v89;
  v9 = sub_BA760();
  v91 = *(v9 - 8);
  __chkstk_darwin(v9);
  v87 = v60 - v10;
  WitnessTable = swift_getWitnessTable();
  v110 = v9;
  v111 = WitnessTable;
  v12 = WitnessTable;
  v83 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v88 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v85 = v60 - v13;
  sub_5520(&qword_F8800);
  v14 = sub_B9EE0();
  v73 = *(v14 - 8);
  __chkstk_darwin(v14);
  v84 = v60 - v15;
  v110 = v9;
  v111 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = OpaqueTypeConformance2;
  v81 = &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>;
  v17 = sub_D150(&qword_F87F8, &qword_F8800);
  v108 = OpaqueTypeConformance2;
  v109 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_D150(&qword_F8DD8, &qword_F8D80);
  v110 = v14;
  v111 = v5;
  v112 = v18;
  v113 = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v70 = *(v20 - 8);
  __chkstk_darwin(v20);
  v68 = v60 - v21;
  sub_BA600();
  v71 = v20;
  v22 = sub_B9EE0();
  v66 = *(v22 - 8);
  __chkstk_darwin(v22);
  v63 = v60 - v23;
  sub_5520(&qword_F8DF8);
  v24 = sub_B9EE0();
  v64 = *(v24 - 8);
  __chkstk_darwin(v24);
  v62 = v60 - v25;
  v72 = v14;
  v110 = v14;
  v111 = v5;
  v74 = v5;
  v69 = v18;
  v112 = v18;
  v113 = v19;
  v65 = v19;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = sub_A5860(&qword_F8940, &type metadata accessor for AccessibilityAttachmentModifier);
  v60[2] = v26;
  v106 = v26;
  v107 = v27;
  v67 = v22;
  v28 = swift_getWitnessTable();
  v29 = sub_D150(&qword_F8DF0, &qword_F8DF8);
  v60[1] = v28;
  v104 = v28;
  v105 = v29;
  v30 = swift_getWitnessTable();
  v31 = sub_A5860(&qword_F8E00, &type metadata accessor for PlainButtonStyle);
  v110 = v24;
  v111 = v97;
  v81 = v30;
  v112 = v30;
  v113 = v31;
  v32 = v31;
  v33 = swift_getOpaqueTypeMetadata2();
  v61 = *(v33 - 8);
  __chkstk_darwin(v33);
  v35 = v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = v60 - v37;
  v101 = v90;
  v102 = v89;
  v103 = v96;
  v98 = v90;
  v99 = v89;
  v100 = v96;
  v39 = v87;
  sub_BA750();
  v40 = v85;
  sub_BA9C0();
  (*(v91 + 8))(v39, v9);
  v41 = v84;
  v42 = OpaqueTypeMetadata2;
  sub_BA9D0();
  (*(v88 + 8))(v40, v42);
  v43 = enum case for DynamicTypeSize.xxxLarge(_:);
  v44 = sub_B9E30();
  v45 = v94;
  (*(*(v44 - 8) + 104))(v94, v43, v44);
  sub_A5860(&qword_F8DB8, &type metadata accessor for DynamicTypeSize);
  result = sub_BAF90();
  if (result)
  {
    v47 = v68;
    v48 = v45;
    v49 = v72;
    sub_BA8D0();
    sub_C5E8(v48, &qword_F8D80);
    (*(v73 + 8))(v41, v49);
    v50 = v75;
    sub_BA2C0();
    v51 = v63;
    v52 = v71;
    sub_BA990();
    (*(v76 + 8))(v50, v77);
    (*(v70 + 8))(v47, v52);
    v53 = v62;
    v54 = v67;
    sub_BA8E0();
    (*(v66 + 8))(v51, v54);
    v55 = v78;
    sub_B9F30();
    v56 = v97;
    v57 = v81;
    sub_BA840();
    (*(v79 + 8))(v55, v56);
    (*(v64 + 8))(v53, v24);
    v110 = v24;
    v111 = v56;
    v112 = v57;
    v113 = v32;
    v58 = swift_getOpaqueTypeConformance2();
    sub_B5F50(v35, v33, v58);
    v59 = *(v61 + 8);
    v59(v35, v33);
    sub_B5F50(v38, v33, v58);
    return (v59)(v38, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_A4C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HUDMenu();
  sub_B5F50(a1 + *(v9 + 68), a2, a3);
  sub_B5F50(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

void *sub_A4D48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_BA620();
  sub_A4FA0(a1, &v7);
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = v10;
  v40[12] = v19;
  v40[13] = v20;
  v40[14] = v21;
  v40[15] = v22;
  v40[8] = v15;
  v40[9] = v16;
  v40[10] = v17;
  v40[11] = v18;
  v40[4] = v11;
  v40[5] = v12;
  v40[6] = v13;
  v40[7] = v14;
  v40[0] = v7;
  v40[1] = v8;
  v40[2] = v9;
  v40[3] = v10;
  sub_57A0(&v24, &v6, &qword_FBBC0);
  sub_C5E8(v40, &qword_FBBC0);
  *&__src[199] = v36;
  *&__src[215] = v37;
  *&__src[231] = v38;
  *&__src[247] = v39;
  *&__src[135] = v32;
  *&__src[151] = v33;
  *&__src[167] = v34;
  *&__src[183] = v35;
  *&__src[71] = v28;
  *&__src[87] = v29;
  *&__src[103] = v30;
  *&__src[119] = v31;
  *&__src[7] = v24;
  *&__src[23] = v25;
  *&__src[39] = v26;
  *&__src[55] = v27;
  *a2 = v4;
  return memcpy(a2 + 1, __src, 0x107uLL);
}

double sub_A4FA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = sub_BA1C0();
  v35 = 0;
  sub_A52C4(a1, &v27);
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v37 = v27;
  v38 = v28;
  v39 = v29;
  v40 = v30;
  v44[0] = v27;
  v44[1] = v28;
  v44[2] = v29;
  v44[3] = v30;
  v44[4] = v31;
  v44[5] = v32;
  v44[6] = v33;
  sub_57A0(&v37, v26, &qword_FBBC8);
  sub_C5E8(v44, &qword_FBBC8);
  *&v34[55] = v40;
  *&v34[71] = v41;
  *&v34[87] = v42;
  *&v34[103] = v43;
  *&v34[7] = v37;
  *&v34[23] = v38;
  *&v34[39] = v39;
  v4 = v35;
  sub_2E50(&qword_F8E30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_BDB40;
  v6 = sub_BA670();
  *(v5 + 32) = v6;
  v7 = sub_BA690();
  *(v5 + 33) = v7;
  v8 = sub_BA680();
  sub_BA680();
  if (sub_BA680() != v6)
  {
    v8 = sub_BA680();
  }

  sub_BA680();
  if (sub_BA680() != v7)
  {
    v8 = sub_BA680();
  }

  sub_B9B90();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v26[0] = 0;
  v17 = type metadata accessor for HUDMenu();
  v18 = *(a1 + v17[12]);
  v19 = sub_A3D7C(v17);
  v20 = *(a1 + v17[10] + 8);

  if (!v20 && (*(a1 + v17[15] + 8) & 1) != 0)
  {
    sub_A5680(v17);
  }

  if (*(a1 + v17[15] + 8))
  {
    sub_A5680(v17);
  }

  sub_BADE0();
  sub_B9CF0();
  *&v36[6] = v27;
  *&v36[22] = v28;
  *&v36[38] = v29;
  v21 = *&v34[80];
  *(a2 + 81) = *&v34[64];
  *(a2 + 97) = v21;
  *(a2 + 113) = *&v34[96];
  v22 = *&v34[16];
  *(a2 + 17) = *v34;
  *(a2 + 33) = v22;
  v23 = *&v34[48];
  *(a2 + 49) = *&v34[32];
  *a2 = v25;
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = v4;
  *(a2 + 128) = *&v34[111];
  *(a2 + 65) = v23;
  *(a2 + 136) = v8;
  *(a2 + 144) = v10;
  *(a2 + 152) = v12;
  *(a2 + 160) = v14;
  *(a2 + 168) = v16;
  *(a2 + 176) = 0;
  *(a2 + 184) = v18;
  *(a2 + 192) = v19;
  *(a2 + 200) = 256;
  *(a2 + 202) = *v36;
  *(a2 + 218) = *&v36[16];
  result = *&v36[32];
  *(a2 + 234) = *&v36[32];
  *(a2 + 248) = *&v36[46];
  return result;
}

uint64_t sub_A52C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HUDMenu();
  if (*(a1 + v4[9] + 8))
  {

    v5 = sub_BAB80();
    if (*(a1 + v4[15] + 8))
    {
      sub_A5680(v4);
    }

    sub_BADE0();
    sub_B9CF0();
    v6 = *(a1 + v4[13]);
    LOBYTE(v29[0]) = v31;
    LOBYTE(v25) = v33;
    *&v35 = v5;
    *(&v35 + 1) = v30;
    LOBYTE(v36) = v31;
    *(&v36 + 1) = v32;
    LOBYTE(v37[0]) = v33;
    *(v37 + 8) = v34;
    *(&v37[1] + 1) = v6;
    swift_retain_n();
  }

  else
  {
    memset(v37, 0, sizeof(v37));
    v35 = 0u;
    v36 = 0u;
  }

  v7 = (a1 + v4[10]);
  v8 = v7[1];
  if (v8)
  {
    *&v29[0] = *v7;
    *(&v29[0] + 1) = v8;
    sub_B320();

    v8 = sub_BA800();
    v10 = v9;
    v12 = v11;
    v13 = *(a1 + v4[14]);
    v15 = v14 & 1;
    swift_retain_n();
    sub_21808(v8, v10, v15);

    v16 = 1;
  }

  else
  {
    v10 = 0;
    v15 = 0;
    v12 = 0;
    v16 = 0;
    v13 = 0;
  }

  v20 = v35;
  v21 = v36;
  v22 = v37[0];
  v23 = v37[1];
  v24[0] = v35;
  v24[1] = v36;
  v24[2] = v37[0];
  v24[3] = v37[1];
  v25 = v35;
  v26 = v36;
  v27 = v37[0];
  v28 = v37[1];
  sub_57A0(v24, v29, &qword_FBBD0);
  sub_A58A8(v8, v10, v15, v12);
  sub_C5E8(&v35, &qword_FBBD0);
  sub_A58F8(v8, v10, v15, v12);
  v17 = v26;
  *a2 = v25;
  *(a2 + 16) = v17;
  v18 = v28;
  *(a2 + 32) = v27;
  *(a2 + 48) = v18;
  *(a2 + 64) = v8;
  *(a2 + 72) = v10;
  *(a2 + 80) = v15;
  *(a2 + 88) = v12;
  *(a2 + 96) = v16;
  *(a2 + 104) = v13;
  sub_A58F8(v8, v10, v15, v12);
  v29[0] = v20;
  v29[1] = v21;
  v29[2] = v22;
  v29[3] = v23;
  return sub_C5E8(v29, &qword_FBBD0);
}

uint64_t sub_A5564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_B9E30();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A3B7C(v8);
  v9 = *(a1 + 84);
  LOBYTE(a1) = sub_B9E20();
  (*(v6 + 8))(v8, v5);
  if (a1)
  {
    return sub_A3B7C(a2);
  }

  else
  {
    return (*(v6 + 16))(a2, v2 + v9, v5);
  }
}

double sub_A5680(int *a1)
{
  v2 = v1;
  v4 = sub_B9E30();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_F8370 != -1)
  {
    swift_once();
  }

  v8 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:qword_100DA0];
  sub_A5564(a1, v7);
  v9 = *(v1 + a1[18]);
  v10 = sub_1F22C();
  v11 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v10];

  [v8 scaledValueForValue:v11 compatibleWithTraitCollection:v9];
  v13 = v12;

  (*(v5 + 8))(v7, v4);
  if (*(v2 + a1[11]) == 1)
  {
    return v13 + *(v2 + a1[20]);
  }

  return v13;
}

uint64_t sub_A5860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A58A8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21808(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_A58F8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_C004(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_A5948()
{
  sub_5520(&qword_FBBB0);
  sub_D150(&qword_FBBB8, &qword_FBBB0);
  sub_BA760();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_5520(&qword_F8800);
  sub_B9EE0();
  sub_5520(&qword_F8D80);
  swift_getOpaqueTypeConformance2();
  sub_D150(&qword_F87F8, &qword_F8800);
  swift_getWitnessTable();
  sub_D150(&qword_F8DD8, &qword_F8D80);
  swift_getOpaqueTypeMetadata2();
  sub_BA600();
  sub_B9EE0();
  sub_5520(&qword_F8DF8);
  sub_B9EE0();
  sub_B9F40();
  swift_getOpaqueTypeConformance2();
  sub_A5860(&qword_F8940, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  sub_D150(&qword_F8DF0, &qword_F8DF8);
  swift_getWitnessTable();
  sub_A5860(&qword_F8E00, &type metadata accessor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_A5CAC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_A5D08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_A5D84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2E50(&qword_FBBD8);
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v30 = a2;
  v31 = &v29 - v7;
  v8 = sub_A61A8(a1);
  v10 = v9;
  v11 = sub_BAAF0();
  v12 = sub_BAAD0();
  v13 = sub_BAAD0();
  *a3 = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v14 = sub_2E50(&qword_FBBE0);
  v15 = v14[16];
  *(a3 + v15) = sub_BA710();
  *(a3 + v14[18]) = 0x4040000000000000;
  *(a3 + v14[19]) = 0x402E000000000000;
  *(a3 + v14[20]) = 0x4024000000000000;
  v16 = v14[21];
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v17 = sub_B9E30();
  v18 = sub_3CB8(v17, qword_100DA8);
  (*(*(v17 - 8) + 16))(a3 + v16, v18, v17);
  *(a3 + v14[9]) = xmmword_C3010;
  v19 = (a3 + v14[10]);
  *v19 = v8;
  v19[1] = v10;
  *(a3 + v14[11]) = 0;
  *(a3 + v14[12]) = v11;
  *(a3 + v14[13]) = v12;
  *(a3 + v14[14]) = v13;
  v20 = a3 + v14[15];
  *v20 = 0;
  v20[8] = 1;
  if (a1)
  {
    v21 = v14[17];
    v22 = a1;
    v23 = sub_78B20();

    v34 = v23;
    swift_getKeyPath();
    v24 = swift_allocObject();
    v25 = v30;
    *(v24 + 16) = a1;
    *(v24 + 24) = v25;
    v26 = v22;
    sub_2E50(&qword_FBBE8);
    sub_2E50(&qword_F96F0);
    sub_D150(&qword_FBBF0, &qword_FBBE8);
    sub_A6764(&qword_FBBF8, &type metadata accessor for Locale.LanguageCode);
    sub_D150(&qword_FBC00, &qword_F96F0);
    v27 = v31;
    sub_BACD0();
    return (*(v32 + 32))(a3 + v21, v27, v33);
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_A6764(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_A61A8(void *a1)
{
  v2 = sub_B9250();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E50(&qword_FAED0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_C0020;
  if (a1)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = a1;
    sub_6B144(v5);
    v10 = sub_B9240();
    v12 = v11;
    v13 = *(v3 + 8);
    v13(v5, v2);
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    isa = sub_BB0E0().super.isa;

    v15 = [v8 abbreviationsForLanguages:isa minimizeVariants:1];

    v16 = sub_BB0F0();
    if (*(v16 + 16))
    {
      v17 = *(v16 + 32);
    }

    else
    {

      sub_6B144(v5);

      sub_B9240();
      v13(v5, v2);
      v17 = sub_BB000();
    }

    return v17;
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_A6764(&qword_F8390, type metadata accessor for LiveSpeechStore);
    result = sub_B9FA0();
    __break(1u);
  }

  return result;
}

uint64_t sub_A6420@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v26 = a4;
  v23 = sub_B9250();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v23);
  v7 = sub_B92F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B92B0();
  v29._countAndFlagsBits = sub_B9240();
  v11 = sub_B92A0(v29);
  v13 = v12;

  (*(v8 + 8))(v10, v7);
  if (!v13)
  {
    v11 = sub_B9240();
    v13 = v14;
  }

  v27 = v11;
  v28 = v13;
  v15 = a1;
  v16 = v23;
  (*(v5 + 16))(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v23);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = v24;
  v20 = v25;
  *(v18 + 16) = v25;
  *(v18 + 24) = v19;
  (*(v5 + 32))(v18 + v17, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  sub_B320();
  v21 = v20;
  return sub_BAC40();
}

void sub_A6664(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1;
    sub_785E0(a3);
  }

  else
  {
    type metadata accessor for LiveSpeechStore(0);
    sub_A6764(&qword_F8390, type metadata accessor for LiveSpeechStore);
    sub_B9FA0();
    __break(1u);
  }
}

uint64_t sub_A6724()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A6764(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A67AC()
{
  v1 = sub_B9250();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_A6870()
{
  v1 = *(sub_B9250() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_A6664(v2, v3, v4);
}

void textLinesCountFromTextHeight(_:)(double a1)
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  if (qword_F8310 != -1)
  {
    swift_once();
  }

  v2 = textFontStyle;
  v3 = AXLTSettingsManager.contentCategory.getter();
  v4 = sub_64E70(v2, UIFontWeightBold);

  [v4 lineHeight];
  v6 = v5;

  v7 = a1 / v6;
  if (COERCE__INT64(fabs(a1 / v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
  }
}

double textHeightFromLinesCount(_:)(uint64_t a1)
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  if (qword_F8310 != -1)
  {
    swift_once();
  }

  v2 = textFontStyle;
  v3 = AXLTSettingsManager.contentCategory.getter();
  v4 = sub_64E70(v2, UIFontWeightBold);

  [v4 lineHeight];
  v6 = v5;

  v7 = sub_B9820();
  if (v7 <= a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = v7;
  }

  return v6 * v8;
}

uint64_t captionVisibleTextHeight(textHeight:isAccessibilityLayout:)(char a1, double a2)
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  if (qword_F8310 != -1)
  {
    swift_once();
  }

  v4 = textFontStyle;
  v5 = AXLTSettingsManager.contentCategory.getter();
  v6 = sub_64E70(v4, UIFontWeightBold);

  [v6 lineHeight];
  if (a1)
  {
    result = sub_B98E0();
    if (a2 != 0.0)
    {
      return result;
    }

    return sub_B9820();
  }

  result = sub_B9810();
  if (a2 == 0.0)
  {
    return sub_B9820();
  }

  return result;
}

double iconSize()()
{
  IsPad = AXDeviceIsPad();
  result = 54.0;
  if (IsPad)
  {
    return 68.0;
  }

  return result;
}

void bottomButtonsBarLeftRightInset()()
{
  if ((AXDeviceIsPad() & 1) == 0)
  {
    v0 = [objc_opt_self() mainScreen];
    [v0 bounds];
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;

    v9.origin.x = v2;
    v9.origin.y = v4;
    v9.size.width = v6;
    v9.size.height = v8;
    CGRectGetWidth(v9);
  }
}

uint64_t property wrapper backing initializer of AXLTCaptionsView.timer()
{
  sub_2E50(&qword_F9020);
  sub_BABC0();
  return v1;
}

uint64_t AXLTCaptionsView.body.getter@<X0>(double (**a1)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = swift_allocObject();
  v4 = v1[7];
  *(v3 + 7) = v1[6];
  *(v3 + 8) = v4;
  *(v3 + 9) = v1[8];
  v5 = v1[3];
  *(v3 + 3) = v1[2];
  *(v3 + 4) = v5;
  v6 = v1[5];
  *(v3 + 5) = v1[4];
  *(v3 + 6) = v6;
  v7 = v1[1];
  *(v3 + 1) = *v1;
  *(v3 + 2) = v7;
  *a1 = sub_A7174;
  a1[1] = v3;
  return sub_A717C(v1, &v9);
}

__n128 sub_A6E48@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_B9D40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  if ((*(a2 + 8) & 0xFE) == 2)
  {
    (*(v7 + 16))(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6, v9);
    v10 = (*(v7 + 80) + 160) & ~*(v7 + 80);
    v11 = swift_allocObject();
    v12 = *(a2 + 112);
    *(v11 + 7) = *(a2 + 96);
    *(v11 + 8) = v12;
    *(v11 + 9) = *(a2 + 128);
    v13 = *(a2 + 48);
    *(v11 + 3) = *(a2 + 32);
    *(v11 + 4) = v13;
    v14 = *(a2 + 80);
    *(v11 + 5) = *(a2 + 64);
    *(v11 + 6) = v14;
    v15 = *(a2 + 16);
    *(v11 + 1) = *a2;
    *(v11 + 2) = v15;
    (*(v7 + 32))(&v11[v10], &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    LOBYTE(v39) = 0;
    v33 = sub_AA6F8;
    v34 = v11;
    v35[2] = v29;
    v35[3] = v30;
    v35[4] = v31;
    v36 = v32;
    v35[0] = v27;
    v35[1] = v28;
    v37 = 0;
    sub_A717C(a2, &v21);
  }

  else
  {
    v16 = sub_BA330();
    v44 = 0;
    sub_A98AC(a2, &v21);
    v41 = v23;
    v42 = v24;
    v43 = v25;
    v39 = v21;
    v40 = v22;
    v29 = v23;
    v30 = v24;
    *&v31 = v25;
    v27 = v21;
    v28 = v22;
    sub_57A0(&v39, &v33, &qword_FBC20);
    sub_C5E8(&v27, &qword_FBC20);
    *&v38[71] = v43;
    *&v38[55] = v42;
    *&v38[39] = v41;
    *&v38[23] = v40;
    *&v38[7] = v39;
    *(&v35[1] + 1) = *&v38[16];
    *(&v35[2] + 1) = *&v38[32];
    *(&v35[3] + 1) = *&v38[48];
    v35[4] = *&v38[63];
    v17 = v44;
    v44 = 1;
    v33 = v16;
    v34 = 0x4020000000000000;
    LOBYTE(v35[0]) = v17;
    *(v35 + 1) = *v38;
    v36 = 0;
    v37 = 1;
  }

  sub_2E50(&qword_FBC28);
  sub_2E50(&qword_FBC30);
  sub_D150(&qword_FBC38, &qword_FBC28);
  sub_AA614();
  sub_BA430();
  v18 = v26[0];
  *(a3 + 64) = v25;
  *(a3 + 80) = v18;
  *(a3 + 95) = *(v26 + 15);
  v19 = v22;
  *a3 = v21;
  *(a3 + 16) = v19;
  result = v24;
  *(a3 + 32) = v23;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_A71D0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a4;
  v60 = sub_BA440();
  __chkstk_darwin(v60);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_B9C60();
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v58 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2E50(&qword_F9BB8);
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v51 - v9;
  v55 = sub_B9D40();
  v10 = *(v55 - 8);
  v56 = *(v10 + 64);
  __chkstk_darwin(v55);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_B9F10();
  v12 = *(v52 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v52);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2E50(&qword_FBC58);
  __chkstk_darwin(v57);
  v54 = &v51 - v15;
  sub_BA630();
  v67 = a2;
  v68 = a3;
  v69 = a1;
  sub_2E50(&qword_FBC60);
  sub_AA788();
  sub_B9BF0();
  v16 = v52;
  (*(v12 + 16))(v14, a1, v52);
  v17 = v53;
  v18 = a3;
  v19 = v55;
  (*(v10 + 16))(v53, v18, v55);
  v20 = (*(v12 + 80) + 160) & ~*(v12 + 80);
  v21 = (v13 + *(v10 + 80) + v20) & ~*(v10 + 80);
  v22 = swift_allocObject();
  v23 = a2[7];
  *(v22 + 7) = a2[6];
  *(v22 + 8) = v23;
  *(v22 + 9) = a2[8];
  v24 = a2[3];
  *(v22 + 3) = a2[2];
  *(v22 + 4) = v24;
  v25 = a2[5];
  *(v22 + 5) = a2[4];
  *(v22 + 6) = v25;
  v26 = a2[1];
  *(v22 + 1) = *a2;
  *(v22 + 2) = v26;
  (*(v12 + 32))(&v22[v20], v14, v16);
  (*(v10 + 32))(&v22[v21], v17, v19);
  sub_A717C(a2, v70);
  v27 = sub_BADE0();
  v29 = v28;
  v30 = sub_2E50(&qword_FBC90);
  v31 = v54;
  v32 = &v54[*(v30 + 36)];
  *v32 = sub_B58B8;
  v32[1] = 0;
  v32[2] = v27;
  v32[3] = v29;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_AA898;
  *(v33 + 24) = v22;
  v34 = (v31 + *(sub_2E50(&qword_FBC98) + 36));
  *v34 = sub_AA9E4;
  v34[1] = v33;
  v35 = (v31 + *(sub_2E50(&qword_FBCA0) + 36));
  *v35 = 0x6C6C6F726373;
  v35[1] = 0xE600000000000000;
  sub_A9EFC(a2, v70);
  v36 = v71;
  v37 = v72;
  v38 = v73;
  v39 = v70[1];
  v40 = v31 + *(v57 + 36);
  *v40 = v70[0];
  *(v40 + 16) = v39;
  *(v40 + 32) = v36;
  *(v40 + 40) = v37;
  *(v40 + 41) = v38;
  sub_BA550();
  v41 = v58;
  sub_B9C20();
  v42 = swift_allocObject();
  v43 = a2[7];
  v42[7] = a2[6];
  v42[8] = v43;
  v42[9] = a2[8];
  v44 = a2[3];
  v42[3] = a2[2];
  v42[4] = v44;
  v45 = a2[5];
  v42[5] = a2[4];
  v42[6] = v45;
  v46 = a2[1];
  v42[1] = *a2;
  v42[2] = v46;
  sub_A717C(a2, v70);
  sub_AAFCC(&qword_F9BF8, &type metadata accessor for DragGesture);
  sub_AAFCC(&qword_F9C00, &type metadata accessor for DragGesture.Value);
  v47 = v61;
  v48 = v62;
  sub_BAD00();

  (*(v63 + 8))(v41, v48);
  sub_B9C80();
  sub_AAA34();
  sub_D150(&qword_F9C08, &qword_F9BB8);
  v49 = v64;
  sub_BA940();
  (*(v65 + 8))(v47, v49);
  return sub_AAD40(v31);
}

uint64_t sub_A796C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v28 = a2;
  v32 = sub_B9F10();
  v7 = *(v32 - 8);
  v33 = *(v7 + 64);
  __chkstk_darwin(v32);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_B9D40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v27 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BA490();
  __chkstk_darwin(v12);
  v35 = a1;
  v36 = a2;
  sub_BA320();
  v37[0] = 0;
  sub_AAFCC(&qword_FBD30, &type metadata accessor for PinnedScrollableViews);
  sub_BB7F0();
  sub_2E50(&qword_FBD38);
  sub_AB014();
  sub_B9BE0();
  v30 = sub_BADE0();
  v29 = v13;
  v14 = v9;
  (*(v10 + 16))(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v9);
  v15 = v31;
  v16 = v32;
  (*(v7 + 16))(v31, v34, v32);
  v17 = (*(v10 + 80) + 160) & ~*(v10 + 80);
  v18 = (v11 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = a1[7];
  *(v19 + 7) = a1[6];
  *(v19 + 8) = v20;
  *(v19 + 9) = a1[8];
  v21 = a1[3];
  *(v19 + 3) = a1[2];
  *(v19 + 4) = v21;
  v22 = a1[5];
  *(v19 + 5) = a1[4];
  *(v19 + 6) = v22;
  v23 = a1[1];
  *(v19 + 1) = *a1;
  *(v19 + 2) = v23;
  (*(v10 + 32))(&v19[v17], v27, v14);
  (*(v7 + 32))(&v19[v18], v15, v16);
  v24 = (a4 + *(sub_2E50(&qword_FBC60) + 36));
  *v24 = sub_AB320;
  v24[1] = v19;
  v25 = v29;
  v24[2] = v30;
  v24[3] = v25;
  return sub_A717C(a1, v37);
}

uint64_t sub_A7D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_B9D40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v15 = *a1;
  v16 = v15;
  swift_getKeyPath();
  (*(v5 + 16))(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
  v7 = (*(v5 + 80) + 160) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v9 = *(a1 + 112);
  *(v8 + 7) = *(a1 + 96);
  *(v8 + 8) = v9;
  *(v8 + 9) = *(a1 + 128);
  v10 = *(a1 + 48);
  *(v8 + 3) = *(a1 + 32);
  *(v8 + 4) = v10;
  v11 = *(a1 + 80);
  *(v8 + 5) = *(a1 + 64);
  *(v8 + 6) = v11;
  v12 = *(a1 + 16);
  *(v8 + 1) = *a1;
  *(v8 + 2) = v12;
  (*(v5 + 32))(&v8[v7], &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  sub_57A0(&v16, v14, &qword_FA368);
  sub_A717C(a1, v14);
  sub_2E50(&qword_FA368);
  sub_2E50(&qword_FBD50);
  sub_D150(&qword_FBDB0, &qword_FA368);
  sub_AB098();
  return sub_BACD0();
}

unint64_t sub_A7F68@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2E50(&qword_FBD70);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v50 - v8;
  v10 = sub_2E50(&qword_FBD60);
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  v13 = *a1;
  *v9 = sub_BA330();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = sub_2E50(&qword_FBDB8);
  sub_A8318(v13, a2, &v9[*(v14 + 44)]);
  sub_B9D20();
  sub_BADF0();
  sub_B9CF0();
  v15 = &v9[*(sub_2E50(&qword_FBD80) + 36)];
  v16 = v53;
  *v15 = v52;
  *(v15 + 1) = v16;
  *(v15 + 2) = v54;
  v17 = sub_BA660();
  sub_B9B90();
  v18 = &v9[*(v7 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v23 = sub_BA650();
  v24 = *a2;
  if (v24 >> 62)
  {
    v25 = sub_BB650();
    if (v25)
    {
      goto LABEL_3;
    }

LABEL_8:
    v34 = v13;
    goto LABEL_9;
  }

  v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
  if (!v25)
  {
    goto LABEL_8;
  }

LABEL_3:
  v51 = v12;
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = v23;
    v27 = v10;
    v28 = a3;
    v49 = v13;
    v31 = sub_BB590();
  }

  else
  {
    if (!*(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v26 = v23;
    v27 = v10;
    v28 = a3;
    v29 = *(v24 + 32);
    v30 = v13;
    v31 = v29;
  }

  v32 = v31;
  sub_B9750();
  v33 = v13;
  sub_BB490();

  a3 = v28;
  v10 = v27;
  v23 = v26;
  v12 = v51;
LABEL_9:
  sub_B9B90();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_66B8(v9, v12, &qword_FBD70);
  v43 = &v12[*(v10 + 36)];
  *v43 = v23;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  if (!v25)
  {

LABEL_18:
    v48 = 0.8;
LABEL_19:
    sub_66B8(v12, a3, &qword_FBD60);
    result = sub_2E50(&qword_FBD50);
    *(a3 + *(result + 36)) = v48;
    return result;
  }

  result = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v24 & 0xC000000000000001) != 0)
  {
LABEL_23:
    v45 = sub_BB590();
LABEL_15:
    v46 = v45;
    sub_B9750();
    v47 = sub_BB490();

    v48 = 1.0;
    if (v47)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
  {
    v45 = *(v24 + 8 * result + 32);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_A8318@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if (!(*a2 >> 62))
  {
    v6 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v6 = sub_BB650();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  v7 = __OFSUB__(v6, 1);
  result = v6 - 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v9 = sub_BB590();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *(v5 + 8 * result + 32);
LABEL_8:
  v10 = v9;
  sub_B9750();
  v11 = a1;
  v12 = sub_BB490();

LABEL_11:
  v13 = a1;

  return sub_626A4(v13, v12 & 1, a3);
}

uint64_t sub_A8410@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v95 = a4;
  v87 = a3;
  v92 = a1;
  v97 = a5;
  v93 = sub_B9F10();
  v98 = *(v93 - 8);
  v96 = *(v98 + 64);
  __chkstk_darwin(v93);
  v88 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_B9D40();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v83 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10;
  v91 = v10;
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v15 = sub_BA450();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2E50(&qword_FBD98);
  v82 = *(v81 - 8);
  __chkstk_darwin(v81);
  v94 = &v72 - v19;
  v77 = sub_BAAE0();
  v104 = v77;
  v99 = 0x6C6C6F726373;
  v100 = 0xE600000000000000;
  sub_BA560();
  sub_B9D30();
  v21 = v20;
  v22 = *(v16 + 8);
  v75 = v16 + 8;
  v76 = v22;
  v22(v18, v15);
  v103 = v21;
  v23 = v9;
  v85 = *(v9 + 16);
  v86 = v9 + 16;
  v24 = v14;
  v25 = v14;
  v26 = v8;
  v85(v25, a3, v8);
  v27 = *(v9 + 80);
  v78 = ((v27 + 160) & ~v27) + v11;
  v79 = (v27 + 160) & ~v27;
  v80 = v27 | 7;
  v28 = swift_allocObject();
  v29 = a2[7];
  *(v28 + 7) = a2[6];
  *(v28 + 8) = v29;
  *(v28 + 9) = a2[8];
  v30 = a2[3];
  *(v28 + 3) = a2[2];
  *(v28 + 4) = v30;
  v31 = a2[5];
  *(v28 + 5) = a2[4];
  *(v28 + 6) = v31;
  v32 = a2[1];
  *(v28 + 1) = *a2;
  *(v28 + 2) = v32;
  v89 = *(v23 + 32);
  v90 = v23 + 32;
  v33 = v24;
  v34 = v24;
  v84 = v24;
  v35 = v26;
  v73 = v26;
  v89(&v28[(v27 + 160) & ~v27], v33, v26);
  sub_A717C(a2, &v99);
  v74 = sub_AB490();
  sub_BAA00();

  v99 = 0x6C6C6F726373;
  v100 = 0xE600000000000000;
  sub_BA560();
  sub_B9D30();
  v37 = v36;
  v76(v18, v15);
  v104 = v37;
  v38 = v98;
  v76 = *(v98 + 16);
  v39 = v88;
  v40 = v93;
  (v76)(v88, v95, v93);
  v85(v34, v87, v35);
  v41 = *(v38 + 80);
  v42 = v38;
  v43 = (v41 + 160) & ~v41;
  v44 = (v96 + v27 + v43) & ~v27;
  v45 = swift_allocObject();
  v46 = a2[7];
  *(v45 + 7) = a2[6];
  *(v45 + 8) = v46;
  *(v45 + 9) = a2[8];
  v47 = a2[3];
  *(v45 + 3) = a2[2];
  *(v45 + 4) = v47;
  v48 = a2[5];
  *(v45 + 5) = a2[4];
  *(v45 + 6) = v48;
  v49 = a2[1];
  *(v45 + 1) = *a2;
  *(v45 + 2) = v49;
  v50 = *(v42 + 32);
  v98 = v42 + 32;
  v77 = v50;
  v50(&v45[v43], v39, v40);
  v51 = v84;
  v52 = v73;
  v89(&v45[v44], v84, v73);
  sub_A717C(a2, &v99);
  v99 = &type metadata for Color;
  v100 = &type metadata for CGFloat;
  v101 = &protocol witness table for Color;
  v102 = v74;
  swift_getOpaqueTypeConformance2();
  v53 = v81;
  v54 = v94;
  sub_BAA00();

  (*(v82 + 8))(v54, v53);
  v55 = v52;
  v56 = v52;
  v57 = v85;
  v85(v51, v92, v56);
  v58 = v83;
  v57(v83, v87, v55);
  v59 = v88;
  v60 = v93;
  (v76)(v88, v95, v93);
  v61 = (v78 + v27) & ~v27;
  v62 = (v61 + v91 + v41) & ~v41;
  v63 = swift_allocObject();
  v64 = a2[7];
  *(v63 + 7) = a2[6];
  *(v63 + 8) = v64;
  *(v63 + 9) = a2[8];
  v65 = a2[3];
  *(v63 + 3) = a2[2];
  *(v63 + 4) = v65;
  v66 = a2[5];
  *(v63 + 5) = a2[4];
  *(v63 + 6) = v66;
  v67 = a2[1];
  *(v63 + 1) = *a2;
  *(v63 + 2) = v67;
  v68 = v89;
  v89(v63 + v79, v84, v55);
  v68(v63 + v61, v58, v55);
  v77(v63 + v62, v59, v60);
  v69 = sub_2E50(&qword_FBDA8);
  v70 = (v97 + *(v69 + 36));
  *v70 = sub_AB92C;
  v70[1] = v63;
  v70[2] = 0;
  v70[3] = 0;
  return sub_A717C(a2, &v99);
}

uint64_t sub_A8D04(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = -*a2;
  v10 = *(a3 + 120);
  sub_2E50(&qword_F9018);
  sub_BABD0();
  sub_B9D20();
  if (*&v9 - v6 - *(a3 + 80) <= v5)
  {
    sub_A8E44();
  }

  v9 = *(a3 + 56);
  v10 = v9;
  v11 = *(&v9 + 1);
  sub_57A0(&v11, v8, &qword_FB5D8);
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  if (v4 < 0.0 != v8[0])
  {
    v9 = v10;
    v8[0] = v4 < 0.0;
    sub_BABE0();
  }

  return sub_C5E8(&v10, &qword_F96C8);
}

id sub_A8E44()
{
  v1 = v0;
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v9 = v3;
  v10 = v2;
  *&v8 = v2;
  *(&v8 + 1) = v3;
  sub_57A0(&v10, &v7, &qword_F9020);
  sub_57A0(&v9, &v7, &qword_FBCF8);
  sub_2E50(&qword_F9C88);
  sub_BABD0();
  v4 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  [v7 invalidate];
  sub_BB2F0();
  result = AXLogLiveTranscription();
  if (result)
  {
    v6 = result;
    sub_B99F0();

LABEL_4:
    *&v8 = v2;
    *(&v8 + 1) = v3;
    v7 = 0;
    sub_BABE0();
    sub_C5E8(&v10, &qword_F9020);
    sub_C5E8(&v9, &qword_FBCF8);
    v8 = *(v1 + 104);
    LOBYTE(v7) = 1;
    sub_2E50(&qword_F96C8);
    return sub_BABE0();
  }

  __break(1u);
  return result;
}

void sub_A8FD4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_2E50(&qword_F9018);
  sub_BABE0();
  sub_B9D20();
  v3 = v2;
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  if (v4 == 1)
  {
    sub_A93B8(v3);
  }
}

NSObject *sub_A9098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_B9D40();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BA450();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = 0x6C6C6F726373;
  *(&v26 + 1) = 0xE600000000000000;
  sub_BA560();
  sub_B9D30();
  v14 = v13;
  (*(v10 + 8))(v12, v9);
  v25 = *(a1 + 120);
  v26 = v25;
  v24 = v14;
  sub_2E50(&qword_F9018);
  sub_BABE0();
  v15 = sub_BB320();
  result = AXLogLiveTranscription();
  if (result)
  {
    v17 = result;
    (*(v6 + 16))(v8, a3, v5);
    if (os_log_type_enabled(v17, v15))
    {
      v18 = swift_slowAlloc();
      v23 = a3;
      v19 = v18;
      *v18 = 134218240;
      v25 = v26;
      sub_BABD0();
      *(v19 + 1) = v24;
      *(v19 + 6) = 2048;
      sub_B9D20();
      v21 = v20;
      (*(v6 + 8))(v8, v5);
      *(v19 + 14) = v21;
      _os_log_impl(&dword_0, v17, v15, "Initial content height: %f, scroll to bottom: %f", v19, 0x16u);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    sub_B9D20();
    sub_A93B8(v22);
    return sub_A8E44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_A93B8(double a1)
{
  sub_2E50(&qword_F9018);
  sub_BABD0();
  if (v6 > a1)
  {
    sub_BABD0();
    sub_B9F00();
    v2 = sub_BB2F0();
    v3 = AXLogLiveTranscription();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, v2))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        sub_BABD0();
        *(v5 + 4) = v6;
        _os_log_impl(&dword_0, v4, v2, "Scrolled to bottom: %f", v5, 0xCu);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_A9504(double a1, double a2)
{
  v3 = sub_BB2F0();
  v4 = AXLogLiveTranscription();
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, v3))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = a2;
      _os_log_impl(&dword_0, v5, v3, "ScrollView new height: %f", v6, 0xCu);
    }

    sub_B9D20();
    v8 = v7;
    sub_2E50(&qword_F96C8);
    sub_BABD0();
    if (v9 == 1)
    {
      sub_A93B8(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_A9620()
{
  v1 = v0;
  v15 = *(v0 + 104);
  LOBYTE(aBlock[0]) = 0;
  sub_2E50(&qword_F96C8);
  sub_BABE0();
  sub_BB2F0();
  result = AXLogLiveTranscription();
  if (result)
  {
    v3 = result;
    sub_B99F0();

    v5 = *(v1 + 88);
    v4 = *(v1 + 96);
    v17 = v4;
    v18[0] = v5;
    *&v15 = v5;
    *(&v15 + 1) = v4;
    sub_57A0(v18, aBlock, &qword_F9020);
    sub_57A0(&v17, aBlock, &qword_FBCF8);
    sub_2E50(&qword_F9C88);
    sub_BABD0();
    v6 = aBlock[0];
    [aBlock[0] invalidate];

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    v9 = *(v1 + 112);
    v8[7] = *(v1 + 96);
    v8[8] = v9;
    v8[9] = *(v1 + 128);
    v10 = *(v1 + 48);
    v8[3] = *(v1 + 32);
    v8[4] = v10;
    v11 = *(v1 + 80);
    v8[5] = *(v1 + 64);
    v8[6] = v11;
    v12 = *(v1 + 16);
    v8[1] = *v1;
    v8[2] = v12;
    aBlock[4] = sub_AADA8;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_4E790;
    aBlock[3] = &unk_F2E78;
    v13 = _Block_copy(aBlock);
    sub_A717C(v1, &v15);

    v14 = [v7 scheduledTimerWithTimeInterval:0 repeats:v13 block:60.0];
    _Block_release(v13);
    *&v15 = v5;
    *(&v15 + 1) = v4;
    aBlock[0] = v14;
    sub_BABE0();
    sub_C5E8(v18, &qword_F9020);
    return sub_C5E8(&v17, &qword_FBCF8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_A98AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_A9B44();
  v5 = result;
  if (!result)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_20:
    *a2 = v5;
    a2[1] = v21;
    a2[2] = v14;
    a2[3] = v15;
    a2[4] = v16;
    a2[5] = v17;
    a2[6] = v18;
    a2[7] = v19;
    a2[8] = v20;
    return result;
  }

  v6 = *a1;
  if (!(*a1 >> 62))
  {
    result = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_4;
    }

LABEL_14:
    v25 = 0;
LABEL_15:
    sub_2E50(&qword_F9C90);
    sub_BACA0();
    v14 = v26;
    v15 = v27;
    v16 = v28;
    if (qword_F8320 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_BABC0();
    v17 = v26;
    v18 = v27;
    if (qword_F8310 != -1)
    {
      swift_once();
    }

    v22 = textFontStyle;
    v23 = AXLTSettingsManager.contentCategory.getter();
    sub_64E70(v22, UIFontWeightBold);

    sub_BA720();
    result = sub_BABC0();
    v19 = v26;
    v20 = v27;
    v21 = v25;
    goto LABEL_20;
  }

  result = sub_BB650();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v24 = v5;
    v10 = sub_BB590();
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    v8 = *(v6 + 8 * v7 + 32);
    v9 = v5;
    v10 = v8;
LABEL_9:
    v11 = v10;
    sub_B9750();
    v12 = sub_BB490();

    v13 = 256;
    if ((v12 & 1) == 0)
    {
      v13 = 0;
    }

    v25 = v13;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_A9B44()
{
  v2 = *v0;
  v3 = *v0 >> 62;
  if (!v3)
  {
    v4 = *(&dword_10 + (*v0 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v4 = sub_BB650();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v1 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) == 0)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else if (result < *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        v7 = *(v2 + 8 * result + 32);
        goto LABEL_8;
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  v7 = sub_BB590();
LABEL_8:
  v8 = v7;
  v9 = sub_BB2F0();
  result = AXLogLiveTranscription();
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = result;
  if (os_log_type_enabled(result, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136315138;
    v13 = sub_B96D0();
    v15 = sub_7A1D8(v13, v14, &v35);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_0, v10, v9, "CaptionsView: prepare last caption:\n%s", v11, 0xCu);
    sub_28020(v12);
  }

  v16 = sub_B9700();
  v18 = v17;
  if (v16 == sub_B97B0() && v18 == v19)
  {
  }

  else
  {
    v20 = sub_BB700();

    if ((v20 & 1) == 0)
    {
      return v8;
    }
  }

  if (v3)
  {
    result = sub_BB650();
    v21 = result - 2;
    if (result >= 2)
    {
      goto LABEL_19;
    }

    return v8;
  }

  result = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  v21 = result - 2;
  if (result < 2)
  {
    return v8;
  }

LABEL_19:
  if (v1)
  {
    v22 = sub_BB590();
    goto LABEL_23;
  }

  if (v21 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_38;
  }

  v22 = *(v2 + 8 * v21 + 32);
LABEL_23:
  v23 = v22;
  sub_B9600();

  v24 = sub_B9860();
  if (v24 == sub_B9860())
  {
    return v8;
  }

  if (v1)
  {
    sub_BB590();
  }

  else
  {
    v25 = *(v2 + 8 * v21 + 32);
  }

  v26 = objc_allocWithZone(sub_B9750());
  v27 = sub_B9720();
  sub_B96D0();
  sub_B9670();
  v28 = sub_BB2F0();
  result = AXLogLiveTranscription();
  if (result)
  {
    v29 = result;
    if (os_log_type_enabled(result, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v30 = 136315138;
      v32 = sub_B96D0();
      v34 = sub_7A1D8(v32, v33, &v35);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_0, v29, v28, "CaptionsView: merged caption and placeholder :\n%s", v30, 0xCu);
      sub_28020(v31);
    }

    return v27;
  }

LABEL_40:
  __break(1u);
  return result;
}

double sub_A9EFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 56);
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  if (v6 == 1)
  {
    sub_2E50(&qword_F86F0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_BDB40;
    *(v3 + 32) = sub_BAAD0();
    sub_BAAD0();
    v4 = sub_BAB10();

    *(v3 + 40) = v4;
    sub_BAD30();
    sub_BAE60();
    sub_B9DB0();
  }

  sub_2E50(&qword_FBD00);
  sub_2E50(&qword_FBD08);
  sub_AAEEC(&qword_FBD10, &qword_FBD00, &unk_C32A0, sub_AAE98);
  sub_AAEEC(&qword_FBD20, &qword_FBD08, &unk_C32A8, sub_AAF70);
  sub_BA430();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 41) = v11;
  return result;
}

id sub_AA0F8(uint64_t a1, _OWORD *a2)
{
  v3 = sub_BAEC0();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BAEF0();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BB2F0();
  result = AXLogLiveTranscription();
  if (result)
  {
    v10 = result;
    sub_B99F0();

    sub_5470();
    v11 = sub_BB390();
    v12 = swift_allocObject();
    v13 = a2[7];
    v12[7] = a2[6];
    v12[8] = v13;
    v12[9] = a2[8];
    v14 = a2[3];
    v12[3] = a2[2];
    v12[4] = v14;
    v15 = a2[5];
    v12[5] = a2[4];
    v12[6] = v15;
    v16 = a2[1];
    v12[1] = *a2;
    v12[2] = v16;
    aBlock[4] = sub_AAE40;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257F4;
    aBlock[3] = &unk_F2EC8;
    v17 = _Block_copy(aBlock);
    sub_A717C(a2, &v21);

    sub_BAED0();
    v21 = _swiftEmptyArrayStorage;
    sub_AAFCC(&unk_FA520, &type metadata accessor for DispatchWorkItemFlags);
    sub_2E50(&qword_F9540);
    sub_D150(&qword_FA530, &qword_F9540);
    sub_BB510();
    sub_BB3B0();
    _Block_release(v17);

    (*(v20 + 8))(v5, v3);
    return (*(v6 + 8))(v8, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_AA468@<X0>(double (**a1)@<D0>(uint64_t@<X0>, uint64_t@<X8>)@<X8>)
{
  v3 = v1[7];
  v14[6] = v1[6];
  v14[7] = v3;
  v14[8] = v1[8];
  v4 = v1[3];
  v14[2] = v1[2];
  v14[3] = v4;
  v5 = v1[5];
  v14[4] = v1[4];
  v14[5] = v5;
  v6 = v1[1];
  v14[0] = *v1;
  v14[1] = v6;
  v7 = swift_allocObject();
  v8 = v1[7];
  *(v7 + 7) = v1[6];
  *(v7 + 8) = v8;
  *(v7 + 9) = v1[8];
  v9 = v1[3];
  *(v7 + 3) = v1[2];
  *(v7 + 4) = v9;
  v10 = v1[5];
  *(v7 + 5) = v1[4];
  *(v7 + 6) = v10;
  v11 = v1[1];
  *(v7 + 1) = *v1;
  *(v7 + 2) = v11;
  *a1 = sub_ABBE4;
  a1[1] = v7;
  return sub_A717C(v14, &v13);
}

uint64_t sub_AA514(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_AA55C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_AA614()
{
  result = qword_FBC40;
  if (!qword_FBC40)
  {
    sub_5520(&qword_FBC30);
    sub_D150(&qword_FBC48, &qword_FBC50);
    sub_D150(&qword_FA268, &qword_FA270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBC40);
  }

  return result;
}

uint64_t sub_AA6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_B9D40() - 8);
  v6 = v2 + ((*(v5 + 80) + 160) & ~*(v5 + 80));

  return sub_A71D0(a1, (v2 + 16), v6, a2);
}

unint64_t sub_AA788()
{
  result = qword_FBC68;
  if (!qword_FBC68)
  {
    sub_5520(&qword_FBC60);
    sub_D150(&qword_FBC70, &qword_FBC78);
    sub_D150(&qword_FBC80, &qword_FBC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBC68);
  }

  return result;
}

void sub_AA898(double a1, double a2)
{
  sub_B9F10();
  sub_B9D40();

  sub_A9504(a1, a2);
}

uint64_t sub_AA9AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_AAA34()
{
  result = qword_FBCA8;
  if (!qword_FBCA8)
  {
    sub_5520(&qword_FBC58);
    sub_AAAEC();
    sub_D150(&qword_FBCE8, &qword_FBCF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBCA8);
  }

  return result;
}

unint64_t sub_AAAEC()
{
  result = qword_FBCB0;
  if (!qword_FBCB0)
  {
    sub_5520(&qword_FBCA0);
    sub_AABA4();
    sub_D150(&qword_FBCD8, &qword_FBCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBCB0);
  }

  return result;
}

unint64_t sub_AABA4()
{
  result = qword_FBCB8;
  if (!qword_FBCB8)
  {
    sub_5520(&qword_FBC98);
    sub_AAC5C();
    sub_D150(&qword_FA310, &qword_FA318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBCB8);
  }

  return result;
}

unint64_t sub_AAC5C()
{
  result = qword_FBCC0;
  if (!qword_FBCC0)
  {
    sub_5520(&qword_FBC90);
    sub_D150(&qword_FBCC8, &qword_FBCD0);
    sub_D150(&qword_FA300, &qword_FA308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBCC0);
  }

  return result;
}

uint64_t sub_AAD40(uint64_t a1)
{
  v2 = sub_2E50(&qword_FBC58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AADB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_AADC8()
{

  return _swift_deallocObject(v0, 160, 7);
}

unint64_t sub_AAE98()
{
  result = qword_FBD18;
  if (!qword_FBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBD18);
  }

  return result;
}

uint64_t sub_AAEEC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5520(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_AAF70()
{
  result = qword_FBD28;
  if (!qword_FBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBD28);
  }

  return result;
}

uint64_t sub_AAFCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_AB014()
{
  result = qword_FBD40;
  if (!qword_FBD40)
  {
    sub_5520(&qword_FBD38);
    sub_AB098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBD40);
  }

  return result;
}

unint64_t sub_AB098()
{
  result = qword_FBD48;
  if (!qword_FBD48)
  {
    sub_5520(&qword_FBD50);
    sub_AB124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBD48);
  }

  return result;
}

unint64_t sub_AB124()
{
  result = qword_FBD58;
  if (!qword_FBD58)
  {
    sub_5520(&qword_FBD60);
    sub_AB1B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBD58);
  }

  return result;
}

unint64_t sub_AB1B0()
{
  result = qword_FBD68;
  if (!qword_FBD68)
  {
    sub_5520(&qword_FBD70);
    sub_AB23C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBD68);
  }

  return result;
}

unint64_t sub_AB23C()
{
  result = qword_FBD78;
  if (!qword_FBD78)
  {
    sub_5520(&qword_FBD80);
    sub_D150(&qword_FBD88, &qword_FBD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBD78);
  }

  return result;
}

uint64_t sub_AB320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_B9D40() - 8);
  v6 = (*(v5 + 80) + 160) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_B9F10() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_A8410(a1, (v2 + 16), v2 + v6, v9, a2);
}

uint64_t sub_AB40C(uint64_t a1, double *a2)
{
  sub_B9D40();

  return sub_A8D04(a1, a2, v2 + 16);
}

unint64_t sub_AB490()
{
  result = qword_FBDA0;
  if (!qword_FBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBDA0);
  }

  return result;
}

uint64_t sub_AB4E4(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 160) & ~v6;
  v8 = *(v5 + 64);
  v9 = a2(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v6 | v11;

  (*(v5 + 8))(v2 + v7, v4);
  (*(v10 + 8))(v2 + v12, v9);

  return _swift_deallocObject(v2, v12 + v13, v14 | 7);
}

void sub_AB684(uint64_t a1, uint64_t *a2)
{
  sub_B9F10();
  sub_B9D40();

  sub_A8FD4(a1, a2);
}

uint64_t sub_AB76C()
{
  v1 = sub_B9D40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 160) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = sub_B9F10();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v5 + v9) & ~v9;
  v14 = *(v8 + 64);
  v11 = v3 | v9;

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v12(v0 + v6, v1);
  (*(v8 + 8))(v0 + v10, v7);

  return _swift_deallocObject(v0, v10 + v14, v11 | 7);
}

NSObject *sub_AB92C()
{
  v1 = *(sub_B9D40() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 160) & ~v2;
  v4 = (*(v1 + 64) + v2 + v3) & ~v2;
  sub_B9F10();

  return sub_A9098(v0 + 16, v0 + v3, v0 + v4);
}

uint64_t sub_ABA0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B96C0();
  *a1 = result;
  return result;
}

uint64_t sub_ABA38()
{
  v1 = sub_B9D40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 160) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_ABB3C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  sub_B9D40();

  return sub_A7F68(a1, (v2 + 16), a2);
}

uint64_t sub_ABC3C(uint64_t a1)
{
  v2 = sub_2E50(&qword_F9700);
  __chkstk_darwin(v2 - 8);
  sub_57A0(a1, &v5 - v3, &qword_F9700);
  return sub_BA030();
}

uint64_t sub_ABCE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  *a1 = sub_BA1C0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = sub_2E50(&qword_FBDF8);
  sub_ABF74(v1, a1 + *(v4 + 44));
  v5 = v1[3];
  v6 = sub_BA640();
  v7 = a1 + *(sub_2E50(&qword_FBE00) + 36);
  *v7 = v6;
  *(v7 + 8) = 0x4028000000000000;
  *(v7 + 16) = v5;
  *(v7 + 24) = 0;
  *(v7 + 32) = v5;
  *(v7 + 40) = 0;
  v8 = objc_opt_self();
  v9 = [v8 defaultCenter];
  if (qword_F82E0 != -1)
  {
    swift_once();
  }

  v10 = sub_2E50(&qword_FBE08);
  sub_BB400();

  v11 = swift_allocObject();
  v12 = v2[7];
  *(v11 + 7) = v2[6];
  *(v11 + 8) = v12;
  *(v11 + 9) = v2[8];
  v13 = v2[3];
  *(v11 + 3) = v2[2];
  *(v11 + 4) = v13;
  v14 = v2[5];
  *(v11 + 5) = v2[4];
  *(v11 + 6) = v14;
  v15 = v2[1];
  *(v11 + 1) = *v2;
  *(v11 + 2) = v15;
  v16 = (a1 + *(v10 + 56));
  *v16 = sub_B1540;
  v16[1] = v11;
  sub_B1570(v2, v26);
  v17 = [v8 defaultCenter];
  if (qword_F82E8 != -1)
  {
    swift_once();
  }

  v18 = sub_2E50(&qword_FBE10);
  sub_BB400();

  v19 = swift_allocObject();
  v20 = v2[7];
  *(v19 + 7) = v2[6];
  *(v19 + 8) = v20;
  *(v19 + 9) = v2[8];
  v21 = v2[3];
  *(v19 + 3) = v2[2];
  *(v19 + 4) = v21;
  v22 = v2[5];
  *(v19 + 5) = v2[4];
  *(v19 + 6) = v22;
  v23 = v2[1];
  *(v19 + 1) = *v2;
  *(v19 + 2) = v23;
  v24 = (a1 + *(v18 + 56));
  *v24 = sub_B15A8;
  v24[1] = v19;
  return sub_B1570(v2, v26);
}

uint64_t sub_ABF74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_2E50(&qword_FBE18);
  __chkstk_darwin(v3 - 8);
  v54 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v53 = &v44[-v6];
  v50 = sub_2E50(&qword_FBE20);
  __chkstk_darwin(v50);
  v8 = &v44[-v7];
  v9 = sub_2E50(&qword_FBE28);
  __chkstk_darwin(v9);
  v11 = &v44[-v10];
  v12 = sub_2E50(&qword_FBE30);
  __chkstk_darwin(v12 - 8);
  v52 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v44[-v15];
  v17 = sub_2E50(&qword_FBE38);
  __chkstk_darwin(v17);
  v51 = &v44[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v44[-v20];
  v23 = a1[4];
  v22 = a1[5];
  type metadata accessor for LiveCaptionsTopBarMenu();

  sub_BA530();
  *v21 = v23;
  v21[1] = v22;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  AXLTSettingsManager.buttonScaledHeight.getter();
  sub_BADE0();
  sub_B9CF0();
  v24 = (v21 + *(v17 + 36));
  v25 = v60;
  *v24 = v59;
  v24[1] = v25;
  v24[2] = v61;
  if (sub_AC640())
  {
    v26 = a1[8];
    v27 = a1[9];

    sub_2ADB8(v26, v27, v62);
    v28 = v62[3];
    v11[2] = v62[2];
    v11[3] = v28;
    v11[4] = v62[4];
    v29 = v62[1];
    *v11 = v62[0];
    v11[1] = v29;
    swift_storeEnumTagMultiPayload();
    sub_B16E0();
    sub_B1734();
    v30 = v16;
    sub_BA430();
  }

  else
  {
    sub_AC790(v8);
    sub_57A0(v8, v11, &qword_FBE20);
    swift_storeEnumTagMultiPayload();
    sub_B16E0();
    sub_B1734();
    v30 = v16;
    sub_BA430();
    sub_C5E8(v8, &qword_FBE20);
  }

  sub_BADE0();
  sub_B9CF0();
  v50 = v63;
  v49 = v65;
  v48 = v67;
  v47 = v68;
  v58 = 1;
  v57 = v64;
  v56 = v66;
  v31 = v53;
  sub_ACF40(v53);
  v32 = v51;
  sub_57A0(v21, v51, &qword_FBE38);
  v33 = v52;
  sub_57A0(v30, v52, &qword_FBE30);
  v34 = v58;
  v35 = v57;
  v46 = v21;
  v45 = v56;
  v36 = v54;
  sub_57A0(v31, v54, &qword_FBE18);
  v37 = v55;
  sub_57A0(v32, v55, &qword_FBE38);
  v38 = v30;
  v39 = sub_2E50(&qword_FBE50);
  v40 = v37 + v39[12];
  *v40 = 0;
  *(v40 + 8) = 1;
  sub_57A0(v33, v37 + v39[16], &qword_FBE30);
  v41 = v37 + v39[20];
  *v41 = 0;
  *(v41 + 8) = v34;
  *(v41 + 16) = v50;
  *(v41 + 24) = v35;
  *(v41 + 32) = v49;
  *(v41 + 40) = v45;
  v42 = v47;
  *(v41 + 48) = v48;
  *(v41 + 56) = v42;
  sub_57A0(v36, v37 + v39[24], &qword_FBE18);
  sub_C5E8(v31, &qword_FBE18);
  sub_C5E8(v38, &qword_FBE30);
  sub_C5E8(v46, &qword_FBE38);
  sub_C5E8(v36, &qword_FBE18);
  sub_C5E8(v33, &qword_FBE30);
  return sub_C5E8(v32, &qword_FBE38);
}

uint64_t sub_AC640()
{
  sub_2E50(&qword_FBE58);
  sub_BABD0();
  if (v3 != 2 && (v3 & 1) == 0)
  {
    return 0;
  }

  sub_BABD0();
  if (v3)
  {
    sub_2E50(&qword_F96C8);
    sub_BABD0();
    return 1;
  }

  if (*(v0 + 17) != 1)
  {
    return 0;
  }

  sub_2E50(&qword_F96C8);
  sub_BABD0();
  if (v3)
  {
    return 1;
  }

  sub_BABD0();
  return v3;
}

uint64_t sub_AC790@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = sub_2E50(&qword_F9700);
  __chkstk_darwin(v3 - 8);
  v52 = &v50 - v4;
  v5 = type metadata accessor for HUDButton(0);
  __chkstk_darwin(v5);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_2E50(&qword_F9708);
  __chkstk_darwin(v51);
  v53 = &v50 - v8;
  v55 = sub_2E50(&qword_F96A0);
  __chkstk_darwin(v55);
  v10 = &v50 - v9;
  v56 = sub_2E50(&qword_FBE20);
  __chkstk_darwin(v56);
  v54 = &v50 - v11;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v12 = static AXLTSettingsManager.shared;
  v13 = AXLTSettingsManager.buttonScaledHeight.getter();
  v58[0] = v1[6];
  sub_2E50(&qword_F9710);
  sub_BABD0();
  v50 = v59;
  v14 = swift_allocObject();
  v15 = v2[7];
  *(v14 + 7) = v2[6];
  *(v14 + 8) = v15;
  *(v14 + 9) = v2[8];
  v16 = v2[3];
  *(v14 + 3) = v2[2];
  *(v14 + 4) = v16;
  v17 = v2[5];
  *(v14 + 5) = v2[4];
  *(v14 + 6) = v17;
  v18 = v2[1];
  *(v14 + 1) = *v2;
  *(v14 + 2) = v18;
  *v7 = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v19 = v5[13];
  sub_B1570(v2, v58);
  sub_BA710();
  *(v7 + v5[15]) = 0x4020000000000000;
  *(v7 + v5[16]) = 0x4000000000000000;
  *(v7 + v5[17]) = 0x4040000000000000;
  *(v7 + v5[18]) = 0x402E000000000000;
  *(v7 + v5[19]) = 0x4024000000000000;
  v20 = v5[20];
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v21 = sub_B9E30();
  v22 = sub_3CB8(v21, qword_100DA8);
  (*(*(v21 - 8) + 16))(v7 + v20, v22, v21);

  *(v7 + v5[5]) = xmmword_C3340;
  v23 = (v7 + v5[6]);
  *v23 = 0;
  v23[1] = 0;
  *(v7 + v5[7]) = 0;
  *(v7 + v5[8]) = 0;
  *(v7 + v5[9]) = 0;
  *(v7 + v5[10]) = 0;
  *(v7 + v5[11]) = 0;
  v24 = (v7 + v5[12]);
  *v24 = v13;
  *(v24 + 8) = 0;
  v25 = (v7 + v5[14]);
  *v25 = sub_B1CD4;
  v25[1] = v14;
  *(v7 + v19) = v50;
  KeyPath = swift_getKeyPath();
  v27 = OBJC_IVAR___AXLTSettingsManager__boldText;
  v28 = *(v12 + OBJC_IVAR___AXLTSettingsManager__boldText);
  if (v28 == 2)
  {
    v29 = _AXSLiveCaptionsBoldTextEnabled();
    if (v29 == -1)
    {
      v49 = _AXSEnhanceTextLegibilityEnabled();
      *(v12 + v27) = v49 != 0;
      if (!v49)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *(v12 + v27) = v29 == 1;
      if (v29 != 1)
      {
LABEL_8:
        v30 = &enum case for LegibilityWeight.regular(_:);
        goto LABEL_11;
      }
    }
  }

  else if ((v28 & 1) == 0)
  {
    goto LABEL_8;
  }

  v30 = &enum case for LegibilityWeight.bold(_:);
LABEL_11:
  v31 = *v30;
  v32 = sub_B9F20();
  v33 = *(v32 - 8);
  v34 = v52;
  (*(v33 + 104))(v52, v31, v32);
  (*(v33 + 56))(v34, 0, 1, v32);
  v35 = v53;
  v36 = &v53[*(v51 + 36)];
  v37 = sub_2E50(&qword_F9718);
  sub_66B8(v34, v36 + *(v37 + 28), &qword_F9700);
  *v36 = KeyPath;
  sub_2B438(v7, v35);
  v38 = [objc_opt_self() defaultCenter];
  if (qword_F82D0 != -1)
  {
    swift_once();
  }

  v39 = v55;
  sub_BB400();

  v40 = swift_allocObject();
  v41 = v2[7];
  v40[7] = v2[6];
  v40[8] = v41;
  v40[9] = v2[8];
  v42 = v2[3];
  v40[3] = v2[2];
  v40[4] = v42;
  v43 = v2[5];
  v40[5] = v2[4];
  v40[6] = v43;
  v44 = v2[1];
  v40[1] = *v2;
  v40[2] = v44;
  sub_66B8(v35, v10, &qword_F9708);
  v45 = &v10[*(v39 + 56)];
  *v45 = sub_B2644;
  *(v45 + 1) = v40;
  sub_B1570(v2, v58);
  v46._countAndFlagsBits = 0xD000000000000014;
  v46._object = 0x80000000000C4750;
  v58[0] = LiveSpeechCaptionsLocString(_:)(v46);
  sub_D150(&qword_F96B0, &qword_F96A0);
  sub_B320();
  v47 = v54;
  sub_BA900();

  sub_C5E8(v10, &qword_F96A0);
  sub_B9EC0();
  return sub_C5E8(v47, &qword_FBE20);
}

uint64_t sub_ACF40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v79 = sub_BAEB0();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_BAE90();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2E50(&qword_F9700);
  __chkstk_darwin(v5 - 8);
  v68 = &v65 - v6;
  v7 = type metadata accessor for HUDButton(0);
  __chkstk_darwin(v7);
  v9 = (&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_2E50(&qword_F9708);
  __chkstk_darwin(v67);
  v69 = &v65 - v10;
  v70 = sub_2E50(&qword_F96A0);
  __chkstk_darwin(v70);
  v12 = &v65 - v11;
  v72 = sub_2E50(&qword_FBE20);
  __chkstk_darwin(v72);
  v71 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v73 = &v65 - v15;
  v81[0] = *(v1 + 80);
  sub_2E50(&qword_FBE58);
  sub_BABD0();
  v16 = v82;
  if (v82 == 2)
  {
    v16 = *(v1 + 17);
  }

  if (v16)
  {
    v17 = "arrow.down.forward.and.arrow.up.backward";
  }

  else
  {
    v17 = "arrow.up.backward.and.arrow.down.forward";
  }

  v66 = (v17 - 32) | 0x8000000000000000;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v18 = static AXLTSettingsManager.shared;
  v19 = AXLTSettingsManager.buttonScaledHeight.getter();
  v81[0] = *(v1 + 96);
  sub_2E50(&qword_F9710);
  sub_BABD0();
  v65 = v82;
  v20 = swift_allocObject();
  v21 = v2[7];
  *(v20 + 7) = v2[6];
  *(v20 + 8) = v21;
  *(v20 + 9) = v2[8];
  v22 = v2[3];
  *(v20 + 3) = v2[2];
  *(v20 + 4) = v22;
  v23 = v2[5];
  *(v20 + 5) = v2[4];
  *(v20 + 6) = v23;
  v24 = v2[1];
  *(v20 + 1) = *v2;
  *(v20 + 2) = v24;
  *v9 = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  swift_storeEnumTagMultiPayload();
  v25 = v7[13];
  sub_B1570(v2, v81);
  sub_BA710();
  *(v9 + v7[15]) = 0x4020000000000000;
  *(v9 + v7[16]) = 0x4000000000000000;
  *(v9 + v7[17]) = 0x4040000000000000;
  *(v9 + v7[18]) = 0x402E000000000000;
  *(v9 + v7[19]) = 0x4024000000000000;
  v26 = v7[20];
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v27 = sub_B9E30();
  v28 = sub_3CB8(v27, qword_100DA8);
  (*(*(v27 - 8) + 16))(v9 + v26, v28, v27);

  v29 = (v9 + v7[5]);
  v30 = v66;
  *v29 = 0xD000000000000028;
  v29[1] = v30;
  v31 = (v9 + v7[6]);
  *v31 = 0;
  v31[1] = 0;
  *(v9 + v7[7]) = 0;
  *(v9 + v7[8]) = 0;
  *(v9 + v7[9]) = 0;
  *(v9 + v7[10]) = 0;
  *(v9 + v7[11]) = 0;
  v32 = (v9 + v7[12]);
  *v32 = v19;
  *(v32 + 8) = 0;
  v33 = (v9 + v7[14]);
  *v33 = sub_B1BD4;
  v33[1] = v20;
  *(v9 + v25) = v65;
  KeyPath = swift_getKeyPath();
  v35 = OBJC_IVAR___AXLTSettingsManager__boldText;
  v36 = *(v18 + OBJC_IVAR___AXLTSettingsManager__boldText);
  if (v36 == 2)
  {
    v37 = _AXSLiveCaptionsBoldTextEnabled();
    v38 = v70;
    if (v37 == -1)
    {
      v64 = _AXSEnhanceTextLegibilityEnabled();
      *(v18 + v35) = v64 != 0;
      if (!v64)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(v18 + v35) = v37 == 1;
      if (v37 != 1)
      {
LABEL_13:
        v39 = &enum case for LegibilityWeight.regular(_:);
        goto LABEL_16;
      }
    }
  }

  else
  {
    v38 = v70;
    if ((v36 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v39 = &enum case for LegibilityWeight.bold(_:);
LABEL_16:
  v40 = *v39;
  v41 = sub_B9F20();
  v42 = *(v41 - 8);
  v43 = v68;
  (*(v42 + 104))(v68, v40, v41);
  (*(v42 + 56))(v43, 0, 1, v41);
  v44 = v69;
  v45 = &v69[*(v67 + 36)];
  v46 = sub_2E50(&qword_F9718);
  sub_66B8(v43, v45 + *(v46 + 28), &qword_F9700);
  *v45 = KeyPath;
  sub_2B438(v9, v44);
  v47 = [objc_opt_self() defaultCenter];
  if (qword_F82D0 != -1)
  {
    swift_once();
  }

  sub_BB400();

  v48 = swift_allocObject();
  v49 = v2[7];
  *(v48 + 7) = v2[6];
  *(v48 + 8) = v49;
  *(v48 + 9) = v2[8];
  v50 = v2[3];
  *(v48 + 3) = v2[2];
  *(v48 + 4) = v50;
  v51 = v2[5];
  *(v48 + 5) = v2[4];
  *(v48 + 6) = v51;
  v52 = v2[1];
  *(v48 + 1) = *v2;
  *(v48 + 2) = v52;
  sub_66B8(v44, v12, &qword_F9708);
  v53 = &v12[*(v38 + 56)];
  *v53 = sub_B1C0C;
  v53[1] = v48;
  sub_B1570(v2, v81);
  *&v81[0] = sub_B9760();
  *(&v81[0] + 1) = v54;
  sub_D150(&qword_F96B0, &qword_F96A0);
  sub_B320();
  v55 = v71;
  sub_BA900();

  sub_C5E8(v12, &qword_F96A0);
  v56 = v73;
  sub_B9EC0();

  sub_C5E8(v55, &qword_FBE20);
  v57 = v74;
  sub_BAE80();
  v58 = v76;
  sub_BAEA0();
  v59 = sub_2E50(&qword_FBE18);
  v60 = v80;
  v61 = (v80 + *(v59 + 36));
  sub_2E50(&qword_FBE60);
  sub_B2144(&qword_FBE68, &type metadata accessor for ReplaceSymbolEffect);
  v62 = v77;
  sub_B9F80();
  (*(v78 + 8))(v58, v79);
  (*(v75 + 8))(v57, v62);
  *v61 = swift_getKeyPath();
  return sub_66B8(v56, v60, &qword_FBE20);
}

uint64_t sub_AD9F4()
{
  if (qword_F82A0 != -1)
  {
    swift_once();
  }

  AXLTCaptionsProvider.canClearCaptions.getter();
  sub_2E50(&qword_F96C8);
  return sub_BABE0();
}

uint64_t sub_ADAA0()
{
  if (qword_F82A0 != -1)
  {
    goto LABEL_29;
  }

  while ((*(static AXLTCaptionsProvider.shared + OBJC_IVAR___AXLTCaptionsProvider_isDeviceLocked) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v18 >> 62)
    {
      v0 = sub_BB650();
      if (!v0)
      {
LABEL_31:

        break;
      }
    }

    else
    {
      v0 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
      if (!v0)
      {
        goto LABEL_31;
      }
    }

    v1 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v2 = sub_BB590();
      }

      else
      {
        if (v1 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_28;
        }

        v2 = *(v18 + 8 * v1 + 32);
      }

      v3 = v2;
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v5 = sub_B9700();
      v7 = v6;
      if (v5 == sub_B97B0() && v7 == v8)
      {
      }

      else
      {
        v9 = sub_BB700();

        if (v9)
        {
        }

        else
        {
          v10 = sub_B9700();
          v12 = v11;
          if (v10 == sub_BAFD0() && v12 == v13)
          {
          }

          else
          {
            v14 = sub_BB700();

            if ((v14 & 1) == 0)
            {

              goto LABEL_31;
            }
          }

          if (qword_F8320 != -1)
          {
            swift_once();
          }

          v15 = static AXLTSettingsManager.shared;

          v16 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
          swift_beginAccess();
          if (*(v15 + v16))
          {
            goto LABEL_31;
          }
        }
      }

      ++v1;
      if (v4 == v0)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  sub_2E50(&qword_F96C8);
  return sub_BABE0();
}

uint64_t sub_ADDD4(uint64_t a1)
{
  v2 = sub_BAEC0();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_BAEF0();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BAF10();
  v26 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v14 = *(a1 + 17);
  v30[0] = *(a1 + 80);
  LOBYTE(aBlock[0]) = v14;
  sub_2E50(&qword_FBE58);
  v15 = sub_BABE0();
  (*(a1 + 48))(v15);
  sub_35DD4(0, &qword_F83E0);
  v24 = sub_BB390();
  sub_BAF00();
  sub_BAF20();
  v25 = *(v8 + 8);
  v25(v10, v7);
  v16 = swift_allocObject();
  v17 = *(a1 + 112);
  v16[7] = *(a1 + 96);
  v16[8] = v17;
  v16[9] = *(a1 + 128);
  v18 = *(a1 + 48);
  v16[3] = *(a1 + 32);
  v16[4] = v18;
  v19 = *(a1 + 80);
  v16[5] = *(a1 + 64);
  v16[6] = v19;
  v20 = *(a1 + 16);
  v16[1] = *a1;
  v16[2] = v20;
  aBlock[4] = sub_B1C50;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257F4;
  aBlock[3] = &unk_F32D8;
  v21 = _Block_copy(aBlock);
  sub_B1570(a1, v30);

  sub_BAED0();
  *&v30[0] = _swiftEmptyArrayStorage;
  sub_B2144(&unk_FA520, &type metadata accessor for DispatchWorkItemFlags);
  sub_2E50(&qword_F9540);
  sub_D150(&qword_FA530, &qword_F9540);
  sub_BB510();
  v22 = v24;
  sub_BB370();
  _Block_release(v21);

  (*(v29 + 8))(v4, v2);
  (*(v27 + 8))(v6, v28);
  return (v25)(v13, v26);
}

uint64_t sub_AE260()
{
  sub_BAE30();
  sub_B9D80();
}

uint64_t sub_AE2CC()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v0 = AXLTSettingsManager.contentCategory.getter();
  v1 = qword_F8378;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = sub_B9E30();
  sub_3CB8(v3, qword_100DA8);
  v4 = sub_1F22C();
  v5 = sub_BB420();

  if (v5)
  {
    v6 = sub_1F22C();

    v2 = v6;
  }

  if (qword_F8318 != -1)
  {
    swift_once();
  }

  sub_64E70(buttonFontStyle, UIFontWeightBold);

  sub_BA720();
  sub_2E50(&qword_F9710);
  return sub_BABE0();
}

double sub_AE4B4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = sub_B96D0();
    v6 = v5;
    v7 = sub_B9850();
    if (v6)
    {
      if (v4 == v7 && v6 == v8)
      {
        goto LABEL_15;
      }

      v9 = sub_BB700();

      if (v9)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v10 = sub_B9660();
    v12 = v11;
    v13 = sub_B9850();
    if (v12)
    {
      if (v10 == v13 && v12 == v14)
      {
LABEL_15:

LABEL_19:
        if (qword_F8320 != -1)
        {
          swift_once();
        }

        AXLTSettingsManager.buttonScaledHeight.getter();
        sub_BABC0();
        sub_B1E30();
        sub_B1E84();

        sub_BA430();
        sub_2E50(&qword_FBE70);
        sub_B1D7C();
        sub_BA430();
LABEL_33:

        goto LABEL_34;
      }

      v15 = sub_BB700();

      if (v15)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    v16 = sub_B9700();
    v18 = v17;
    if (v16 == sub_BAFD0() && v18 == v19)
    {
      goto LABEL_29;
    }

    v21 = sub_BB700();

    if (v21)
    {
LABEL_30:
      if (qword_F8320 != -1)
      {
        swift_once();
      }

      AXLTSettingsManager.buttonScaledHeight.getter();
      sub_BABC0();
      sub_B1E30();
      sub_B1E84();

      sub_BA430();
      sub_B1ED8();
      sub_2E50(&qword_FBE70);
      sub_B1D7C();
      sub_BA430();

      sub_B1EE0();
      goto LABEL_33;
    }

    v22 = sub_B9710();
    v24 = v23;
    if (v22 == sub_B9800() && v24 == v25)
    {
LABEL_29:

      goto LABEL_30;
    }

    v27 = sub_BB700();

    if (v27)
    {
      goto LABEL_30;
    }
  }

  else
  {
    sub_B9850();

    sub_B9850();
  }

  if (qword_F8320 != -1)
  {
    swift_once();
  }

  AXLTSettingsManager.buttonScaledHeight.getter();
  sub_BABC0();
  sub_2E50(&qword_FBE70);
  sub_B1D7C();
  sub_B1E84();
  sub_BA430();
LABEL_34:
  result = *&v28;
  *a2 = v28;
  *(a2 + 16) = v29;
  *(a2 + 24) = v30;
  *(a2 + 25) = v31;
  return result;
}

uint64_t sub_AE9F0()
{
  v1 = v0;
  v2 = sub_2E50(&qword_FBEB0);
  __chkstk_darwin(v2);
  v4 = v37 - v3;
  *v4 = sub_BA1C0();
  *(v4 + 1) = 0x4020000000000000;
  v4[16] = 0;
  v5 = sub_2E50(&qword_FBEB8);
  sub_AEE94(v0, &v4[*(v5 + 44)]);
  v6 = sub_BAAF0();
  KeyPath = swift_getKeyPath();
  v8 = &v4[*(sub_2E50(&qword_FBEC0) + 36)];
  *v8 = KeyPath;
  v8[1] = v6;
  v9 = swift_allocObject();
  v10 = *(v1 + 7);
  *(v9 + 7) = *(v1 + 6);
  *(v9 + 8) = v10;
  *(v9 + 9) = *(v1 + 8);
  v11 = *(v1 + 3);
  *(v9 + 3) = *(v1 + 2);
  *(v9 + 4) = v11;
  v12 = *(v1 + 5);
  *(v9 + 5) = *(v1 + 4);
  *(v9 + 6) = v12;
  v13 = *(v1 + 1);
  *(v9 + 1) = *v1;
  *(v9 + 2) = v13;
  v14 = &v4[*(sub_2E50(&qword_FBEC8) + 36)];
  *v14 = sub_B2054;
  v14[1] = v9;
  v14[2] = 0;
  v14[3] = 0;
  v15 = objc_opt_self();
  sub_B205C(v1, v38);
  v16 = [v15 defaultCenter];
  if (qword_F82C0 != -1)
  {
    swift_once();
  }

  v17 = sub_2E50(&qword_FBED0);
  sub_BB400();

  v18 = swift_allocObject();
  v19 = *(v1 + 7);
  *(v18 + 7) = *(v1 + 6);
  *(v18 + 8) = v19;
  *(v18 + 9) = *(v1 + 8);
  v20 = *(v1 + 3);
  *(v18 + 3) = *(v1 + 2);
  *(v18 + 4) = v20;
  v21 = *(v1 + 5);
  *(v18 + 5) = *(v1 + 4);
  *(v18 + 6) = v21;
  v22 = *(v1 + 1);
  *(v18 + 1) = *v1;
  *(v18 + 2) = v22;
  v23 = &v4[*(v17 + 56)];
  *v23 = sub_B2094;
  v23[1] = v18;
  sub_B205C(v1, v38);
  v24 = [v15 defaultCenter];
  if (qword_F82D0 != -1)
  {
    swift_once();
  }

  sub_BB400();

  v25 = swift_allocObject();
  v26 = *(v1 + 3);
  *(v25 + 3) = *(v1 + 2);
  *(v25 + 4) = v26;
  v27 = *(v1 + 8);
  *(v25 + 8) = *(v1 + 7);
  *(v25 + 9) = v27;
  v28 = *(v1 + 6);
  *(v25 + 6) = *(v1 + 5);
  *(v25 + 7) = v28;
  *(v25 + 5) = *(v1 + 4);
  v29 = *(v1 + 1);
  *(v25 + 1) = *v1;
  *(v25 + 2) = v29;
  v30 = &v4[*(v2 + 56)];
  *v30 = sub_B209C;
  v30[1] = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B205C(v1, v38);
  sub_B9B10();

  v37[1] = v38[0];
  v31 = swift_allocObject();
  v32 = *(v1 + 7);
  v31[7] = *(v1 + 6);
  v31[8] = v32;
  v31[9] = *(v1 + 8);
  v33 = *(v1 + 3);
  v31[3] = *(v1 + 2);
  v31[4] = v33;
  v34 = *(v1 + 5);
  v31[5] = *(v1 + 4);
  v31[6] = v34;
  v35 = *(v1 + 1);
  v31[1] = *v1;
  v31[2] = v35;
  sub_B205C(v1, v38);
  sub_2E50(&qword_FA368);
  sub_D150(&qword_FBED8, &qword_FBEB0);
  sub_A1C98();
  sub_BAA10();

  return sub_C5E8(v4, &qword_FBEB0);
}

uint64_t sub_AEE94@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v3 = sub_2E50(&qword_F9700);
  __chkstk_darwin(v3 - 8);
  v103 = &v93 - v4;
  v105 = sub_2E50(&qword_FBEF0);
  __chkstk_darwin(v105);
  v104 = &v93 - v5;
  v6 = sub_2E50(&qword_FBEF8);
  __chkstk_darwin(v6 - 8);
  v108 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v106 = &v93 - v9;
  v10 = sub_2E50(&qword_FBF00);
  __chkstk_darwin(v10 - 8);
  v107 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v110 = &v93 - v13;
  v14 = sub_BAB70();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_2E50(&qword_FA958);
  __chkstk_darwin(v97);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v94 = &v93 - v21;
  v96 = sub_2E50(&qword_FA960);
  __chkstk_darwin(v96);
  v23 = (&v93 - v22);
  v24 = sub_2E50(&qword_FA968);
  __chkstk_darwin(v24 - 8);
  v102 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v93 - v27;
  v29 = sub_AFC2C();
  v99 = v15;
  v100 = v14;
  v98 = v17;
  if (v29)
  {
    v114 = *(a1 + 5);
    sub_2E50(&qword_FA950);
    sub_BABD0();
    sub_BAB50();
    (*(v15 + 104))(v17, enum case for Image.ResizingMode.stretch(_:), v14);
    v30 = sub_BABA0();

    (*(v15 + 8))(v17, v14);
    v114 = *(a1 + 8);
    sub_2E50(&qword_FA710);
    sub_BABD0();
    v114 = *(a1 + 8);
    sub_BABD0();
    sub_BADE0();
    sub_B9CF0();
    *&v113[38] = v124;
    *&v113[6] = v122;
    *&v113[22] = v123;
    *&v112[2] = *v113;
    LOBYTE(v120[0]) = 1;
    v111 = v30;
    *v112 = 1;
    *&v112[18] = *&v113[16];
    *&v112[34] = *&v113[32];
    *&v112[48] = *(&v124 + 1);
    sub_2E50(&qword_F9748);
    sub_B23BC(&qword_F9CC0, &qword_F9748, &unk_BF650, sub_3B124);
    sub_BA880();
    v116 = *&v112[16];
    v117 = *&v112[32];
    v118 = *&v112[48];
    v114 = v111;
    v115 = *v112;
    sub_C5E8(&v114, &qword_F9748);
    v31 = v94;
    sub_B9EA0();
    sub_C5E8(v19, &qword_FA958);
    sub_57A0(v31, v23, &qword_FA958);
    swift_storeEnumTagMultiPayload();
    sub_62D58();
    sub_62DAC();
    sub_BA430();
    sub_C5E8(v31, &qword_FA958);
  }

  else
  {
    v114 = *(a1 + 6);
    sub_2E50(&qword_FBEE0);
    sub_BABD0();
    *v23 = v111;
    swift_storeEnumTagMultiPayload();
    sub_62D58();
    sub_62DAC();
    sub_BA430();
  }

  v114 = *(a1 + 6);
  sub_2E50(&qword_FBEE0);
  sub_BABD0();
  v32 = v111;
  v101 = v28;
  if (v111)
  {
    v33 = sub_B9710();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0xE000000000000000;
  }

  *&v114 = v33;
  *(&v114 + 1) = v35;
  sub_B320();
  v36 = sub_BA800();
  v38 = v37;
  v40 = v39;
  v114 = *(a1 + 2);
  sub_2E50(&qword_FA0F8);
  sub_BABD0();
  v41 = sub_BA770();
  v95 = a1;
  v96 = v42;
  v43 = v41;
  v45 = v44;
  v47 = v46;

  sub_C004(v36, v38, v40 & 1);

  v114 = *(a1 + 3);
  v97 = sub_2E50(&qword_F9710);
  sub_BABD0();
  v48 = sub_BA790();
  v50 = v49;
  LOBYTE(v38) = v51;
  v53 = v52;

  sub_C004(v43, v45, v47 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v38) = v38 & 1;
  v121 = v38;
  v119 = 0;
  *&v114 = v48;
  *(&v114 + 1) = v50;
  LOBYTE(v115) = v38;
  *(&v115 + 1) = v120[0];
  DWORD1(v115) = *(v120 + 3);
  *(&v115 + 1) = v53;
  *&v116 = 0x3FE999999999999ALL;
  *(&v116 + 1) = KeyPath;
  *&v117 = 1;
  BYTE8(v117) = 0;
  sub_2E50(&qword_FBF08);
  sub_B2194();
  sub_BA880();
  v55 = v50;
  v56 = v95;
  sub_C004(v48, v55, v38);

  sub_BAB60();
  v58 = v98;
  v57 = v99;
  v59 = v100;
  (*(v99 + 104))(v98, enum case for Image.ResizingMode.stretch(_:), v100);
  v60 = sub_BABA0();

  (*(v57 + 8))(v58, v59);
  v114 = *(v56 + 4);
  sub_BABD0();
  v61 = v111;
  v62 = swift_getKeyPath();
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v63 = static AXLTSettingsManager.shared;
  v64 = sub_64C40();
  [v64 lineHeight];
  v66 = v65;

  v67 = v56[14];
  LOBYTE(v111) = 1;
  v68 = sub_64C40();
  [v68 lineHeight];

  sub_BADE0();
  sub_B9CF0();
  v69 = swift_getKeyPath();
  v70 = OBJC_IVAR___AXLTSettingsManager__boldText;
  v71 = *(v63 + OBJC_IVAR___AXLTSettingsManager__boldText);
  if (v71 != 2)
  {
    if ((v71 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v73 = &enum case for LegibilityWeight.bold(_:);
    goto LABEL_15;
  }

  v72 = _AXSLiveCaptionsBoldTextEnabled();
  if (v72 == -1)
  {
    v92 = _AXSEnhanceTextLegibilityEnabled();
    *(v63 + v70) = v92 != 0;
    if (!v92)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  *(v63 + v70) = v72 == 1;
  if (v72 == 1)
  {
    goto LABEL_14;
  }

LABEL_12:
  v73 = &enum case for LegibilityWeight.regular(_:);
LABEL_15:
  v74 = *v73;
  v75 = sub_B9F20();
  v76 = *(v75 - 8);
  v77 = v103;
  (*(v76 + 104))(v103, v74, v75);
  (*(v76 + 56))(v77, 0, 1, v75);
  v78 = v104;
  v79 = &v104[*(v105 + 36)];
  v80 = sub_2E50(&qword_F9718);
  sub_66B8(v77, v79 + *(v80 + 28), &qword_F9700);
  *v79 = v69;
  *(v78 + 48) = v66 * v67;
  v81 = v115;
  *(v78 + 88) = v116;
  v82 = v114;
  *(v78 + 72) = v81;
  *v78 = v60;
  *(v78 + 8) = 0;
  *(v78 + 16) = 1;
  *(v78 + 24) = v62;
  *(v78 + 32) = v61;
  *(v78 + 40) = 0;
  *(v78 + 56) = v82;
  sub_B22D8();
  v83 = v106;
  sub_BA9A0();
  sub_C5E8(v78, &qword_FBEF0);
  v85 = v101;
  v84 = v102;
  sub_57A0(v101, v102, &qword_FA968);
  v86 = v110;
  v87 = v107;
  sub_57A0(v110, v107, &qword_FBF00);
  v88 = v108;
  sub_57A0(v83, v108, &qword_FBEF8);
  v89 = v109;
  sub_57A0(v84, v109, &qword_FA968);
  v90 = sub_2E50(&qword_FBF68);
  sub_57A0(v87, v89 + *(v90 + 48), &qword_FBF00);
  sub_57A0(v88, v89 + *(v90 + 64), &qword_FBEF8);
  sub_C5E8(v83, &qword_FBEF8);
  sub_C5E8(v86, &qword_FBF00);
  sub_C5E8(v85, &qword_FA968);
  sub_C5E8(v88, &qword_FBEF8);
  sub_C5E8(v87, &qword_FBF00);
  return sub_C5E8(v84, &qword_FA968);
}

uint64_t sub_AFC2C()
{
  sub_2E50(&qword_FBEE0);
  sub_BABD0();
  if (!v19)
  {
    goto LABEL_18;
  }

  v0 = sub_B9700();
  v2 = v1;
  v3 = sub_B9710();
  v5 = v4;
  if (v0 == sub_BAFD0() && v2 == v6)
  {

    goto LABEL_17;
  }

  v8 = sub_BB700();

  if ((v8 & 1) == 0)
  {
    if (v3 == sub_B9800() && v5 == v9)
    {
    }

    else
    {
      v10 = sub_BB700();

      if (v10)
      {
        goto LABEL_8;
      }

      if (v0 != sub_B97B0() || v2 != v11)
      {
        v14 = sub_BB700();

        if (v14)
        {
          goto LABEL_8;
        }

        if (v0 != sub_BAFD0() || v2 != v15)
        {
          v16 = sub_BB700();

          if (v16)
          {
            goto LABEL_8;
          }

          if (v0 != sub_BAFD0() || v2 != v17)
          {
            v18 = sub_BB700();

            v12 = v18 ^ 1;
            return v12 & 1;
          }

          goto LABEL_7;
        }
      }
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_7:

LABEL_8:

LABEL_18:
  v12 = 0;
  return v12 & 1;
}

uint64_t sub_AFE90(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_B9B10();

  if (v18 >> 62)
  {
    v5 = sub_BB650();
    if (v5)
    {
LABEL_3:
      v6 = __OFSUB__(v5, 1);
      v7 = v5 - 1;
      if (v6)
      {
        __break(1u);
      }

      else if ((v18 & 0xC000000000000001) == 0)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v7 < *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
        {
          v8 = *(v18 + 8 * v7 + 32);
LABEL_8:
          KeyPath = v8;

          goto LABEL_11;
        }

        __break(1u);
LABEL_21:
        swift_once();
        goto LABEL_15;
      }

      v8 = sub_BB590();
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }
  }

  KeyPath = 0;
LABEL_11:
  v18 = *(a1 + 96);
  v19 = KeyPath;
  sub_2E50(&qword_FBEE0);
  sub_BABE0();
  v18 = *(a1 + 96);
  result = sub_BABD0();
  if (!KeyPath)
  {
    return result;
  }

  sub_B0110(0, 0, 0, 0);
  if (v10)
  {
  }

  v1 = sub_B9700();
  v4 = v11;
  if (qword_F8320 != -1)
  {
    goto LABEL_21;
  }

LABEL_15:
  v12 = AXLTSettingsManager.buttonScaledHeight.getter();
  v13 = iconForBundleId(_:iconSize:)(v12, v1, v4);

  v14 = *(a1 + 80);
  v19 = *(a1 + 88);
  *&v18 = v14;
  *(&v18 + 1) = v19;
  v17[1] = v13;
  v15 = v14;
  sub_57A0(&v19, v17, &qword_FBEE8);
  v16 = v13;
  sub_2E50(&qword_FA950);
  sub_BABE0();

  return sub_C5E8(&v19, &qword_FBEE8);
}

uint64_t sub_B0110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2E50(&qword_FBEE0);
  sub_BABD0();
  if (!v27)
  {
    return 0;
  }

  v8 = sub_B9700();
  v10 = v9;
  if (a2)
  {

    v10 = a2;
  }

  else
  {
    a1 = v8;
  }

  v11 = sub_B9710();
  v13 = v12;
  if (a4)
  {

    v13 = a4;
  }

  else
  {
    a3 = v11;
  }

  if (a1 == sub_BAFD0() && v10 == v14)
  {
    goto LABEL_15;
  }

  v16 = sub_BB700();

  if (v16)
  {
LABEL_16:

    return 0x6C6C69662E63696DLL;
  }

  if (a3 == sub_B9800() && v13 == v17)
  {
LABEL_15:

    goto LABEL_16;
  }

  v19 = sub_BB700();

  if (v19)
  {
    goto LABEL_16;
  }

  if (a1 == sub_B97B0() && v10 == v20)
  {

    goto LABEL_22;
  }

  v21 = sub_BB700();

  if ((v21 & 1) == 0)
  {
    if (a1 == sub_BAFD0() && v10 == v23)
    {

LABEL_30:

      return 0xD00000000000001ALL;
    }

    v24 = sub_BB700();

    if (v24)
    {
      goto LABEL_30;
    }

    if (a1 == sub_BAFD0() && v10 == v25)
    {

LABEL_35:

      return 0x6F63706F7470616CLL;
    }

    v26 = sub_BB700();

    if (v26)
    {
      goto LABEL_35;
    }

    return 0;
  }

LABEL_22:

  IsPad = AXDeviceIsPad();

  if (IsPad)
  {
    return 1684107369;
  }

  else
  {
    return 0x656E6F687069;
  }
}

uint64_t sub_B046C(uint64_t a1, uint64_t a2)
{
  result = sub_B8FE0();
  if (result)
  {
    v4 = result;
    v7 = sub_B9840();
    sub_BB550();
    if (*(v4 + 16) && (v5 = sub_7D058(v8), (v6 & 1) != 0))
    {
      sub_3ADF4(*(v4 + 56) + 32 * v5, v9);
      sub_3ADA0(v8);

      result = swift_dynamicCast();
      if (result)
      {
        v8[0] = *(a2 + 32);
        v9[0] = v7;
        sub_2E50(&qword_FA0F8);
        return sub_BABE0();
      }
    }

    else
    {

      return sub_3ADA0(v8);
    }
  }

  return result;
}

uint64_t sub_B056C()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  sub_64C40();
  sub_BA720();
  sub_2E50(&qword_F9710);
  sub_BABE0();
  v0 = AXLTSettingsManager.contentCategory.getter();
  v1 = qword_F8378;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = sub_B9E30();
  sub_3CB8(v3, qword_100DA8);
  v4 = sub_1F22C();
  v5 = sub_BB420();

  if (v5)
  {
    v6 = sub_1F22C();

    v2 = v6;
  }

  if (qword_F8318 != -1)
  {
    swift_once();
  }

  v7 = buttonFontStyle;
  sub_64E70(buttonFontStyle, UIFontWeightSemibold);

  sub_BA720();
  sub_BABE0();
  v8 = AXLTSettingsManager.contentCategory.getter();
  v9 = sub_1F22C();
  v10 = sub_BB420();

  if (v10)
  {
    v11 = sub_1F22C();

    v8 = v11;
  }

  v12 = sub_64E70(v7, UIFontWeightBold);

  [v12 lineHeight];
  sub_2E50(&qword_FA710);
  sub_BABE0();
  v13 = AXLTSettingsManager.contentCategory.getter();
  sub_BB410();

  sub_2E50(&qword_F96C8);
  return sub_BABE0();
}

uint64_t sub_B0850(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_B9B10();

  if (v24 >> 62)
  {
    v5 = sub_BB650();
    if (v5)
    {
LABEL_3:
      v6 = __OFSUB__(v5, 1);
      v7 = v5 - 1;
      if (v6)
      {
        __break(1u);
      }

      else if ((v24 & 0xC000000000000001) == 0)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v7 < *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)))
        {
          v8 = *(v24 + 8 * v7 + 32);
LABEL_8:
          KeyPath = v8;

          goto LABEL_11;
        }

        __break(1u);
LABEL_21:
        swift_once();
        goto LABEL_15;
      }

      v8 = sub_BB590();
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }
  }

  KeyPath = 0;
LABEL_11:
  v24 = *(a1 + 96);
  v25 = KeyPath;
  sub_2E50(&qword_FBEE0);
  sub_BABE0();
  v24 = *(a1 + 96);
  result = sub_BABD0();
  if (!KeyPath)
  {
    return result;
  }

  v10 = sub_B9700();
  v12 = v11;
  v13 = sub_B9710();
  sub_B0110(v10, v12, v13, v14);
  v16 = v15;

  if (v16)
  {
  }

  v1 = sub_B9700();
  v4 = v17;
  if (qword_F8320 != -1)
  {
    goto LABEL_21;
  }

LABEL_15:
  v18 = AXLTSettingsManager.buttonScaledHeight.getter();
  v19 = iconForBundleId(_:iconSize:)(v18, v1, v4);

  v20 = *(a1 + 80);
  v25 = *(a1 + 88);
  *&v24 = v20;
  *(&v24 + 1) = v25;
  v23[1] = v19;
  v21 = v20;
  sub_57A0(&v25, v23, &qword_FBEE8);
  v22 = v19;
  sub_2E50(&qword_FA950);
  sub_BABE0();

  return sub_C5E8(&v25, &qword_FBEE8);
}

uint64_t sub_B0B4C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v22 = a3;
  v7 = sub_2E50(&qword_FBDC0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = sub_BADE0();
  v12 = v11;
  v13 = a1 & 1;
  sub_B0E34(a1 & 1, a2, &v35, a4);
  v30 = v41;
  v31 = v42;
  v26 = v37;
  v27 = v38;
  v28 = v39;
  v29 = v40;
  v24 = v35;
  v25 = v36;
  v33[6] = v41;
  v33[7] = v42;
  v33[2] = v37;
  v33[3] = v38;
  v33[4] = v39;
  v33[5] = v40;
  v32 = v43;
  v34 = v43;
  v33[0] = v35;
  v33[1] = v36;
  sub_57A0(&v24, &v23, &qword_FBDC8);
  sub_C5E8(v33, &qword_FBDC8);
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v35 = v24;
  v36 = v25;
  v14 = [objc_opt_self() defaultCenter];
  if (qword_F82D0 != -1)
  {
    swift_once();
  }

  sub_BB400();

  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = a4;
  *(v15 + 32) = a2;
  *v9 = v10;
  *(v9 + 1) = v12;
  v16 = v42;
  *(v9 + 7) = v41;
  *(v9 + 8) = v16;
  *(v9 + 18) = v43;
  v17 = v38;
  *(v9 + 3) = v37;
  *(v9 + 4) = v17;
  v18 = v40;
  *(v9 + 5) = v39;
  *(v9 + 6) = v18;
  v19 = v36;
  v20 = &v9[*(v7 + 56)];
  *(v9 + 1) = v35;
  *(v9 + 2) = v19;
  *v20 = sub_5EF44;
  v20[1] = v15;
  sub_D150(&qword_FBDD0, &qword_FBDC0);

  sub_BA880();
  return sub_C5E8(v9, &qword_FBDC0);
}

uint64_t sub_B0E34@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v28 = a2;
  v26 = sub_BAB70();
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  if (a1)
  {
    v10 = sub_BAAB0();
  }

  else
  {
    v10 = sub_BAAA0();
  }

  v27 = v10;
  v42 = a4;
  v11 = v28;
  v43 = v28;
  sub_2E50(&qword_FA710);
  sub_BABD0();
  v42 = a4;
  v43 = v11;
  sub_BABD0();
  sub_BADE0();
  sub_B9CF0();
  *&v50[3] = *&v50[27];
  *&v50[11] = *&v50[35];
  *&v50[19] = *&v50[43];
  if ((v25 & 1) != 0 && !AXDeviceIsRealityDevice())
  {
    AXDeviceIsPad();
  }

  sub_BAB60();
  v12 = v26;
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v26);
  v13 = sub_BABA0();

  (*(v7 + 8))(v9, v12);
  v42 = a4;
  v14 = v28;
  v43 = v28;
  sub_BABD0();
  v42 = a4;
  v43 = v14;
  sub_BABD0();
  sub_BADE0();
  sub_B9CF0();
  v49 = 1;
  *&v48[6] = *&v50[51];
  *&v48[22] = *&v50[59];
  *&v48[38] = v51;
  v15 = v27;
  *&v39[0] = v27;
  WORD4(v39[0]) = 256;
  *(v39 + 10) = *v50;
  *(&v39[1] + 10) = *&v50[8];
  *(&v39[2] + 10) = *&v50[16];
  *(&v39[3] + 1) = *&v50[23];
  v40[0] = v13;
  *&v33[15] = v39[0];
  *&v33[23] = v39[1];
  *&v33[31] = v39[2];
  *&v33[39] = v39[3];
  v40[1] = 0;
  *v41 = 1;
  *&v41[48] = *(&v51 + 1);
  *&v41[34] = *&v48[32];
  *&v41[18] = *&v48[16];
  *&v41[2] = *v48;
  v38 = *&v41[48];
  v36 = *&v41[16];
  v37 = *&v41[32];
  v34 = v13;
  v35 = *v41;
  v16 = v39[0];
  v17 = v39[1];
  v18 = v39[3];
  *(a3 + 32) = v39[2];
  *(a3 + 48) = v18;
  *a3 = v16;
  *(a3 + 16) = v17;
  v19 = v34;
  v20 = v35;
  v21 = v36;
  v22 = v37;
  *(a3 + 128) = v38;
  *(a3 + 96) = v21;
  *(a3 + 112) = v22;
  *(a3 + 64) = v19;
  *(a3 + 80) = v20;
  v42 = *&v13;
  v43 = 0;
  v44 = 1;
  v45 = *v48;
  v46 = *&v48[16];
  *v47 = *&v48[32];
  *&v47[14] = *&v48[46];
  sub_57A0(v39, &v29, &qword_FBDD8);
  sub_57A0(v40, &v29, &qword_F9748);
  sub_C5E8(&v42, &qword_F9748);
  v29 = v15;
  v30 = 256;
  v31 = *v50;
  v32 = *&v50[8];
  *v33 = *&v50[16];
  *&v33[7] = *&v50[23];
  return sub_C5E8(&v29, &qword_FBDD8);
}

uint64_t sub_B1298()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B1304(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_B1360(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_B13C4()
{
  result = qword_FBDE0;
  if (!qword_FBDE0)
  {
    sub_5520(&qword_FBDE8);
    sub_D150(&qword_FBDD0, &qword_FBDC0);
    sub_B2144(&qword_F8940, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBDE0);
  }

  return result;
}

unint64_t sub_B14B0()
{
  result = qword_FBDF0;
  if (!qword_FBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBDF0);
  }

  return result;
}

uint64_t sub_B15F4(uint64_t a1)
{
  v2 = sub_B9F90();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_BA050();
}

unint64_t sub_B16E0()
{
  result = qword_FBE40;
  if (!qword_FBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBE40);
  }

  return result;
}

unint64_t sub_B1734()
{
  result = qword_FBE48;
  if (!qword_FBE48)
  {
    sub_5520(&qword_FBE20);
    sub_D150(&qword_F96B0, &qword_F96A0);
    sub_B2144(&qword_F8940, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBE48);
  }

  return result;
}

double sub_B181C@<D0>(uint64_t a1@<X8>)
{
  if (qword_F82A0 != -1)
  {
    swift_once();
  }

  v2 = static AXLTCaptionsProvider.shared;
  type metadata accessor for AXLTCaptionsProvider();
  sub_B2144(&unk_FB750, type metadata accessor for AXLTCaptionsProvider);
  v3 = v2;
  v4 = sub_B9DC0();
  v16 = v5;
  v17 = v4;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v6 = AXLTSettingsManager.contentCategory.getter();
  v7 = sub_BB410();

  LOBYTE(v18) = v7 & 1;
  sub_BABC0();
  swift_beginAccess();

  sub_BABC0();
  sub_64C40();
  sub_BA720();
  sub_BABC0();
  v8 = AXLTSettingsManager.contentCategory.getter();
  v9 = qword_F8378;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_B9E30();
  sub_3CB8(v11, qword_100DA8);
  v12 = sub_1F22C();
  v13 = sub_BB420();

  if (v13)
  {
    v14 = sub_1F22C();

    v10 = v14;
  }

  if (qword_F8318 != -1)
  {
    swift_once();
  }

  sub_64E70(buttonFontStyle, UIFontWeightSemibold);

  sub_BA720();
  sub_BABC0();
  [objc_allocWithZone(UIImage) init];
  sub_35DD4(0, &qword_FA868);
  sub_BABC0();
  sub_2E50(&qword_FBEA8);
  sub_BABC0();
  AXLTSettingsManager.buttonScaledHeight.getter();
  sub_BABC0();
  result = v18;
  *a1 = v17;
  *(a1 + 8) = v16;
  *(a1 + 16) = v20;
  *(a1 + 24) = v21;
  *(a1 + 32) = v18;
  *(a1 + 40) = v19;
  *(a1 + 48) = v18;
  *(a1 + 56) = v19;
  *(a1 + 64) = v18;
  *(a1 + 72) = v19;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19;
  *(a1 + 96) = v18;
  *(a1 + 104) = v19;
  *(a1 + 112) = xmmword_C3350;
  *(a1 + 128) = v18;
  *(a1 + 136) = v19;
  return result;
}

uint64_t sub_B1C58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B1CFC()
{

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_B1DAC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5520(a2);
    a4();
    sub_B1E84();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_B1E30()
{
  result = qword_FBE80;
  if (!qword_FBE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBE80);
  }

  return result;
}

unint64_t sub_B1E84()
{
  result = qword_FBE88;
  if (!qword_FBE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBE88);
  }

  return result;
}

uint64_t sub_B1F70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_B1FB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B20A4()
{

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_B2144(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_B2194()
{
  result = qword_FBF10;
  if (!qword_FBF10)
  {
    sub_5520(&qword_FBF08);
    sub_B224C();
    sub_D150(&qword_FA110, &qword_FA118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBF10);
  }

  return result;
}

unint64_t sub_B224C()
{
  result = qword_FBF18;
  if (!qword_FBF18)
  {
    sub_5520(&qword_FBF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBF18);
  }

  return result;
}

unint64_t sub_B22D8()
{
  result = qword_FBF28;
  if (!qword_FBF28)
  {
    sub_5520(&qword_FBEF0);
    sub_B23BC(&qword_FBF30, &qword_FBF38, &unk_C39F0, sub_B2440);
    sub_D150(&qword_FBF60, &qword_F9718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBF28);
  }

  return result;
}

uint64_t sub_B23BC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_5520(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_B2440()
{
  result = qword_FBF40;
  if (!qword_FBF40)
  {
    sub_5520(&qword_FBF48);
    sub_B24CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBF40);
  }

  return result;
}

unint64_t sub_B24CC()
{
  result = qword_FBF50;
  if (!qword_FBF50)
  {
    sub_5520(&qword_FBF58);
    sub_3B124();
    sub_D150(&qword_F87F8, &qword_F8800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FBF50);
  }

  return result;
}

uint64_t sub_B2584()
{
  sub_5520(&qword_FBEB0);
  sub_5520(&qword_FA368);
  sub_D150(&qword_FBED8, &qword_FBEB0);
  sub_A1C98();
  return swift_getOpaqueTypeConformance2();
}

LiveSpeechUIService::LiveSpeechCaptionsWindowState_optional __swiftcall LiveSpeechCaptionsWindowState.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t sub_B26BC()
{
  sub_2E50(&qword_FC018);
  sub_BAC80();
  return v1;
}

unint64_t sub_B2774()
{
  result = qword_FBF70[0];
  if (!qword_FBF70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_FBF70);
  }

  return result;
}

void sub_B2800()
{
  sub_B2F54();
  if (v0 <= 0x3F)
  {
    sub_B2FA4();
    if (v1 <= 0x3F)
    {
      sub_B3008(319, &qword_F9B38, type metadata accessor for CGSize, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_B3008(319, &unk_F8B98, type metadata accessor for CGSize, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_B3008(319, &qword_F9B48, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_B2998(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_B9E70() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((v12 + ((((((*(v6 + 64) + ((v11 + 96) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      v19 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v7 & 0x80000000) != 0)
      {
        v21 = *(v6 + 48);

        return v21((((v19 + 71) & 0xFFFFFFFFFFFFFFF8) + v11 + 32) & ~v11, v7, v5);
      }

      else
      {
        v20 = *(v19 + 16);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_B2C24(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_B9E70() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((v14 + ((((((*(v8 + 64) + ((v13 + 96) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_48:
              if (v16 == 2)
              {
                *(a1 + v15) = v18;
              }

              else
              {
                *(a1 + v15) = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v21;
        *(a1 + 2) = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v16)
    {
      *(a1 + v15) = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v15) = 0;
  }

  else if (v16)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  v22 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v23 = *(v24 + 56);

    v23((((v22 + 71) & 0xFFFFFFFFFFFFFFF8) + v13 + 32) & ~v13, a2, v9, v7);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v22 + 24) = 0;
    *(v22 + 8) = a2 & 0x7FFFFFFF;
    *(v22 + 16) = 0;
  }

  else
  {
    *(v22 + 16) = (a2 - 1);
  }
}

void sub_B2F54()
{
  if (!qword_FBFF8)
  {
    v0 = sub_BACB0();
    if (!v1)
    {
      atomic_store(v0, &qword_FBFF8);
    }
  }
}

void sub_B2FA4()
{
  if (!qword_FC000)
  {
    sub_5520(&qword_F9110);
    v0 = sub_BB4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_FC000);
    }
  }
}

void sub_B3008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_B306C()
{
  sub_2E50(&qword_F9110);
  sub_BAC80();
  return v1;
}

uint64_t sub_B3120@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(a1);
  (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  (*(v4 + 32))(v8 + v7, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v11 = sub_5520(&qword_FC008);
  v12 = sub_B513C();
  v19 = v9;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  swift_getOpaqueTypeMetadata2();
  v19 = v9;
  v20 = v11;
  v21 = v10;
  v22 = v12;
  swift_getOpaqueTypeConformance2();
  v17 = sub_B9D90();
  v18 = v13;
  v14 = sub_B9DA0();
  swift_getWitnessTable();
  v15 = *(*(v14 - 8) + 16);
  v15(&v19, &v17, v14);

  v17 = v19;
  v18 = v20;
  v15(a2, &v17, v14);
}

uint64_t sub_B3368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v102 = a2;
  v81 = a1;
  v99 = a5;
  v8 = sub_2E50(&qword_FC008);
  __chkstk_darwin(v8);
  v95 = &v70 - v9;
  v91 = *(a3 - 8);
  __chkstk_darwin(v10);
  v90 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_B513C();
  v107 = a3;
  v108 = v8;
  v104 = a3;
  v98 = v8;
  v106 = a4;
  v109 = a4;
  v110 = v12;
  v94 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v96 = *(OpaqueTypeMetadata2 - 8);
  v97 = OpaqueTypeMetadata2;
  __chkstk_darwin(OpaqueTypeMetadata2);
  v92 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v93 = &v70 - v16;
  v17 = type metadata accessor for LiveSpeechCaptionsDraggableView();
  v18 = *(v17 - 8);
  v103 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v70 - v19;
  v21 = sub_B9D40();
  v22 = *(v21 - 8);
  v101 = *(v22 + 64);
  __chkstk_darwin(v21);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BA480();
  __chkstk_darwin(v25);
  v83 = sub_B9C60();
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v77 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2E50(&qword_F9BB8);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v100 = &v70 - v27;
  v89 = sub_2E50(&qword_F9BC0);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v84 = &v70 - v28;
  sub_BA570();
  sub_B9C20();
  v29 = v22;
  v30 = *(v22 + 16);
  v80 = v22 + 16;
  v82 = v30;
  v71 = v21;
  v30(v24, a1, v21);
  v31 = v18;
  v105 = v18;
  v32 = *(v18 + 16);
  v74 = v18 + 16;
  v75 = v32;
  v33 = v17;
  v32(v20, v102, v17);
  v73 = *(v22 + 80);
  v34 = (v73 + 32) & ~v73;
  v35 = *(v31 + 80);
  v36 = (v101 + v35 + v34) & ~v35;
  v76 = v73 | v35;
  v37 = swift_allocObject();
  v38 = v106;
  *(v37 + 16) = v104;
  *(v37 + 24) = v38;
  v39 = *(v29 + 32);
  v78 = v29 + 32;
  v79 = v39;
  v39(v37 + v34, v24, v21);
  v40 = *(v105 + 32);
  v105 += 32;
  v72 = v40;
  v41 = v20;
  v40(v37 + v36, v20, v33);
  sub_81DA4(&qword_F9BF8, &type metadata accessor for DragGesture);
  sub_81DA4(&qword_F9C00, &type metadata accessor for DragGesture.Value);
  v42 = v83;
  v43 = v77;
  sub_BAD00();

  (*(v85 + 8))(v43, v42);
  v44 = v102;
  v75(v20, v102, v33);
  v45 = v71;
  v82(v24, v81, v71);
  v46 = (v35 + 32) & ~v35;
  v47 = (v103 + v73 + v46) & ~v73;
  v48 = swift_allocObject();
  v49 = v104;
  v50 = v106;
  *(v48 + 16) = v104;
  *(v48 + 24) = v50;
  v51 = v33;
  v72(v48 + v46, v41, v33);
  v52 = v49;
  v53 = v48 + v47;
  v54 = v91;
  v79(v53, v24, v45);
  v55 = v90;
  sub_D150(&qword_F9C08, &qword_F9BB8);
  v56 = v84;
  v57 = v86;
  v58 = v100;
  sub_BACF0();

  (*(v87 + 8))(v58, v57);
  (*(v54 + 16))(v55, v44 + *(v51 + 48), v52);
  if (sub_B26BC())
  {
    v59 = 1;
    v60 = v95;
    v61 = v89;
    v62 = v88;
  }

  else
  {
    v62 = v88;
    v60 = v95;
    v61 = v89;
    (*(v88 + 16))(v95, v56, v89);
    v59 = 0;
  }

  (*(v62 + 56))(v60, v59, 1, v61);
  sub_B9C80();
  v63 = v92;
  sub_BA940();
  sub_B5850(v60);
  (*(v54 + 8))(v55, v52);
  (*(v62 + 8))(v56, v61);
  v65 = v96;
  v64 = v97;
  v66 = *(v96 + 16);
  v67 = v93;
  v66(v93, v63, v97);
  v68 = *(v65 + 8);
  v68(v63, v64);
  v66(v99, v67, v64);
  return (v68)(v67, v64);
}

uint64_t sub_B3D88(uint64_t a1)
{
  sub_B9D10();
  v3 = v2;
  sub_B9D10();
  v5 = v4;
  sub_B9D20();
  v7 = v6;
  v8 = sub_B9D20();
  v10 = LiveSpeechStore.SpeechContext.init(text:highlightRange:)(v8, v3, v5, v7, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = type metadata accessor for LiveSpeechCaptionsDraggableView();
  return sub_B3E48(v10, v12, v14, v16, a1, v17);
}

uint64_t sub_B3E48(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  if (*(v6 + 40))
  {
    sub_2E50(&qword_F8AE0);
    sub_BABD0();
    v32.width = 0.0;
    v32.height = 0.0;
    if (CGSizeEqualToSize(v30, v32) || (sub_BABD0(), sub_B9C30(), vabdd_f64(v30.width, v12) >= 2.0) || (sub_BABD0(), result = sub_B9C30(), vabdd_f64(v30.height, v14) >= 2.0))
    {
      sub_B9C30();
      v31.width = v15;
      v31.height = v16;
      sub_BABE0();
      sub_B9C40();
      v18 = v17;
      sub_B9C30();
      v20 = v19;
      sub_B9C40();
      v22 = v21;
      result = sub_B9C30();
      v23 = *(v6 + *(a6 + 60));
      v25 = vabdd_f64(v22, v24);
      if (vabdd_f64(v18, v20) <= v23 && v25 <= v23)
      {
        sub_BABD0();
        v33.width = 0.0;
        v33.height = 0.0;
        if (CGSizeEqualToSize(v31, v33))
        {

          sub_2E50(&qword_F9110);
          sub_BAC80();
          sub_B4480(v28, v29, a1, a2, a3, a4);
          sub_BAC90();

          sub_BAC80();
          sub_BABE0();
        }

        sub_BAE20();
        sub_BAE10();

        sub_BAE00();

        __chkstk_darwin(v27);
        sub_B9D80();
      }
    }
  }

  return result;
}

void sub_B41BC(uint64_t a1)
{
  v2 = type metadata accessor for LiveSpeechCaptionsDraggableView();
  sub_2E50(&qword_F8AE0);
  sub_BABE0();
  sub_BABE0();
  sub_B9D20();
  sub_B4298(a1, v2);
}

void sub_B4298(uint64_t a1, uint64_t a2)
{
  v4 = sub_B9E70();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  sub_B9C40();
  v12 = v11;
  sub_B9C30();
  v14 = v13;
  sub_B9C40();
  sub_B9C30();
  if (*(v2 + *(a2 + 60)) < vabdd_f64(v12, v14))
  {
    sub_B5C30(&qword_F8AF0, &type metadata accessor for LayoutDirection, v10);
    (*(v5 + 104))(v7, enum case for LayoutDirection.rightToLeft(_:), v4);
    sub_B9E60();
    v15 = *(v5 + 8);
    v15(v7, v4);
    v15(v10, v4);
    sub_B4D0C();
  }
}

void sub_B4480(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v45 = a2;
  *&v9 = COERCE_DOUBLE(sub_B9A10());
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v13 = static LiveSpeechCaptionsViewsCoordinator.shared;
  v14 = *v6;
  v15 = &OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame;
  if (!*v6)
  {
    v15 = &OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveSpeechFrame;
  }

  v16 = static LiveSpeechCaptionsViewsCoordinator.shared + *v15;
  v18 = *(v16 + 16);
  v17 = *(v16 + 24);
  sub_B95F0();
  v19 = sub_B9A00();
  v20 = sub_BB2F0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = *&v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v40 = *&v9;
    v48 = v23;
    *v22 = 136315394;
    v46 = a1;
    v47 = v45;
    type metadata accessor for CGSize(0);
    v24 = sub_BAFF0();
    v26 = sub_7A1D8(v24, v25, &v48);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v46 = v18;
    v47 = v17;
    v27 = sub_BAFF0();
    v29 = sub_7A1D8(v27, v28, &v48);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_0, v19, v20, "Calculate safeOffset offset: %s size: %s", v22, 0x16u);
    swift_arrayDestroy();

    *&v13 = v41;

    (*(v10 + 8))(v12, COERCE_DOUBLE(*&v40));
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v40 = v17;
  v41 = a6;
  if (qword_F8250 != -1)
  {
    swift_once();
  }

  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v33 = *&qword_100C08;
  if ((v14 & AXDeviceIsPad()) == 1 && *(v13 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) != 1)
  {
    v33 = 0.0;
  }

  HasJindo = AXDeviceHasJindo();
  v49.origin.x = CGRectZero.origin.x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  v35 = CGRectGetHeight(v49);
  v36 = v45;
  if (y + v35 + -37.3333333 > v45 && HasJindo != 0)
  {
    v50.origin.x = CGRectZero.origin.x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v36 = y + CGRectGetHeight(v50) + -37.3333333;
  }

  v38 = v44 - v18 + v33;
  if (v38 >= a1)
  {
    v38 = a1;
  }

  if (v14)
  {
    sub_3C824(v38, v36, v18, v40, v42, v43, v44);
  }

  else
  {
    sub_3C588(v38, v36, v18, v40, v42, v43, v44);
  }
}

uint64_t sub_B4884(double a1, double a2, double a3, double a4)
{
  v8 = sub_B9E70();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  sub_B9C30();
  v16 = v15;
  v18 = v17;
  type metadata accessor for LiveSpeechCaptionsDraggableView();
  sub_B5C30(&qword_F8AF0, &type metadata accessor for LayoutDirection, v14);
  (*(v9 + 104))(v11, enum case for LayoutDirection.rightToLeft(_:), v8);
  v19 = sub_B9E60();
  v20 = *(v9 + 8);
  v20(v11, v8);
  v20(v14, v8);
  v21 = -v16;
  if ((v19 & 1) == 0)
  {
    v21 = v16;
  }

  return sub_B4A80(v21, v18, a1, a2, a3, a4);
}

uint64_t sub_B4A80(double a1, double a2, double a3, double a4, double a5, double a6)
{
  if (*(v6 + 40))
  {
    swift_retain_n();
    swift_retain_n();
    sub_2E50(&qword_F8AE0);
    sub_BABD0();
    sub_2E50(&qword_F9110);
    sub_BAC80();
    sub_BAC90();

    sub_BABD0();
    sub_BAC80();
    sub_BAC90();

    sub_BAC80();
    sub_B4480(v12, v13, a3, a4, a5, a6);
    sub_BAC90();

    sub_BAC80();

    sub_BAC80();
    sub_BAC90();
  }

  return result;
}

void sub_B4D0C()
{
  sub_BAE30();
  sub_B9D80();

  if (*v0)
  {
    if (qword_F8258 != -1)
    {
      swift_once();
    }

    LiveSpeechCaptionsViewsCoordinator.updateLiveCaptionsWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_pip);
  }

  else
  {
    if (qword_F8258 != -1)
    {
      swift_once();
    }

    LiveSpeechCaptionsViewsCoordinator.updateLiveSpeechWindowState(_:)(LiveSpeechUIService_LiveSpeechCaptionsWindowState_pip);
  }
}

uint64_t sub_B4E10(double a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_B306C();
  sub_B306C();
  sub_363B8(a3, v5, v6, a1);
  sub_B30C4();
  return sub_B2714();
}

double sub_B4E9C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_B4EEC()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LiveSpeechCaptionsDraggableView();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v0 + v4;

  if (*(v0 + v4 + 40))
  {
  }

  (*(*(v1 - 8) + 8))(v6 + *(v2 + 48), v1);

  v7 = *(v2 + 64);
  sub_2E50(&qword_F8AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_B9E70();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_B50A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for LiveSpeechCaptionsDraggableView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_B3368(a1, v8, v5, v6, a2);
}

unint64_t sub_B513C()
{
  result = qword_FC010;
  if (!qword_FC010)
  {
    sub_5520(&qword_FC008);
    sub_D150(&qword_F9C40, &qword_F9BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FC010);
  }

  return result;
}

uint64_t sub_B51EC()
{
  v1 = *(v0 + 16);
  v2 = sub_B9D40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = v5 + *(v3 + 64);
  v7 = type metadata accessor for LiveSpeechCaptionsDraggableView();
  v8 = *(*(v7 - 8) + 80);
  v9 = (v6 + v8) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  (*(v3 + 8))(v0 + v5, v2);
  v11 = v0 + v9;

  if (*(v0 + v9 + 40))
  {
  }

  (*(*(v1 - 8) + 8))(v11 + *(v7 + 48), v1);

  v12 = *(v7 + 64);
  sub_2E50(&qword_F8AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_B9E70();
    (*(*(v13 - 8) + 8))(v11 + v12, v13);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v9 + v10, v4 | v8 | 7);
}

uint64_t sub_B5428(uint64_t a1)
{
  sub_B9D40();
  type metadata accessor for LiveSpeechCaptionsDraggableView();

  return sub_B3D88(a1);
}

uint64_t sub_B5518()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LiveSpeechCaptionsDraggableView();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v14 = *(*(v2 - 8) + 64);
  v5 = sub_B9D40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v4;

  if (*(v0 + v4 + 40))
  {
  }

  (*(*(v1 - 8) + 8))(v9 + *(v2 + 48), v1);

  v10 = *(v2 + 64);
  sub_2E50(&qword_F8AF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_B9E70();
    (*(*(v11 - 8) + 8))(v9 + v10, v11);
  }

  else
  {
  }

  v12 = (v4 + v14 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v3 | v7 | 7);
}

void sub_B5760(uint64_t a1)
{
  type metadata accessor for LiveSpeechCaptionsDraggableView();
  sub_B9D40();

  sub_B41BC(a1);
}

uint64_t sub_B5850(uint64_t a1)
{
  v2 = sub_2E50(&qword_FC008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B58B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_BAAE0();
  result = sub_B9D20();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_B58F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_BA480();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BAAE0();
  sub_BA570();
  sub_B9D30();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  return result;
}

uint64_t sub_B5A10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_BA180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2E50(&qword_FA6E0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_57A0(v2, &v13 - v9, &qword_FA6E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_5D4A0(v10, a1);
  }

  sub_BB310();
  v12 = sub_BA610();
  sub_B99F0();

  sub_BA170();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_B5C30@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_BA180();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2E50(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_57A0(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_BB310();
    v17 = sub_BA610();
    sub_B99F0();

    sub_BA170();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_B5E80()
{
  sub_5520(&qword_FC008);
  sub_B513C();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_B9DA0();
  return swift_getWitnessTable();
}

uint64_t *LiveSpeechCaptionsCallManager.shared.unsafeMutableAddressor()
{
  if (qword_F8360 != -1)
  {
    swift_once();
  }

  return &static LiveSpeechCaptionsCallManager.shared;
}

BOOL sub_B6020()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1 > 0;
}

void LiveSpeechCaptionsCallManager.unsubscribeForCallsMonitoring(_:)(uint64_t a1)
{
  swift_getObjectType();

  sub_B841C(a1, v1);
}

id LiveSpeechCaptionsCallManager.subscribeForCallsMonitoring(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_7E01C(a1, v1);
}

Swift::Int LiveSpeechCaptionsCallManager.Event.hashValue.getter(char a1)
{
  sub_BB790();
  sub_BB7A0(a1 & 1);
  return sub_BB7D0();
}

id sub_B6194()
{
  result = [objc_allocWithZone(type metadata accessor for LiveSpeechCaptionsCallManager()) init];
  static LiveSpeechCaptionsCallManager.shared = result;
  return result;
}

id static LiveSpeechCaptionsCallManager.shared.getter()
{
  if (qword_F8360 != -1)
  {
    swift_once();
  }

  v1 = static LiveSpeechCaptionsCallManager.shared;

  return v1;
}

uint64_t sub_B62B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1;
}

id LiveSpeechCaptionsCallManager.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_2E50(&qword_FAFE8);
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = v23 - v3;
  v4 = sub_2E50(&qword_FC160);
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v26 = v23 - v5;
  v25 = sub_BB380();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BB360();
  __chkstk_darwin(v9);
  v10 = sub_BAEF0();
  __chkstk_darwin(v10 - 8);
  *&v0[OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_callCenter] = 0;
  v24 = OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_callQueue;
  v11 = sub_35DD4(0, &qword_F83E0);
  v23[0] = "k";
  v23[1] = v11;
  sub_BAEE0();
  v34 = _swiftEmptyArrayStorage;
  sub_B87B4(&qword_F83E8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_2E50(&qword_F83F0);
  sub_B87FC(&qword_F83F8, &qword_F83F0);
  sub_BB510();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v25);
  *&v0[v24] = sub_BB3C0();
  v12 = OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager__currentCallEvent;
  LOBYTE(v34) = 1;
  v13 = v26;
  sub_B9AD0();
  (*(v27 + 32))(&v1[v12], v13, v28);
  v14 = OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers;
  v15 = objc_opt_self();
  *&v1[v14] = [v15 weakObjectsHashTable];
  v16 = OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_newObservers;
  *&v1[v16] = [v15 weakObjectsHashTable];
  v17 = OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager__currentCallCount;
  v34 = 0;
  v18 = v29;
  sub_B9AD0();
  v19 = v31;
  v20 = *(v30 + 32);
  v20(&v1[v17], v18, v31);
  v21 = OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager__currentVideoCallCount;
  v34 = 0;
  sub_B9AD0();
  v20(&v1[v21], v18, v19);
  v33.receiver = v1;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, "init");
}

uint64_t sub_B67FC()
{
  v1 = v0;
  v2 = sub_B9A10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_B95F0();
  v6 = sub_B9A00();
  v7 = sub_BB320();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Will begin monitoring for calls", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [objc_allocWithZone(TUCallCenter) initWithQueue:*(v1 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_callQueue)];
  v10 = *(v1 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_callCenter);
  *(v1 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_callCenter) = v9;

  __chkstk_darwin(v11);
  *&v15[-16] = v1;
  v13 = v12;
  sub_2E50(&qword_FC1E8);
  sub_BB3A0();

  v15[12] = 1;
  return sub_B6A10(0x100000000);
}

uint64_t sub_B6A10(uint64_t a1)
{
  v3 = sub_BAEC0();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BAEF0();
  v6 = *(v16 - 8);
  __chkstk_darwin(v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v1[OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_callQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  *(v10 + 28) = BYTE4(a1) & 1;
  aBlock[4] = sub_B8778;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257F4;
  aBlock[3] = &unk_F3728;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v1;
  sub_BAED0();
  v18 = _swiftEmptyArrayStorage;
  sub_B87B4(&unk_FA520, &type metadata accessor for DispatchWorkItemFlags);
  sub_2E50(&qword_F9540);
  sub_B87FC(&qword_FA530, &qword_F9540);
  sub_BB510();
  sub_BB3B0();
  _Block_release(v11);

  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

void sub_B6CE8()
{
  v1 = v0;
  v2 = sub_B9A10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B95F0();
  v6 = sub_B9A00();
  v7 = sub_BB320();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "Will end monitoring calls", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [objc_opt_self() defaultCenter];
  [v9 removeObserver:v1];

  v10 = *(v1 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_callCenter);
  *(v1 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_callCenter) = 0;
}

uint64_t sub_B6EC0()
{
  swift_beginAccess();
  sub_2E50(&qword_FAFE8);
  sub_B9AE0();
  return swift_endAccess();
}

uint64_t sub_B6F30()
{
  swift_beginAccess();
  sub_2E50(&qword_FAFE8);
  sub_B9AE0();
  return swift_endAccess();
}

uint64_t sub_B6FA4(uint64_t a1)
{
  v2 = sub_2E50(&qword_FAFF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_2E50(&qword_FAFE8);
  sub_B9AF0();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

void sub_B7130(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_callCenter);
  if (v3)
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[4] = sub_B890C;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_257F4;
    v7[3] = &unk_F37C8;
    v5 = _Block_copy(v7);
    v6 = v3;

    [v6 registerWithCompletionHandler:v5];
    _Block_release(v5);
  }

  *a2 = v3 == 0;
}

void sub_B724C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_opt_self();
    v3 = [v2 defaultCenter];
    [v3 addObserver:v1 selector:"handleCallStatusChanged:" name:TUCallCenterCallStatusChangedNotification object:0];

    v4 = [v2 defaultCenter];
    [v4 addObserver:v1 selector:"handleCallStatusChanged:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
  }
}

uint64_t sub_B7340(char *a1, uint64_t a2)
{
  v4 = sub_BAEC0();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_BAEF0();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_B9A10();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_callCenter;
  v14 = *&a1[OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_callCenter];
  if (v14)
  {
    v15 = [v14 currentCallCount];
    v16 = *&a1[v13];
    if (v16)
    {
      v17 = [v16 currentVideoCallCount];
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = 0;
LABEL_6:
  sub_B95F0();
  v18 = sub_B9A00();
  v19 = sub_BB320();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = v7;
    *v20 = 134218496;
    *(v20 + 4) = v15;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v17;
    *(v20 + 22) = 1024;
    if ((a2 & 0x100000000) != 0)
    {
      v21 = -1;
    }

    else
    {
      v21 = a2;
    }

    *(v20 + 24) = v21;
    _os_log_impl(&dword_0, v18, v19, "currentCallCount=%ld currentVideoCallCount=%ld status=%d", v20, 0x1Cu);
    v7 = v29;
  }

  (*(v9 + 8))(v12, v8);
  sub_35DD4(0, &qword_F83E0);
  v22 = sub_BB390();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v15;
  *(v23 + 32) = v17;
  *(v23 + 40) = a2;
  *(v23 + 44) = BYTE4(a2) & 1;
  aBlock[4] = sub_B8888;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257F4;
  aBlock[3] = &unk_F3778;
  v24 = _Block_copy(aBlock);
  v25 = a1;

  sub_BAED0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_B87B4(&unk_FA520, &type metadata accessor for DispatchWorkItemFlags);
  sub_2E50(&qword_F9540);
  sub_B87FC(&qword_FA530, &qword_F9540);
  v26 = v31;
  v27 = v34;
  sub_BB510();
  sub_BB3B0();
  _Block_release(v24);

  (*(v33 + 8))(v26, v27);
  return (*(v30 + 8))(v7, v32);
}

id sub_B77C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  sub_B9B20();
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = a3;
  v8 = v7;
  result = sub_B9B20();
  if ((a4 & 0x100000000) != 0)
  {
LABEL_16:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v26 > 0)
    {
      v16 = [*(v8 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_newObservers) allObjects];
      sub_2E50(&qword_FC1E0);
      v12 = sub_BB0F0();

      if (v12 >> 62)
      {
        goto LABEL_46;
      }

      v17 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
      if (v17)
      {
        goto LABEL_20;
      }

LABEL_47:
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();
    }

    return [*(v8 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_newObservers) removeAllObjects];
  }

  if (a4 == 6)
  {
LABEL_30:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v26) = 1;
    v21 = v8;
    sub_B9B20();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v26)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v22 = [*&v21[OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers] allObjects];
    sub_2E50(&qword_FC1E0);
    v8 = sub_BB0F0();

    if (v8 >> 62)
    {
      v12 = sub_BB650();
      if (!v12)
      {
      }
    }

    else
    {
      v12 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      if (!v12)
      {
      }
    }

    for (i = 0; ; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v24 = sub_BB590();
        v25 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (i >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_45;
        }

        v24 = *(v8 + 8 * i + 32);
        swift_unknownObjectRetain();
        v25 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_42:
          __break(1u);
          while (2)
          {
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            v17 = sub_BB650();
            if (!v17)
            {
              goto LABEL_47;
            }

LABEL_20:
            v18 = 0;
LABEL_22:
            if ((v12 & 0xC000000000000001) != 0)
            {
              v19 = sub_BB590();
              v20 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                goto LABEL_29;
              }

              goto LABEL_25;
            }

            if (v18 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
            {
              continue;
            }

            break;
          }

          v19 = *(v12 + 8 * v18 + 32);
          swift_unknownObjectRetain();
          v20 = v18 + 1;
          if (!__OFADD__(v18, 1))
          {
LABEL_25:
            if ([v19 respondsToSelector:"callConnected"])
            {
              [v19 callConnected];
            }

            swift_unknownObjectRelease();
            ++v18;
            if (v20 == v17)
            {
              goto LABEL_47;
            }

            goto LABEL_22;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      if ([v24 respondsToSelector:"allActiveCallsEnded"])
      {
        [v24 allActiveCallsEnded];
      }

      swift_unknownObjectRelease();
      if (v25 == v12)
      {
      }
    }
  }

  if (a4 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v26) = 0;
    v10 = v8;
    sub_B9B20();
    v11 = [*&v10[OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers] allObjects];
    sub_2E50(&qword_FC1E0);
    v8 = sub_BB0F0();

    if (v8 >> 62)
    {
      v12 = sub_BB650();
      if (v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v12 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      if (v12)
      {
LABEL_6:
        v13 = 0;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v14 = sub_BB590();
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_15;
            }
          }

          else
          {
            if (v13 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_44;
            }

            v14 = *(v8 + 8 * v13 + 32);
            swift_unknownObjectRetain();
            v15 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }
          }

          if ([v14 respondsToSelector:"callConnected"])
          {
            [v14 callConnected];
          }

          swift_unknownObjectRelease();
          ++v13;
        }

        while (v15 != v12);
      }
    }
  }

  return result;
}

void sub_B7DC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_B8FF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_B9A10();
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B95F0();
  (*(v5 + 16))(v7, a1, v4);
  v11 = sub_B9A00();
  v12 = sub_BB320();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = v8;
    v14 = v13;
    v15 = swift_slowAlloc();
    v25 = a1;
    v16 = v15;
    v29[0] = v15;
    *v14 = 136315138;
    v17 = sub_B8FB0();
    v26 = v2;
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    v20 = sub_7A1D8(v17, v19, v29);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "Did receive call status change: %s", v14, 0xCu);
    sub_28020(v16);

    (*(v27 + 8))(v10, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v27 + 8))(v10, v8);
  }

  sub_B8FD0();
  if (v29[3])
  {
    sub_35DD4(0, &qword_FC1D8);
    if (swift_dynamicCast())
    {
      v21 = v28;
      v22 = [v28 status];
      LOBYTE(v29[0]) = 0;
      sub_B6A10(v22);
    }
  }

  else
  {
    sub_B86D8(v29);
  }
}

uint64_t sub_B832C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  *a1 = v3;
  return result;
}

uint64_t sub_B83AC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_B9B20();
}

void sub_B841C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers;
  [*(a2 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers) removeObject:a1];
  [*(a2 + OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_newObservers) removeObject:a1];
  if (![*(a2 + v4) count])
  {
    sub_B6CE8();
  }
}

unint64_t sub_B8498()
{
  result = qword_FC190;
  if (!qword_FC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FC190);
  }

  return result;
}

uint64_t type metadata accessor for LiveSpeechCaptionsCallManager()
{
  result = qword_FC1C0;
  if (!qword_FC1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B85C4()
{
  sub_8A130(319, &qword_FC1D0);
  if (v0 <= 0x3F)
  {
    sub_8A130(319, &qword_FB0D0);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_B86D8(uint64_t a1)
{
  v2 = sub_2E50(&qword_F9FD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B8740()
{

  return _swift_deallocObject(v0, 29, 7);
}

uint64_t sub_B879C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B87B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_B87FC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_5520(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B8850()
{

  return _swift_deallocObject(v0, 45, 7);
}

uint64_t sub_B88D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B8964()
{
  v0 = sub_B9E30();
  sub_82B4C(v0, qword_100DA8);
  v1 = sub_3CB8(v0, qword_100DA8);
  v2 = enum case for DynamicTypeSize.xxxLarge(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

id sub_B89EC()
{
  result = [objc_opt_self() tertiaryLabelColor];
  qword_100DC0 = result;
  return result;
}

uint64_t sub_B8A30(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100BB8 == -1)
  {
    if (qword_100BC0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_B8F80();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100BC0)
    {
      return _availability_version_check();
    }
  }

  if (qword_100BB0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_B8F98();
    a3 = v10;
    a4 = v9;
    v8 = dword_100BA0 < v11;
    if (dword_100BA0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100BA4 > a3)
      {
        return 1;
      }

      if (dword_100BA4 >= a3)
      {
        return dword_100BA8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100BA0 < a2;
  if (dword_100BA0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_B8BC4(uint64_t result)
{
  v1 = qword_100BC0;
  if (qword_100BC0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100BC0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100BA0, &dword_100BA4, &dword_100BA8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_B8F0C()
{
  dlerror();
  v0 = abort_report_np();
  return sub_B8F30(v0);
}

CGSize CGSizeFromString(NSString *string)
{
  v3 = _CGSizeFromString(string);
  height = v3.height;
  width = v3.width;
  result.height = height;
  result.width = width;
  return result;
}