id sub_100001458()
{
  result = DiagnosticLogHandleForCategory();
  qword_1000116F0 = result;
  return result;
}

void sub_100001484(uint64_t a1, void *a2)
{
  v5 = *&v2[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder];
  *&v2[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_100005ED0;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000017D4;
  v12[3] = &unk_10000C698;
  v7 = _Block_copy(v12);

  [a2 requestSessionAccessoryIdentifierWithCompletion:v7];
  _Block_release(v7);
  if (a1 && (type metadata accessor for OnDemandAudioDiagnosticMonitorInputs(), (v8 = swift_dynamicCastClass()) != 0))
  {
    v9 = *&v2[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs];
    *&v2[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs] = v8;
    swift_unknownObjectRetain();
  }

  else
  {
    v10 = [v2 result];
    isa = sub_100006E8C().super.super.isa;
    [v10 setStatusCode:isa];

    [v2 setFinished:1];
  }
}

void sub_100001618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a3)
    {
      swift_errorRetain();
      v8 = sub_100006E9C();
      if (qword_100011040 != -1)
      {
        swift_once();
      }

      v9 = qword_1000116F0;
      if (os_log_type_enabled(qword_1000116F0, v8))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v17 = v11;
        *v10 = 136315138;
        swift_getErrorValue();
        v12 = sub_100006FCC();
        v14 = sub_100004D2C(v12, v13, &v17);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v9, v8, "Unable to get accessory identifier from host app with error %s", v10, 0xCu);
        sub_100005D64(v11);
      }

      sub_10000401C(0);
    }

    else
    {
      v15 = (Strong + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_targetUUID);
      v16 = *(Strong + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_targetUUID + 8);
      *v15 = a1;
      v15[1] = a2;
    }
  }
}

