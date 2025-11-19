id sub_100001320()
{
  result = DiagnosticLogHandleForCategory();
  qword_10000CC20 = result;
  return result;
}

void sub_10000134C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_responder);
  *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_responder) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (a1 && (type metadata accessor for OnDemandAudioDiagnosticTriggerInputs(), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_inputs);
    *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_inputs) = v5;
    swift_unknownObjectRetain();
  }

  else
  {

    sub_10000225C(0);
  }
}

void sub_100001498()
{
  v1 = v0;
  v2 = sub_100003BDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100003C0C();
  v47 = *(v49 - 8);
  v6 = *(v47 + 64);
  __chkstk_darwin(v49);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v42 - v16;
  v18 = OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_responder;
  v19 = *&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_responder];
  if (!v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  v46 = v8;
  v20 = OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_inputs;
  v21 = *&v1[OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_inputs];
  if (!v21)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = (v21 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_hostAppDisconnectTimeout);
  if (v22[1])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v15;
  v44 = v3;
  v45 = v2;
  v24 = *v22;
  swift_unknownObjectRetain();
  isa = sub_100003CFC().super.super.isa;
  [v19 allowSessionAccessoryDisconnectForDuration:isa];
  swift_unknownObjectRelease();

  v26 = *&v1[v18];
  if (!v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v1;
  v54 = sub_100002DFC;
  v55 = v27;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_1000021C8;
  v53 = &unk_100008448;
  v28 = _Block_copy(&aBlock);
  v29 = v1;
  swift_unknownObjectRetain();

  [v26 requestSessionAccessoryIdentifierWithCompletion:v28];
  _Block_release(v28);
  swift_unknownObjectRelease();
  sub_100002B98();
  v30 = sub_100003CDC();
  sub_100003C1C();
  v31 = *&v1[v20];
  if (!v31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v43 = v30;
  v32 = v31 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_triggerTimeout;
  if ((*(v32 + 8) & 1) == 0)
  {
    v33 = *v32;
    sub_100003C3C();
    v34 = *(v10 + 8);
    v35 = v23;
    v34(v14, v23);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = sub_100002E04;
    v55 = v36;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_100003480;
    v53 = &unk_100008470;
    v37 = _Block_copy(&aBlock);

    v38 = v46;
    sub_100003BFC();
    aBlock = &_swiftEmptyArrayStorage;
    sub_100002C78();
    sub_100002CD0(&qword_10000CA70, &qword_100004328);
    sub_100002D18();
    v39 = v48;
    v40 = v45;
    sub_100003D0C();
    v41 = v43;
    sub_100003CCC();
    _Block_release(v37);

    (*(v44 + 8))(v39, v40);
    (*(v47 + 8))(v38, v49);
    v34(v17, v35);
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_100001994()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([v1 isFinished])
    {
    }

    else
    {
      v2 = [v1 isCancelled];

      if ((v2 & 1) == 0)
      {
        sub_100003CAC();
        if (qword_10000C9B0 != -1)
        {
          swift_once();
        }

        sub_100003BCC();
        sub_10000225C(3u);
      }
    }
  }
}

void sub_100001B44(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (a3)
  {
    swift_getErrorValue();
    v5 = sub_100003D4C();
    v7 = v6;
    v8 = sub_100003CAC();
    if (qword_10000C9B0 != -1)
    {
      swift_once();
    }

    v9 = qword_10000CC20;
    if (os_log_type_enabled(qword_10000CC20, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock[0] = v11;
      *v10 = 136315138;
      v12 = sub_100002E14(v5, v7, aBlock);

      *(v10 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v9, v8, "Unable to get UUID for session accessory with error %s", v10, 0xCu);
      sub_100002EE0(v11);
    }

    else
    {
    }

    sub_10000225C(2u);
  }

  else
  {
    v13 = *&a4[OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_hearingModeClient];
    v14 = sub_100003C5C();
    v15 = swift_allocObject();
    *(v15 + 16) = a4;
    aBlock[4] = sub_100002E0C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000215C;
    aBlock[3] = &unk_1000084C0;
    v16 = _Block_copy(aBlock);
    v17 = a4;

    [v13 triggerOnDemandDiagnosticCheckForDeviceIdentifier:v14 completion:v16];
    _Block_release(v16);
  }
}

uint64_t sub_100001D7C(uint64_t a1, char *a2)
{
  if (!a1)
  {
    return sub_10000225C(5u);
  }

  swift_getErrorValue();
  swift_errorRetain();
  v3 = sub_100003D4C();
  v5 = v4;
  v6 = sub_100003CAC();
  if (qword_10000C9B0 != -1)
  {
    swift_once();
  }

  v7 = qword_10000CC20;
  result = os_log_type_enabled(qword_10000CC20, v6);
  if (result)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100002E14(v3, v5, v31);
    _os_log_impl(&_mh_execute_header, v7, v6, "On demand diagnostic check trigger failed with error %s.", v9, 0xCu);
    sub_100002EE0(v10);
  }

  v11 = *&a2[OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_inputs];
  if (!v11)
  {
    goto LABEL_20;
  }

  v12 = (v11 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_retryCount);
  if (v12[1])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_retryCount;
  v14 = *&a2[OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_retryCount];
  v15 = *v12;

  if (v14 >= v15)
  {
    v26 = sub_100003CAC();
    if (os_log_type_enabled(v7, v26))
    {
      v27 = a2;
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = *&a2[v13];

      _os_log_impl(&_mh_execute_header, v7, v26, "Maximum number or retries reached (%lu). Failing test.", v28, 0xCu);
    }

    v29 = [a2 result];
    isa = sub_100003C9C().super.super.isa;
    [v29 setStatusCode:isa];
  }

  v16 = *&a2[v13];
  v17 = __CFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *&a2[v13] = v18;
  v19 = sub_100003CAC();
  result = os_log_type_enabled(v7, v19);
  if (result)
  {
    v20 = a2;
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = *&a2[v13];

    _os_log_impl(&_mh_execute_header, v7, v19, "Retrying. Current retry count is now %lu", v21, 0xCu);
  }

  v22 = *&a2[OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_responder];
  if (v22)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    v31[4] = sub_100003484;
    v31[5] = v23;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 1107296256;
    v31[2] = sub_1000021C8;
    v31[3] = &unk_100008510;
    v24 = _Block_copy(v31);
    v25 = a2;
    swift_unknownObjectRetain();

    [v22 requestSessionAccessoryIdentifierWithCompletion:v24];
    _Block_release(v24);
    swift_unknownObjectRelease();
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_10000215C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1000021C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_100003C6C();
  v8 = v7;

  v9 = a3;
  v5(v6, v8, a3);
}

id sub_10000225C(unsigned __int8 a1)
{
  v2 = sub_100003BDC();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  (__chkstk_darwin)();
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003C0C();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  (__chkstk_darwin)();
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100003C2C();
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = sub_100003BEC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = __chkstk_darwin(v15);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v22 = 0;
      v23 = -2;
    }

    else
    {
      v41 = 0;
      if (a1 != 4)
      {
        goto LABEL_16;
      }

      v22 = 0;
      v23 = -1;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v41 = -900;
      v22 = 1;
      goto LABEL_12;
    }

    v22 = 0;
    v23 = -3;
  }

  else
  {
    v22 = 0;
    v23 = -901;
  }

  v41 = v23;
LABEL_12:
  v24 = sub_100003CAC();
  if (qword_10000C9B0 != -1)
  {
    LODWORD(v40) = v24;
    swift_once();
  }

  sub_100003BCC();
  result = *(v49 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_responder);
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  result = [result clearAllowSessionAccessoryDisconnect];
  v25 = 0.0;
  if ((v22 & 1) == 0)
  {
LABEL_16:
    v26 = *(v49 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerController_inputs);
    if (v26)
    {
      v27 = v26 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_delayExitWorkaroundDuration;
      if ((*(v27 + 8) & 1) == 0)
      {
        v25 = *v27;
        goto LABEL_19;
      }

LABEL_26:
      __break(1u);
      return result;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_19:
  v28 = sub_100003CBC();
  if (qword_10000C9B0 != -1)
  {
    swift_once();
  }

  v29 = qword_10000CC20;
  if (os_log_type_enabled(qword_10000CC20, v28))
  {
    v30 = swift_slowAlloc();
    *v30 = 134218240;
    *(v30 + 4) = v41;
    *(v30 + 12) = 2048;
    *(v30 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v29, v28, "Test finished with status code %ld. Will end test after %f seconds", v30, 0x16u);
  }

  sub_100002B98();
  (*(v16 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v15);
  v40 = sub_100003CEC();
  (*(v16 + 8))(v20, v15);
  sub_100003C1C();
  v31 = v14;
  sub_100003C3C();
  v41 = *(v8 + 8);
  v32 = v42;
  (v41)(v12, v42);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v21;
  aBlock[4] = sub_100002C54;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003480;
  aBlock[3] = &unk_1000083F8;
  v35 = _Block_copy(aBlock);

  v36 = v43;
  sub_100003BFC();
  v50 = &_swiftEmptyArrayStorage;
  sub_100002C78();
  sub_100002CD0(&qword_10000CA70, &qword_100004328);
  sub_100002D18();
  v37 = v44;
  v38 = v48;
  sub_100003D0C();
  v39 = v40;
  sub_100003CCC();
  _Block_release(v35);

  (*(v47 + 8))(v37, v38);
  (*(v45 + 8))(v36, v46);
  (v41)(v31, v32);
}

void sub_1000028D0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (([v4 isFinished] & 1) == 0)
    {
      sub_100003CBC();
      if (qword_10000C9B0 != -1)
      {
        swift_once();
      }

      sub_100003BCC();
      v5 = [v4 result];
      v6 = qword_100004370[a2];
      isa = sub_100003C9C().super.super.isa;
      [v5 setStatusCode:isa];

      [v4 setFinished:1];
    }
  }
}

uint64_t sub_100002A14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_100002AE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnDemandAudioDiagnosticTriggerController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100002B98()
{
  result = qword_10000CA60;
  if (!qword_10000CA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000CA60);
  }

  return result;
}

