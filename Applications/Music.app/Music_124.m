void sub_100CFC508(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    v4 = sub_100019C10(0x6E6F69746361, 0xE600000000000000);
    if (v5)
    {
      v28 = *(*(a1 + 56) + 8 * v4);
      swift_unknownObjectRetain();
      sub_10010FC20(&unk_1011BE790);
      if (swift_dynamicCast())
      {
        if (*(v27 + 16))
        {
          sub_100019C10(0x74756F6E676973, 0xE700000000000000);
          v7 = v6;

          if (v7)
          {
            v8 = *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest);
            if (v8)
            {
              v9 = [v8 storeRequestContext];
              if (v9)
              {
                v10 = v9;
                v11 = [v9 identityStore];
                sub_100009F78(0, &qword_1011BE880);
                v12 = static ICUserIdentity.active.getter();
                v28 = 0;
                v13 = [v11 getPropertiesForUserIdentity:v12 error:&v28];
                if (v13)
                {
                  v14 = v13;
                  v15 = v28;
                  v16 = [v10 identity];
                  v28 = 0;
                  v17 = [v11 getPropertiesForUserIdentity:v16 error:&v28];
                  if (v17)
                  {
                    v18 = v17;
                    v19 = v28;
                    v20 = [v14 DSID];
                    if (v20)
                    {

                      v21 = [v14 DSID];
                      v22 = [v18 DSID];
                      v23 = v22;
                      if (v21)
                      {
                        if (v22)
                        {
                          sub_100009F78(0, &qword_101189A20);
                          v24 = static NSObject.== infix(_:_:)();

                          if ((v24 & 1) == 0)
                          {
                            goto LABEL_27;
                          }

LABEL_24:
                          if (([v14 isManagedAppleID] & 1) == 0)
                          {
                            [v11 setActiveAccountWithDSID:0 completionHandler:0];
                          }

                          goto LABEL_27;
                        }
                      }

                      else
                      {
                        if (!v22)
                        {
                          goto LABEL_24;
                        }
                      }
                    }

LABEL_27:

                    return;
                  }

                  v26 = v28;
                  _convertNSErrorToError(_:)();

                  swift_willThrow();
                  v12 = v16;
                }

                else
                {
                  v25 = v28;
                  _convertNSErrorToError(_:)();

                  swift_willThrow();
                }

                static os_log_type_t.error.getter();
                if (qword_1011BDB58 != -1)
                {
                  swift_once();
                }

                os_log(_:dso:log:_:_:)();
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
}

Swift::Void __swiftcall JSStoreHTTPRequest.scheduleRetry()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin();
  v46 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin();
  v45 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin();
  v41 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = v37 - v8;
  v39 = type metadata accessor for DispatchTimeInterval();
  v52 = *(v39 - 8);
  __chkstk_darwin();
  v40 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = (v37 - v10);
  v11 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20);
  __chkstk_darwin();
  v16 = v37 - v15;
  v17 = *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_response];
  *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_response] = 0;

  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseExpirationDate;
  swift_beginAccess();
  sub_10006B010(v16, &v0[v19], &qword_101188C20);
  swift_endAccess();
  *&v0[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseStatusCode] = 0;
  sub_100009F78(0, &qword_1011BE810);
  sub_100009F78(0, &qword_101182960);
  v20 = static OS_dispatch_queue.main.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100CFE830(&qword_1011BE818, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10010FC20(&qword_1011BE820);
  sub_100029908(&qword_1011BE828, &qword_1011BE820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v12 + 8))(v14, v11);
  v38 = v1;
  *&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryTimer] = v21;
  v37[1] = v21;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v23 = v51;
  v22 = v52;
  *v51 = 100;
  v24 = *(v22 + 104);
  v25 = v39;
  v24(v23, enum case for DispatchTimeInterval.milliseconds(_:), v39);
  swift_getObjectType();
  v26 = v41;
  static DispatchTime.now()();
  v27 = v42;
  + infix(_:_:)();
  v28 = v44;
  v29 = *(v43 + 8);
  v29(v26, v44);
  v30 = v40;
  v24(v40, enum case for DispatchTimeInterval.never(_:), v25);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v52 = *(v52 + 8);
  (v52)(v30, v25);
  v29(v27, v28);
  v31 = swift_allocObject();
  v32 = v38;
  *(v31 + 16) = v38;
  aBlock[4] = sub_100CFE61C;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010FD820;
  v33 = _Block_copy(aBlock);
  v34 = v32;
  v35 = v45;
  static DispatchQoS.unspecified.getter();
  v36 = v46;
  sub_100CFDA44();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v33);
  (*(v49 + 8))(v36, v50);
  (*(v47 + 8))(v35, v48);

  OS_dispatch_source.resume()();
  swift_unknownObjectRelease();
  (v52)(v51, v25);
}

uint64_t sub_100CFD000@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DispatchTimeInterval.never(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_100CFD074(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryTimer;
  if (*(a1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryTimer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    *(a1 + v2) = 0;
    swift_unknownObjectRelease();
  }

  sub_100CFD0E4();
}

void sub_100CFD0E4()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  v73 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URLRequest();
  v74 = *(v5 - 8);
  __chkstk_darwin();
  v75 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 1);
  __chkstk_darwin();
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v66 - v11;
  __chkstk_darwin();
  v14 = &v66 - v13;
  v15 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_url;
  swift_beginAccess();
  if ((*(v8 + 48))(&v1[v15], 1, v7))
  {
    v16 = [objc_allocWithZone(NSError) initWithDomain:NSURLErrorDomain code:-1000 userInfo:0];
    sub_100CFDCBC(0, v16);

    return;
  }

  v66 = v4;
  v67 = v2;
  v72 = v5;
  v17 = *(v8 + 16);
  v17(v10, &v1[v15], v7);

  URL.parametrize(_:)(v18, v12);

  v68 = *(v8 + 8);
  v69 = v8 + 8;
  v68(v10, v7);
  (*(v8 + 32))(v14, v12, v7);
  v17(v10, v14, v7);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v19 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_method;
  URLRequest.httpMethod.setter();
  v20 = v1[v19];
  v70 = v14;
  v71 = v7;
  if (!v20)
  {
    goto LABEL_7;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
    v23 = v1[v19];
    if (v23 == 1)
    {
LABEL_7:

      goto LABEL_5;
    }

    v22 = v1;
    v25 = v66;
    v24 = v67;
    v26 = v73;
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      v28 = *&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_body];
      if (v28)
      {
        v76[2] = *&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_body];
        swift_unknownObjectRetain_n();
        v29 = swift_dynamicCast();
        v30 = v29;
        if (v29)
        {
          static String.Encoding.utf8.getter();
          v7 = String.data(using:allowLossyConversion:)();
          v32 = v31;

          v33 = v24;
          v34 = v32;
          (*(v26 + 8))(v25, v33);
          swift_unknownObjectRelease();
          if (v32 >> 60 == 15)
          {
            swift_unknownObjectRelease();
            goto LABEL_19;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          v35 = objc_opt_self();
          v76[0] = 0;
          v36 = [v35 dataWithJSONObject:v28 options:0 error:v76];
          v37 = v76[0];
          if (!v36)
          {
            v41 = v37;
            v7 = _convertNSErrorToError(_:)();

            swift_willThrow();
            swift_unknownObjectRelease();

            goto LABEL_19;
          }

          v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v38;
        }

        sub_10002BC44(v7, v34);
        URLRequest.httpBody.setter();
        if ((v30 & 1) == 0)
        {
          v39._countAndFlagsBits = 0x2D746E65746E6F43;
          v39._object = 0xEC00000065707954;
          v40.value._object = 0x8000000100E6E9E0;
          v40.value._countAndFlagsBits = 0xD00000000000001FLL;
          URLRequest.setValue(_:forHTTPHeaderField:)(v40, v39);
        }

        swift_unknownObjectRelease();
        sub_10002C064(v7, v34);
      }
    }

LABEL_19:
    v73 = 0;
    goto LABEL_20;
  }

LABEL_5:
  v73 = 0;
  v22 = v1;
LABEL_20:
  v42 = *(v22 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_headers);
  v43 = (v42 + 64);
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & *(v42 + 64);
  v47 = (v44 + 63) >> 6;

  v48 = 0;
  if (v46)
  {
    while (1)
    {
      v49 = v48;
LABEL_28:
      v50 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      v51 = (v49 << 10) | (16 * v50);
      v52 = (*(v42 + 48) + v51);
      v53 = *v52;
      v7 = v52[1];
      v54 = (*(v42 + 56) + v51);
      v55 = *v54;
      v56 = v54[1];

      v57.value._countAndFlagsBits = v55;
      v57.value._object = v56;
      v58._countAndFlagsBits = v53;
      v58._object = v7;
      URLRequest.setValue(_:forHTTPHeaderField:)(v57, v58);

      if (!v46)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
LABEL_24:
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v49 >= v47)
    {
      break;
    }

    v46 = v43[v49];
    ++v48;
    if (v46)
    {
      v48 = v49;
      goto LABEL_28;
    }
  }

  v59 = *(v22 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldSuppressResponseDialogs);
  sub_100009F78(0, &qword_10118EAD8);
  __chkstk_darwin();
  *(&v66 - 16) = v59;
  v60 = static ICStoreRequestContext.default(withConfigurationBlock:)(sub_100CFE878, (&v66 - 4));
  v61 = objc_allocWithZone(ICStoreURLRequest);
  v43 = v60;
  v46 = v75;
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v63 = [v61 initWithURLRequest:isa requestContext:v43];

  v64 = v63;
  [v64 setMaxRetryCount:0];
  [v64 setShouldUseMescalSigning:1];
  [v64 setPrioritize:*(v22 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldPrioritizeRequest)];

  v65 = *(v22 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest);
  *(v22 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest) = v64;
  v7 = v64;

  if (qword_1011BDB50 == -1)
  {
    goto LABEL_31;
  }

LABEL_33:
  swift_once();
LABEL_31:
  sub_100D1FD24(v22);

  (*(v74 + 8))(v46, v72);
  v68(v70, v71);
}

uint64_t sub_100CFDA44()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100CFE830(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_100029908(&qword_101183F70, &qword_101182970);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_100CFDB1C(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = _s11MusicJSCore29SpecialHTTPResponseStatusCodeO8rawValueACSgSi_tcfC_0(*&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseStatusCode]);
  if (v4 == 8 || (a1 & 1) == 0 || v4 - 1 < 2)
  {
LABEL_4:

    JSStoreHTTPRequest.scheduleResponseCallback()();
    return;
  }

  if (v4 == 4)
  {
    if (qword_1011BDB50 != -1)
    {
      swift_once();
    }

    v5 = static JSHTTPRequestCoordinator.shared;
    v14[3] = ObjectType;
    v14[4] = &protocol witness table for JSStoreHTTPRequest;
    v14[0] = v1;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 24);
      v7 = swift_getObjectType();
      v8 = *(v6 + 8);
      v9 = v1;
      v8(v14, v7, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = v1;
    }

    sub_10000959C(v14);
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryCount];
    v11 = v10 < 1;
    v12 = v10 - 1;
    if (v11)
    {
      goto LABEL_4;
    }

    *&v1[OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryCount] = v12;

    JSStoreHTTPRequest.scheduleRetry()();
  }
}

void sub_100CFDCBC(void *a1, void *a2)
{
  sub_10010FC20(&qword_101188C20);
  __chkstk_darwin();
  v6 = &v33 - v5;
  if (a2)
  {
    v7 = a2;
    v8 = [v7 domain];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
    {
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if ([v7 code] == -1001)
    {
      v20 = 900;
LABEL_26:
      *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseStatusCode) = v20;
      sub_100CFDB1C(1);

      goto LABEL_29;
    }

LABEL_14:
    if (a1 && (v21 = [a1 urlResponse]) != 0)
    {
      v22 = v21;
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v20 = [v23 statusCode];
      }

      else
      {
        v20 = 950;
      }
    }

    else
    {
      v20 = 950;
    }

    goto LABEL_26;
  }

  if (a1)
  {
    v15 = *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_response);
    *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_response) = a1;
    v16 = a1;

    v17 = [v16 expirationDate];
    if (v17)
    {
      v18 = v17;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = type metadata accessor for Date();
      (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    }

    else
    {
      v24 = type metadata accessor for Date();
      (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    }

    v25 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseExpirationDate;
    swift_beginAccess();
    sub_10006B010(v6, v2 + v25, &qword_101188C20);
    swift_endAccess();
    v26 = [v16 urlResponse];
    if (v26)
    {
      v27 = v26;
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      v29 = v28;
      if (v28)
      {
        v26 = [v28 statusCode];
      }

      else
      {

        v26 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseStatusCode) = v26;
    v30 = [v16 performanceMetrics];
    v31 = *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_performanceMetrics);
    *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_performanceMetrics) = v30;

    sub_100CFDB1C(1);
  }

LABEL_29:
  v32 = *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest);
  *(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest) = 0;
}

void sub_100CFE03C(void *a1, char a2)
{
  v4 = [objc_opt_self() defaultInfo];
  [a1 setClientInfo:v4];

  v5 = [objc_allocWithZone(ICURLResponseAuthenticationProvider) initWithUserInteractionLevel:1];
  [a1 setAuthenticationProvider:v5];

  if ((a2 & 1) == 0)
  {
    v6 = [objc_allocWithZone(ICStoreDialogResponseHandler) init];
    [a1 setStoreDialogResponseHandler:v6];
  }
}

uint64_t sub_100CFE140(void *a1, uint64_t a2, void *a3)
{
  sub_100009F78(0, &qword_101182960);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;
  v7 = a3;
  v8 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CFE824, v6);
}

void sub_100CFE1F8(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  sub_100CFDCBC(a2, v4);
}

id JSStoreHTTPRequest.init(type:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_url;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_method) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_body) = 0;
  v5 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_queryItems;
  *(v1 + v5) = sub_10010C578(_swiftEmptyArrayStorage);
  v6 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_headers;
  *(v1 + v6) = sub_10010C578(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_timeout) = 0x403E000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryCount) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldSuppressResponseDialogs) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldIgnoreCache) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_shouldPrioritizeRequest) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_performanceMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_frozen) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_mescalPrimeRetryCount) = 2;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_retryTimer) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_response) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseStatusCode) = 0;
  v7 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_responseExpirationDate;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);

  return JSObject.init(type:)(a1);
}

void _s11MusicJSCore18JSStoreHTTPRequestC12invokeMethod_9argumentsySS_SayypGtF_0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_frozen;
  if ((*(v2 + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_frozen) & 1) == 0)
  {
    if (a1 == 1684956531 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      *(v2 + v3) = 1;

      sub_100CFD0E4();
    }

    else if (a1 == 0x6C65636E6163 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_100CFB740();
    }
  }
}

