Swift::Void __swiftcall AXLTCaptionsProvider.copyCaptions()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v26 >> 62)
  {
    v0 = sub_BB650();
    if (v0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v0 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    if (v0)
    {
LABEL_3:
      if (v0 >= 1)
      {
        v1 = 0;
        while (1)
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v6 = sub_BB590();
          }

          else
          {
            v6 = *(v26 + 8 * v1 + 32);
          }

          v7 = v6;
          v8 = sub_B9700();
          v10 = v9;
          if (v8 == sub_B97B0() && v10 == v11)
          {

            goto LABEL_7;
          }

          v12 = sub_BB700();

          if ((v12 & 1) == 0)
          {
            break;
          }

LABEL_6:

LABEL_7:
          if (v0 == ++v1)
          {
            goto LABEL_24;
          }
        }

        v13 = sub_B9700();
        v15 = v14;
        if (v13 == sub_BAFD0() && v15 == v16)
        {
        }

        else
        {
          v17 = sub_BB700();

          if ((v17 & 1) == 0)
          {
LABEL_5:
            v27._countAndFlagsBits = sub_B9710();
            v27._object = v2;

            v28._countAndFlagsBits = 2570;
            v28._object = 0xE200000000000000;
            sub_BB060(v28);

            v3 = sub_B96D0();
            v5 = v4;

            v29._countAndFlagsBits = v3;
            v29._object = v5;
            sub_BB060(v29);

            v30._countAndFlagsBits = 657930;
            v30._object = 0xE300000000000000;
            sub_BB060(v30);

            sub_BB060(v27);

            goto LABEL_6;
          }
        }

        if (qword_F8320 != -1)
        {
          swift_once();
        }

        v18 = static AXLTSettingsManager.shared;
        v19 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
        swift_beginAccess();
        if ((*(v18 + v19) & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

LABEL_24:

  v20 = sub_BB320();
  v21 = AXLogLiveTranscription();
  if (!v21)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v22 = v21;
  if (os_log_type_enabled(v21, v20))
  {

    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = 1;

    _os_log_impl(&dword_0, v22, v20, "CaptionsProvider: copy captions %{BOOL}d", v23, 8u);
  }

  v24 = [objc_opt_self() generalPasteboard];
  v25 = sub_BAFA0();

  [v24 setString:v25];
}

NSObject *sub_551AC()
{
  v1 = (v0 + OBJC_IVAR___AXLTCaptionsProvider____lazy_storage___overriddenHistoryTimeInterval);
  if ((*(v0 + OBJC_IVAR___AXLTCaptionsProvider____lazy_storage___overriddenHistoryTimeInterval + 9) & 1) == 0)
  {
    return *v1;
  }

  result = sub_5A3A8();
  *v1 = result;
  v1[8] = v3 & 1;
  v1[9] = 0;
  return result;
}

uint64_t AXLTCaptionsProvider.canMakeScreenshot.getter()
{
  if (!sub_59F30())
  {
    return 1;
  }

  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v0 = static AXLTSettingsManager.shared;
  v1 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_55294()
{
  if (!sub_59F30())
  {
    v4 = &v0[OBJC_IVAR___AXLTCaptionsProvider__canMakeScreenshot];
    if (v0[OBJC_IVAR___AXLTCaptionsProvider__canMakeScreenshot])
    {
      return;
    }

    LOBYTE(v3) = 1;
    goto LABEL_8;
  }

  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v1 = static AXLTSettingsManager.shared;
  v2 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = &v0[OBJC_IVAR___AXLTCaptionsProvider__canMakeScreenshot];
  if (v3 != v0[OBJC_IVAR___AXLTCaptionsProvider__canMakeScreenshot])
  {
LABEL_8:
    *v4 = v3;
    v5 = sub_BB320();
    v6 = AXLogLiveTranscription();
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, v5))
      {
        v8 = v0;
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        *(v9 + 4) = *v4;

        _os_log_impl(&dword_0, v7, v5, "CaptionsProvider: canMakeScreenshot updated %{BOOL}d", v9, 8u);
      }

      v10 = [objc_opt_self() defaultCenter];
      if (qword_F82F0 != -1)
      {
        swift_once();
      }

      v11 = canMakeScreenshotChangedNotification;
      sub_2E50(&unk_FA5A8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_C0020;
      sub_B9840();
      sub_BB550();
      v13 = *v4;
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = v13;
      sub_5108(inited);
      swift_setDeallocating();
      sub_C5E8(inited + 32, &qword_F84E0);
      isa = sub_BAF30().super.isa;

      [v10 postNotificationName:v11 object:0 userInfo:isa];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_55540()
{
  v1 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed;
  if ((*(v0 + OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed) & 1) == 0)
  {
    sub_BB320();
    v2 = AXLogLiveTranscription();
    if (v2)
    {
      v3 = v2;
      sub_B99F0();

      v4 = objc_opt_self();
      v5 = [v4 sharedInstance];
      if (v5)
      {
        v6 = v5;
        sub_2E50(&unk_FA560);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_C0020;
        v8 = AVSystemController_SomeSessionIsPlayingDidChangeNotification;
        *(v7 + 32) = AVSystemController_SomeSessionIsPlayingDidChangeNotification;
        type metadata accessor for Name(0);
        v9 = v8;
        isa = sub_BB0E0().super.isa;

        v26 = 0;
        v11 = [v6 setAttribute:isa forKey:AVSystemController_SubscribeToNotificationsAttribute error:&v26];

        v12 = v26;
        if (v11)
        {
          v13 = objc_opt_self();
          v14 = v12;
          v15 = [v13 defaultCenter];
          v16 = [v4 sharedInstance];
          [v15 addObserver:v0 selector:"mediaPlayingDidChange:" name:v9 object:v16];

          *(v0 + v1) = 1;
          return;
        }

        v17 = v26;
        sub_B9170();

        swift_willThrow();
        v18 = sub_BB300();
        v19 = AXLogLiveTranscription();
        if (v19)
        {
          v20 = v19;
          if (os_log_type_enabled(v19, v18))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v26 = v22;
            *v21 = 136315138;
            swift_errorRetain();
            sub_2E50(&unk_F9820);
            v23 = sub_BAFF0();
            v25 = sub_7A1D8(v23, v24, &v26);

            *(v21 + 4) = v25;
            _os_log_impl(&dword_0, v20, v18, "Could not subscribe to AVSystemController_SomeSessionIsPlayingDidChange: %s", v21, 0xCu);
            sub_28020(v22);
          }

          else
          {
          }

          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

void sub_55890(uint64_t a1)
{
  v56 = sub_BAEC0();
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BAEF0();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_B8FF0();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v50 = v7;
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v11 = sub_2E50(&qword_FA558);
  __chkstk_darwin(v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  v20 = sub_BB2F0();
  v21 = AXLogLiveTranscription();
  if (!v21)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v22 = v21;
  v57 = a1;
  sub_57A0(a1, v19, &qword_FA558);
  v23 = os_log_type_enabled(v22, v20);
  v48 = v3;
  v49 = v4;
  v47 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    sub_57A0(v19, v16, &qword_FA558);
    v26 = sub_BAFF0();
    v28 = v27;
    sub_C5E8(v19, &qword_FA558);
    v29 = sub_7A1D8(v26, v28, aBlock);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_0, v22, v20, "CaptionsProvider AudioSession mediaPlayingDidChange: %s", v24, 0xCu);
    sub_28020(v25);
  }

  else
  {

    sub_C5E8(v19, &qword_FA558);
  }

  sub_57A0(v57, v13, &qword_FA558);
  v31 = v58;
  v30 = v59;
  if ((*(v58 + 48))(v13, 1, v59) == 1)
  {
    sub_C5E8(v13, &qword_FA558);
    sub_BB300();
    v32 = AXLogLiveTranscription();
    if (v32)
    {
      v33 = v32;
      sub_B99F0();

      return;
    }

    goto LABEL_11;
  }

  v34 = *(v31 + 32);
  v35 = v47;
  v34(v47, v13, v30);
  sub_35DD4(0, &qword_F83E0);
  v36 = sub_BB390();
  v37 = v51;
  (*(v31 + 16))(v51, v35, v30);
  v38 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v39 = (v50 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v34((v40 + v38), v37, v30);
  v41 = v52;
  *(v40 + v39) = v52;
  aBlock[4] = sub_5B120;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257F4;
  aBlock[3] = &unk_F12D0;
  v42 = _Block_copy(aBlock);
  v43 = v41;

  v44 = v54;
  sub_BAED0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_5B03C(&unk_FA520, &type metadata accessor for DispatchWorkItemFlags);
  sub_2E50(&qword_F9540);
  sub_D150(&qword_FA530, &qword_F9540);
  v45 = v48;
  v46 = v56;
  sub_BB510();
  sub_BB3B0();
  _Block_release(v42);

  (*(v53 + 8))(v45, v46);
  (*(v55 + 8))(v44, v49);
  (*(v31 + 8))(v35, v30);
}

void sub_55F7C()
{
  v0 = sub_B8FE0();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_BB550();
  if (!*(v1 + 16) || (v2 = sub_7D058(v10), (v3 & 1) == 0))
  {

    sub_3ADA0(v10);
LABEL_8:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_9;
  }

  sub_3ADF4(*(v1 + 56) + 32 * v2, &v11);
  sub_3ADA0(v10);

  if (!*(&v12 + 1))
  {
LABEL_9:
    sub_C5E8(&v11, &qword_F9FD8);
    goto LABEL_10;
  }

  sub_2E50(&qword_FA540);
  if (swift_dynamicCast())
  {
    v4 = v10[0];
    goto LABEL_11;
  }

LABEL_10:
  v4 = _swiftEmptyArrayStorage;
LABEL_11:
  v5 = sub_5A040(v4);
  v6 = sub_BB320();
  v7 = AXLogLiveTranscription();
  if (v7)
  {
    v8 = v7;

    if (os_log_type_enabled(v8, v6))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v5 & 1;
      _os_log_impl(&dword_0, v8, v6, "CaptionsProvider AudioSession media playing did change: %{BOOL}d", v9, 8u);
    }

    sub_57488(v5 & 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_56284(uint64_t a1)
{
  v2 = v1;
  v4 = sub_B8FF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BB320();
  v9 = AXLogLiveTranscription();
  if (!v9)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v10 = v9;
  (*(v5 + 16))(v7, a1, v4);
  if (os_log_type_enabled(v10, v8))
  {
    v11 = swift_slowAlloc();
    v27 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v30[0] = v13;
    *v12 = 136315138;
    sub_5B03C(&qword_FA550, &type metadata accessor for Notification);
    v14 = sub_BB6D0();
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_7A1D8(v14, v16, v30);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_0, v10, v8, "CaptionsProvider AudioSession interruption: %s", v12, 0xCu);
    sub_28020(v13);

    v2 = v27;
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v18 = sub_B8FE0();
  if (v18)
  {
    v19 = v18;
    v28 = sub_BAFD0();
    v29 = v20;
    sub_BB550();
    if (*(v19 + 16) && (v21 = sub_7D058(v30), (v22 & 1) != 0))
    {
      sub_3ADF4(*(v19 + 56) + 32 * v21, v31);
      sub_3ADA0(v30);

      if ((swift_dynamicCast() & 1) != 0 && v28 == 1 && *(v2 + OBJC_IVAR___AXLTCaptionsProvider_isActive) == 1)
      {
        if (qword_F8320 != -1)
        {
          swift_once();
        }

        v23 = static AXLTSettingsManager.shared;
        v24 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
        swift_beginAccess();
        if (*(v23 + v24) == 1)
        {
          sub_BB320();
          v25 = AXLogLiveTranscription();
          if (v25)
          {
            v26 = v25;
            sub_B99F0();

            *(v2 + OBJC_IVAR___AXLTCaptionsProvider_micInterruptedByAudio) = 1;
            sub_6643C(0, 0);
            return;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {

      sub_3ADA0(v30);
    }
  }
}

uint64_t sub_5667C(uint64_t a1)
{
  v2 = sub_BAEC0();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BAEF0();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_B8FF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_35DD4(0, &qword_F83E0);
  v11 = sub_BB390();
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v14 = v18;
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_5B01C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257F4;
  aBlock[3] = &unk_F1230;
  v15 = _Block_copy(aBlock);
  v16 = v14;

  sub_BAED0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_5B03C(&unk_FA520, &type metadata accessor for DispatchWorkItemFlags);
  sub_2E50(&qword_F9540);
  sub_D150(&qword_FA530, &qword_F9540);
  sub_BB510();
  sub_BB3B0();
  _Block_release(v15);

  (*(v21 + 8))(v4, v2);
  return (*(v19 + 8))(v7, v20);
}

NSObject *sub_56A44(uint64_t a1, char *a2)
{
  v4 = sub_BAEC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BAEF0();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_B8FF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BB300();
  result = AXLogLiveTranscription();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = result;
  (*(v10 + 16))(v12, a1, v9);
  v16 = os_log_type_enabled(v15, v13);
  v35 = v5;
  v36 = v4;
  v34 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    sub_5B03C(&qword_FA550, &type metadata accessor for Notification);
    v19 = sub_BB6D0();
    v21 = v20;
    (*(v10 + 8))(v12, v9);
    v22 = sub_7A1D8(v19, v21, aBlock);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_0, v15, v13, "CaptionsProvider AudioSession reset: %s", v17, 0xCu);
    sub_28020(v18);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v23 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  result = swift_beginAccess();
  if (a2[v23] == 1)
  {
    v24 = *&a2[OBJC_IVAR___AXLTCaptionsProvider_activeRequestType];
    if (qword_F82A8 != -1)
    {
      result = swift_once();
    }

    if (byte_FA364)
    {
      v25 = sub_B98B0();
      result = sub_B98B0();
      if (v25 != result)
      {
        return result;
      }
    }

    else if (v24)
    {
      return result;
    }

    if (qword_F8320 != -1)
    {
      swift_once();
    }

    sub_6643C(0, 0);
    [*&a2[OBJC_IVAR___AXLTCaptionsProvider_transcription] resetTranscribing:0];
    sub_35DD4(0, &qword_F83E0);
    v26 = sub_BB390();
    v27 = swift_allocObject();
    *(v27 + 16) = a2;
    aBlock[4] = sub_5B034;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257F4;
    aBlock[3] = &unk_F1280;
    v28 = _Block_copy(aBlock);
    v29 = a2;

    v30 = v37;
    sub_BAED0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_5B03C(&unk_FA520, &type metadata accessor for DispatchWorkItemFlags);
    sub_2E50(&qword_F9540);
    sub_D150(&qword_FA530, &qword_F9540);
    v31 = v39;
    v32 = v36;
    sub_BB510();
    sub_BB3B0();
    _Block_release(v28);

    (*(v35 + 8))(v31, v32);
    return (*(v38 + 8))(v30, v34);
  }

  return result;
}

void sub_57048(uint64_t a1)
{
  v2 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  if (*(a1 + v2) == 1)
  {
    v3 = *(a1 + OBJC_IVAR___AXLTCaptionsProvider_activeRequestType);
    if (qword_F82A8 != -1)
    {
      swift_once();
    }

    if (byte_FA364)
    {
      v4 = sub_B98B0();
      if (v4 != sub_B98B0())
      {
        return;
      }
    }

    else if (v3)
    {
      return;
    }

    if (qword_F8320 != -1)
    {
      swift_once();
    }

    sub_6643C(1, 0);
  }
}

uint64_t sub_5716C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_B8FF0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B8FC0();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

NSObject *sub_5725C()
{
  if (*(v0 + OBJC_IVAR___AXLTCaptionsProvider_isActive) != 1)
  {
    v4 = 0;
    return (v4 & 1);
  }

  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = result;
  v3 = [result attributeForKey:AVSystemController_PlayingSessionsDescriptionAttribute];

  if (v3)
  {
    sub_BB4F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    sub_2E50(&qword_FA540);
    if (swift_dynamicCast())
    {
      v5 = v13;
      goto LABEL_12;
    }
  }

  else
  {
    sub_C5E8(v16, &qword_F9FD8);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_12:
  v6 = sub_BB2F0();
  result = AXLogLiveTranscription();
  if (result)
  {
    v7 = result;
    if (os_log_type_enabled(result, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v16[0] = v9;
      *v8 = 136315138;
      v10 = sub_BB100();
      v12 = sub_7A1D8(v10, v11, v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_0, v7, v6, "CaptionsProvider AudioSession isMediaPlaying: %s", v8, 0xCu);
      sub_28020(v9);
    }

    v4 = sub_5A040(v5);

    return (v4 & 1);
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_57488(char a1)
{
  v3 = sub_BAEC0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BAEF0();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BAF10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  if (*(v1 + OBJC_IVAR___AXLTCaptionsProvider_isActive) == 1)
  {
    if (a1)
    {
      if (qword_F8320 != -1)
      {
        swift_once();
      }

      v18 = static AXLTSettingsManager.shared;
      v19 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
      swift_beginAccess();
      if (*(v18 + v19) == 1)
      {
        sub_BB320();
        v20 = AXLogLiveTranscription();
        if (v20)
        {
          v21 = v20;
          sub_B99F0();

          *(v1 + OBJC_IVAR___AXLTCaptionsProvider_micInterruptedByAudio) = 1;
          sub_6643C(0, 0);
        }

        else
        {
          __break(1u);
        }
      }
    }

    else if (*(v1 + OBJC_IVAR___AXLTCaptionsProvider_micInterruptedByAudio) == 1)
    {
      v22 = v15;
      v32 = v15;
      sub_35DD4(0, &qword_F83E0);
      v28 = v1;
      v30 = sub_BB390();
      sub_BAF00();
      sub_BAF20();
      v31 = *(v11 + 8);
      v31(v13, v22);
      v23 = swift_allocObject();
      v24 = v28;
      *(v23 + 16) = v28;
      aBlock[4] = sub_5AFF8;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257F4;
      aBlock[3] = &unk_F11E0;
      v29 = _Block_copy(aBlock);
      v25 = v24;

      sub_BAED0();
      aBlock[0] = _swiftEmptyArrayStorage;
      v28 = sub_5B03C(&unk_FA520, &type metadata accessor for DispatchWorkItemFlags);
      sub_2E50(&qword_F9540);
      sub_D150(&qword_FA530, &qword_F9540);
      sub_BB510();
      v27 = v29;
      v26 = v30;
      sub_BB370();
      _Block_release(v27);

      (*(v4 + 8))(v6, v3);
      (*(v33 + 8))(v9, v7);
      v31(v17, v32);
    }
  }
}

void sub_57970(uint64_t a1)
{
  v2 = sub_5725C();
  v3 = sub_BB320();
  v4 = AXLogLiveTranscription();
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  if (os_log_type_enabled(v4, v3))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2 & 1;
    _os_log_impl(&dword_0, v5, v3, "CaptionsProvider AudioSession: rechecking media is playing: %{BOOL}d", v6, 8u);
  }

  if (!(v2 & 1 | ((*(a1 + OBJC_IVAR___AXLTCaptionsProvider_isActive) & 1) == 0)))
  {
    sub_BB320();
    v7 = AXLogLiveTranscription();
    if (v7)
    {
      v8 = v7;
      sub_B99F0();

      if (qword_F8320 != -1)
      {
        swift_once();
      }

      sub_6643C(1, 0);
      *(a1 + OBJC_IVAR___AXLTCaptionsProvider_micInterruptedByAudio) = 0;
      return;
    }

LABEL_11:
    __break(1u);
  }
}

void sub_57AEC()
{
  v3 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  if (v0[v3] != 1)
  {
    goto LABEL_32;
  }

  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v1 = static AXLTSettingsManager.shared;
  v2 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  KeyPath = &unk_FA000;
  v5 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
  v6 = qword_F82A8;
  if (*(v1 + v2) != 1)
  {
    goto LABEL_13;
  }

  v7 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_activeRequestType];
  if (qword_F82A8 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    if (byte_FA364)
    {
      v8 = sub_B98B0();
      if (v8 == sub_B98B0())
      {
        goto LABEL_24;
      }

      v6 = qword_F82A8;
      if (*(v1 + v2))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_26;
      }

      v6 = -1;
      if (*(v1 + v2))
      {
        goto LABEL_18;
      }
    }

    v5 = KeyPath[114];
LABEL_13:
    v9 = *&v0[v5];
    if (v6 != -1)
    {
      swift_once();
    }

    if (byte_FA364)
    {
      v10 = sub_B98B0();
      if (v10 != sub_B98B0())
      {
        goto LABEL_24;
      }

      v6 = qword_F82A8;
LABEL_18:
      v11 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_activePid];
      if (v6 != -1)
      {
        swift_once();
      }

      goto LABEL_22;
    }

    if (v9)
    {
      goto LABEL_26;
    }

    v11 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_activePid];
LABEL_22:
    if ((byte_FA364 & 1) == 0)
    {
      break;
    }

    v12 = sub_B98B0();
    if (v12 == sub_B98B0())
    {
LABEL_24:
      v13 = 1;
      goto LABEL_27;
    }

LABEL_32:
    if (qword_F82A8 != -1)
    {
      swift_once();
    }

    if (byte_FA364 == 1)
    {
      sub_4DA28();
      sub_4CE3C();
    }

    else
    {
      sub_4E7F8();
      sub_4DC5C();
    }

    sub_5209C(0, 0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v30 >> 62)
    {
      v25 = sub_BB650();
    }

    else
    {
      v25 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
    }

    if (v25 < 2)
    {
      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v30 >> 62)
    {
      v26 = sub_BB650();
    }

    else
    {
      v26 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
    }

    v27 = __OFSUB__(v26, 2);
    v7 = v26 - 2;
    if (v27)
    {
      __break(1u);
LABEL_51:
      v28 = sub_BB590();
LABEL_47:
      v16 = v28;

      sub_B9610();
LABEL_61:

      return;
    }

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    sub_B9B10();

    v0 = v30;
    if ((v30 & 0xC000000000000001) != 0)
    {
      goto LABEL_51;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
    {
      v28 = *(v30 + 8 * v7 + 32);
      goto LABEL_47;
    }

    __break(1u);
LABEL_54:
    swift_once();
  }

  if (v11 != -2)
  {
    goto LABEL_32;
  }

LABEL_26:
  v13 = 0;
LABEL_27:
  v14 = sub_BB320();
  v15 = AXLogLiveTranscription();
  if (v15)
  {
    v16 = v15;
    if (!os_log_type_enabled(v15, v14))
    {
      goto LABEL_61;
    }

    v17 = v0;
    v18 = swift_slowAlloc();
    v19 = KeyPath;
    v20 = v18;
    *v18 = 67109888;
    *(v18 + 4) = *(v1 + v2);
    *(v18 + 8) = 1024;
    *(v18 + 10) = v0[v3];
    *(v18 + 14) = 1024;
    v21 = *&v17[v19[114]];
    if (qword_F82A8 == -1)
    {
      if (v13)
      {
        goto LABEL_31;
      }

LABEL_56:
      *(v20 + 16) = v21 == 0;
      *(v20 + 20) = 1024;
      v24 = *&v17[OBJC_IVAR___AXLTCaptionsProvider_activePid] == -2;
    }

    else
    {
      swift_once();
      if (!v13)
      {
        goto LABEL_56;
      }

LABEL_31:
      v22 = sub_B98B0();
      *(v20 + 16) = v22 == sub_B98B0();
      *(v20 + 20) = 1024;
      v23 = sub_B98B0();
      v24 = v23 == sub_B98B0();
    }

    v29 = v24;
    *(v20 + 22) = v29;

    _os_log_impl(&dword_0, v16, v14, "CaptionsProvider Skip restarting transcription on Mic state: %{BOOL}d isTranscribing %{BOOL}d isActiveSourceTypeMic %{BOOL}d isActiveSourceTypeCall %{BOOL}d", v20, 0x1Au);

    goto LABEL_61;
  }

  __break(1u);
}

void sub_580A8()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v1 = static AXLTSettingsManager.shared;
  v2 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  if (v3 == 1)
  {
    swift_beginAccess();
    if (*(v0 + v4) == 1)
    {
      if (qword_F82A8 != -1)
      {
        swift_once();
      }

      if (byte_FA364 == 1)
      {
        sub_4DA28();
      }

      else
      {
        sub_4E7F8();
      }
    }
  }

  else
  {
    swift_beginAccess();
    if ((*(v0 + v4) & 1) == 0)
    {
      if (qword_F82A8 != -1)
      {
        swift_once();
      }

      if (byte_FA364 == 1)
      {
        sub_4CE3C();
      }

      else
      {
        sub_4DC5C();
      }
    }
  }

  *(v0 + OBJC_IVAR___AXLTCaptionsProvider_restartAttemptCount) = 0;
  sub_5209C(0, 0);
}

void sub_5822C()
{
  v1 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  if (*(v0 + OBJC_IVAR___AXLTCaptionsProvider_isActive) == 1)
  {
    if (qword_F8320 != -1)
    {
      swift_once();
    }

    v4 = static AXLTSettingsManager.shared;
    v5 = OBJC_IVAR___AXLTSettingsManager_isPaused;
    swift_beginAccess();
    if ((*(v4 + v5) & 1) == 0)
    {
      v6 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
      swift_beginAccess();
      if (*(v0 + v6) == 1)
      {
        if (sub_59F30())
        {
          v7 = *(v0 + OBJC_IVAR___AXLTCaptionsProvider_activePid);
          if (qword_F82A8 != -1)
          {
            swift_once();
          }

          if (byte_FA364)
          {
            v8 = sub_B98B0();
            if (v8 != sub_B98B0())
            {
              goto LABEL_21;
            }

LABEL_13:
            v9 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
            swift_beginAccess();
            if (*(v4 + v9) == 1)
            {
              if (qword_F8230 != -1)
              {
                swift_once();
              }

              v10 = static LiveCaptionsCallDisclosureProvider.shared;
              v11 = sub_BB1A0();
              (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
              v12 = swift_allocObject();
              v12[2] = 0;
              v12[3] = 0;
              v12[4] = v10;
              v12[5] = LiveSpeechStore.SpeechContext.init(text:highlightRange:);
              v12[6] = 0;
              v13 = v10;
              v14 = &unk_C06B8;
            }

            else
            {
              if (qword_F8230 != -1)
              {
                swift_once();
              }

              v15 = static LiveCaptionsCallDisclosureProvider.shared;
              v16 = sub_BB1A0();
              (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
              v12 = swift_allocObject();
              v12[2] = 0;
              v12[3] = 0;
              v12[4] = v15;
              v17 = v15;
              v14 = &unk_BF690;
            }

            sub_2DB84(0, 0, v3, v14, v12);

            sub_C5E8(v3, &qword_F9770);
            goto LABEL_21;
          }

          if (v7 == -2)
          {
            goto LABEL_13;
          }
        }

LABEL_21:
        sub_55294();
      }
    }
  }
}

Swift::Void __swiftcall AXLTCaptionsProvider.updateLiveCaptionsStateForOneness()()
{
  v1 = [objc_opt_self() server];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 isContinuitySessionActive];
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_BB320();
  v5 = AXLogLiveTranscription();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, v4))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_0, v6, v4, "updateLiveCaptionsStateForOneness continuitySessionActive: %{BOOL}d", v7, 8u);
    }

    if (*(v0 + OBJC_IVAR___AXLTCaptionsProvider_activeRequestType) == 1)
    {
      if (v3)
      {
        *(v0 + OBJC_IVAR___AXLTCaptionsProvider_blockAudioTranscriptionForOneness) = 1;

        sub_4E7F8();
      }

      else
      {
        *(v0 + OBJC_IVAR___AXLTCaptionsProvider_blockAudioTranscriptionForOneness) = 0;

        sub_4DC5C();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_58700()
{
  v1 = sub_BB320();
  v2 = AXLogLiveTranscription();
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(v2, v1))
    {
      v4 = v0;
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v4[OBJC_IVAR___AXLTCaptionsProvider_rttCallUIVisibleProcessed];

      _os_log_impl(&dword_0, v3, v1, "CaptionsProvider: Received RTTCallUIVisible, processed: %{BOOL}d", v5, 8u);
    }

    v6 = OBJC_IVAR___AXLTCaptionsProvider_rttCallUIVisibleProcessed;
    if ((*(v0 + OBJC_IVAR___AXLTCaptionsProvider_rttCallUIVisibleProcessed) & 1) == 0)
    {
      if (sub_59F30())
      {
        *(v0 + v6) = 1;
        v7 = [objc_opt_self() defaultCenter];
        v8 = v7;
        if (qword_F8268 != -1)
        {
          swift_once();
          v7 = v8;
        }

        [v7 postNotificationName:rttCallUIVisibleNotification object:0 userInfo:0];
      }

      else
      {
        *(v0 + v6) = 0;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_58894()
{
  v1 = OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer;
  v2 = *(v0 + OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer);
  if (!v2)
  {
    sub_BB2F0();
    v3 = AXLogLiveTranscription();
    if (!v3)
    {
      __break(1u);
      return _objc_release_x1();
    }

    v4 = v3;
    sub_B99F0();

    v2 = *(v0 + v1);
  }

  [v2 invalidate];
  v5 = objc_opt_self();
  sub_B98A0();
  *(v0 + v1) = [v5 scheduledTimerWithTimeInterval:v0 target:"addPlaceholder" selector:0 userInfo:0 repeats:?];

  return _objc_release_x1();
}

void sub_58980()
{
  sub_BB2F0();
  v0 = AXLogLiveTranscription();
  if (!v0)
  {
    goto LABEL_20;
  }

  v1 = v0;
  sub_B99F0();

  sub_5209C(0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v8 >> 62)
  {
    v2 = sub_BB650();
  }

  else
  {
    v2 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  if (v2 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v8 >> 62)
    {
      v3 = sub_BB650();
    }

    else
    {
      v3 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    }

    v4 = __OFSUB__(v3, 2);
    v5 = v3 - 2;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      if ((v8 & 0xC000000000000001) == 0)
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v5 < *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          v6 = *(v8 + 8 * v5 + 32);
LABEL_12:
          v7 = v6;

          sub_B9610();

          return;
        }

        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }
    }

    v6 = sub_BB590();
    goto LABEL_12;
  }
}

uint64_t sub_58C0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_BB650();
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

  v13 = sub_BB650();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_59B48(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_59D8C(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
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

uint64_t sub_58D44()
{
  result = sub_58D68();
  byte_FA364 = result & 1;
  return result;
}

uint64_t sub_58D68()
{
  if (AXIsInternalInstall())
  {
    sub_BB2C0();
    v0 = sub_BB2B0();
    v1 = [v0 liveCaptionsTranscriberVersion];

    if (v1)
    {
      sub_35DD4(0, &unk_F9A50);
      isa = sub_BB470(1).super.super.isa;
      v3 = sub_BB490();

      if (v3)
      {
        return 0;
      }
    }
  }

  v5 = sub_BAFA0();
  v4 = AXHasCapability();

  return v4;
}

void sub_58E44()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v1 = static AXLTSettingsManager.shared;
  v2 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
  swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    sub_BB2F0();
    v3 = AXLogLiveTranscription();
    if (!v3)
    {
      goto LABEL_60;
    }

    v4 = v3;
    sub_B99F0();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v5 = v45[0];
    v44 = v0;
    if (v45[0] >> 62)
    {
      v6 = sub_BB650();
      if (v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = *(&dword_10 + (v45[0] & 0xFFFFFFFFFFFFFF8));
      if (v6)
      {
LABEL_7:
        if (v6 >= 1)
        {
          v7 = 0;
          v43 = v45[0] & 0xC000000000000001;
          v8 = &unk_C0598;
          while (1)
          {
            v10 = v43 ? sub_BB590() : *(v5 + 8 * v7 + 32);
            v11 = v10;
            v12 = sub_B9700();
            v14 = v13;
            if (v12 == sub_BAFD0() && v14 == v15)
            {
              break;
            }

            v16 = sub_BB700();

            if (v16)
            {
              goto LABEL_19;
            }

LABEL_11:
            if (v6 == ++v7)
            {
              goto LABEL_23;
            }
          }

LABEL_19:
          swift_getKeyPath();
          swift_getKeyPath();
          v17 = v8;
          sub_B9B10();

          v18 = sub_54508(v11, v45[0]);
          v20 = v19;

          if (v20)
          {
          }

          else
          {
            swift_getKeyPath();
            swift_getKeyPath();
            v9 = sub_B9B00();

            v9(v45, 0);
          }

          v8 = v17;
          goto LABEL_11;
        }

        __break(1u);
        goto LABEL_54;
      }
    }

LABEL_23:

    v21 = OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions;
    swift_beginAccess();
    v22 = *(v44 + v21);
    if (!(v22 >> 62))
    {
      v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
      if (!v23)
      {
        goto LABEL_38;
      }

      goto LABEL_25;
    }

    v23 = sub_BB650();
    if (v23)
    {
LABEL_25:
      if (v23 < 1)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v24 = 0;
      while (1)
      {
        v25 = (v22 & 0xC000000000000001) != 0 ? sub_BB590() : *(v22 + 8 * v24 + 32);
        v26 = v25;
        v27 = sub_B9700();
        v29 = v28;
        if (v27 == sub_BAFD0() && v29 == v30)
        {
          break;
        }

        v31 = sub_BB700();

        if (v31)
        {
          goto LABEL_35;
        }

LABEL_27:
        ++v24;

        if (v23 == v24)
        {

          goto LABEL_38;
        }
      }

LABEL_35:
      v32 = *(v44 + v21);

      v33 = sub_54508(v26, v32);
      v35 = v34;

      if ((v35 & 1) == 0)
      {
        swift_beginAccess();
        v36 = sub_6C2F8(v33);
        swift_endAccess();

        v26 = v36;
      }

      goto LABEL_27;
    }

LABEL_38:
    sub_5209C(0, 0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if (v46 >> 62)
    {
      v37 = sub_BB650();
    }

    else
    {
      v37 = *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));
    }

    if (v37 >= 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      if (!(v46 >> 62))
      {
        v38 = *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8));
        goto LABEL_43;
      }

LABEL_55:
      v38 = sub_BB650();
LABEL_43:

      v39 = __OFSUB__(v38, 2);
      v40 = v38 - 2;
      if (v39)
      {
        __break(1u);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_B9B10();

        if ((v46 & 0xC000000000000001) == 0)
        {
          if ((v40 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v40 < *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)))
          {
            v41 = *(v46 + 8 * v40 + 32);
LABEL_48:
            v42 = v41;

            sub_B9610();

            return;
          }

          __break(1u);
LABEL_60:
          __break(1u);
          return;
        }
      }

      v41 = sub_BB590();
      goto LABEL_48;
    }
  }
}

uint64_t sub_594E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AXLTCaptionsProvider();
  result = sub_B9AA0();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall AXLTCaptionsProvider.callConnected()()
{
  v1 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  sub_BB320();
  v4 = AXLogLiveTranscription();
  if (v4)
  {
    v5 = v4;
    sub_B99F0();

    if (qword_F8320 != -1)
    {
      swift_once();
    }

    v6 = static AXLTSettingsManager.shared;
    v7 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
    swift_beginAccess();
    if (*(v6 + v7) == 1)
    {
      if (qword_F8230 != -1)
      {
        swift_once();
      }

      v8 = static LiveCaptionsCallDisclosureProvider.shared;
      v9 = swift_allocObject();
      *(v9 + 16) = v0;
      v10 = sub_BB1A0();
      (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v8;
      v11[5] = sub_5AE40;
      v11[6] = v9;
      v12 = v0;
      v13 = v8;

      sub_2DB84(0, 0, v3, &unk_BF680, v11);

      sub_C5E8(v3, &qword_F9770);
LABEL_14:
      sub_55294();
      return;
    }

    sub_BB320();
    v14 = AXLogLiveTranscription();
    if (v14)
    {
      v15 = v14;
      sub_B99F0();

      if (qword_F82A8 != -1)
      {
        swift_once();
      }

      if (byte_FA364 == 1)
      {
        sub_4DA28();
        sub_4CE3C();
      }

      else
      {
        sub_4E7F8();
        sub_4DC5C();
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_59834()
{
  sub_BB320();
  v0 = AXLogLiveTranscription();
  if (v0)
  {
    v1 = v0;
    sub_B99F0();

    if (qword_F82A8 != -1)
    {
      swift_once();
    }

    if (byte_FA364 == 1)
    {
      sub_4DA28();
      sub_4CE3C();
    }

    else
    {
      sub_4E7F8();
      sub_4DC5C();
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall AXLTCaptionsProvider.allActiveCallsEnded()()
{
  sub_BB320();
  v1 = AXLogLiveTranscription();
  if (v1)
  {
    v2 = v1;
    sub_B99F0();

    v3 = *(v0 + OBJC_IVAR___AXLTCaptionsProvider_activePid);
    if (qword_F82A8 != -1)
    {
      swift_once();
    }

    v4 = byte_FA364;
    if (byte_FA364)
    {
      v5 = sub_B98B0();
      if (v5 != sub_B98B0())
      {
        goto LABEL_13;
      }
    }

    else if (v3 != -2)
    {
LABEL_13:
      *(v0 + OBJC_IVAR___AXLTCaptionsProvider_rttCallUIVisibleProcessed) = 0;
      return;
    }

    sub_BB320();
    v6 = AXLogLiveTranscription();
    if (v6)
    {
      v7 = v6;
      sub_B99F0();

      if (v4)
      {
        sub_4DA28();
        sub_4CE3C();
      }

      else
      {
        sub_4E7F8();
        sub_4DC5C();
      }

      sub_55294();
      sub_58E44();
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for AXLTCaptionsProvider()
{
  result = qword_FA500;
  if (!qword_FA500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_59B48(uint64_t a1)
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

  sub_BB650();
LABEL_9:
  result = sub_BB5A0();
  *v1 = result;
  return result;
}

uint64_t sub_59BE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_BB650();
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
      result = sub_BB650();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_D150(&qword_FA5E8, &qword_FA5E0);
          for (i = 0; i != v6; ++i)
          {
            sub_2E50(&qword_FA5E0);
            v9 = sub_7DEC4(v13, i, a3);
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
        sub_BB340();
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

uint64_t sub_59D8C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_BB650();
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
      result = sub_BB650();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_D150(&qword_FA5B8, &qword_FA368);
          for (i = 0; i != v6; ++i)
          {
            sub_2E50(&qword_FA368);
            v9 = sub_7DF44(v13, i, a3);
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
        sub_B9750();
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

BOOL sub_59F30()
{
  if (qword_F8360 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v1 > 0)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1 > 0;
}

NSObject *sub_5A040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = &unk_FA548;
  while (1)
  {
    sub_3ADF4(v2, v27);
    sub_35DD4(0, v3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_3;
    }

    *&v27[0] = 0x4950746E65696C43;
    *(&v27[0] + 1) = 0xE900000000000044;
    v23 = v25;
    v4 = [v25 __swift_objectForKeyedSubscript:sub_BB720()];
    swift_unknownObjectRelease();
    if (v4)
    {
      sub_BB4F0();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27[0] = v25;
    v27[1] = v26;
    if (*(&v26 + 1))
    {
      if (swift_dynamicCast())
      {
        v5 = v24;
        goto LABEL_13;
      }
    }

    else
    {
      sub_C5E8(v27, &qword_F9FD8);
    }

    v5 = 0;
LABEL_13:
    v6 = sub_BB2F0();
    result = AXLogLiveTranscription();
    if (!result)
    {
      break;
    }

    v8 = result;
    v22 = v5;
    if (os_log_type_enabled(result, v6))
    {
      v9 = swift_slowAlloc();
      *&v27[0] = swift_slowAlloc();
      *v9 = 136315394;
      LODWORD(v25) = v5;
      v10 = sub_BB6D0();
      v12 = sub_7A1D8(v10, v11, v27);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2080;
      v13 = v23;
      v14 = [v13 description];
      v15 = v3;
      v16 = sub_BAFD0();
      v18 = v17;

      v19 = v16;
      v3 = v15;
      v20 = sub_7A1D8(v19, v18, v27);

      *(v9 + 14) = v20;
      _os_log_impl(&dword_0, v8, v6, "CaptionsProvider AudioSession client pid: %s session: %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    if (qword_F8298 != -1)
    {
      swift_once();
    }

    v21 = dword_FA360;

    if (v21 != v22)
    {
      return (&dword_0 + 1);
    }

LABEL_3:
    v2 += 32;
    if (!--v1)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

NSObject *sub_5A3A8()
{
  if (!AXIsInternalInstall())
  {
    return 0;
  }

  sub_BB2C0();
  v0 = sub_BB2B0();
  v1 = [v0 liveCaptionsHistoryDuration];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_BB320();
  result = AXLogLiveTranscription();
  if (result)
  {
    v4 = result;
    if (os_log_type_enabled(result, v2))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      *(v5 + 4) = v1;
      *v6 = v1;
      v7 = v1;
      _os_log_impl(&dword_0, v4, v2, "History time duration is overridden with %@", v5, 0xCu);
      sub_C5E8(v6, &qword_FA570);
    }

    sub_BB1D0();
    v9 = v8;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s19LiveSpeechUIService20AXLTCaptionsProviderC22screenLockStateChangedyySbF_0()
{
  v2 = v0;
  IsUnlocked = AXDeviceIsUnlocked();
  if (IsUnlocked != v0[OBJC_IVAR___AXLTCaptionsProvider_isDeviceLocked])
  {
    return;
  }

  v4 = IsUnlocked;
  v5 = IsUnlocked ^ 1u;
  v2[OBJC_IVAR___AXLTCaptionsProvider_isDeviceLocked] = IsUnlocked ^ 1;
  v6 = sub_BB320();
  v7 = AXLogLiveTranscription();
  if (!v7)
  {
LABEL_63:
    __break(1u);
    return;
  }

  v8 = v7;
  if (os_log_type_enabled(v7, v6))
  {
    v1 = swift_slowAlloc();
    *v1 = 67109120;
    *(v1 + 1) = v5;
    _os_log_impl(&dword_0, v8, v6, "CaptionsProvider: screenLockStateChanged: %{BOOL}d", v1, 8u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (v4)
  {
    sub_B9B10();

    v9 = OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions;
    swift_beginAccess();
    sub_58C0C(v48[0]);
    swift_endAccess();
    v10 = *&v2[v9];
    swift_getKeyPath();
    swift_getKeyPath();
    v48[0] = v10;

    v11 = v2;
    sub_B9B20();
    *&v2[v9] = _swiftEmptyArrayStorage;

    goto LABEL_46;
  }

  sub_B9B10();

  if (v48[0] >> 62)
  {
    v12 = sub_BB650();
  }

  else
  {
    v12 = *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8));
  }

  if (v12 < 1)
  {
    goto LABEL_28;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v48[0] >> 62)
  {
    v13 = sub_BB650();
  }

  else
  {
    v13 = *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8));
  }

  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    if ((v48[0] & 0xC000000000000001) == 0)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8)))
      {
        v16 = *(v48[0] + 8 * v15 + 32);
        goto LABEL_17;
      }

      __break(1u);
LABEL_55:
      sub_BB110();
      goto LABEL_44;
    }
  }

  v16 = sub_BB590();
LABEL_17:
  v17 = v16;

  v18 = sub_B9700();
  v20 = v19;

  if (v18 == sub_B97B0() && v20 == v21)
  {
  }

  else
  {
    v22 = sub_BB700();

    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v48[0] >> 62)
  {
    v23 = sub_BB650();
  }

  else
  {
    v23 = *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8));
  }

  if (v23 == 1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v48[0] >> 62)
  {
    goto LABEL_61;
  }

  for (i = *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8)); ; i = sub_BB650())
  {

    v14 = __OFSUB__(i, 1);
    v25 = i - 1;
    if (v14)
    {
      __break(1u);
      goto LABEL_63;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v26 = sub_B9B00();

    v26(v48, 0);

LABEL_28:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v27 = v48[0] >> 62 ? sub_BB650() : *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8));

    v28 = OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption;
    if (v27 < 1)
    {
      break;
    }

    v29 = *&v2[OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption];
    if (!v29)
    {
      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v29;
    sub_B9B10();

    if (v48[0] >> 62)
    {
      v31 = sub_BB650();
    }

    else
    {
      v31 = *(&dword_10 + (v48[0] & 0xFFFFFFFFFFFFFF8));
    }

    v32 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v30;
    v34 = sub_B9B00();
    v36 = v35;
    v37 = *v35;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v36 = v37;
    if (!isUniquelyReferenced_nonNull_bridgeObject || v37 < 0 || (v37 & 0x4000000000000000) != 0)
    {
      v37 = sub_80E5C(v37);
      *v36 = v37;
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_59;
    }

    if (v32 < *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8)))
    {
      v39 = *(&stru_20.cmd + 8 * v32 + (v37 & 0xFFFFFFFFFFFFFF8));
      *(&stru_20.cmd + 8 * v32 + (v37 & 0xFFFFFFFFFFFFFF8)) = v33;

      v34(v48, 0);

      v28 = OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption;
      break;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

  v40 = *&v2[v28];
  *&v2[v28] = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v41 = v48[0];
  v42 = OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions;
  swift_beginAccess();
  *&v2[v42] = v41;

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = sub_B9B00();
  *v44 = _swiftEmptyArrayStorage;

  v43(v48, 0);

  v45 = *&v2[OBJC_IVAR___AXLTCaptionsProvider_currentCaption];
  if (!v45)
  {
    sub_5209C(0, 0);
    goto LABEL_46;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v45;
  v5 = sub_B9B00();
  v47 = v46;
  sub_BB0D0();
  if (*(&dword_10 + (*v47 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v47 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_55;
  }

LABEL_44:
  sub_BB130();
  (v5)(v48, 0);

LABEL_46:
  sub_53C5C();
  sub_549A0();
}

uint64_t sub_5AE08()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_5AE50()
{
  sub_5AF54();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_5AF54()
{
  if (!qword_FA510)
  {
    sub_5520(&qword_FA368);
    v0 = sub_B9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_FA510);
    }
  }
}

uint64_t sub_5AFB8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_5B000(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5B03C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5B084()
{
  v1 = sub_B8FF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_5B138(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_B8FF0() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_5B1D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_5B210()
{
  result = qword_FA580;
  if (!qword_FA580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA580);
  }

  return result;
}

uint64_t sub_5B264()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5B2C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5B328()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_5B378()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_5B444()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1;
}

uint64_t sub_5B4BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1;
}

uint64_t sub_5B530()
{
  v1 = v0;
  v145 = sub_BA500();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v125 = &v111[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v144 = sub_2E50(&qword_FA6D8);
  __chkstk_darwin(v144);
  v119 = &v111[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v133 = &v111[-v5];
  __chkstk_darwin(v6);
  v121 = &v111[-v7];
  __chkstk_darwin(v8);
  v10 = &v111[-v9];
  v11 = sub_BA180();
  v142 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v111[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2E50(&qword_FA6E0);
  __chkstk_darwin(v14);
  v116 = &v111[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v128 = &v111[-v17];
  __chkstk_darwin(v18);
  v120 = &v111[-v19];
  __chkstk_darwin(v20);
  v22 = &v111[-v21];
  v23 = sub_2E50(&qword_F8530);
  __chkstk_darwin(v23 - 8);
  v113 = &v111[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v27 = &v111[-v26];
  __chkstk_darwin(v28);
  v118 = &v111[-v29];
  __chkstk_darwin(v30);
  v32 = &v111[-v31];
  __chkstk_darwin(v33);
  v134 = &v111[-v34];
  __chkstk_darwin(v35);
  v131 = &v111[-v36];
  __chkstk_darwin(v37);
  v115 = &v111[-v38];
  __chkstk_darwin(v39);
  v123 = &v111[-v40];
  __chkstk_darwin(v41);
  v124 = &v111[-v42];
  __chkstk_darwin(v43);
  v129 = &v111[-v44];
  __chkstk_darwin(v45);
  v47 = &v111[-v46];
  __chkstk_darwin(v48);
  v50 = &v111[-v49];
  v140 = v1;
  v127 = OBJC_IVAR____TtC19LiveSpeechUIService14ForeheadWindow__horizontalSizeClass;
  sub_57A0(v1 + OBJC_IVAR____TtC19LiveSpeechUIService14ForeheadWindow__horizontalSizeClass, v22, &qword_FA6E0);
  v141 = v14;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v117 = v27;
  v135 = v11;
  v126 = v13;
  v122 = v32;
  if (EnumCaseMultiPayload == 1)
  {
    sub_5D4A0(v22, v50);
  }

  else
  {
    sub_BB310();
    v52 = sub_BA610();
    sub_B99F0();

    sub_BA170();
    swift_getAtKeyPath();

    (*(v142 + 8))(v13, v11);
  }

  v53 = v143;
  v54 = *(v143 + 104);
  v132 = enum case for UserInterfaceSizeClass.regular(_:);
  v55 = v145;
  v138 = v54;
  v139 = v143 + 104;
  v54(v47);
  v136 = *(v53 + 56);
  v137 = v53 + 56;
  v136(v47, 0, 1, v55);
  v56 = *(v144 + 48);
  sub_57A0(v50, v10, &qword_F8530);
  sub_57A0(v47, &v10[v56], &qword_F8530);
  v57 = *(v53 + 48);
  v58 = v57(v10, 1, v55);
  v130 = v53 + 48;
  if (v58 == 1)
  {
    sub_C5E8(v47, &qword_F8530);
    sub_C5E8(v50, &qword_F8530);
    v59 = v57;
    if (v57(&v10[v56], 1, v55) != 1)
    {
      v60 = v140;
      v65 = v142;
LABEL_20:
      v62 = v133;
      goto LABEL_21;
    }

    sub_C5E8(v10, &qword_F8530);
    v60 = v140;
    v61 = v135;
    v62 = v133;
    v63 = v57;
  }

  else
  {
    v64 = v129;
    sub_57A0(v10, v129, &qword_F8530);
    v59 = v57;
    if (v57(&v10[v56], 1, v55) == 1)
    {
LABEL_19:
      v65 = v142;
      sub_C5E8(v47, &qword_F8530);
      sub_C5E8(v50, &qword_F8530);
      (*(v143 + 8))(v129, v55);
      v60 = v140;
      goto LABEL_20;
    }

    v66 = v143;
    v67 = v125;
    (*(v143 + 32))(v125, &v10[v56], v55);
    sub_5D448();
    v68 = sub_BAF90();
    v55 = v145;
    v112 = v68;
    v69 = *(v66 + 8);
    v69(v67, v145);
    sub_C5E8(v47, &qword_F8530);
    sub_C5E8(v50, &qword_F8530);
    v69(v64, v55);
    sub_C5E8(v10, &qword_F8530);
    v60 = v140;
    v61 = v135;
    v65 = v142;
    v62 = v133;
    v63 = v57;
    v70 = v131;
    if ((v112 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v71 = v120;
  sub_57A0(v60 + OBJC_IVAR____TtC19LiveSpeechUIService14ForeheadWindow__verticalSizeClass, v120, &qword_FA6E0);
  v72 = swift_getEnumCaseMultiPayload();
  v114 = v63;
  if (v72 == 1)
  {
    v73 = v124;
    sub_5D4A0(v71, v124);
  }

  else
  {
    sub_BB310();
    v74 = sub_BA610();
    sub_B99F0();

    v75 = v126;
    sub_BA170();
    v73 = v124;
    swift_getAtKeyPath();

    (*(v142 + 8))(v75, v61);
  }

  v76 = v121;
  v77 = v123;
  v138(v123, enum case for UserInterfaceSizeClass.compact(_:), v55);
  v136(v77, 0, 1, v55);
  v78 = *(v144 + 48);
  sub_57A0(v73, v76, &qword_F8530);
  sub_57A0(v77, v76 + v78, &qword_F8530);
  v63 = v114;
  if (v114(v76, 1, v55) != 1)
  {
    v79 = v115;
    sub_57A0(v76, v115, &qword_F8530);
    if (v63(v76 + v78, 1, v55) != 1)
    {
      v102 = v143;
      v103 = v125;
      (*(v143 + 32))(v125, v76 + v78, v55);
      sub_5D448();
      v104 = sub_BAF90();
      v55 = v145;
      LODWORD(v129) = v104;
      v105 = *(v102 + 8);
      v105(v103, v145);
      sub_C5E8(v123, &qword_F8530);
      sub_C5E8(v124, &qword_F8530);
      v105(v79, v55);
      v65 = v142;
      sub_C5E8(v76, &qword_F8530);
      v62 = v133;
      v61 = v135;
      v60 = v140;
      v70 = v131;
      if (v129)
      {
        v99 = 1;
        return v99 & 1;
      }

LABEL_22:
      v80 = v128;
      sub_57A0(v60 + v127, v128, &qword_FA6E0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_5D4A0(v80, v70);
      }

      else
      {
        sub_BB310();
        v81 = sub_BA610();
        sub_B99F0();

        v82 = v126;
        sub_BA170();
        swift_getAtKeyPath();

        (*(v65 + 8))(v82, v61);
      }

      v83 = v134;
      v138(v134, v132, v55);
      v136(v83, 0, 1, v55);
      v84 = *(v144 + 48);
      sub_57A0(v70, v62, &qword_F8530);
      sub_57A0(v83, v62 + v84, &qword_F8530);
      if (v63(v62, 1, v55) == 1)
      {
        sub_C5E8(v83, &qword_F8530);
        sub_C5E8(v70, &qword_F8530);
        if (v63(v62 + v84, 1, v55) == 1)
        {
          sub_C5E8(v62, &qword_F8530);
LABEL_32:
          v93 = v116;
          sub_57A0(v140 + OBJC_IVAR____TtC19LiveSpeechUIService14ForeheadWindow__verticalSizeClass, v116, &qword_FA6E0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v94 = v118;
            sub_5D4A0(v93, v118);
          }

          else
          {
            sub_BB310();
            v95 = sub_BA610();
            sub_B99F0();

            v96 = v126;
            sub_BA170();
            v94 = v118;
            swift_getAtKeyPath();

            (*(v65 + 8))(v96, v135);
          }

          v76 = v119;
          v97 = v117;
          v138(v117, v132, v55);
          v136(v97, 0, 1, v55);
          v98 = *(v144 + 48);
          sub_57A0(v94, v76, &qword_F8530);
          sub_57A0(v97, v76 + v98, &qword_F8530);
          if (v63(v76, 1, v55) == 1)
          {
            sub_C5E8(v97, &qword_F8530);
            sub_C5E8(v94, &qword_F8530);
            if (v63(v76 + v98, 1, v55) == 1)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v100 = v113;
            sub_57A0(v76, v113, &qword_F8530);
            if (v63(v76 + v98, 1, v55) != 1)
            {
              v106 = v94;
              v107 = v143;
              v108 = v125;
              (*(v143 + 32))(v125, v76 + v98, v55);
              sub_5D448();
              v109 = v100;
              v99 = sub_BAF90();
              v110 = *(v107 + 8);
              v110(v108, v55);
              sub_C5E8(v97, &qword_F8530);
              sub_C5E8(v106, &qword_F8530);
              v110(v109, v55);
              sub_C5E8(v76, &qword_F8530);
              return v99 & 1;
            }

            sub_C5E8(v97, &qword_F8530);
            sub_C5E8(v94, &qword_F8530);
            (*(v143 + 8))(v100, v55);
          }

          v86 = v76;
          goto LABEL_41;
        }
      }

      else
      {
        v85 = v122;
        sub_57A0(v62, v122, &qword_F8530);
        if (v63(v62 + v84, 1, v55) != 1)
        {
          v114 = v63;
          v87 = v143;
          v88 = v125;
          (*(v143 + 32))(v125, v62 + v84, v55);
          sub_5D448();
          v89 = sub_BAF90();
          v55 = v145;
          v90 = v89;
          v91 = v62;
          v92 = *(v87 + 8);
          v92(v88, v145);
          sub_C5E8(v134, &qword_F8530);
          sub_C5E8(v70, &qword_F8530);
          v92(v85, v55);
          v65 = v142;
          v63 = v114;
          sub_C5E8(v91, &qword_F8530);
          if ((v90 & 1) == 0)
          {
LABEL_42:
            v99 = 0;
            return v99 & 1;
          }

          goto LABEL_32;
        }

        sub_C5E8(v134, &qword_F8530);
        sub_C5E8(v70, &qword_F8530);
        (*(v143 + 8))(v85, v55);
      }

      v86 = v62;
LABEL_41:
      sub_C5E8(v86, &qword_FA6D8);
      goto LABEL_42;
    }

    v59 = v63;
    v47 = v123;
    v50 = v124;
    v129 = v79;
    v10 = v76;
    goto LABEL_19;
  }

  sub_C5E8(v77, &qword_F8530);
  sub_C5E8(v73, &qword_F8530);
  if (v63(v76 + v78, 1, v55) != 1)
  {
    v59 = v63;
    v10 = v76;
    v60 = v140;
    v65 = v142;
LABEL_21:
    sub_C5E8(v10, &qword_FA6D8);
    v61 = v135;
    v63 = v59;
    v70 = v131;
    goto LABEL_22;
  }

LABEL_37:
  sub_C5E8(v76, &qword_F8530);
  v99 = 1;
  return v99 & 1;
}

char *sub_5C7AC()
{
  v1 = sub_2E50(&qword_FA6F8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v5 = sub_2E50(&qword_FA700);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtC19LiveSpeechUIService14ForeheadWindow__verticalSizeClass;
  *&v0[v9] = swift_getKeyPath();
  sub_2E50(&qword_FA6E0);
  swift_storeEnumTagMultiPayload();
  v10 = OBJC_IVAR____TtC19LiveSpeechUIService14ForeheadWindow__horizontalSizeClass;
  *&v0[v10] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v11 = OBJC_IVAR____TtC19LiveSpeechUIService14ForeheadWindow_layoutMonitor;
  *&v0[v11] = [objc_allocWithZone(SBSSystemApertureLayoutMonitor) init];
  v12 = OBJC_IVAR____TtC19LiveSpeechUIService14ForeheadWindow__foreheadRect;
  type metadata accessor for CGRect(0);
  v18 = 0u;
  v19 = 0u;
  sub_B9AD0();
  (*(v6 + 32))(&v0[v12], v8, v5);
  v13 = OBJC_IVAR____TtC19LiveSpeechUIService14ForeheadWindow__frames;
  *&v18 = _swiftEmptyArrayStorage;
  sub_2E50(&qword_FA6D0);
  sub_B9AD0();
  (*(v2 + 32))(&v0[v13], v4, v1);
  *&v0[OBJC_IVAR____TtC19LiveSpeechUIService14ForeheadWindow_minimumForeheadHeight] = 0x4042AAAAAAAAAAABLL;
  v14 = type metadata accessor for ForeheadWindow();
  v17.receiver = v0;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, "init");
  [*&v15[OBJC_IVAR____TtC19LiveSpeechUIService14ForeheadWindow_layoutMonitor] addObserver:v15];
  return v15;
}

void sub_5CA88(unint64_t a1)
{
  if (!AXDeviceHasJindo() || (sub_5B530() & 1) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    size = CGRectZero.size;
    origin = CGRectZero.origin;
    v62 = size;
    v4 = v1;
LABEL_4:
    sub_B9B20();
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&origin.x = _swiftEmptyArrayStorage;
  v60 = v1;
  sub_B9B20();
  v57 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = sub_BB650();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

  v6 = 0;
  v58 = a1 & 0xC000000000000001;
  v59 = a1;
  do
  {
    if (v58)
    {
      v7 = sub_BB590();
    }

    else
    {
      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    [v7 CGRectValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = sub_B9B00();
    v19 = v18;
    v20 = *v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_7A04C(0, *(v20 + 2) + 1, 1, v20);
      *v19 = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_7A04C((v22 > 1), v23 + 1, 1, v20);
      *v19 = v20;
    }

    a1 = v59;
    ++v6;
    *(v20 + 2) = v23 + 1;
    v24 = &v20[32 * v23];
    *(v24 + 4) = v10;
    *(v24 + 5) = v12;
    *(v24 + 6) = v14;
    *(v24 + 7) = v16;
    v17(&origin, 0);
  }

  while (v5 != v6);
LABEL_20:
  if (!v57)
  {
    v25 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v25 != 2)
    {
      goto LABEL_22;
    }

LABEL_28:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v36 = sub_BB590();
    }

    else
    {
      if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v36 = *(a1 + 32);
    }

    v37 = v36;
    [v36 CGRectValue];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    if ((a1 & 0xC000000000000001) != 0)
    {
      v46 = sub_BB590();
    }

    else
    {
      if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)) < 2uLL)
      {
LABEL_42:
        __break(1u);
        return;
      }

      v46 = *(a1 + 40);
    }

    v47 = v46;
    [v46 CGRectValue];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    v63.origin.x = v39;
    v63.origin.y = v41;
    v63.size.width = v43;
    v63.size.height = v45;
    v65.origin.x = v49;
    v65.origin.y = v51;
    v65.size.width = v53;
    v65.size.height = v55;
    v64 = CGRectUnion(v63, v65);
    x = v64.origin.x;
    y = v64.origin.y;
    width = v64.size.width;
    height = v64.size.height;
    goto LABEL_36;
  }

  v25 = sub_BB650();
  if (v25 == 2)
  {
    goto LABEL_28;
  }

LABEL_22:
  if (v25 == 1)
  {
    if ((a1 & 0xC000000000000001) == 0)
    {
      if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        v26 = *(a1 + 32);
LABEL_26:
        v27 = v26;
        [v26 CGRectValue];
        x = v28;
        y = v30;
        width = v32;
        height = v34;

LABEL_36:
        swift_getKeyPath();
        swift_getKeyPath();
        origin.x = x;
        origin.y = y;
        v62.width = width;
        v62.height = height;
        v56 = v60;
        goto LABEL_4;
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_38:
    v26 = sub_BB590();
    goto LABEL_26;
  }
}

id sub_5CF24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ForeheadWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ForeheadWindow()
{
  result = qword_FA6A0;
  if (!qword_FA6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5D0CC()
{
  sub_5D29C(319, &unk_FA6B0, &qword_F8530, &unk_C3C70, &type metadata accessor for Environment.Content);
  if (v0 <= 0x3F)
  {
    sub_5D244();
    if (v1 <= 0x3F)
    {
      sub_5D29C(319, &qword_FA6C8, &qword_FA6D0, &unk_C0800, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_5D244()
{
  if (!qword_FA6C0)
  {
    type metadata accessor for CGRect(255);
    v0 = sub_B9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_FA6C0);
    }
  }
}

void sub_5D29C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_5D300@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ForeheadWindow();
  result = sub_B9AA0();
  *a1 = result;
  return result;
}

uint64_t sub_5D348@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  *a1 = v3;
  return result;
}

uint64_t sub_5D3CC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_B9B20();
}

unint64_t sub_5D448()
{
  result = qword_FA6E8;
  if (!qword_FA6E8)
  {
    sub_BA500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA6E8);
  }

  return result;
}

uint64_t sub_5D4A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E50(&qword_F8530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_5D510()
{
  result = qword_FA6F0;
  if (!qword_FA6F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_FA6F0);
  }

  return result;
}

uint64_t sub_5D584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_5D5E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_5D660@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = sub_2E50(&qword_FA7B0);
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = sub_2E50(&qword_FA7B8);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_2E50(&qword_FA7C0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v29 = &v29 - v14;
  v33 = sub_2E50(&qword_FA7C8);
  __chkstk_darwin(v33);
  v16 = &v29 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v32 = a1 & 1;
  *(v17 + 24) = a2;
  v35 = a1;
  v36 = a2;

  sub_2E50(&qword_FA7D0);
  sub_D150(&qword_FA7D8, &qword_FA7D0);
  sub_BAC20();
  v37 = a1;
  v38 = a2;
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  sub_D150(&qword_FA7E0, &qword_FA7B0);
  v18 = v30;
  sub_BA9A0();

  (*(v31 + 8))(v8, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = v11;
  v21 = v29;
  sub_66B8(v20, v29, &qword_FA7B8);
  v22 = (v21 + *(v13 + 44));
  *v22 = sub_5F5E4;
  v22[1] = v19;
  v22[2] = 0;
  v22[3] = 0;
  v23 = objc_opt_self();

  v24 = [v23 defaultCenter];
  if (qword_F82B8 != -1)
  {
    swift_once();
  }

  v25 = v33;
  sub_BB400();

  v26 = swift_allocObject();
  *(v26 + 16) = v32;
  *(v26 + 24) = a2;
  sub_66B8(v21, v16, &qword_FA7C0);
  v27 = &v16[*(v25 + 56)];
  *v27 = sub_5F5EC;
  *(v27 + 1) = v26;
  sub_66B8(v16, v34, &qword_FA7C8);
}

uint64_t sub_5DB2C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v17) = a1;
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  v4 = v15;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v16 = COERCE_UNSIGNED_INT64(AXLTSettingsManager.buttonScaledHeight.getter());
  sub_BABC0();
  sub_BABD0();
  if (v16)
  {
    v5 = "LiveCaptionsPauseListening";
  }

  else
  {
    v5 = "AXLCResumeButton";
  }

  if (v16)
  {
    v6 = 0xD00000000000001BLL;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  v7 = v5 | 0x8000000000000000;
  LiveSpeechCaptionsLocString(_:)(*&v6);
  sub_B320();
  v8 = sub_BA800();
  v10 = v9;
  *a3 = v4;
  *(a3 + 8) = v17;
  *(a3 + 16) = a2;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  v12 = v11 & 1;
  *(a3 + 40) = v11 & 1;
  *(a3 + 48) = v13;

  sub_21808(v8, v10, v12);

  sub_C004(v8, v10, v12);
}

uint64_t sub_5DCEC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_BAB70();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v12 = sub_2E50(&qword_FA708);
  __chkstk_darwin(v12);
  v14 = &v22[-v13 - 6];
  sub_BAB60();
  (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
  v15 = sub_BABA0();

  (*(v9 + 8))(v11, v8);
  *&v23 = a4;
  *(&v23 + 1) = a2;
  sub_2E50(&qword_FA710);
  sub_BABD0();
  *&v23 = a4;
  *(&v23 + 1) = a2;
  sub_BABD0();
  sub_BADE0();
  sub_B9CF0();
  LOBYTE(v21) = 1;
  *&v22[6] = v23;
  *&v22[22] = v24;
  *&v22[38] = v25;
  v16 = [objc_opt_self() defaultCenter];
  if (qword_F82D0 != -1)
  {
    swift_once();
  }

  sub_BB400();

  v17 = swift_allocObject();
  *(v17 + 24) = a4;
  *(v14 + 50) = *&v22[32];
  v18 = *&v22[16];
  *(v14 + 18) = *v22;
  *(v17 + 16) = a1 & 1;
  *(v17 + 32) = a2;
  *v14 = v15;
  *(v14 + 1) = 0;
  *(v14 + 8) = 1;
  *(v14 + 8) = *&v22[46];
  *(v14 + 34) = v18;
  v19 = &v14[*(v12 + 56)];
  *v19 = sub_5EF44;
  v19[1] = v17;
  sub_66B8(v14, a3, &qword_FA708);
}

uint64_t sub_5E050()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  AXLTSettingsManager.buttonScaledHeight.getter();
  sub_2E50(&qword_FA710);
  return sub_BABE0();
}

uint64_t sub_5E100@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v71 = a2;
  v4 = a1;
  v75 = a1;
  v90 = a3;
  v86 = sub_BA2D0();
  v77 = *(v86 - 8);
  v78 = v77;
  __chkstk_darwin(v86);
  v83 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BA5E0();
  v73 = *(v6 - 8);
  v74 = v6;
  __chkstk_darwin(v6);
  v72 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2E50(&qword_FA718);
  v84 = *(v81 - 8);
  __chkstk_darwin(v81);
  v91 = &v66 - v8;
  v80 = sub_2E50(&qword_FA720);
  __chkstk_darwin(v80);
  v76 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v79 = &v66 - v11;
  __chkstk_darwin(v12);
  v85 = &v66 - v13;
  v87 = sub_2E50(&qword_FA728) - 8;
  __chkstk_darwin(v87);
  v82 = &v66 - v14;
  v89 = sub_2E50(&qword_FA730);
  __chkstk_darwin(v89);
  v88 = &v66 - v15;
  v70 = sub_BA1C0();
  LOBYTE(v106[0]) = 1;
  sub_5EAEC(v4, v3, v107);
  v96 = v107[2];
  v97 = v107[3];
  v98 = *&v107[4];
  v94 = v107[0];
  v95 = v107[1];
  v99[2] = v107[2];
  v99[3] = v107[3];
  v100 = *&v107[4];
  v99[0] = v107[0];
  v99[1] = v107[1];
  sub_5EF54(&v94, v92);
  sub_C5E8(v99, &qword_FA738);
  *(&v93[1] + 7) = v95;
  *(&v93[2] + 7) = v96;
  *(&v93[3] + 7) = v97;
  *(&v93[4] + 7) = v98;
  *(v93 + 7) = v94;
  v16 = v106[0];
  v17 = sub_BA670();
  sub_B9B90();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  LOBYTE(v107[0]) = 0;
  LOBYTE(v3) = sub_BA690();
  sub_B9B90();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v92[0] = 0;
  v34 = sub_BA650();
  sub_B9B90();
  v68 = v36;
  v69 = v35;
  v66 = v38;
  v67 = v37;
  LOBYTE(v107[0]) = 0;
  v39 = sub_BAAF0();
  KeyPath = swift_getKeyPath();
  *&v92[33] = v93[1];
  *&v92[49] = v93[2];
  *&v92[65] = v93[3];
  *&v92[80] = *(&v93[3] + 15);
  *v92 = v70;
  *&v92[8] = 0;
  v92[16] = v16;
  *&v92[17] = v93[0];
  v92[96] = v17;
  *&v92[97] = v106[0];
  *&v92[100] = *(v106 + 3);
  *&v92[104] = v19;
  *&v92[112] = v21;
  *&v92[120] = v23;
  *&v92[128] = v25;
  v92[136] = 0;
  *&v92[140] = *&v105[3];
  *&v92[137] = *v105;
  v92[144] = v3;
  *&v92[148] = *&v104[3];
  *&v92[145] = *v104;
  *&v92[152] = v27;
  *&v92[160] = v29;
  *&v92[168] = v31;
  *&v92[176] = v33;
  v92[184] = 0;
  *&v92[185] = *v103;
  *&v92[188] = *&v103[3];
  v92[192] = v34;
  *&v92[193] = *v102;
  *&v92[196] = *&v102[3];
  *&v92[200] = v69;
  *&v92[208] = v68;
  *&v92[216] = v67;
  *&v92[224] = v66;
  v92[232] = 0;
  *&v92[233] = *v101;
  *&v92[236] = *&v101[3];
  *&v92[240] = KeyPath;
  *&v92[248] = v39;
  v92[256] = 0;
  v41 = v72;
  sub_BA5D0();
  v42 = sub_2E50(&qword_FA740);
  v43 = sub_5EFCC();
  sub_BA950();
  (*(v73 + 8))(v41, v74);
  memcpy(v107, v92, 0x101uLL);
  sub_C5E8(v107, &qword_FA740);
  sub_2E50(&qword_F8E08);
  v44 = v78;
  v45 = v71;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_C0020;
  sub_BA2C0();
  *v92 = v46;
  sub_5F2D4();
  sub_2E50(&qword_F8E18);
  sub_D150(&qword_F8E20, &qword_F8E18);
  v47 = v83;
  v48 = v86;
  sub_BB510();
  *v92 = v42;
  *&v92[8] = v43;
  swift_getOpaqueTypeConformance2();
  v49 = v76;
  v50 = v81;
  v51 = v91;
  sub_BA990();
  (*(v44 + 8))(v47, v48);
  (*(v84 + 8))(v51, v50);
  v52 = v79;
  sub_B9E90();
  sub_C5E8(v49, &qword_FA720);
  LOBYTE(v49) = v75;
  LODWORD(v91) = v75 & 1;
  v92[0] = v75;
  *&v92[8] = v45;
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  v53 = v85;
  sub_B9EC0();
  v54 = v82;

  sub_C5E8(v52, &qword_FA720);
  v55 = swift_allocObject();
  *(v55 + 16) = v49;
  *(v55 + 24) = v45;
  sub_66B8(v53, v54, &qword_FA720);
  v56 = (v54 + *(v87 + 44));
  *v56 = sub_5F32C;
  v56[1] = v55;
  v56[2] = 0;
  v56[3] = 0;
  v57 = objc_opt_self();

  v58 = [v57 defaultCenter];
  if (qword_F82B8 != -1)
  {
    swift_once();
  }

  v60 = v88;
  v59 = v89;
  sub_BB400();

  v61 = swift_allocObject();
  v62 = v91;
  *(v61 + 16) = v91;
  *(v61 + 24) = v45;
  sub_66B8(v54, v60, &qword_FA728);
  v63 = (v60 + *(v59 + 56));
  *v63 = sub_5F384;
  v63[1] = v61;
  v64 = swift_allocObject();
  *(v64 + 16) = v62;
  *(v64 + 24) = v45;
  sub_D150(&qword_FA7A0, &qword_FA730);
  swift_retain_n();
  sub_BA860();

  return sub_C5E8(v60, &qword_FA730);
}

uint64_t sub_5EAEC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  if (v17)
  {
    v6 = "LiveCaptionsPauseListening";
  }

  else
  {
    v6 = "AXLCResumeButton";
  }

  if (v17)
  {
    v7 = 0xD00000000000001BLL;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  v8 = v6 | 0x8000000000000000;
  countAndFlagsBits = LiveSpeechCaptionsLocString(_:)(*&v7)._countAndFlagsBits;
  sub_B320();
  v9 = sub_BA800();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(countAndFlagsBits) = a1;
  sub_BABD0();
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  AXLTSettingsManager.buttonScaledHeight.getter();
  sub_BABC0();
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13 & 1;
  *(a3 + 24) = v15;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = v17;
  *(a3 + 56) = countAndFlagsBits;
  *(a3 + 64) = a2;
  sub_21808(v9, v11, v13 & 1);

  sub_C004(v9, v11, v13 & 1);
}

uint64_t sub_5ECA8()
{
  if (qword_F82A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2E50(&qword_F96C8);
  return sub_BABE0();
}

uint64_t sub_5ED78(uint64_t a1, char a2, uint64_t a3)
{
  result = sub_B8FE0();
  if (result)
  {
    v6 = result;
    v9 = sub_B9840();
    sub_BB550();
    if (*(v6 + 16) && (v7 = sub_7D058(v10), (v8 & 1) != 0))
    {
      sub_3ADF4(*(v6 + 56) + 32 * v7, v12);
      sub_3ADA0(v10);

      result = swift_dynamicCast();
      if (result)
      {
        v10[0] = a2 & 1;
        v11 = a3;
        v12[0] = v9;
        sub_2E50(&qword_F96C8);
        return sub_BABE0();
      }
    }

    else
    {

      return sub_3ADA0(v10);
    }
  }

  return result;
}

uint64_t sub_5EE88()
{
  sub_2E50(&qword_F96C8);
  sub_BABD0();
  return _AXSLiveTranscriptionSetPaused();
}

uint64_t sub_5EF0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_5EF54(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E50(&qword_FA738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_5EFCC()
{
  result = qword_FA748;
  if (!qword_FA748)
  {
    sub_5520(&qword_FA740);
    sub_5F084();
    sub_D150(&qword_F9C30, &qword_F9C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA748);
  }

  return result;
}

unint64_t sub_5F084()
{
  result = qword_FA750;
  if (!qword_FA750)
  {
    sub_5520(&qword_FA758);
    sub_5F198(&qword_FA760, &qword_FA768, &unk_C0AF8, sub_5F168);
    sub_D150(&qword_F8DF0, &qword_F8DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA750);
  }

  return result;
}

uint64_t sub_5F198(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_5F21C()
{
  result = qword_FA780;
  if (!qword_FA780)
  {
    sub_5520(&qword_FA788);
    sub_D150(&qword_FA790, &qword_FA798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA780);
  }

  return result;
}

unint64_t sub_5F2D4()
{
  result = qword_F8E10;
  if (!qword_F8E10)
  {
    sub_BA2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_F8E10);
  }

  return result;
}

uint64_t sub_5F34C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5F3C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_5F420(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_5F4C4()
{
  sub_5520(&qword_FA730);
  sub_D150(&qword_FA7A0, &qword_FA730);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5F61C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2E50(&qword_F8810);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_5F6EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2E50(&qword_F8810);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LiveCaptionsTextView()
{
  result = qword_FA848;
  if (!qword_FA848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5F7E8()
{
  sub_B9750();
  if (v0 <= 0x3F)
  {
    sub_BB3C(319, &qword_FA190);
    if (v1 <= 0x3F)
    {
      sub_BB3C(319, &unk_FA198);
      if (v2 <= 0x3F)
      {
        sub_BB3C(319, &qword_FA858);
        if (v3 <= 0x3F)
        {
          sub_5F9B0(319, &qword_FA860, sub_5F964, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_5F9B0(319, &qword_F8898, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
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

unint64_t sub_5F964()
{
  result = qword_FA868;
  if (!qword_FA868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_FA868);
  }

  return result;
}

void sub_5F9B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_5FA30(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_BB090();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5FA78()
{
  v0 = sub_B90D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v13[-v5];
  sub_B9040();
  sub_62E70(&qword_FA900, &type metadata accessor for AttributedString.CharacterView);
  sub_BB200();
  sub_BB220();
  sub_62E70(&qword_FA908, &type metadata accessor for AttributedString.Index);
  v7 = sub_BAF90();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v9 = 0;
  if ((v7 & 1) == 0)
  {
    v10 = sub_BB240();
    v9 = *v11;

    v10(v13, 0);
  }

  v8(v6, v0);
  return v9;
}

uint64_t sub_5FC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v3 = sub_BA7B0();
  __chkstk_darwin(v3 - 8);
  v112 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2E50(&qword_FA8B0);
  __chkstk_darwin(v5 - 8);
  v111 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v110 = &v101 - v8;
  v109 = sub_B90D0();
  v104 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v107 = &v101 - v11;
  v125 = sub_2E50(&qword_FA8B8);
  __chkstk_darwin(v125);
  v124 = &v101 - v12;
  v13 = sub_2E50(&qword_FA8C0);
  __chkstk_darwin(v13 - 8);
  v123 = &v101 - v14;
  v129 = sub_B90A0();
  v126 = *(v129 - 8);
  __chkstk_darwin(v129);
  v128 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_B9090();
  v117 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_B90B0();
  v118 = *(v127 - 8);
  __chkstk_darwin(v127);
  v116 = (&v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_2E50(&qword_FA8C8);
  __chkstk_darwin(v115);
  v19 = &v101 - v18;
  v120 = sub_B9140();
  v103 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v135 = &v101 - v22;
  v134 = sub_B9040();
  v23 = *(v134 - 8);
  __chkstk_darwin(v134);
  v106 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v101 - v26;
  v28 = sub_B90F0();
  v29 = *(v28 - 1);
  __chkstk_darwin(v28);
  v130 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v139 = &v101 - v32;
  __chkstk_darwin(v33);
  v35 = &v101 - v34;
  __chkstk_darwin(v36);
  v38 = &v101 - v37;
  v136 = a1;
  sub_B9680();
  sub_B9020();
  v101 = v29;
  v39 = *(v29 + 8);
  v137 = v29 + 8;
  v39(v38, v28);
  v40 = sub_B9030();
  v43 = *(v23 + 8);
  v41 = v23 + 8;
  v42 = v43;
  v43(v27, v134);
  v131 = v38;
  v132 = v35;
  v138 = v39;
  v133 = v43;
  if (!v40)
  {
    v44 = sub_B9730();
    if (v44 >> 62)
    {
      goto LABEL_68;
    }

    v45 = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
LABEL_4:

    v42 = v133;
    if (!v45)
    {
      sub_B96D0();
      sub_B9130();
      return sub_B9100();
    }
  }

  sub_B9060();
  sub_B9680();
  sub_B9020();
  v46 = v138;
  v138(v38, v28);
  v47 = sub_B9030();
  v42(v27, v134);
  v113 = v28;
  if (v47 < 1)
  {
    v79 = sub_B9730();
    v80 = v79;
    if (v79 >> 62)
    {
      v81 = sub_BB650();
    }

    else
    {
      v81 = *(&dword_10 + (v79 & 0xFFFFFFFFFFFFFF8));
    }

    v82 = v132;
    v83 = v138;
    if (!v81)
    {
LABEL_57:

      return (*(v101 + 32))(v102, v82, v28);
    }

    v27 = 0;
    v139 = (v80 & 0xC000000000000001);
    v133 = v80;
    v134 = v80 & 0xFFFFFFFFFFFFFF8;
    v129 = v81;
    while (1)
    {
      if (v139)
      {
        v86 = sub_BB590();
      }

      else
      {
        if (v27 >= *(v134 + 16))
        {
          goto LABEL_60;
        }

        v86 = *(v80 + 8 * v27 + 32);
      }

      v19 = v86;
      v41 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v45 = sub_BB650();
        v38 = v131;
        goto LABEL_4;
      }

      v87 = [v86 substring];
      sub_BAFD0();

      sub_B9130();
      sub_B9100();
      [v19 confidence];
      if (v88 != 0.0)
      {
        [v19 confidence];
        if (v89 < 0.5)
        {
          sub_BA7A0();
          sub_BAAB0();
          v90 = v110;
          sub_BA7C0();
          v91 = sub_BA7D0();
          (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
          sub_57A0(v90, v111, &qword_FA8B0);
          sub_62898();
          sub_B9120();
          sub_C5E8(v90, &qword_FA8B0);
        }
      }

      sub_62E70(&qword_FA8D0, &type metadata accessor for AttributedString);
      v28 = v113;
      sub_B90E0();
      v92 = sub_B9730();
      if (v92 >> 62)
      {
        v93 = sub_BB650();
        v28 = v113;
      }

      else
      {
        v93 = *(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8));
      }

      if (__OFSUB__(v93, 1))
      {
        goto LABEL_61;
      }

      if (v27 >= v93 - 1)
      {
        break;
      }

      v94 = [v19 substringRange];
      [v19 substringRange];
      v96 = &v94[v95];
      if (__OFADD__(v94, v95))
      {
        goto LABEL_62;
      }

      v28 = v96 - 1;
      if (__OFSUB__(v96, 1))
      {
        goto LABEL_63;
      }

      v97 = sub_B9730();
      if ((v97 & 0xC000000000000001) != 0)
      {
        v99 = sub_BB590();
        v98 = v130;
      }

      else
      {
        v98 = v130;
        if ((v41 & 0x8000000000000000) != 0)
        {
          goto LABEL_64;
        }

        if (v41 >= *(&dword_10 + (v97 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_65;
        }

        v99 = *(v97 + 8 * v41 + 32);
      }

      if ([v99 substringRange] < v28)
      {
        v84 = v131;
      }

      else
      {
        v100 = [v99 substringRange];
        if (__OFSUB__(v100, v28))
        {
          goto LABEL_67;
        }

        if (v100 - v28 < 2)
        {
          v28 = v113;
          v83(v98, v113);

          goto LABEL_52;
        }

        v84 = v131;
      }

      sub_B9060();
      v28 = v113;
      sub_B90E0();

      v85 = v84;
      v83 = v138;
      v138(v85, v28);
      v83(v98, v28);
LABEL_29:
      ++v27;
      v82 = v132;
      v80 = v133;
      if (v41 == v129)
      {
        goto LABEL_57;
      }
    }

    v83(v130, v28);
LABEL_52:

    goto LABEL_29;
  }

  v130 = v41;
  sub_B9680();
  v48 = v116;
  sub_B90C0();
  v46(v38, v28);
  v49 = v118;
  v50 = v127;
  (v118[2])(v19, v48, v127);
  v51 = *(v115 + 36);
  v52 = sub_62E70(&qword_FA8E0, &type metadata accessor for AttributedString.Runs);
  sub_BB200();
  (v49[1])(v48, v50);
  ++v126;
  v118 = (v117 + 2);
  ++v117;
  v116 = (v103 + 8);
  ++v104;
  v53 = v132;
  v105 = v27;
  v115 = v51;
  v114 = v52;
  while (1)
  {
    v57 = v128;
    sub_BB220();
    sub_62E70(&qword_FA8E8, &type metadata accessor for AttributedString.Runs.Index);
    v58 = v129;
    v59 = sub_BAF90();
    (*v126)(v57, v58);
    if (v59)
    {
      sub_C5E8(v19, &qword_FA8C8);
      return (*(v101 + 32))(v102, v53, v28);
    }

    v60 = sub_BB240();
    v61 = v121;
    v62 = v122;
    (*v118)(v121);
    v60(&v140, 0);
    sub_BB230();
    v63 = v123;
    sub_B9080();
    v64 = v131;
    sub_B9680();
    sub_B9020();
    v138(v64, v28);
    sub_B9050();
    v133(v27, v134);
    sub_C5E8(v63, &qword_FA8C0);
    sub_B9130();
    sub_D150(&qword_FA8F0, &qword_FA8B8);
    sub_B9110();
    v65 = v119;
    sub_B9070();
    (*v117)(v61, v62);
    sub_B9000();
    sub_62E70(&qword_FA8F8, &type metadata accessor for AttributeScopes.SpeechAttributes.ConfidenceAttribute);
    sub_B9150();
    (*v116)(v65, v120);
    if ((v141 & 1) == 0 && v140 != 0.0 && v140 < 0.5)
    {
      break;
    }

LABEL_9:
    sub_62E70(&qword_FA8D0, &type metadata accessor for AttributedString);
    v56 = v139;
    sub_B90E0();
    v138(v56, v28);
  }

  v66 = v106;
  sub_B9020();
  sub_62E70(&qword_FA900, &type metadata accessor for AttributedString.CharacterView);
  v67 = v107;
  v68 = v134;
  sub_BB200();
  v69 = v108;
  sub_BB220();
  sub_62E70(&qword_FA908, &type metadata accessor for AttributedString.Index);
  v70 = v109;
  v71 = sub_BAF90();
  v72 = *v104;
  (*v104)(v69, v70);
  if (v71)
  {
    v72(v67, v70);
    v133(v66, v68);
    v27 = v105;
    v28 = v113;
    goto LABEL_8;
  }

  v73 = v70;
  v41 = sub_BB240();
  v75 = v74[1];
  v103 = *v74;

  (v41)(&v140, 0);
  v72(v67, v73);
  v133(v66, v68);
  if (v103 == 32 && v75 == 0xE100000000000000)
  {

    v27 = v105;
    goto LABEL_19;
  }

  v41 = sub_BB700();

  v28 = v113;
  v27 = v105;
  if ((v41 & 1) == 0)
  {
LABEL_8:
    sub_BA7A0();
    sub_BAAB0();
    v54 = v110;
    sub_BA7C0();
    v55 = sub_BA7D0();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    sub_57A0(v54, v111, &qword_FA8B0);
    sub_62898();
    sub_B9120();
    sub_C5E8(v54, &qword_FA8B0);
    v53 = v132;
    goto LABEL_9;
  }

LABEL_19:
  v28 = sub_B9010();
  if (sub_BB210())
  {
    goto LABEL_66;
  }

  result = sub_5FA78();
  if (v77)
  {

    sub_62E70(&qword_FA910, &type metadata accessor for AttributedString.CharacterView);
    sub_BB250();
    (v28)(&v140, 0);
    v78 = v131;
    sub_B9060();
    sub_62E70(&qword_FA8D0, &type metadata accessor for AttributedString);
    v28 = v113;
    sub_B90E0();
    v138(v78, v28);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_611B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for LiveCaptionsTextView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2E50(&qword_FA918);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  *v9 = sub_BA330();
  *(v9 + 1) = 0x4010000000000000;
  v9[16] = 0;
  v10 = sub_2E50(&qword_FA920);
  sub_61ABC(v2, &v9[*(v10 + 44)]);
  sub_628EC(v2, v6);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_62954(v6, v12 + v11);
  v13 = &v9[*(v7 + 36)];
  *v13 = sub_629B8;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  v32 = *v2;
  v14 = v32;
  v30 = v2;
  sub_628EC(v2, v6);
  v29 = v5;
  v15 = swift_allocObject();
  sub_62954(v6, v15 + v11);
  sub_B9750();
  sub_62A98();
  sub_62E70(&qword_FA320, &type metadata accessor for AXLTCaption);
  v16 = v14;
  sub_BAA00();

  sub_C5E8(v9, &qword_FA918);
  v17 = objc_opt_self();
  v18 = [v17 defaultCenter];
  if (qword_F82C0 != -1)
  {
    swift_once();
  }

  v19 = sub_2E50(&qword_FA940);
  v20 = v31;
  sub_BB400();

  v21 = v30;
  sub_628EC(v30, v6);
  v22 = swift_allocObject();
  sub_62954(v6, v22 + v11);
  v23 = (v20 + *(v19 + 56));
  *v23 = sub_62B50;
  v23[1] = v22;
  v24 = [v17 defaultCenter];
  if (qword_F82D0 != -1)
  {
    swift_once();
  }

  v25 = sub_2E50(&qword_FA948);
  sub_BB400();

  sub_628EC(v21, v6);
  v26 = swift_allocObject();
  result = sub_62954(v6, v26 + v11);
  v28 = (v20 + *(v25 + 56));
  *v28 = sub_62CBC;
  v28[1] = v26;
  return result;
}

uint64_t sub_6160C()
{
  v0 = sub_B9700();
  v2 = v1;
  v3._countAndFlagsBits = sub_B9710();
  v5 = v4;
  v6._countAndFlagsBits = v0;
  v6._object = v2;
  v3._object = v5;
  object = appIconSystemName(_:_:)(v6, v3).value._object;

  if (object)
  {
  }

  else
  {
    v9 = sub_B9700();
    v11 = v10;
    sub_2E50(&qword_FA710);
    sub_BABD0();
    iconForBundleId(_:iconSize:)(v12, v9, v11);

    sub_2E50(&qword_FA950);
    return sub_BABE0();
  }
}

uint64_t sub_6173C()
{
  v0 = sub_B9700();
  v2 = v1;
  v3._countAndFlagsBits = sub_B9710();
  v5 = v4;
  v6._countAndFlagsBits = v0;
  v6._object = v2;
  v3._object = v5;
  object = appIconSystemName(_:_:)(v6, v3).value._object;

  if (object)
  {
  }

  else
  {
    v9 = sub_B9700();
    v11 = v10;
    sub_2E50(&qword_FA710);
    sub_BABD0();
    iconForBundleId(_:iconSize:)(v12, v9, v11);

    sub_2E50(&qword_FA950);
    return sub_BABE0();
  }
}

uint64_t sub_6186C(uint64_t a1, uint64_t a2)
{
  result = sub_B8FE0();
  if (result)
  {
    v4 = result;
    v8 = sub_B9840();
    sub_BB550();
    if (*(v4 + 16) && (v5 = sub_7D058(v9), (v6 & 1) != 0))
    {
      sub_3ADF4(*(v4 + 56) + 32 * v5, v10);
      sub_3ADA0(v9);

      result = swift_dynamicCast();
      if (result)
      {
        v7 = *(a2 + 24);
        v9[0] = *(a2 + 16);
        v9[1] = v7;
        v10[0] = v8;
        sub_2E50(&qword_FA0F8);
        return sub_BABE0();
      }
    }

    else
    {

      return sub_3ADA0(v9);
    }
  }

  return result;
}

uint64_t sub_6196C()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  if (qword_F8310 != -1)
  {
    swift_once();
  }

  v0 = textFontStyle;
  v1 = AXLTSettingsManager.contentCategory.getter();
  sub_64E70(v0, UIFontWeightBold);

  sub_BA720();
  sub_2E50(&qword_F9710);
  sub_BABE0();
  AXLTSettingsManager.buttonScaledHeight.getter();
  sub_2E50(&qword_FA710);
  return sub_BABE0();
}

uint64_t sub_61ABC@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_2E50(&qword_FA0D0);
  __chkstk_darwin(v3 - 8);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v36 - v6;
  v7 = sub_BAB70();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2E50(&qword_FA958);
  __chkstk_darwin(v40);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v39 = &v36 - v14;
  v15 = sub_2E50(&qword_FA960);
  __chkstk_darwin(v15);
  v17 = (&v36 - v16);
  v18 = sub_2E50(&qword_FA968);
  __chkstk_darwin(v18 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v36 - v22;
  v44 = a1;
  v24 = *a1;
  if (isCaptionFromApplication(_:)(v24))
  {
    v38 = v15;
    v25 = v44;
    v26 = v44[9];
    *&v49[0] = v44[8];
    *(&v49[0] + 1) = v26;
    sub_2E50(&qword_FA950);
    sub_BABD0();
    sub_BAB50();
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v37 = sub_BABA0();

    (*(v8 + 8))(v10, v7);
    v28 = v25[7];
    *&v49[0] = v25[6];
    v27 = *&v49[0];
    *(&v49[0] + 1) = v28;
    sub_2E50(&qword_FA710);
    sub_BABD0();
    *&v49[0] = v27;
    *(&v49[0] + 1) = v28;
    sub_BABD0();
    sub_BADE0();
    sub_B9CF0();
    *&v47[38] = v53;
    *&v47[22] = v52;
    *&v47[6] = v51;
    *&v46[2] = *v47;
    v48 = 1;
    v45 = v37;
    *v46 = 1;
    *&v46[18] = *&v47[16];
    *&v46[34] = *&v47[32];
    *&v46[48] = *(&v53 + 1);
    sub_2E50(&qword_F9748);
    sub_3B098();
    sub_BA880();
    v49[2] = *&v46[16];
    v49[3] = *&v46[32];
    v50 = *&v46[48];
    v49[0] = v45;
    v49[1] = *v46;
    sub_C5E8(v49, &qword_F9748);
    v29 = v39;
    sub_B9EA0();
    sub_C5E8(v12, &qword_FA958);
    sub_57A0(v29, v17, &qword_FA958);
    swift_storeEnumTagMultiPayload();
    sub_62D58();
    sub_62DAC();
    sub_BA430();
    sub_C5E8(v29, &qword_FA958);
  }

  else
  {
    *v17 = v24;
    swift_storeEnumTagMultiPayload();
    sub_62D58();
    sub_62DAC();
    v30 = v24;
    sub_BA430();
  }

  v31 = v41;
  sub_6210C(v41);
  sub_57A0(v23, v20, &qword_FA968);
  v32 = v43;
  sub_57A0(v31, v43, &qword_FA0D0);
  v33 = v42;
  sub_57A0(v20, v42, &qword_FA968);
  v34 = sub_2E50(&qword_FA980);
  sub_57A0(v32, v33 + *(v34 + 48), &qword_FA0D0);
  sub_C5E8(v31, &qword_FA0D0);
  sub_C5E8(v23, &qword_FA968);
  sub_C5E8(v32, &qword_FA0D0);
  return sub_C5E8(v20, &qword_FA968);
}

uint64_t sub_6210C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v47 = sub_BA2D0();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_B90F0();
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2E50(&qword_FA0D0);
  __chkstk_darwin(v42);
  v43 = &v41 - v8;
  sub_5FC8C(*v1, v7);
  v9 = sub_BA7F0();
  v11 = v10;
  v13 = v12;
  v14 = v1[3];
  v48 = v1[2];
  v49 = v14;
  sub_2E50(&qword_FA0F8);
  sub_BABD0();
  v15 = sub_B9700();
  v17 = v16;
  v18 = sub_B97B0();
  v45 = v3;
  if (v15 == v18 && v17 == v19)
  {
  }

  else
  {
    v20 = sub_BB700();

    if ((v20 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v48 = 0x3FF0000000000000;
  if (qword_F8380 != -1)
  {
    swift_once();
  }

  [qword_100DC0 getRed:0 green:0 blue:0 alpha:&v48];
LABEL_8:
  sub_BAB10();

  v21 = sub_BA770();
  v23 = v22;
  v25 = v24;

  sub_C004(v9, v11, v13 & 1);

  v26 = v2[5];
  v48 = v2[4];
  v49 = v26;
  sub_2E50(&qword_F9710);
  sub_BABD0();
  v27 = sub_BA790();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_C004(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v48 = v27;
  v49 = v29;
  LOBYTE(v23) = v31 & 1;
  v50 = v31 & 1;
  v51 = v33;
  v52 = KeyPath;
  v53 = 0;
  v54 = 1;
  sub_2E50(&qword_FA100);
  sub_4A5A4();
  v35 = v43;
  sub_BA880();
  sub_C004(v27, v29, v23);

  LODWORD(v21) = *(v2 + 8);
  sub_2E50(&qword_F8E08);
  v36 = v45;
  if (v21 == 1)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_BDB40;
    sub_BA2A0();
  }

  else
  {
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_C0020;
  }

  sub_BA290();
  v48 = v37;
  sub_62E70(&qword_F8E10, &type metadata accessor for AccessibilityTraits);
  sub_2E50(&qword_F8E18);
  sub_D150(&qword_F8E20, &qword_F8E18);
  v38 = v44;
  v39 = v47;
  sub_BB510();
  sub_B9EB0();
  (*(v36 + 8))(v38, v39);
  return sub_C5E8(v35, &qword_FA0D0);
}

uint64_t sub_626A4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  sub_BABC0();
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  if (qword_F8310 != -1)
  {
    swift_once();
  }

  v4 = textFontStyle;
  v5 = AXLTSettingsManager.contentCategory.getter();
  sub_64E70(v4, UIFontWeightBold);

  sub_BA720();
  sub_BABC0();
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  v8 = AXLTSettingsManager.buttonScaledHeight.getter();
  sub_BABC0();
  *(a3 + 48) = v9;
  *(a3 + 56) = v10;
  [objc_allocWithZone(UIImage) init];
  sub_5F964();
  sub_BABC0();
  *(a3 + 64) = v9;
  *(a3 + 72) = v10;
  v6 = *(type metadata accessor for LiveCaptionsTextView() + 40);
  *(a3 + v6) = swift_getKeyPath();
  sub_2E50(&qword_F8398);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_62898()
{
  result = qword_FA8D8;
  if (!qword_FA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA8D8);
  }

  return result;
}

uint64_t sub_628EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveCaptionsTextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_62954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveCaptionsTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_629B8()
{
  type metadata accessor for LiveCaptionsTextView();

  return sub_6160C();
}

uint64_t sub_62A18()
{
  type metadata accessor for LiveCaptionsTextView();

  return sub_6173C();
}

unint64_t sub_62A98()
{
  result = qword_FA928;
  if (!qword_FA928)
  {
    sub_5520(&qword_FA918);
    sub_D150(&qword_FA930, &qword_FA938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA928);
  }

  return result;
}

uint64_t sub_62B68()
{
  v1 = (type metadata accessor for LiveCaptionsTextView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[12];
  sub_2E50(&qword_F8398);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_B9E30();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_62CD4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for LiveCaptionsTextView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_62D58()
{
  result = qword_FA970;
  if (!qword_FA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA970);
  }

  return result;
}

unint64_t sub_62DAC()
{
  result = qword_FA978;
  if (!qword_FA978)
  {
    sub_5520(&qword_FA958);
    sub_3B098();
    sub_62E70(&qword_F8940, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_FA978);
  }

  return result;
}

uint64_t sub_62E70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LiveCaptionsRootViewController()
{
  result = qword_FA998;
  if (!qword_FA998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_62FAC(uint64_t a1)
{
  *(a1 + qword_FA990) = sub_6349C;
  sub_BB640();
  __break(1u);
}

id sub_63020()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for LiveCaptionsRootViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_630B4(void *a1)
{
  v1 = a1;
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v2, v1);

  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v1];

  v5.receiver = v1;
  v5.super_class = type metadata accessor for LiveCaptionsRootViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_63150()
{
  v1 = sub_2E50(&qword_F9FD0);
  __chkstk_darwin(v1 - 8);
  v3 = (&v13 - v2);
  v4 = type metadata accessor for LiveCaptionsRootViewController();
  v13.receiver = v0;
  v13.super_class = v4;
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];

    sub_8DA5C(v3);
    v8 = type metadata accessor for LiveCaptionsRootView();
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
    sub_BA380();
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    v10 = *&v0[qword_FA990];
    v11 = sub_BAFA0();
    CFNotificationCenterAddObserver(v9, v0, v10, v11, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v12 = [objc_opt_self() defaultCenter];
    if (qword_F82F0 != -1)
    {
      swift_once();
    }

    [v12 addObserver:v0 selector:? name:? object:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_63384(void *a1)
{
  v1 = a1;
  sub_63150();
}

double sub_633CC(void *a1, uint64_t a2, uint64_t a3)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for LiveCaptionsRootViewController();
  v4 = v8.receiver;
  objc_msgSendSuper2(&v8, "viewWillDisappear:", a3);
  if (qword_F8258 != -1)
  {
    swift_once();
  }

  v5 = static LiveSpeechCaptionsViewsCoordinator.shared;

  v6 = (v5 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsFrame);
  result = 0.0;
  *v6 = 0u;
  v6[1] = 0u;
  *(v5 + OBJC_IVAR____TtC19LiveSpeechUIService34LiveSpeechCaptionsViewsCoordinator_liveCaptionsWindowState) = 0;
  return result;
}

void sub_6349C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    _AXSLiveTranscriptionSetEnabled();
  }
}

void sub_634E4()
{
  v1 = v0;
  v2 = sub_B8FE0();
  if (v2 && (v16[0] = v2, sub_2E50(&qword_FA9E8), sub_2E50(&qword_FA9F0), (swift_dynamicCast() & 1) != 0))
  {
    v3 = v15;
  }

  else
  {
    v3 = sub_5348(_swiftEmptyArrayStorage);
  }

  sub_B9840();
  sub_BB550();
  if (*(v3 + 16) && (sub_7D058(v16), (v4 & 1) != 0))
  {
    swift_unknownObjectRetain();
    sub_3ADA0(v16);
    if (swift_dynamicCast() && (v14 & 1) != 0)
    {
      v5 = 0;
      v6 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    sub_3ADA0(v16);
  }

  v6 = 0;
  v5 = 18;
LABEL_12:
  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = v7;
  v9 = [v7 layer];

  [v9 setDisableUpdateMask:v5];
  v10 = sub_BB320();
  v11 = AXLogLiveTranscription();
  if (!v11)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v12 = v11;

  if (os_log_type_enabled(v12, v10))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v6;
    _os_log_impl(&dword_0, v12, v10, "LiveCaptionsRootViewController: Screenshot mask is updated, canMakeScreenshot: %{BOOL}d", v13, 8u);
  }
}

uint64_t sub_63714(void *a1)
{
  v2 = sub_B8FF0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B8FC0();
  v6 = a1;
  sub_634E4();

  return (*(v3 + 8))(v5, v2);
}

uint64_t *AXLTSettingsManager.shared.unsafeMutableAddressor()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  return &static AXLTSettingsManager.shared;
}

NSNotificationName *textFontChangedNotification.unsafeMutableAddressor()
{
  if (qword_F82D0 != -1)
  {
    swift_once();
  }

  return &textFontChangedNotification;
}

NSNotificationName *canClearCaptionsChangedNotification.unsafeMutableAddressor()
{
  if (qword_F82E0 != -1)
  {
    swift_once();
  }

  return &canClearCaptionsChangedNotification;
}

NSNotificationName *canCopyCaptionsChangedNotification.unsafeMutableAddressor()
{
  if (qword_F82E8 != -1)
  {
    swift_once();
  }

  return &canCopyCaptionsChangedNotification;
}

NSNotificationName *pausedChangedNotification.unsafeMutableAddressor()
{
  if (qword_F82B8 != -1)
  {
    swift_once();
  }

  return &pausedChangedNotification;
}

NSNotificationName *nubbitIdleOpacityChangedNotification.unsafeMutableAddressor()
{
  if (qword_F82D8 != -1)
  {
    swift_once();
  }

  return &nubbitIdleOpacityChangedNotification;
}

NSNotificationName *micOnChangedNotification.unsafeMutableAddressor()
{
  if (qword_F82B0 != -1)
  {
    swift_once();
  }

  return &micOnChangedNotification;
}

NSNotificationName *textColorChangedNotification.unsafeMutableAddressor()
{
  if (qword_F82C0 != -1)
  {
    swift_once();
  }

  return &textColorChangedNotification;
}

NSNotificationName *canMakeScreenshotChangedNotification.unsafeMutableAddressor()
{
  if (qword_F82F0 != -1)
  {
    swift_once();
  }

  return &canMakeScreenshotChangedNotification;
}

NSString *sub_63B40()
{
  result = sub_BAFA0();
  micOnChangedNotification = result;
  return result;
}

NSString *sub_63B78()
{
  result = sub_BAFA0();
  pausedChangedNotification = result;
  return result;
}

NSString *sub_63BB0()
{
  result = sub_BAFA0();
  textColorChangedNotification = result;
  return result;
}

NSString *sub_63BE8()
{
  result = sub_BAFA0();
  backgroundColorChangedNotification = result;
  return result;
}

NSNotificationName *backgroundColorChangedNotification.unsafeMutableAddressor()
{
  if (qword_F82C8 != -1)
  {
    swift_once();
  }

  return &backgroundColorChangedNotification;
}

NSString *sub_63C70()
{
  result = sub_BAFA0();
  textFontChangedNotification = result;
  return result;
}

NSString *sub_63CA8()
{
  result = sub_BAFA0();
  nubbitIdleOpacityChangedNotification = result;
  return result;
}

NSString *sub_63CE0()
{
  result = sub_BAFA0();
  canClearCaptionsChangedNotification = result;
  return result;
}

NSString *sub_63D18()
{
  result = sub_BAFA0();
  canCopyCaptionsChangedNotification = result;
  return result;
}

NSString *sub_63D50()
{
  result = sub_BAFA0();
  canMakeScreenshotChangedNotification = result;
  return result;
}

uint64_t sub_63DA0()
{
  result = sub_BAAF0();
  qword_FA9F8 = result;
  return result;
}

uint64_t sub_63DC0()
{
  result = sub_BAAE0();
  qword_FAA00 = result;
  return result;
}

UIFontTextStyle *titleFontStyle.unsafeMutableAddressor()
{
  if (qword_F8308 != -1)
  {
    swift_once();
  }

  return &titleFontStyle;
}

id sub_63E88(uint64_t a1, void *a2, void **a3, void **a4)
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

UIFontTextStyle *textFontStyle.unsafeMutableAddressor()
{
  if (qword_F8310 != -1)
  {
    swift_once();
  }

  return &textFontStyle;
}

UIFontTextStyle *buttonFontStyle.unsafeMutableAddressor()
{
  if (qword_F8318 != -1)
  {
    swift_once();
  }

  return &buttonFontStyle;
}

uint64_t AXLTSettingsManager.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  return sub_57A0(v1 + v3, a1, &qword_FA5A0);
}

uint64_t AXLTSettingsManager.locale.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  sub_658B4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_6419C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t AXLTSettingsManager.titleFont.getter()
{
  sub_64C40();

  return sub_BA720();
}

uint64_t AXLTSettingsManager.textFont.getter()
{
  if (qword_F8310 != -1)
  {
    swift_once();
  }

  v0 = textFontStyle;
  v1 = AXLTSettingsManager.contentCategory.getter();
  sub_64E70(v0, UIFontWeightBold);

  return sub_BA720();
}

uint64_t sub_64328(double *a1)
{
  v2 = AXLTSettingsManager.contentCategory.getter();
  v3 = qword_F8378;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_B9E30();
  sub_3CB8(v5, qword_100DA8);
  v6 = sub_1F22C();
  v7 = sub_BB420();

  if (v7)
  {
    v8 = sub_1F22C();

    v4 = v8;
  }

  if (qword_F8318 != -1)
  {
    swift_once();
  }

  sub_64E70(buttonFontStyle, *a1);

  return sub_BA720();
}

uint64_t AXLTSettingsManager.buttonDynamicTypeSize.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_2E50(&qword_FA200);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v5 = sub_B9E30();
  v6 = sub_3CB8(v5, qword_100DA8);
  v7 = *(v5 - 8);
  (*(v7 + 16))(v4, v6, v5);
  (*(v7 + 56))(v4, 0, 1, v5);
  AXLTSettingsManager.dynamicTypeSize(_:)(v4, a1);
  return sub_C5E8(v4, &qword_FA200);
}

double AXLTSettingsManager.buttonScaledHeight.getter()
{
  v0 = sub_2E50(&qword_FA200);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_B9E30();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_F8308 != -1)
  {
    swift_once();
  }

  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:titleFontStyle];
  if (qword_F8378 != -1)
  {
    swift_once();
  }

  v8 = sub_3CB8(v3, qword_100DA8);
  (*(v4 + 16))(v2, v8, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  AXLTSettingsManager.dynamicTypeSize(_:)(v2, v6);
  sub_C5E8(v2, &qword_FA200);
  v9 = sub_1F22C();
  (*(v4 + 8))(v6, v3);
  v10 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v9];

  [v7 scaledValueForValue:v10 compatibleWithTraitCollection:32.0];
  v12 = v11;

  return v12;
}

NSString *AXLTSettingsManager.contentCategory.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager__contentCategory;
  v2 = *(v0 + OBJC_IVAR___AXLTSettingsManager__contentCategory);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___AXLTSettingsManager__contentCategory);
  }

  else
  {
    v4 = _AXSLiveCaptionsCopyContentSizeCategoryName();
    if (v4)
    {
      v5 = v4;
      sub_BAFD0();
      v6 = sub_BAFA0();

      v7 = *(v0 + v1);
      *(v0 + v1) = v6;
      v8 = v6;
    }

    else
    {
      v9 = _AXSCopyPreferredContentSizeCategoryNameGlobal();
      if (v9)
      {
        v10 = v9;
        sub_BAFD0();
        v11 = sub_BAFA0();
      }

      else
      {
        v11 = UIContentSizeCategoryLarge;
      }

      v7 = *(v0 + v1);
      *(v0 + v1) = v11;
      v8 = v11;
    }

    v3 = v8;
  }

  v12 = v2;
  return v3;
}

uint64_t AXLTSettingsManager.boldText.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager__boldText;
  v2 = *(v0 + OBJC_IVAR___AXLTSettingsManager__boldText);
  if (v2 == 2)
  {
    v3 = _AXSLiveCaptionsBoldTextEnabled();
    if (v3 == -1)
    {
      LOBYTE(v2) = _AXSEnhanceTextLegibilityEnabled() != 0;
    }

    else
    {
      LOBYTE(v2) = v3 == 1;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t AXLTSettingsManager.dynamicTypeSize(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_B9E30();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2E50(&qword_FA200);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  AXLTSettingsManager.contentCategory.getter();
  sub_B9E40();
  v14 = *(v5 + 48);
  if (v14(v13, 1, v4) == 1)
  {
    (*(v5 + 104))(a2, enum case for DynamicTypeSize.large(_:), v4);
    if (v14(v13, 1, v4) != 1)
    {
      sub_C5E8(v13, &qword_FA200);
    }
  }

  else
  {
    (*(v5 + 32))(a2, v13, v4);
  }

  sub_57A0(a1, v10, &qword_FA200);
  if (v14(v10, 1, v4) == 1)
  {
    return sub_C5E8(v10, &qword_FA200);
  }

  v16 = *(v5 + 32);
  v16(v7, v10, v4);
  sub_67EC4(&qword_F9250, &type metadata accessor for DynamicTypeSize);
  v17 = sub_BAF80();
  v18 = *(v5 + 8);
  if ((v17 & 1) == 0)
  {
    return v18(v7, v4);
  }

  v18(a2, v4);
  return (v16)(a2, v7, v4);
}

id sub_64C40()
{
  v9 = AXLTSettingsManager.contentCategory.getter();
  v0 = v9;
  v1 = sub_BB420();

  if (v1)
  {
    v2 = UIContentSizeCategoryAccessibilityExtraLarge;

    v9 = v2;
  }

  v3 = sub_35DD4(0, &qword_FAA70);
  __chkstk_darwin(v3);
  v4 = sub_BB3D0();
  v5 = objc_opt_self();
  if (qword_F8308 != -1)
  {
    v8 = v5;
    swift_once();
    v5 = v8;
  }

  v6 = [v5 preferredFontForTextStyle:titleFontStyle compatibleWithTraitCollection:v4];

  return v6;
}

uint64_t sub_64D94(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = *a2;
  sub_67E6C(a1, *(a1 + 24));
  v6 = v5;
  sub_B9A70();
  v7 = OBJC_IVAR___AXLTSettingsManager__boldText;
  if (*(a3 + OBJC_IVAR___AXLTSettingsManager__boldText) == 2)
  {
    v8 = _AXSLiveCaptionsBoldTextEnabled();
    if (v8 == -1)
    {
      *(a3 + v7) = _AXSEnhanceTextLegibilityEnabled() != 0;
    }

    else
    {
      *(a3 + v7) = v8 == 1;
    }
  }

  sub_67E6C(a1, *(a1 + 24));
  return sub_B9A60();
}

id sub_64E70(uint64_t a1, double a2)
{
  v3 = v2;
  sub_35DD4(0, &qword_FAA70);
  v25 = v2;
  v24 = sub_BB3D0();
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:v24];
  sub_2E50(&qword_FAA78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C0020;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_2E50(&qword_FAA80);
  v8 = swift_initStackObject();
  *(v8 + 32) = UIFontWeightTrait;
  *(v8 + 16) = xmmword_C0020;
  v9 = OBJC_IVAR___AXLTSettingsManager__boldText;
  v10 = *(v25 + OBJC_IVAR___AXLTSettingsManager__boldText);
  if (v10 == 2)
  {
    v11 = v6;
    v12 = UIFontDescriptorTraitsAttribute;
    v13 = UIFontWeightTrait;
    v14 = _AXSLiveCaptionsBoldTextEnabled();
    if (v14 == -1)
    {
      LOBYTE(v10) = _AXSEnhanceTextLegibilityEnabled() != 0;
    }

    else
    {
      LOBYTE(v10) = v14 == 1;
    }

    *(v3 + v9) = v10;
  }

  else
  {
    v15 = v6;
    v16 = UIFontDescriptorTraitsAttribute;
    v17 = UIFontWeightTrait;
  }

  v18 = UIFontWeightBlack;
  if ((v10 & 1) == 0)
  {
    v18 = a2;
  }

  *(v8 + 40) = v18;
  v19 = sub_495C(v8);
  swift_setDeallocating();
  sub_C5E8(v8 + 32, &qword_FAA88);
  *(inited + 64) = sub_2E50(&qword_FAA90);
  *(inited + 40) = v19;
  sub_4A4C(inited);
  swift_setDeallocating();
  sub_C5E8(inited + 32, &qword_F8500);
  type metadata accessor for AttributeName(0);
  sub_67EC4(&qword_F8620, type metadata accessor for AttributeName);
  isa = sub_BAF30().super.isa;

  v21 = [v6 fontDescriptorByAddingAttributes:isa];

  v22 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
  return v22;
}

uint64_t sub_65170(uint64_t a1, void *a2, uint64_t a3)
{
  sub_67E6C(a1, *(a1 + 24));
  v6 = a2;
  sub_B9A70();
  v7 = OBJC_IVAR___AXLTSettingsManager__boldText;
  if (*(a3 + OBJC_IVAR___AXLTSettingsManager__boldText) == 2)
  {
    v8 = _AXSLiveCaptionsBoldTextEnabled();
    if (v8 == -1)
    {
      *(a3 + v7) = _AXSEnhanceTextLegibilityEnabled() != 0;
    }

    else
    {
      *(a3 + v7) = v8 == 1;
    }
  }

  sub_67E6C(a1, *(a1 + 24));
  return sub_B9A60();
}

double AXLTSettingsManager.titleFontPointSize.getter()
{
  v0 = sub_64C40();
  [v0 pointSize];
  v2 = v1;

  return v2;
}

double AXLTSettingsManager.titleLineHeight.getter()
{
  v0 = sub_64C40();
  [v0 lineHeight];
  v2 = v1;

  return v2;
}

double AXLTSettingsManager.textLineHeight.getter()
{
  if (qword_F8310 != -1)
  {
    swift_once();
  }

  v0 = textFontStyle;
  v1 = AXLTSettingsManager.contentCategory.getter();
  v2 = sub_64E70(v0, UIFontWeightBold);

  [v2 lineHeight];
  v4 = v3;

  return v4;
}

double AXLTSettingsManager.buttonFontLineHeight.getter()
{
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

  v7 = sub_64E70(buttonFontStyle, UIFontWeightBold);

  [v7 lineHeight];
  v9 = v8;

  return v9;
}

uint64_t AXLTSettingsManager.isMicOn.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTSettingsManager.isMicOn.setter(char a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AXLTSettingsManager.isPaused.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTSettingsManager.isPaused.setter(char a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AXLTSettingsManager.transcribeCalls.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTSettingsManager.transcribeCalls.setter(char a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double AXLTSettingsManager.nubbitIdleOpacity.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTSettingsManager.nubbitIdleOpacity.setter(double a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_65880()
{
  result = [objc_allocWithZone(type metadata accessor for AXLTSettingsManager()) init];
  static AXLTSettingsManager.shared = result;
  return result;
}

uint64_t sub_658B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2E50(&qword_FA5A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static AXLTSettingsManager.shared.getter()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v1 = static AXLTSettingsManager.shared;

  return v1;
}

void sub_659DC()
{
  v1 = sub_2E50(&qword_FA5A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v66 - v2;
  v4 = OBJC_IVAR___AXLTSettingsManager_locale;
  v5 = sub_B92F0();
  v6 = *(v5 - 8);
  v67 = *(v6 + 56);
  v68 = v5;
  v66 = v6 + 56;
  v67(&v0[v4], 1, 1);
  v7 = OBJC_IVAR___AXLTSettingsManager_textColor;
  if (qword_F82F8 != -1)
  {
    swift_once();
  }

  *&v0[v7] = qword_FA9F8;
  v8 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
  v9 = qword_F8300;

  if (v9 != -1)
  {
    swift_once();
  }

  *&v0[v8] = qword_FAA00;
  *&v0[OBJC_IVAR___AXLTSettingsManager__contentCategory] = 0;
  v0[OBJC_IVAR___AXLTSettingsManager__boldText] = 2;
  v0[OBJC_IVAR___AXLTSettingsManager_isMicOn] = 1;
  v10 = OBJC_IVAR___AXLTSettingsManager_isPaused;

  v0[v10] = _AXSLiveTranscriptionPaused() != 0;
  v11 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
  v0[v11] = _AXSLiveTranscriptionInCallEnabled() != 0;
  *&v0[OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity] = 0x3FE0000000000000;
  *&v0[OBJC_IVAR___AXLTSettingsManager_micStateChanged] = sub_661F8;
  *&v0[OBJC_IVAR___AXLTSettingsManager_pausedStateChanged] = sub_66260;
  *&v0[OBJC_IVAR___AXLTSettingsManager_transcribeCallsChanged] = sub_6628C;
  *&v0[OBJC_IVAR___AXLTSettingsManager_fontChanged] = sub_66330;
  *&v0[OBJC_IVAR___AXLTSettingsManager_textColorChanged] = sub_66348;
  *&v0[OBJC_IVAR___AXLTSettingsManager_backgroundColorChanged] = sub_663C4;
  *&v0[OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacityChanged] = sub_663DC;
  *&v0[OBJC_IVAR___AXLTSettingsManager_transcriptionEnabledChanged] = sub_663F4;
  *&v0[OBJC_IVAR___AXLTSettingsManager_selectedLocaleChanged] = sub_66424;
  v12 = type metadata accessor for AXLTSettingsManager();
  v69.receiver = v0;
  v69.super_class = v12;
  v13 = objc_msgSendSuper2(&v69, "init");
  _AXSLiveTranscriptionSetMicOn();
  v14 = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionMicOnDidChangeNotification)
  {
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  v16 = *&v13[OBJC_IVAR___AXLTSettingsManager_micStateChanged];
  v17 = kAXSLiveTranscriptionMicOnDidChangeNotification;
  CFNotificationCenterAddObserver(v15, 0, v16, v17, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionPausedDidChangeNotification)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = v18;
  v20 = *&v13[OBJC_IVAR___AXLTSettingsManager_pausedStateChanged];
  v21 = kAXSLiveTranscriptionPausedDidChangeNotification;
  CFNotificationCenterAddObserver(v19, 0, v20, v21, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v22 = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionInCallEnabledDidChangeNotification)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;
  v24 = *&v13[OBJC_IVAR___AXLTSettingsManager_transcribeCallsChanged];
  v25 = kAXSLiveTranscriptionInCallEnabledDidChangeNotification;
  CFNotificationCenterAddObserver(v23, 0, v24, v25, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v26 = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionTextColorDidChangeNotification)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = v26;
  v28 = *&v13[OBJC_IVAR___AXLTSettingsManager_textColorChanged];
  v29 = kAXSLiveTranscriptionTextColorDidChangeNotification;
  CFNotificationCenterAddObserver(v27, 0, v28, v29, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v30 = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionBackgroundColorDidChangeNotification)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = v30;
  v32 = *&v13[OBJC_IVAR___AXLTSettingsManager_backgroundColorChanged];
  v33 = kAXSLiveTranscriptionBackgroundColorDidChangeNotification;
  CFNotificationCenterAddObserver(v31, 0, v32, v33, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v34 = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveCaptionsNubbitIdleOpacityDidChangeNotification)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = v34;
  v36 = *&v13[OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacityChanged];
  v37 = kAXSLiveCaptionsNubbitIdleOpacityDidChangeNotification;
  CFNotificationCenterAddObserver(v35, 0, v36, v37, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v38 = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSApplePreferredContentSizeCategoryNotification)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  v40 = OBJC_IVAR___AXLTSettingsManager_fontChanged;
  v41 = *&v13[OBJC_IVAR___AXLTSettingsManager_fontChanged];
  v42 = kAXSApplePreferredContentSizeCategoryNotification;
  CFNotificationCenterAddObserver(v39, 0, v41, v42, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v43 = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveCaptionsContentSizeCategoryNameChangeNotification)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v44 = v43;
  v45 = *&v13[v40];
  v46 = kAXSLiveCaptionsContentSizeCategoryNameChangeNotification;
  CFNotificationCenterAddObserver(v44, 0, v45, v46, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v47 = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSEnhanceTextLegibilityChangedNotification)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v48 = v47;
  v49 = *&v13[v40];
  v50 = kAXSEnhanceTextLegibilityChangedNotification;
  CFNotificationCenterAddObserver(v48, 0, v49, v50, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v51 = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveCaptionsBoldTextChangeNotification)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v52 = v51;
  v53 = *&v13[v40];
  v54 = kAXSLiveCaptionsBoldTextChangeNotification;
  CFNotificationCenterAddObserver(v52, 0, v53, v54, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v55 = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionEnabledDidChangeNotification)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v56 = v55;
  v57 = *&v13[OBJC_IVAR___AXLTSettingsManager_transcriptionEnabledChanged];
  v58 = kAXSLiveTranscriptionEnabledDidChangeNotification;
  CFNotificationCenterAddObserver(v56, 0, v57, v58, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v59 = CFNotificationCenterGetDarwinNotifyCenter();
  v60 = *&v13[OBJC_IVAR___AXLTSettingsManager_selectedLocaleChanged];
  v61 = [objc_opt_self() sharedInstance];
  v62 = [v61 liveCaptionsSelectedLocaleChangedNotification];

  if (!v62)
  {
LABEL_31:
    __break(1u);
    return;
  }

  CFNotificationCenterAddObserver(v59, 0, v60, v62, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_66AF4();
  sub_BB2C0();
  v63 = sub_BB2B0();
  v64 = [v63 liveCaptionsSelectedLocaleIdentifier];

  if (v64)
  {
    sub_BAFD0();

    sub_B9220();
    (v67)(v3, 0, 1, v68);
    v65 = OBJC_IVAR___AXLTSettingsManager_locale;
    swift_beginAccess();
    sub_658B4(v3, &v13[v65]);
    swift_endAccess();
  }

  sub_6735C();
  sub_677F8();
  sub_6746C();
}

void sub_661F8()
{
  if (qword_F8320 != -1)
  {
    swift_once();
  }

  v0 = _AXSLiveTranscriptionMicOn() != 0;
  sub_6643C(v0, 0);
}

uint64_t sub_662B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(void), uint64_t (*a7)(_BOOL8))
{
  if (qword_F8320 != -1)
  {
    v10 = a6;
    swift_once();
    a6 = v10;
  }

  v8 = a6() != 0;
  return a7(v8);
}

uint64_t sub_66360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (qword_F8320 != -1)
  {
    v7 = a6;
    swift_once();
    a6 = v7;
  }

  return a6();
}

uint64_t sub_663F4()
{
  if (qword_F8320 != -1)
  {
    return swift_once();
  }

  return result;
}

void sub_6643C(char a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = sub_BB320();
    v6 = AXLogLiveTranscription();
    if (!v6)
    {
      __break(1u);
      goto LABEL_17;
    }

    v7 = v6;
    if (os_log_type_enabled(v6, v5))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1 & 1;
      _os_log_impl(&dword_0, v7, v5, "LiveCaptions SettingsManager: forced save MicOn state: %{BOOL}d", v8, 8u);
    }

    _AXSLiveTranscriptionSetMicOn();
  }

  v9 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  if (*(v3 + v9) != (a1 & 1))
  {
    v10 = sub_BB320();
    v11 = AXLogLiveTranscription();
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(v11, v10))
      {
        v13 = swift_slowAlloc();
        *v13 = 67109120;
        *(v13 + 4) = a1 & 1;
        _os_log_impl(&dword_0, v12, v10, "LiveCaptions SettingsManager: update MicOn state: %{BOOL}d", v13, 8u);
      }

      *(v3 + v9) = a1 & 1;
      goto LABEL_11;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_11:
  if (qword_F82A0 != -1)
  {
    swift_once();
  }

  sub_57AEC();
  v14 = [objc_opt_self() defaultCenter];
  if (qword_F82B0 != -1)
  {
    swift_once();
  }

  v15 = micOnChangedNotification;
  sub_2E50(&unk_FA5A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C0020;
  v20 = sub_B9840();
  v21 = v17;
  sub_BB550();
  v18 = *(v3 + v9);
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = v18;
  sub_5108(inited);
  swift_setDeallocating();
  sub_C5E8(inited + 32, &qword_F84E0);
  isa = sub_BAF30().super.isa;

  [v14 postNotificationName:v15 object:0 userInfo:{isa, v20, v21}];
}

void sub_66748(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  swift_beginAccess();
  if (*(v2 + v5) != v4)
  {
    v6 = sub_BB320();
    v7 = AXLogLiveTranscription();
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    if (os_log_type_enabled(v7, v6))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = a1 & 1;
      _os_log_impl(&dword_0, v8, v6, "LiveCaptions SettingsManager: update Paused state: %{BOOL}d", v9, 8u);
    }

    *(v2 + v5) = a1 & 1;
    if (qword_F82A0 != -1)
    {
      swift_once();
    }

    sub_580A8();
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_F82B8 != -1)
  {
    swift_once();
  }

  v11 = pausedChangedNotification;
  sub_2E50(&unk_FA5A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C0020;
  v16 = sub_B9840();
  v17 = v13;
  sub_BB550();
  v14 = *(v2 + v5);
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = v14;
  sub_5108(inited);
  swift_setDeallocating();
  sub_C5E8(inited + 32, &qword_F84E0);
  isa = sub_BAF30().super.isa;

  [v10 postNotificationName:v11 object:0 userInfo:{isa, v16, v17}];
}

void sub_669C0(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___AXLTSettingsManager_transcribeCalls;
  swift_beginAccess();
  if (*(v1 + v4) != v3)
  {
    v5 = sub_BB320();
    v6 = AXLogLiveTranscription();
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, v5))
      {
        v8 = swift_slowAlloc();
        *v8 = 67109120;
        *(v8 + 4) = a1 & 1;
        _os_log_impl(&dword_0, v7, v5, "LiveCaptions SettingsManager: update Transcribe Calls state: %{BOOL}d", v8, 8u);
      }

      *(v1 + v4) = a1 & 1;
      if (qword_F82A0 != -1)
      {
        swift_once();
      }

      sub_5822C();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_66AF4()
{
  v1 = _AXSLiveCaptionsNubbitIdleOpacity();
  v2 = v1;
  if (v1)
  {
    [v1 floatValue];
    v4 = v3;
    v5 = OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity;
    swift_beginAccess();
    *(v0 + v5) = v4;
  }

  v6 = [objc_opt_self() defaultCenter];
  if (qword_F82D8 != -1)
  {
    swift_once();
  }

  v7 = nubbitIdleOpacityChangedNotification;
  sub_2E50(&unk_FA5A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C0020;
  sub_B9840();
  sub_BB550();
  v9 = OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity;
  swift_beginAccess();
  v10 = *(v0 + v9);
  *(inited + 96) = &type metadata for CGFloat;
  *(inited + 72) = v10;
  sub_5108(inited);
  swift_setDeallocating();
  sub_C5E8(inited + 32, &qword_F84E0);
  isa = sub_BAF30().super.isa;

  [v6 postNotificationName:v7 object:0 userInfo:isa];
}

NSObject *sub_66D14()
{
  v1 = v0;
  v2 = sub_B92F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2E50(&qword_FAA60);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v37 = sub_2E50(&qword_FA5A0);
  v8 = __chkstk_darwin(v37);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - v11;
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  v39 = v14;
  sub_57A0(v0 + v15, v14, &qword_FA5A0);
  sub_BB2C0();
  v16 = sub_BB2B0();
  v17 = [v16 liveCaptionsSelectedLocaleIdentifier];

  if (v17)
  {
    sub_BAFD0();

    sub_B9220();
    (*(v3 + 56))(v12, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v12, 1, 1, v2);
  }

  swift_beginAccess();
  sub_658B4(v12, v1 + v15);
  swift_endAccess();
  v18 = *(v5 + 48);
  v19 = v39;
  sub_57A0(v39, v7, &qword_FA5A0);
  sub_57A0(v1 + v15, &v7[v18], &qword_FA5A0);
  v20 = *(v3 + 48);
  if (v20(v7, 1, v2) == 1)
  {
    if (v20(&v7[v18], 1, v2) == 1)
    {
      sub_C5E8(v7, &qword_FA5A0);
      return sub_C5E8(v19, &qword_FA5A0);
    }

    goto LABEL_9;
  }

  v21 = v38;
  sub_57A0(v7, v38, &qword_FA5A0);
  if (v20(&v7[v18], 1, v2) == 1)
  {
    (*(v3 + 8))(v21, v2);
    v19 = v39;
LABEL_9:
    sub_C5E8(v7, &qword_FAA60);
    goto LABEL_10;
  }

  v32 = &v7[v18];
  v33 = v36;
  (*(v3 + 32))(v36, v32, v2);
  sub_67EC4(&qword_FAA68, &type metadata accessor for Locale);
  v34 = sub_BAF90();
  v35 = *(v3 + 8);
  v35(v33, v2);
  v35(v21, v2);
  sub_C5E8(v7, &qword_FA5A0);
  v19 = v39;
  if (v34)
  {
    return sub_C5E8(v19, &qword_FA5A0);
  }

LABEL_10:
  v22 = sub_BB320();
  result = AXLogLiveTranscription();
  if (result)
  {
    v24 = result;
    if (os_log_type_enabled(result, v22))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40[0] = v26;
      *v25 = 136315138;
      sub_57A0(v1 + v15, v12, &qword_FA5A0);
      v27 = sub_BAFF0();
      v29 = sub_7A1D8(v27, v28, v40);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_0, v24, v22, "LiveCaptions SettingsManager: update SelectedLocale: %s", v25, 0xCu);
      sub_28020(v26);
    }

    if (qword_F82A0 != -1)
    {
      swift_once();
    }

    v30 = static AXLTCaptionsProvider.shared;
    v31 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
    swift_beginAccess();
    if (*(v30 + v31) == 1)
    {
      if (qword_F82A8 != -1)
      {
        swift_once();
      }

      if (byte_FA364 == 1)
      {
        sub_4DA28();
        sub_4CE3C();
      }

      else
      {
        sub_4E7F8();
        sub_4DC5C();
      }
    }

    return sub_C5E8(v19, &qword_FA5A0);
  }

  __break(1u);
  return result;
}

void sub_6735C()
{
  v1 = *(v0 + OBJC_IVAR___AXLTSettingsManager__contentCategory);
  *(v0 + OBJC_IVAR___AXLTSettingsManager__contentCategory) = 0;

  *(v0 + OBJC_IVAR___AXLTSettingsManager__boldText) = 2;
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (qword_F82D0 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:textFontChangedNotification object:0 userInfo:0];
}

void sub_6746C()
{
  v1 = v0;
  v2 = _AXSLiveTranscriptionCopyTextColorData();
  if (v2 && (v3 = v2, sub_35DD4(0, &qword_FAA58), sub_35DD4(0, &qword_F99F0), v4 = v3, v5 = sub_B91C0(), v7 = v6, v17 = sub_BB350(), v4, sub_67E10(v5, v7), v4, v17))
  {
    v10 = v17;
    v18 = sub_BAB40();
    v19 = OBJC_IVAR___AXLTSettingsManager_textColor;
    swift_beginAccess();
    *(v1 + v19) = v18;
  }

  else
  {
    if (qword_F82F8 != -1)
    {
      swift_once();
    }

    v8 = qword_FA9F8;
    v9 = OBJC_IVAR___AXLTSettingsManager_textColor;
    swift_beginAccess();
    *(v1 + v9) = v8;

    v10 = 0;
  }

  v11 = [objc_opt_self() defaultCenter];
  if (qword_F82C0 != -1)
  {
    swift_once();
  }

  v12 = textColorChangedNotification;
  sub_2E50(&unk_FA5A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C0020;
  sub_B9840();
  sub_BB550();
  v14 = OBJC_IVAR___AXLTSettingsManager_textColor;
  swift_beginAccess();
  v15 = *(v1 + v14);
  *(inited + 96) = &type metadata for Color;
  *(inited + 72) = v15;

  sub_5108(inited);
  swift_setDeallocating();
  sub_C5E8(inited + 32, &qword_F84E0);
  isa = sub_BAF30().super.isa;

  [v11 postNotificationName:v12 object:0 userInfo:isa];
}

void sub_677F8()
{
  v1 = v0;
  v2 = _AXSLiveTranscriptionCopyBackgroundColorData();
  if (v2 && (v3 = v2, sub_35DD4(0, &qword_FAA58), sub_35DD4(0, &qword_F99F0), v4 = v3, v5 = sub_B91C0(), v7 = v6, v17 = sub_BB350(), v4, sub_67E10(v5, v7), v4, v17))
  {
    v10 = v17;
    v18 = sub_BAB40();
    v19 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
    swift_beginAccess();
    *(v1 + v19) = v18;
  }

  else
  {
    if (qword_F8300 != -1)
    {
      swift_once();
    }

    v8 = qword_FAA00;
    v9 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
    swift_beginAccess();
    *(v1 + v9) = v8;

    v10 = 0;
  }

  v11 = [objc_opt_self() defaultCenter];
  if (qword_F82C8 != -1)
  {
    swift_once();
  }

  v12 = backgroundColorChangedNotification;
  sub_2E50(&unk_FA5A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_C0020;
  sub_B9840();
  sub_BB550();
  v14 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
  swift_beginAccess();
  v15 = *(v1 + v14);
  *(inited + 96) = &type metadata for Color;
  *(inited + 72) = v15;

  sub_5108(inited);
  swift_setDeallocating();
  sub_C5E8(inited + 32, &qword_F84E0);
  isa = sub_BAF30().super.isa;

  [v11 postNotificationName:v12 object:0 userInfo:isa];
}

id AXLTSettingsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXLTSettingsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_67C3C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AXLTSettingsManager();
  result = sub_B9AA0();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AXLTSettingsManager()
{
  result = qword_FAA40;
  if (!qword_FAA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_67CD0()
{
  sub_67DB8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_67DB8()
{
  if (!qword_FAA50)
  {
    sub_B92F0();
    v0 = sub_BB4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_FAA50);
    }
  }
}

uint64_t sub_67E10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_67E6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_67EC4(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String __swiftcall LiveSpeechLocString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_F8328 != -1)
  {
    swift_once();
  }

  if (qword_FAA98)
  {
    v3 = qword_FAA98;
    v4 = sub_BAFA0();
    v5 = sub_BAFA0();
    v6 = sub_BAFA0();
    v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

    countAndFlagsBits = sub_BAFD0();
    object = v8;
  }

  else
  {
  }

  v9 = countAndFlagsBits;
  v10 = object;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

Swift::String __swiftcall LiveSpeechClippedTextToMaxLength(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_BB040();

  if (v3 >= 2001)
  {
    sub_6814C(2000);

    countAndFlagsBits = sub_BB020();
    object = v4;
  }

  v5 = countAndFlagsBits;
  v6 = object;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

void sub_680D0()
{
  v0 = sub_BAFA0();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  qword_FAA98 = v1;
}

uint64_t sub_6814C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_BB050();

    return sub_BB0A0();
  }

  return result;
}

uint64_t LiveSpeechStore.currentSpeechContext.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1;
}

uint64_t LiveSpeechStore.commitTextToSpeechQueue(_:mode:preferredSpeechLanguage:interruptCurrentQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v37 = a6;
  v35 = a1;
  v36 = a4;
  v34 = a3;
  v9 = sub_B99C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v13 - 8);
  v38 = &v32[-v14];
  v15 = sub_6E7A8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v39 <= 0)
  {
    v17 = *&v6[OBJC_IVAR____TtC19LiveSpeechUIService15LiveSpeechStore____lazy_storage___callManager];
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v17;
    sub_B9B10();

    v16 = v39 > 0;
  }

  else
  {
    v16 = 1;
  }

  v33 = v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v39 <= 1u && !v39)
  {

LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v39) = 1;
    v20 = v6;
    sub_B9B20();
    goto LABEL_9;
  }

  v19 = sub_BB700();

  if (v19)
  {
    goto LABEL_8;
  }

LABEL_9:
  v21 = sub_BB1A0();
  (*(*(v21 - 8) + 56))(v38, 1, 1, v21);
  (*(v10 + 16))(&v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], v34, v9);
  sub_BB170();

  v22 = v6;

  v23 = sub_BB160();
  v24 = *(v10 + 80);
  v34 = a5;
  v25 = (v24 + 56) & ~v24;
  v26 = v25 + v11;
  v27 = swift_allocObject();
  *(v27 + 2) = v23;
  *(v27 + 3) = &protocol witness table for MainActor;
  v28 = v35;
  *(v27 + 4) = v22;
  *(v27 + 5) = v28;
  *(v27 + 6) = a2;
  (*(v10 + 32))(&v27[v25], v12, v9);
  v27[v26] = v33;
  v29 = &v27[v26 & 0xFFFFFFFFFFFFFFF8];
  v30 = v34;
  *(v29 + 1) = v36;
  *(v29 + 2) = v30;
  v29[24] = v37 & 1;
  sub_6A2B8(0, 0, v38, &unk_C1048, v27);
}

id LiveSpeechStore.selectedCategory.getter()
{
  v0 = LiveSpeechStore.categoryOptions.getter();
  v1 = v0;
  if (v0 >> 62)
  {
LABEL_19:
    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    v16 = sub_BB650();
  }

  else
  {
    v15 = v0 & 0xFFFFFFFFFFFFFF8;
    v16 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
  }

  v2 = 0;
  while (1)
  {
    if (v16 == v2)
    {

      return LiveSpeechStore.getRecentOrSavedCategory()();
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = sub_BB590();
    }

    else
    {
      if (v2 >= *(v15 + 16))
      {
        goto LABEL_18;
      }

      v4 = *(v1 + 8 * v2 + 32);
    }

    v5 = v4;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v6 = [v4 categoryID];
    v7 = sub_BAFD0();
    v9 = v8;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v10 = [v17 categoryID];

    v11 = sub_BAFD0();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      break;
    }

    v3 = sub_BB700();

    ++v2;
    if (v3)
    {
      goto LABEL_15;
    }
  }

LABEL_15:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v17;
}

unint64_t LiveSpeechStore.selectedCategoryPhrases.getter()
{
  v0 = LiveSpeechStore.selectedCategory.getter();
  v1 = [v0 phrases];

  sub_BB340();
  v2 = sub_BB0F0();

  v3 = LiveSpeechStore.selectedCategory.getter();
  v4 = [v3 isRecents];

  if (!v4)
  {
    return sub_70FF0(v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v18 > 2u)
  {
    v5 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v5 = qword_C1C68[v17];
  }

  v6 = sub_7E0DC(v5, v2);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_BB710();
  swift_unknownObjectRetain_n();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = &_swiftEmptyArrayStorage;
  }

  v15 = v14[2];

  if (__OFSUB__(v12 >> 1, v10))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v15 != (v12 >> 1) - v10)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_6:
    sub_7A7E8(v6, v8, v10, v12);
    v2 = v13;
LABEL_13:
    swift_unknownObjectRelease();
    return sub_70FF0(v2);
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v2)
  {
    v2 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  return sub_70FF0(v2);
}

id sub_68B2C(uint64_t a1)
{
  v2 = sub_B9A10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = LiveSpeechStore.selectedCategory.getter();
  v18 = 0;
  LODWORD(a1) = [v6 deletePhrase:a1 error:&v18];

  v7 = v18;
  if (a1)
  {

    return v7;
  }

  else
  {
    v17 = v18;
    v9 = v18;
    sub_B9170();

    swift_willThrow();
    sub_B95C0();
    swift_errorRetain();
    v10 = sub_B9A00();
    v11 = sub_BB300();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_BB770();
      v16 = sub_7A1D8(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_0, v10, v11, "Error occurred creating a phrase: %s", v12, 0xCu);
      sub_28020(v13);
    }

    else
    {
    }

    return (*(v3 + 8))(v5, v2);
  }
}

Swift::Void __swiftcall LiveSpeechStore.cycleNextInputMode()()
{
  sub_BAE20();
  sub_B9D80();
}

uint64_t sub_68E84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701602409;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E696B61657073;
    }

    else
    {
      v4 = 0x646573756170;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x616570536C6C6977;
    }

    else
    {
      v4 = 1701602409;
    }

    if (v3)
    {
      v5 = 0xE90000000000006BLL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x676E696B61657073;
  if (a2 != 2)
  {
    v8 = 0x646573756170;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x616570536C6C6977;
    v6 = 0xE90000000000006BLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_BB700();
  }

  return v11 & 1;
}

Swift::Void __swiftcall LiveSpeechStore.refreshCategories()()
{
  v1 = [objc_opt_self() categories];
  sub_BB3E0();
  sub_BB0F0();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v0;
  sub_B9B20();
}

Swift::Void __swiftcall LiveSpeechStore.sortCategories()()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_B9B00();
  sub_70AA4(v3);
  v2(v25, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v4 = v25[0];
  v5 = v25[0] & 0xFFFFFFFFFFFFFF8;
  if (v25[0] >> 62)
  {
LABEL_36:
    v6 = sub_BB650();
  }

  else
  {
    v6 = *(&dword_10 + (v25[0] & 0xFFFFFFFFFFFFFF8));
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {

      goto LABEL_16;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = sub_BB590();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = [v8 isSaved];

    if (v10)
    {
      break;
    }

    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_34;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = sub_B9B00();
  v13 = sub_6C2FC(v7);
  v12(v25, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v13;
  v15 = sub_B9B00();
  if (*v16 >> 62 && sub_BB650() < 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  sub_7E3B8(0, 0, v14);

  v15(v25, 0);

LABEL_16:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v4 = v25[0];
  v5 = v25[0] & 0xFFFFFFFFFFFFFF8;
  if (v25[0] >> 62)
  {
    v17 = sub_BB650();
  }

  else
  {
    v17 = *(&dword_10 + (v25[0] & 0xFFFFFFFFFFFFFF8));
  }

  v18 = 0;
  while (1)
  {
    if (v17 == v18)
    {

      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v19 = sub_BB590();
    }

    else
    {
      if (v18 >= *(v5 + 16))
      {
        goto LABEL_33;
      }

      v19 = *(v4 + 8 * v18 + 32);
    }

    v20 = v19;
    v21 = [v19 isRecents];

    if (v21)
    {
      break;
    }

    v11 = __OFADD__(v18++, 1);
    if (v11)
    {
      goto LABEL_35;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v22 = sub_B9B00();
  v23 = sub_6C2FC(v18);
  v22(v25, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v23;
  v1 = sub_B9B00();
  if (!(*v24 >> 62))
  {
LABEL_30:
    sub_7E3B8(0, 0, v14);

    v1(v25, 0);

    return;
  }

LABEL_40:
  if ((sub_BB650() & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

  __break(1u);
}

BOOL LiveSpeechStore.shouldShowSecondarySpeechPlaybackView.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v3[0] > 1u || v3[0])
  {
    v1 = sub_BB700();

    result = 0;
    if ((v1 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_B9B10();

      v2 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v2 = *v3 & 0xFFFFFFFFFFFFLL;
      }

      return v2 != 0;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

BOOL LiveSpeechStore.inputModeButtonShouldRouteUserToFavoritePhrasesInSettings.getter()
{
  sub_B9980();
  v0 = sub_B9950();
  v1 = sub_B9940();

  v2 = *(v1 + 16);

  return v2 == 0;
}

Swift::Void __swiftcall LiveSpeechStore.resumeSpeech()()
{
  v0 = sub_71730();
  [v0 continueSpeaking];
}

uint64_t LiveSpeechStore.replaySpeech(_:)(char *a1)
{
  v44 = sub_B99C0();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = v4;
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v5 - 8);
  v45 = &v37 - v6;
  v7 = sub_B9210();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  sub_B9200();
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v8 + 16))(v11, v13, v7);
  v14 = v1;
  sub_B9B20();
  (*(v8 + 8))(v13, v7);
  v15 = *(a1 + 1);
  v40 = *a1;
  SpokenContext = type metadata accessor for LiveSpeechStore.LastSpokenContext(0);
  v17 = SpokenContext[5];
  v41 = a1[SpokenContext[6]];
  v18 = &a1[SpokenContext[7]];
  v19 = *(v18 + 1);
  v39 = *v18;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  if (v47 <= 1u && !v47)
  {

LABEL_5:
    swift_getKeyPath();
    swift_getKeyPath();
    v46 = 1;
    v21 = v14;
    sub_B9B20();
    goto LABEL_6;
  }

  v20 = sub_BB700();

  if (v20)
  {
    goto LABEL_5;
  }

LABEL_6:
  v22 = sub_BB1A0();
  (*(*(v22 - 8) + 56))(v45, 1, 1, v22);
  v23 = v43;
  v24 = v44;
  (*(v3 + 16))(v43, &a1[v17], v44);
  sub_BB170();

  v25 = v14;

  v26 = sub_BB160();
  v27 = *(v3 + 80);
  v38 = v19;
  v28 = v15;
  v29 = (v27 + 56) & ~v27;
  v30 = v29 + v42;
  v31 = (v29 + v42) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 2) = v26;
  *(v32 + 3) = &protocol witness table for MainActor;
  v33 = v40;
  *(v32 + 4) = v25;
  *(v32 + 5) = v33;
  *(v32 + 6) = v28;
  (*(v3 + 32))(&v32[v29], v23, v24);
  v32[v30] = v41;
  v34 = &v32[v31];
  v35 = v38;
  *(v34 + 1) = v39;
  *(v34 + 2) = v35;
  v34[24] = 1;
  sub_6A2B8(0, 0, v45, &unk_C12F8, v32);
}

void *LiveSpeechStore.categoryOptions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v0 = v15;
  if (v15 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)); i; i = sub_BB650())
  {
    v2 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v3 = sub_BB590();
      }

      else
      {
        if (v2 >= *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_31;
        }

        v3 = *(v0 + 8 * v2 + 32);
      }

      v4 = v3;
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if ([v3 isRecents])
      {

        swift_getKeyPath();
        swift_getKeyPath();
        sub_B9B10();

        if (v15 <= 2u)
        {
          v6 = [v4 phrases];
          sub_BB340();
          v7 = sub_BB0F0();

          v8 = v7 >> 62 ? sub_BB650() : *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));

          if (v8)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_B9B10();

            return v15;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_B9B10();

        v0 = v15;
        v15 = &_swiftEmptyArrayStorage;
        if (v0 >> 62)
        {
          v9 = sub_BB650();
          if (v9)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v9 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
          if (v9)
          {
LABEL_19:
            v10 = 0;
            do
            {
              if ((v0 & 0xC000000000000001) != 0)
              {
                v11 = sub_BB590();
              }

              else
              {
                if (v10 >= *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_33;
                }

                v11 = *(v0 + 8 * v10 + 32);
              }

              v12 = v11;
              v13 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                goto LABEL_32;
              }

              if ([v11 isRecents])
              {
              }

              else
              {
                sub_BB5C0();
                sub_BB5E0();
                sub_BB5F0();
                sub_BB5D0();
              }

              ++v10;
            }

            while (v13 != v9);
          }
        }

        return &_swiftEmptyArrayStorage;
      }

      ++v2;
      if (v5 == i)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v15;
}

Swift::Void __swiftcall LiveSpeechStore.updateHUD(isVisible:animated:)(Swift::Bool isVisible, Swift::Bool animated)
{
  if (animated)
  {
    v3 = sub_BAE20();
    __chkstk_darwin(v3);
    sub_B9D80();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v2;
    sub_B9B20();
  }
}

uint64_t LiveSpeechStore.speechState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_B9B20();
}

Swift::Void __swiftcall LiveSpeechStore.beginMonitoringCallStatus()()
{
  v1 = sub_6E7A8();
  sub_7E01C(v0, v1);
}

Swift::Void __swiftcall LiveSpeechStore.endMonitoringCallStatus()()
{
  v2 = sub_6E7A8();
  v1 = OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers;
  [*&v2[OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_observers] removeObject:v0];
  [*&v2[OBJC_IVAR____TtC19LiveSpeechUIService29LiveSpeechCaptionsCallManager_newObservers] removeObject:v0];
  if (![*&v2[v1] count])
  {
    sub_B6CE8();
  }
}

uint64_t sub_6A2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2E50(&qword_F9770);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_57A0(a3, v25 - v10, &qword_F9770);
  v12 = sub_BB1A0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_C5E8(v11, &qword_F9770);
  }

  else
  {
    sub_BB190();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_BB140();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_BB010() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_C5E8(a3, &qword_F9770);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_C5E8(a3, &qword_F9770);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_6A5B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  return v1;
}

uint64_t LiveSpeechStore.updateCurrentTextInputMode(identifier:supportedLocales:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98 = a1;
  v86 = sub_B92D0();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_B92F0();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_B9250();
  v93 = *(v90 - 8);
  __chkstk_darwin(v90);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2E50(&qword_FAB08);
  __chkstk_darwin(v9 - 8);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v88 = &v78 - v13;
  __chkstk_darwin(v14);
  v80 = &v78 - v15;
  __chkstk_darwin(v16);
  v92 = &v78 - v17;
  __chkstk_darwin(v18);
  v89 = &v78 - v19;
  v20 = type metadata accessor for LiveSpeechTextInputSupportedLocales(0);
  __chkstk_darwin(v20 - 8);
  v96 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v95 = &v78 - v23;
  __chkstk_darwin(v24);
  v26 = &v78 - v25;
  v94 = sub_B9A10();
  v27 = *(v94 - 8);
  __chkstk_darwin(v94);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B95E0();
  sub_7E5F4(a3, v26);

  v30 = sub_B9A00();
  v31 = sub_BB320();

  v32 = os_log_type_enabled(v30, v31);
  v91 = a3;
  v87 = v11;
  v79 = v8;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v99[0] = swift_slowAlloc();
    *v33 = 136315650;
    *(v33 + 4) = sub_7A1D8(0xD000000000000038, 0x80000000000C6170, v99);
    *(v33 + 12) = 2080;
    if (a2)
    {
      v34 = v98;
    }

    else
    {
      v34 = 0x3E6C696E3CLL;
    }

    if (a2)
    {
      v35 = a2;
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    v36 = sub_7A1D8(v34, v35, v99);

    *(v33 + 14) = v36;
    *(v33 + 22) = 2080;
    v37 = LiveSpeechTextInputSupportedLocales.description.getter();
    v39 = v38;
    sub_35D14(v26);
    v40 = sub_7A1D8(v37, v39, v99);

    *(v33 + 24) = v40;
    _os_log_impl(&dword_0, v30, v31, "%s - ID=%s %s", v33, 0x20u);
    swift_arrayDestroy();

    a3 = v91;
  }

  else
  {

    sub_35D14(v26);
  }

  (*(v27 + 8))(v29, v94);
  v41 = v95;
  sub_7E5F4(a3, v95);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_7E5F4(v41, v96);
  v42 = v97;
  sub_B9B20();
  result = sub_35D14(v41);
  if (a2)
  {
    v44 = sub_BB2C0();

    v45 = sub_BB2B0();
    v46 = direct field offset for AXSettings.liveSpeech;
    swift_beginAccess();
    v47 = *&v45[v46];

    v48 = sub_BB290();
    if (*(v48 + 16) && (v49 = sub_7CF4C(v98, a2), (v50 & 1) != 0))
    {
      v51 = v93;
      v53 = v89;
      v52 = v90;
      (*(v93 + 16))(v89, *(v48 + 56) + *(v93 + 72) * v49, v90);

      (*(v51 + 56))(v53, 0, 1, v52);
    }

    else
    {
      v96 = v42;

      v54 = v93;
      v55 = *(v93 + 56);
      v56 = v89;
      v57 = v90;
      v55(v89, 1, 1, v90);
      sub_C5E8(v56, &qword_FAB08);
      v97 = v55;
      v55(v92, 1, 1, v57);
      v58 = v81;
      sub_B92B0();
      v59 = v84;
      sub_B92E0();
      (*(v82 + 8))(v58, v83);
      v60 = v80;
      sub_B92C0();
      (*(v85 + 8))(v59, v86);
      v61 = *(v54 + 48);
      if (v61(v60, 1, v57) == 1)
      {
        sub_C5E8(v60, &qword_FAB08);
      }

      else
      {
        v94 = v44;
        v95 = a2;
        v62 = *(v54 + 32);
        v63 = v79;
        v62(v79, v60, v57);
        v64 = LiveSpeechTextInputSupportedLocales.languages.getter();
        v65 = sub_784D4(v63, v64);

        if (v65)
        {
          v66 = v92;
          sub_C5E8(v92, &qword_FAB08);
          v62(v66, v63, v57);
          v97(v66, 0, 1, v57);
        }

        else
        {
          (*(v54 + 8))(v63, v57);
        }

        a2 = v95;
      }

      v67 = sub_BB2B0();
      v68 = direct field offset for AXSettings.liveSpeech;
      swift_beginAccess();
      v69 = *&v67[v68];

      v53 = v92;
      v70 = v87;
      sub_57A0(v92, v87, &qword_FAB08);
      if (v61(v70, 1, v57) == 1)
      {
        v71 = v70;
        v72 = LiveSpeechTextInputSupportedLocales.languages.getter();
        if (*(v72 + 2))
        {
          v73 = v88;
          (*(v93 + 16))(v88, &v72[(*(v93 + 80) + 32) & ~*(v93 + 80)], v57);
          v74 = 0;
        }

        else
        {
          v74 = 1;
          v73 = v88;
        }

        v97(v73, v74, 1, v57);
        v75 = v73;
        if (v61(v71, 1, v57) != 1)
        {
          sub_C5E8(v71, &qword_FAB08);
        }
      }

      else
      {
        v75 = v88;
        (*(v93 + 32))(v88, v70, v57);
        v97(v75, 0, 1, v57);
      }

      v76 = sub_BB280();
      sub_6C120(v75, v98, a2);
      v76(v99, 0);

      v42 = v96;
    }

    sub_C5E8(v53, &qword_FAB08);
    swift_getKeyPath();
    swift_getKeyPath();
    v99[0] = v98;
    v99[1] = a2;
    v77 = v42;
    return sub_B9B20();
  }

  return result;
}

uint64_t sub_6B144@<X0>(uint64_t a1@<X8>)
{
  v40 = sub_B92D0();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_B92F0();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2E50(&qword_FAB08);
  __chkstk_darwin(v5 - 8);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  v16 = sub_B9250();
  v17 = *(v16 - 8);
  v41 = *(v17 + 56);
  v41(v15, 1, 1, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v18 = v43;
  if (v43)
  {
    v33 = a1;
    v19 = v42;
    sub_BB2C0();
    v20 = sub_BB2B0();
    v21 = direct field offset for AXSettings.liveSpeech;
    swift_beginAccess();
    v22 = *&v20[v21];

    v23 = sub_BB290();
    if (*(v23 + 16))
    {
      v24 = sub_7CF4C(v19, v18);
      v26 = v25;

      if (v26)
      {
        (*(v17 + 16))(v12, *(v23 + 56) + *(v17 + 72) * v24, v16);
        sub_C5E8(v15, &qword_FAB08);

        v27 = 0;
LABEL_7:
        v41(v12, v27, 1, v16);
        sub_7FDE0(v12, v15);
        a1 = v33;
        goto LABEL_8;
      }
    }

    else
    {
    }

    sub_C5E8(v15, &qword_FAB08);
    v27 = 1;
    goto LABEL_7;
  }

LABEL_8:
  sub_57A0(v15, v9, &qword_FAB08);
  v28 = *(v17 + 48);
  if (v28(v9, 1, v16) == 1)
  {
    v29 = v34;
    sub_B92B0();
    v30 = v37;
    sub_B92E0();
    (*(v35 + 8))(v29, v36);
    v31 = v39;
    sub_B92C0();
    (*(v38 + 8))(v30, v40);
    if (v28(v31, 1, v16) == 1)
    {
      sub_B9260();
      sub_C5E8(v15, &qword_FAB08);
      if (v28(v31, 1, v16) != 1)
      {
        sub_C5E8(v31, &qword_FAB08);
      }
    }

    else
    {
      sub_C5E8(v15, &qword_FAB08);
      (*(v17 + 32))(a1, v31, v16);
    }

    result = (v28)(v9, 1, v16);
    if (result != 1)
    {
      return sub_C5E8(v9, &qword_FAB08);
    }
  }

  else
  {
    sub_C5E8(v15, &qword_FAB08);
    return (*(v17 + 32))(a1, v9, v16);
  }

  return result;
}

void sub_6B6D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_B9A10();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v7 = v27;
  v22 = v5;
  v23 = v4;
  v25 = a1;
  v26 = a2;
  if (!(v27 >> 62))
  {
    v8 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_20:

    return;
  }

LABEL_19:
  v8 = sub_BB650();
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_3:
  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_BB590();
    }

    else
    {
      if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_18;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ([v10 isRecents])
    {
      break;
    }

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_20;
    }
  }

  v13 = sub_BAFA0();
  v14 = sub_BAFA0();
  v27 = 0;
  v15 = [v11 addPhrase:v13 inputID:v14 error:&v27];

  if (v15)
  {
    v16 = v27;
  }

  else
  {
    v17 = v27;
    sub_B9170();

    swift_willThrow();
    v18 = v24;
    sub_B95C0();
    v19 = sub_B9A00();
    v20 = sub_BB300();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "Failed to add phrase to recents category", v21, 2u);
    }

    (*(v22 + 8))(v18, v23);
  }
}

id sub_6BA08()
{
  v0 = sub_B9A10();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v22 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v7 = v23;
  v8 = [v23 text];

  if (!v8)
  {
    sub_BAFD0();
    v8 = sub_BAFA0();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_B9B10();

  v9 = v23;
  v10 = [v23 categoryID];

  if (v10)
  {
    v11 = objc_opt_self();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_B9B10();

    v12 = sub_BAFA0();

    v23 = 0;
    LODWORD(v11) = [v11 updatePhrase:v8 categoryID:v10 withUpdatedText:v12 error:&v23];

    v13 = v23;
    if (v11)
    {

      return v13;
    }

    else
    {
      v22[1] = v23;
      v18 = v23;
      sub_B9170();

      swift_willThrow();
      sub_B95C0();
      v19 = sub_B9A00();
      v20 = sub_BB300();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_0, v19, v20, "Failed to update phrase", v21, 2u);
      }

      return (*(v1 + 8))(v3, v0);
    }
  }

  else
  {

    sub_B95C0();
    v15 = sub_B9A00();
    v16 = sub_BB300();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Phrase does not have categoryID", v17, 2u);
    }

    return (*(v1 + 8))(v6, v0);
  }
}

id sub_6BE38()
{
  v0 = sub_B9A10();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = LiveSpeechStore.selectedCategory.getter();
  v5 = sub_BAFA0();
  v6 = sub_BAFA0();
  v19 = 0;
  v7 = [v4 addPhrase:v5 inputID:v6 error:&v19];

  v8 = v19;
  if (v7)
  {

    return v8;
  }

  else
  {
    v18 = v19;
    v10 = v19;
    sub_B9170();

    swift_willThrow();
    sub_B95C0();
    swift_errorRetain();
    v11 = sub_B9A00();
    v12 = sub_BB300();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_BB770();
      v17 = sub_7A1D8(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v11, v12, "Error occurred creating a phrase: %s", v13, 0xCu);
      sub_28020(v14);
    }

    else
    {
    }

    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_6C120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2E50(&qword_FAB08);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_B9250();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    sub_C5E8(a1, &qword_FAB08);
    sub_7D898(a2, a3, v9);

    return sub_C5E8(v9, &qword_FAB08);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_7DBF4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_6C2FC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_7A784(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void LiveSpeechFavorite.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_BB030();
  if (a5)
  {
    sub_BB7B0(1u);

    sub_BB030();
  }

  else
  {
    sub_BB7B0(0);
  }
}

Swift::Int LiveSpeechFavorite.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_BB790();
  sub_BB030();
  if (a4)
  {
    sub_BB7B0(1u);
    sub_BB030();
  }

  else
  {
    sub_BB7B0(0);
  }

  return sub_BB7D0();
}

uint64_t sub_6C4C4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_6C4D0()
{
  v1 = *(v0 + 24);
  sub_BB790();
  sub_BB030();
  if (v1)
  {
    sub_BB7B0(1u);
    sub_BB030();
  }

  else
  {
    sub_BB7B0(0);
  }

  return sub_BB7D0();
}

void sub_6C55C()
{
  v1 = *(v0 + 24);
  sub_BB030();
  if (v1)
  {
    sub_BB7B0(1u);

    sub_BB030();
  }

  else
  {
    sub_BB7B0(0);
  }
}

Swift::Int sub_6C5D8()
{
  v1 = *(v0 + 24);
  sub_BB790();
  sub_BB030();
  if (v1)
  {
    sub_BB7B0(1u);
    sub_BB030();
  }

  else
  {
    sub_BB7B0(0);
  }

  return sub_BB7D0();
}

unint64_t LiveSpeechTextInputSupportedLocales.description.getter()
{
  v1 = v0;
  v35 = sub_B92F0();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LiveSpeechTextInputSupportedLocales(0);
  __chkstk_darwin(v5);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_7E5F4(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *v7;
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_BB570(34);

      v37 = 0xD00000000000001FLL;
      v38 = 0x80000000000C61D0;
      v10 = *(v9 + 16);
      if (v10)
      {
        v36 = &_swiftEmptyArrayStorage;
        sub_7D428(0, v10, 0);
        v11 = v36;
        v13 = *(v2 + 16);
        v12 = v2 + 16;
        v14 = *(v12 + 64);
        v31 = v9;
        v15 = v9 + ((v14 + 32) & ~v14);
        v32 = *(v12 + 56);
        v33 = v13;
        v34 = v12;
        v16 = (v12 - 8);
        do
        {
          v17 = v35;
          v33(v4, v15, v35);
          v18 = sub_B9230();
          v20 = v19;
          (*v16)(v4, v17);
          v36 = v11;
          v22 = v11[2];
          v21 = v11[3];
          if (v22 >= v21 >> 1)
          {
            sub_7D428((v21 > 1), v22 + 1, 1);
            v11 = v36;
          }

          v11[2] = v22 + 1;
          v23 = &v11[2 * v22];
          v23[4] = v18;
          v23[5] = v20;
          v15 += v32;
          --v10;
        }

        while (v10);
      }

      else
      {

        v11 = &_swiftEmptyArrayStorage;
      }

      v36 = v11;
      sub_2E50(&qword_FAB18);
      sub_D150(&qword_FAB20, &qword_FAB18);
      v28 = sub_BAF70();
      v30 = v29;

      v41._countAndFlagsBits = v28;
      v41._object = v30;
      sub_BB060(v41);

      v42._countAndFlagsBits = 93;
      v42._object = 0xE100000000000000;
      sub_BB060(v42);
      return v37;
    }

    else
    {
      return 0xD00000000000001ALL;
    }
  }

  else
  {
    v24 = v2;
    v25 = v35;
    (*(v2 + 32))(v4, v7, v35);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_BB570(33);

    v37 = 0xD00000000000001ELL;
    v38 = 0x80000000000C61F0;
    v39._countAndFlagsBits = sub_B9230();
    sub_BB060(v39);

    v40._countAndFlagsBits = 93;
    v40._object = 0xE100000000000000;
    sub_BB060(v40);
    v26 = v37;
    (*(v24 + 8))(v4, v25);
    return v26;
  }
}

void *LiveSpeechTextInputSupportedLocales.locales.getter()
{
  v1 = v0;
  v2 = sub_B92F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LiveSpeechTextInputSupportedLocales(0);
  __chkstk_darwin(v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7E5F4(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return *v8;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v11 = *(v3 + 32);
    v11(v5, v8, v2);
    sub_2E50(&qword_FAB28);
    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_C0020;
    v11((v13 + v12), v5, v2);
    return v13;
  }
}

char *LiveSpeechTextInputSupportedLocales.languages.getter()
{
  v1 = v0;
  v53 = sub_B92D0();
  v2 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2E50(&qword_FAB08);
  __chkstk_darwin(v4 - 8);
  v51 = &v42 - v5;
  v6 = sub_B9250();
  v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_B92F0();
  v8 = *(v54 - 8);
  __chkstk_darwin(v54);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for LiveSpeechTextInputSupportedLocales(0);
  __chkstk_darwin(v13);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_7E5F4(v1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v19 = *(v8 + 32);
    v20 = v54;
    v19(v12, v15, v54);
    sub_2E50(&qword_FAB28);
    v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_C0020;
    v23 = v22 + v21;
    v17 = v22;
    v19(v23, v12, v20);
    v18 = v17[2];
    if (v18)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v17 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage[2];
    if (v18)
    {
      goto LABEL_6;
    }

LABEL_17:

    return _swiftEmptyArrayStorage;
  }

  v17 = *v15;
  v18 = v17[2];
  if (!v18)
  {
    goto LABEL_17;
  }

LABEL_6:
  v55 = v6;
  v24 = *(v8 + 16);
  v25 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v42 = v17;
  v26 = v17 + v25;
  v46 = *(v8 + 72);
  v47 = v24;
  v27 = (v2 + 8);
  v48 = v8 + 16;
  v28 = (v8 + 8);
  v29 = (v43 + 48);
  v44 = (v43 + 32);
  v45 = v27;
  v30 = _swiftEmptyArrayStorage;
  v31 = v54;
  do
  {
    v32 = v49;
    v47(v49, v26, v31);
    v33 = v52;
    sub_B92E0();
    v34 = v51;
    sub_B92C0();
    v35 = v34;
    (*v45)(v33, v53);
    (*v28)(v32, v31);
    v36 = v34;
    v37 = v55;
    if ((*v29)(v36, 1, v55) == 1)
    {
      sub_C5E8(v35, &qword_FAB08);
    }

    else
    {
      v38 = *v44;
      (*v44)(v50, v35, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_79E74(0, *(v30 + 2) + 1, 1, v30);
      }

      v40 = *(v30 + 2);
      v39 = *(v30 + 3);
      if (v40 >= v39 >> 1)
      {
        v30 = sub_79E74(v39 > 1, v40 + 1, 1, v30);
      }

      *(v30 + 2) = v40 + 1;
      v38(&v30[((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v40], v50, v55);
    }

    v26 += v46;
    --v18;
  }

  while (v18);

  return v30;
}

Swift::Int sub_6D14C()
{
  sub_BB790();
  sub_BB7A0(0);
  return sub_BB7D0();
}

Swift::Int sub_6D1B8()
{
  sub_BB790();
  sub_BB7A0(0);
  return sub_BB7D0();
}

Swift::Int sub_6D244()
{
  v1 = *v0;
  sub_BB790();
  sub_BB7A0(qword_C1C68[v1]);
  return sub_BB7D0();
}

Swift::Int sub_6D2CC()
{
  v1 = *v0;
  sub_BB790();
  sub_BB7A0(qword_C1C68[v1]);
  return sub_BB7D0();
}

uint64_t sub_6D318@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_7E8A4(*a1);
  *a2 = result;
  return result;
}

uint64_t LiveSpeechStore.SpeechState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1701602409;
  v2 = 0x676E696B61657073;
  if (a1 != 2)
  {
    v2 = 0x646573756170;
  }

  if (a1)
  {
    v1 = 0x616570536C6C6977;
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