uint64_t sub_100002BE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002C1C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100002C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100002C78()
{
  result = qword_10000CA68;
  if (!qword_10000CA68)
  {
    sub_100003BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CA68);
  }

  return result;
}

uint64_t sub_100002CD0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002D18()
{
  result = qword_10000CA78;
  if (!qword_10000CA78)
  {
    sub_100002D7C(&qword_10000CA70, &qword_100004328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000CA78);
  }

  return result;
}

uint64_t sub_100002D7C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002DC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002E14(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002F2C(v11, 0, 0, 1, a1, a2);
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
    sub_100003038(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002EE0(v11);
  return v7;
}

uint64_t sub_100002EE0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100002F2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003094(a5, a6);
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
    result = sub_100003D2C();
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

uint64_t sub_100003038(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_100003094(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000030E0(a1, a2);
  sub_100003210(&off_100008380);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000030E0(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000032FC(v5, 0);
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

  result = sub_100003D2C();
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
        v10 = sub_100003C8C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000032FC(v10, 0);
        result = sub_100003D1C();
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

uint64_t sub_100003210(uint64_t result)
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

  result = sub_100003370(result, v12, 1, v3);
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

void *sub_1000032FC(uint64_t a1, uint64_t a2)
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

  sub_100002CD0(&unk_10000CA80, qword_100004330);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003370(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002CD0(&unk_10000CA80, qword_100004330);
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

uint64_t sub_100003498(uint64_t result)
{
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = v1;
  v3 = result;
  if (*(result + 16) && (v4 = sub_100003A9C(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_triggerTimeoutKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_triggerTimeoutKey + 8)), (v5 & 1) != 0) && (sub_100003038(*(v3 + 56) + 32 * v4, v25), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v24;
    if (v24 - 61 < 0xFFFFFFFFFFFFFFC4)
    {
      return 0;
    }
  }

  else
  {
    v6 = 10;
  }

  v7 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_triggerTimeout;
  *v7 = v6;
  *(v7 + 8) = 0;
  if (*(v3 + 16) && (v8 = sub_100003A9C(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_retryCountKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_retryCountKey + 8)), (v9 & 1) != 0) && (sub_100003038(*(v3 + 56) + 32 * v8, v25), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v24;
    if (!v24)
    {
      return 0;
    }

    v11 = &OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_retryCount;
  }

  else
  {
    v11 = &OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_triggerTimeout;
    v10 = 10;
  }

  v12 = v2 + *v11;
  *v12 = v10;
  *(v12 + 8) = 0;
  if (!*(v3 + 16) || (v13 = sub_100003A9C(*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_hostAppDisconnectTimeoutKey), *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_hostAppDisconnectTimeoutKey + 8)), (v14 & 1) == 0) || (sub_100003038(*(v3 + 56) + 32 * v13, v25), (swift_dynamicCast() & 1) == 0))
  {
    v15 = 300;
    goto LABEL_20;
  }

  v15 = v24;
  if (v24 - 601 < 0xFFFFFFFFFFFFFDC5)
  {
    return 0;
  }

LABEL_20:
  v16 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_hostAppDisconnectTimeout;
  *v16 = v15;
  *(v16 + 8) = 0;
  if (*(v3 + 16) && (v17 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_delayExitWorkaroundDurationKey), v18 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_delayExitWorkaroundDurationKey + 8), , v19 = sub_100003A9C(v17, v18), v21 = v20, , (v21 & 1) != 0) && (sub_100003038(*(v3 + 56) + 32 * v19, v25), (swift_dynamicCast() & 1) != 0))
  {
    v22 = v24;
    if (*(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_delayExitWorkaroundDurationMax) < v24 || v24 < *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_delayExitWorkaroundDurationMin))
    {
      return 0;
    }
  }

  else
  {
    v22 = *(v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_delayExitWorkaroundDurationDefault);
  }

  v23 = v2 + OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_delayExitWorkaroundDuration;
  *v23 = v22;
  *(v23 + 8) = 0;
  return 1;
}