uint64_t type metadata accessor for JSStoreHTTPRequest()
{
  result = qword_1011BE870;
  if (!qword_1011BE870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100CFE678()
{
  sub_100CFE7C8(319, &qword_1011814C0, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_100CFE7C8(319, &qword_101184A60, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100CFE7C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100CFE830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100CFE880()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_10121D348);
  sub_1000060E4(v0, qword_10121D348);
  return static Logger.music(_:)();
}

uint64_t sub_100CFE910()
{
  if (qword_1011BDB30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000060E4(v0, qword_10121D348);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Initial metadata fetch", v3, 2u);
  }

  return _swift_task_switch(sub_100CFEA2C, 0, 0);
}

uint64_t sub_100CFEA2C()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_100CFEAC4;
  v2 = swift_continuation_init();
  sub_100CFEBCC(v2);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100CFEAC4()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100CFEBCC(uint64_t a1)
{
  if ([objc_opt_self() isEnabled])
  {
    BagProvider.shared.unsafeMutableAddressor();
    v2 = swift_allocObject();
    *(v2 + 16) = a1;

    BagProvider.getBag(completion:)(sub_100CFF2C0, v2);
  }

  else
  {
    if (qword_1011BDB30 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, qword_10121D348);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "SocialLayer disabled", v7, 2u);
    }

    sub_100CFF26C();
    v8 = swift_allocError();
    *v9 = 0;
    sub_10010FC20(&qword_1011824A0);
    swift_allocError();
    *v10 = v8;

    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_100CFEDA4(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_101188C20);
  __chkstk_darwin();
  v4 = &v21 - v3;
  v5 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  if (sub_100CFF0AC())
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 56);
    v11(v9, 1, 1, v10);
    v12 = &v9[*(v5 + 20)];
    Date.init(timeIntervalSince1970:)();
    v11(v4, 0, 1, v10);
    sub_1001EBD54(v4, v9);
    *v12 = -1082130432;
    v12[4] = 0;
    sub_100CFF2C8(v9, v7);
    sub_100CFF32C(v7, *(*(a2 + 64) + 40));
    swift_continuation_throwingResume();
    return sub_100CFF390(v9);
  }

  else
  {
    if (qword_1011BDB30 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000060E4(v14, qword_10121D348);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Disabled in bag", v17, 2u);
    }

    sub_100CFF26C();
    v18 = swift_allocError();
    *v19 = 1;
    sub_10010FC20(&qword_1011824A0);
    swift_allocError();
    *v20 = v18;

    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_100CFF0AC()
{
  result = sub_100CFF158();
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_100019C10(0xD000000000000012, 0x8000000100E6EAB0), (v3 & 1) != 0))
    {
      sub_10000DD18(*(v1 + 56) + 32 * v2, v5);

      if (swift_dynamicCast())
      {
        return v4;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_100CFF158()
{
  ICURLBag.subscript.getter(ICURLBagKeyMusicCommon, &v4);
  if (!v5)
  {
    sub_100011DF0(&v4);
    return 0;
  }

  sub_10010FC20(&qword_101197BD0);
  if ((swift_dynamicCast() & 1) == 0 || !v3)
  {
    return 0;
  }

  if (!*(v3 + 16) || (v0 = sub_100019C10(0xD00000000000001ALL, 0x8000000100E6EAD0), (v1 & 1) == 0))
  {

    return 0;
  }

  sub_10000DD18(*(v3 + 56) + 32 * v0, &v4);

  sub_10010FC20(&qword_101197BD0);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100CFF26C()
{
  result = qword_1011BE888;
  if (!qword_1011BE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BE888);
  }

  return result;
}

uint64_t sub_100CFF2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100CFF32C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100CFF390(uint64_t a1)
{
  v2 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100CFF400()
{
  result = qword_1011BE890;
  if (!qword_1011BE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BE890);
  }

  return result;
}

id sub_100CFF454(char a1, uint64_t a2, double a3, double a4)
{
  v30 = type metadata accessor for Date();
  v9 = *(v30 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC11MusicJSCore23JSStorePlaybackPosition_bookmarkTimestamp) = a3;
  *(v4 + OBJC_IVAR____TtC11MusicJSCore23JSStorePlaybackPosition_bookmarkTime) = a4;
  *(v4 + OBJC_IVAR____TtC11MusicJSCore23JSStorePlaybackPosition_hasBeenPlayed) = a1;
  *(v4 + OBJC_IVAR____TtC11MusicJSCore23JSStorePlaybackPosition_userPlayCount) = a2;
  v12 = sub_10010BC60(_swiftEmptyArrayStorage);
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_100CFF818();
  v13 = static NSDateFormatter.iso8601ExtendedDateFormatter.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v15 = [v13 stringFromDate:isa];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v35 = &type metadata for String;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_100016270(&v33, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v12;
  sub_1006C5E68(v32, 0xD000000000000016, 0x8000000100E6EB90, isUniquelyReferenced_nonNull_native);
  v20 = v31;
  v35 = &type metadata for Double;
  *&v33 = a4;
  sub_100016270(&v33, v32);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v20;
  sub_1006C5E68(v32, 0x6B72616D6B6F6F62, 0xEC000000656D6954, v21);
  v22 = v31;
  v35 = &type metadata for Bool;
  LOBYTE(v33) = a1;
  sub_100016270(&v33, v32);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v22;
  sub_1006C5E68(v32, 0x506E656542736168, 0xED0000646579616CLL, v23);
  v24 = v31;
  v35 = &type metadata for Int;
  *&v33 = a2;
  sub_100016270(&v33, v32);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v24;
  sub_1006C5E68(v32, 0x79616C5072657375, 0xED0000746E756F43, v25);
  v26 = v31;
  sub_10010FC20(&qword_101181530);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100EBC6B0;
  *(v27 + 56) = sub_10010FC20(&qword_101197BD0);
  *(v27 + 32) = v26;
  v33 = v27;
  v34 = 0;
  v35 = 0;
  v36 = 1;
  v37 = 0;
  v28 = JSObject.init(type:)(&v33);
  (*(v9 + 8))(v11, v30);
  return v28;
}

unint64_t sub_100CFF818()
{
  result = qword_1011BE8E0;
  if (!qword_1011BE8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011BE8E0);
  }

  return result;
}

void JSShelfItem.shelfSection.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*JSShelfItem.shelfSection.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore11JSShelfItem_shelfSection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100CFF9B0;
}

void sub_100CFF9B0(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

Swift::Void __swiftcall JSShelfItem.didSelectCloseButton()()
{
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v1 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6B0;
  *(v2 + 56) = type metadata accessor for JSShelfItem();
  *(v2 + 32) = v0;
  sub_100027010();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = _swiftEmptyArrayStorage;
  *(v3 + 32) = 0xD00000000000001FLL;
  *(v3 + 40) = 0x8000000100E6EBB0;
  *(v3 + 48) = v0;
  *(v3 + 56) = v1;
  *(v3 + 64) = 0;
  v4 = v0;
  v5 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CE6890, v3);
}

uint64_t type metadata accessor for JSShelfItem()
{
  result = qword_1011BE910;
  if (!qword_1011BE910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id JSShelfItem.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  return JSGridItem.init(type:)(a1);
}

id JSShelfItem.init(type:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();

  return JSGridItem.init(type:)(a1);
}

id JSShelfItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSShelfItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_100CFFCE8()
{
  result = String._bridgeToObjectiveC()();
  static JSShelf.sectionsDidChangeNotification = result;
  return result;
}

uint64_t *JSShelf.sectionsDidChangeNotification.unsafeMutableAddressor()
{
  if (qword_1011BDB38 != -1)
  {
    swift_once();
  }

  return &static JSShelf.sectionsDidChangeNotification;
}

id static JSShelf.sectionsDidChangeNotification.getter()
{
  if (qword_1011BDB38 != -1)
  {
    swift_once();
  }

  v1 = static JSShelf.sectionsDidChangeNotification;

  return v1;
}

uint64_t JSShelf.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100CFFE90@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100CFFF3C(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_100D01E00(v6, a1, type metadata accessor for JSShelfSection, 0x53666C656853534ALL, 0xEE006E6F69746365);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      *&v7[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_delegate + 8] = &protocol witness table for JSShelf;
      swift_unknownObjectWeakAssign();
    }

    while (v5 != v6);
  }

  __break(1u);
  return result;
}

uint64_t JSShelf.$sections.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011BE928);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100D00160()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011BE928);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100D001D8(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BE998);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BE928);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100D0038C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

void *JSShelf.contentArtwork.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_contentArtwork;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *JSShelf.containerDetailLink.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_containerDetailLink;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t JSShelf.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a1;
  v23[1] = a2;
  sub_1000189C0(a3, v24);
  if (!v24[3])
  {

    goto LABEL_15;
  }

  sub_1000189C0(v24, v22);

  sub_10010FC20(&qword_1011BE208);
  if (!swift_dynamicCast())
  {
LABEL_17:
    if (swift_dynamicCast())
    {
      if (a1 == 0x7469747265707573 && a2 == 0xEA0000000000656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_supertitle;
LABEL_22:
        v14 = &v3[v13];
        swift_beginAccess();
        *v14 = v20;
        *(v14 + 1) = v21;

LABEL_48:
        sub_10000959C(v22);
        sub_1000095E8(v24, &unk_101183F30);
      }

      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_title;
        goto LABEL_22;
      }

      if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_subtitle;
        goto LABEL_22;
      }

      if (a1 == 0xD000000000000014 && 0x8000000100E6EC30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_accessoryButtonTitle;
        goto LABEL_22;
      }
    }

    type metadata accessor for JSArtwork();
    if (swift_dynamicCast())
    {
      v15 = v20;
      if (a1 == 0x41746E65746E6F63 && a2 == 0xEE006B726F777472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_contentArtwork;
LABEL_47:
        swift_beginAccess();
        v17 = *&v3[v16];
        *&v3[v16] = v15;

        goto LABEL_48;
      }
    }

    type metadata accessor for JSContainerDetailLink();
    if (swift_dynamicCast())
    {
      v15 = v20;
      if (a1 == 0xD000000000000013 && 0x8000000100E6EC10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = OBJC_IVAR____TtC11MusicJSCore7JSShelf_containerDetailLink;
        goto LABEL_47;
      }
    }

    sub_10000959C(v22);
LABEL_15:
    JSViewModel.updateProperty(_:value:)(a1, a2, a3);
    return sub_1000095E8(v23, &unk_1011C0D90);
  }

  if ((a1 != 0x736E6F6974636573 || a2 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100CE88B8(v19);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v3;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v9 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_52:

    v18 = [objc_opt_self() defaultCenter];
    if (qword_1011BDB38 != -1)
    {
      swift_once();
    }

    [v18 postNotificationName:static JSShelf.sectionsDidChangeNotification object:v7];

    sub_10000959C(v22);
    sub_1000095E8(v24, &unk_101183F30);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v9 = result;
  if (!result)
  {
    goto LABEL_52;
  }

LABEL_8:
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v11 = sub_100D01E00(v10, _swiftEmptyArrayStorage, type metadata accessor for JSShelfSection, 0x53666C656853534ALL, 0xEE006E6F69746365);
      }

      else
      {
        v11 = _swiftEmptyArrayStorage[v10 + 4];
      }

      v12 = v11;
      ++v10;
      *&v11[OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_delegate + 8] = &protocol witness table for JSShelf;
      swift_unknownObjectWeakAssign();
    }

    while (v9 != v10);
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

void JSShelf.shelfSectionDidChange(_:)()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_1011BDB38 != -1)
  {
    swift_once();
    v1 = v2;
  }

  [v1 postNotificationName:static JSShelf.sectionsDidChangeNotification object:v0];
}

id JSShelf.init(type:)(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011BE928);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore7JSShelf__sections;
  v15[1] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011BE208);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v7, v6, v3);
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_supertitle);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_title);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_subtitle);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v1 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_accessoryButtonTitle);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_contentArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_containerDetailLink) = 0;
  v12 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v13 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v13 = 0;
  v13[1] = 0;
  return JSObject.init(type:)(a1);
}

void sub_100D00D60()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore7JSShelf__sections;
  v2 = sub_10010FC20(&qword_1011BE928);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC11MusicJSCore7JSShelf_containerDetailLink);
}