void sub_1000017D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_100006E3C();
  v8 = v7;

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_1000018F0()
{
  v1 = v0;
  v31 = sub_100006D9C();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v31);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006DCC();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100006DEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  sub_100004BA4();
  v18 = sub_100006EEC();
  result = sub_100006DDC();
  v20 = *(v1 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs);
  if (v20)
  {
    v28 = v18;
    v29 = v6;
    v30 = v2;
    v21 = v20 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDuration;
    if ((*(v21 + 8) & 1) == 0)
    {
      v22 = *v21;
      sub_100006DFC();
      v27 = *(v11 + 8);
      v27(v15, v10);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100005EB8;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100005F00;
      aBlock[3] = &unk_10000C620;
      v24 = _Block_copy(aBlock);

      sub_100006DBC();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_100005E1C(&qword_100011110, &type metadata accessor for DispatchWorkItemFlags);
      sub_100004C84(&qword_100011118, &qword_100007718);
      sub_100005E64(&qword_100011120, &qword_100011118, &qword_100007718);
      v25 = v31;
      sub_100006F1C();
      v26 = v28;
      sub_100006ECC();
      _Block_release(v24);

      (*(v30 + 8))(v5, v25);
      (*(v32 + 8))(v9, v29);
      return (v27)(v17, v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100001CEC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([v1 isFinished])
    {

LABEL_16:
      return;
    }

    v2 = [v1 isCancelled];

    if (v2)
    {
      goto LABEL_16;
    }

    v3 = OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs;
    v4 = *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs];
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabled);
      if (v5 != 2)
      {
        if (v5)
        {
          sub_1000025A8();
        }

        v6 = *&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder];
        if (v6)
        {
          if (([*&v1[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder] respondsToSelector:"displayAlertWithHeader:message:buttonStrings:completion:"] & 1) == 0)
          {
            goto LABEL_16;
          }

          v7 = *&v1[v3];
          if (v7)
          {
            if (*(v7 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeader + 8))
            {
              if (*(v7 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessage + 8))
              {
                v8 = *(v7 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeader);
                v9 = *(v7 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessage);
                sub_100004C84(&qword_100011160, &qword_100007748);
                v10 = swift_allocObject();
                *(v10 + 16) = xmmword_1000076C0;
                v11 = *(v7 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButton + 8);
                if (v11)
                {
                  *(v10 + 32) = *(v7 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButton);
                  *(v10 + 40) = v11;
                  v12 = swift_allocObject();
                  swift_unknownObjectWeakInit();

                  swift_unknownObjectRetain();

                  v13 = sub_100006E2C();

                  v14 = sub_100006E2C();

                  isa = sub_100006E7C().super.isa;

                  aBlock[4] = sub_100005EC0;
                  aBlock[5] = v12;
                  aBlock[0] = _NSConcreteStackBlock;
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_100001FF0;
                  aBlock[3] = &unk_10000C648;
                  v16 = _Block_copy(aBlock);
                  [v6 displayAlertWithHeader:v13 message:v14 buttonStrings:isa completion:v16];

                  swift_unknownObjectRelease();
                  _Block_release(v16);

                  return;
                }

                goto LABEL_24;
              }

LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
              return;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_100001FF0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_10000207C()
{
  v0 = sub_100006D9C();
  v33 = *(v0 - 8);
  v1 = *(v33 + 64);
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100006DCC();
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006DEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    *(result + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_openLidAlertDismissed) = 1;
    sub_100002D88();
    sub_100004BA4();
    v18 = sub_100006EEC();
    result = sub_100006DDC();
    v19 = *&v17[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs];
    if (v19)
    {
      v29 = v18;
      v30 = v4;
      v31 = v0;
      v20 = v19 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeout;
      if ((*(v20 + 8) & 1) == 0)
      {
        v21 = *v20;
        sub_100006DFC();
        v22 = *(v9 + 8);
        v27 = v8;
        v28 = v22;
        v22(v13, v8);
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_100005EC8;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100005F00;
        aBlock[3] = &unk_10000C670;
        v24 = _Block_copy(aBlock);

        sub_100006DBC();
        aBlock[0] = &_swiftEmptyArrayStorage;
        sub_100005E1C(&qword_100011110, &type metadata accessor for DispatchWorkItemFlags);
        sub_100004C84(&qword_100011118, &qword_100007718);
        sub_100005E64(&qword_100011120, &qword_100011118, &qword_100007718);
        v25 = v31;
        sub_100006F1C();
        v26 = v29;
        sub_100006ECC();
        _Block_release(v24);

        (*(v33 + 8))(v3, v25);
        (*(v32 + 8))(v7, v30);
        return v28(v15, v27);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1000024B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10000401C(2u);
  }
}

void sub_1000025A8()
{
  v1 = v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_audioAlertPlaybackStartTime;
  if (*(v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_audioAlertPlaybackStartTime + 8))
  {
    *v1 = 0x41CD27E440000000;
    *(v1 + 8) = 0;
    v2 = *(v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs);
    if (!v2)
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_3:
    v3 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundID;
    if ((*(v3 + 4) & 1) == 0)
    {
      v4 = *v3;
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7[4] = sub_100005E0C;
      v7[5] = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_100005F00;
      v7[3] = &unk_10000C5D0;
      v6 = _Block_copy(v7);

      AudioServicesPlayAlertSoundWithCompletion(v4, v6);
      _Block_release(v6);
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if ((*(v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_openLidAlertDismissed) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs);
    if (!v2)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDuration + 8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    if (*v1 + *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDuration) >= 978307200.0)
    {
      goto LABEL_3;
    }
  }
}

void sub_100002738()
{
  v0 = sub_100006D9C();
  v39 = *(v0 - 8);
  v1 = *(v39 + 64);
  __chkstk_darwin(v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100006DCC();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100006DEC();
  v36 = *(v40 - 8);
  v8 = *(v36 + 64);
  v9 = __chkstk_darwin(v40);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  v14 = sub_100006DAC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v20 = Strong;
  v35 = v0;
  v21 = OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs;
  v22 = *&Strong[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs];
  if (!v22)
  {
    __break(1u);
    goto LABEL_11;
  }

  v23 = *(v22 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoops);
  if (v23 == 2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v23)
  {
    sub_100004BA4();
    (*(v15 + 104))(v18, enum case for DispatchQoS.QoSClass.userInteractive(_:), v14);
    v24 = sub_100006F0C();
    (*(v15 + 8))(v18, v14);
    sub_100006DDC();
    v25 = *&v20[v21];
    if (v25)
    {
      v33 = v24;
      v34 = v3;
      v26 = v25 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelay;
      if ((*(v26 + 8) & 1) == 0)
      {
        v27 = *v26;
        sub_100006DFC();
        v36 = *(v36 + 8);
        (v36)(v11, v40);
        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_100005E14;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100005F00;
        aBlock[3] = &unk_10000C5F8;
        v29 = _Block_copy(aBlock);

        sub_100006DBC();
        v41 = &_swiftEmptyArrayStorage;
        sub_100005E1C(&qword_100011110, &type metadata accessor for DispatchWorkItemFlags);
        sub_100004C84(&qword_100011118, &qword_100007718);
        sub_100005E64(&qword_100011120, &qword_100011118, &qword_100007718);
        v30 = v34;
        v31 = v35;
        sub_100006F1C();
        v32 = v33;
        sub_100006ECC();
        _Block_release(v29);

        (*(v39 + 8))(v30, v31);
        (*(v37 + 8))(v7, v38);
        (v36)(v13, v40);

        return;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }
}

void sub_100002C60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000025A8();
  }
}

uint64_t sub_100002CB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100002D88()
{
  v1 = *(v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_hearingModeClient);
  [v1 setDispatchQueue:*(v0 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_hearingModeDispatchQueue)];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_100004D14;
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100005F00;
  v11 = &unk_10000C558;
  v3 = _Block_copy(&v8);

  [v1 setInterruptionHandler:v3];
  _Block_release(v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_100004D1C;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100003DD0;
  v11 = &unk_10000C580;
  v5 = _Block_copy(&v8);

  [v1 setDeviceDiagnosticRecordFoundHandler:v5];
  _Block_release(v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_100004D24;
  v13 = v6;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100003FB0;
  v11 = &unk_10000C5A8;
  v7 = _Block_copy(&v8);

  [v1 activateWithCompletion:v7];
  _Block_release(v7);
}

void sub_100002FCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100006E9C();
    if (qword_100011040 != -1)
    {
      swift_once();
    }

    sub_100006D8C();
    sub_10000401C(3u);
  }
}

void sub_100003090(void *a1)
{
  v2 = sub_100006D7C();
  v108 = *(v2 - 8);
  v3 = *(v108 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v100 - v7;
  v9 = sub_100004C84(&qword_100011130, &qword_100007728);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v100 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v100 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v100 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v100 - v24;
  __chkstk_darwin(v23);
  v109 = &v100 - v26;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v101 = v8;
    v102 = v6;
    v110 = a1;
    v28 = Strong;
    v29 = [a1 bluetoothUUID];
    v30 = sub_100006E3C();
    v32 = v31;

    v107 = v28;
    if (v30 == *&v28[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_targetUUID] && v32 == *&v28[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_targetUUID + 8])
    {
    }

    else
    {
      v33 = sub_100006FAC();

      if ((v33 & 1) == 0)
      {

        return;
      }
    }

    v34 = sub_100006E9C();
    if (qword_100011040 != -1)
    {
      swift_once();
    }

    v35 = qword_1000116F0;
    v36 = os_log_type_enabled(qword_1000116F0, v34);
    v106 = v19;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = v110;
      *(v37 + 4) = v110;
      *v38 = v39;
      v40 = v39;
      _os_log_impl(&_mh_execute_header, v35, v34, "Recieved diagnostic record from HearingModeService client %@", v37, 0xCu);
      sub_1000053D8(v38, &qword_100011128, &qword_100007720);
      v19 = v106;
    }

    v41 = [objc_opt_self() sharedFormatter];
    if (!v41)
    {
      __break(1u);
      return;
    }

    v42 = v41;
    v105 = [v41 formatterWithType:0];

    v43 = [v110 lastMeasurementTimestampLeft];
    if (v43)
    {
      v44 = v43;
      sub_100006D6C();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v46 = v108;
    v104 = *(v108 + 56);
    v104(v25, v45, 1, v2);
    v47 = v25;
    v48 = v109;
    sub_1000052D4(v47, v109);
    sub_100005344(v48, v22);
    v103 = *(v46 + 48);
    v49 = &OnDemandAudioDiagnosticMonitorController__metaData;
    if (v103(v22, 1, v2) == 1)
    {
      sub_1000053D8(v22, &qword_100011130, &qword_100007728);
    }

    else
    {
      v50 = v101;
      (*(v46 + 32))(v101, v22, v2);
      v51 = [v107 result];
      *&v114 = 0xD00000000000001CLL;
      *(&v114 + 1) = 0x8000000100007F30;
      sub_100006F5C();
      v52 = v105;
      if (v105)
      {
        v53 = v105;
        isa = sub_100006D5C().super.isa;
        v55 = [v53 stringFromDate:isa];

        v56 = sub_100006E3C();
        v58 = v57;

        v19 = v106;
        v52 = &type metadata for String;
      }

      else
      {
        v56 = 0;
        v58 = 0;
        v115 = 0;
      }

      *&v114 = v56;
      *(&v114 + 1) = v58;
      v116 = v52;
      v59 = [v51 data];
      v60 = sub_100006E1C();

      v112 = v60;
      if (v116)
      {
        sub_100005530(&v114, v113);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111 = v60;
        sub_10000599C(v113, v117, isUniquelyReferenced_nonNull_native);
        sub_1000054DC(v117);
        v112 = v111;
      }

      else
      {
        sub_1000053D8(&v114, &qword_100011138, &qword_100007730);
        sub_100005438(v117, v113);
        v19 = v106;
        sub_1000053D8(v113, &qword_100011138, &qword_100007730);
        sub_1000054DC(v117);
      }

      v62 = sub_100006E0C().super.isa;

      [v51 setData:v62];

      v46 = v108;
      v63 = v50;
      v49 = &OnDemandAudioDiagnosticMonitorController__metaData;
      (*(v108 + 8))(v63, v2);
    }

    v64 = [v110 lastMeasurementTimestampRight];
    if (v64)
    {
      v65 = v64;
      sub_100006D6C();

      v66 = 0;
    }

    else
    {
      v66 = 1;
    }

    v104(v16, v66, 1, v2);
    sub_1000052D4(v16, v19);
    sub_100005344(v19, v13);
    if (v103(v13, 1, v2) == 1)
    {
      sub_1000053D8(v13, &qword_100011130, &qword_100007728);
      v67 = v110;
    }

    else
    {
      v68 = v102;
      (*(v46 + 32))(v102, v13, v2);
      v69 = [v107 result];
      *&v114 = 0xD00000000000001DLL;
      *(&v114 + 1) = 0x8000000100007F10;
      sub_100006F5C();
      v70 = v105;
      v67 = v110;
      if (v105)
      {
        v71 = v105;
        v72 = sub_100006D5C().super.isa;
        v73 = v49;
        v74 = [v71 stringFromDate:v72];

        v75 = sub_100006E3C();
        v77 = v76;

        v49 = v73;
        v70 = &type metadata for String;
      }

      else
      {
        v75 = 0;
        v77 = 0;
        v115 = 0;
      }

      *&v114 = v75;
      *(&v114 + 1) = v77;
      v116 = v70;
      v78 = [v69 data];
      v79 = sub_100006E1C();

      v112 = v79;
      if (v116)
      {
        sub_100005530(&v114, v113);
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v111 = v79;
        sub_10000599C(v113, v117, v80);
        sub_1000054DC(v117);
        v112 = v111;
      }

      else
      {
        sub_1000053D8(&v114, &qword_100011138, &qword_100007730);
        sub_100005438(v117, v113);
        sub_1000053D8(v113, &qword_100011138, &qword_100007730);
        sub_1000054DC(v117);
      }

      v81 = sub_100006E0C().super.isa;

      [v69 v49[34].base_props];

      (*(v108 + 8))(v68, v2);
    }

    v82 = [v67 latestMeasurementResultLeft];
    v83 = [v67 latestMeasurementResultRight];
    sub_1000053B4(v82);
    v84 = sub_100006E5C();
    v86 = v85;
    LODWORD(v110) = v83;
    sub_1000053B4(v83);
    v108 = sub_100006E5C();
    v104 = v87;
    v88 = v107;
    v89 = [v88 result];
    *&v114 = 0xD00000000000001FLL;
    *(&v114 + 1) = 0x8000000100007EC0;
    sub_100006F5C();
    v116 = &type metadata for String;
    *&v114 = v84;
    *(&v114 + 1) = v86;
    v90 = [v89 data];
    v91 = sub_100006E1C();

    sub_100005530(&v114, v113);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v91;
    sub_10000599C(v113, v117, v92);
    sub_1000054DC(v117);
    v93 = sub_100006E0C().super.isa;

    [v89 setData:v93];

    v94 = [v88 result];
    *&v114 = 0xD000000000000020;
    *(&v114 + 1) = 0x8000000100007EE0;
    sub_100006F5C();
    v116 = &type metadata for String;
    *&v114 = v108;
    *(&v114 + 1) = v104;
    v95 = [v94 data];
    v96 = sub_100006E1C();

    sub_100005530(&v114, v113);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v96;
    sub_10000599C(v113, v117, v97);
    sub_1000054DC(v117);
    v98 = sub_100006E0C().super.isa;

    [v94 setData:v98];

    if (v82 - 1 >= 2)
    {
      v99 = 6;
      if (!v82 || v82 == 8 || (v110 & 0xFFFFFFF7) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v110 < 9)
    {
      v99 = byte_10000778C[v110];
LABEL_43:
      sub_10000401C(v99);

      sub_1000053D8(v106, &qword_100011130, &qword_100007728);
      sub_1000053D8(v109, &qword_100011130, &qword_100007728);
      return;
    }

    v99 = 5;
    goto LABEL_43;
  }
}

void sub_100003DD0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100003E38(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      swift_errorRetain();
      v4 = sub_100006E9C();
      if (qword_100011040 != -1)
      {
        swift_once();
      }

      v5 = qword_1000116F0;
      if (os_log_type_enabled(qword_1000116F0, v4))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        swift_errorRetain();
        v8 = _swift_stdlib_bridgeErrorToNSError();
        *(v6 + 4) = v8;
        *v7 = v8;
        _os_log_impl(&_mh_execute_header, v5, v4, "Failed to activate HearingModeService client with error %@", v6, 0xCu);
        sub_1000053D8(v7, &qword_100011128, &qword_100007720);
      }

      sub_10000401C(4u);
    }

    else
    {
    }
  }
}

void sub_100003FB0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_10000401C(unsigned __int8 a1)
{
  v3 = sub_100006D9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (__chkstk_darwin)();
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006DCC();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  (__chkstk_darwin)();
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100006DEC();
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = *(v46 + 64);
  v13 = (__chkstk_darwin)();
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v45 = &v39 - v16;
  v17 = sub_100006DAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v1;
  result = *(v1 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder);
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  result = [result clearAllowSessionAccessoryDisconnect];
  v43 = v7;
  v44 = v3;
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v23 = -1;
      }

      else
      {
        v23 = 0;
      }
    }

    else if (a1 == 4)
    {
      v23 = -3;
    }

    else
    {
      v23 = -2;
    }

LABEL_17:
    v25 = *(v50 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs);
    if (v25)
    {
      v26 = v25 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDuration;
      if ((*(v26 + 8) & 1) == 0)
      {
        v24 = *v26;
        goto LABEL_20;
      }

LABEL_27:
      __break(1u);
      return result;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v23 = -5;
    }

    else
    {
      v23 = -4;
    }

    goto LABEL_17;
  }

  if (!a1)
  {
    v23 = -901;
    goto LABEL_17;
  }

  v24 = 0.0;
  v23 = -900;
LABEL_20:
  v42 = v4;
  v27 = sub_100006EAC();
  if (qword_100011040 != -1)
  {
    swift_once();
  }

  v41 = v8;
  v28 = qword_1000116F0;
  if (os_log_type_enabled(qword_1000116F0, v27))
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    *(v29 + 4) = v23;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v28, v27, "Test finished with status code %ld. Will end test after %f seconds", v29, 0x16u);
  }

  sub_100004BA4();
  (*(v18 + 104))(v21, enum case for DispatchQoS.QoSClass.default(_:), v17);
  v40 = sub_100006F0C();
  (*(v18 + 8))(v21, v17);
  sub_100006DDC();
  v30 = v45;
  sub_100006DFC();
  v31 = v47;
  v46 = *(v46 + 8);
  (v46)(v15, v47);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = a1;
  aBlock[4] = sub_100004C60;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005F00;
  aBlock[3] = &unk_10000C530;
  v34 = _Block_copy(aBlock);

  v35 = v48;
  sub_100006DBC();
  v51 = &_swiftEmptyArrayStorage;
  sub_100005E1C(&qword_100011110, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004C84(&qword_100011118, &qword_100007718);
  sub_100005E64(&qword_100011120, &qword_100011118, &qword_100007718);
  v36 = v43;
  v37 = v44;
  sub_100006F1C();
  v38 = v40;
  sub_100006ECC();
  _Block_release(v34);

  (*(v42 + 8))(v36, v37);
  (*(v49 + 8))(v35, v41);
  (v46)(v30, v31);
}

void sub_100004678(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (([v4 isFinished] & 1) == 0)
    {
      sub_100006EAC();
      if (qword_100011040 != -1)
      {
        swift_once();
      }

      sub_100006D8C();
      v5 = [v4 result];
      v6 = qword_100007798[a2];
      isa = sub_100006E8C().super.super.isa;
      [v5 setStatusCode:isa];

      [v4 setFinished:1];
    }
  }
}

