uint64_t sub_100018AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10001AFC0();
  a21 = v24;
  a22 = v25;
  sub_10001B068();
  a20 = v22;
  v26 = v22;
  v27 = v22 + 10;
  if (qword_10002C638 != -1)
  {
    sub_100014C08();
  }

  v28 = type metadata accessor for Logger();
  sub_10000F74C(v28, qword_10002CEB0);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (sub_1000116BC(v30))
  {
    v32 = v26[20];
    v31 = v26[21];
    v33 = v26[19];
    sub_100014D3C();
    v34 = sub_10001AF88();
    a11 = v34;
    *v23 = 134349570;
    *(v23 + 4) = v32;
    *(v23 + 12) = 2050;
    *(v23 + 14) = v31;
    *(v23 + 22) = 2082;
    v26[10] = v33;
    type metadata accessor for ML3EntityLikedState(0);
    v35 = String.init<A>(describing:)();
    v37 = sub_100013F98(v35, v36, &a11);

    *(v23 + 24) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "| setting content taste for storeID: %{public}lld, persistentID: %{public}lld, likedState: %{public}s", v23, 0x20u);
    sub_10000F7CC(v34);
    sub_10001AF38();
    sub_10001AFA4();
  }

  v38 = v26[23];
  v39 = v26[24];
  v41 = v26[21];
  v40 = v26[22];
  v43 = v26[19];
  v42 = v26[20];
  v44 = String._bridgeToObjectiveC()();
  v45 = [v44 longLongValue];

  v46 = [objc_allocWithZone(NSNumber) initWithLongLong:v45];
  v26[26] = v46;
  v47 = [objc_opt_self() specificAccountWithDSID:v46];
  v26[27] = v47;
  v48 = [objc_allocWithZone(ICConnectionConfiguration) initWithUserIdentity:v47];
  v26[28] = v48;
  v49 = v43 == 2;
  v50 = [objc_opt_self() sharedCloudContentTasteRequestListener];
  v26[29] = v50;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v26[30] = isa;
  v26[2] = v26;
  v26[7] = v26 + 18;
  v26[3] = sub_100018DF8;
  v52 = swift_continuation_init();
  v26[17] = sub_10000E634(&qword_10002CCC8, &qword_1000208B8);
  v26[10] = _NSConcreteStackBlock;
  v26[11] = 1107296256;
  v26[12] = sub_100019D88;
  v26[13] = &unk_100029098;
  v26[14] = v52;
  [v50 setContentTaste:v49 forMediaItem:1 storeIdentifier:v42 persistentID:v41 timeStamp:isa configuration:v48 withCompletionHandler:?];
  sub_10001AF54();

  return _swift_continuation_await(v53, v54, v55, v56, v57, v58, v59, v60, v27, a10, a11, a12, a13, a14);
}

uint64_t sub_100018DF8()
{
  sub_1000110FC();
  sub_100011384();
  v2 = *(v1 + 200);
  v3 = *v0;
  sub_100010E2C();
  *v5 = v3;

  return _swift_task_switch(sub_100018EDC, v4);
}

uint64_t sub_100018EDC()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);

  v6 = *(v0 + 144);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100018F74(uint64_t a1, void *a2)
{
  v3 = sub_100019F90((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_100018FE4(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_100018FE4(uint64_t a1, uint64_t a2)
{
  sub_10000E634(&qword_10002CA30, &qword_100020610);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

void sub_100019054(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = aBlock - v13;
  (*(v11 + 16))(aBlock - v13, a1, v10);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v15, v14, v10);
  v18 = (v17 + v16);
  *v18 = a5;
  v18[1] = a6;
  aBlock[4] = sub_10001A078;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001CB74;
  aBlock[3] = &unk_1000290E8;
  v19 = _Block_copy(aBlock);

  [a4 databaseConnectionAllowingWrites:0 withBlock:v19];
  _Block_release(v19);
  aBlock[0] = 0;
  AsyncThrowingStream.Continuation.finish(throwing:)();
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000F74C(v20, qword_10002CEB0);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "| database operation finished.", v23, 2u);
  }
}

void sub_1000192FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  if (a1)
  {
    v32 = a1;
    v13 = sub_10001E648(a3, a4, v32);
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000F74C(v14, qword_10002CEB0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "| database connection established.", v17, 2u);
    }

    if (v13)
    {
      (*(v9 + 16))(v12, a2, v8);
      v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v19 = swift_allocObject();
      (*(v9 + 32))(v19 + v18, v12, v8);
      v20 = swift_allocObject();
      *(v20 + 16) = sub_10001ABBC;
      *(v20 + 24) = v19;
      aBlock[4] = sub_10001AC60;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001CAF4;
      aBlock[3] = &unk_100029160;
      v21 = _Block_copy(aBlock);
      v22 = v13;

      [v22 enumerateRowsWithBlock:v21];

      _Block_release(v21);
    }

    else
    {
      v30 = v32;
    }
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000F74C(v23, qword_10002CEB0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "| database connection failed.", v26, 2u);
    }

    v27 = type metadata accessor for MusicDaemon.Error();
    sub_100019F30(&qword_10002CA88, &type metadata accessor for MusicDaemon.Error);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, enum case for MusicDaemon.Error.databaseConnectionFailed(_:), v27);
    aBlock[0] = v28;
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }
}