uint64_t sub_100D00F2C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for JSApplicationMessageTarget();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for JSApplicationMessageTarget();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E6EE10;
  v7._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100D01144(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for JSSocialProfileCollectionItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for JSSocialProfileCollectionItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E6ED00;
  v7._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100D01348(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for JSDeferrableRequest();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for JSDeferrableRequest();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E6ECA0;
  v7._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100D014FC(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for JSContainerDetailLink();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for JSContainerDetailLink();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E6ED20;
  v7._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100D0169C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for JSContainerDetailEntry();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for JSContainerDetailEntry();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E6ED40;
  v7._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100D01870(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for JSSearchLandingItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for JSSearchLandingItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E6EDA0;
  v7._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100D01A10(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for JSOrderedPlaylistSelectorItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for JSOrderedPlaylistSelectorItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E6ECC0;
  v7._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100D01BB0(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for JSSocialOnboardingNetwork();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for JSSocialOnboardingNetwork();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E6ECE0;
  v7._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_100D01D88(unint64_t result, unint64_t a2)
{
  if (a2 >> 62)
  {
    return _CocoaArrayWrapper.subscript.getter();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

uint64_t sub_100D01E00(unint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (a2 >> 62)
  {
    v8 = _CocoaArrayWrapper.subscript.getter();
    a3(0);
    if (swift_dynamicCastClass())
    {
      return v8;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v10 = 0xD000000000000046;
    v9 = 0x8000000100E57D00;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  a3(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v8;
  }

  _StringGuts.grow(_:)(82);
  v9 = 0x8000000100E57CB0;
  v10 = 0xD000000000000043;
LABEL_11:
  String.append(_:)(*&v10);
  v12._countAndFlagsBits = a4;
  v12._object = a5;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x756F662074756220;
  v13._object = 0xEB0000000020646ELL;
  String.append(_:)(v13);
  swift_getObjectType();
  v14._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v14);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100D01FB0(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for JSSettingsSection();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for JSSettingsSection();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E6EDC0;
  v7._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100D0218C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for JSViewModelRequestCoordinator.OperationGroup();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for JSViewModelRequestCoordinator.OperationGroup();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E6ED60;
  v7._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

void (*sub_100D02368(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100D01E00(a2, a3, type metadata accessor for JSSocialProfile, 0x6C6169636F53534ALL, 0xEF656C69666F7250);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_100D0241C(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100D01144(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_100D0249C(void (*result)(id *a1), unint64_t a2, unint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100D01E00(a2, a3, type metadata accessor for JSGridItem, 0x744964697247534ALL, 0xEA00000000006D65);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CAF14;
  }

  __break(1u);
  return result;
}

void (*sub_100D02548(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100D01E00(a2, a3, type metadata accessor for JSShelfItem, 0x49666C656853534ALL, 0xEB000000006D6574);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_100D025F8(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100D01E00(a2, a3, type metadata accessor for JSFlowcaseItem, 0x6163776F6C46534ALL, 0xEE006D6574496573);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_100D026AC(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100D01870(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_100D0272C(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100D01E00(a2, a3, type metadata accessor for JSGridSection, 0x655364697247534ALL, 0xED00006E6F697463);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_100D027E0(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100D01E00(a2, a3, type metadata accessor for JSMenuSection, 0x6553756E654D534ALL, 0xED00006E6F697463);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_100D02894(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100D01E00(a2, a3, type metadata accessor for JSBrickItem, 0x496B63697242534ALL, 0xEB000000006D6574);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

void (*sub_100D02944(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100D01E00(a2, a3, type metadata accessor for JSShelfSection, 0x53666C656853534ALL, 0xEE006E6F69746365);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1006CCC3C;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for JSShelf()
{
  result = qword_1011BE958;
  if (!qword_1011BE958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D02A4C()
{
  sub_100D02AF8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100D02AF8()
{
  if (!qword_1011BE968)
  {
    sub_1001109D0(&qword_1011BE208);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011BE968);
    }
  }
}

uint64_t JSLibraryCollectionComponentController.init(viewModel:)(void *a1)
{
  sub_10010FC20(&qword_1011BE9B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = 0x646F4D776569765FLL;
  *(inited + 40) = 0xEA00000000006C65;
  *(inited + 48) = a1;
  v4 = a1;
  v5 = sub_100CE64D8(inited);
  swift_setDeallocating();
  sub_100D02D28(inited + 32);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore38JSLibraryCollectionComponentController_LibraryCollectionViewModel) = v4;
  sub_10010FC20(&qword_101181530);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100EBC6B0;
  *(v6 + 56) = sub_10010FC20(&qword_1011BE9C8);
  *(v6 + 32) = v5;
  v8[0] = v6;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0xD000000000000024;
  v8[4] = 0x8000000100E6EE30;
  v9 = 0;
  return sub_100DC6530(v8, v1);
}

uint64_t sub_100D02D28(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BE9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for JSLibraryCollectionComponentController()
{
  result = qword_1011BE9F8;
  if (!qword_1011BE9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JSBarButtonItem.title.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100D02EB0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t JSBarButtonItem.title.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9 == a1 && v10 == a2)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v8 = type metadata accessor for JSHeaderItem();
        JSHeaderItem.artworkDidChange(_:)(v5, v8, &off_101101738);
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void (*JSBarButtonItem.title.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_100D031AC;
}

void sub_100D031AC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (a2)
  {

    JSBarButtonItem.title.setter(v3, v4);
  }

  else
  {
    JSBarButtonItem.title.setter(**a1, v4);
  }

  free(v2);
}

uint64_t JSBarButtonItem.$title.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101184218);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSBarButtonItem.$title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem__title;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36374;
}

uint64_t sub_100D03534@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

void sub_100D035B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100D041EC(v1);
}

uint64_t JSBarButtonItem.menu.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100D03678()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011BEA28);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100D036F0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BEA70);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2, v6);
  (v9)(v5, v8, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BEA28);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t JSBarButtonItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a1;
  v17[1] = a2;
  sub_1000189C0(a3, v18);
  if (!v18[3])
  {

    return sub_1000095E8(v17, &unk_1011C0D90);
  }

  sub_1000189C0(v18, v16);

  if (!swift_dynamicCast())
  {
LABEL_9:
    type metadata accessor for JSMenu();
    if (swift_dynamicCast())
    {
      if (a1 == 1970169197 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v6 = v14;
        static Published.subscript.getter();

        swift_getKeyPath();
        swift_getKeyPath();
        v7 = v6;
        v8 = v3;
        static Published.subscript.setter();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v13)
        {
          if (v14)
          {
            v9 = v13;
            v10 = static NSObject.== infix(_:_:)();

            if (v10)
            {

              v7 = v9;
LABEL_27:

              goto LABEL_28;
            }
          }
        }

        else
        {
          if (!v14)
          {

            goto LABEL_27;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = type metadata accessor for JSHeaderItem();
          JSHeaderItem.artworkDidChange(_:)(v8, v11, &off_101101738);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v7 = v13;
        goto LABEL_27;
      }
    }

    sub_10000959C(v16);
    return sub_1000095E8(v17, &unk_1011C0D90);
  }

  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_9;
  }

  JSBarButtonItem.title.setter(v14, v15);
LABEL_28:
  sub_10000959C(v16);
  sub_1000095E8(v18, &unk_101183F30);
}

id JSBarButtonItem.init(type:)(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011BEA28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - v5;
  v7 = sub_10010FC20(&qword_101184258);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - v9;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem_barButtonItemDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem__title;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v8 + 32))(v1 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem__menu;
  v14[0] = 0;
  sub_10010FC20(&qword_1011BEA18);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v12, v6, v3);
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D03E1C()
{
  sub_1000D8F2C(v0 + OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem_barButtonItemDelegate);
  v1 = OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem__title;
  v2 = sub_10010FC20(&qword_101184258);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem__menu;
  v4 = sub_10010FC20(&qword_1011BEA28);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

id JSBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSBarButtonItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSBarButtonItem()
{
  result = qword_1011BEA58;
  if (!qword_1011BEA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D04068@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for JSBarButtonItem();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_100D040B0()
{
  sub_1003CF7FC();
  if (v0 <= 0x3F)
  {
    sub_100D04188();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100D04188()
{
  if (!qword_1011BEA68)
  {
    sub_1001109D0(&qword_1011BEA18);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1011BEA68);
    }
  }
}

void sub_100D041EC(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a1;
  v4 = a1;
  v5 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v3)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v10 || (type metadata accessor for JSMenu(), v6 = v3, v7 = static NSObject.== infix(_:_:)(), v6, v10, (v7 & 1) == 0))
  {
LABEL_7:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = type metadata accessor for JSHeaderItem();
      JSHeaderItem.artworkDidChange(_:)(v5, v8, &off_101101738);
      swift_unknownObjectRelease();
    }

    v6 = v3;
  }
}

uint64_t JSSettingsViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSSettingsViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100CC4F94;
}

uint64_t JSSettingsViewModel.sectionsForAuthenticatedState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100D045B0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100D04630(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t JSSettingsViewModel.sectionsForAuthenticatedState.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*JSSettingsViewModel.sectionsForAuthenticatedState.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A36E1C;
}

uint64_t JSSettingsViewModel.$sectionsForAuthenticatedState.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BEA98);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BEA90);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSettingsViewModel.$sectionsForAuthenticatedState.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BEA98);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel__sectionsForAuthenticatedState;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BEA90);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

uint64_t JSSettingsViewModel.unauthenticatedSections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_100D04B40@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100D04BC0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_100D05FA0(v2);
  return static Published.subscript.setter();
}

uint64_t JSSettingsViewModel.unauthenticatedSections.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

void (*JSSettingsViewModel.unauthenticatedSections.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100A360A8;
}

uint64_t JSSettingsViewModel.$unauthenticatedSections.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BEAB8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BEAB0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSSettingsViewModel.$unauthenticatedSections.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BEAB8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel__unauthenticatedSections;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BEAB0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36370;
}

Swift::Void __swiftcall JSSettingsViewModel.didSelectDoneButton()()
{
  ObjectType = swift_getObjectType();
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v2 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100EBC6B0;
  *(v3 + 56) = ObjectType;
  *(v3 + 32) = v0;
  sub_100027010();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = _swiftEmptyArrayStorage;
  *(v4 + 32) = 0xD000000000000013;
  *(v4 + 40) = 0x8000000100E6EF70;
  *(v4 + 48) = v0;
  *(v4 + 56) = v2;
  *(v4 + 64) = 0;
  v5 = v0;
  v6 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05168, v4);
}

uint64_t JSSettingsViewModel.didRemoveItem(item:)(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = sub_100D0532C(v12, a1);

  if (v4)
  {
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v6 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100EBDC20;
    *(v7 + 56) = ObjectType;
    *(v7 + 32) = v1;
    *(v7 + 88) = type metadata accessor for JSSettingsItem();
    *(v7 + 64) = a1;
    sub_100027010();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = _swiftEmptyArrayStorage;
    *(v8 + 32) = 0xD000000000000015;
    *(v8 + 40) = 0x8000000100E6EF90;
    *(v8 + 48) = v1;
    *(v8 + 56) = v6;
    *(v8 + 64) = 0;
    v9 = v1;
    v10 = a1;
    v11 = v6;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v8);
  }

  return result;
}

uint64_t sub_100D0532C(unint64_t a1, uint64_t a2)
{
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_17:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = sub_100D01FB0(i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = sub_100DC1194(a2, v21[0]);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      break;
    }

    if (v7 == v3)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v11 = static Published.subscript.modify();

  v11(v21, 0);

  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v12 = static JSBridge.shared;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v21[0];
  v21[3] = sub_10010FC20(&qword_1011BEB10);
  v21[0] = v13;
  sub_100027010();
  sub_1000189C0(v21, v20);
  v14 = swift_allocObject();
  *(v14 + 16) = 1;
  v15 = v20[1];
  *(v14 + 24) = v20[0];
  *(v14 + 40) = v15;
  *(v14 + 56) = 0x736D657469;
  *(v14 + 64) = 0xE500000000000000;
  *(v14 + 72) = v6;
  *(v14 + 80) = v12;
  *(v14 + 88) = 0;
  v16 = v6;
  v17 = v12;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05F88, v14);

  sub_1000095E8(v21, &unk_101183F30);
  return 1;
}

uint64_t sub_100D05634()
{

  return swift_deallocObject();
}

uint64_t JSSettingsViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a1;
  v23[1] = a2;
  sub_1000189C0(a3, v24);
  if (v24[3])
  {
    sub_1000189C0(v24, v22);

    sub_10010FC20(&qword_1011BEA80);
    if (swift_dynamicCast())
    {
      if (a1 == 0xD00000000000001DLL && 0x8000000100E6EFD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        v7 = v3;
        static Published.subscript.setter();
        v8 = &v7[OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 1);
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(v7, v21, ObjectType, v9);
          swift_unknownObjectRelease();
        }

LABEL_19:
        sub_10000959C(v22);
        sub_1000095E8(v24, &unk_101183F30);
      }
    }

    sub_10010FC20(&qword_1011BEAC0);
    if (swift_dynamicCast())
    {
      if (a1 == 0xD00000000000001FLL && 0x8000000100E6EFB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v11 = sub_100D30E1C(v21);
        if (v11)
        {
          v13 = v11;
          v14 = v12;
          swift_getKeyPath();
          swift_getKeyPath();
          v15 = v3;
          v16 = v13;

          static Published.subscript.setter();
          v17 = &v15[OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel_delegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v18 = *(v17 + 1);
            v19 = swift_getObjectType();
            (*(v18 + 16))(v15, v16, v14, v19, v18);
            swift_unknownObjectRelease();
          }
        }

        goto LABEL_19;
      }
    }

    sub_10000959C(v22);
  }

  else
  {
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  return sub_1000095E8(v23, &unk_1011C0D90);
}

id JSSettingsViewModel.init(type:)(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011BEAB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = sub_10010FC20(&qword_1011BEA90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel__sectionsForAuthenticatedState;
  v16[0] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011BEA80);
  Published.init(initialValue:)();
  (*(v8 + 32))(v1 + v11, v10, v7);
  v12 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel__unauthenticatedSections;
  v16[0] = 0;
  v16[1] = 0;
  sub_10010FC20(&qword_1011BEAA0);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v12, v6, v3);
  v13 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v14 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v14 = 0;
  v14[1] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D05C8C()
{
  sub_1000D8F2C(v0 + OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel_delegate);
  v1 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel__sectionsForAuthenticatedState;
  v2 = sub_10010FC20(&qword_1011BEA90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11MusicJSCore19JSSettingsViewModel__unauthenticatedSections;
  v4 = sub_10010FC20(&qword_1011BEAB0);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t type metadata accessor for JSSettingsViewModel()
{
  result = qword_1011BEAF0;
  if (!qword_1011BEAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D05E84()
{
  sub_1000054CC(319, &qword_1011BEB00, &qword_1011BEA80);
  if (v0 <= 0x3F)
  {
    sub_1000054CC(319, &qword_1011BEB08, &qword_1011BEAA0);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_100D05FA0(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t sub_100D05FE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_items;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_100D06094(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (a1)
  {
    if (v5)
    {
      type metadata accessor for JSMultiChoiceItem();
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  v9 = &v2[OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v2, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  if ((v2[OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v12 = static JSBridge.shared;
    v13 = *&v2[v4];
    if (v13)
    {
      v14 = type metadata accessor for JSMultiChoiceItem();
    }

    else
    {
      v14 = 0;
      v21[1] = 0;
      v21[2] = 0;
    }

    v21[0] = v13;
    v21[3] = v14;
    sub_100027010();
    sub_1000189C0(v21, v20);
    v15 = swift_allocObject();
    *(v15 + 16) = 1;
    v16 = v20[1];
    *(v15 + 24) = v20[0];
    *(v15 + 40) = v16;
    strcpy((v15 + 56), "selectedItem");
    *(v15 + 69) = 0;
    *(v15 + 70) = -5120;
    *(v15 + 72) = v2;
    *(v15 + 80) = v12;
    *(v15 + 88) = 0;
    v17 = v13;
    v18 = v2;
    v19 = v12;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05F88, v15);

    sub_1000095E8(v21, &unk_101183F30);
  }
}

void *JSMultiChoiceViewModel.selectedItem.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSMultiChoiceViewModel.selectedItem.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_100D06094(v4);
}

void (*JSMultiChoiceViewModel.selectedItem.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_100D06410;
}

void sub_100D06410(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_100D06094(v8);

    v8 = *v5;
  }

  else
  {
    sub_100D06094(v8);
  }

  free(v3);
}

uint64_t JSMultiChoiceViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*JSMultiChoiceViewModel.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100CC4F94;
}

uint64_t JSMultiChoiceViewModel.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_isUpdatingFromJS;
  v8 = *(v3 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_isUpdatingFromJS);
  *(v3 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_isUpdatingFromJS) = 1;
  v19[0] = a1;
  v19[1] = a2;
  sub_1000189C0(a3, v20);
  if (v20[3])
  {
    sub_1000189C0(v20, v17);

    sub_10010FC20(&qword_1011BEB38);
    if (swift_dynamicCast())
    {
      if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v9 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_items;
        swift_beginAccess();
        *(v3 + v9) = v16;

        sub_10000959C(v17);
        goto LABEL_19;
      }
    }

    sub_10000959C(v17);
  }

  else
  {
  }

  if ((a1 != 0x64657463656C6573 || a2 != 0xEC0000006D657449) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    JSViewModel.updateProperty(_:value:)(a1, a2, a3);
    result = sub_1000095E8(v19, &unk_1011C0D90);
    goto LABEL_20;
  }

  sub_1000189C0(a3, v17);
  if (v18)
  {
    type metadata accessor for JSMultiChoiceItem();
    if (swift_dynamicCast())
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_1000095E8(v17, &unk_101183F30);
    v10 = 0;
  }

  v11 = OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem;
  swift_beginAccess();
  v12 = *(v3 + v11);
  *(v3 + v11) = v10;
  v13 = v10;
  sub_100D06094(v12);

LABEL_19:
  sub_1000095E8(v20, &unk_101183F30);

LABEL_20:
  *(v3 + v7) = v8;
  return result;
}

id JSMultiChoiceViewModel.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_items] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_isUpdatingFromJS] = 0;
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData] = xmmword_100EFDB60;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID];
  *v5 = 0;
  v5[1] = 0;
  return JSObject.init(type:)(a1);
}

id JSMultiChoiceViewModel.init(type:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_items) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_selectedItem) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_isUpdatingFromJS) = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v4 = 0;
  v4[1] = 0;

  return JSObject.init(type:)(a1);
}

uint64_t sub_100D06A04()
{

  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore22JSMultiChoiceViewModel_delegate;

  return sub_1000D8F2C(v1);
}

id JSMultiChoiceViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMultiChoiceViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t JSAlertAction.AlertActionStyle.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746C7561666564;
  }

  if (a1 == 1)
  {
    return 0x6C65636E6163;
  }

  return 0x7463757274736564;
}

uint64_t sub_100D06B68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6C65636E6163;
  if (v2 != 1)
  {
    v4 = 0x7463757274736564;
    v3 = 0xEB00000000657669;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6C65636E6163;
  if (*a2 != 1)
  {
    v8 = 0x7463757274736564;
    v7 = 0xEB00000000657669;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100D06C74()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D06D1C()
{
  String.hash(into:)();
}

Swift::Int sub_100D06DB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D06E54@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore13JSAlertActionC05AlertD5StyleO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D06E84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6C65636E6163;
  if (v2 != 1)
  {
    v5 = 0x7463757274736564;
    v4 = 0xEB00000000657669;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t JSAlertAction.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSAlertAction.alertActionStyle.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_alertActionStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSAlertAction.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  sub_1000189C0(a3, v13);
  if (v13[3])
  {
    sub_1000189C0(v13, v11);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = (v3 + OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_title);
        swift_beginAccess();
        *v6 = v10;

LABEL_7:
        sub_10000959C(v11);
        sub_1000095E8(v13, &unk_101183F30);
      }

      if (a1 == 0xD000000000000010 && 0x8000000100E6F0D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = _findStringSwitchCase(cases:string:)(&off_1010FA230, v10);

        if (v8 <= 2)
        {
          v9 = OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_alertActionStyle;
          swift_beginAccess();
          *(v3 + v9) = v8;
        }

        goto LABEL_7;
      }
    }

    sub_10000959C(v11);
  }

  else
  {
  }

  return sub_1000095E8(v12, &unk_1011C0D90);
}

id JSAlertAction.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_title];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_alertActionStyle] = 0;
  return JSObject.init(type:)(a1);
}