id sub_1000047BC()
{
  v17 = sub_100006EDC();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v17);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006EBC();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_100006DCC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_inputs] = 0;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_responder] = 0;
  v9 = OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_hearingModeClient;
  *&v0[v9] = [objc_allocWithZone(HMServiceClient) init];
  v16 = OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_hearingModeDispatchQueue;
  v10 = sub_100004BA4();
  v15[1] = "d (HearingModeService crash?)";
  v15[2] = v10;
  sub_100006DBC();
  v19 = &_swiftEmptyArrayStorage;
  sub_100005E1C(&qword_100011148, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004C84(&qword_100011150, &qword_100007740);
  sub_100005E64(&qword_100011158, &qword_100011150, &qword_100007740);
  sub_100006F1C();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *&v0[v16] = sub_100006EFC();
  v11 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_audioAlertPlaybackStartTime];
  *v11 = 0;
  v11[8] = 1;
  v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_openLidAlertDismissed] = 0;
  v12 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorController_targetUUID];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = type metadata accessor for OnDemandAudioDiagnosticMonitorController();
  v18.receiver = v0;
  v18.super_class = v13;
  return objc_msgSendSuper2(&v18, "init");
}

id sub_100004ACC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnDemandAudioDiagnosticMonitorController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100004BA4()
{
  result = qword_100011108;
  if (!qword_100011108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100011108);
  }

  return result;
}