uint64_t sub_100019774(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = sub_10000E634(&qword_10002CCD8, &qword_1000208C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v41 - v9;
  if (a2)
  {
    swift_errorRetain();
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000F74C(v11, qword_10002CEB0);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v42[0] = v15;
      *v14 = 136315138;
      v41[1] = a2;
      swift_errorRetain();
      sub_10000E634(&qword_10002CA30, &qword_100020610);
      v16 = String.init<A>(describing:)();
      v18 = sub_100013F98(v16, v17, v42);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "| database error: %s", v14, 0xCu);
      sub_10000F7CC(v15);
    }

    v19 = type metadata accessor for MusicDaemon.Error();
    sub_100019F30(&qword_10002CA88, &type metadata accessor for MusicDaemon.Error);
    v20 = swift_allocError();
    v22 = v21;
    swift_getErrorValue();
    *v22 = Error.localizedDescription.getter();
    v22[1] = v23;
    (*(*(v19 - 8) + 104))(v22, enum case for MusicDaemon.Error.other(_:), v19);
    v42[0] = v20;
    sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    if (a3)
    {
      *a3 = 1;
    }
  }

  else if (a1)
  {
    v25 = a1;
    v26 = [v25 int64ForColumnIndex:0];
    v27 = [v25 int64ForColumnIndex:1];
    v28 = [v25 int64ForColumnIndex:2];
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000F74C(v30, qword_10002CEB0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134349312;
      *(v33 + 4) = v26;
      *(v33 + 12) = 2050;
      *(v33 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v31, v32, "| database row fetched with itemPersistentID: %{public}lld, storeID: %{public}lld.", v33, 0x16u);
    }

    v42[0] = v26;
    v42[1] = v29;
    sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
    AsyncThrowingStream.Continuation.yield(_:)();

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000F74C(v34, qword_10002CEB0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "| database row missing.", v37, 2u);
    }

    v38 = type metadata accessor for MusicDaemon.Error();
    sub_100019F30(&qword_10002CA88, &type metadata accessor for MusicDaemon.Error);
    v39 = swift_allocError();
    *v40 = 0xD000000000000014;
    v40[1] = 0x8000000100020F30;
    (*(*(v38 - 8) + 104))(v40, enum case for MusicDaemon.Error.other(_:), v38);
    v42[0] = v39;
    sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
    result = AsyncThrowingStream.Continuation.finish(throwing:)();
    if (a3)
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t sub_100019D88(uint64_t a1, void *a2)
{
  v3 = *sub_100019F90((a1 + 32), *(a1 + 56));
  v4 = a2;

  return sub_100019DD4(v3, v4);
}