id JSAlertAction.init(type:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSAlertAction_alertActionStyle) = 0;
  return JSObject.init(type:)(a1);
}

unint64_t _s11MusicJSCore13JSAlertActionC05AlertD5StyleO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FA230, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D07284()
{
  result = qword_1011BEB78;
  if (!qword_1011BEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BEB78);
  }

  return result;
}

uint64_t JSCookieStorage.init()()
{
  sub_10010FC20(&qword_101183A20);
  __chkstk_darwin();
  v2 = v20 - v1 + 64;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  v7 = OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_indexedCookies;
  *(v0 + v7) = sub_100CE5D3C(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_invalidationTimers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_commonCookiesChangedNotificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_isUpdatingCookies) = 0;
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    (*(v4 + 16))(v0 + OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_defaultURL, v6, v3);
    sub_10010FC20(&unk_1011972C0);
    inited = swift_initStackObject();
    v19 = xmmword_100EBC6B0;
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = 0x55746C7561666564;
    v10 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xEA00000000004C52;
    *(inited + 48) = 0xD000000000000016;
    *(inited + 56) = 0x8000000100E6F120;
    v11 = sub_10010BC60(inited);
    swift_setDeallocating();
    sub_1000095E8(v10, &unk_1011927D0);
    sub_10010FC20(&qword_101181530);
    v12 = swift_allocObject();
    *(v12 + 16) = v19;
    *(v12 + 56) = sub_10010FC20(&qword_101197BD0);
    *(v12 + 32) = v11;
    v20[0] = v12;
    v20[1] = 1;
    memset(&v20[2], 0, 24);
    v21 = 0;
    v13 = JSObject.init(type:)(v20);
    sub_100D0A064(&unk_1010FDDB0, sub_100D0A480, &unk_1010FDDC8);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = objc_opt_self();
    v16 = NSHTTPCookieManagerCookiesChangedNotification;
    v17 = [v15 sharedHTTPCookieStorage];
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v18 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v16, v17, 1, 1, sub_100D09CD4, v14);
    (*(v4 + 8))(v6, v3);
    *&v13[OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_commonCookiesChangedNotificationObserver] = v18;

    return v13;
  }

  return result;
}

void sub_100D0772C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_isUpdatingCookies) == 1)
    {
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_isUpdatingCookies) = 1;
      v19 = v5;
      v13 = Strong;
      sub_100009F78(0, &qword_101182960);
      (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.background(_:), v8);
      v18 = static OS_dispatch_queue.global(qos:)();
      (*(v9 + 8))(v11, v8);
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      aBlock[4] = sub_100D0A480;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010FDD78;
      v15 = _Block_copy(aBlock);
      v16 = v13;
      static DispatchQoS.unspecified.getter();
      v20 = _swiftEmptyArrayStorage;
      sub_10002473C();
      sub_10010FC20(&qword_101182970);
      sub_10002489C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v17 = v18;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v15);

      (*(v1 + 8))(v3, v0);
      (*(v19 + 8))(v7, v4);
    }
  }
}

Swift::Void __swiftcall JSCookieStorage.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (countAndFlagsBits == 0x556D726F66726570 && object == 0xED00006574616470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_10000DD18(arguments._rawValue + 32, aBlock);
      v15 = sub_100D09CDC(aBlock);
      if (v16)
      {
        v19 = v16;
        v29 = v18;
        v30 = v17;
        v20 = v15;
        sub_100009F78(0, &qword_101182960);
        (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInitiated(_:), v11);
        v21 = v35;
        v22 = static OS_dispatch_queue.global(qos:)();
        (*(v12 + 8))(v14, v11);
        v23 = swift_allocObject();
        *(v23 + 16) = v20;
        *(v23 + 24) = v19;
        v24 = v29;
        *(v23 + 32) = v30 & 1;
        *(v23 + 40) = v24;
        *(v23 + 48) = v21;
        aBlock[4] = sub_100D09F4C;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002BC98;
        aBlock[3] = &unk_1010FDBD0;
        v25 = _Block_copy(aBlock);

        v26 = v24;
        v27 = v21;
        static DispatchQoS.unspecified.getter();
        v36 = _swiftEmptyArrayStorage;
        sub_10002473C();
        sub_10010FC20(&qword_101182970);
        sub_10002489C();
        v28 = v34;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v25);

        (*(v33 + 8))(v7, v28);
        (*(v31 + 8))(v10, v32);
      }
    }
  }
}

uint64_t sub_100D07ED8(uint64_t a1, uint64_t a2, int a3, char *a4, void *a5)
{
  v93 = a5;
  v89 = a2;
  v87 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v90 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v91 = *(v10 - 8);
  v92 = v10;
  __chkstk_darwin();
  v86 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a3;
  if (a3)
  {
    v12 = &a4[OBJC_IVAR____TtC11MusicJSCore8JSCookie_name];
    swift_beginAccess();
    v13 = *(v12 + 1);
    if (v13)
    {
      v14 = *v12;
      v15 = &a4[OBJC_IVAR____TtC11MusicJSCore8JSCookie_domain];
      swift_beginAccess();
      v16 = v15[1];
      if (v16)
      {
        v85 = *v15;
        v17 = &a4[OBJC_IVAR____TtC11MusicJSCore8JSCookie_path];
        swift_beginAccess();
        v18 = v17;
        v19 = *(v17 + 1);
        if (v19)
        {
          v81 = v15;
          v82 = v18;
          v83 = a4;
          v20 = *v18;
          sub_10010FC20(&unk_1011972C0);
          inited = swift_initStackObject();
          v79 = v8;
          v80 = v7;
          v22 = inited;
          *(inited + 16) = xmmword_100EBE260;
          *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22[9] = &type metadata for String;
          v22[5] = v23;
          v22[6] = v14;
          v22[7] = v13;
          v22[10] = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22[11] = v24;
          v22[15] = &type metadata for String;
          v22[12] = v85;
          v22[13] = v16;
          v22[16] = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22[17] = v25;
          v22[21] = &type metadata for String;
          v22[18] = v20;
          v22[19] = v19;

          v26 = sub_10010BC60(v22);
          v8 = v79;
          v7 = v80;
          swift_setDeallocating();
          sub_10010FC20(&unk_1011927D0);
          swift_arrayDestroy();
          v27 = [objc_opt_self() sharedCookieStore];
          sub_1003647E0(v26);

          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v27 removeCookiesWithProperties:isa];

          v29 = objc_opt_self();
          v30 = [v29 sharedHTTPCookieStorage];
          v31 = [v30 cookies];

          if (v31)
          {
            sub_100009F78(0, &qword_1011BE978);
            v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v78 = v29;
            if (v32 >> 62)
            {
              goto LABEL_42;
            }

            for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
            {
              v34 = 0;
              v84 = v32 & 0xFFFFFFFFFFFFFF8;
              v85 = v32 & 0xC000000000000001;
              while (1)
              {
                if (v85)
                {
                  v35 = sub_100D02150(v34, v32);
                }

                else
                {
                  if (v34 >= *(v84 + 16))
                  {
                    goto LABEL_41;
                  }

                  v35 = *(v32 + 8 * v34 + 32);
                }

                v36 = v35;
                v37 = v34 + 1;
                if (__OFADD__(v34, 1))
                {
                  break;
                }

                v38 = [v35 name];
                v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v41 = v40;

                v42 = *(v12 + 1);
                if (v42)
                {
                  if (v39 == *v12 && v42 == v41)
                  {
                  }

                  else
                  {
                    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v44 & 1) == 0)
                    {
                      goto LABEL_32;
                    }
                  }

                  v45 = [v36 path];
                  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v48 = v47;

                  v49 = *(v82 + 1);
                  if (v49)
                  {
                    if (v46 == *v82 && v49 == v48)
                    {
                    }

                    else
                    {
                      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v50 & 1) == 0)
                      {
                        goto LABEL_32;
                      }
                    }

                    v51 = [v36 domain];
                    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v54 = v53;

                    v55 = v81[1];
                    if (v55)
                    {
                      if (v52 == *v81 && v55 == v54)
                      {

LABEL_39:
                        v76 = v78;

                        v77 = [v76 sharedHTTPCookieStorage];
                        [v77 deleteCookie:v36];

                        goto LABEL_44;
                      }

                      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v56)
                      {
                        goto LABEL_39;
                      }

LABEL_32:

                      goto LABEL_10;
                    }
                  }
                }

LABEL_10:
                ++v34;
                if (v37 == i)
                {
                  goto LABEL_43;
                }
              }

              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              ;
            }

LABEL_43:

LABEL_44:
            v8 = v79;
            v7 = v80;
          }

          goto LABEL_36;
        }
      }
    }
  }

  else
  {
    sub_100009F78(0, &qword_1011BE978);
    v57 = NSHTTPCookie.init(scriptingCookie:)(a4);
    if (v57)
    {
      v58 = v57;
      v83 = a4;
      v59 = [objc_opt_self() sharedCookieStore];
      sub_10010FC20(&qword_101183990);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_100EBC6C0;
      *(v60 + 32) = v58;
      v61 = v58;
      v62 = Array._bridgeToObjectiveC()().super.isa;

      URL._bridgeToObjectiveC()(OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_defaultURL);
      v64 = v63;
      v65 = [objc_allocWithZone(NSNumber) initWithInteger:-1];
      [v59 saveCookies:v62 forURL:v64 userIdentifier:v65];

LABEL_36:
      sub_100D0A064(&unk_1010FDDB0, sub_100D0A480, &unk_1010FDDC8);
      a4 = v83;
    }
  }

  sub_100009F78(0, &qword_101182960);
  v66 = static OS_dispatch_queue.main.getter();
  v67 = swift_allocObject();
  v68 = v93;
  v69 = v87;
  *(v67 + 16) = v93;
  *(v67 + 24) = v69;
  *(v67 + 32) = v89;
  *(v67 + 40) = v88 & 1;
  *(v67 + 48) = a4;
  aBlock[4] = sub_100D0A3D8;
  aBlock[5] = v67;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010FDD00;
  v70 = _Block_copy(aBlock);
  v71 = v68;

  v72 = a4;

  v73 = v86;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002473C();
  sub_10010FC20(&qword_101182970);
  sub_10002489C();
  v74 = v90;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v70);

  (*(v8 + 8))(v74, v7);
  return (*(v91 + 8))(v73, v92);
}

uint64_t sub_100D087F0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v6 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBDC20;
  v8 = type metadata accessor for JSCookieStorage();
  *(v7 + 32) = a1;
  *(v7 + 88) = &type metadata for String;
  *(v7 + 56) = v8;
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  sub_100009F78(0, &qword_101182960);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = _swiftEmptyArrayStorage;
  *(v9 + 32) = 0xD000000000000018;
  *(v9 + 40) = 0x8000000100E6F240;
  *(v9 + 48) = a1;
  *(v9 + 56) = v6;
  *(v9 + 64) = 0;
  v10 = a1;

  v11 = v6;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v9);
}

uint64_t sub_100D089F0(char *a1)
{
  v118 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v115 = *(v2 - 8);
  __chkstk_darwin();
  v113 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DispatchQoS();
  v112 = *(v114 - 8);
  __chkstk_darwin();
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20);
  __chkstk_darwin();
  v119 = &v102 - v5;
  v120 = type metadata accessor for Date();
  v117 = *(v120 - 8);
  __chkstk_darwin();
  v108 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v110 = &v102 - v7;
  __chkstk_darwin();
  v109 = &v102 - v8;
  v9 = [objc_opt_self() sharedCookieStore];
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_defaultURL);
  v11 = v10;
  v12 = [v9 getCookiesForURL:v10 userIdentifier:0];

  if (v12)
  {
    sub_100009F78(0, &qword_1011BE978);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v14 = sub_100CE5D3C(_swiftEmptyArrayStorage);
  if (v13 >> 62)
  {
    goto LABEL_22;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v116 = v2;
  if (v15)
  {
    while (v15 >= 1)
    {
      v2 = 0;
      v122 = v15;
      v123 = v13 & 0xC000000000000001;
      v121 = v13;
      while (1)
      {
        v16 = v123 ? sub_100D02150(v2, v13) : *(v13 + 8 * v2 + 32);
        v17 = v16;
        v18 = [v16 name];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = v17;
        v1 = _s11MusicJSCore8JSCookieC12nativeCookieACSo12NSHTTPCookieC_tcfC_0(v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&aBlock = v14;
        v13 = v14;
        v25 = sub_100019C10(v19, v21);
        v26 = *(v14 + 16);
        v27 = (v24 & 1) == 0;
        v28 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          break;
        }

        v29 = v24;
        if (*(v14 + 24) >= v28)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100DD9444();
          }
        }

        else
        {
          sub_100DD7C3C(v28, isUniquelyReferenced_nonNull_native);
          v30 = sub_100019C10(v19, v21);
          if ((v29 & 1) != (v31 & 1))
          {
            goto LABEL_78;
          }

          v25 = v30;
        }

        v32 = v122;
        v14 = aBlock;
        if (v29)
        {
          v33 = *(aBlock + 56);
          v34 = *(v33 + 8 * v25);
          *(v33 + 8 * v25) = v1;

          v22 = v34;
        }

        else
        {
          sub_100DD99E8(v25, v19, v21, v1, aBlock);
        }

        v13 = v121;
        ++v2;

        if (v32 == v2)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_22:
      v15 = _CocoaArrayWrapper.endIndex.getter();
      v116 = v2;
      if (!v15)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_76;
  }

LABEL_23:

  v121 = OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_indexedCookies;
  v35 = *&v118[OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_indexedCookies];
  v36 = v35 + 64;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v35 + 64);
  v40 = (v37 + 63) >> 6;

  v123 = v35;

  v41 = 0;
  v42 = v14;
  if (!v39)
  {
    while (1)
    {
LABEL_27:
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
        goto LABEL_57;
      }

      if (v43 >= v40)
      {
        break;
      }

      v39 = *(v36 + 8 * v43);
      ++v41;
      if (v39)
      {
        goto LABEL_30;
      }
    }

    if (*(v42 + 16))
    {
      goto LABEL_47;
    }
  }

  while (1)
  {
    v43 = v41;
LABEL_30:
    if (!*(v42 + 16))
    {
      break;
    }

    v44 = __clz(__rbit64(v39)) | (v43 << 6);
    v45 = (*(v123 + 48) + 16 * v44);
    v46 = *v45;
    v1 = v45[1];
    v47 = *(*(v123 + 56) + 8 * v44);

    v48 = v47;
    v49 = sub_100019C10(v46, v1);
    if ((v50 & 1) == 0)
    {

LABEL_45:

      break;
    }

    v51 = *(*(v42 + 56) + 8 * v49);
    if (!_s11MusicJSCore8JSCookieC3eetoiySbAC_ACtFZ_0(v51, v48))
    {

      goto LABEL_45;
    }

    v39 &= v39 - 1;
    v52 = v46;
    v53 = v42;
    v122 = sub_100019C10(v52, v1);
    v55 = v54;

    if (v55)
    {
      v1 = v122;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v53;
      if (!v56)
      {
        sub_100DD9444();
        v53 = aBlock;
      }

      sub_100CEC7DC(v1, v53);
    }

    v41 = v43;
    v42 = v53;
    if (!v39)
    {
      goto LABEL_27;
    }
  }