uint64_t sub_100004BF0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004C28()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100004C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004C84(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004CCC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004D2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004DF8(v11, 0, 0, 1, a1, a2);
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
    sub_100005DB0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005D64(v11);
  return v7;
}

unint64_t sub_100004DF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004F04(a5, a6);
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
    result = sub_100006F7C();
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

char *sub_100004F04(uint64_t a1, unint64_t a2)
{
  v4 = sub_100004F50(a1, a2);
  sub_100005080(&off_10000C4B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100004F50(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000516C(v5, 0);
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

  result = sub_100006F7C();
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
        v10 = sub_100006E6C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000516C(v10, 0);
        result = sub_100006F6C();
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

uint64_t sub_100005080(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000051E0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000516C(uint64_t a1, uint64_t a2)
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

  sub_100004C84(&qword_100011168, qword_100007750);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000051E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004C84(&qword_100011168, qword_100007750);
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

uint64_t sub_1000052D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C84(&qword_100011130, &qword_100007728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005344(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004C84(&qword_100011130, &qword_100007728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

const char *sub_1000053B4(unsigned int a1)
{
  if (a1 > 8)
  {
    return "?";
  }

  else
  {
    return off_10000C6C0[a1];
  }
}

uint64_t sub_1000053D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004C84(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_100005438@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_100006B20(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100005B64();
      v11 = v13;
    }

    sub_1000054DC(*(v11 + 48) + 40 * v8);
    sub_100005530((*(v11 + 56) + 32 * v8), a2);
    sub_1000057F8(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

_OWORD *sub_100005530(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005540(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100004C84(&qword_100011140, &qword_100007738);
  result = sub_100006F9C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_100005530((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100005D08(v24, &v37);
        sub_100005DB0(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_100006F3C(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_100005530(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1000057F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100006F2C() + 1) & ~v5;
    do
    {
      sub_100005D08(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_100006F3C(*(a2 + 40));
      result = sub_1000054DC(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10000599C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100006B20(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100005B64();
      goto LABEL_7;
    }

    sub_100005540(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_100006B20(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100005D08(a2, v22);
      return sub_100005AE8(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_100006FBC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100005D64(v17);

  return sub_100005530(a1, v17);
}

_OWORD *sub_100005AE8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100005530(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_100005B64()
{
  v1 = v0;
  sub_100004C84(&qword_100011140, &qword_100007738);
  v2 = *v0;
  v3 = sub_100006F8C();
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
        v18 = 40 * v17;
        sub_100005D08(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100005DB0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100005530(v22, (*(v4 + 56) + v17));
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

uint64_t sub_100005D64(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005DB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005E64(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004CCC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005F28(uint64_t result)
{
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = v1;
  v3 = result;
  if (*(result + 16) && (v4 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDurationKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDurationKey + 8)), (v5 & 1) != 0) && (sub_100005DB0(*(v3 + 56) + 32 * v4, v61), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v59;
    if (!v59)
    {
      return 0;
    }
  }

  else
  {
    v6 = 30;
  }

  v7 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDuration;
  *v7 = v6;
  *(v7 + 8) = 0;
  v8 = *(v3 + 16);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeaderKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeaderKey + 8));
  if ((v10 & 1) == 0)
  {
    v8 = 0;
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  sub_100005DB0(*(v3 + 56) + 32 * v9, v61);
  v11 = swift_dynamicCast();
  v8 = v59;
  v12 = v60;
  if (!v11)
  {
    v8 = 0;
    v12 = 0;
  }

LABEL_14:
  v13 = (v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeader);
  v14 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeader + 8);
  *v13 = v8;
  v13[1] = v12;

  if (!v13[1])
  {
    return 0;
  }

  v15 = *(v3 + 16);
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessageKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessageKey + 8));
  if ((v17 & 1) == 0)
  {
    v15 = 0;
LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  sub_100005DB0(*(v3 + 56) + 32 * v16, v61);
  v18 = swift_dynamicCast();
  v15 = v59;
  v19 = v60;
  if (!v18)
  {
    v15 = 0;
    v19 = 0;
  }

LABEL_21:
  v20 = (v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessage);
  v21 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessage + 8);
  *v20 = v15;
  v20[1] = v19;

  if (!v20[1])
  {
    return 0;
  }

  v22 = *(v3 + 16);
  if (!v22)
  {
LABEL_27:
    v26 = 0;
    goto LABEL_28;
  }

  v23 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButtonKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButtonKey + 8));
  if ((v24 & 1) == 0)
  {
    v22 = 0;
    goto LABEL_27;
  }

  sub_100005DB0(*(v3 + 56) + 32 * v23, v61);
  v25 = swift_dynamicCast();
  v22 = v59;
  v26 = v60;
  if (!v25)
  {
    v22 = 0;
    v26 = 0;
  }

LABEL_28:
  v27 = (v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButton);
  v28 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButton + 8);
  *v27 = v22;
  v27[1] = v26;

  if (!v27[1])
  {
    return 0;
  }

  if (*(v3 + 16) && (v29 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabledKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabledKey + 8)), (v30 & 1) != 0) && (sub_100005DB0(*(v3 + 56) + 32 * v29, v61), (swift_dynamicCast() & 1) != 0))
  {
    if (*(v3 + 16) && (v31 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDurationKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDurationKey + 8)), (v32 & 1) != 0) && (sub_100005DB0(*(v3 + 56) + 32 * v31, v61), (swift_dynamicCast() & 1) != 0))
    {
      v33 = v59;
      if (!v59)
      {
        return 0;
      }
    }

    else
    {
      v33 = 10;
    }

    v40 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDuration;
    *v40 = v33;
    *(v40 + 8) = 0;
    if (*(v3 + 16) && (v41 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopsKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopsKey + 8)), (v42 & 1) != 0) && (sub_100005DB0(*(v3 + 56) + 32 * v41, v61), (swift_dynamicCast() & 1) != 0))
    {
      v43 = v59;
    }

    else
    {
      v43 = 0;
    }

    *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoops) = v43;
    if (*(v3 + 16) && (v44 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelayKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelayKey + 8)), (v45 & 1) != 0) && (sub_100005DB0(*(v3 + 56) + 32 * v44, v61), (swift_dynamicCast() & 1) != 0))
    {
      v46 = v59;
    }

    else
    {
      v46 = 10;
    }

    v47 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelay;
    *v47 = v46;
    *(v47 + 8) = 0;
    if (!*(v3 + 16))
    {
      return 0;
    }

    v48 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundIDKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundIDKey + 8));
    if ((v49 & 1) == 0)
    {
      return 0;
    }

    sub_100005DB0(*(v3 + 56) + 32 * v48, v61);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v50 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundID;
    *v50 = v59;
    *(v50 + 4) = 0;
    *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabled) = v59;
    if (!*(v3 + 16))
    {
      goto LABEL_57;
    }
  }

  else
  {
    *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabled) = 0;
    v34 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDuration;
    *v34 = 10;
    *(v34 + 8) = 0;
    *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoops) = 0;
    v35 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelay;
    *v35 = 10;
    *(v35 + 8) = 0;
    v36 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundID;
    *v36 = 0;
    *(v36 + 4) = 0;
    if (!*(v3 + 16))
    {
      goto LABEL_57;
    }
  }

  v37 = sub_100006B64(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutKey + 8));
  if (v38)
  {
    sub_100005DB0(*(v3 + 56) + 32 * v37, v61);
    if (swift_dynamicCast())
    {
      v39 = v59;
      if (!v59)
      {
        return 0;
      }

      goto LABEL_58;
    }
  }

LABEL_57:
  v39 = 60;
LABEL_58:
  v51 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeout;
  *v51 = v39;
  *(v51 + 8) = 0;
  if (*(v3 + 16) && (v52 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationKey), v53 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationKey + 8), , v54 = sub_100006B64(v52, v53), v56 = v55, , (v56 & 1) != 0) && (sub_100005DB0(*(v3 + 56) + 32 * v54, v61), (swift_dynamicCast() & 1) != 0))
  {
    v57 = v59;
    if (*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationMax) < v59 || v59 < *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationMin))
    {
      return 0;
    }
  }

  else
  {
    v57 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationDefault);
  }

  v58 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDuration;
  *v58 = v57;
  *(v58 + 8) = 0;
  return 1;
}