Swift::Int sub_100019E38(Swift::UInt64 a1, Swift::UInt64 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_100019EBC()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100019F30(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100019F90(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100019FD4()
{
  v1 = sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
  sub_100010D80(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_10001A078(void *a1)
{
  v3 = sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
  sub_100010D70(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_1000192FC(a1, v1 + v8, v10, v11);
}

unsigned __int8 *sub_10001A11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10001A6A4(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10001A6A4(uint64_t a1, unint64_t a2)
{
  v2 = sub_10001A710(sub_10001A70C, 0, a1, a2);
  v6 = sub_10001A744(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10001A710(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return String.subscript.getter(15, v5 | (v4 << 16));
}

uint64_t sub_10001A744(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1000143A4(v9, 0);
  v12 = sub_10001A8A4(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10001A8A4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_10001AAB4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_10001AAB4(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10001AAB4(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10001AB30()
{
  v1 = sub_10000E634(&qword_10002CCD0, &qword_1000208C0);
  sub_100010D80(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001ABBC(void *a1, uint64_t a2, _BYTE *a3)
{
  v6 = *(*(sub_10000E634(&qword_10002CCD0, &qword_1000208C0) - 8) + 80);

  return sub_100019774(a1, a2, a3);
}

uint64_t sub_10001AC68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10001AC80()
{
  result = qword_10002CCF0;
  if (!qword_10002CCF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002CCF0);
  }

  return result;
}

__n128 _s23LibraryMappingOperationV14_DatabaseTrackVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001ACD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001AD18(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 _s19FavoritingOperationV14_DatabaseTrackVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s19FavoritingOperationV14_DatabaseTrackVwet(uint64_t a1, int a2)
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

uint64_t _s19FavoritingOperationV14_DatabaseTrackVwst(uint64_t result, int a2, int a3)
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

unint64_t sub_10001ADE0()
{
  result = qword_10002CD00;
  if (!qword_10002CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD00);
  }

  return result;
}

uint64_t sub_10001AE74()
{
  result = v1;
  v3 = *(v0 + 8);
  return result;
}

uint64_t sub_10001AE90()
{
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[30];
  v7 = v0[27];
  v9 = v0[23];
  v8 = v0[24];
  v11 = v0[19];
  v10 = v0[20];
}

uint64_t sub_10001AED0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10001AEF0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10001AF10(uint64_t result)
{
  *(result + 8) = sub_100016504;
  v2 = *(v1 + 264);
  v3 = *(v1 + 248);
  return result;
}

uint64_t sub_10001AF38()
{
}

uint64_t sub_10001AF88()
{

  return swift_slowAlloc();
}

uint64_t sub_10001AFA4()
{
}

uint64_t sub_10001AFEC()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v8 = v0[10];
  v6 = v0[8];
  return v0[7];
}

BOOL sub_10001B014(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10001B030(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = *(v3 + 16);
  v2[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

uint64_t sub_10001B0A0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_100013F98(v2, v3, va);
}

uint64_t sub_10001B0BC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[12];
  v4 = v2[5];
  v5 = v2[6];
  v6 = v2[3];
  v7 = v2[4];
  return v2[2];
}

uint64_t sub_10001B12C()
{
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[23];
}

uint64_t sub_10001B150()
{
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[2];
}

uint64_t sub_10001B174()
{
}

void sub_10001B1A0()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
}

void sub_10001B1F4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_10001B214()
{
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[3];

  return type metadata accessor for Logger();
}

uint64_t sub_10001B234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;

  return type metadata accessor for MusicDaemon.Error();
}

uint64_t sub_10001B254()
{

  return swift_slowAlloc();
}

uint64_t sub_10001B26C()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10001B284()
{
  type metadata accessor for DaemonActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_10002CEA8 = v0;
  return result;
}

uint64_t sub_10001B2C0()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10001B318()
{
  result = qword_10002C9D8;
  if (!qword_10002C9D8)
  {
    type metadata accessor for DaemonActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C9D8);
  }

  return result;
}

uint64_t sub_10001B394()
{
  if (qword_10002C630 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10001B3F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DaemonActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v3, a2);
}

id sub_10001B428()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [v0 longLongValue];

  v2 = [objc_allocWithZone(NSNumber) initWithLongLong:v1];
  v3 = [objc_opt_self() specificAccountWithDSID:v2];
  result = [objc_opt_self() musicLibraryForUserAccount:v3];
  if (result)
  {
    v5 = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001B4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_10000E634(&qword_10002CA68, &qword_100020650);
  sub_100010FE8(v4);
  v6 = *(v5 + 64);
  v3[10] = sub_1000115D4();
  v7 = sub_10000E634(&qword_10002CCA0, &qword_100020880);
  sub_100010FE8(v7);
  v9 = *(v8 + 64);
  v3[11] = sub_1000115D4();
  v10 = type metadata accessor for ContentRating();
  sub_100010FE8(v10);
  v12 = *(v11 + 64);
  v3[12] = sub_1000115D4();
  v13 = type metadata accessor for MusicDeviceLocalID();
  v3[13] = v13;
  sub_100010D70(v13);
  v3[14] = v14;
  v16 = *(v15 + 64);
  v3[15] = sub_1000115D4();
  v17 = sub_10000E634(&qword_10002CCE8, &qword_1000208D8);
  sub_100010FE8(v17);
  v19 = *(v18 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v20 = type metadata accessor for MusicIdentifierSet();
  v3[18] = v20;
  sub_100010D70(v20);
  v3[19] = v21;
  v23 = *(v22 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v24 = type metadata accessor for MusicFavoriteStatus();
  v3[23] = v24;
  sub_100010D70(v24);
  v3[24] = v25;
  v27 = *(v26 + 64);
  v3[25] = sub_1000115D4();
  v28 = sub_10000E634(&qword_10002CDA8, &qword_100020A90);
  v3[26] = v28;
  sub_100010D70(v28);
  v3[27] = v29;
  v31 = *(v30 + 64);
  v3[28] = sub_1000115D4();
  v32 = sub_10000E634(&qword_10002CDB0, &qword_100020A98);
  v3[29] = v32;
  sub_100010D70(v32);
  v3[30] = v33;
  v35 = *(v34 + 64);
  v3[31] = sub_1000115D4();
  v36 = sub_10000E634(&qword_10002CDB8, &qword_100020AA0);
  v3[32] = v36;
  sub_100010D70(v36);
  v3[33] = v37;
  v39 = *(v38 + 64);
  v3[34] = sub_1000115D4();
  v40 = type metadata accessor for MusicDaemon.Item();
  v3[35] = v40;
  sub_100010D70(v40);
  v3[36] = v41;
  v43 = *(v42 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  if (qword_10002C630 != -1)
  {
    swift_once();
  }

  v44 = qword_10002CEA8;
  v3[44] = qword_10002CEA8;

  return _swift_task_switch(sub_10001B908, v44);
}

uint64_t sub_10001B908()
{
  v86 = v0;
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 64);
  v5 = type metadata accessor for Logger();
  *(v0 + 360) = sub_10000F74C(v5, qword_10002CEB0);
  v6 = *(v3 + 16);
  *(v0 + 368) = v6;
  *(v0 + 376) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 344);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  if (v9)
  {
    v13 = sub_1000118AC();
    v79 = swift_slowAlloc();
    v85 = v79;
    *v13 = 136446210;
    sub_10001E94C();
    sub_10001E600(v14, v15);
    v16 = v6;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = sub_10001EA0C();
    v21(v20);
    v22 = v17;
    v6 = v16;
    v23 = sub_100013F98(v22, v19, &v85);

    *(v13 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v7, v8, "╭ beginning library mapping operation with item: %{public}s.", v13, 0xCu);
    sub_10000F7CC(v79);
    sub_100014CDC();
    sub_100014CDC();
  }

  else
  {

    v24 = sub_10001EA0C();
    v25(v24);
  }

  *(v0 + 384) = v12;
  v26 = *(v0 + 64);
  v27 = *(v0 + 72);
  v28 = sub_10001CBE0();
  *(v0 + 392) = v29;
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = sub_1000118AC();
      v35 = swift_slowAlloc();
      v85 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_100013F98(v30, v31, &v85);
      _os_log_impl(&_mh_execute_header, v32, v33, "| fetching database track with query: %{public}s.", v34, 0xCu);
      sub_10000F7CC(v35);
      sub_100014CDC();
      sub_100014CDC();
    }

    v36 = v30;
    v38 = *(v0 + 240);
    v37 = *(v0 + 248);
    v39 = *(v0 + 224);
    v80 = *(v0 + 232);
    v83 = *(v0 + 272);
    v41 = *(v0 + 208);
    v40 = *(v0 + 216);
    v42 = *(v0 + 72);
    v43 = swift_task_alloc();
    v43[2] = v42;
    v43[3] = v36;
    v43[4] = v31;
    (*(v40 + 104))(v39, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v41);
    AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

    AsyncThrowingStream.makeAsyncIterator()();
    (*(v38 + 8))(v37, v80);
    *(v0 + 424) = enum case for MusicFavoriteStatus.neutral(_:);
    *(v0 + 428) = enum case for MusicFavoriteStatus.disliked(_:);
    *(v0 + 432) = enum case for MusicFavoriteStatus.favorited(_:);
    v44 = qword_10002CEA8;
    *(v0 + 400) = &_swiftEmptyArrayStorage;
    *(v0 + 408) = v44;
    sub_10001E98C();
    v47 = sub_10001E600(v45, v46);
    v48 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];

    v49 = swift_task_alloc();
    *(v0 + 416) = v49;
    *v49 = v0;
    sub_10001E964(v49);

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, v44, v47);
  }

  else
  {
    v50 = *(v0 + 352);
    v51 = *(v0 + 296);
    v52 = *(v0 + 280);
    v53 = *(v0 + 64);

    v6(v51, v53, v52);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    v56 = sub_10001B014(v55);
    v58 = *(v0 + 288);
    v57 = *(v0 + 296);
    v59 = *(v0 + 280);
    if (v56)
    {
      sub_1000118AC();
      v81 = sub_10001AF88();
      v85 = v81;
      *v53 = 136446210;
      sub_10001E94C();
      sub_10001E600(v60, v61);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v6;
      v65 = v64;
      v66 = sub_10001EA00();
      v67(v66);
      v68 = sub_100013F98(v62, v65, &v85);
      v6 = v63;

      *(v53 + 4) = v68;
      sub_10001E9E0(&_mh_execute_header, v69, v70, "╰ returning unmapped item without database query: %{public}s.");
      sub_10000F7CC(v81);
      sub_100014CDC();
      sub_100014CDC();
    }

    else
    {

      v71 = sub_10001EA00();
      v12(v71);
    }

    v6(*(v0 + 56), *(v0 + 64), *(v0 + 280));
    sub_10001E9A4();
    v74 = *(v0 + 160);
    v75 = *(v0 + 136);
    v76 = *(v0 + 128);
    v77 = *(v0 + 120);
    v78 = *(v0 + 96);
    v82 = *(v0 + 88);
    v84 = *(v0 + 80);

    v72 = *(v0 + 8);

    return v72();
  }
}

uint64_t sub_10001BFA8()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v13 = *v1;

  if (v0)
  {
    v4 = v2[50];
    v5 = v2[51];
    v6 = v2[49];
    v7 = v2[44];

    v8 = sub_10001C948;
    v9 = v7;
  }

  else
  {
    v10 = v2[51];
    v11 = v2[44];

    v8 = sub_10001C0F4;
    v9 = v11;
  }

  return _swift_task_switch(v8, v9);
}

uint64_t sub_10001C0F4()
{
  v116 = v0;
  if (*(v0 + 24) == 2)
  {
    v1 = *(v0 + 392);
    v2 = *(v0 + 400);
    v3 = *(v0 + 352);
    v4 = *(v0 + 280);
    v5 = *(v0 + 80);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

    sub_10001D0C8(v2, v5);

    v6 = sub_10000ED7C(v5, 1, v4);
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 360);
    if (v6 == 1)
    {
      v10 = *(v0 + 304);
      v11 = *(v0 + 280);
      v12 = *(v0 + 64);
      sub_10001E7E8(*(v0 + 80), &qword_10002CA68, &qword_100020650);
      v8(v10, v12, v11);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      v15 = sub_10001B014(v14);
      v16 = *(v0 + 384);
      v17 = *(v0 + 304);
      v19 = *(v0 + 280);
      v18 = *(v0 + 288);
      if (v15)
      {
        sub_1000118AC();
        v20 = sub_10001AF88();
        v115 = v20;
        *v18 = 136446210;
        sub_10001E94C();
        sub_10001E600(v21, v22);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        v26 = sub_10001EA00();
        v16(v26);
        v27 = sub_100013F98(v23, v25, &v115);

        *(v18 + 4) = v27;
        sub_10001E9E0(&_mh_execute_header, v28, v29, "╰ returning unmapped item: %{public}s.");
        sub_10000F7CC(v20);
        sub_100014CDC();
        sub_100014CDC();
      }

      else
      {

        v92 = sub_10001EA00();
        v16(v92);
      }

      v93 = *(v0 + 376);
      (*(v0 + 368))(*(v0 + 56), *(v0 + 64), *(v0 + 280));
    }

    else
    {
      v33 = *(v0 + 312);
      v32 = *(v0 + 320);
      v34 = *(v0 + 280);
      v35 = *(*(v0 + 288) + 32);
      v35(v32, *(v0 + 80), v34);
      v8(v33, v32, v34);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      v38 = sub_10001B014(v37);
      v39 = *(v0 + 384);
      v40 = *(v0 + 312);
      v42 = *(v0 + 280);
      v41 = *(v0 + 288);
      if (v38)
      {
        sub_1000118AC();
        v113 = sub_10001AF88();
        v115 = v113;
        *v41 = 136446210;
        sub_10001E94C();
        sub_10001E600(v43, v44);
        v45 = v35;
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v49 = sub_10001EA00();
        v50(v49);
        v51 = sub_100013F98(v46, v48, &v115);

        *(v41 + 4) = v51;
        sub_10001E9E0(&_mh_execute_header, v52, v53, "╰ returning mapped item from database: %{public}s.");
        sub_10000F7CC(v113);
        sub_100014CDC();
        sub_100014CDC();

        v45(*(v0 + 56), *(v0 + 320), *(v0 + 280));
      }

      else
      {

        v94 = sub_10001EA00();
        v39(v94);
        v35(*(v0 + 56), *(v0 + 320), *(v0 + 280));
      }
    }

    sub_10001E9A4();
    v103 = *(v0 + 160);
    v106 = *(v0 + 136);
    v108 = *(v0 + 128);
    v109 = *(v0 + 120);
    v111 = *(v0 + 96);
    v112 = *(v0 + 88);
    v114 = *(v0 + 80);

    v95 = *(v0 + 8);
    sub_1000114A8();

    __asm { BRAA            X1, X16 }
  }

  v30 = *(v0 + 32);
  v104 = *(v0 + 16);
  if (v30 > 3)
  {
    v31 = 424;
  }

  else
  {
    v31 = qword_100020BC8[v30];
  }

  v54 = (*(v0 + 24) >> 8) & 1;
  v55 = *(v0 + 176);
  v56 = *(v0 + 168);
  v58 = *(v0 + 144);
  v57 = *(v0 + 152);
  v59 = *(v0 + 136);
  v60 = *(v0 + 104);
  v61 = *(v0 + 64);
  (*(*(v0 + 192) + 104))(*(v0 + 200), *(v0 + v31), *(v0 + 184));
  MusicDaemon.Item.isLibraryAddEligible.getter();
  MusicDaemon.Item.identifierSet.getter();
  MusicDaemon.Item.identifierSet.getter();
  MusicIdentifierSet.deviceLocalID.getter();
  v110 = *(v57 + 8);
  v110(v56, v58);
  LODWORD(v61) = sub_10000ED7C(v59, 1, v60);
  sub_10001E7E8(v59, &qword_10002CCE8, &qword_1000208D8);
  if (v61 == 1)
  {
    sub_10001E440(*(v0 + 72));
    if (!v62)
    {
      __break(1u);
      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF();
    }

    v63 = *(v0 + 176);
    v64 = *(v0 + 120);
    v65 = *(v0 + 128);
    v66 = *(v0 + 104);
    v67 = *(v0 + 112);
    MusicItemID.init(_:)();
    *(v0 + 48) = v104;
    dispatch thunk of CustomStringConvertible.description.getter();
    MusicItemID.init(rawValue:)();
    MusicDeviceLocalID.init(value:databaseID:)();
    (*(v67 + 16))(v65, v64, v66);
    sub_10000ED54(v65, 0, 1, v66);
    MusicIdentifierSet.deviceLocalID.setter();
    (*(v67 + 8))(v64, v66);
  }

  v68 = *(v0 + 376);
  v105 = *(v0 + 400);
  v99 = *(v0 + 336);
  v100 = *(v0 + 328);
  v101 = *(v0 + 280);
  v102 = *(v0 + 368);
  v69 = *(v0 + 192);
  v70 = *(v0 + 200);
  v71 = *(v0 + 184);
  v73 = *(v0 + 88);
  v72 = *(v0 + 96);
  v74 = *(v0 + 64);
  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 176), *(v0 + 144));
  MusicDaemon.Item.title.getter();
  MusicDaemon.Item.contentRating.getter();
  (*(v69 + 16))(v73, v70, v71);
  sub_10000ED54(v73, 0, 1, v71);
  MusicDaemon.Item.init(identifierSet:title:contentRating:favoriteStatus:isLibraryAdded:isLibraryAddEligible:)();
  v102(v100, v99, v101);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = *(v0 + 400);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v76 = sub_10001E178(0, *(v76 + 2) + 1, 1, *(v0 + 400));
  }

  v78 = *(v76 + 2);
  v77 = *(v76 + 3);
  if (v78 >= v77 >> 1)
  {
    v76 = sub_10001E178((v77 > 1), v78 + 1, 1, v76);
  }

  v107 = *(v0 + 328);
  v80 = *(v0 + 280);
  v79 = *(v0 + 288);
  v81 = *(v0 + 192);
  v82 = *(v0 + 200);
  v84 = *(v0 + 176);
  v83 = *(v0 + 184);
  v85 = *(v0 + 144);
  (*(v0 + 384))(*(v0 + 336), v80);
  v110(v84, v85);
  (*(v81 + 8))(v82, v83);
  *(v76 + 2) = v78 + 1;
  (*(v79 + 32))(&v76[((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v78], v107, v80);
  v86 = qword_10002CEA8;
  *(v0 + 400) = v76;
  *(v0 + 408) = v86;
  sub_10001E98C();
  sub_10001E600(v87, v88);
  v89 = _sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];

  v90 = swift_task_alloc();
  *(v0 + 416) = v90;
  *v90 = v0;
  sub_10001E964();
  sub_1000114A8();

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF();
}

void sub_10001C948()
{
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[41];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[38];
  v9 = v0[33];
  v8 = v0[34];
  v10 = v0[32];
  v15 = v0[37];
  v16 = v0[31];
  v17 = v0[28];
  v18 = v0[25];
  v19 = v0[22];
  v20 = v0[21];
  v21 = v0[20];
  v22 = v0[17];
  v23 = v0[16];
  v24 = v0[15];
  v25 = v0[12];
  v26 = v0[11];
  v27 = v0[10];

  (*(v9 + 8))(v8, v10);
  v11 = v0[5];

  v12 = v0[1];
  sub_1000114A8();

  __asm { BRAA            X1, X16 }
}

void sub_10001CAF4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = a2;
  v9 = a3;
  v8(a2, a3, a4);
}

void sub_10001CB74(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

unint64_t sub_10001CBE0()
{
  v0 = (*(*(sub_10000E634(&qword_10002CCE0, &qword_1000208D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v2 = &v39 - v1;
  v3 = type metadata accessor for MusicIdentifierSet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v39 - v12;
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = sub_10000E634(&qword_10002CCE8, &qword_1000208D8);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16 - 8);
  v19 = &v39 - v18;
  v42 = 0xD0000000000000A4;
  v43 = 0x8000000100021030;
  MusicDaemon.Item.identifierSet.getter();
  MusicIdentifierSet.deviceLocalID.getter();
  v20 = *(v4 + 8);
  v20(v15, v3);
  v21 = type metadata accessor for MusicDeviceLocalID();
  if (sub_10000ED7C(v19, 1, v21) != 1)
  {
    v28 = MusicDeviceLocalID.value.getter();
    v30 = v29;
    (*(*(v21 - 8) + 8))(v19, v21);
    strcpy(&v41, "item_pid=");
    WORD1(v41._object) = 0;
    HIDWORD(v41._object) = -385875968;
LABEL_7:
    v32._countAndFlagsBits = v28;
    v32._object = v30;
    String.append(_:)(v32);
LABEL_8:

    goto LABEL_9;
  }

  sub_10001E7E8(v19, &qword_10002CCE8, &qword_1000208D8);
  MusicDaemon.Item.identifierSet.getter();
  MusicIdentifierSet.catalogID.getter();
  v20(v13, v3);
  v22 = type metadata accessor for MusicCatalogID();
  if (sub_10000ED7C(v2, 1, v22) != 1)
  {
    v28 = MusicCatalogID.value.getter();
    v30 = v31;
    (*(*(v22 - 8) + 8))(v2, v22);
    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v41._countAndFlagsBits = 0xD00000000000001BLL;
    v41._object = 0x8000000100020FE0;
    goto LABEL_7;
  }

  sub_10001E7E8(v2, &qword_10002CCE0, &qword_1000208D0);
  MusicDaemon.Item.identifierSet.getter();
  v23 = MusicIdentifierSet.libraryID.getter();
  v25 = v24;
  v20(v10, v3);
  if (!v25)
  {
    v34 = v40;
    MusicDaemon.Item.identifierSet.getter();
    v35 = MusicIdentifierSet.purchasedAdamID.getter();
    v37 = v36;
    v20(v34, v3);
    if (!v37)
    {
      return 0;
    }

    v41._countAndFlagsBits = 0;
    v41._object = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(&v41, "store_item_id=");
    HIBYTE(v41._object) = -18;
    v38._countAndFlagsBits = v35;
    v38._object = v37;
    String.append(_:)(v38);
    goto LABEL_8;
  }

  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v41._countAndFlagsBits = 0xD00000000000001CLL;
  v41._object = 0x8000000100020FC0;
  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 34;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
LABEL_9:
  String.append(_:)(v41);

  return v42;
}

uint64_t sub_10001D0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for MusicDaemon.Item();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for MusicDaemon.Item();
    v7 = a2;
    v8 = 1;
  }

  return sub_10000ED54(v7, v8, 1, v9);
}

void sub_10001D190(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v12, v8);
  v16 = (v15 + v14);
  *v16 = a3;
  v16[1] = a4;
  aBlock[4] = sub_10001E544;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001CB74;
  aBlock[3] = &unk_1000292D8;
  v17 = _Block_copy(aBlock);

  [a2 databaseConnectionAllowingWrites:0 withBlock:v17];
  _Block_release(v17);
  aBlock[0] = 0;
  AsyncThrowingStream.Continuation.finish(throwing:)();
  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000F74C(v18, qword_10002CEB0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "| database operation finished.", v21, 2u);
  }
}

void sub_10001D438(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  if (a1)
  {
    v32 = a1;
    v13 = sub_10001E648(a3, a4, v32);
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000F74C(v14, qword_10002CEB0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "| database connection established.", v17, 2u);
    }

    if (v13)
    {
      (*(v9 + 16))(v12, a2, v8);
      v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v19 = swift_allocObject();
      (*(v9 + 32))(v19 + v18, v12, v8);
      v20 = swift_allocObject();
      *(v20 + 16) = sub_10001E720;
      *(v20 + 24) = v19;
      aBlock[4] = sub_10001E7C0;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001CAF4;
      aBlock[3] = &unk_100029350;
      v21 = _Block_copy(aBlock);
      v22 = v13;

      [v22 enumerateRowsWithBlock:v21];

      _Block_release(v21);
    }

    else
    {
      v30 = v32;
    }
  }

  else
  {
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000F74C(v23, qword_10002CEB0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "| database connection failed.", v26, 2u);
    }

    v27 = type metadata accessor for MusicDaemon.Error();
    sub_10001E600(&qword_10002CA88, &type metadata accessor for MusicDaemon.Error);
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, enum case for MusicDaemon.Error.databaseConnectionFailed(_:), v27);
    aBlock[0] = v28;
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }
}