LABEL_47:
  v58 = v118;
  *(v121 + v118) = v14;

  v1 = OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_invalidationTimers;
  v43 = *&v58[OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_invalidationTimers];
  if (v43 >> 62)
  {
LABEL_57:
    v59 = _CocoaArrayWrapper.endIndex.getter();
    v123 = v42;
    if (v59)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v59 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v123 = v42;
    if (v59)
    {
LABEL_49:
      if (v59 < 1)
      {
        goto LABEL_77;
      }

      for (i = 0; i != v59; ++i)
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v61 = sub_100D02164(i, v43);
        }

        else
        {
          v61 = *(v43 + 8 * i + 32);
        }

        v62 = v61;
        [v61 invalidate];
      }

      goto LABEL_59;
    }
  }

LABEL_59:
  v63 = *(v14 + 64);
  v64 = _swiftEmptyArrayStorage;
  v128 = _swiftEmptyArrayStorage;
  v65 = 1 << *(v14 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & v63;
  v68 = (v65 + 63) >> 6;
  v69 = (v117 + 6);
  v121 = (v117 + 2);
  v122 = (v117 + 4);
  v107 = NSRunLoopCommonModes;
  ++v117;

  v70 = 0;
  while (1)
  {
    v71 = v70;
    if (!v67)
    {
      break;
    }

LABEL_66:
    v72 = __clz(__rbit64(v67));
    v67 &= v67 - 1;
    v73 = *(*(v14 + 56) + ((v70 << 9) | (8 * v72)));
    v74 = OBJC_IVAR____TtC11MusicJSCore8JSCookie_expirationDate;
    swift_beginAccess();
    v75 = v73 + v74;
    v76 = v119;
    sub_100288264(v75, v119);
    if ((*v69)(v76, 1, v120) == 1)
    {
      sub_1000095E8(v76, &qword_101188C20);
    }

    else
    {
      v105 = v1;
      v77 = v109;
      v78 = v120;
      (*v122)(v109, v76, v120);
      (*v121)(v108, v77, v78);
      v104 = v73;
      Date.init(timeInterval:since:)();
      aBlock = 0u;
      v125 = 0u;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v79 = *(&v125 + 1);
      if (*(&v125 + 1))
      {
        sub_10000954C(&aBlock, *(&v125 + 1));
        v102 = &v102;
        v80 = *(v79 - 8);
        v81 = __chkstk_darwin();
        v83 = &v102 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v80 + 16))(v83, v81);
        v84 = v118;
        v85 = v118;
        v103 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v80 + 8))(v83, v79);
        sub_10000959C(&aBlock);
      }

      else
      {
        v84 = v118;
        v86 = v118;
        v103 = 0;
      }

      v87 = objc_allocWithZone(NSTimer);
      v88 = isa;
      v89 = [v87 initWithFireDate:isa interval:v84 target:"handleCookieDidExpire:" selector:v103 userInfo:0 repeats:1.79769313e308];

      swift_unknownObjectRelease();
      v90 = [objc_opt_self() currentRunLoop];
      [v90 addTimer:v89 forMode:v107];

      v91 = v89;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v92 = *v117;
      v93 = v120;
      (*v117)(v110, v120);
      v92(v109, v93);
      v64 = v128;
      v1 = v105;
    }
  }

  while (1)
  {
    v70 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    if (v70 >= v68)
    {

      v94 = v118;
      *&v118[v1] = v64;

      sub_100009F78(0, &qword_101182960);
      v95 = static OS_dispatch_queue.main.getter();
      v96 = swift_allocObject();
      *(v96 + 16) = v94;
      *(v96 + 24) = v14;
      v126 = sub_100D0A3D0;
      v127 = v96;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v125 = sub_10002BC98;
      *(&v125 + 1) = &unk_1010FDC88;
      v97 = _Block_copy(&aBlock);
      v98 = v94;

      v99 = v111;
      static DispatchQoS.unspecified.getter();
      *&aBlock = _swiftEmptyArrayStorage;
      sub_10002473C();
      sub_10010FC20(&qword_101182970);
      sub_10002489C();
      v100 = v113;
      v101 = v116;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v97);

      (*(v115 + 8))(v100, v101);
      (*(v112 + 8))(v99, v114);
    }

    v67 = *(v14 + 64 + 8 * v70);
    ++v71;
    if (v67)
    {
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100D09748(void *a1, uint64_t a2)
{
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v4 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBDC20;
  *(v5 + 56) = type metadata accessor for JSCookieStorage();
  *(v5 + 32) = a1;
  *(v5 + 88) = sub_10010FC20(&qword_1011BEC08);
  *(v5 + 64) = a2;
  sub_100009F78(0, &qword_101182960);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  *(v6 + 32) = 0xD000000000000014;
  *(v6 + 40) = 0x8000000100E6F220;
  *(v6 + 48) = a1;
  *(v6 + 56) = v4;
  *(v6 + 64) = 0;
  v7 = a1;

  v8 = v4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05168, v6);

  v7[OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_isUpdatingCookies] = 0;
  return result;
}