id sub_1000037D0()
{
  v1 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_triggerTimeoutKey];
  strcpy(&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_triggerTimeoutKey], "triggerTimeout");
  v1[15] = -18;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_triggerTimeoutMin] = 1;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_triggerTimeoutMax] = 60;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_triggerTimeoutDefault] = 10;
  v2 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_retryCountKey];
  *v2 = 0x756F437972746572;
  *(v2 + 1) = 0xEA0000000000746ELL;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_retryCountMin] = 1;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_retryCountMax] = -1;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_retryCountDefault] = 1;
  v3 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_hostAppDisconnectTimeoutKey];
  *v3 = 0xD000000000000018;
  *(v3 + 1) = 0x8000000100004A30;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_hostAppDisconnectTimeoutMin] = 30;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_hostAppDisconnectTimeoutMax] = 600;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_hostAppDisconnectTimeoutDefault] = 300;
  v4 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_delayExitWorkaroundDurationKey];
  *v4 = 0xD00000000000001BLL;
  *(v4 + 1) = 0x8000000100004A50;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_delayExitWorkaroundDurationMin] = 0;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_delayExitWorkaroundDurationMax] = 60;
  *&v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_delayExitWorkaroundDurationDefault] = 0;
  v5 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_triggerTimeout];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_retryCount];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_hostAppDisconnectTimeout];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v0[OBJC_IVAR___OnDemandAudioDiagnosticTriggerInputs_delayExitWorkaroundDuration];
  *v8 = 0;
  v8[8] = 1;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for OnDemandAudioDiagnosticTriggerInputs();
  return objc_msgSendSuper2(&v10, "init");
}

id sub_1000039C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnDemandAudioDiagnosticTriggerInputs();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100003A9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100003D5C();
  sub_100003C7C();
  v6 = sub_100003D6C();

  return sub_100003B14(a1, a2, v6);
}

unint64_t sub_100003B14(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100003D3C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}