uint64_t sub_10001D8B0(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v8 = sub_10000E634(&qword_10002CDD0, &qword_100020AB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v44 - v11;
  if (a2)
  {
    swift_errorRetain();
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000F74C(v13, qword_10002CEB0);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v48 = v17;
      *v16 = 136315138;
      v47 = a2;
      swift_errorRetain();
      sub_10000E634(&qword_10002CA30, &qword_100020610);
      v18 = String.init<A>(describing:)();
      v20 = sub_100013F98(v18, v19, &v48);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "| database error: %s", v16, 0xCu);
      sub_10000F7CC(v17);
    }

    v21 = type metadata accessor for MusicDaemon.Error();
    sub_10001E600(&qword_10002CA88, &type metadata accessor for MusicDaemon.Error);
    v22 = swift_allocError();
    v24 = v23;
    swift_getErrorValue();
    *v24 = Error.localizedDescription.getter();
    v24[1] = v25;
    (*(*(v21 - 8) + 104))(v24, enum case for MusicDaemon.Error.other(_:), v21);
    v48 = v22;
    sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    if (a3)
    {
      *a3 = 1;
    }
  }

  if (a1)
  {
    v44[1] = a4;
    v27 = a1;
    v28 = [v27 int64ForColumnIndex:0];
    v45 = [v27 intForColumnIndex:1];
    v46 = [v27 int64ForColumnIndex:2];
    v29 = [v27 int64ForColumnIndex:3];
    v30 = [v27 intForColumnIndex:4];
    if (qword_10002C638 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000F74C(v31, qword_10002CEB0);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v44[0] = v30;
      v34 = v45 == 1;
      v35 = swift_slowAlloc();
      *v35 = 134350080;
      *(v35 + 4) = v28;
      *(v35 + 12) = 1026;
      *(v35 + 14) = v34;
      LODWORD(v30) = v44[0];
      *(v35 + 18) = 2050;
      *(v35 + 20) = v46;
      *(v35 + 28) = 2050;
      *(v35 + 30) = v29;
      *(v35 + 38) = 1026;
      *(v35 + 40) = v30;
      _os_log_impl(&_mh_execute_header, v32, v33, "| database row fetched with itemPersistentID: %{public}lld, isLibraryAdded: %{BOOL,public}d, baseLocationID: %{public}lld, remoteLocationID: %{public}lld, likedStateValue: %{public}d.", v35, 0x2Cu);
    }

    if (v29 >= 50)
    {
      v36 = v29 < 0x12C;
      if (v46 < 250)
      {
        goto LABEL_25;
      }
    }

    else if (v46 < 250)
    {
      v36 = 0;
LABEL_25:
      v48 = v28;
      v49 = v45 == 1;
      v50 = v36;
      v51 = v30;
      sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
      AsyncThrowingStream.Continuation.yield(_:)();

      return (*(v9 + 8))(v12, v8);
    }

    v36 = 1;
    goto LABEL_25;
  }

  if (qword_10002C638 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000F74C(v37, qword_10002CEB0);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "| database row missing.", v40, 2u);
  }

  v41 = type metadata accessor for MusicDaemon.Error();
  sub_10001E600(&qword_10002CA88, &type metadata accessor for MusicDaemon.Error);
  v42 = swift_allocError();
  *v43 = 0xD000000000000014;
  v43[1] = 0x8000000100020F30;
  (*(*(v41 - 8) + 104))(v43, enum case for MusicDaemon.Error.other(_:), v41);
  v48 = v42;
  sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  result = AsyncThrowingStream.Continuation.finish(throwing:)();
  if (a3)
  {
    *a3 = 1;
  }

  return result;
}

