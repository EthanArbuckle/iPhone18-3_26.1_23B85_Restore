void *sub_1000020D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void type metadata accessor for AVAudioDeviceTestSequenceOutputMode()
{
  if (!qword_100035760)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100035760);
    }
  }
}

void sub_100002144()
{
  v0 = sub_10002188C();
  v1 = [objc_opt_self() UUIDWithString:v0];

  qword_10003D030 = v1;
}

void sub_1000021B4()
{
  v0 = sub_10002188C();
  v1 = [objc_opt_self() UUIDWithString:v0];

  qword_10003D038 = v1;
}

void sub_100002224()
{
  v0 = sub_10002188C();
  v1 = [objc_opt_self() UUIDWithString:v0];

  qword_10003D040 = v1;
}

id sub_100002294(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a1;
  v67 = a3;
  v7 = sub_1000217AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000217CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000217EC();
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v25 = &v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxSerial];
  if (*&v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxSerial + 8])
  {
    sub_1000219CC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_10002178C();
    v26 = *sub_10000BEFC(&v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate], *&v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24]);
    v27 = [v26 result];
    if (*&v26[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v28 = *&v26[OBJC_IVAR___AudioBoxController_exclavesStatus];

      v29.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v29.super.isa = 0;
    }

    v53 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v55 = [v53 testResultOverrideForExclavesStatus:v29.super.isa originalResult:isa];

    [v27 setStatusCode:v55];

    return [v26 setFinished:1];
  }

  else
  {
    v58 = &v56 - v23;
    v59 = v24;
    v60 = v16;
    v61 = v13;
    v62 = v11;
    v63 = v8;
    v64 = v7;
    v65 = v22;
    v30 = v67;
    *v25 = v66;
    *(v25 + 1) = a2;
    v31 = &v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxConnectionCompletion];
    v33 = *&v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxConnectionCompletion];
    v32 = *&v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxConnectionCompletion + 8];
    *v31 = v30;
    v31[1] = a4;

    result = sub_10000C004(v33);
    v35 = *&v4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_centralManager];
    if (v35)
    {
      v36 = v4;
      sub_100009BDC(&qword_100035DA8, &qword_1000259D0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000257F0;
      v38 = qword_1000356E0;
      v39 = v35;
      v67 = v12;
      v40 = v60;
      if (v38 != -1)
      {
        swift_once();
      }

      v41 = qword_10003D030;
      *(v37 + 32) = qword_10003D030;
      sub_10000C380(0, &qword_100035D70, CBUUID_ptr);
      v42 = v41;
      v43 = sub_10002196C().super.isa;

      [v39 scanForPeripheralsWithServices:v43 options:0];

      sub_10000C380(0, &qword_100035E28, OS_dispatch_queue_ptr);
      v57 = sub_100021A0C();
      sub_1000217DC();
      v44 = v58;
      sub_1000217FC();
      v66 = *(v59 + 8);
      v45 = v21;
      v46 = v65;
      v66(v45, v65);
      v47 = swift_allocObject();
      *(v47 + 16) = v36;
      aBlock[4] = sub_10000C4B0;
      aBlock[5] = v47;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002B54;
      aBlock[3] = &unk_100030D08;
      v48 = _Block_copy(aBlock);
      v49 = v36;

      sub_1000217BC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10000C420(&qword_100035E30, &type metadata accessor for DispatchWorkItemFlags);
      sub_100009BDC(&qword_100035E38, &qword_100025A08);
      sub_10000C468(&qword_100035E40, &qword_100035E38, &qword_100025A08);
      v50 = v62;
      v51 = v64;
      sub_100021A6C();
      v52 = v57;
      sub_1000219FC();
      _Block_release(v48);

      (*(v63 + 8))(v50, v51);
      (*(v61 + 8))(v40, v67);
      return (v66)(v44, v46);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

char *sub_10000296C(char *result)
{
  if (!*&result[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBox])
  {
    v1 = result;
    sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_10002178C();
    result = *&v1[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_centralManager];
    if (result)
    {
      [result stopScan];
      v2 = *sub_10000BEFC(&v1[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate], *&v1[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24]);
      v3 = [v2 result];
      if (*&v2[OBJC_IVAR___AudioBoxController_exclavesStatus])
      {
        v4 = *&v2[OBJC_IVAR___AudioBoxController_exclavesStatus];

        v5.super.isa = sub_10002185C().super.isa;
      }

      else
      {
        v5.super.isa = 0;
      }

      v6 = objc_opt_self();
      isa = sub_10002199C().super.super.isa;
      v8 = [v6 testResultOverrideForExclavesStatus:v5.super.isa originalResult:isa];

      [v3 setStatusCode:v8];

      return [v2 setFinished:1];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100002B54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100002B98(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v5 = v4;
  v36 = a3;
  v39 = sub_1000217AC();
  v42 = *(v39 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v39);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000217CC();
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = *(v40 + 64);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000217EC();
  v37 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v35 - v21;
  v23 = &v5[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_expectedAudioBoxToken];
  v24 = *&v5[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_expectedAudioBoxToken + 8];
  *v23 = a1;
  *(v23 + 1) = a2;

  v25 = &v5[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxAuthenticationCompletion];
  v26 = *&v5[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxAuthenticationCompletion];
  v27 = *&v5[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxAuthenticationCompletion + 8];
  *v25 = v36;
  *(v25 + 1) = a4;

  sub_10000C004(v26);
  sub_10000C380(0, &qword_100035E28, OS_dispatch_queue_ptr);
  v28 = sub_100021A0C();
  sub_1000217DC();
  sub_1000217FC();
  v36 = *(v16 + 8);
  v36(v20, v15);
  v29 = swift_allocObject();
  *(v29 + 16) = v5;
  aBlock[4] = sub_10000C400;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B54;
  aBlock[3] = &unk_100030CB8;
  v30 = _Block_copy(aBlock);
  v31 = v5;

  sub_1000217BC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000C420(&qword_100035E30, &type metadata accessor for DispatchWorkItemFlags);
  sub_100009BDC(&qword_100035E38, &qword_100025A08);
  sub_10000C468(&qword_100035E40, &qword_100035E38, &qword_100025A08);
  v32 = v38;
  v33 = v39;
  sub_100021A6C();
  sub_1000219FC();
  _Block_release(v30);

  (*(v42 + 8))(v32, v33);
  (*(v40 + 8))(v14, v41);
  return (v36)(v22, v37);
}

_BYTE *sub_100002FDC(_BYTE *result)
{
  if ((result[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_isAudioBoxAuthenticated] & 1) == 0)
  {
    v2 = result;
    sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_10002178C();
    v3 = *sub_10000BEFC(&v2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate], *&v2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24]);
    v4 = [v3 result];
    if (*&v3[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v5 = *&v3[OBJC_IVAR___AudioBoxController_exclavesStatus];

      v6.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v6.super.isa = 0;
    }

    v7 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v9 = [v7 testResultOverrideForExclavesStatus:v6.super.isa originalResult:isa];

    [v4 setStatusCode:v9];

    return [v3 setFinished:1];
  }

  return result;
}

id sub_100003194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_expectedAudioBoxToken);
  v7 = *(v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_expectedAudioBoxToken + 8);
  if (v7 && (*v6 == a1 ? (v8 = v7 == a2) : (v8 = 0), v8 || (sub_100021C3C() & 1) != 0))
  {
    sub_1000219DC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100025800;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100009C28();
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;

    sub_10002178C();

    *(v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_isAudioBoxAuthenticated) = 1;
    v10 = (v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxAuthenticationCompletion);
    v11 = *(v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxAuthenticationCompletion);
    if (v11)
    {
      v12 = v10[1];

      v11(v13);
      sub_10000C004(v11);
      v14 = *v10;
    }

    else
    {
      v14 = 0;
    }

    v27 = v10[1];
    *v10 = 0;
    v10[1] = 0;

    return sub_10000C004(v14);
  }

  else
  {
    sub_1000219BC();
    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100025810;
    *(v15 + 56) = &type metadata for String;
    result = sub_100009C28();
    *(v15 + 64) = result;
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;
    v17 = v6[1];
    if (v17)
    {
      v18 = *v6;
      *(v15 + 96) = &type metadata for String;
      *(v15 + 104) = result;
      *(v15 + 72) = v18;
      *(v15 + 80) = v17;
      sub_10000C380(0, &qword_100035E20, OS_os_log_ptr);

      v19 = sub_100021A2C();
      sub_10002178C();

      v20 = *sub_10000BEFC((v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
      v21 = [v20 result];
      if (*&v20[OBJC_IVAR___AudioBoxController_exclavesStatus])
      {
        v22 = *&v20[OBJC_IVAR___AudioBoxController_exclavesStatus];

        v23.super.isa = sub_10002185C().super.isa;
      }

      else
      {
        v23.super.isa = 0;
      }

      v24 = objc_opt_self();
      isa = sub_10002199C().super.super.isa;
      v26 = [v24 testResultOverrideForExclavesStatus:v23.super.isa originalResult:isa];

      [v21 setStatusCode:v26];

      return [v20 setFinished:1];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100003528(__int128 *a1)
{
  v2 = v1;
  v4 = sub_10002162C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_10002161C();
  v22 = *a1;
  v23 = a1[1];
  v24 = *(a1 + 32);
  sub_10000C318();
  v7 = sub_10002160C();
  v9 = v8;

  v10 = *(v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBox);
  if (v10 && (v11 = *(v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_messagingCharacteristic)) != 0)
  {
    v12 = v10;
    v13 = v11;
    sub_10000A3FC(v7, v9, v12, v13);
  }

  else
  {
    sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_10002178C();
    v14 = *sub_10000BEFC((v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v15 = [v14 result];
    if (*&v14[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v16 = *&v14[OBJC_IVAR___AudioBoxController_exclavesStatus];

      v17.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v17.super.isa = 0;
    }

    v18 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v20 = [v18 testResultOverrideForExclavesStatus:v17.super.isa originalResult:isa];

    [v15 setStatusCode:v20];
    [v14 setFinished:1];
  }

  return sub_100009688(v7, v9);
}

uint64_t sub_100003988()
{
  v32 = xmmword_100025820;
  v1 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_messagePacketsReceived;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + v1);

    v5 = (v2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      sub_100009634(v6, *v5);
      sub_10002175C();
      sub_100009688(v6, v7);
      v5 += 2;
      --v3;
    }

    while (v3);

    v8 = *(v0 + v1);
    v10 = *(&v32 + 1);
    v9 = v32;
  }

  else
  {
    v9 = 0;
    v10 = 0xC000000000000000;
  }

  *(v0 + v1) = &_swiftEmptyArrayStorage;

  v11 = sub_1000215FC();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1000215EC();
  sub_10000C214();
  sub_1000215DC();

  v33 = v28;
  v34 = v29;
  v35 = v30;
  v36 = v31;
  sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100025800;
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v31 = v36;
  sub_10000C268(&v33, &v27);
  v15 = sub_1000218FC();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_100009C28();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_10002178C();

  if (!v36)
  {
    if (*(v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_isAudioBoxAuthenticated))
    {
      sub_1000219BC();
      sub_10002178C();
      goto LABEL_17;
    }

LABEL_14:
    v22 = *sub_10000BEFC((v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    sub_10001C720(&v33);
    goto LABEL_17;
  }

  if (*(v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_isAudioBoxAuthenticated))
  {
    goto LABEL_14;
  }

  sub_1000219BC();
  sub_10002178C();
  v18 = *sub_10000BEFC((v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
  v19 = [v18 result];
  if (*&v18[OBJC_IVAR___AudioBoxController_exclavesStatus])
  {
    v20 = *&v18[OBJC_IVAR___AudioBoxController_exclavesStatus];

    v21.super.isa = sub_10002185C().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  v23 = objc_opt_self();
  isa = sub_10002199C().super.super.isa;
  v25 = [v23 testResultOverrideForExclavesStatus:v21.super.isa originalResult:isa];

  [v19 setStatusCode:v25];
  [v18 setFinished:1];
LABEL_17:
  sub_10000C2C4(&v33);
  return sub_100009688(v9, v10);
}

void sub_100003F78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a5;
  v46 = a6;
  v10 = sub_10002184C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10002183C();
  v15 = *(v49 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  v47 = qword_10003D048;
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100025810;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100009C28();
  v50 = a1;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  v52 = a2;
  v53 = a4;
  v20 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(v53);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v20 != 2)
  {
    v21 = 0;
    goto LABEL_13;
  }

  v23 = *(a3 + 16);
  v22 = *(a3 + 24);
  v24 = __OFSUB__(v22, v23);
  v21 = v22 - v23;
  if (v24)
  {
    __break(1u);
LABEL_10:
    LODWORD(v21) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
      goto LABEL_39;
    }

    v21 = v21;
  }

LABEL_13:
  *(v19 + 96) = &type metadata for Int;
  *(v19 + 104) = &protocol witness table for Int;
  *(v19 + 72) = v21;

  sub_10002178C();

  sub_10000C420(&unk_100035DE0, &type metadata accessor for SHA256);
  sub_10002182C();
  v25 = v53;
  sub_100009634(a3, v53);
  sub_100009EA8(a3, v25);
  sub_100009688(a3, v25);
  sub_10002181C();
  (*(v11 + 8))(v14, v10);
  v26 = sub_1000054C0(v18);
  (*(v15 + 8))(v18, v49);
  *&v54 = v26;
  sub_100009BDC(&unk_100035F40, &qword_1000259F8);
  sub_10000C468(&qword_100035DF0, &unk_100035F40, &qword_1000259F8);
  v27 = sub_10002187C();
  v29 = v28;

  if (v20 <= 1)
  {
    v31 = v50;
    v30 = v51;
    if (!v20)
    {
      v33 = v52;
      v32 = BYTE6(v53);
      v34 = BYTE6(v53);
      goto LABEL_23;
    }

LABEL_20:
    v32 = BYTE6(v53);
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v34 = HIDWORD(a3) - a3;
      v33 = v52;
      goto LABEL_22;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v34 = 0;
  v30 = v51;
  v33 = v52;
  v31 = v50;
  v32 = BYTE6(v53);
  if (v20 != 2)
  {
    goto LABEL_23;
  }

  v36 = *(a3 + 16);
  v35 = *(a3 + 24);
  v34 = v35 - v36;
  if (__OFSUB__(v35, v36))
  {
    __break(1u);
    goto LABEL_20;
  }

LABEL_22:
  if (v34 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

LABEL_23:
  sub_100009BDC(&qword_100035D28, ">C");
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100025800;
  *(v37 + 32) = v31;
  *(v37 + 40) = v33;
  *(v37 + 48) = v34;
  *(v37 + 56) = v27;
  *(v37 + 64) = v29;
  v54 = v37;
  v55 = 0;
  v56 = 0;
  v57 = 2;

  sub_100003528(&v54);

  swift_beginAccess();
  sub_10002175C();
  swift_endAccess();
  if (v20 <= 1)
  {
    if (!v20)
    {
      v34 = v32;
      goto LABEL_32;
    }

LABEL_30:
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v34 = HIDWORD(a3) - a3;
      goto LABEL_32;
    }

LABEL_40:
    __break(1u);
    return;
  }

  v34 = 0;
  if (v20 == 2)
  {
    v39 = *(a3 + 16);
    v38 = *(a3 + 24);
    v34 = v38 - v39;
    if (__OFSUB__(v38, v39))
    {
      __break(1u);
      goto LABEL_30;
    }
  }

LABEL_32:
  v26 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_filesToSend;
  swift_beginAccess();
  v27 = *(v30 + v26);

  v20 = v46;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v30 + v26) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_37:
    v27 = sub_100009D88(0, *(v27 + 16) + 1, 1, v27);
    *(v30 + v26) = v27;
  }

  v42 = *(v27 + 16);
  v41 = *(v27 + 24);
  if (v42 >= v41 >> 1)
  {
    v27 = sub_100009D88((v41 > 1), v42 + 1, 1, v27);
  }

  *(v27 + 16) = v42 + 1;
  v43 = (v27 + 48 * v42);
  v43[4] = v31;
  v43[5] = v33;
  v44 = v45;
  v43[6] = v34;
  v43[7] = v44;
  v43[8] = v20;
  v43[9] = 0;
  *(v30 + v26) = v27;
  swift_endAccess();
  sub_100004548();
}

void sub_100004548()
{
  v2 = *&v0[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capChannel];
  if (v2)
  {
    v3 = [v2 outputStream];
    if (v3)
    {
      v73 = v3;
      if (![v3 hasSpaceAvailable])
      {
        v8 = v73;

        goto LABEL_10;
      }

      v4 = &v0[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_fileDataToSend];
      swift_beginAccess();
      v5 = *v4;
      v6 = v4[1];
      v7 = v6 >> 62;
      if ((v6 >> 62) > 1)
      {
        v8 = v73;
        if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = v73;
        if (v7)
        {
          if (v5 == v5 >> 32)
          {
            goto LABEL_10;
          }
        }

        else if ((v6 & 0xFF000000000000) == 0)
        {
LABEL_10:

          return;
        }
      }

      v9 = v8;
      v10 = v0;
      sub_100009634(v5, v6);
      v11 = sub_1000097AC(v5, v6, v9, v10);
      sub_100009688(v5, v6);
      v12 = [v9 streamError];
      v13 = _TtC15Diagnostic_838924AudioBoxBluetoothManager;
      cache = _TtC15Diagnostic_838924AudioBoxBluetoothManager;
      v71 = v10;
      if (!v12)
      {
        v68 = v4;
        v69 = v9;
        v1 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_filesToSend;
        swift_beginAccess();
        v70 = xmmword_100025830;
        v67 = v11;
        v15 = v11;
        while (1)
        {
          v17 = *&v10[v1];
          if (!*(v17 + 2) || v15 < 1)
          {
            goto LABEL_46;
          }

          v26 = *(v17 + 9);
          v27 = *(v17 + 6);
          v13 = (v27 - v26);
          if (__OFSUB__(v27, v26))
          {
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
            goto LABEL_67;
          }

          v9 = *(v17 + 5);
          v0 = *(v17 + 8);
          if (v15 < v13)
          {
            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v10[v1] = v17;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              goto LABEL_69;
            }

            if (!*(v17 + 2))
            {
              goto LABEL_70;
            }

            goto LABEL_42;
          }

          v28 = *(v17 + 7);
          swift_beginAccess();

          v29 = swift_isUniquelyReferenced_nonNull_native();
          *&v10[v1] = v17;
          if (v29)
          {
            if (!*(v17 + 2))
            {
              goto LABEL_62;
            }
          }

          else
          {
            v17 = sub_10000A088(v17);
            if (!*(v17 + 2))
            {
              goto LABEL_62;
            }
          }

          v30 = *(v17 + 9);
          v31 = __OFADD__(v30, v13);
          v32 = v13 + v30;
          if (v31)
          {
            goto LABEL_63;
          }

          *(v17 + 9) = v32;
          *&v10[v1] = v17;
          swift_endAccess();
          sub_1000219DC();
          if (qword_1000356F8 != -1)
          {
            swift_once();
          }

          sub_100009BDC(&qword_100035D30, &qword_100025988);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_100025830;
          v34 = *&v10[v1];
          if (!v34[2])
          {
            goto LABEL_64;
          }

          v35 = v33;
          v72 = v15;
          v15 = v9;
          v9 = v34[4];
          v36 = v34[5];
          *(v33 + 56) = &type metadata for String;
          *(v33 + 64) = sub_100009C28();
          v35[4] = v9;
          v35[5] = v36;
          v37 = v34[9];
          v35[12] = &type metadata for Int;
          v35[13] = &protocol witness table for Int;
          v35[9] = v37;
          v38 = v34[6];
          v35[17] = &type metadata for Int;
          v35[18] = &protocol witness table for Int;
          v35[14] = v38;
          v10 = v71;

          sub_10002178C();

          v28(0);
          swift_beginAccess();
          v24 = *&v71[v1];
          v39 = *(v24 + 2);
          if (!v39)
          {
            goto LABEL_65;
          }

          v40 = *&v71[v1];
          v41 = swift_isUniquelyReferenced_nonNull_native();
          *&v71[v1] = v24;
          if (!v41 || (v39 - 1) > *(v24 + 3) >> 1)
          {
            v24 = sub_100009D88(v41, v39, 1, v24);
            *&v71[v1] = v24;
          }

          cache = _TtC15Diagnostic_838924AudioBoxBluetoothManager;
          sub_10000A3CC((v24 + 32));
          v25 = *(v24 + 2);
          memmove(v24 + 32, v24 + 80, 48 * v25 - 48);
          *(v24 + 2) = v25 - 1;
          *&v71[v1] = v24;
          swift_endAccess();

          v15 = v72 - v13;
          if (__OFSUB__(v72, v13))
          {
            goto LABEL_66;
          }
        }
      }

      v0 = v12;
      v15 = sub_1000219BC();
      if (qword_1000356F8 != -1)
      {
LABEL_67:
        swift_once();
      }

      sub_100009BDC(&qword_100035D30, &qword_100025988);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100025800;
      v17 = v0;
      sub_100009BDC(&qword_100035D48, &qword_100025998);
      v18 = sub_1000218FC();
      v20 = v19;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_100009C28();
      *(v16 + 32) = v18;
      *(v16 + 40) = v20;
      sub_10002178C();

      cache = v13[74].cache;
      v10 = v71;
      swift_beginAccess();
      v21 = *(&cache->isa + v71);
      if (v21[2])
      {
        v23 = v21[7];
        v22 = v21[8];
        v15 = v17;

        v23(v0);
      }

      swift_beginAccess();
      if ((*(&cache->isa + v71))->cache)
      {
        sub_10000A960(0, 1);
        swift_endAccess();

LABEL_57:
        return;
      }

      __break(1u);
LABEL_69:
      v17 = sub_10000A088(v17);
      if (*(v17 + 2))
      {
LABEL_42:
        v43 = *(v17 + 9);
        v31 = __OFADD__(v43, v15);
        v44 = v43 + v15;
        if (!v31)
        {
          *(v17 + 9) = v44;
          *&v10[v1] = v17;
          swift_endAccess();
          sub_1000219DC();
          if (cache[44].vtable == -1)
          {
LABEL_44:
            sub_100009BDC(&qword_100035D30, &qword_100025988);
            v45 = swift_allocObject();
            *(v45 + 16) = v70;
            v46 = *&v10[v1];
            if (!v46[2])
            {
              __break(1u);
              goto LABEL_74;
            }

            v48 = v46[4];
            v47 = v46[5];
            *(v45 + 56) = &type metadata for String;
            v49 = v45;
            *(v45 + 64) = sub_100009C28();
            v49[4] = v48;
            v49[5] = v47;
            v50 = v46[9];
            v49[12] = &type metadata for Int;
            v49[13] = &protocol witness table for Int;
            v49[9] = v50;
            v51 = v46[6];
            v49[17] = &type metadata for Int;
            v49[18] = &protocol witness table for Int;
            v49[14] = v51;

            sub_10002178C();

LABEL_46:
            v52 = *v68;
            v53 = v68[1];
            v54 = v53 >> 62;
            if ((v53 >> 62) > 1)
            {
              v9 = v69;
              v55 = v67;
              if (v54 != 2)
              {
                if (v67 < 0)
                {
                  goto LABEL_56;
                }

                goto LABEL_60;
              }

              v58 = *(v52 + 16);
              v57 = *(v52 + 24);
              v31 = __OFSUB__(v57, v58);
              v56 = v57 - v58;
              if (!v31)
              {
LABEL_55:
                if (v55 < v56)
                {
LABEL_56:
                  sub_100009634(v52, v53);
                  v59 = sub_10002177C();
                  v61 = v60;
                  sub_100009688(v52, v53);
                  v62 = *v68;
                  v63 = v68[1];
                  *v68 = v59;
                  v68[1] = v61;
                  v64 = sub_100009688(v62, v63);
                  sub_100004548(v64);
                  goto LABEL_57;
                }

LABEL_60:

                v65 = *v68;
                v66 = v68[1];
                *v68 = xmmword_100025820;
                sub_100009688(v65, v66);
                return;
              }

              __break(1u);
            }

            else
            {
              v9 = v69;
              v55 = v67;
              if (!v54)
              {
                v56 = BYTE6(v53);
                goto LABEL_55;
              }
            }

            LODWORD(v56) = HIDWORD(v52) - v52;
            if (!__OFSUB__(HIDWORD(v52), v52))
            {
              v56 = v56;
              goto LABEL_55;
            }

LABEL_74:
            __break(1u);
            return;
          }

LABEL_72:
          swift_once();
          goto LABEL_44;
        }
      }

      else
      {
LABEL_70:
        __break(1u);
      }

      __break(1u);
      goto LABEL_72;
    }
  }
}

uint64_t sub_100004D6C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_expectedFiles;
  v3 = (v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_fileDataReceived);
  swift_beginAccess();
  result = swift_beginAccess();
  for (i = *(v0 + v2); *(i + 16); i = *(v1 + v2))
  {
    v8 = *(i + 40);
    v9 = *(i + 64);
    v24[0] = *(i + 32);
    v24[1] = v8;
    v10 = *(i + 48);
    v25 = v10;
    v26 = v9;
    v11 = *v3;
    v12 = v3[1];
    v13 = v12 >> 62;
    if ((v12 >> 62) <= 1)
    {
      if (v13)
      {
        LODWORD(v14) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_23;
        }

        v14 = v14;
        if ((v14 & 0x8000000000000000) != 0)
        {
          return result;
        }
      }

      else
      {
        v14 = BYTE6(v12);
      }

      goto LABEL_14;
    }

    if (v13 == 2)
    {
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      v17 = __OFSUB__(v15, v16);
      v14 = v15 - v16;
      if (v17)
      {
        goto LABEL_24;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        return result;
      }

LABEL_14:
      if (v14 < v10)
      {
        return result;
      }

      goto LABEL_17;
    }

    if (v10)
    {
      return result;
    }

LABEL_17:

    sub_100009634(v11, v12);
    v18 = sub_10002176C();
    v20 = v19;
    sub_100009688(v11, v12);
    swift_beginAccess();
    sub_10002170C();
    swift_endAccess();
    sub_100004FD8(v18, v20, v24);

    result = swift_beginAccess();
    v6 = *(v1 + v2);
    v21 = *(v6 + 2);
    if (!v21)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v22 = *(v1 + v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v2) = v6;
    if (!isUniquelyReferenced_nonNull_native || (v21 - 1) > *(v6 + 3) >> 1)
    {
      v6 = sub_100009A68(isUniquelyReferenced_nonNull_native, v21, 1, v6);
      *(v1 + v2) = v6;
    }

    sub_100009B88((v6 + 32));
    v7 = *(v6 + 2);
    memmove(v6 + 32, v6 + 72, 40 * v7 - 40);
    *(v6 + 2) = v7 - 1;
    *(v1 + v2) = v6;
    swift_endAccess();
    result = sub_100009688(v18, v20);
  }

  return result;
}

id sub_100004FD8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v41 = a3;
  v5 = sub_10002184C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10002183C();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C420(&unk_100035DE0, &type metadata accessor for SHA256);
  sub_10002182C();
  sub_100009634(a1, a2);
  sub_100009EA8(a1, a2);
  v38 = a1;
  v39 = a2;
  sub_100009688(a1, a2);
  sub_10002181C();
  (*(v6 + 8))(v9, v5);
  v14 = v41;
  v15 = sub_1000054C0(v13);
  (*(v10 + 8))(v13, v40);
  *&v43[0] = v15;
  sub_100009BDC(&unk_100035F40, &qword_1000259F8);
  sub_10000C468(&qword_100035DF0, &unk_100035F40, &qword_1000259F8);
  v16 = sub_10002187C();
  v18 = v17;

  v19 = *(v14 + 24);
  v20 = *(v14 + 32);
  if (v16 == v19 && v18 == v20 || (v21 = *(v14 + 24), v22 = *(v14 + 32), (sub_100021C3C() & 1) != 0))
  {

    v23 = *sub_10000BEFC((v42 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v42 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    return sub_10001D3A4(*v14, *(v14 + 8), v38, v39, 0);
  }

  else
  {

    LODWORD(v40) = sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100025810;
    *(v25 + 56) = &type metadata for String;
    v26 = sub_100009C28();
    *(v25 + 32) = v19;
    *(v25 + 40) = v20;
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v26;
    *(v25 + 64) = v26;
    *(v25 + 72) = v16;
    *(v25 + 80) = v18;
    sub_10002178C();

    v27 = sub_10000BEFC((v42 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v42 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v28 = *v14;
    v29 = *(v14 + 8);
    sub_10000C1C0();
    v30 = swift_allocError();
    v31 = *v27;
    swift_errorRetain();
    sub_1000219BC();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100025800;
    *&v43[0] = v30;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v33 = sub_1000218FC();
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = v26;
    *(v32 + 32) = v33;
    *(v32 + 40) = v34;
    sub_10002178C();

    *&v43[0] = v28;
    *(&v43[0] + 1) = v29;
    v43[1] = xmmword_100025840;
    v44 = 1;
    v35 = *(v31 + OBJC_IVAR___AudioBoxController_bluetoothManager);
    if (v35)
    {
      v36 = v35;
      sub_100003528(v43);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000054C0(uint64_t a1)
{
  v2 = sub_10002183C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C420(&qword_100035E00, &type metadata accessor for SHA256Digest);
  v7 = sub_10002193C();
  v35 = &_swiftEmptyArrayStorage;
  sub_10000A17C(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v3 + 16))(v6, a1, v2);
  result = sub_10002192C();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_100025800;
      v12 = v34;
      while (v32 != v12)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = &type metadata for UInt8;
        *(v14 + 64) = &protocol witness table for UInt8;
        *(v14 + 32) = v13;
        result = sub_1000218CC();
        v35 = v8;
        v17 = v8[2];
        v16 = v8[3];
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          sub_10000A17C((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        v8[2] = v17 + 1;
        v18 = &v8[2 * v17];
        v18[4] = result;
        v18[5] = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_100025800;
      while (v12 < v21)
      {
        v22 = *(v20 + 32 + v12);
        v34 = v12 + 1;
        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        *(v23 + 56) = &type metadata for UInt8;
        *(v23 + 64) = &protocol witness table for UInt8;
        *(v23 + 32) = v22;
        result = sub_1000218CC();
        v35 = v8;
        v26 = v8[2];
        v25 = v8[3];
        if (v26 >= v25 >> 1)
        {
          v28 = result;
          v29 = v24;
          sub_10000A17C((v25 > 1), v26 + 1, 1);
          v24 = v29;
          result = v28;
          v8 = v35;
        }

        v8[2] = v26 + 1;
        v27 = &v8[2 * v26];
        v27[4] = result;
        v27[5] = v24;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100005890()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioBoxBluetoothManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AudioBoxBluetoothManager()
{
  result = qword_100035BF8;
  if (!qword_100035BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005AD4()
{
  result = sub_10002179C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_100005BBC(void *a1)
{
  v2 = [a1 state];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_10000C380(0, &qword_100035DD8, CBCentralManager_ptr);
        v10 = [swift_getObjCClassFromMetadata() authorization];
        sub_1000219BC();
        if (qword_1000356F8 != -1)
        {
          swift_once();
        }

        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_100025800;
        *(v11 + 56) = &type metadata for Int;
        *(v11 + 64) = &protocol witness table for Int;
        *(v11 + 32) = v10;
        sub_10002178C();

        v8 = *sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
        v9 = [v8 result];
        if (!*&v8[OBJC_IVAR___AudioBoxController_exclavesStatus])
        {
          v14.super.isa = 0;
          goto LABEL_40;
        }

LABEL_31:
        v13 = *&v8[OBJC_IVAR___AudioBoxController_exclavesStatus];

        v14.super.isa = sub_10002185C().super.isa;

LABEL_40:
        v16 = objc_opt_self();
        isa = sub_10002199C().super.super.isa;
        v18 = [v16 testResultOverrideForExclavesStatus:v14.super.isa originalResult:isa];

        [v9 setStatusCode:v18];

        return [v8 setFinished:1];
      case 4:
        sub_1000219BC();
        if (qword_1000356F8 != -1)
        {
          swift_once();
        }

        sub_10002178C();
        v8 = *sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
        v9 = [v8 result];
        if (!*&v8[OBJC_IVAR___AudioBoxController_exclavesStatus])
        {
          v14.super.isa = 0;
          goto LABEL_40;
        }

        goto LABEL_31;
      case 5:
        sub_1000219DC();
        if (qword_1000356F8 != -1)
        {
          swift_once();
        }

        sub_10002178C();
        *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_isBluetoothReady) = 1;
        v3 = (v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_bluetoothReadyCallback);
        v4 = *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_bluetoothReadyCallback);
        if (v4)
        {
          v5 = v3[1];

          v4(v6);
          sub_10000C004(v4);
          v7 = *v3;
        }

        else
        {
          v7 = 0;
        }

        v15 = v3[1];
        *v3 = 0;
        v3[1] = 0;

        return sub_10000C004(v7);
    }

LABEL_28:
    sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_10002178C();
    v8 = *sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v9 = [v8 result];
    if (!*&v8[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v14.super.isa = 0;
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      sub_1000219BC();
      if (qword_1000356F8 != -1)
      {
        swift_once();
      }

      sub_10002178C();
      v8 = *sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
      v9 = [v8 result];
      if (!*&v8[OBJC_IVAR___AudioBoxController_exclavesStatus])
      {
        v14.super.isa = 0;
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  return sub_10002178C();
}

void sub_1000065A0(unint64_t a1, void *a2)
{
  sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
LABEL_30:
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100025800;
  *(v5 + 56) = &type metadata for String;
  v6 = sub_100009C28();
  *(v5 + 64) = v6;
  *(v5 + 32) = 0xD000000000000022;
  *(v5 + 40) = 0x8000000100023430;
  sub_10002178C();

  if (a2)
  {
    swift_errorRetain();
    sub_1000219BC();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100025800;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v8 = sub_1000218FC();
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = v6;
    *(v7 + 32) = v8;
    *(v7 + 40) = v9;
    sub_10002178C();

    v10 = *sub_10000BEFC((v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v11 = [v10 result];
    if (*&v10[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v12 = *&v10[OBJC_IVAR___AudioBoxController_exclavesStatus];

      v13.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v13.super.isa = 0;
    }

    v21 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v23 = [v21 testResultOverrideForExclavesStatus:v13.super.isa originalResult:isa];

    [v11 setStatusCode:v23];
    [v10 setFinished:1];

    return;
  }

  v14 = [a1 services];
  if (!v14)
  {
    goto LABEL_33;
  }

  v15 = v14;
  sub_10000C380(0, &qword_100035D60, CBService_ptr);
  v16 = sub_10002197C();

  v43 = v2;
  v44 = a1;
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

  v17 = sub_100021AEC();
  if (!v17)
  {
LABEL_32:

    v2 = v43;
    a1 = v44;
LABEL_33:
    v30 = v6;
    sub_1000219BC();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100025800;
    v32 = [a1 services];
    if (v32)
    {
      v33 = v32;
      sub_10000C380(0, &qword_100035D60, CBService_ptr);
      sub_10002197C();
    }

    sub_100009BDC(&qword_100035DA0, &qword_1000259C8);
    v34 = sub_1000218FC();
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = v30;
    *(v31 + 32) = v34;
    *(v31 + 40) = v35;
    sub_10002178C();

    v36 = *sub_10000BEFC((v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v37 = [v36 result];
    if (*&v36[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v38 = *&v36[OBJC_IVAR___AudioBoxController_exclavesStatus];

      v39.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v39.super.isa = 0;
    }

    v40 = objc_opt_self();
    v41 = sub_10002199C().super.super.isa;
    v42 = [v40 testResultOverrideForExclavesStatus:v39.super.isa originalResult:v41];

    [v37 setStatusCode:v42];
    [v36 setFinished:1];
    return;
  }

LABEL_8:
  a1 = 0;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v18 = sub_100021ABC();
    }

    else
    {
      if (a1 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v18 = *(v16 + 8 * a1 + 32);
    }

    a2 = v18;
    v19 = (a1 + 1);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    sub_10000C380(0, &qword_100035D68, NSObject_ptr);
    v20 = [a2 UUID];
    if (qword_1000356E0 != -1)
    {
      swift_once();
    }

    v2 = sub_100021A1C();

    if (v2)
    {
      break;
    }

    ++a1;
    if (v19 == v17)
    {
      goto LABEL_32;
    }
  }

  sub_100009BDC(&qword_100035DA8, &qword_1000259D0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100025850;
  if (qword_1000356E8 != -1)
  {
    swift_once();
  }

  v25 = qword_10003D038;
  *(v24 + 32) = qword_10003D038;
  v26 = qword_1000356F0;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_10003D040;
  *(v24 + 40) = qword_10003D040;
  sub_10000C380(0, &qword_100035D70, CBUUID_ptr);
  v29 = v28;
  v45.super.isa = sub_10002196C().super.isa;

  [v44 discoverCharacteristics:v45.super.isa forService:a2];
}

void sub_100006D70(void *a1, id a2, void *a3)
{
  sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100025810;
    *(v5 + 56) = &type metadata for String;
    v6 = sub_100009C28();
    *(v5 + 64) = v6;
    *(v5 + 32) = 0xD000000000000032;
    *(v5 + 40) = 0x8000000100023340;
    v7 = a2;
    v8 = [v7 description];
    a2 = sub_10002189C();
    v10 = v9;

    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v6;
    v83 = v6;
    *(v5 + 72) = a2;
    *(v5 + 80) = v10;
    sub_10002178C();

    sub_10000C380(0, &qword_100035D68, NSObject_ptr);
    v11 = [v7 UUID];
    if (qword_1000356E0 != -1)
    {
      swift_once();
    }

    v12 = sub_100021A1C();

    if ((v12 & 1) == 0)
    {
      break;
    }

    if (a3)
    {
      swift_errorRetain();
      sub_1000219BC();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100025800;
      swift_errorRetain();
      sub_100009BDC(&qword_100035D48, &qword_100025998);
      v14 = sub_1000218FC();
      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = v6;
      *(v13 + 32) = v14;
      *(v13 + 40) = v15;
      sub_10002178C();

      v16 = *sub_10000BEFC((v81 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v81 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
      v17 = [v16 result];
      if (*&v16[OBJC_IVAR___AudioBoxController_exclavesStatus])
      {
        v18 = *&v16[OBJC_IVAR___AudioBoxController_exclavesStatus];

        v19.super.isa = sub_10002185C().super.isa;
      }

      else
      {
        v19.super.isa = 0;
      }

      v31 = objc_opt_self();
      isa = sub_10002199C().super.super.isa;
      v33 = [v31 testResultOverrideForExclavesStatus:v19.super.isa originalResult:isa];

      [v17 setStatusCode:v33];
      [v16 setFinished:1];

      return;
    }

    v20 = [v7 characteristics];
    v21 = v81;
    if (!v20)
    {
LABEL_35:
      sub_1000219BC();
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_100025800;
      v40 = [v7 characteristics];
      if (v40)
      {
        v41 = v40;
        sub_10000C380(0, &qword_100035D98, CBCharacteristic_ptr);
        sub_10002197C();
      }

      sub_100009BDC(&qword_100035D90, &qword_1000259C0);
      v42 = sub_1000218FC();
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = v83;
      *(v39 + 32) = v42;
      *(v39 + 40) = v43;
      sub_10002178C();

      v44 = *sub_10000BEFC((v21 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v21 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
      v45 = [v44 result];
      if (*&v44[OBJC_IVAR___AudioBoxController_exclavesStatus])
      {
        v46 = *&v44[OBJC_IVAR___AudioBoxController_exclavesStatus];

        v47.super.isa = sub_10002185C().super.isa;
      }

      else
      {
        v47.super.isa = 0;
      }

      v48 = objc_opt_self();
      v49 = sub_10002199C().super.super.isa;
      v50 = [v48 testResultOverrideForExclavesStatus:v47.super.isa originalResult:v49];

      [v45 setStatusCode:v50];
      [v44 setFinished:1];
      return;
    }

    v22 = v20;
    sub_10000C380(0, &qword_100035D98, CBCharacteristic_ptr);
    v23 = sub_10002197C();

    v24 = v23;
    v25 = v23 & 0xFFFFFFFFFFFFFF8;
    if (v23 >> 62)
    {
LABEL_64:
      v76 = v24;
      v77 = sub_100021AEC();
      v24 = v76;
      v86 = v77;
    }

    else
    {
      v86 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v26 = 0;
    v84 = v24;
    v85 = v24 & 0xC000000000000001;
    a3 = &unk_10003D000;
    while (1)
    {
      if (v86 == v26)
      {
        goto LABEL_34;
      }

      if (v85)
      {
        v27 = sub_100021ABC();
      }

      else
      {
        if (v26 >= *(v25 + 16))
        {
          goto LABEL_60;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      a2 = [v27 UUID];
      if (qword_1000356E8 != -1)
      {
        swift_once();
      }

      v29 = qword_10003D038;
      v30 = sub_100021A1C();

      ++v26;
      v24 = v84;
      if (v30)
      {
        for (i = 0; v86 != i; ++i)
        {
          if (v85)
          {
            v35 = sub_100021ABC();
          }

          else
          {
            if (i >= *(v25 + 16))
            {
              goto LABEL_63;
            }

            v35 = *(v24 + 8 * i + 32);
          }

          v36 = v35;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v37 = [v35 UUID];
          if (qword_1000356F0 != -1)
          {
            swift_once();
          }

          a2 = qword_10003D040;
          v38 = sub_100021A1C();

          v24 = v84;
          if (v38)
          {
            sub_10000C380(0, &qword_100035D70, CBUUID_ptr);
            if (v86 < 1)
            {
              __break(1u);
            }

            else
            {
              v51 = 0;
              v79 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capPSMCharacteristic;
              v80 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_messagingCharacteristic;
              v78 = xmmword_100025800;
              v52 = v84;
              do
              {
                if (v85)
                {
                  v55 = sub_100021ABC();
                }

                else
                {
                  v55 = *(v52 + 8 * v51 + 32);
                }

                v56 = v55;
                v57 = [v56 UUID];
                v58 = v29;
                v59 = sub_100021A1C();

                if (v59)
                {

                  v53 = *(v81 + v80);
                  *(v81 + v80) = v56;
                  v54 = v56;

                  [a1 setNotifyValue:1 forCharacteristic:{v54, v78}];
                }

                else
                {
                  v60 = a2;
                  v61 = sub_100021A1C();

                  if (v61)
                  {

                    v62 = *(v81 + v79);
                    *(v81 + v79) = v56;
                    v63 = v56;

                    [a1 readValueForCharacteristic:v63];
                    [a1 setNotifyValue:1 forCharacteristic:{v63, v78}];
                  }

                  else
                  {
                    sub_1000219BC();
                    v64 = swift_allocObject();
                    *(v64 + 16) = v78;
                    v65 = [v56 UUID];

                    v66 = [v65 UUIDString];
                    v67 = sub_10002189C();
                    v69 = v68;

                    *(v64 + 56) = &type metadata for String;
                    *(v64 + 64) = v83;
                    *(v64 + 32) = v67;
                    *(v64 + 40) = v69;
                    sub_10002178C();
                  }
                }

                ++v51;

                v52 = v84;
              }

              while (v86 != v51);

              v70 = (v81 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxConnectionCompletion);
              v71 = *(v81 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxConnectionCompletion);
              if (v71)
              {
                v72 = v70[1];

                v71(v73);
                sub_10000C004(v71);
                v74 = *v70;
              }

              else
              {
                v74 = 0;
              }

              v75 = v70[1];
              *v70 = 0;
              v70[1] = 0;

              sub_10000C004(v74);
            }

            return;
          }
        }

LABEL_34:

        v21 = v81;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
  }
}

uint64_t sub_1000077E0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_100021ABC();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_100021AEC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

_OWORD *sub_100007920(void *a1, void *a2, uint64_t a3)
{
  v65 = a1;
  v6 = sub_1000218EC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v9 = swift_allocObject();
  v67 = xmmword_100025800;
  *(v9 + 16) = xmmword_100025800;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100009C28();
  *(v9 + 64) = v10;
  *(v9 + 32) = 0xD000000000000026;
  *(v9 + 40) = 0x80000001000231A0;
  sub_10002178C();

  if (a3)
  {
    swift_errorRetain();
    sub_1000219BC();
    v11 = swift_allocObject();
    *(v11 + 16) = v67;
    v68 = a3;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v12 = sub_1000218FC();
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = v10;
    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    sub_10002178C();

    v14 = *sub_10000BEFC((v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v15 = [v14 result];
    if (*&v14[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v16 = *&v14[OBJC_IVAR___AudioBoxController_exclavesStatus];

      v17.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v17.super.isa = 0;
    }

    v32 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v34 = [v32 testResultOverrideForExclavesStatus:v17.super.isa originalResult:isa];

    [v15 setStatusCode:v34];
    [v14 setFinished:1];
  }

  v18 = [a2 value];
  if (v18)
  {
    v64 = v3;
    v19 = v18;
    v20 = sub_10002173C();
    v22 = v21;

    v23 = [a2 UUID];
    v24 = qword_1000356E8;
    v25 = v23;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = qword_10003D038;
    sub_10000C380(0, &qword_100035D70, CBUUID_ptr);
    v27 = v26;
    LOBYTE(v26) = sub_100021A1C();

    if (v26)
    {

      sub_1000218DC();
      v28 = v20;
      v29 = sub_1000218BC();
      v31 = v64;
      if (v30)
      {
        if (v29 == 0x3E4D4F453CLL && v30 == 0xE500000000000000)
        {

LABEL_30:
          sub_1000219AC();
          sub_10002178C();
          sub_100003988();
LABEL_49:
          v54 = v28;
          return sub_100009688(v54, v22);
        }

        v48 = sub_100021C3C();

        if (v48)
        {
          goto LABEL_30;
        }
      }

      sub_1000219AC();
      result = swift_allocObject();
      result[1] = v67;
      v49 = v22 >> 62;
      if ((v22 >> 62) <= 1)
      {
        if (v49)
        {
          LODWORD(v50) = HIDWORD(v20) - v20;
          if (__OFSUB__(HIDWORD(v20), v20))
          {
            __break(1u);
            return result;
          }

          v50 = v50;
        }

        else
        {
          v50 = BYTE6(v22);
        }

        goto LABEL_44;
      }

      if (v49 != 2)
      {
        v50 = 0;
LABEL_44:
        *(result + 7) = &type metadata for Int;
        *(result + 8) = &protocol witness table for Int;
        *(result + 4) = v50;
        sub_10002178C();

        v55 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_messagePacketsReceived;
        swift_beginAccess();
        v56 = *(v31 + v55);
        sub_100009634(v28, v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v31 + v55) = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = sub_100009C7C(0, *(v56 + 2) + 1, 1, v56);
          *(v31 + v55) = v56;
        }

        v59 = *(v56 + 2);
        v58 = *(v56 + 3);
        if (v59 >= v58 >> 1)
        {
          v56 = sub_100009C7C((v58 > 1), v59 + 1, 1, v56);
        }

        *(v56 + 2) = v59 + 1;
        v60 = &v56[16 * v59];
        *(v60 + 4) = v28;
        *(v60 + 5) = v22;
        *(v31 + v55) = v56;
        swift_endAccess();
        goto LABEL_49;
      }

      v52 = *(v20 + 16);
      v51 = *(v20 + 24);
      v53 = __OFSUB__(v51, v52);
      v50 = v51 - v52;
      if (!v53)
      {
        goto LABEL_44;
      }

      __break(1u);
LABEL_38:
      if ((v68 & 0x10000) != 0)
      {
        sub_1000219DC();
        sub_10002178C();
        sub_1000083E4();
      }

      else
      {
        v61 = v68;
        sub_1000219DC();
        v62 = swift_allocObject();
        *(v62 + 16) = v67;
        *(v62 + 56) = &type metadata for UInt16;
        *(v62 + 64) = &protocol witness table for UInt16;
        *(v62 + 32) = v61;
        sub_10002178C();

        [v65 openL2CAPChannel:v61];
      }

      v54 = v27;
      return sub_100009688(v54, v22);
    }

    v27 = v20;
    if (qword_1000356F0 != -1)
    {
      swift_once();
    }

    v40 = qword_10003D040;
    v41 = sub_100021A1C();

    if (v41)
    {
      v42 = sub_1000215FC();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      sub_1000215EC();
      sub_100009BDC(&qword_100035D78, &qword_1000259B0);
      sub_10000BF40();
      sub_1000215DC();

      goto LABEL_38;
    }

    return sub_100009688(v20, v22);
  }

  else
  {
    sub_1000219BC();
    sub_10002178C();
    v36 = *sub_10000BEFC((v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v37 = [v36 result];
    if (*&v36[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v38 = *&v36[OBJC_IVAR___AudioBoxController_exclavesStatus];

      v39.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v39.super.isa = 0;
    }

    v45 = objc_opt_self();
    v46 = sub_10002199C().super.super.isa;
    v47 = [v45 testResultOverrideForExclavesStatus:v39.super.isa originalResult:v46];

    [v37 setStatusCode:v47];

    return [v36 setFinished:1];
  }
}

void sub_1000083E4()
{
  v1 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capChannel;
  v2 = *(v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capChannel);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100025800;
  v5 = [v3 PSM];
  *(v4 + 56) = &type metadata for UInt16;
  *(v4 + 64) = &protocol witness table for UInt16;
  *(v4 + 32) = v5;
  sub_10002178C();

  v6 = [v3 outputStream];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  [v6 close];

  v8 = [v3 inputStream];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  [v8 close];

  v10 = [v3 inputStream];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 mainRunLoop];
  [v11 removeFromRunLoop:v13 forMode:NSDefaultRunLoopMode];

  v14 = [v3 outputStream];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = [v12 mainRunLoop];
  [v15 removeFromRunLoop:v16 forMode:NSDefaultRunLoopMode];

  v17 = [v3 inputStream];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v17;
  [v17 setDelegate:0];

  v19 = [v3 outputStream];
  if (!v19)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 setDelegate:0];

  v21 = *(v0 + v1);
  *(v0 + v1) = 0;
}

void sub_1000086E4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, v11, a5);
}

void sub_100008894(void *a1)
{
  v3 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capChannel;
  if (*(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capChannel))
  {
    sub_1000083E4();
  }

  sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100025800;
  v5 = [a1 PSM];
  *(v4 + 56) = &type metadata for UInt16;
  *(v4 + 64) = &protocol witness table for UInt16;
  *(v4 + 32) = v5;
  sub_10002178C();

  v6 = [a1 inputStream];
  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = v6;
  [v6 setDelegate:v1];

  v8 = [a1 outputStream];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v8;
  [v8 setDelegate:v1];

  v10 = [a1 inputStream];
  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 mainRunLoop];
  [v11 scheduleInRunLoop:v13 forMode:NSDefaultRunLoopMode];

  v14 = [a1 outputStream];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = [v12 mainRunLoop];
  [v15 scheduleInRunLoop:v16 forMode:NSDefaultRunLoopMode];

  v17 = [a1 inputStream];
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v17;
  [v17 open];

  v19 = [a1 outputStream];
  if (!v19)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 open];

  v22 = *(v1 + v3);
  *(v1 + v3) = a1;
  v21 = a1;
}

void sub_100008C00(void *a1, uint64_t a2)
{
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      sub_1000219DC();
      if (qword_1000356F8 == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    if (a2 != 2)
    {
LABEL_20:
      sub_1000219BC();
      if (qword_1000356F8 == -1)
      {
LABEL_21:
        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_100025800;
        v13 = a1;
        v14 = [v13 description];
        v15 = sub_10002189C();
        v17 = v16;

        *(v12 + 56) = &type metadata for String;
        *(v12 + 64) = sub_100009C28();
        *(v12 + 32) = v15;
        *(v12 + 40) = v17;
        sub_10002178C();

        return;
      }

LABEL_24:
      swift_once();
      goto LABEL_21;
    }

    sub_1000090C8();
  }

  else
  {
    switch(a2)
    {
      case 4:

        sub_100004548();
        break;
      case 8:
        sub_1000219BC();
        if (qword_1000356F8 != -1)
        {
          swift_once();
        }

        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_100025810;
        v4 = a1;
        v5 = [v4 description];
        v6 = sub_10002189C();
        v8 = v7;

        *(v3 + 56) = &type metadata for String;
        v9 = sub_100009C28();
        *(v3 + 64) = v9;
        *(v3 + 32) = v6;
        *(v3 + 40) = v8;
        [v4 streamError];
        sub_100009BDC(&qword_100035D40, &qword_100025990);
        v10 = sub_1000218FC();
        *(v3 + 96) = &type metadata for String;
        *(v3 + 104) = v9;
        *(v3 + 72) = v10;
        *(v3 + 80) = v11;
        sub_10002178C();

        break;
      case 16:
        sub_1000219DC();
        if (qword_1000356F8 == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      default:
        goto LABEL_20;
    }
  }
}

void sub_1000090C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capChannel);
  if (v1)
  {
    v2 = [v1 inputStream];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 read:swift_slowAlloc() maxLength:1024];
      v5 = [v3 streamError];
      if (v5)
      {
        v6 = v5;
        sub_1000219BC();
        if (qword_1000356F8 == -1)
        {
LABEL_5:
          sub_100009BDC(&qword_100035D30, &qword_100025988);
          v7 = swift_allocObject();
          *(v7 + 16) = xmmword_100025800;
          v8 = v6;
          sub_100009BDC(&qword_100035D48, &qword_100025998);
          v9 = sub_1000218FC();
          v11 = v10;
          *(v7 + 56) = &type metadata for String;
          *(v7 + 64) = sub_100009C28();
          *(v7 + 32) = v9;
          *(v7 + 40) = v11;
          sub_10002178C();

LABEL_34:

          return;
        }

LABEL_37:
        swift_once();
        goto LABEL_5;
      }

      v6 = (v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_fileDataReceived);
      swift_beginAccess();
      if (v4)
      {
        sub_10002171C();
      }

      swift_endAccess();
      v12 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_expectedFiles;
      swift_beginAccess();
      v13 = *(v0 + v12);
      v14 = *(v13 + 16);
      if (v14)
      {
        v32 = v6;

        sub_10000A19C(0, v14, 0);
        v15 = _swiftEmptyArrayStorage[2];
        v16 = 48;
        do
        {
          v17 = *(v13 + v16);
          v18 = _swiftEmptyArrayStorage[3];
          if (v15 >= v18 >> 1)
          {
            sub_10000A19C((v18 > 1), v15 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v15 + 1;
          _swiftEmptyArrayStorage[v15 + 4] = v17;
          v16 += 40;
          ++v15;
          --v14;
        }

        while (v14);

        v6 = v32;
      }

      v19 = _swiftEmptyArrayStorage[2];
      if (v19)
      {
        v20 = 0;
        v21 = &_swiftEmptyArrayStorage[4];
        while (1)
        {
          v22 = *v21++;
          v23 = __CFADD__(v20, v22);
          v20 += v22;
          if (v23)
          {
            break;
          }

          if (!--v19)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

      v20 = 0;
LABEL_20:

      sub_1000219DC();
      if (qword_1000356F8 != -1)
      {
        swift_once();
      }

      sub_100009BDC(&qword_100035D30, &qword_100025988);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100025810;
      v25 = *v6;
      v26 = v6[1];
      v27 = v26 >> 62;
      if ((v26 >> 62) <= 1)
      {
        if (!v27)
        {
          v25 = BYTE6(v26);
          goto LABEL_32;
        }

LABEL_29:
        v31 = __OFSUB__(HIDWORD(v25), v25);
        LODWORD(v25) = HIDWORD(v25) - v25;
        if (v31)
        {
          __break(1u);
          return;
        }

        v25 = v25;
        goto LABEL_32;
      }

      if (v27 == 2)
      {
        v30 = v25 + 16;
        v28 = *(v25 + 16);
        v29 = *(v30 + 8);
        v31 = __OFSUB__(v29, v28);
        v25 = v29 - v28;
        if (v31)
        {
          __break(1u);
          goto LABEL_29;
        }
      }

      else
      {
        v25 = 0;
      }

LABEL_32:
      *(v24 + 56) = &type metadata for Int;
      *(v24 + 64) = &protocol witness table for Int;
      *(v24 + 32) = v25;
      *(v24 + 96) = &type metadata for UInt;
      *(v24 + 104) = &protocol witness table for UInt;
      *(v24 + 72) = v20;
      sub_10002178C();

      sub_100004D6C();
      if ([v3 hasBytesAvailable])
      {
        sub_1000090C8();
      }

      goto LABEL_34;
    }
  }
}

__n128 sub_10000957C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100009590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000095D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100009634(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100009688(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_1000096DC@<X0>(id result@<X0>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v6 = result;
  v7 = (a3 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_fileDataToSend);
  result = swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_11;
    }

    v13 = v8 + 16;
    v8 = *(v8 + 16);
    v12 = *(v13 + 8);
    v11 = v12 - v8;
    if (!__OFSUB__(v12, v8))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(v9);
LABEL_11:
    result = [a2 write:v6 maxLength:v11];
LABEL_12:
    *a4 = result;
    return result;
  }

  v14 = __OFSUB__(HIDWORD(v8), v8);
  v15 = HIDWORD(v8) - v8;
  if (!v14)
  {
    v11 = v15;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000097AC(uint64_t a1, unint64_t a2, void *a3, char *a4)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v23 = a1;
      v24 = a2;
      v25 = BYTE2(a2);
      v26 = BYTE3(a2);
      v27 = BYTE4(a2);
      v9 = &a4[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_fileDataToSend];
      v28 = BYTE5(a2);
      swift_beginAccess();
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = v11 >> 62;
      if ((v11 >> 62) <= 1)
      {
        if (!v12)
        {
          v13 = BYTE6(v11);
LABEL_20:
          v16 = [a3 write:&v23 maxLength:v13];
LABEL_21:
          v5 = v16;

          goto LABEL_22;
        }

        v20 = __OFSUB__(HIDWORD(v10), v10);
        v21 = HIDWORD(v10) - v10;
        if (!v20)
        {
          v13 = v21;
          goto LABEL_20;
        }

LABEL_25:
        __break(1u);
      }

      v13 = 0;
      if (v12 != 2)
      {
        goto LABEL_20;
      }

      v19 = v10 + 16;
      v17 = *(v10 + 16);
      v18 = *(v19 + 8);
      v13 = v18 - v17;
      if (!__OFSUB__(v18, v17))
      {
        goto LABEL_20;
      }

      __break(1u);
LABEL_17:

      v5 = v23;
LABEL_22:

      return v5;
    }

    v14 = a1;
    v15 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
      goto LABEL_25;
    }

    goto LABEL_9;
  }

  if (v8 == 2)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
LABEL_9:
    v16 = sub_10000A7D4(v14, v15, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    if (!v4)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  *(v29 + 6) = 0;
  v29[0] = 0;
  sub_1000096DC(v29, a3, a4, &v23);
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_12:

  return v5;
}

Swift::Int sub_1000099AC()
{
  sub_100021CBC();
  sub_100021CCC(0);
  return sub_100021CDC();
}

Swift::Int sub_100009A18()
{
  sub_100021CBC();
  sub_100021CCC(0);
  return sub_100021CDC();
}

char *sub_100009A68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009BDC(&qword_100035D28, ">C");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100009BDC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100009C28()
{
  result = qword_100035D38;
  if (!qword_100035D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D38);
  }

  return result;
}

char *sub_100009C7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009BDC(&qword_100035D88, &qword_1000259B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100009D88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009BDC(&qword_100035D58, &qword_1000259A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100009EA8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_10002184C();
      sub_10000C420(&unk_100035DE0, &type metadata accessor for SHA256);
      return sub_10002180C();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10000A09C(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_10000A09C(v4, v5);
  }

  sub_10002184C();
  sub_10000C420(&unk_100035DE0, &type metadata accessor for SHA256);
  return sub_10002180C();
}

uint64_t sub_10000A09C(uint64_t a1, uint64_t a2)
{
  result = sub_10002163C();
  if (!result || (result = sub_10002165C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_10002164C();
      sub_10002184C();
      sub_10000C420(&unk_100035DE0, &type metadata accessor for SHA256);
      return sub_10002180C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10000A17C(char *a1, int64_t a2, char a3)
{
  result = sub_10000A1BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000A19C(char *a1, int64_t a2, char a3)
{
  result = sub_10000A2C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000A1BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009BDC(&qword_100035E08, &qword_100025A00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000A2C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009BDC(&qword_100035D50, &qword_1000259A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_10000A3FC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v45 = a4;
  v7 = sub_1000218EC();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  __chkstk_darwin();
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a3;
  v42 = [a3 maximumWriteValueLengthForType:0];
  v43 = a2;
  v10 = a2 >> 62;
  v11 = __OFSUB__(HIDWORD(a1), a1);
  v40 = v11;
  if (v10 == 3)
  {
    goto LABEL_5;
  }

  v18 = 0;
  v39 = HIDWORD(a1) - a1;
  v19 = BYTE6(v43);
  v41 = xmmword_100025800;
  v20 = BYTE6(v43);
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v10 == 1)
  {
    v20 = v39;
    if (!v40)
    {
      goto LABEL_13;
    }

LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = *(a1 + 16);
    v21 = *(a1 + 24);
    v23 = __OFSUB__(v21, v22);
    v20 = v21 - v22;
    if (!v23)
    {
LABEL_13:
      while (v18 < v20)
      {
        v24 = v19;
        if (v10)
        {
          if (v10 == 2)
          {
            v26 = *(a1 + 16);
            v25 = *(a1 + 24);
            v23 = __OFSUB__(v25, v26);
            v24 = v25 - v26;
            if (v23)
            {
              goto LABEL_36;
            }
          }

          else
          {
            v24 = v39;
            if (v40)
            {
              goto LABEL_35;
            }
          }
        }

        v23 = __OFSUB__(v24, v18);
        v27 = v24 - v18;
        if (v23)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v27 >= v42)
        {
          v28 = v42;
        }

        else
        {
          v28 = v27;
        }

        v29 = &v28[v18];
        if (__OFADD__(v18, v28))
        {
          goto LABEL_31;
        }

        if (v29 < v18)
        {
          goto LABEL_32;
        }

        v30 = sub_10002176C();
        v32 = v31;
        sub_1000219AC();
        if (qword_1000356F8 != -1)
        {
          swift_once();
        }

        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v33 = swift_allocObject();
        *(v33 + 16) = v41;
        *(v33 + 56) = &type metadata for Int;
        *(v33 + 64) = &protocol witness table for Int;
        *(v33 + 32) = v28;
        sub_10002178C();

        isa = sub_10002172C().super.isa;
        [v44 writeValue:isa forCharacteristic:v45 type:0];
        sub_100009688(v30, v32);

        v18 = v29;
        v20 = v19;
        if (v10)
        {
          goto LABEL_9;
        }
      }

LABEL_5:
      sub_1000219AC();
      if (qword_1000356F8 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_6:
  sub_10002178C();
  v12 = v36;
  sub_1000218DC();
  v13 = sub_1000218AC();
  v15 = v14;
  result = (*(v37 + 8))(v12, v38);
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v17 = sub_10002172C().super.isa;
    [v44 writeValue:v17 forCharacteristic:v45 type:0];

    return sub_10000C36C(v13, v15);
  }

  return result;
}

uint64_t sub_10000A7D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  result = sub_10002163C();
  v11 = result;
  if (result)
  {
    result = sub_10002165C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_10002164C();
  result = sub_1000096DC(v11, a4, a5, &v12);
  if (!v5)
  {
    return v12;
  }

  return result;
}

unint64_t sub_10000A888(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10000A960(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100009D88(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_10000A888(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_10000AA20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009BDC(&qword_100035DD0, &qword_1000259F0);
    v3 = sub_100021B1C();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C140(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10001F750(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000C1B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_10000AB30(void *a1, void *a2, uint64_t a3)
{
  sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v7 = swift_allocObject();
  v40 = xmmword_100025800;
  *(v7 + 16) = xmmword_100025800;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_100009C28();
  *(v7 + 64) = v8;
  *(v7 + 32) = 0xD000000000000035;
  *(v7 + 40) = 0x8000000100023550;
  sub_10002178C();

  v9 = sub_10002189C();
  if (!*(a3 + 16))
  {
LABEL_19:

    return;
  }

  v11 = v3;
  v12 = sub_10001F750(v9, v10);
  v14 = v13;

  if (v14)
  {
    sub_10000C014(*(a3 + 56) + 32 * v12, v43);
    sub_100009BDC(&qword_100035DB0, &qword_1000259D8);
    if (swift_dynamicCast())
    {
      if (qword_1000356E0 != -1)
      {
        swift_once();
      }

      v43[0] = qword_10003D030;
      __chkstk_darwin();
      v38[2] = v43;
      if (sub_1000077E0(sub_10000C070, v38, v41))
      {
        v15 = sub_10002189C();
        if (*(a3 + 16))
        {
          v39 = a2;
          v17 = sub_10001F750(v15, v16);
          v19 = v18;

          if (v19)
          {
            sub_10000C014(*(a3 + 56) + 32 * v17, v43);
            if (swift_dynamicCast())
            {
              v20 = v41;
              v21 = v42;
              v22 = (v11 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxSerial);
              v23 = *(v11 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxSerial + 8);
              if (v23)
              {
                if (v24 = v11, v41 == *v22) && v23 == v42 || (sub_100021C3C())
                {

                  sub_1000219DC();
                  v25 = swift_allocObject();
                  *(v25 + 16) = v40;
                  *(v25 + 56) = &type metadata for String;
                  *(v25 + 64) = v8;
                  *(v25 + 32) = v20;
                  *(v25 + 40) = v21;
                  sub_10002178C();

                  [a1 stopScan];
                  sub_100009BDC(&qword_100035DB8, &qword_1000259E0);
                  inited = swift_initStackObject();
                  *(inited + 16) = v40;
                  *(inited + 32) = sub_10002189C();
                  *(inited + 40) = v27;
                  isa = sub_100021CEC().super.super.isa;
                  *(inited + 72) = sub_10000C380(0, &qword_100035DC0, NSNumber_ptr);
                  *(inited + 48) = isa;
                  sub_10000AA20(inited);
                  swift_setDeallocating();
                  sub_10000C0D8(inited + 32);
                  v29 = sub_10002185C().super.isa;

                  v30 = a1;
                  v31 = v39;
                  [v30 connectPeripheral:v39 options:v29];

                  [v31 setDelegate:v11];
                  v32 = *(v11 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBox);
                  *(v24 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBox) = v31;
                  v33 = v31;

                  return;
                }
              }

              sub_1000219DC();
              v34 = swift_allocObject();
              *(v34 + 16) = xmmword_100025810;
              *(v34 + 56) = &type metadata for String;
              *(v34 + 64) = v8;
              *(v34 + 32) = v20;
              *(v34 + 40) = v21;
              v35 = v22[1];
              if (!v35)
              {
                __break(1u);
                return;
              }

              v36 = v34;
              v37 = *v22;

              v36[12] = &type metadata for String;
              v36[13] = v8;
              v36[9] = v37;
              v36[10] = v35;
              sub_10002178C();
            }
          }
        }

        else
        {
        }
      }

      goto LABEL_19;
    }
  }
}

void sub_10000B058(void *a1)
{
  sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100025800;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_100009C28();
  *(v2 + 32) = 0xD00000000000001DLL;
  *(v2 + 40) = 0x8000000100023530;
  sub_10002178C();

  sub_100009BDC(&qword_100035DA8, &qword_1000259D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000257F0;
  if (qword_1000356E0 != -1)
  {
    swift_once();
  }

  v4 = qword_10003D030;
  *(v3 + 32) = qword_10003D030;
  sub_10000C380(0, &qword_100035D70, CBUUID_ptr);
  v5 = v4;
  isa = sub_10002196C().super.isa;

  [a1 discoverServices:isa];
}

id sub_10000B22C()
{
  sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100025800;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_100009C28();
  *(v1 + 32) = 0xD000000000000029;
  *(v1 + 40) = 0x8000000100023500;
  sub_10002178C();

  v2 = *sub_10000BEFC((v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
  v3 = [v2 result];
  if (*&v2[OBJC_IVAR___AudioBoxController_exclavesStatus])
  {
    v4 = *&v2[OBJC_IVAR___AudioBoxController_exclavesStatus];

    v5.super.isa = sub_10002185C().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = objc_opt_self();
  isa = sub_10002199C().super.super.isa;
  v8 = [v6 testResultOverrideForExclavesStatus:v5.super.isa originalResult:isa];

  [v3 setStatusCode:v8];

  return [v2 setFinished:1];
}

id sub_10000B430()
{
  sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100025800;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_100009C28();
  *(v1 + 32) = 0xD000000000000030;
  *(v1 + 40) = 0x80000001000234C0;
  sub_10002178C();

  v2 = *sub_10000BEFC((v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v0 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
  v3 = [v2 result];
  if (*&v2[OBJC_IVAR___AudioBoxController_exclavesStatus])
  {
    v4 = *&v2[OBJC_IVAR___AudioBoxController_exclavesStatus];

    v5.super.isa = sub_10002185C().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = objc_opt_self();
  isa = sub_10002199C().super.super.isa;
  v8 = [v6 testResultOverrideForExclavesStatus:v5.super.isa originalResult:isa];

  [v3 setStatusCode:v8];

  return [v2 setFinished:1];
}

void sub_10000B634(unint64_t a1)
{
  sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
LABEL_24:
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100025810;
  *(v2 + 56) = &type metadata for String;
  v3 = sub_100009C28();
  *(v2 + 64) = v3;
  *(v2 + 32) = 0xD000000000000020;
  *(v2 + 40) = 0x8000000100023110;
  sub_10000C380(0, &qword_100035D60, CBService_ptr);
  v4 = sub_10002198C();
  *(v2 + 96) = &type metadata for String;
  *(v2 + 104) = v3;
  *(v2 + 72) = v4;
  *(v2 + 80) = v5;
  sub_10002178C();

  if (a1 >> 62)
  {
    v6 = sub_100021AEC();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v6 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = sub_100021ABC();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_10000C380(0, &qword_100035D68, NSObject_ptr);
    v10 = [v9 UUID];
    if (qword_1000356E0 != -1)
    {
      swift_once();
    }

    v11 = sub_100021A1C();

    if (v11)
    {
      sub_1000219BC();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100025800;
      v13 = sub_10002198C();
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = v3;
      *(v12 + 32) = v13;
      *(v12 + 40) = v14;
      sub_10002178C();

      v15 = *sub_10000BEFC((v23 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v23 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
      v16 = [v15 result];
      v17 = v16;
      if (*&v15[OBJC_IVAR___AudioBoxController_exclavesStatus])
      {
        v18 = *&v15[OBJC_IVAR___AudioBoxController_exclavesStatus];

        v19.super.isa = sub_10002185C().super.isa;
      }

      else
      {
        v19.super.isa = 0;
      }

      v20 = objc_opt_self();
      isa = sub_10002199C().super.super.isa;
      v22 = [v20 testResultOverrideForExclavesStatus:v19.super.isa originalResult:isa];

      [v17 setStatusCode:v22];

      [v15 setFinished:1];
      return;
    }
  }
}

uint64_t sub_10000BA38(uint64_t a1)
{
  sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100025800;
  *(v3 + 56) = &type metadata for String;
  v4 = sub_100009C28();
  *(v3 + 64) = v4;
  *(v3 + 32) = 0xD000000000000025;
  *(v3 + 40) = 0x80000001000230A0;
  sub_10002178C();

  if (a1)
  {
    swift_errorRetain();
    sub_1000219BC();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100025800;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v7 = sub_1000218FC();
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = v4;
    *(v6 + 32) = v7;
    *(v6 + 40) = v8;
    sub_10002178C();

    v9 = *sub_10000BEFC((v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate), *(v1 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate + 24));
    v10 = [v9 result];
    if (*&v9[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v11 = *&v9[OBJC_IVAR___AudioBoxController_exclavesStatus];

      v12.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v12.super.isa = 0;
    }

    v13 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v15 = [v13 testResultOverrideForExclavesStatus:v12.super.isa originalResult:isa];

    [v10 setStatusCode:v15];
    [v9 setFinished:1];
  }

  return result;
}

void sub_10000BCF4(void *a1, uint64_t a2)
{
  sub_1000219AC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100025800;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_100009C28();
  *(v4 + 64) = v5;
  *(v4 + 32) = 0xD00000000000001CLL;
  *(v4 + 40) = 0x8000000100023000;
  sub_10002178C();

  if (a2)
  {
    swift_errorRetain();
    sub_1000219BC();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100025800;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v7 = sub_1000218FC();
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = v5;
    *(v6 + 32) = v7;
    *(v6 + 40) = v8;
    sub_10002178C();
  }

  else if (a1)
  {
    v9 = a1;
    sub_100008894(v9);
  }
}

void *sub_10000BEFC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000BF40()
{
  result = qword_100035D80;
  if (!qword_100035D80)
  {
    sub_10000BFBC(&qword_100035D78, &qword_1000259B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D80);
  }

  return result;
}

uint64_t sub_10000BFBC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000C004(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000C014(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000C070(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_10000C380(0, &qword_100035D70, CBUUID_ptr);
  return sub_100021A1C() & 1;
}

uint64_t sub_10000C0D8(uint64_t a1)
{
  v2 = sub_100009BDC(&qword_100035DC8, &qword_1000259E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C140(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009BDC(&qword_100035DC8, &qword_1000259E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10000C1B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000C1C0()
{
  result = qword_100035DF8;
  if (!qword_100035DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035DF8);
  }

  return result;
}

unint64_t sub_10000C214()
{
  result = qword_100035E10;
  if (!qword_100035E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035E10);
  }

  return result;
}

unint64_t sub_10000C318()
{
  result = qword_100035E18;
  if (!qword_100035E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035E18);
  }

  return result;
}

uint64_t sub_10000C36C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009688(a1, a2);
  }

  return a1;
}

uint64_t sub_10000C380(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000C3C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C408(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C420(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000C468(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000BFBC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000C4B8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t getEnumTagSinglePayload for AudioBoxBluetoothManager.ProtocolError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AudioBoxBluetoothManager.ProtocolError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000C5F8()
{
  result = qword_100035E48;
  if (!qword_100035E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035E48);
  }

  return result;
}

uint64_t sub_10000C664(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    v4 = sub_10001F750(*(v2 + OBJC_IVAR___AudioBoxInputs_audioBoxIDKey), *(v2 + OBJC_IVAR___AudioBoxInputs_audioBoxIDKey + 8));
    if (v5)
    {
      sub_10000C014(*(a1 + 56) + 32 * v4, v23);
      if (swift_dynamicCast())
      {
        if (*(a1 + 16) && (v6 = sub_10001F750(*(v2 + OBJC_IVAR___AudioBoxInputs_audioBoxTokenKey), *(v2 + OBJC_IVAR___AudioBoxInputs_audioBoxTokenKey + 8)), (v7 & 1) != 0) && (sub_10000C014(*(a1 + 56) + 32 * v6, v23), (swift_dynamicCast() & 1) != 0))
        {
          v8 = (v2 + OBJC_IVAR___AudioBoxInputs_audioBoxID);
          v9 = *(v2 + OBJC_IVAR___AudioBoxInputs_audioBoxID + 8);
          *v8 = v21;
          v8[1] = v22;

          v10 = (v2 + OBJC_IVAR___AudioBoxInputs_audioBoxToken);
          v11 = *(v2 + OBJC_IVAR___AudioBoxInputs_audioBoxToken + 8);
          *v10 = v21;
          v10[1] = v22;

          v12 = *(v2 + OBJC_IVAR___AudioBoxInputs_parameters);
          *(v2 + OBJC_IVAR___AudioBoxInputs_parameters) = a1;

          if (!*(a1 + 16))
          {
            return 1;
          }

          v13 = sub_10001F750(*(v2 + OBJC_IVAR___AudioBoxInputs_downloadAudioFilesKey), *(v2 + OBJC_IVAR___AudioBoxInputs_downloadAudioFilesKey + 8));
          if ((v14 & 1) == 0)
          {
            return 1;
          }

          sub_10000C014(*(a1 + 56) + 32 * v13, v23);
          if (!swift_dynamicCast())
          {
            return 1;
          }

          result = 1;
          if ((v21 & 1) == 0)
          {
            return result;
          }

          *(v2 + OBJC_IVAR___AudioBoxInputs_downloadAudioFiles) = 1;
          if (*(a1 + 16))
          {
            v16 = sub_10001F750(*(v2 + OBJC_IVAR___AudioBoxInputs_fileDownloadTimeoutKey), *(v2 + OBJC_IVAR___AudioBoxInputs_fileDownloadTimeoutKey + 8));
            if (v17)
            {
              sub_10000C014(*(a1 + 56) + 32 * v16, v23);
              if (swift_dynamicCast())
              {
                if (*(a1 + 16))
                {
                  v18 = sub_10001F750(*(v2 + OBJC_IVAR___AudioBoxInputs_sourcesKey), *(v2 + OBJC_IVAR___AudioBoxInputs_sourcesKey + 8));
                  if (v19)
                  {
                    sub_10000C014(*(a1 + 56) + 32 * v18, v23);
                    sub_100009BDC(&unk_100035F40, &qword_1000259F8);
                    if (swift_dynamicCast())
                    {
                      *(v2 + OBJC_IVAR___AudioBoxInputs_fileDownloadTimeout) = v21;
                      v20 = *(v2 + OBJC_IVAR___AudioBoxInputs_sources);
                      *(v2 + OBJC_IVAR___AudioBoxInputs_sources) = v21;

                      return 1;
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10000C984(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_10002186C();
  v7 = *(a1 + *a4);
  *(a1 + *a4) = v6;

  return 1;
}

id sub_10000C9E8()
{
  v1 = &v0[OBJC_IVAR___AudioBoxInputs_audioBoxIDKey];
  *v1 = 0x786F426F69647561;
  *(v1 + 1) = 0xEA00000000004449;
  v2 = &v0[OBJC_IVAR___AudioBoxInputs_audioBoxTokenKey];
  strcpy(&v0[OBJC_IVAR___AudioBoxInputs_audioBoxTokenKey], "audioBoxToken");
  *(v2 + 7) = -4864;
  v3 = &v0[OBJC_IVAR___AudioBoxInputs_downloadAudioFilesKey];
  *v3 = 0xD000000000000012;
  *(v3 + 1) = 0x8000000100023AC0;
  v4 = &v0[OBJC_IVAR___AudioBoxInputs_fileDownloadTimeoutKey];
  *v4 = 0xD000000000000013;
  *(v4 + 1) = 0x8000000100023AE0;
  v5 = &v0[OBJC_IVAR___AudioBoxInputs_sourcesKey];
  *v5 = 0x73656372756F73;
  *(v5 + 1) = 0xE700000000000000;
  v6 = &v0[OBJC_IVAR___AudioBoxInputs_audioBoxID];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR___AudioBoxInputs_audioBoxToken];
  *v7 = 0;
  *(v7 + 1) = 0;
  v0[OBJC_IVAR___AudioBoxInputs_downloadAudioFiles] = 0;
  *&v0[OBJC_IVAR___AudioBoxInputs_fileDownloadTimeout] = 0;
  *&v0[OBJC_IVAR___AudioBoxInputs_sources] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___AudioBoxInputs_predicates] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR___AudioBoxInputs_parameters] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR___AudioBoxInputs_specifications] = &_swiftEmptyDictionarySingleton;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AudioBoxInputs();
  return objc_msgSendSuper2(&v9, "init");
}

id sub_10000CB70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioBoxInputs();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10000CCC0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000CCD4(uint64_t a1, int a2)
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

uint64_t sub_10000CD1C(uint64_t result, int a2, int a3)
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

uint64_t sub_10000CD74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006D6FLL;
  v3 = 0x74746F427466654CLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 1801675074;
    }

    else
    {
      v5 = 0x746F427468676952;
    }

    if (v4 == 2)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEB000000006D6F74;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x746E6F7246;
    }

    else
    {
      v5 = 0x74746F427466654CLL;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEA00000000006D6FLL;
    }
  }

  v7 = 0xE400000000000000;
  v8 = 1801675074;
  if (a2 != 2)
  {
    v8 = 0x746F427468676952;
    v7 = 0xEB000000006D6F74;
  }

  if (a2)
  {
    v3 = 0x746E6F7246;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100021C3C();
  }

  return v11 & 1;
}

uint64_t sub_10000CEF8()
{
  v1 = *v0;
  v2 = 0x796669746E656469;
  v3 = 0x6F63655279616C70;
  v4 = 0x6F636552706F7473;
  if (v1 != 4)
  {
    v4 = 0x706D6F4374736574;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x73736572676F7270;
  if (v1 != 1)
  {
    v5 = 0x6E617254656C6966;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_10000CFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000118D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000D01C(uint64_t a1)
{
  v2 = sub_100014118();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000D058(uint64_t a1)
{
  v2 = sub_100014118();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000D094(void *a1)
{
  v2 = v1;
  v4 = sub_100009BDC(&qword_100036020, &qword_100025FB8);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v42 = &v36 - v6;
  v7 = sub_100009BDC(&qword_100036028, &qword_100025FC0);
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = sub_100009BDC(&qword_100036030, &qword_100025FC8);
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v15 = sub_100009BDC(&qword_100036038, &qword_100025FD0);
  v37 = *(v15 - 8);
  v16 = *(v37 + 64);
  __chkstk_darwin(v15);
  v18 = &v36 - v17;
  v19 = sub_100009BDC(&qword_100036040, &qword_100025FD8);
  v46 = *(v19 - 8);
  v47 = v19;
  v20 = *(v46 + 64);
  __chkstk_darwin(v19);
  v22 = &v36 - v21;
  v23 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_100014508();
  sub_100021D2C();
  v24 = v2[1];
  v45 = *v2;
  v25 = v2[2];
  if (*(v2 + 32) > 1u)
  {
    if (*(v2 + 32) == 2)
    {
      LOBYTE(v48) = 2;
      sub_100014604();
      v29 = v47;
      sub_100021BCC();
      v48 = v45;
      sub_100014658();
      v30 = v41;
      sub_100021C0C();
      (*(v40 + 8))(v10, v30);
      return (*(v46 + 8))(v22, v29);
    }

    else
    {
      LOBYTE(v48) = 3;
      sub_10001455C();
      v33 = v42;
      v34 = v47;
      sub_100021BCC();
      v48 = v45;
      v49 = v24;
      v50 = v25;
      sub_1000145B0();
      v35 = v44;
      sub_100021C0C();
      (*(v43 + 8))(v33, v35);
      return (*(v46 + 8))(v22, v34);
    }
  }

  else if (*(v2 + 32))
  {
    LOBYTE(v48) = 1;
    sub_1000146AC();
    v31 = v47;
    sub_100021BCC();
    v48 = v45;
    v49 = v24;
    LOBYTE(v50) = v25;
    sub_100014700();
    v32 = v39;
    sub_100021C0C();
    (*(v38 + 8))(v14, v32);
    return (*(v46 + 8))(v22, v31);
  }

  else
  {
    v26 = v2[3];
    LOBYTE(v48) = 0;
    sub_100014754();
    v27 = v47;
    sub_100021BCC();
    v48 = v45;
    v49 = v24;
    v50 = v25;
    v51 = v26;
    sub_1000147A8();
    sub_100021C0C();
    (*(v37 + 8))(v18, v15);
    return (*(v46 + 8))(v22, v27);
  }
}

unint64_t sub_10000D628(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x6965636552646964;
    v5 = 0x646E6553656C6966;
    if (a1 != 2)
    {
      v5 = 0xD000000000000010;
    }

    if (a1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000011;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x6E6964726F636572;
    }

    if (a1 == 6)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 4)
    {
      v1 = 0x6B63616279616C70;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10000D778(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v83 = a4;
  *&v84 = a2;
  *(&v84 + 1) = a3;
  v5 = sub_100009BDC(&qword_100036518, &qword_100027F98);
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  __chkstk_darwin(v5);
  v73 = &v57 - v7;
  v8 = sub_100009BDC(&qword_100036520, &qword_100027FA0);
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  __chkstk_darwin(v8);
  v70 = &v57 - v10;
  v11 = sub_100009BDC(&qword_100036528, &qword_100027FA8);
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  __chkstk_darwin(v11);
  v67 = &v57 - v13;
  v66 = sub_100009BDC(&qword_100036530, &qword_100027FB0);
  v65 = *(v66 - 8);
  v14 = *(v65 + 64);
  __chkstk_darwin(v66);
  v64 = &v57 - v15;
  v63 = sub_100009BDC(&qword_100036538, &qword_100027FB8);
  v62 = *(v63 - 8);
  v16 = *(v62 + 64);
  __chkstk_darwin(v63);
  v61 = &v57 - v17;
  v60 = sub_100009BDC(&qword_100036540, &qword_100027FC0);
  v59 = *(v60 - 8);
  v18 = *(v59 + 64);
  __chkstk_darwin(v60);
  v58 = &v57 - v19;
  v20 = sub_100009BDC(&qword_100036548, &qword_100027FC8);
  v78 = *(v20 - 8);
  v79 = v20;
  v21 = *(v78 + 64);
  __chkstk_darwin(v20);
  v23 = &v57 - v22;
  v24 = sub_100009BDC(&qword_100036550, &qword_100027FD0);
  v77 = *(v24 - 8);
  v25 = *(v77 + 64);
  __chkstk_darwin(v24);
  v27 = &v57 - v26;
  v28 = sub_100009BDC(&qword_100036558, &qword_100027FD8);
  v76 = *(v28 - 8);
  v29 = *(v76 + 64);
  __chkstk_darwin(v28);
  v31 = &v57 - v30;
  v32 = sub_100009BDC(&qword_100036560, &qword_100027FE0);
  v33 = *(v32 - 8);
  v81 = v32;
  v82 = v33;
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v57 - v35;
  v37 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_100018D6C();
  v80 = v36;
  sub_100021D2C();
  if (v83 > 1u)
  {
    if (v83 == 2)
    {
      v87 = 2;
      sub_100018FB8();
      v41 = v80;
      v42 = v81;
      sub_100021BCC();
      v43 = v79;
      sub_100021BDC();
      (*(v78 + 8))(v23, v43);
      return (*(v82 + 8))(v41, v42);
    }

    else
    {
      if (v84 > 2)
      {
        if (v84 ^ 3 | *(&v84 + 1))
        {
          if (v84 ^ 4 | *(&v84 + 1))
          {
            v93 = 8;
            sub_100018DC0();
            v52 = v73;
            v48 = v80;
            v47 = v81;
            sub_100021BCC();
            v54 = v74;
            v53 = v75;
          }

          else
          {
            v92 = 7;
            sub_100018E14();
            v52 = v70;
            v48 = v80;
            v47 = v81;
            sub_100021BCC();
            v54 = v71;
            v53 = v72;
          }
        }

        else
        {
          v91 = 6;
          sub_100018E68();
          v52 = v67;
          v48 = v80;
          v47 = v81;
          sub_100021BCC();
          v54 = v68;
          v53 = v69;
        }

        v49 = *(v54 + 8);
        v50 = v52;
      }

      else
      {
        if (v84 == 0)
        {
          v88 = 3;
          sub_100018F64();
          v55 = v58;
          v48 = v80;
          v47 = v81;
          sub_100021BCC();
          v49 = *(v59 + 8);
          v50 = v55;
          v51 = &v94;
        }

        else if (v84 ^ 1 | *(&v84 + 1))
        {
          v90 = 5;
          sub_100018EBC();
          v56 = v64;
          v48 = v80;
          v47 = v81;
          sub_100021BCC();
          v49 = *(v65 + 8);
          v50 = v56;
          v51 = &v96;
        }

        else
        {
          v89 = 4;
          sub_100018F10();
          v46 = v61;
          v48 = v80;
          v47 = v81;
          sub_100021BCC();
          v49 = *(v62 + 8);
          v50 = v46;
          v51 = &v95;
        }

        v53 = *(v51 - 32);
      }

      v49(v50, v53);
      return (*(v82 + 8))(v48, v47);
    }
  }

  else if (v83)
  {
    v86 = 1;
    sub_10001900C();
    v45 = v80;
    v44 = v81;
    sub_100021BCC();
    sub_100021BDC();
    (*(v77 + 8))(v27, v24);
    return (*(v82 + 8))(v45, v44);
  }

  else
  {
    v85 = 0;
    sub_100019060();
    v39 = v80;
    v38 = v81;
    sub_100021BCC();
    sub_100021BDC();
    (*(v76 + 8))(v31, v28);
    return (*(v82 + 8))(v39, v38);
  }
}

uint64_t sub_10000E0F4(void *a1)
{
  v3 = v1;
  v5 = sub_100009BDC(&qword_100035F60, &qword_100025BC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_100013D10();
  sub_100021D2C();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_100021BDC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v17[14] = 1;
  sub_100021BFC();
  v15 = v3[3];
  v16 = v3[4];
  v17[13] = 2;
  sub_100021BDC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10000E2B0(uint64_t a1)
{
  v2 = sub_100014310();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E2EC(uint64_t a1)
{
  v2 = sub_100014310();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E340(uint64_t a1)
{
  v2 = sub_100014460();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E37C(uint64_t a1)
{
  v2 = sub_100014460();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E3B8(uint64_t a1)
{
  v2 = sub_100014268();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E3F4(uint64_t a1)
{
  v2 = sub_100014268();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E430(uint64_t a1)
{
  v2 = sub_1000143B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E46C(uint64_t a1)
{
  v2 = sub_1000143B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E4B4@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10000E4E4(uint64_t a1)
{
  v2 = sub_100014214();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E520(uint64_t a1)
{
  v2 = sub_100014214();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E55C(uint64_t a1)
{
  v2 = sub_10001416C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E598(uint64_t a1)
{
  v2 = sub_10001416C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10000E5D4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100011AEC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_10000E624()
{
  v1 = 0x796669746E656469;
  v2 = 0x6E617254656C6966;
  if (*v0 != 2)
  {
    v2 = 0x7365547472617473;
  }

  if (*v0)
  {
    v1 = 0x737574617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000E6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001272C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000E6DC(uint64_t a1)
{
  v2 = sub_100014508();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E718(uint64_t a1)
{
  v2 = sub_100014508();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E754(uint64_t a1)
{
  v2 = sub_100014604();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E790(uint64_t a1)
{
  v2 = sub_100014604();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E7CC(uint64_t a1)
{
  v2 = sub_100014754();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E808(uint64_t a1)
{
  v2 = sub_100014754();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E844(uint64_t a1)
{
  v2 = sub_10001455C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E880(uint64_t a1)
{
  v2 = sub_10001455C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100021C3C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10000E94C(uint64_t a1)
{
  v2 = sub_1000146AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E988(uint64_t a1)
{
  v2 = sub_1000146AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100012898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000EA18(uint64_t a1)
{
  v2 = sub_100018D6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EA54(uint64_t a1)
{
  v2 = sub_100018D6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EAAC(uint64_t a1)
{
  v2 = sub_100019060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EAE8(uint64_t a1)
{
  v2 = sub_100019060();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EB24(uint64_t a1)
{
  v2 = sub_10001900C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EB60(uint64_t a1)
{
  v2 = sub_10001900C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100021C3C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10000EC24(uint64_t a1)
{
  v2 = sub_100018FB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EC60(uint64_t a1)
{
  v2 = sub_100018FB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EC9C(uint64_t a1)
{
  v2 = sub_100018F10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000ECD8(uint64_t a1)
{
  v2 = sub_100018F10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000ED14(uint64_t a1)
{
  v2 = sub_100018F64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000ED50(uint64_t a1)
{
  v2 = sub_100018F64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000ED8C(uint64_t a1)
{
  v2 = sub_100018EBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EDC8(uint64_t a1)
{
  v2 = sub_100018EBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EE04(uint64_t a1)
{
  v2 = sub_100018E14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EE40(uint64_t a1)
{
  v2 = sub_100018E14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EE7C(uint64_t a1)
{
  v2 = sub_100018E68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EEB8(uint64_t a1)
{
  v2 = sub_100018E68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EEF4(uint64_t a1)
{
  v2 = sub_100018DC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EF30(uint64_t a1)
{
  v2 = sub_100018DC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EF6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100012BA0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_10000EFBC()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x6D75736B63656863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_10000F008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000139E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000F030(uint64_t a1)
{
  v2 = sub_100013D10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F06C(uint64_t a1)
{
  v2 = sub_100013D10();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10000F0A8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100013AFC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_10000F120()
{
  if (*v0)
  {
    result = 0x6C656E6E616863;
  }

  else
  {
    result = 1701080941;
  }

  *v0;
  return result;
}

uint64_t sub_10000F154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v5 || (sub_100021C3C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100021C3C();

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

uint64_t sub_10000F23C(uint64_t a1)
{
  v2 = sub_10001790C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F278(uint64_t a1)
{
  v2 = sub_10001790C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000F2B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000147FC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10000F2E0()
{
  v1 = 0x656D756C6F76;
  if (*v0 != 1)
  {
    v1 = 0x73756C756D697473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_10000F344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000149FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000F378(uint64_t a1)
{
  v2 = sub_100014D1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F3B4(uint64_t a1)
{
  v2 = sub_100014D1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10000F3F0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100014B1C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

Swift::Int sub_10000F444()
{
  v1 = *v0;
  sub_100021CBC();
  sub_10002190C();

  return sub_100021CDC();
}

uint64_t sub_10000F508()
{
  *v0;
  *v0;
  *v0;
  sub_10002190C();
}

Swift::Int sub_10000F5B8()
{
  v1 = *v0;
  sub_100021CBC();
  sub_10002190C();

  return sub_100021CDC();
}

uint64_t sub_10000F678@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100016300(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000F6A8(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006D6FLL;
  v3 = 0x74746F427466654CLL;
  v4 = 0xE400000000000000;
  v5 = 1801675074;
  if (*v1 != 2)
  {
    v5 = 0x746F427468676952;
    v4 = 0xEB000000006D6F74;
  }

  if (*v1)
  {
    v3 = 0x746E6F7246;
    v2 = 0xE500000000000000;
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

uint64_t sub_10000F7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100021C3C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10000F834(uint64_t a1)
{
  v2 = sub_100018AF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F870(uint64_t a1)
{
  v2 = sub_100018AF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10000F8AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001634C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10000F8D8(void *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a3;
  v5 = sub_100009BDC(&qword_1000365B8, &qword_100027FE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_1000190B4();
  sub_100021D2C();
  v15 = 0;
  sub_100021BEC();
  if (v3)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v14 = 1;
  sub_100021BEC();
  v13 = 2;
  sub_100021BEC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10000FA88(void *a1, uint64_t a2)
{
  v4 = sub_100009BDC(&qword_1000362B0, &qword_100027360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_1000173F4();
  sub_100021D2C();
  v11[1] = a2;
  sub_100009BDC(&qword_100036248, &qword_100027338);
  sub_1000176E4();
  sub_100021C0C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10000FC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000164BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000FC2C(uint64_t a1)
{
  v2 = sub_1000190B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000FC68(uint64_t a1)
{
  v2 = sub_1000190B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000FCA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000165DC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10000FD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C6966 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100021C3C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10000FD8C(uint64_t a1)
{
  v2 = sub_1000173F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000FDC8(uint64_t a1)
{
  v2 = sub_1000173F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10000FE04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000167A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10000FE4C()
{
  v1 = 0x6C6F636F746F7270;
  if (*v0 != 1)
  {
    v1 = 0x656C69666F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E656B6F74;
  }
}

uint64_t sub_10000FEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100016958(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000FED8(uint64_t a1)
{
  v2 = sub_1000175C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000FF14(uint64_t a1)
{
  v2 = sub_1000175C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000FF50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100016A74(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10000FF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100021C3C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100010020(uint64_t a1)
{
  v2 = sub_100017518();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001005C(uint64_t a1)
{
  v2 = sub_100017518();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100010098@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100016CAC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000100C4()
{
  if (*v0)
  {
    return 0x737475706E69;
  }

  else
  {
    return 0x74757074756FLL;
  }
}

uint64_t sub_1000100F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74757074756FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_100021C3C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737475706E69 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100021C3C();

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

uint64_t sub_1000101C4(uint64_t a1)
{
  v2 = sub_1000172F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010200(uint64_t a1)
{
  v2 = sub_1000172F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10001023C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100016E50(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100010280()
{
  if (*v0)
  {
    result = 0x73746C75736572;
  }

  else
  {
    result = 0x6F43737574617473;
  }

  *v0;
  return result;
}

uint64_t sub_1000102C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
  if (v6 || (sub_100021C3C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100021C3C();

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

uint64_t sub_1000103A4(uint64_t a1)
{
  v2 = sub_1000172A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000103E0(uint64_t a1)
{
  v2 = sub_1000172A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001041C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001709C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100010448(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v8 = sub_100009BDC(&qword_1000362E0, &qword_100027370);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_100017864();
  sub_100021D2C();
  LOBYTE(v18) = 0;
  sub_100021BEC();
  if (!v5)
  {
    v18 = a3;
    v19 = v16;
    v20 = v17;
    v21 = 1;
    sub_1000178B8();
    sub_100021C0C();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000105D8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_100009BDC(&qword_1000362C8, &qword_100027368);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  v13 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_1000177BC();
  sub_100021D2C();
  v15[1] = a2;
  v15[2] = a3;
  v16 = a4;
  sub_100017810();
  sub_100021C0C();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100010734(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = sub_100009BDC(&qword_100036298, &qword_100027358);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_100017690();
  sub_100021D2C();
  v17 = a2;
  v16 = 0;
  sub_100009BDC(&qword_1000361F8, &qword_100027318);
  sub_10000C468(&qword_1000362A8, &qword_1000361F8, &qword_100027318);
  sub_100021C0C();
  if (v4)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v17 = v15;
  v16 = 1;
  sub_100021C0C();
  v17 = a4;
  v16 = 2;
  sub_100021C0C();
  return (*(v9 + 8))(v12, v8);
}

Swift::Int sub_100010958()
{
  v1 = *v0;
  sub_100021CBC();
  sub_100021CCC(v1);
  return sub_100021CDC();
}

Swift::Int sub_1000109A0()
{
  v1 = *v0;
  sub_100021CBC();
  sub_100021CCC(v1);
  return sub_100021CDC();
}

uint64_t sub_1000109E4()
{
  if (*v0)
  {
    result = 0x6F6973726556736FLL;
  }

  else
  {
    result = 0x6C6F636F746F7270;
  }

  *v0;
  return result;
}

uint64_t sub_100010A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556;
  if (v6 || (sub_100021C3C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_100021C3C();

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

uint64_t sub_100010B1C(uint64_t a1)
{
  v2 = sub_100017864();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010B58(uint64_t a1)
{
  v2 = sub_100017864();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100010BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100021C3C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100010C4C(uint64_t a1)
{
  v2 = sub_1000177BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010C88(uint64_t a1)
{
  v2 = sub_1000177BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100010CE4()
{
  v1 = 0x6574656D61726170;
  if (*v0 != 1)
  {
    v1 = 0x6369666963657073;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461636964657270;
  }
}

uint64_t sub_100010D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100018B9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100010D78(uint64_t a1)
{
  v2 = sub_100017690();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010DB4(uint64_t a1)
{
  v2 = sub_100017690();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100010E10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a5;
  v9 = sub_100021A4C();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  v11 = __chkstk_darwin(v9);
  v52 = &v41 - v12;
  v49 = *(a2 - 8);
  v13 = *(v49 + 64);
  __chkstk_darwin(v11);
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  v15 = *(v51 + 64);
  v16 = __chkstk_darwin(AssociatedTypeWitness);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v53 = a4;
  v54 = &v41 - v19;
  v50 = a3;
  v20 = type metadata accessor for RawValueDecodable();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v41 - v23;
  v25 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  v26 = v57;
  sub_100021CFC();
  if (!v26)
  {
    v42 = v24;
    v43 = v21;
    v44 = v20;
    v57 = a1;
    v28 = v51;
    v27 = v52;
    sub_10000BEFC(v56, v56[3]);
    sub_100021C4C();
    v29 = v28;
    v30 = v18;
    v31 = *(v28 + 16);
    v31(v30, v54, AssociatedTypeWitness);
    sub_10002194C();
    v32 = v49;
    if ((*(v49 + 48))(v27, 1, a2) != 1)
    {
      (*(v29 + 8))(v54, AssociatedTypeWitness);
      v38 = *(v32 + 32);
      v39 = v45;
      v38(v45, v27, a2);
      v40 = v42;
      v38(v42, v39, a2);
      sub_10000C4B8(v56);
      (*(v43 + 32))(v48, v40, v44);
      v36 = v57;
      return sub_10000C4B8(v36);
    }

    (*(v46 + 8))(v27, v47);
    type metadata accessor for RawValueDecodable.DecodingError();
    swift_getWitnessTable();
    swift_allocError();
    v33 = v54;
    v34 = AssociatedTypeWitness;
    v31(v35, v54, AssociatedTypeWitness);
    swift_willThrow();
    (*(v29 + 8))(v33, v34);
    sub_10000C4B8(v56);
    a1 = v57;
  }

  v36 = a1;
  return sub_10000C4B8(v36);
}

uint64_t sub_1000112C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = sub_100021A4C();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v45 = *(a2 - 8);
  v10 = *(v45 + 64);
  __chkstk_darwin(v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SerializedCodable();
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v17 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  v18 = v46;
  sub_100021CFC();
  if (v18)
  {
    goto LABEL_10;
  }

  v38 = v16;
  v39 = v12;
  v40 = v13;
  v46 = v9;
  sub_10000BEFC(v48, v48[3]);
  sub_100018A88();
  sub_100021C4C();
  v19 = v47[0];
  v20 = v47[1];
  v21 = objc_opt_self();
  isa = sub_10002172C().super.isa;
  v47[0] = 0;
  v23 = [v21 JSONObjectWithData:isa options:0 error:v47];

  if (!v23)
  {
    v34 = v47[0];
    sub_10002166C();

    swift_willThrow();
    v35 = v19;
    goto LABEL_8;
  }

  v24 = a1;
  v25 = v19;
  v26 = v47[0];
  sub_100021A5C();
  swift_unknownObjectRelease();
  v27 = v46;
  v28 = a2;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v45 + 56))(v27, 1, 1, a2);
    (*(v42 + 8))(v27, v43);
    type metadata accessor for SerializedCodable.DecodingError();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    v35 = v25;
LABEL_8:
    sub_100009688(v35, v20);
    sub_10000C4B8(v48);
LABEL_10:
    v33 = a1;
    return sub_10000C4B8(v33);
  }

  sub_100009688(v25, v20);
  v29 = v45;
  (*(v45 + 56))(v27, 0, 1, a2);
  v30 = *(v29 + 32);
  v31 = v39;
  v30(v39, v27, a2);
  v32 = v38;
  v30(v38, v31, v28);
  sub_10000C4B8(v48);
  (*(v41 + 32))(v44, v32, v40);
  v33 = v24;
  return sub_10000C4B8(v33);
}

uint64_t sub_100011730(void *a1, uint64_t a2)
{
  v3 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_100021D1C();
  v4 = objc_opt_self();
  v5 = *(a2 + 16);
  v13[0] = 0;
  v6 = [v4 dataWithJSONObject:sub_100021C2C() options:0 error:v13];
  swift_unknownObjectRelease();
  v7 = v13[0];
  if (v6)
  {
    v8 = sub_10002173C();
    v10 = v9;

    v13[0] = v8;
    v13[1] = v10;
    sub_100018CC8(v14, v14[3]);
    sub_100018D18();
    sub_100021C5C();
    sub_100009688(v8, v10);
  }

  else
  {
    v11 = v7;
    sub_10002166C();

    swift_willThrow();
  }

  return sub_10000C4B8(v14);
}

uint64_t sub_1000118D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796669746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_100021C3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_100021C3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E617254656C6966 && a2 == 0xEC00000072656673 || (sub_100021C3C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F63655279616C70 && a2 == 0xEF6F696475416472 || (sub_100021C3C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F636552706F7473 && a2 == 0xED0000676E696472 || (sub_100021C3C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x706D6F4374736574 && a2 == 0xEC0000006574656CLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_100021C3C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100011AEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_100009BDC(&qword_100035F80, &qword_100025F78);
  v4 = *(v3 - 8);
  v88 = v3;
  v89 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v94 = &v75 - v6;
  v83 = sub_100009BDC(&qword_100035F88, &qword_100025F80);
  v80 = *(v83 - 8);
  v7 = *(v80 + 64);
  __chkstk_darwin(v83);
  v93 = &v75 - v8;
  v9 = sub_100009BDC(&qword_100035F90, &qword_100025F88);
  v10 = *(v9 - 8);
  v86 = v9;
  v87 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v92 = &v75 - v12;
  v13 = sub_100009BDC(&qword_100035F98, &qword_100025F90);
  v84 = *(v13 - 8);
  v85 = v13;
  v14 = *(v84 + 64);
  __chkstk_darwin(v13);
  v91 = &v75 - v15;
  v16 = sub_100009BDC(&qword_100035FA0, &qword_100025F98);
  v81 = *(v16 - 8);
  v82 = v16;
  v17 = *(v81 + 64);
  __chkstk_darwin(v16);
  v19 = &v75 - v18;
  v20 = sub_100009BDC(&qword_100035FA8, &qword_100025FA0);
  v79 = *(v20 - 8);
  v21 = *(v79 + 64);
  __chkstk_darwin(v20);
  v23 = &v75 - v22;
  v24 = sub_100009BDC(&qword_100035FB0, &qword_100025FA8);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v75 - v27;
  v29 = a1[3];
  v30 = a1[4];
  v102 = a1;
  sub_10000BEFC(a1, v29);
  sub_100014118();
  v31 = v95;
  sub_100021D0C();
  if (v31)
  {
    return sub_10000C4B8(v102);
  }

  v76 = v20;
  v77 = v19;
  v33 = v91;
  v32 = v92;
  v34 = v93;
  v35 = v94;
  v78 = 0;
  v95 = v25;
  v36 = v24;
  v37 = sub_100021BBC();
  if (*(v37 + 16) != 1 || (v38 = *(v37 + 32), v38 == 6))
  {
    v43 = sub_100021ADC();
    swift_allocError();
    v45 = v44;
    v46 = *(sub_100009BDC(&qword_100035FC0, &qword_100025FB0) + 48);
    *v45 = &type metadata for IncomingMessage;
    sub_100021B4C();
    sub_100021ACC();
    (*(*(v43 - 8) + 104))(v45, enum case for DecodingError.typeMismatch(_:), v43);
    swift_willThrow();
    (*(v95 + 8))(v28, v24);
    goto LABEL_10;
  }

  if (*(v37 + 32) <= 2u)
  {
    if (*(v37 + 32))
    {
      if (v38 == 1)
      {
        LOBYTE(v96) = 1;
        sub_1000143B8();
        v39 = v77;
        v40 = v78;
        sub_100021B3C();
        v41 = v28;
        v42 = v95;
        if (v40)
        {
          (*(v95 + 8))(v41, v24);
LABEL_10:
          swift_unknownObjectRelease();
          return sub_10000C4B8(v102);
        }

        v65 = v41;
        sub_10001440C();
        v66 = v82;
        sub_100021BAC();
        v52 = 0;
        v78 = 0;
        (*(v81 + 8))(v39, v66);
        (*(v42 + 8))(v65, v24);
        swift_unknownObjectRelease();
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v73 = v96;
        v74 = 1;
        goto LABEL_30;
      }

      LOBYTE(v96) = 2;
      sub_100014310();
      v57 = v33;
      v58 = v78;
      sub_100021B3C();
      v59 = v95;
      if (!v58)
      {
        sub_100014364();
        v60 = v85;
        sub_100021BAC();
        v52 = 0;
        v78 = 0;
        (*(v84 + 8))(v57, v60);
        (*(v59 + 8))(v28, v24);
        swift_unknownObjectRelease();
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v73 = v96;
        v74 = 2;
LABEL_30:
        v68 = v90;
        goto LABEL_31;
      }
    }

    else
    {
      LOBYTE(v96) = 0;
      sub_100014460();
      v53 = v78;
      sub_100021B3C();
      if (!v53)
      {
        sub_1000144B4();
        v63 = v76;
        sub_100021BAC();
        (*(v79 + 8))(v23, v63);
        (*(v95 + 8))(v28, v24);
        swift_unknownObjectRelease();
        v78 = 0;
        v71 = 0;
        v72 = 0;
        v74 = 0;
        v73 = v96;
        v52 = v97;
        v69 = v98;
        v70 = v99;
        goto LABEL_30;
      }
    }

    (*(v95 + 8))(v28, v24);
    goto LABEL_10;
  }

  v91 = v28;
  v48 = v90;
  v75 = v37;
  if (v38 != 3)
  {
    v49 = v95;
    if (v38 == 4)
    {
      LOBYTE(v96) = 4;
      sub_100014214();
      v50 = v91;
      v51 = v78;
      sub_100021B3C();
      v52 = v51;
      if (v51)
      {
        (*(v49 + 8))(v50, v36);
        goto LABEL_10;
      }

      v78 = 0;
      (*(v80 + 8))(v34, v83);
      (*(v49 + 8))(v50, v36);
      swift_unknownObjectRelease();
      v73 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v74 = 5;
    }

    else
    {
      LOBYTE(v96) = 5;
      sub_10001416C();
      v61 = v91;
      v62 = v78;
      sub_100021B3C();
      if (v62)
      {
        (*(v49 + 8))(v61, v36);
        swift_unknownObjectRelease();
        return sub_10000C4B8(v102);
      }

      sub_1000141C0();
      v67 = v88;
      sub_100021BAC();
      v78 = 0;
      (*(v89 + 8))(v35, v67);
      (*(v49 + 8))(v91, v36);
      swift_unknownObjectRelease();
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = v96;
      v52 = v97;
      v74 = 4;
    }

    goto LABEL_30;
  }

  LOBYTE(v96) = 3;
  sub_100014268();
  v54 = v91;
  v55 = v78;
  sub_100021B3C();
  v56 = v95;
  if (v55)
  {
    (*(v95 + 8))(v54, v36);
    swift_unknownObjectRelease();
    return sub_10000C4B8(v102);
  }

  sub_1000142BC();
  v64 = v86;
  sub_100021BAC();
  v78 = 0;
  (*(v87 + 8))(v32, v64);
  (*(v56 + 8))(v91, v36);
  swift_unknownObjectRelease();
  v73 = v96;
  v52 = v97;
  v69 = v98;
  v70 = v99;
  v68 = v48;
  v74 = 3;
  v71 = v100;
  v72 = v101;
LABEL_31:
  result = sub_10000C4B8(v102);
  *v68 = v73;
  *(v68 + 8) = v52;
  *(v68 + 16) = v69;
  *(v68 + 24) = v70;
  *(v68 + 32) = v71;
  *(v68 + 40) = v72;
  *(v68 + 48) = v74;
  return result;
}

uint64_t sub_10001272C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796669746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_100021C3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_100021C3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E617254656C6966 && a2 == 0xEC00000072656673 || (sub_100021C3C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365547472617473 && a2 == 0xE900000000000074)
  {

    return 3;
  }

  else
  {
    v6 = sub_100021C3C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100012898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6965636552646964 && a2 == 0xEE00656C69466576;
  if (v4 || (sub_100021C3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100023B60 == a2 || (sub_100021C3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E6553656C6966 && a2 == 0xED0000726F727245 || (sub_100021C3C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100023B80 == a2 || (sub_100021C3C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100023BA0 == a2 || (sub_100021C3C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xED0000726F727245 || (sub_100021C3C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100023BC0 == a2 || (sub_100021C3C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100023BE0 == a2 || (sub_100021C3C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6964726F636572 && a2 == 0xEE00726F72724567)
  {

    return 8;
  }

  else
  {
    v6 = sub_100021C3C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_100012BA0(uint64_t *a1)
{
  v2 = sub_100009BDC(&qword_1000365C8, &qword_100027FF0);
  v94 = *(v2 - 8);
  v95 = v2;
  v3 = *(v94 + 64);
  __chkstk_darwin(v2);
  v99 = &v75 - v4;
  v5 = sub_100009BDC(&qword_1000365D0, &qword_100027FF8);
  v92 = *(v5 - 8);
  v93 = v5;
  v6 = *(v92 + 64);
  __chkstk_darwin(v5);
  v102 = &v75 - v7;
  v8 = sub_100009BDC(&qword_1000365D8, &qword_100028000);
  v90 = *(v8 - 8);
  v91 = v8;
  v9 = *(v90 + 64);
  __chkstk_darwin(v8);
  v101 = &v75 - v10;
  v11 = sub_100009BDC(&qword_1000365E0, &qword_100028008);
  v12 = *(v11 - 8);
  v88 = v11;
  v89 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v96 = &v75 - v14;
  v15 = sub_100009BDC(&qword_1000365E8, &qword_100028010);
  v16 = *(v15 - 8);
  v86 = v15;
  v87 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v100 = &v75 - v18;
  v82 = sub_100009BDC(&qword_1000365F0, &qword_100028018);
  v84 = *(v82 - 8);
  v19 = *(v84 + 64);
  __chkstk_darwin(v82);
  v97 = &v75 - v20;
  v85 = sub_100009BDC(&qword_1000365F8, &qword_100028020);
  v83 = *(v85 - 8);
  v21 = *(v83 + 64);
  __chkstk_darwin(v85);
  v98 = &v75 - v22;
  v81 = sub_100009BDC(&qword_100036600, &qword_100028028);
  v80 = *(v81 - 8);
  v23 = *(v80 + 64);
  __chkstk_darwin(v81);
  v25 = &v75 - v24;
  v26 = sub_100009BDC(&qword_100036608, &qword_100028030);
  v79 = *(v26 - 8);
  v27 = *(v79 + 64);
  __chkstk_darwin(v26);
  v29 = &v75 - v28;
  v30 = sub_100009BDC(&qword_100036610, &qword_100028038);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v75 - v33;
  v36 = a1[3];
  v35 = a1[4];
  v104 = a1;
  sub_10000BEFC(a1, v36);
  sub_100018D6C();
  v37 = v103;
  sub_100021D0C();
  if (v37)
  {
    goto LABEL_12;
  }

  v75 = v26;
  v39 = v100;
  v38 = v101;
  v76 = 0;
  v40 = v102;
  v77 = v31;
  v78 = v34;
  v103 = sub_100021BBC();
  if (*(v103 + 16) != 1 || (v41 = *(v103 + 32), v41 == 9))
  {
    v45 = sub_100021ADC();
    swift_allocError();
    v47 = v46;
    v48 = *(sub_100009BDC(&qword_100035FC0, &qword_100025FB0) + 48);
    *v47 = &type metadata for Status;
    v49 = v78;
    sub_100021B4C();
    sub_100021ACC();
    (*(*(v45 - 8) + 104))(v47, enum case for DecodingError.typeMismatch(_:), v45);
    swift_willThrow();
LABEL_11:
    (*(v77 + 8))(v49, v30);
    swift_unknownObjectRelease();
LABEL_12:
    v50 = v104;
    goto LABEL_13;
  }

  if (*(v103 + 32) > 3u)
  {
    v42 = v78;
    if (*(v103 + 32) <= 5u)
    {
      v43 = v104;
      if (v41 == 4)
      {
        v109 = 4;
        sub_100018F10();
        v60 = v76;
        sub_100021B3C();
        if (!v60)
        {
          (*(v87 + 8))(v39, v86);
          (*(v77 + 8))(v42, v30);
          swift_unknownObjectRelease();
          v30 = 1;
          goto LABEL_39;
        }
      }

      else
      {
        v110 = 5;
        sub_100018EBC();
        v69 = v96;
        v70 = v76;
        sub_100021B3C();
        if (!v70)
        {
          (*(v89 + 8))(v69, v88);
          (*(v77 + 8))(v42, v30);
          swift_unknownObjectRelease();
          v30 = 2;
          goto LABEL_39;
        }
      }
    }

    else
    {
      v43 = v104;
      if (v41 == 6)
      {
        v111 = 6;
        sub_100018E68();
        v61 = v76;
        sub_100021B3C();
        if (!v61)
        {
          (*(v90 + 8))(v38, v91);
          (*(v77 + 8))(v42, v30);
          swift_unknownObjectRelease();
          v30 = 3;
          goto LABEL_39;
        }
      }

      else if (v41 == 7)
      {
        v112 = 7;
        sub_100018E14();
        v44 = v76;
        sub_100021B3C();
        if (!v44)
        {
          (*(v92 + 8))(v40, v93);
          (*(v77 + 8))(v42, v30);
          swift_unknownObjectRelease();
          v30 = 4;
LABEL_39:
          v50 = v43;
          goto LABEL_13;
        }
      }

      else
      {
        v113 = 8;
        sub_100018DC0();
        v67 = v99;
        v68 = v76;
        sub_100021B3C();
        if (!v68)
        {
          (*(v94 + 8))(v67, v95);
          (*(v77 + 8))(v42, v30);
          swift_unknownObjectRelease();
          v30 = 5;
          goto LABEL_39;
        }
      }
    }

    goto LABEL_34;
  }

  if (*(v103 + 32) <= 1u)
  {
    v52 = v76;
    if (!*(v103 + 32))
    {
      v105 = 0;
      sub_100019060();
      v53 = v78;
      sub_100021B3C();
      v43 = v104;
      if (!v52)
      {
        v71 = v30;
        v72 = v75;
        v30 = sub_100021B6C();
        (*(v79 + 8))(v29, v72);
        (*(v77 + 8))(v53, v71);
        swift_unknownObjectRelease();
        goto LABEL_39;
      }

      v54 = *(v77 + 8);
      v55 = v53;
      goto LABEL_35;
    }

    v106 = 1;
    sub_10001900C();
    v49 = v78;
    sub_100021B3C();
    if (!v52)
    {
      v62 = v30;
      v63 = v81;
      v64 = sub_100021B6C();
      v65 = v77;
      v30 = v64;
      (*(v80 + 8))(v25, v63);
      (*(v65 + 8))(v78, v62);
      swift_unknownObjectRelease();
      v50 = v104;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v56 = v76;
  if (v41 != 2)
  {
    v108 = 3;
    sub_100018F64();
    v66 = v97;
    v42 = v78;
    sub_100021B3C();
    v43 = v104;
    if (!v56)
    {
      (*(v84 + 8))(v66, v82);
      (*(v77 + 8))(v42, v30);
      swift_unknownObjectRelease();
      v30 = 0;
      goto LABEL_39;
    }

LABEL_34:
    v54 = *(v77 + 8);
    v55 = v42;
LABEL_35:
    v54(v55, v30);
    swift_unknownObjectRelease();
    v50 = v43;
    goto LABEL_13;
  }

  v107 = 2;
  sub_100018FB8();
  v57 = v98;
  v58 = v78;
  sub_100021B3C();
  v59 = v104;
  if (v56)
  {
    (*(v77 + 8))(v58, v30);
  }

  else
  {
    v73 = v30;
    v74 = v85;
    v30 = sub_100021B6C();
    (*(v83 + 8))(v57, v74);
    (*(v77 + 8))(v58, v73);
  }

  swift_unknownObjectRelease();
  v50 = v59;
LABEL_13:
  sub_10000C4B8(v50);
  return v30;
}

uint64_t sub_1000139E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_100021C3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_100021C3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D75736B63656863 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_100021C3C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100013AFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100009BDC(&qword_100035F50, &qword_100025BC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_100013D10();
  sub_100021D0C();
  if (v2)
  {
    return sub_10000C4B8(a1);
  }

  v24 = 0;
  v11 = sub_100021B6C();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  v21 = sub_100021B9C();
  v22 = 2;
  v15 = sub_100021B6C();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000C4B8(a1);
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v21;
  a2[3] = v15;
  a2[4] = v18;
  return result;
}

unint64_t sub_100013D10()
{
  result = qword_100035F58;
  if (!qword_100035F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F58);
  }

  return result;
}

uint64_t sub_100013D64(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_100013D8C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100013DA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100013DE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100013E48(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_100013E64(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100013E80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100013EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_100013F1C(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_100013F54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100013F9C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_100014014()
{
  result = qword_100035F68;
  if (!qword_100035F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F68);
  }

  return result;
}

unint64_t sub_10001406C()
{
  result = qword_100035F70;
  if (!qword_100035F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F70);
  }

  return result;
}

unint64_t sub_1000140C4()
{
  result = qword_100035F78;
  if (!qword_100035F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035F78);
  }

  return result;
}

unint64_t sub_100014118()
{
  result = qword_100035FB8;
  if (!qword_100035FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FB8);
  }

  return result;
}

unint64_t sub_10001416C()
{
  result = qword_100035FC8;
  if (!qword_100035FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FC8);
  }

  return result;
}

unint64_t sub_1000141C0()
{
  result = qword_100035FD0;
  if (!qword_100035FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FD0);
  }

  return result;
}

unint64_t sub_100014214()
{
  result = qword_100035FD8;
  if (!qword_100035FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FD8);
  }

  return result;
}

unint64_t sub_100014268()
{
  result = qword_100035FE0;
  if (!qword_100035FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FE0);
  }

  return result;
}

unint64_t sub_1000142BC()
{
  result = qword_100035FE8;
  if (!qword_100035FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FE8);
  }

  return result;
}

unint64_t sub_100014310()
{
  result = qword_100035FF0;
  if (!qword_100035FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FF0);
  }

  return result;
}

unint64_t sub_100014364()
{
  result = qword_100035FF8;
  if (!qword_100035FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035FF8);
  }

  return result;
}

unint64_t sub_1000143B8()
{
  result = qword_100036000;
  if (!qword_100036000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036000);
  }

  return result;
}

unint64_t sub_10001440C()
{
  result = qword_100036008;
  if (!qword_100036008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036008);
  }

  return result;
}

unint64_t sub_100014460()
{
  result = qword_100036010;
  if (!qword_100036010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036010);
  }

  return result;
}

unint64_t sub_1000144B4()
{
  result = qword_100036018;
  if (!qword_100036018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036018);
  }

  return result;
}

unint64_t sub_100014508()
{
  result = qword_100036048;
  if (!qword_100036048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036048);
  }

  return result;
}

unint64_t sub_10001455C()
{
  result = qword_100036050;
  if (!qword_100036050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036050);
  }

  return result;
}

unint64_t sub_1000145B0()
{
  result = qword_100036058;
  if (!qword_100036058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036058);
  }

  return result;
}

unint64_t sub_100014604()
{
  result = qword_100036060;
  if (!qword_100036060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036060);
  }

  return result;
}

unint64_t sub_100014658()
{
  result = qword_100036068;
  if (!qword_100036068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036068);
  }

  return result;
}

unint64_t sub_1000146AC()
{
  result = qword_100036070;
  if (!qword_100036070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036070);
  }

  return result;
}

unint64_t sub_100014700()
{
  result = qword_100036078;
  if (!qword_100036078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036078);
  }

  return result;
}

unint64_t sub_100014754()
{
  result = qword_100036080;
  if (!qword_100036080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036080);
  }

  return result;
}

unint64_t sub_1000147A8()
{
  result = qword_100036088;
  if (!qword_100036088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036088);
  }

  return result;
}

uint64_t sub_1000147FC(uint64_t *a1)
{
  v2 = sub_100009BDC(&qword_1000362F8, &qword_100027378);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_10001790C();
  sub_100021D0C();
  sub_100009BDC(&qword_100036308, &qword_100027380);
  v10[7] = 0;
  sub_10000C468(qword_100036310, &qword_100036308, &qword_100027380);
  sub_100021BAC();
  v8 = v11;
  v10[6] = 1;
  sub_100021B8C();
  (*(v3 + 8))(v6, v2);
  sub_10000C4B8(a1);
  return v8;
}

uint64_t sub_1000149FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074;
  if (v4 || (sub_100021C3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000 || (sub_100021C3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73756C756D697473 && a2 == 0xEC000000656C6946)
  {

    return 2;
  }

  else
  {
    v6 = sub_100021C3C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100014B1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100009BDC(&qword_100036090, &unk_100025FE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_100014D1C();
  sub_100021D0C();
  if (v2)
  {
    return sub_10000C4B8(a1);
  }

  v20[15] = 0;
  sub_100014D70();
  sub_100021BAC();
  v12 = v21;
  v11 = v22;
  LOBYTE(v21) = 1;
  sub_100021B7C();
  v14 = v13;
  LOBYTE(v21) = 2;
  v15 = sub_100021B6C();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000C4B8(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v18;
  return result;
}

unint64_t sub_100014D1C()
{
  result = qword_100036098;
  if (!qword_100036098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036098);
  }

  return result;
}

unint64_t sub_100014D70()
{
  result = qword_1000360A0;
  if (!qword_1000360A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncomingMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IncomingMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for OSVersion(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100015008(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100015050(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_1000150A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

__n128 sub_1000150CC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000150D8(uint64_t a1, int a2)
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

uint64_t sub_1000150F8(uint64_t result, int a2, int a3)
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

__n128 initializeBufferWithCopyOfBuffer for AudioOutput.Component(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100015140(uint64_t a1, int a2)
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

uint64_t sub_100015188(uint64_t result, int a2, int a3)
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

uint64_t sub_1000151D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_100015230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1000152C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100015308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioOutput.Component(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AudioOutput.Component(uint64_t result, int a2, int a3)
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

unint64_t sub_1000153B0(uint64_t a1)
{
  result = sub_1000144B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000153D8(uint64_t a1)
{
  result = sub_10001440C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100015400(uint64_t a1)
{
  result = sub_100014658();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100015428(uint64_t a1)
{
  result = sub_100014364();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100015450(uint64_t a1)
{
  *(a1 + 8) = sub_100015480();
  result = sub_1000154D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100015480()
{
  result = qword_1000360A8;
  if (!qword_1000360A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360A8);
  }

  return result;
}

unint64_t sub_1000154D4()
{
  result = qword_1000360B0;
  if (!qword_1000360B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360B0);
  }

  return result;
}

unint64_t sub_100015528(uint64_t a1)
{
  result = sub_1000142BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100015550(uint64_t a1)
{
  result = sub_1000141C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100015578(uint64_t a1)
{
  result = sub_1000147A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000155A0(uint64_t a1)
{
  result = sub_100014700();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000155C8(uint64_t a1)
{
  result = sub_1000145B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000155F4()
{
  result = qword_1000360B8;
  if (!qword_1000360B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360B8);
  }

  return result;
}

unint64_t sub_10001564C()
{
  result = qword_1000360C0;
  if (!qword_1000360C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360C0);
  }

  return result;
}

unint64_t sub_1000156A4()
{
  result = qword_1000360C8;
  if (!qword_1000360C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360C8);
  }

  return result;
}

unint64_t sub_1000156FC()
{
  result = qword_1000360D0;
  if (!qword_1000360D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360D0);
  }

  return result;
}

unint64_t sub_100015754()
{
  result = qword_1000360D8;
  if (!qword_1000360D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360D8);
  }

  return result;
}

unint64_t sub_1000157AC()
{
  result = qword_1000360E0;
  if (!qword_1000360E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360E0);
  }

  return result;
}

unint64_t sub_100015804()
{
  result = qword_1000360E8;
  if (!qword_1000360E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360E8);
  }

  return result;
}

unint64_t sub_10001585C()
{
  result = qword_1000360F0;
  if (!qword_1000360F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360F0);
  }

  return result;
}

unint64_t sub_1000158B4()
{
  result = qword_1000360F8;
  if (!qword_1000360F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000360F8);
  }

  return result;
}

unint64_t sub_10001590C()
{
  result = qword_100036100;
  if (!qword_100036100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036100);
  }

  return result;
}

unint64_t sub_100015964()
{
  result = qword_100036108;
  if (!qword_100036108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036108);
  }

  return result;
}

unint64_t sub_1000159BC()
{
  result = qword_100036110;
  if (!qword_100036110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036110);
  }

  return result;
}

unint64_t sub_100015A14()
{
  result = qword_100036118;
  if (!qword_100036118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036118);
  }

  return result;
}

unint64_t sub_100015A6C()
{
  result = qword_100036120;
  if (!qword_100036120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036120);
  }

  return result;
}

unint64_t sub_100015AC4()
{
  result = qword_100036128;
  if (!qword_100036128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036128);
  }

  return result;
}

unint64_t sub_100015B1C()
{
  result = qword_100036130;
  if (!qword_100036130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036130);
  }

  return result;
}

unint64_t sub_100015B74()
{
  result = qword_100036138;
  if (!qword_100036138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036138);
  }

  return result;
}

unint64_t sub_100015BCC()
{
  result = qword_100036140;
  if (!qword_100036140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036140);
  }

  return result;
}

unint64_t sub_100015C24()
{
  result = qword_100036148;
  if (!qword_100036148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036148);
  }

  return result;
}

unint64_t sub_100015C7C()
{
  result = qword_100036150;
  if (!qword_100036150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036150);
  }

  return result;
}

unint64_t sub_100015CD4()
{
  result = qword_100036158;
  if (!qword_100036158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036158);
  }

  return result;
}

unint64_t sub_100015D2C()
{
  result = qword_100036160;
  if (!qword_100036160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036160);
  }

  return result;
}

unint64_t sub_100015D84()
{
  result = qword_100036168;
  if (!qword_100036168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036168);
  }

  return result;
}

unint64_t sub_100015DDC()
{
  result = qword_100036170;
  if (!qword_100036170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036170);
  }

  return result;
}

unint64_t sub_100015E34()
{
  result = qword_100036178;
  if (!qword_100036178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036178);
  }

  return result;
}

unint64_t sub_100015E8C()
{
  result = qword_100036180;
  if (!qword_100036180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036180);
  }

  return result;
}

unint64_t sub_100015EE4()
{
  result = qword_100036188;
  if (!qword_100036188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036188);
  }

  return result;
}

unint64_t sub_100015F3C()
{
  result = qword_100036190;
  if (!qword_100036190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036190);
  }

  return result;
}

unint64_t sub_100015F94()
{
  result = qword_100036198;
  if (!qword_100036198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036198);
  }

  return result;
}

unint64_t sub_100015FEC()
{
  result = qword_1000361A0;
  if (!qword_1000361A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361A0);
  }

  return result;
}

unint64_t sub_100016044()
{
  result = qword_1000361A8;
  if (!qword_1000361A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361A8);
  }

  return result;
}