uint64_t sub_100D098CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574656C6564;
  }

  else
  {
    v3 = 7628147;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6574656C6564;
  }

  else
  {
    v5 = 7628147;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100D09968()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D099E0()
{
  String.hash(into:)();
}

Swift::Int sub_100D09A44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D09AB8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010F9BD8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100D09B18(uint64_t *a1@<X8>)
{
  v2 = 7628147;
  if (*v1)
  {
    v2 = 0x6574656C6564;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100D09B7C()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_defaultURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t sub_100D09CDC(uint64_t a1)
{
  sub_10000DD18(a1, &v9);
  sub_10010FC20(&unk_1011BE790);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!*(v8 + 16))
  {
    goto LABEL_17;
  }

  sub_100019C10(0x696669746E656469, 0xEA00000000007265);
  if ((v2 & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10000959C(a1);
LABEL_14:

    return 0;
  }

  if (!*(v8 + 16) || (countAndFlagsBits = v9._countAndFlagsBits, sub_100019C10(0x65696B6F6F63, 0xE600000000000000), (v4 & 1) == 0))
  {

LABEL_17:

LABEL_18:
    sub_10000959C(a1);
    return 0;
  }

  type metadata accessor for JSCookie();
  swift_unknownObjectRetain();
  if (!swift_dynamicCastClass())
  {

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  if (!*(v8 + 16) || (sub_100019C10(1701869940, 0xE400000000000000), (v5 & 1) == 0))
  {
    swift_unknownObjectRelease();

    goto LABEL_17;
  }

  swift_unknownObjectRetain();

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10000959C(a1);
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v6 = _findStringSwitchCase(cases:string:)(&off_1010F9BD8, v9);

  sub_10000959C(a1);
  if (v6 < 2)
  {
    return countAndFlagsBits;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t type metadata accessor for JSCookieStorage()
{
  result = qword_1011BEBF8;
  if (!qword_1011BEBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D09FB0()
{
  result = type metadata accessor for URL();
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

void sub_100D0A064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v22 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v3[OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_isUpdatingCookies] & 1) == 0)
  {
    v3[OBJC_IVAR____TtC11MusicJSCore15JSCookieStorage_isUpdatingCookies] = 1;
    sub_100009F78(0, &qword_101182960);
    v21 = v9;
    (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.background(_:), v12);
    v20 = v8;
    v16 = static OS_dispatch_queue.global(qos:)();
    (*(v13 + 8))(v15, v12);
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    aBlock[4] = v23;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = v24;
    v18 = _Block_copy(aBlock);
    v19 = v3;
    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_10002473C();
    sub_10010FC20(&qword_101182970);
    sub_10002489C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v5 + 8))(v7, v4);
    (*(v21 + 8))(v11, v20);
  }
}

unint64_t sub_100D0A410()
{
  result = qword_1011BEC10;
  if (!qword_1011BEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BEC10);
  }

  return result;
}

uint64_t sub_100D0A498(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_100D12504(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t JSIdentifierSet.ContentKind.rawValue.getter(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
      result = 0x7473696C79616C70;
      break;
    case 2:
      result = 1735290739;
      break;
    case 3:
      result = 0x6174536F69646172;
      break;
    case 4:
      result = 0x6569766F6DLL;
      break;
    case 5:
      result = 0x776F68537674;
      break;
    case 6:
      result = 0x6E6F736165537674;
      break;
    case 7:
      result = 0x646F736970457674;
      break;
    case 8:
      result = 0x747369747261;
      break;
    case 9:
      result = 0x726F7461727563;
      break;
    case 10:
      result = 0x72506C6169636F73;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x614C64726F636572;
      break;
    case 14:
      result = 0x4173746964657263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100D0A938(char *a1, char *a2)
{
  v2 = *a2;
  v3 = JSIdentifierSet.ContentKind.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == JSIdentifierSet.ContentKind.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100D0A9C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  JSIdentifierSet.ContentKind.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D0AA24()
{
  JSIdentifierSet.ContentKind.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_100D0AA78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  JSIdentifierSet.ContentKind.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D0AAD8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore15JSIdentifierSetC11ContentKindO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100D0AB08@<X0>(unint64_t *a1@<X8>)
{
  result = JSIdentifierSet.ContentKind.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100D0AB70(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_100D0ABDC(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t JSIdentifierSet.contentKind.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
  swift_beginAccess();
  return *(v0 + v1);
}

Swift::Bool __swiftcall JSIdentifierSet.hasContentIdentifiers(for:)(MusicJSCore::JSIdentifierSet::ContentIdentifierKind a1)
{
  if (a1.rawValue)
  {
    rawValue = a1.rawValue;
    v4 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
    swift_beginAccess();
    if (*(v4 + 8) != 1)
    {
      return 1;
    }

    v5 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID;
    swift_beginAccess();
    if (*(v5 + 8) != 1)
    {
      return 1;
    }

    v6 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID;
    swift_beginAccess();
    if (*(v6 + 8))
    {
      return 1;
    }

    v7 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID;
    swift_beginAccess();
    if (*(v7 + 8))
    {
      return 1;
    }

    if ((rawValue & 2) == 0)
    {
      return 0;
    }
  }

  else if ((a1.rawValue & 2) == 0)
  {
    return 0;
  }

  v8 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID;
  swift_beginAccess();
  if (!*(v8 + 8))
  {
    v9 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_socialProfileID;
    swift_beginAccess();
    return *(v9 + 8) != 0;
  }

  return 1;
}

uint64_t JSIdentifierSet.preferredPersonlizationStyle.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
  swift_beginAccess();
  if (*(v1 + 8) == 1 && (v2 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID, swift_beginAccess(), *(v2 + 8) == 1) && (v3 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID, swift_beginAccess(), !*(v3 + 8)) && (v4 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID, swift_beginAccess(), !*(v4 + 8)))
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

uint64_t JSIdentifierSet.modelObject(with:)(uint64_t a1)
{
  result = JSIdentifierSet.toMPIdentifierSet.getter();
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() sharedServerObjectDatabase];
    v5 = [v4 modelObjectMatchingIdentifierSet:v3 propertySet:a1];

    if (v5)
    {
      v6 = [v5 relativeModelObjectForStoreLibraryPersonalization];
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v5 = v5;
        v7 = [v5 innermostModelObject];
      }

      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t JSIdentifierSet.storeBrowseContentItem(with:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 == 15)
  {
    return sub_100D10E50(a1);
  }

  v5 = JSIdentifierSet.modelObject(with:)(a1);
  if (!v5)
  {
    return sub_100D10E50(a1);
  }

  v6 = v5;
  switch(v4)
  {
    case 1:
      goto LABEL_23;
    case 2:
      goto LABEL_26;
    case 3:
      goto LABEL_14;
    case 4:
      goto LABEL_32;
    case 5:
      goto LABEL_38;
    case 6:
      goto LABEL_29;
    case 7:
      goto LABEL_44;
    case 8:
      goto LABEL_20;
    case 9:
      goto LABEL_41;
    case 10:
      goto LABEL_11;
    case 11:
      goto LABEL_17;
    case 12:
      goto LABEL_35;
    case 13:
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (!v14)
      {
        goto LABEL_47;
      }

      v15 = v14;
      v16 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v15;
      v17 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v18 = swift_allocObject();
      *(v18 + 16) = sub_100D12AD4;
      *(v18 + 24) = v92;
      v98 = sub_1002CF914;
      v99 = v18;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_10006BD7C;
      v97 = &unk_1010FDF30;
      v19 = _Block_copy(&aBlock);

      v12 = [v17 initWithIdentifiers:v16 block:v19];

      _Block_release(v19);

      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if ((v16 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_11:
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (!v20)
      {
        goto LABEL_47;
      }

      v21 = v20;
      v22 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v21;
      v23 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v24 = swift_allocObject();
      *(v24 + 16) = sub_100D12AFC;
      *(v24 + 24) = v92;
      v98 = sub_1002D0E14;
      v99 = v24;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_10006BD7C;
      v97 = &unk_1010FDF80;
      v25 = _Block_copy(&aBlock);

      v12 = [v23 initWithIdentifiers:v22 block:v25];

      _Block_release(v25);

      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if ((v22 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_14:
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (!v26)
      {
        goto LABEL_47;
      }

      v27 = v26;
      v28 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v27;
      v29 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v30 = swift_allocObject();
      *(v30 + 16) = sub_100D12C14;
      *(v30 + 24) = v92;
      v98 = sub_1002D0E14;
      v99 = v30;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_10006BD7C;
      v97 = &unk_1010FE1B0;
      v31 = _Block_copy(&aBlock);

      v12 = [v29 initWithIdentifiers:v28 block:v31];

      _Block_release(v31);

      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if ((v28 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_17:
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (!v32)
      {
        goto LABEL_47;
      }

      v33 = v32;
      v34 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v33;
      v35 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v36 = swift_allocObject();
      *(v36 + 16) = sub_100D134B0;
      *(v36 + 24) = v92;
      v98 = sub_1002D0E14;
      v99 = v36;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_10006BD7C;
      v97 = &unk_1010FE250;
      v37 = _Block_copy(&aBlock);

      v12 = [v35 initWithIdentifiers:v34 block:v37];

      _Block_release(v37);

      LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

      if ((v34 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_20:
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (!v38)
      {
        goto LABEL_47;
      }

      v39 = v38;
      v40 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v39;
      v41 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v42 = swift_allocObject();
      *(v42 + 16) = sub_100D12B4C;
      *(v42 + 24) = v92;
      v98 = sub_1002D0E14;
      v99 = v42;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_10006BD7C;
      v97 = &unk_1010FE020;
      v43 = _Block_copy(&aBlock);

      v12 = [v41 initWithIdentifiers:v40 block:v43];

      _Block_release(v43);

      LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

      if ((v40 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_23:
      objc_opt_self();
      v44 = swift_dynamicCastObjCClass();
      if (!v44)
      {
        goto LABEL_47;
      }

      v45 = v44;
      v46 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v45;
      v47 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v48 = swift_allocObject();
      *(v48 + 16) = sub_100D12C64;
      *(v48 + 24) = v92;
      v98 = sub_1002D0E14;
      v99 = v48;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_10006BD7C;
      v97 = &unk_1010FE2F0;
      v49 = _Block_copy(&aBlock);

      v12 = [v47 initWithIdentifiers:v46 block:v49];

      _Block_release(v49);

      LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

      if ((v46 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_26:
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (!v50)
      {
        goto LABEL_47;
      }

      v51 = v50;
      v52 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v51;
      v53 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v54 = swift_allocObject();
      *(v54 + 16) = sub_100D12C3C;
      *(v54 + 24) = v92;
      v98 = sub_1002D0E14;
      v99 = v54;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_10006BD7C;
      v97 = &unk_1010FE2A0;
      v55 = _Block_copy(&aBlock);

      v12 = [v53 initWithIdentifiers:v52 block:v55];

      _Block_release(v55);

      LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

      if ((v52 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_29:
      objc_opt_self();
      v56 = swift_dynamicCastObjCClass();
      if (!v56)
      {
        goto LABEL_47;
      }

      v57 = v56;
      v58 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v57;
      v59 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v60 = swift_allocObject();
      *(v60 + 16) = sub_100D12B9C;
      *(v60 + 24) = v92;
      v98 = sub_1002D0E14;
      v99 = v60;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_10006BD7C;
      v97 = &unk_1010FE0C0;
      v61 = _Block_copy(&aBlock);

      v12 = [v59 initWithIdentifiers:v58 block:v61];

      _Block_release(v61);

      LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

      if ((v58 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_32:
      objc_opt_self();
      v62 = swift_dynamicCastObjCClass();
      if (!v62)
      {
        goto LABEL_47;
      }

      v63 = v62;
      v64 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v63;
      v65 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v66 = swift_allocObject();
      *(v66 + 16) = sub_100D12BEC;
      *(v66 + 24) = v92;
      v98 = sub_1002D0E14;
      v99 = v66;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_10006BD7C;
      v97 = &unk_1010FE160;
      v67 = _Block_copy(&aBlock);

      v12 = [v65 initWithIdentifiers:v64 block:v67];

      _Block_release(v67);

      LOBYTE(v64) = swift_isEscapingClosureAtFileLocation();

      if ((v64 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_35:
      objc_opt_self();
      v68 = swift_dynamicCastObjCClass();
      if (!v68)
      {
        goto LABEL_47;
      }

      v69 = v68;
      v70 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v69;
      v71 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v72 = swift_allocObject();
      *(v72 + 16) = sub_100D134B0;
      *(v72 + 24) = v92;
      v98 = sub_1002D0E14;
      v99 = v72;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_10006BD7C;
      v97 = &unk_1010FE200;
      v73 = _Block_copy(&aBlock);

      v12 = [v71 initWithIdentifiers:v70 block:v73];

      _Block_release(v73);

      LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

      if ((v70 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_38:
      objc_opt_self();
      v74 = swift_dynamicCastObjCClass();
      if (!v74)
      {
        goto LABEL_47;
      }

      v75 = v74;
      v76 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v75;
      v77 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v78 = swift_allocObject();
      *(v78 + 16) = sub_100D12BC4;
      *(v78 + 24) = v92;
      v98 = sub_1002D0E14;
      v99 = v78;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_10006BD7C;
      v97 = &unk_1010FE110;
      v79 = _Block_copy(&aBlock);

      v12 = [v77 initWithIdentifiers:v76 block:v79];

      _Block_release(v79);

      LOBYTE(v76) = swift_isEscapingClosureAtFileLocation();

      if ((v76 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_41:
      objc_opt_self();
      v80 = swift_dynamicCastObjCClass();
      if (!v80)
      {
        goto LABEL_47;
      }

      v81 = v80;
      v82 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v81;
      v83 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v84 = swift_allocObject();
      *(v84 + 16) = sub_100D12B24;
      *(v84 + 24) = v92;
      v98 = sub_1002D0E14;
      v99 = v84;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_10006BD7C;
      v97 = &unk_1010FDFD0;
      v85 = _Block_copy(&aBlock);

      v12 = [v83 initWithIdentifiers:v82 block:v85];

      _Block_release(v85);

      LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

      if ((v82 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
LABEL_44:
      objc_opt_self();
      v86 = swift_dynamicCastObjCClass();
      if (v86)
      {
        v87 = v86;
        v88 = [objc_opt_self() emptyIdentifierSet];
        __chkstk_darwin();
        v93 = v87;
        v89 = objc_allocWithZone(MPModelStoreBrowseContentItem);
        v90 = swift_allocObject();
        *(v90 + 16) = sub_100D12B74;
        *(v90 + 24) = v92;
        v98 = sub_1002D0E14;
        v99 = v90;
        aBlock = _NSConcreteStackBlock;
        v95 = 1107296256;
        v96 = sub_10006BD7C;
        v97 = &unk_1010FE070;
        v91 = _Block_copy(&aBlock);

        v12 = [v89 initWithIdentifiers:v88 block:v91];

        _Block_release(v91);

        LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

        if (v88)
        {
          __break(1u);
        }

        else
        {
LABEL_46:
          result = v12;
        }
      }

      else
      {
LABEL_47:

        result = 0;
      }

      break;
    case 14:
      goto LABEL_47;
    default:
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (!v7)
      {
        goto LABEL_47;
      }

      v8 = v7;
      v9 = [objc_opt_self() emptyIdentifierSet];
      __chkstk_darwin();
      v93 = v8;
      v10 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      a1 = swift_allocObject();
      *(a1 + 16) = sub_100D12C8C;
      *(a1 + 24) = v92;
      v98 = sub_1002D0E14;
      v99 = a1;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_10006BD7C;
      v97 = &unk_1010FE340;
      v11 = _Block_copy(&aBlock);

      v12 = [v10 initWithIdentifiers:v9 block:v11];

      _Block_release(v11);

      LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

      if ((v9 & 1) == 0)
      {
        goto LABEL_46;
      }

      __break(1u);
      return sub_100D10E50(a1);
  }

  return result;
}

uint64_t JSIdentifierSet.toMPIdentifierSet.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 == 15)
  {
    return 0;
  }

  v4 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
  swift_beginAccess();
  if (*(v4 + 8) == 1)
  {
    v5 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID;
    swift_beginAccess();
    if (*(v5 + 8) == 1)
    {
      v6 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID;
      swift_beginAccess();
      if (!*(v6 + 8))
      {
        v7 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID;
        swift_beginAccess();
        if (!*(v7 + 8))
        {
          v8 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID;
          swift_beginAccess();
          if (!*(v8 + 8))
          {
            v9 = v0 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_socialProfileID;
            swift_beginAccess();
            if (!*(v9 + 8))
            {
              return 0;
            }
          }
        }
      }
    }
  }

  switch(v2)
  {
    case 1:
      goto LABEL_28;
    case 2:
      goto LABEL_22;
    case 3:
      goto LABEL_24;
    case 4:
      goto LABEL_16;
    case 5:
      goto LABEL_30;
    case 6:
      goto LABEL_34;
    case 7:
      goto LABEL_26;
    case 8:
      goto LABEL_38;
    case 9:
      goto LABEL_20;
    case 10:
      goto LABEL_36;
    case 11:
      goto LABEL_14;
    case 12:
      goto LABEL_18;
    case 13:
      goto LABEL_32;
    case 14:
      goto LABEL_12;
    default:
      v10 = objc_opt_self();
      v11 = [objc_opt_self() kindWithVariants:7];
      v12 = [v10 kindWithSongKind:v11];

      __chkstk_darwin();
      v63 = v0;
      v13 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12D24;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE7F0;
      v14 = _Block_copy(&aBlock);

      v15 = [v13 initWithModelKind:v12 block:v14];

      _Block_release(v14);

      LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

      if ((v12 & 1) == 0)
      {
        goto LABEL_39;
      }

      __break(1u);
LABEL_12:
      sub_100009F78(0, &qword_1011BEC58);
      v16 = [swift_getObjCClassFromMetadata() identityKind];
      __chkstk_darwin();
      v63 = v0;
      v17 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12CB4;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE390;
      v18 = _Block_copy(&aBlock);

      v15 = [v17 initWithModelKind:v16 block:v18];

      _Block_release(v18);

      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if ((v16 & 1) == 0)
      {
        goto LABEL_39;
      }

      __break(1u);
      v19 = [objc_opt_self() kindWithVariants:7];
      __chkstk_darwin();
      v63 = v0;
      v20 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12D0C;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE700;
      v21 = _Block_copy(&aBlock);

      v15 = [v20 initWithModelKind:v19 block:v21];

      _Block_release(v21);

      LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

      if ((v19 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_14:
      __break(1u);
      sub_100009F78(0, &qword_10118A288);
      v22 = static MPModelMovie.defaultMusicKind.getter();
      __chkstk_darwin();
      v63 = v0;
      v23 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12CF4;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE610;
      v24 = _Block_copy(&aBlock);

      v15 = [v23 initWithModelKind:v22 block:v24];

      _Block_release(v24);

      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if ((v22 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_16:
      __break(1u);
      v25 = [objc_opt_self() kindWithVariants:7];
      __chkstk_darwin();
      v63 = v0;
      v26 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12D04;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE6B0;
      v27 = _Block_copy(&aBlock);

      v15 = [v26 initWithModelKind:v25 block:v27];

      _Block_release(v27);

      LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

      if ((v25 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_18:
      __break(1u);
      sub_100009F78(0, &qword_1011BEC70);
      v28 = [swift_getObjCClassFromMetadata() identityKind];
      __chkstk_darwin();
      v63 = v0;
      v29 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12CCC;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE480;
      v30 = _Block_copy(&aBlock);

      v15 = [v29 initWithModelKind:v28 block:v30];

      _Block_release(v30);

      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if ((v28 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_20:
      __break(1u);
      v31 = [objc_opt_self() kindWithVariants:7];
      __chkstk_darwin();
      v63 = v0;
      v32 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12D14;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE750;
      v33 = _Block_copy(&aBlock);

      v15 = [v32 initWithModelKind:v31 block:v33];

      _Block_release(v33);

      LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

      if ((v31 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_22:
      __break(1u);
      sub_100009F78(0, &unk_1011BEC90);
      v34 = [swift_getObjCClassFromMetadata() identityKind];
      __chkstk_darwin();
      v63 = v0;
      v35 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12CFC;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE660;
      v36 = _Block_copy(&aBlock);

      v15 = [v35 initWithModelKind:v34 block:v36];

      _Block_release(v36);

      LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

      if ((v34 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_24:
      __break(1u);
      sub_100009F78(0, &qword_10118A280);
      v37 = static MPModelTVEpisode.defaultMusicKind.getter();
      __chkstk_darwin();
      v63 = v0;
      v38 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12CDC;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE520;
      v39 = _Block_copy(&aBlock);

      v15 = [v38 initWithModelKind:v37 block:v39];

      _Block_release(v39);

      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if ((v37 & 1) == 0)
      {
        goto LABEL_39;
      }

      __break(1u);
LABEL_28:
      v40 = objc_opt_self();
      sub_100009F78(0, qword_101186D10);
      v41 = v0;
      v42 = static MPModelPlaylistEntry.defaultMusicKind.getter();
      v43 = [v40 kindWithPlaylistEntryKind:v42 options:0];

      __chkstk_darwin();
      v63 = v41;
      v44 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12D1C;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE7A0;
      v45 = _Block_copy(&aBlock);

      v15 = [v44 initWithModelKind:v43 block:v45];

      _Block_release(v45);

      LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

      if ((v43 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_26:
      __break(1u);
      sub_100009F78(0, &unk_1011BEC80);
      v46 = static MPModelTVShow.defaultMusicKind.getter();
      __chkstk_darwin();
      v63 = v0;
      v47 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12CEC;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE5C0;
      v48 = _Block_copy(&aBlock);

      v15 = [v47 initWithModelKind:v46 block:v48];

      _Block_release(v48);

      LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

      if ((v46 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_30:
      __break(1u);
      sub_100009F78(0, &qword_1011BEC60);
      v49 = [swift_getObjCClassFromMetadata() identityKind];
      __chkstk_darwin();
      v63 = v0;
      v50 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12CBC;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE3E0;
      v51 = _Block_copy(&aBlock);

      v15 = [v50 initWithModelKind:v49 block:v51];

      _Block_release(v51);

      LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

      if ((v49 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_32:
      __break(1u);
      sub_100009F78(0, &qword_1011BEC78);
      v52 = static MPModelTVSeason.defaultMusicKind.getter();
      __chkstk_darwin();
      v63 = v0;
      v53 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12CE4;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE570;
      v54 = _Block_copy(&aBlock);

      v15 = [v53 initWithModelKind:v52 block:v54];

      _Block_release(v54);

      LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

      if ((v52 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_34:
      __break(1u);
      sub_100009F78(0, &qword_1011BEC68);
      v55 = [swift_getObjCClassFromMetadata() identityKind];
      __chkstk_darwin();
      v63 = v0;
      v56 = objc_allocWithZone(MPIdentifierSet);
      v0 = swift_allocObject();
      *(v0 + 16) = sub_100D12CC4;
      *(v0 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v0;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE430;
      v57 = _Block_copy(&aBlock);

      v15 = [v56 initWithModelKind:v55 block:v57];

      _Block_release(v57);

      LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

      if ((v55 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_36:
      __break(1u);
LABEL_38:
      sub_100009F78(0, &qword_10118A268);
      v58 = static MPModelArtist.defaultMusicKind.getter();
      __chkstk_darwin();
      v63 = v0;
      v59 = objc_allocWithZone(MPIdentifierSet);
      v60 = swift_allocObject();
      *(v60 + 16) = sub_100D12CD4;
      *(v60 + 24) = v62;
      v68 = sub_1002D0E14;
      v69 = v60;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10006BD7C;
      v67 = &unk_1010FE4D0;
      v61 = _Block_copy(&aBlock);

      v15 = [v59 initWithModelKind:v58 block:v61];

      _Block_release(v61);

      LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

      if (v58)
      {
        __break(1u);
      }

      else
      {
LABEL_39:
        result = v15;
      }

      break;
  }

  return result;
}

uint64_t sub_100D0DBE0(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100D13170;
  *(v5 + 24) = v4;
  v22 = sub_1001EBE40;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1002B8A68;
  v21 = &unk_1010FE9A8;
  v6 = _Block_copy(&v18);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_100009F78(0, &qword_10118A3B8);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100D134C0;
    *(v14 + 24) = v13;
    v22 = sub_1002D0E14;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100D134A8;
    v21 = &unk_1010FEA20;
    v15 = _Block_copy(&v18);
    v16 = v7;

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v15];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

id sub_100D0DEE0(void *a1, uint64_t a2)
{
  v4 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      v8 = String._bridgeToObjectiveC()();

      v9 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      [a1 setAdamID:v9];
    }
  }

  v10 = a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
  result = swift_beginAccess();
  if ((*(v10 + 8) & 1) == 0)
  {
    if (*v10)
    {
      return [a1 setPurchasedAdamID:?];
    }
  }

  return result;
}

uint64_t sub_100D0DFD8(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100D13178;
  *(v5 + 24) = v4;
  v22 = sub_1001EC788;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1002B8A68;
  v21 = &unk_1010FEA98;
  v6 = _Block_copy(&v18);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_100009F78(0, &qword_10118A3B8);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100D13180;
    *(v14 + 24) = v13;
    v22 = sub_1002D0E14;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100D134A8;
    v21 = &unk_1010FEB10;
    v15 = _Block_copy(&v18);
    v16 = v7;

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v15];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

void sub_100D0E2D8(void *a1, uint64_t a2)
{
  v4 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      v8 = String._bridgeToObjectiveC()();
      v9 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      [a1 setAdamID:v9];
      v10 = String._bridgeToObjectiveC()();

      [a1 setGlobalPlaylistID:v10];
    }
  }

  v11 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID);
  swift_beginAccess();
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {

      v15 = String._bridgeToObjectiveC()();

      [a1 setUniversalCloudLibraryID:v15];
    }
  }
}

uint64_t sub_100D0E434(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100D1319C;
  *(v5 + 24) = v4;
  v22 = sub_1001EC788;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1002B8A68;
  v21 = &unk_1010FEB88;
  v6 = _Block_copy(&v18);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_100009F78(0, &qword_10118A3B8);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100D134B4;
    *(v14 + 24) = v13;
    v22 = sub_1002D0E14;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100D134A8;
    v21 = &unk_1010FEC00;
    v15 = _Block_copy(&v18);
    v16 = v7;

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v15];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

id sub_100D0E734(void *a1, uint64_t a2)
{
  v3 = a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID;
  result = swift_beginAccess();
  if ((*(v3 + 8) & 1) == 0)
  {
    if (*v3)
    {
      return [a1 setCloudID:?];
    }
  }

  return result;
}

uint64_t sub_100D0E79C(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100D131B8;
  *(v5 + 24) = v4;
  v18 = sub_1001EC788;
  v19 = v5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1002B8A68;
  v17 = &unk_1010FEC78;
  v6 = _Block_copy(&v14);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
    return result;
  }

  sub_100009F78(0, &qword_10118A3B8);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    v18 = UIScreen.Dimensions.size.getter;
    v19 = 0;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100D134A8;
    v17 = &unk_1010FECA0;
    v13 = _Block_copy(&v14);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];

    _Block_release(v13);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_100D0EA28(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100D134B8;
  *(v5 + 24) = v4;
  v18 = sub_1001EC788;
  v19 = v5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1002B8A68;
  v17 = &unk_1010FED18;
  v6 = _Block_copy(&v14);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
    return result;
  }

  sub_100009F78(0, &qword_10118A3B8);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    v18 = UIScreen.Dimensions.size.getter;
    v19 = 0;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100D134A8;
    v17 = &unk_1010FED40;
    v13 = _Block_copy(&v14);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];

    _Block_release(v13);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

id sub_100D0ECB4(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  result = swift_beginAccess();
  v5 = v3[1];
  if (v5)
  {
    v6 = *v3;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      v8 = String._bridgeToObjectiveC()();

      v9 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      return [a1 setAdamID:v9];
    }
  }

  return result;
}

uint64_t sub_100D0ED68(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      v8 = swift_allocObject();
      v9 = sub_100D131D4;
      *(v8 + 16) = sub_100D131D4;
      *(v8 + 24) = v7;
      v22 = sub_1002D0E14;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_100D134A8;
      v21 = &unk_1010FEDE0;
      v10 = _Block_copy(&aBlock);

      [a1 setRadioIdentifiersWithBlock:v10];
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v9 = 0;
LABEL_8:
  sub_100009F78(0, &qword_10118A3B8);
  v12 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (!v12)
  {
    return sub_100020438(v9);
  }

  v13 = v12;
  v14 = [v12 stringValue];

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  v22 = UIScreen.Dimensions.size.getter;
  v23 = 0;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100D134A8;
  v21 = &unk_1010FED68;
  v15 = _Block_copy(&aBlock);

  [a1 setPersonalStoreIdentifiersWithPersonID:v14 block:v15];

  _Block_release(v15);
  v16 = swift_isEscapingClosureAtFileLocation();
  result = sub_100020438(v9);
  if (v16)
  {
    __break(1u);
    return sub_100020438(v9);
  }

  return result;
}

uint64_t sub_100D0F040(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100D134BC;
  *(v5 + 24) = v4;
  v22 = sub_1001EC788;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1002B8A68;
  v21 = &unk_1010FEE58;
  v6 = _Block_copy(&v18);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_100009F78(0, &qword_10118A3B8);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100D131E0;
    *(v14 + 24) = v13;
    v22 = sub_1002D0E14;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100D134A8;
    v21 = &unk_1010FEED0;
    v15 = _Block_copy(&v18);
    v16 = v7;

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v15];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_100D0F340(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100D131FC;
  *(v5 + 24) = v4;
  v18 = sub_1001EC788;
  v19 = v5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1002B8A68;
  v17 = &unk_1010FEF48;
  v6 = _Block_copy(&v14);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
    return result;
  }

  sub_100009F78(0, &qword_10118A3B8);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    v18 = UIScreen.Dimensions.size.getter;
    v19 = 0;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100D134A8;
    v17 = &unk_1010FEF70;
    v13 = _Block_copy(&v14);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];

    _Block_release(v13);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

uint64_t sub_100D0F5CC(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100D134C4;
  *(v5 + 24) = v4;
  v18 = sub_1001EC788;
  v19 = v5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1002B8A68;
  v17 = &unk_1010FEFE8;
  v6 = _Block_copy(&v14);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
    return result;
  }

  sub_100009F78(0, &qword_10118A3B8);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    v18 = UIScreen.Dimensions.size.getter;
    v19 = 0;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100D134A8;
    v17 = &unk_1010FF010;
    v13 = _Block_copy(&v14);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];

    _Block_release(v13);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

void sub_100D0F858(void *a1, uint64_t a2)
{
  v4 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      v8 = String._bridgeToObjectiveC()();

      v9 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      [a1 setAdamID:v9];
    }
  }

  v10 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID);
  swift_beginAccess();
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      v14 = String._bridgeToObjectiveC()();

      [a1 setUniversalCloudLibraryID:v14];
    }
  }
}

uint64_t sub_100D0F988(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100D134BC;
  *(v5 + 24) = v4;
  v22 = sub_1001EC788;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1002B8A68;
  v21 = &unk_1010FF088;
  v6 = _Block_copy(&v18);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
    return result;
  }

  sub_100009F78(0, &qword_10118A3B8);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100D134C0;
    *(v14 + 24) = v13;
    v22 = sub_1002D0E14;
    v23 = v14;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100D134A8;
    v21 = &unk_1010FF100;
    v15 = _Block_copy(&v18);
    v16 = v7;

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v15];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

void sub_100D0FC88(void *a1, uint64_t a2)
{
  v4 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {

      v8 = String._bridgeToObjectiveC()();

      v9 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

      [a1 setAdamID:v9];
    }
  }

  v10 = a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
  swift_beginAccess();
  if ((*(v10 + 8) & 1) == 0 && *v10)
  {
    [a1 setPurchasedAdamID:?];
  }

  v11 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID);
  swift_beginAccess();
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {

      v15 = String._bridgeToObjectiveC()();

      [a1 setUniversalCloudLibraryID:v15];
    }
  }
}

void sub_100D0FDF8(void *a1, uint64_t a2)
{
  v4 = a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID;
  swift_beginAccess();
  if ((*(v4 + 8) & 1) == 0 && *v4)
  {
    [a1 setCloudID:?];
  }

  v5 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {

      v9 = String._bridgeToObjectiveC()();

      [a1 setCloudAlbumID:v9];
    }
  }
}

uint64_t sub_100D0FEE4(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      v8 = swift_allocObject();
      v9 = sub_100D134AC;
      *(v8 + 16) = sub_100D134AC;
      *(v8 + 24) = v7;
      v22 = sub_1001EC788;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_1002B8A68;
      v21 = &unk_1010FF1A0;
      v10 = _Block_copy(&aBlock);

      [a1 setUniversalStoreIdentifiersWithBlock:v10];
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v9 = 0;
LABEL_8:
  sub_100009F78(0, &qword_10118A3B8);
  v12 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (!v12)
  {
    return sub_100020438(v9);
  }

  v13 = v12;
  v14 = [v12 stringValue];

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  v22 = UIScreen.Dimensions.size.getter;
  v23 = 0;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100D134A8;
  v21 = &unk_1010FF128;
  v15 = _Block_copy(&aBlock);

  [a1 setPersonalStoreIdentifiersWithPersonID:v14 block:v15];

  _Block_release(v15);
  v16 = swift_isEscapingClosureAtFileLocation();
  result = sub_100020438(v9);
  if (v16)
  {
    __break(1u);
    return sub_100020438(v9);
  }

  return result;
}

uint64_t sub_100D101BC(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      v8 = swift_allocObject();
      v9 = sub_100D13218;
      *(v8 + 16) = sub_100D13218;
      *(v8 + 24) = v7;
      v22 = sub_1001EC788;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_1002B8A68;
      v21 = &unk_1010FF240;
      v10 = _Block_copy(&aBlock);

      [a1 setUniversalStoreIdentifiersWithBlock:v10];
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v9 = 0;
LABEL_8:
  sub_100009F78(0, &qword_10118A3B8);
  v12 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (!v12)
  {
    return sub_100020438(v9);
  }

  v13 = v12;
  v14 = [v12 stringValue];

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  v22 = UIScreen.Dimensions.size.getter;
  v23 = 0;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100D134A8;
  v21 = &unk_1010FF1C8;
  v15 = _Block_copy(&aBlock);

  [a1 setPersonalStoreIdentifiersWithPersonID:v14 block:v15];

  _Block_release(v15);
  v16 = swift_isEscapingClosureAtFileLocation();
  result = sub_100020438(v9);
  if (v16)
  {
    __break(1u);
    return sub_100020438(v9);
  }

  return result;
}

uint64_t sub_100D10494(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100D13234;
  *(v5 + 24) = v4;
  v18 = sub_1001EC788;
  v19 = v5;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1002B8A68;
  v17 = &unk_1010FF2B8;
  v6 = _Block_copy(&v14);
  v7 = a2;

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
    return result;
  }

  sub_100009F78(0, &qword_10118A3B8);
  v9 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 stringValue];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();

    v18 = UIScreen.Dimensions.size.getter;
    v19 = 0;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100D134A8;
    v17 = &unk_1010FF2E0;
    v13 = _Block_copy(&v14);

    [a1 setPersonalStoreIdentifiersWithPersonID:v12 block:v13];

    _Block_release(v13);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }
}

void sub_100D10720(void *a1, uint64_t a2)
{
  v4 = a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID;
  swift_beginAccess();
  if (*(v4 + 8))
  {

    v5 = String._bridgeToObjectiveC()();

    v6 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

    [a1 setAdamID:v6];
  }

  if (![a1 adamID])
  {
    v7 = a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_socialProfileID;
    swift_beginAccess();
    if (*(v7 + 8))
    {

      v8 = String._bridgeToObjectiveC()();

      [a1 setSocialProfileID:v8];
    }
  }
}

uint64_t sub_100D1083C(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      v8 = swift_allocObject();
      v9 = sub_100D134AC;
      *(v8 + 16) = sub_100D134AC;
      *(v8 + 24) = v7;
      v22 = sub_1001EC788;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_1002B8A68;
      v21 = &unk_1010FF380;
      v10 = _Block_copy(&aBlock);

      [a1 setUniversalStoreIdentifiersWithBlock:v10];
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v9 = 0;
LABEL_8:
  sub_100009F78(0, &qword_10118A3B8);
  v12 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (!v12)
  {
    return sub_100020438(v9);
  }

  v13 = v12;
  v14 = [v12 stringValue];

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  v22 = UIScreen.Dimensions.size.getter;
  v23 = 0;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100D134A8;
  v21 = &unk_1010FF308;
  v15 = _Block_copy(&aBlock);

  [a1 setPersonalStoreIdentifiersWithPersonID:v14 block:v15];

  _Block_release(v15);
  v16 = swift_isEscapingClosureAtFileLocation();
  result = sub_100020438(v9);
  if (v16)
  {
    __break(1u);
    return sub_100020438(v9);
  }

  return result;
}

id sub_100D10B14(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = MPStoreItemMetadataInt64NormalizeStoreIDValue();

  return [a1 setAdamID:v3];
}

uint64_t sub_100D10B78(void *a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v6 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      v8 = swift_allocObject();
      v9 = sub_100D1323C;
      *(v8 + 16) = sub_100D1323C;
      *(v8 + 24) = v7;
      v22 = sub_1001EC788;
      v23 = v8;
      aBlock = _NSConcreteStackBlock;
      v19 = 1107296256;
      v20 = sub_1002B8A68;
      v21 = &unk_1010FF420;
      v10 = _Block_copy(&aBlock);

      [a1 setUniversalStoreIdentifiersWithBlock:v10];
      _Block_release(v10);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        goto LABEL_8;
      }

      __break(1u);
    }
  }

  v9 = 0;
LABEL_8:
  sub_100009F78(0, &qword_10118A3B8);
  v12 = static ICUserIdentityStore.activeAccountDSID.getter();
  if (!v12)
  {
    return sub_100020438(v9);
  }

  v13 = v12;
  v14 = [v12 stringValue];

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  v22 = UIScreen.Dimensions.size.getter;
  v23 = 0;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100D134A8;
  v21 = &unk_1010FF3A8;
  v15 = _Block_copy(&aBlock);

  [a1 setPersonalStoreIdentifiersWithPersonID:v14 block:v15];

  _Block_release(v15);
  v16 = swift_isEscapingClosureAtFileLocation();
  result = sub_100020438(v9);
  if (v16)
  {
    __break(1u);
    return sub_100020438(v9);
  }

  return result;
}

uint64_t sub_100D10E50(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 == 15)
  {
    return 0;
  }

  result = JSIdentifierSet.toMPIdentifierSet.getter();
  if (result)
  {
    v7 = result;
    if (v5 != 2)
    {
      if (v5 != 1)
      {
        if (v5)
        {
          goto LABEL_24;
        }

        v63 = a1;
        v8 = objc_allocWithZone(MPModelAlbum);
        v77 = UIScreen.Dimensions.size.getter;
        v78 = 0;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_10006BD7C;
        v76 = &unk_1010FF538;
        v9 = _Block_copy(&aBlock);
        v10 = [v8 initWithIdentifiers:v7 block:v9];
        _Block_release(v9);

        result = swift_isEscapingClosureAtFileLocation();
        if (result)
        {
          goto LABEL_38;
        }

        __chkstk_darwin();
        v62 = v10;
        v11 = objc_allocWithZone(MPModelStoreBrowseContentItem);
        a1 = swift_allocObject();
        *(a1 + 16) = sub_100D134CC;
        *(a1 + 24) = v61;
        v77 = sub_1002D0E14;
        v78 = a1;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_10006BD7C;
        v76 = &unk_1010FF588;
        v12 = _Block_copy(&aBlock);

        v13 = [v11 initWithIdentifiers:v7 block:v12];
        _Block_release(v12);

        LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

        if ((v12 & 1) == 0)
        {
          goto LABEL_15;
        }

        __break(1u);
      }

      v63 = a1;
      v14 = objc_allocWithZone(MPModelPlaylist);
      v77 = UIScreen.Dimensions.size.getter;
      v78 = 0;
      aBlock = _NSConcreteStackBlock;
      v74 = 1107296256;
      v75 = sub_10006BD7C;
      v76 = &unk_1010FF4C0;
      v15 = _Block_copy(&aBlock);
      v16 = [v14 initWithIdentifiers:v7 block:v15];
      _Block_release(v15);

      result = swift_isEscapingClosureAtFileLocation();
      if (result)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      __chkstk_darwin();
      v62 = v16;
      v17 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      a1 = swift_allocObject();
      *(a1 + 16) = sub_100D134C8;
      *(a1 + 24) = v61;
      v77 = sub_1002D0E14;
      v78 = a1;
      aBlock = _NSConcreteStackBlock;
      v74 = 1107296256;
      v75 = sub_10006BD7C;
      v76 = &unk_1010FF510;
      v18 = _Block_copy(&aBlock);

      v13 = [v17 initWithIdentifiers:v7 block:v18];
      _Block_release(v18);

      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    v63 = a1;
    v19 = objc_allocWithZone(MPModelSong);
    v77 = UIScreen.Dimensions.size.getter;
    v78 = 0;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_10006BD7C;
    v76 = &unk_1010FF448;
    v20 = _Block_copy(&aBlock);
    v21 = [v19 initWithIdentifiers:v7 block:v20];
    _Block_release(v20);

    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      __chkstk_darwin();
      v62 = v21;
      v22 = objc_allocWithZone(MPModelStoreBrowseContentItem);
      v23 = swift_allocObject();
      *(v23 + 16) = sub_100D134B0;
      *(v23 + 24) = v61;
      v77 = sub_1002D0E14;
      v78 = v23;
      aBlock = _NSConcreteStackBlock;
      v74 = 1107296256;
      v75 = sub_10006BD7C;
      v76 = &unk_1010FF498;
      v24 = _Block_copy(&aBlock);

      v13 = [v22 initWithIdentifiers:v7 block:v24];
      _Block_release(v24);

      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

      if ((v24 & 1) == 0)
      {
LABEL_15:
        if (v13)
        {
          v25 = sub_100060CB0(_swiftEmptyArrayStorage);
          v26 = *(v2 + v4);
          if (v26 != 15)
          {
            *&v66 = 1684957547;
            *(&v66 + 1) = 0xE400000000000000;
            AnyHashable.init<A>(_:)();
            v27 = JSIdentifierSet.ContentKind.rawValue.getter(v26);
            v67 = &type metadata for String;
            *&v66 = v27;
            *(&v66 + 1) = v28;
            sub_100016270(&v66, v65);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v72 = v25;
            sub_10006800C(v65, &aBlock, isUniquelyReferenced_nonNull_native);
            sub_10001621C(&aBlock);
            v25 = v72;
          }

          v30 = (v2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID);
          swift_beginAccess();
          if ((v30[1] & 1) == 0)
          {
            v31 = *v30;
            *&v66 = 0x644961676173;
            *(&v66 + 1) = 0xE600000000000000;
            AnyHashable.init<A>(_:)();
            v32 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v31];
            v67 = sub_100009F78(0, &qword_101189A20);
            *&v66 = v32;
            sub_100016270(&v66, v65);
            v33 = swift_isUniquelyReferenced_nonNull_native();
            v71 = v25;
            sub_10006800C(v65, &aBlock, v33);
            sub_10001621C(&aBlock);
            v25 = v71;
          }

          v34 = (v2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID);
          swift_beginAccess();
          v35 = v34[1];
          if (v35)
          {
            v36 = *v34;
            strcpy(&v66, "libraryAlbumId");
            HIBYTE(v66) = -18;

            AnyHashable.init<A>(_:)();
            v67 = &type metadata for String;
            *&v66 = v36;
            *(&v66 + 1) = v35;
            sub_100016270(&v66, v65);
            v37 = swift_isUniquelyReferenced_nonNull_native();
            v70 = v25;
            sub_10006800C(v65, &aBlock, v37);
            sub_10001621C(&aBlock);
            v25 = v70;
          }

          v38 = (v2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
          swift_beginAccess();
          v39 = v38[1];
          if (v39)
          {
            v40 = *v38;
            *&v66 = 0xD000000000000010;
            *(&v66 + 1) = 0x8000000100E6F370;
            swift_bridgeObjectRetain_n();
            AnyHashable.init<A>(_:)();
            v67 = &type metadata for String;
            *&v66 = v40;
            *(&v66 + 1) = v39;
            sub_100016270(&v66, v65);
            v41 = swift_isUniquelyReferenced_nonNull_native();
            v69 = v25;
            sub_10006800C(v65, &aBlock, v41);
            sub_10001621C(&aBlock);
            v25 = v69;
          }

          else
          {
            v40 = 0;
          }

          v42 = v2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
          swift_beginAccess();
          if ((*(v42 + 8) & 1) == 0)
          {
            v43 = *v42;

            *&v66 = 0x6573616863727570;
            *(&v66 + 1) = 0xEF64496D61644164;
            AnyHashable.init<A>(_:)();
            v44 = [objc_allocWithZone(NSNumber) initWithLongLong:v43];
            v67 = sub_100009F78(0, &qword_101189A20);
            *&v66 = v44;
            sub_100016270(&v66, v65);
            v45 = swift_isUniquelyReferenced_nonNull_native();
            v68 = v25;
            sub_10006800C(v65, &aBlock, v45);
            sub_10001621C(&aBlock);
            v25 = v68;
            aBlock = v43;
            v40 = dispatch thunk of CustomStringConvertible.description.getter();
            v39 = v46;
          }

          v47 = (v2 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID);
          swift_beginAccess();
          v48 = v47[1];
          if (v48)
          {
            v49 = *v47;
            if (*(v2 + v4) == 1)
            {
              *&v66 = 0xD000000000000011;
              *(&v66 + 1) = 0x8000000100E6F350;
            }

            else
            {
              strcpy(&v66, "libraryTrackId");
              HIBYTE(v66) = -18;
            }

            AnyHashable.init<A>(_:)();
            v67 = &type metadata for String;
            *&v66 = v49;
            *(&v66 + 1) = v48;
            sub_100016270(&v66, v65);
            v50 = swift_isUniquelyReferenced_nonNull_native();
            v64 = v25;
            sub_10006800C(v65, &aBlock, v50);
            sub_10001621C(&aBlock);
          }

          v51 = objc_allocWithZone(type metadata accessor for ModelObjectBackedStoreItemMetadata());
          isa = Dictionary._bridgeToObjectiveC()().super.isa;
          v53 = [v51 initWithStorePlatformDictionary:isa];

          v54 = [v13 innermostModelObject];
          (*((swift_isaMask & *v53) + 0x70))(v54);
          (*((swift_isaMask & *v53) + 0x88))(v40, v39);
          v55 = objc_allocWithZone(MPModelStoreBrowseContentItemBuilder);
          result = [v55 initWithRequestedPropertySet:v63];
          if (result)
          {
            v56 = result;

            sub_100009F78(0, &qword_1011BE880);
            v57 = v53;
            v58 = v13;
            v59 = static ICUserIdentity.active.getter();
            v60 = [v56 modelObjectWithStoreItemMetadata:v57 sourceModelObject:v58 userIdentity:v59];

            return v60;
          }

LABEL_40:
          __break(1u);
          return result;
        }

LABEL_24:

        return 0;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  return result;
}

id sub_100D11B44(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();
  [v7 *a3];

  return [v7 setItemType:a4];
}

uint64_t JSIdentifierSet.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49[0] = a1;
  v49[1] = a2;
  sub_1000189C0(a3, v50);
  if (v50[3])
  {
    sub_1000189C0(v50, v48);

    if (!swift_dynamicCast())
    {
LABEL_122:
      sub_10000959C(v48);
      return sub_1000095E8(v49, &unk_1011C0D90);
    }

    object = v47._object;
    if (a1 == 0xD000000000000014 && 0x8000000100E6F260 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v7 = (v47._object >> 56) & 0xF;
      v8 = v47._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      if ((v47._object & 0x2000000000000000) != 0)
      {
        v9 = (v47._object >> 56) & 0xF;
      }

      else
      {
        v9 = v47._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        if ((v47._object & 0x1000000000000000) != 0)
        {
          v12 = sub_1002CE7C4(v47._countAndFlagsBits, v47._object, 10);
          v34 = v42;
LABEL_75:

          if ((v34 & 1) != 0 || !v12)
          {
            goto LABEL_79;
          }

          v22 = v3 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
          swift_beginAccess();
          *v22 = v12;
          goto LABEL_78;
        }

        if ((v47._object & 0x2000000000000000) != 0)
        {
          v46[0] = v47._countAndFlagsBits;
          v46[1] = v47._object & 0xFFFFFFFFFFFFFFLL;
          if (LOBYTE(v47._countAndFlagsBits) == 43)
          {
            if (v7)
            {
              if (--v7)
              {
                v12 = 0;
                v26 = v46 + 1;
                while (1)
                {
                  v27 = *v26 - 48;
                  if (v27 > 9)
                  {
                    break;
                  }

                  v28 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    break;
                  }

                  v12 = v28 + v27;
                  if (__OFADD__(v28, v27))
                  {
                    break;
                  }

                  ++v26;
                  if (!--v7)
                  {
                    goto LABEL_74;
                  }
                }
              }

              goto LABEL_73;
            }

            goto LABEL_120;
          }

          if (LOBYTE(v47._countAndFlagsBits) != 45)
          {
            if (v7)
            {
              v12 = 0;
              v31 = v46;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  break;
                }

                v33 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  break;
                }

                v12 = v33 + v32;
                if (__OFADD__(v33, v32))
                {
                  break;
                }

                ++v31;
                if (!--v7)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_73;
          }

          if (v7)
          {
            if (--v7)
            {
              v12 = 0;
              v16 = v46 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                v18 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  break;
                }

                v12 = v18 - v17;
                if (__OFSUB__(v18, v17))
                {
                  break;
                }

                ++v16;
                if (!--v7)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_73;
          }
        }

        else
        {
          if ((v47._countAndFlagsBits & 0x1000000000000000) != 0)
          {
            v10 = ((v47._object & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v10 = _StringObject.sharedUTF8.getter();
          }

          v11 = *v10;
          if (v11 == 43)
          {
            if (v8 >= 1)
            {
              v7 = v8 - 1;
              if (v8 != 1)
              {
                v12 = 0;
                if (v10)
                {
                  v23 = v10 + 1;
                  while (1)
                  {
                    v24 = *v23 - 48;
                    if (v24 > 9)
                    {
                      goto LABEL_73;
                    }

                    v25 = 10 * v12;
                    if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                    {
                      goto LABEL_73;
                    }

                    v12 = v25 + v24;
                    if (__OFADD__(v25, v24))
                    {
                      goto LABEL_73;
                    }

                    ++v23;
                    if (!--v7)
                    {
                      goto LABEL_74;
                    }
                  }
                }

                goto LABEL_65;
              }

              goto LABEL_73;
            }

            goto LABEL_119;
          }

          if (v11 != 45)
          {
            if (v8)
            {
              v12 = 0;
              if (v10)
              {
                while (1)
                {
                  v29 = *v10 - 48;
                  if (v29 > 9)
                  {
                    goto LABEL_73;
                  }

                  v30 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    goto LABEL_73;
                  }

                  v12 = v30 + v29;
                  if (__OFADD__(v30, v29))
                  {
                    goto LABEL_73;
                  }

                  ++v10;
                  if (!--v8)
                  {
                    goto LABEL_65;
                  }
                }
              }

              goto LABEL_65;
            }

LABEL_73:
            v12 = 0;
            LOBYTE(v7) = 1;
            goto LABEL_74;
          }

          if (v8 >= 1)
          {
            v7 = v8 - 1;
            if (v8 != 1)
            {
              v12 = 0;
              if (v10)
              {
                v13 = v10 + 1;
                while (1)
                {
                  v14 = *v13 - 48;
                  if (v14 > 9)
                  {
                    goto LABEL_73;
                  }

                  v15 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    goto LABEL_73;
                  }

                  v12 = v15 - v14;
                  if (__OFSUB__(v15, v14))
                  {
                    goto LABEL_73;
                  }

                  ++v13;
                  if (!--v7)
                  {
                    goto LABEL_74;
                  }
                }
              }

LABEL_65:
              LOBYTE(v7) = 0;
LABEL_74:
              v34 = v7;
              goto LABEL_75;
            }

            goto LABEL_73;
          }

          __break(1u);
        }

        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:

        goto LABEL_122;
      }

LABEL_88:

      goto LABEL_79;
    }

    if (a1 == 0x6F6C4365726F7473 && a2 == 0xEC00000044496475 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v19 = sub_100D0A498(v47._countAndFlagsBits, v47._object);
      if (v20)
      {
        goto LABEL_79;
      }

      v21 = v19;
      if (!v19)
      {
        goto LABEL_79;
      }

      v22 = v3 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID;
      swift_beginAccess();
      *v22 = v21;
LABEL_78:
      *(v22 + 8) = 0;
LABEL_79:
      sub_10000959C(v48);
      sub_1000095E8(v50, &unk_101183F30);
    }

    if (a1 == 0xD000000000000011 && 0x8000000100E6F280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v36 = (v47._object >> 56) & 0xF;
      if ((v47._object & 0x2000000000000000) == 0)
      {
        v36 = v47._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v36)
      {
        goto LABEL_88;
      }

      v37 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID;
    }

    else if (a1 == 0xD000000000000017 && 0x8000000100E6F2A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v39 = (v47._object >> 56) & 0xF;
      if ((v47._object & 0x2000000000000000) == 0)
      {
        v39 = v47._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v39)
      {
        goto LABEL_88;
      }

      v37 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID;
    }

    else if (a1 == 0x61644165726F7473 && a2 == 0xEB0000000044496DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v40 = (v47._object >> 56) & 0xF;
      if ((v47._object & 0x2000000000000000) == 0)
      {
        v40 = v47._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v40)
      {
        goto LABEL_88;
      }

      v37 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID;
    }

    else
    {
      if ((a1 != 0x72506C6169636F73 || a2 != 0xEF4449656C69666FLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (a1 == 0x4B746E65746E6F63 && a2 == 0xEB00000000646E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v43 = _s11MusicJSCore15JSIdentifierSetC11ContentKindO8rawValueAESgSS_tcfC_0(v47);
          if (v43 != 15)
          {
            v44 = v43;
            v45 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind;
            swift_beginAccess();
            *(v3 + v45) = v44;
          }

          goto LABEL_79;
        }

        goto LABEL_121;
      }

      v41 = (v47._object >> 56) & 0xF;
      if ((v47._object & 0x2000000000000000) == 0)
      {
        v41 = v47._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v41)
      {
        goto LABEL_88;
      }

      v37 = OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_socialProfileID;
    }

    v38 = (v3 + v37);
    swift_beginAccess();
    *v38 = v47._countAndFlagsBits;
    v38[1] = object;
    goto LABEL_88;
  }

  return sub_1000095E8(v49, &unk_1011C0D90);
}

id JSIdentifierSet.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_socialProfileID];
  *v9 = 0;
  v9[1] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind] = 15;
  return JSObject.init(type:)(a1);
}

id JSIdentifierSet.init(type:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storePurchasedAdamID;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudID;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeCloudAlbumID);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_cloudUniversalLibraryID);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_storeAdamID);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_socialProfileID);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore15JSIdentifierSet_contentKind) = 15;
  return JSObject.init(type:)(a1);
}

uint64_t sub_100D123C0()
{
}

id JSIdentifierSet.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSIdentifierSet();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unsigned __int8 *sub_100D12504(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1002CED50();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}