void sub_10001DF9C(int a1, Swift::UInt64 a2, __int16 a3, Swift::UInt a4)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3 & 1);
  Hasher._combine(_:)(HIBYTE(a3) & 1);
  Hasher._combine(_:)(a4);
}

Swift::Int sub_10001DFEC(Swift::UInt64 a1, __int16 a2, Swift::UInt a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2 & 1);
  Hasher._combine(_:)(HIBYTE(a2) & 1);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

uint64_t sub_10001E068(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  if (*(a2 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_10001DF78(*a1, v3 | *(a1 + 8), *(a1 + 16), *a2, v4 | *(a2 + 8), *(a2 + 16));
}

Swift::Int sub_10001E0AC()
{
  if (*(v0 + 9))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_10001DFEC(*v0, v1 | *(v0 + 8), *(v0 + 16));
}

void sub_10001E0D0(int a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_10001DF9C(a1, *v1, v2 | *(v1 + 8), *(v1 + 16));
}

Swift::Int sub_10001E0F4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

char *sub_10001E178(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_10001E264(v8, v7);
  v10 = *(type metadata accessor for MusicDaemon.Item() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_10001E360(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_10001E264(uint64_t a1, uint64_t a2)
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

  sub_10000E634(&qword_10002CDC0, &qword_100020AA8);
  v4 = *(type metadata accessor for MusicDaemon.Item() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E360(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for MusicDaemon.Item(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for MusicDaemon.Item();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_10001E440(void *a1)
{
  v1 = [a1 libraryUID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10001E4A4()
{
  v1 = sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  sub_10001E9CC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_10001E544(void *a1)
{
  v3 = sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  sub_100010D70(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_10001D438(a1, v1 + v8, v10, v11);
}

uint64_t sub_10001E5E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001E600(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10001E648(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 executeQuery:v4];

  return v5;
}

uint64_t sub_10001E698()
{
  v1 = sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  sub_10001E9CC(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001E720(void *a1, uint64_t a2, _BYTE *a3)
{
  v7 = sub_10000E634(&qword_10002CDC8, &qword_100020AB0);
  sub_100010FE8(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_10001D8B0(a1, a2, a3, v9);
}

uint64_t sub_10001E7C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001E7E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000E634(a2, a3);
  sub_10001E9CC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t _s23LibraryMappingOperationV14_DatabaseTrackVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 24))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s23LibraryMappingOperationV14_DatabaseTrackVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10001E8F0()
{
  result = qword_10002CDD8;
  if (!qword_10002CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDD8);
  }

  return result;
}

uint64_t sub_10001E964(uint64_t result)
{
  *(result + 8) = sub_10001BFA8;
  v2 = *(v1 + 272);
  v3 = *(v1 + 256);
  return result;
}

uint64_t sub_10001E9A4()
{
  v2 = v0[42];
  result = v0[43];
  v3 = v0[40];
  v4 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  v8 = v0[34];
  v9 = v0[31];
  v10 = v0[28];
  v11 = v0[25];
  v13 = v0[21];
  v12 = v0[22];
  return result;
}

void sub_10001E9E0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_10001EA20()
{
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    if (qword_10002C638 != -1)
    {
      sub_100014C08();
    }

    v0 = type metadata accessor for Logger();
    sub_10000F74C(v0, qword_10002CEB0);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "failed to initialize temporary directory.", v3, 2u);
      sub_100014CDC();
    }
  }

  if (qword_10002C638 != -1)
  {
    sub_100014C08();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F74C(v4, qword_10002CEB0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "launching daemon.", v7, 2u);
    sub_100014CDC();
  }

  v8 = objc_autoreleasePoolPush();
  if (qword_10002C5F0 != -1)
  {
    swift_once();
  }

  objc_autoreleasePoolPop(v8);
  sub_100002A20();

  v9 = [objc_opt_self() mainRunLoop];
  [v9 run];
}

uint64_t sub_10001ED64()
{
  _MusicKit_SharedTypeErasedCloudServiceStatusMonitor()();
  sub_10001AC80();
  if (swift_dynamicCast())
  {
    return v1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10001EE04()
{
  v0 = type metadata accessor for Logger();
  sub_100010B0C(v0, qword_10002CEB0);
  sub_10000F74C(v0, qword_10002CEB0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001EE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for MusicDaemon.Request.Context();
    v8 = a1 + *(a3 + 20);
  }

  return sub_10000ED7C(v8, a2, v7);
}

uint64_t sub_10001EF3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for MusicDaemon.Request.Context();
    v10 = a1 + *(a4 + 20);
  }

  return sub_10000ED54(v10, a2, a2, v9);
}

uint64_t _s14descr100028B61V18ObservationContextVMa()
{
  result = qword_10002CE38;
  if (!qword_10002CE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F02C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MusicDaemon.Request.Context();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001F0F8(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(_s14descr100028B61V18ObservationContextVMa() + 20);

  return static MusicDaemon.Request.Context.== infix(_:_:)(a1 + v4, a2 + v4);
}

uint64_t sub_10001F158()
{
  type metadata accessor for UUID();
  sub_10001F41C();
  sub_10001F3D4(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  v2 = *(_s14descr100028B61V18ObservationContextVMa() + 20);
  type metadata accessor for MusicDaemon.Request.Context();
  sub_10001F434();
  sub_10001F3D4(v3, v4);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10001F210()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001F41C();
  sub_10001F3D4(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  v2 = *(_s14descr100028B61V18ObservationContextVMa() + 20);
  type metadata accessor for MusicDaemon.Request.Context();
  sub_10001F434();
  sub_10001F3D4(v3, v4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10001F2EC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10001F3D4(&qword_10002C978, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(a2 + 20);
  type metadata accessor for MusicDaemon.Request.Context();
  sub_10001F3D4(&qword_10002CE78, &type metadata accessor for MusicDaemon.Request.Context);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001F3D4(unint64_t *a1, void (*a2)(uint64_t))
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