id sub_1000065F4()
{
  v1 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDurationKey];
  *v1 = 0xD00000000000001ALL;
  *(v1 + 1) = 0x8000000100008450;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDurationMin] = 1;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDurationMax] = -1;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDurationDefault] = 30;
  v2 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeaderKey];
  *v2 = 0xD000000000000012;
  *(v2 + 1) = 0x8000000100008470;
  v3 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessageKey];
  *v3 = 0xD000000000000013;
  *(v3 + 1) = 0x8000000100008490;
  v4 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButtonKey];
  *v4 = 0xD000000000000012;
  *(v4 + 1) = 0x80000001000084B0;
  v5 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutKey];
  strcpy(&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutKey], "resultTimeout");
  *(v5 + 7) = -4864;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutMin] = 1;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutMax] = -1;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeoutDefault] = 60;
  v6 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabledKey];
  *v6 = 0xD000000000000018;
  *(v6 + 1) = 0x80000001000084E0;
  v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabledDefault] = 0;
  v7 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopsKey];
  *v7 = 0xD000000000000016;
  *(v7 + 1) = 0x80000001000085A0;
  v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopsDefault] = 0;
  v8 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDurationKey];
  *v8 = 0xD000000000000019;
  *(v8 + 1) = 0x8000000100008500;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDurationMin] = 1;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDurationMax] = -1;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDurationDefault] = 10;
  v9 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelayKey];
  *v9 = 0xD00000000000001ALL;
  *(v9 + 1) = 0x8000000100008540;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelayMin] = 0;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelayMax] = -1;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelayDefault] = 10;
  v10 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundIDKey];
  *v10 = 0xD000000000000013;
  *(v10 + 1) = 0x8000000100008560;
  v11 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationKey];
  *v11 = 0xD00000000000001BLL;
  *(v11 + 1) = 0x8000000100008580;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationMin] = 0;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationMax] = 60;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDurationDefault] = 0;
  v12 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_diagnosticTestWaitDuration];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertHeader];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertMessage];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertButton];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_resultTimeout];
  *v16 = 0;
  v16[8] = 1;
  v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioEnabled] = 2;
  v17 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioDuration];
  *v17 = 0;
  v17[8] = 1;
  v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoops] = 2;
  v18 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertAudioLoopDelay];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_openLidAlertSoundID];
  *v19 = 0;
  v19[4] = 1;
  v20 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticMonitorInputs_delayExitWorkaroundDuration];
  *v20 = 0;
  v20[8] = 1;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for OnDemandAudioDiagnosticMonitorInputs();
  return objc_msgSendSuper2(&v22, "init");
}

id sub_100006984()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnDemandAudioDiagnosticMonitorInputs();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100006B20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100006F3C(*(v2 + 40));

  return sub_100006BDC(a1, v4);
}

unint64_t sub_100006B64(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100006FDC();
  sub_100006E4C();
  v6 = sub_100006FEC();

  return sub_100006CA4(a1, a2, v6);
}

unint64_t sub_100006BDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005D08(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100006F4C();
      sub_1000054DC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100006CA4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100006FAC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}