uint64_t sub_100036BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002B6CC(&qword_10032C0D0);
  Binding.projectedValue.getter();
  v27 = *(a1 + *(type metadata accessor for InlineWebsiteView(0) + 20));
  sub_10002B6CC(&qword_10032C258);
  State.projectedValue.getter();
  v4 = a2 + *(type metadata accessor for WebView(0) + 20);
  *v4 = v25;
  *(v4 + 16) = v26;
  v5 = static Alignment.center.getter();
  v7 = v6;
  State.wrappedValue.getter();
  v8 = (a2 + *(sub_10002B6CC(&qword_10032C260) + 36));
  *v8 = v27;
  v8[1] = v5;
  v8[2] = v7;
  static ClarityUIMetrics.componentCornerRadius.getter();
  v10 = v9;
  v11 = (a2 + *(sub_10002B6CC(&qword_10032C268) + 36));
  v12 = *(type metadata accessor for RoundedRectangle() + 20);
  v13 = enum case for RoundedCornerStyle.continuous(_:);
  v14 = type metadata accessor for RoundedCornerStyle();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  *v11 = v10;
  *(v11 + 1) = v10;
  *&v11[*(sub_10002B6CC(&qword_10032C270) + 36)] = 256;
  LOBYTE(v13) = static Edge.Set.horizontal.getter();
  static ClarityUIMetrics.componentHorizontalPadding.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = sub_10002B6CC(&qword_10032C278);
  v24 = a2 + *(result + 36);
  *v24 = v13;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
  return result;
}

uint64_t sub_100036DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002B6CC(&qword_10032C248);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  v11 = static Color.clarityUIContentBackground.getter();
  v12 = static Color.primary.getter();
  sub_100038DE8(v2, v6, type metadata accessor for InlineWebsiteView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_100038FB8(v6, v14 + v13);
  v15 = sub_10002B6CC(&qword_10032C250);
  *(a2 + v15[21]) = v11;
  (*(v8 + 16))(a2, v10, v7);
  *(a2 + v15[22]) = v12;
  v16 = (a2 + v15[23]);
  *v16 = sub_10003901C;
  v16[1] = v14;
  sub_100036BB0(v2, a2 + v15[24]);
  return (*(v8 + 8))(v10, v7);
}

id sub_100036FF4()
{
  v0 = type metadata accessor for URLRequest();
  v1 = *(v0 - 8);
  v45 = v0;
  v46 = v1;
  __chkstk_darwin(v0);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002B6CC(&qword_10032C148);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v47 = v7;
  v48 = v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v51 = type metadata accessor for Logger();
  v14 = *(v51 - 8);
  __chkstk_darwin(v51);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(WKWebViewConfiguration) init];
  [v17 setAllowsInlineMediaPlayback:1];
  v18 = [objc_allocWithZone(WKWebView) initWithFrame:v17 configuration:{0.0, 0.0, 0.0, 0.0}];
  sub_10002B6CC(&qword_10032C198);
  UIViewRepresentableContext.coordinator.getter();
  v19 = v53;
  v50 = v18;
  v20 = v18;
  v21 = v49;
  [v20 setNavigationDelegate:v53];

  v22 = (v21 + *(type metadata accessor for WebView(0) + 20));
  v23 = *v22;
  v24 = *(v22 + 2);
  v53 = v23;
  v54 = v24;
  sub_10002B6CC(&qword_10032C190);
  Binding.wrappedValue.getter();
  v25 = v52;
  if (v52)
  {
    v26 = Logger.common.unsafeMutableAddressor();
    (*(v14 + 16))(v16, v26, v51);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v25;
      *&v53 = v30;
      *v29 = 136315138;
      swift_errorRetain();
      sub_10002B6CC(&qword_10032C1A0);
      v31 = String.init<A>(describing:)();
      v33 = sub_10005766C(v31, v32, &v53);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unexpectedly had error already when creating WebView: %s", v29, 0xCu);
      sub_10002C9B0(v30);
    }

    else
    {
    }

    (*(v14 + 8))(v16, v51);
    return v50;
  }

  else
  {
    v34 = v13;
    v35 = v3;
    v36 = v46;
    sub_10002B6CC(&qword_10032C0D0);
    Binding.wrappedValue.getter();
    v37 = v47;
    if ((*(v48 + 48))(v6, 1, v47) == 1)
    {

      sub_100038118(v6);
      return v50;
    }

    else
    {
      v39 = v48;
      v40 = v34;
      (*(v48 + 32))(v34, v6, v37);
      (*(v39 + 16))(v11, v34, v37);
      URLRequest.init(url:cachePolicy:timeoutInterval:)();
      isa = URLRequest._bridgeToObjectiveC()().super.isa;
      v42 = v50;
      v43 = [v50 loadRequest:isa];

      (*(v36 + 8))(v35, v45);
      (*(v39 + 8))(v40, v37);
      return v42;
    }
  }
}

uint64_t sub_100037584(void *a1)
{
  v23 = a1;
  v2 = type metadata accessor for URLRequest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002B6CC(&qword_10032C148);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  v16 = (v1 + *(type metadata accessor for WebView(0) + 20));
  v17 = *v16;
  v18 = *(v16 + 2);
  v25 = v17;
  v26 = v18;
  sub_10002B6CC(&qword_10032C190);
  Binding.wrappedValue.getter();
  if (v24)
  {
  }

  v22 = v2;
  v20 = v23;
  sub_10002B6CC(&qword_10032C0D0);
  Binding.wrappedValue.getter();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100038118(v8);
  }

  (*(v10 + 32))(v15, v8, v9);
  (*(v10 + 16))(v13, v15, v9);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  isa = URLRequest._bridgeToObjectiveC()().super.isa;

  (*(v3 + 8))(v5, v22);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_100037890()
{
  v0 = sub_10002B6CC(&qword_10032C148);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v8 - v4;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1000389E8(v5, v3);
  sub_10002B6CC(&qword_10032C0D0);
  Binding.wrappedValue.setter();
  return sub_100038118(v5);
}

id sub_100037B58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebView.Coordinator(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100037BC8()
{
  result = type metadata accessor for WebView(319);
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

uint64_t sub_100037C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002B6CC(&qword_10032C0D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100037D6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10002B6CC(&qword_10032C0D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100037E5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038DE8(v2, v5, type metadata accessor for WebView);
  v6 = type metadata accessor for WebView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_100038DE8(v5, v7 + OBJC_IVAR____TtCV12ClarityBoardP33_3CE0F5628C0B5664EE69A633282EA6997WebView11Coordinator_webView, type metadata accessor for WebView);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, "init");
  result = sub_1000380BC(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_100037F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003846C(&qword_10032C1A8);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100037FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003846C(&qword_10032C1A8);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100038044()
{
  sub_10003846C(&qword_10032C1A8);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1000380BC(uint64_t a1)
{
  v2 = type metadata accessor for WebView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100038118(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032C148);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_100038180(_BOOL8 result)
{
  if (result)
  {
    swift_errorRetain();
    v1 = _convertErrorToNSError(_:)();
    v2 = [v1 domain];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        return 0;
      }
    }

    v9 = [v1 code];

    return v9 == -1009;
  }

  return result;
}

uint64_t sub_10003828C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002B6CC(&qword_10032C288);
  __chkstk_darwin(v3);
  v5 = (&v14 - v4);
  v6 = *v1;
  v15 = static Color.clarityUIContentBackground.getter();
  v7 = static Alignment.center.getter();
  v9 = v8;
  sub_100038180(v6);
  LocalizedStringKey.init(stringLiteral:)();
  sub_100038180(v6);
  v10 = v5 + *(v3 + 36);
  Label<>.init(_:systemImage:)();
  v11 = &v10[*(sub_10002B6CC(&qword_10032C290) + 36)];
  *v11 = v7;
  v11[1] = v9;
  *v5 = v15;
  if (v6)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  sub_100039108(v5, a1);
  result = sub_10002B6CC(&qword_10032C298);
  *(a1 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_10003846C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WebView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000384B0(uint64_t a1, const char *a2)
{
  v4 = v2;
  v6 = type metadata accessor for WebView(0);
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Logger.common.unsafeMutableAddressor();
  (*(v10 + 16))(v12, v13, v9);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v15;
    v17 = v16;
    v29 = swift_slowAlloc();
    v31 = a1;
    *&v32 = v29;
    *v17 = 136315138;
    swift_errorRetain();
    sub_10002B6CC(&qword_10032C1A0);
    v18 = String.init<A>(describing:)();
    v27 = a2;
    v20 = sub_10005766C(v18, v19, &v32);
    v28 = v9;
    v21 = v4;
    v22 = v20;

    *(v17 + 4) = v22;
    v4 = v21;
    _os_log_impl(&_mh_execute_header, v14, v30, v27, v17, 0xCu);
    sub_10002C9B0(v29);

    (*(v10 + 8))(v12, v28);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_100038DE8(v4 + OBJC_IVAR____TtCV12ClarityBoardP33_3CE0F5628C0B5664EE69A633282EA6997WebView11Coordinator_webView, v8, type metadata accessor for WebView);
  v23 = &v8[*(v6 + 20)];
  v24 = *v23;
  v25 = *(v23 + 2);
  v32 = v24;
  v33 = v25;
  v31 = a1;
  swift_errorRetain();
  sub_10002B6CC(&qword_10032C190);
  Binding.wrappedValue.setter();
  return sub_1000380BC(v8);
}

uint64_t sub_1000387B0()
{
  v1 = v0;
  v2 = type metadata accessor for WebView(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = Logger.common.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v9, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Web content process terminated. Removing inline website view.", v12, 2u);
  }

  (*(v6 + 8))(v8, v5);
  sub_100038DE8(v1 + OBJC_IVAR____TtCV12ClarityBoardP33_3CE0F5628C0B5664EE69A633282EA6997WebView11Coordinator_webView, v4, type metadata accessor for WebView);
  v13 = static Animation.clarityUINavigationTransition.getter();
  __chkstk_darwin(v13);
  *&v15[-16] = v4;
  withAnimation<A>(_:_:)();

  return sub_1000380BC(v4);
}

uint64_t sub_1000389E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032C148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100038A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002B6CC(&qword_10032C0D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100038B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10002B6CC(&qword_10032C0D0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_100038C38(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100038C90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_100038D68(319, &qword_10032C140, &qword_10032C148, &unk_100297F20, &type metadata accessor for Binding);
  if (v7 <= 0x3F)
  {
    sub_100038D68(319, a4, &unk_10032C158, &unk_100297F28, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100038D68(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10002CAF8(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100038DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100038E50()
{
  v1 = *(type metadata accessor for InlineWebsiteView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(sub_10002B6CC(&qword_10032C0D0) + 32);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100038FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineWebsiteView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003901C()
{
  type metadata accessor for InlineWebsiteView(0);

  return sub_100036B40();
}

uint64_t sub_100039108(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032C288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003917C()
{
  result = qword_10032C2A0;
  if (!qword_10032C2A0)
  {
    sub_10002CAF8(&qword_10032C298);
    sub_100039208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C2A0);
  }

  return result;
}

unint64_t sub_100039208()
{
  result = qword_10032C2A8;
  if (!qword_10032C2A8)
  {
    sub_10002CAF8(&qword_10032C288);
    sub_10002CD18(&unk_10032C2B0, &qword_10032C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C2A8);
  }

  return result;
}

id sub_1000393E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreAuthUIPresentationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100039480(uint64_t a1)
{
  v3 = sub_1000398F4(a1);
  (*(*(*(v1 + qword_100336898) - 8) + 8))(a1);
  return v3;
}

void *sub_100039538(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100336898);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = UIHostingController.init(coder:rootView:)();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_100039670(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SecureHostingController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100039778()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureHostingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003980C(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - v1);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_100039980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for NSNotificationCenter.Publisher();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100039A4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for NSNotificationCenter.Publisher();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for VolumeHUD()
{
  result = qword_10032C3C0;
  if (!qword_10032C3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100039B3C()
{
  sub_100039BD4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100039BD4()
{
  if (!qword_10032C3D0)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10032C3D0);
    }
  }
}

uint64_t sub_100039C40@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for VolumeHUD();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002B6CC(&qword_10032C410);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8 - 8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = sub_10002B6CC(&qword_10032C418);
  sub_100039F1C(v1, &v14[*(v15 + 44)]);
  sub_10003A920(v14, v12);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_10003A920(v12, v17 + v16);
  *a1 = swift_getKeyPath();
  sub_10002B6CC(&qword_10032CEF0);
  swift_storeEnumTagMultiPayload();
  v18 = (a1 + *(sub_10002B6CC(&qword_10032C478) + 36));
  *v18 = sub_10003ACA8;
  v18[1] = v17;
  v19 = *(v4 + 28);
  sub_10003AD2C(v1, v7);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_10003AE78(v7, v21 + v20);
  v22 = sub_10002B6CC(&qword_10032C480);
  v23 = *(v22 + 52);
  v24 = type metadata accessor for NSNotificationCenter.Publisher();
  result = (*(*(v24 - 8) + 16))(a1 + v23, &v1[v19], v24);
  v26 = (a1 + *(v22 + 56));
  *v26 = sub_10003AEDC;
  v26[1] = v21;
  return result;
}

uint64_t sub_100039F1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002B6CC(&qword_10032C490);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_10002B6CC(&qword_10032C428);
  sub_10003A094(a1, &v9[*(v10 + 44)]);
  sub_10003AFFC(v9, v7, &qword_10032C490);
  *a2 = 0;
  *(a2 + 8) = 1;
  v11 = sub_10002B6CC(&qword_10032C420);
  sub_10003AFFC(v7, a2 + v11[12], &qword_10032C490);
  v12 = a2 + v11[16];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v11[20];
  *v13 = 0;
  *(v13 + 8) = 1;
  sub_10002C51C(v9, &qword_10032C490);
  return sub_10002C51C(v7, &qword_10032C490);
}

uint64_t sub_10003A094@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for Color.RGBColorSpace();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10002B6CC(&qword_10032C470) - 8;
  v5 = __chkstk_darwin(v40);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = &v8[*(sub_10002B6CC(&qword_10032C430) + 44)];
  *v9 = static Alignment.bottom.getter();
  v9[1] = v10;
  v11 = sub_10002B6CC(&qword_10032C438);
  sub_10003A4E8(a1, v9 + *(v11 + 44));
  v12 = type metadata accessor for VolumeHUD();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = (v9 + *(sub_10002B6CC(&qword_10032C498) + 36));
  v14 = v45;
  *v13 = v44;
  v13[1] = v14;
  v13[2] = v46;
  v15 = v9 + *(sub_10002B6CC(&qword_10032C458) + 36);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  v18 = *(*(v17 - 8) + 104);
  v18(v15, v16, v17);
  v19 = sub_10002B6CC(&qword_10032C4A0);
  *&v15[*(v19 + 36)] = 256;
  LOBYTE(v15) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v9 + *(sub_10002B6CC(&qword_10032C4A8) + 36);
  *v28 = v15;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = &v8[*(sub_10002B6CC(&qword_10032C460) + 36)];
  static Material.ultraThin.getter();
  LOBYTE(v9) = static Edge.Set.all.getter();
  v29[*(sub_10002B6CC(&qword_10032C4B0) + 36)] = v9;
  v30 = &v8[*(sub_10002B6CC(&qword_10032C468) + 36)];
  v18(v30, v16, v17);
  *&v30[*(v19 + 36)] = 256;
  v31 = *(a1 + *(v12 + 36));
  (*(v41 + 104))(v38, enum case for Color.RGBColorSpace.sRGBLinear(_:), v42);
  v32 = Color.init(_:white:opacity:)();
  v33 = v39;
  v34 = &v8[*(v40 + 44)];
  *v34 = v32;
  v34[1] = v31;
  v34[2] = 0;
  v34[3] = 0;
  sub_10003AFFC(v8, v33, &qword_10032C470);
  v35 = v43;
  sub_10003AFFC(v33, v43, &qword_10032C470);
  v36 = v35 + *(sub_10002B6CC(&qword_10032C4B8) + 48);
  *v36 = 0;
  *(v36 + 8) = 1;
  sub_10002C51C(v8, &qword_10032C470);
  return sub_10002C51C(v33, &qword_10032C470);
}

uint64_t sub_10003A4E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v35 = a2;
  v33 = sub_10002B6CC(&qword_10032C4C0) - 8;
  v2 = __chkstk_darwin(v33);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v30 = &v29 - v4;
  v5 = sub_10002B6CC(&qword_10032C448);
  v6 = __chkstk_darwin(v5);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = type metadata accessor for RoundedCornerStyle();
  v12 = *(*(v11 - 8) + 104);
  v12(v9, v10, v11);
  static Color.black.getter();
  v13 = Color.opacity(_:)();

  KeyPath = swift_getKeyPath();
  v15 = sub_10002B6CC(&qword_10032C440);
  v16 = &v9[*(v15 + 36)];
  *v16 = KeyPath;
  v16[1] = v13;
  static Material.ultraThin.getter();
  v17 = v30;
  v12(v30, v10, v11);
  v18 = static Color.purple.getter();
  v19 = swift_getKeyPath();
  v20 = (v17 + *(v15 + 36));
  *v20 = v19;
  v20[1] = v18;
  type metadata accessor for VolumeHUD();
  v21 = v31[1];
  *&v36 = *v31;
  *(&v36 + 1) = v21;
  sub_10002B6CC(&qword_10032C488);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v22 = v32;
  v23 = (v17 + *(v33 + 44));
  v24 = v37;
  *v23 = v36;
  v23[1] = v24;
  v23[2] = v38;
  sub_10003AFFC(v9, v22, &qword_10032C448);
  v25 = v34;
  sub_10003AFFC(v17, v34, &qword_10032C4C0);
  v26 = v35;
  sub_10003AFFC(v22, v35, &qword_10032C448);
  v27 = sub_10002B6CC(&qword_10032C450);
  sub_10003AFFC(v25, v26 + *(v27 + 48), &qword_10032C4C0);
  sub_10002C51C(v17, &qword_10032C4C0);
  sub_10002C51C(v9, &qword_10032C448);
  sub_10002C51C(v25, &qword_10032C4C0);
  return sub_10002C51C(v22, &qword_10032C448);
}

uint64_t sub_10003A87C()
{
  v0 = [qword_100336870 volumeManager];
  [v0 volume];

  sub_10002B6CC(&qword_10032C488);
  return State.wrappedValue.setter();
}

uint64_t sub_10003A920(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032C410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003A990()
{
  v1 = *(sub_10002B6CC(&qword_10032C410) - 8);
  v19 = *(v1 + 80);
  v18 = *(v1 + 64);
  v2 = v0 + *(sub_10002B6CC(&qword_10032C418) + 44);
  v3 = v2 + *(sub_10002B6CC(&qword_10032C420) + 48);
  v4 = v3 + *(sub_10002B6CC(&qword_10032C428) + 44) + ((v19 + 16) & ~v19);
  v16 = v4 + *(sub_10002B6CC(&qword_10032C430) + 44);
  v5 = v16 + *(sub_10002B6CC(&qword_10032C438) + 44);
  v6 = type metadata accessor for RoundedCornerStyle();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  sub_10002B6CC(&qword_10032C440);

  v8 = *(sub_10002B6CC(&qword_10032C448) + 36);
  v9 = type metadata accessor for Material();
  v10 = *(*(v9 - 8) + 8);
  v10(v5 + v8, v9);
  v11 = sub_10002B6CC(&qword_10032C450);
  v7(v5 + *(v11 + 48), v6);

  v12 = sub_10002B6CC(&qword_10032C458);
  v7(v16 + *(v12 + 36), v6);
  v13 = sub_10002B6CC(&qword_10032C460);
  v10(v4 + *(v13 + 36), v9);
  v14 = sub_10002B6CC(&qword_10032C468);
  v7(v4 + *(v14 + 36), v6);
  sub_10002B6CC(&qword_10032C470);

  return _swift_deallocObject(v17, ((v19 + 16) & ~v19) + v18);
}

uint64_t sub_10003ACA8()
{
  v1 = *(sub_10002B6CC(&qword_10032C410) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100069AA4(v2);
}

uint64_t sub_10003AD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VolumeHUD();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003AD90()
{
  v1 = (type metadata accessor for VolumeHUD() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[7];
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10003AE78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VolumeHUD();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003AEDC()
{
  type metadata accessor for VolumeHUD();

  return sub_10003A87C();
}

uint64_t sub_10003AF4C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003AF78@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003AFFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10002B6CC(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10003B068()
{
  result = qword_10032C4C8;
  if (!qword_10032C4C8)
  {
    sub_10002CAF8(&qword_10032C480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C4C8);
  }

  return result;
}

id sub_10003B0FC(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_10003B13C()
{
  type metadata accessor for EmergencyModel();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(HKHealthStore) init];
  return v0;
}

void sub_10003B190(void *a1, uint64_t a2)
{
  sub_10002B6CC(&qword_10032C680);
  State.wrappedValue.getter();
  if ((~v22 & 0xF000000000000007) == 0)
  {
    if ((~a2 & 0xF000000000000007) == 0)
    {
      return;
    }

    v4 = 0;
LABEL_10:
    if (a2 < 0)
    {
      v8 = [a1 application];
      if (v4)
      {
LABEL_12:
        if (v8)
        {
          sub_10002C9FC(0, &qword_10032B730);
          v9 = static NSObject.== infix(_:_:)();

          if (v9)
          {
            return;
          }

          goto LABEL_18;
        }

LABEL_17:

LABEL_18:
        sub_10003FEE0(a1, a2);
        sub_10002B6CC(&qword_10032C688);
        State.wrappedValue.getter();
        if (a2 < 0)
        {
          v10 = [a1 application];
        }

        else
        {
          v10 = a1;
        }

        v11 = v10;
        v12 = v21[2];
        v13 = [v10 bundleIdentifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        swift_getKeyPath();
        sub_10003F6FC(&qword_10032E240, type metadata accessor for AppProtectionCoordinator);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v14 = *(v12 + 16);
        v15 = objc_opt_self();
        v16 = v14;
        v17 = [v15 sharedInstance];
        v18 = String._bridgeToObjectiveC()();
        v19 = [v17 standardBundleIdentifierForClarityBundleIdentifier:v18];

        if (!v19)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = String._bridgeToObjectiveC()();
        }

        v20 = [objc_opt_self() applicationWithBundleIdentifier:v19];

        [v16 noteSceneWillBecomeForegroundVisibleForApplication:v20];

        sub_10003FE90(a1, a2);
        return;
      }
    }

    else
    {
      v7 = a1;
      v8 = a1;
      if (v4)
      {
        goto LABEL_12;
      }
    }

    v4 = v8;
    if (!v8)
    {
      return;
    }

    goto LABEL_17;
  }

  v4 = v21;
  if (v22 < 0)
  {
    v6 = [v21 application];
    sub_10003FE90(v21, v22);
    v4 = v6;
  }

  else
  {
    v5 = v21;
    sub_10003FE90(v21, v22);
  }

  if ((~a2 & 0xF000000000000007) != 0)
  {
    goto LABEL_10;
  }

  if (v4)
  {
  }
}

void sub_10003B4FC(id a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xF000000000000007;
  if ((a2 & 0xF000000000000007) == 0xF000000000000007)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
    if (a2 < 0)
    {
      v4 = [a1 application];
    }

    else
    {
      v5 = a1;
    }
  }

  sub_10002B6CC(&qword_10032C680);
  State.wrappedValue.getter();
  if ((~v25 & 0xF000000000000007) == 0)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_17;
  }

  v6 = v24;
  if ((v25 & 0x8000000000000000) == 0)
  {
    v7 = v24;
    sub_10003FE90(v24, v25);
    if (v4)
    {
      goto LABEL_11;
    }

LABEL_16:
    v4 = v6;
    if (!v6)
    {
      return;
    }

    goto LABEL_17;
  }

  v22 = v2;
  v9 = [v24 application];
  sub_10003FE90(v24, v25);
  v6 = v9;
  v2 = v22;
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (v6)
  {
    sub_10002C9FC(0, &qword_10032B730);
    v8 = static NSObject.== infix(_:_:)();

    if (v3 == 0xF000000000000007 || (v8 & 1) != 0)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_17:

  if (v3 == 0xF000000000000007)
  {
    return;
  }

LABEL_18:
  sub_10003FEE0(a1, v2);
  State.wrappedValue.getter();
  if ((~v25 & 0xF000000000000007) != 0)
  {
    sub_10003FE90(v24, v25);
  }

  else
  {
    sub_10002B6CC(&qword_10032C688);
    State.wrappedValue.getter();
    v10 = v2;
    if (v2 < 0)
    {
      v11 = [a1 application];
    }

    else
    {
      v11 = a1;
    }

    v12 = v11;
    v13 = v24[2];
    v14 = [v11 bundleIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    sub_10003F6FC(&qword_10032E240, type metadata accessor for AppProtectionCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v13 + 16);
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 sharedInstance];
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 standardBundleIdentifierForClarityBundleIdentifier:v19];

    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = String._bridgeToObjectiveC()();
    }

    v21 = [objc_opt_self() applicationWithBundleIdentifier:v20];

    [v17 noteAllScenesDismissedForApplication:v21];

    v2 = v10;
  }

  sub_10003FE90(a1, v2);
}

id sub_10003B8C0()
{
  sub_10002B6CC(&qword_10032C680);
  State.wrappedValue.getter();
  if ((~v5 & 0xF000000000000007) == 0)
  {
    return 0;
  }

  v0 = v4;
  if (v5 < 0)
  {
    v2 = [v4 application];
    sub_10003FE90(v4, v5);
    return v2;
  }

  else
  {
    v1 = v4;
    sub_10003FE90(v4, v5);
  }

  return v0;
}

uint64_t sub_10003B980@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for RootView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v44 = sub_10002B6CC(&qword_10032C630);
  __chkstk_darwin(v44);
  v8 = &v38 - v7;
  v9 = sub_10002B6CC(&qword_10032C638);
  v10 = *(v9 - 8);
  v40 = v9 - 8;
  v42 = v10;
  v41 = *(v10 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v38 = &v38 - v13;
  *v8 = static Alignment.center.getter();
  *(v8 + 1) = v14;
  v15 = sub_10002B6CC(&qword_10032C640);
  sub_10003BEC0(v2, &v8[*(v15 + 44)]);
  v16 = *(v2 + *(v4 + 52));
  sub_10003F268(v2, &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_100040830(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for RootView);
  v19 = sub_10002B6CC(&qword_10032C648);
  *&v8[*(v19 + 52)] = v16;
  v20 = &v8[*(v19 + 56)];
  *v20 = sub_10003FABC;
  v20[1] = v18;
  v21 = *(v2 + *(v4 + 56));
  sub_10003F268(v2, &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = swift_allocObject();
  sub_100040830(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v17, type metadata accessor for RootView);
  v23 = v44;
  *&v8[*(v44 + 52)] = v21;
  v24 = &v8[*(v23 + 56)];
  *v24 = sub_10003FB2C;
  v24[1] = v22;

  v25 = sub_10003B8C0();
  v45 = v25;
  sub_10003F268(v2, &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  sub_100040830(&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v17, type metadata accessor for RootView);
  sub_10002B6CC(&qword_10032C650);
  sub_10002CD18(&qword_10032C658, &qword_10032C630);
  sub_10003FC14();
  v27 = v38;
  View.onChange<A>(of:initial:_:)();

  sub_10002C51C(v8, &qword_10032C630);
  type metadata accessor for SiriCoordinator();
  sub_10003F6FC(&qword_10032C588, type metadata accessor for SiriCoordinator);
  v28 = StateObject.wrappedValue.getter();
  v29 = static ObservableObject.environmentStore.getter();
  v30 = v39;
  v31 = (v27 + *(v40 + 44));
  *v31 = v29;
  v31[1] = v28;
  sub_1000404F8(v27, v30, &qword_10032C638);
  v32 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v33 = swift_allocObject();
  sub_1000404F8(v30, v33 + v32, &qword_10032C638);
  KeyPath = swift_getKeyPath();
  v35 = v43;
  *v43 = KeyPath;
  sub_10002B6CC(&qword_10032CEF0);
  swift_storeEnumTagMultiPayload();
  result = sub_10002B6CC(&qword_10032C678);
  v37 = (v35 + *(result + 36));
  *v37 = sub_10003FE0C;
  v37[1] = v33;
  return result;
}

uint64_t sub_10003BEC0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v148 = a2;
  v127 = type metadata accessor for MoveTransition();
  v126 = *(v127 - 8);
  v3 = __chkstk_darwin(v127);
  v124 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v125 = &v116 - v5;
  v117 = type metadata accessor for ApplicationSceneContainer();
  __chkstk_darwin(v117);
  v122 = (&v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = sub_10002B6CC(&qword_10032C690);
  __chkstk_darwin(v121);
  v120 = &v116 - v7;
  v119 = sub_10002B6CC(&qword_10032C698);
  __chkstk_darwin(v119);
  v123 = &v116 - v8;
  v130 = sub_10002B6CC(&qword_10032C6A0);
  __chkstk_darwin(v130);
  v131 = &v116 - v9;
  v134 = sub_10002B6CC(&qword_10032C6A8);
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v116 - v10;
  v150 = sub_10002B6CC(&qword_10032C6B0);
  v146 = *(v150 - 8);
  v11 = __chkstk_darwin(v150);
  v129 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v128 = &v116 - v13;
  v14 = sub_10002B6CC(&qword_10032C6B8);
  v15 = __chkstk_darwin(v14 - 8);
  v147 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v149 = &v116 - v17;
  v18 = type metadata accessor for RootView();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18 - 8);
  v116 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v116 - v22;
  v24 = type metadata accessor for Home();
  __chkstk_darwin(v24);
  v26 = (&v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_10002B6CC(&qword_10032C6C0);
  __chkstk_darwin(v27 - 8);
  v29 = &v116 - v28;
  v30 = sub_10002B6CC(&qword_10032C6C8);
  __chkstk_darwin(v30);
  v32 = &v116 - v31;
  v33 = sub_10002B6CC(&qword_10032C6D0);
  v144 = *(v33 - 8);
  v145 = v33;
  v34 = __chkstk_darwin(v33);
  v143 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v152 = &v116 - v36;
  sub_10003F268(a1, v23);
  v37 = *(v19 + 80);
  v142 = ~v37;
  v38 = (v37 + 16) & ~v37;
  v153 = v37;
  v39 = swift_allocObject();
  v151 = v38;
  sub_100040830(v23, v39 + v38, type metadata accessor for RootView);
  sub_1000B1414(sub_10003FF24, v39, v26);
  v40 = a1[13];
  v41 = a1[15];
  v139 = a1[14];
  v140 = v40;
  v156 = v40;
  v157 = v139;
  v138 = v41;
  v158 = v41;
  v137 = sub_10002B6CC(&qword_10032C680);
  State.wrappedValue.getter();
  if ((v155 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_10003FE90(v154, v155);
  }

  sub_10003F6FC(&qword_10032C6D8, type metadata accessor for Home);
  View.accessibilityHidden(_:)();
  sub_10003FF94(v26, type metadata accessor for Home);
  sub_1000404F8(v29, v32, &qword_10032C6C0);
  *&v32[*(v30 + 36)] = 0;
  sub_10003F268(a1, v23);
  type metadata accessor for MainActor();
  v42 = static MainActor.shared.getter();
  v136 = v32;
  v43 = (v153 + 32) & v142;
  v44 = swift_allocObject();
  v135 = v30;
  v141 = a1;
  *(v44 + 16) = v42;
  *(v44 + 24) = &protocol witness table for MainActor;
  sub_100040830(v23, v44 + v43, type metadata accessor for RootView);
  sub_10003F268(a1, v23);
  v45 = static MainActor.shared.getter();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = &protocol witness table for MainActor;
  sub_100040830(v23, v46 + v43, type metadata accessor for RootView);
  Binding.init(get:set:)();
  sub_10003F268(a1, v23);
  v118 = v20;
  v47 = v151;
  v48 = swift_allocObject();
  v142 = v23;
  sub_100040830(v23, v48 + v47, type metadata accessor for RootView);
  sub_10002B6CC(&qword_10032C6E0);
  sub_100040698(&qword_10032C6E8, &qword_10032C6C8, &unk_1002984C0, sub_10004032C);
  sub_10002CD18(&qword_10032C708, &qword_10032C6E0);
  v49 = 1;
  v50 = v136;
  View.fullScreenCover<A>(isPresented:drawsBackground:content:)();

  sub_10002C51C(v50, &qword_10032C6C8);
  v156 = v140;
  v157 = v139;
  v158 = v138;
  State.wrappedValue.getter();
  v51 = v155;
  v52 = v150;
  if ((~v155 & 0xF000000000000007) != 0)
  {
    v53 = v154;
    v54 = v141;
    v55 = v141[12];
    v156 = v141[11];
    v157 = v55;
    sub_10002B6CC(&qword_10032C688);
    State.wrappedValue.getter();
    v137 = v154;
    v139 = v51;
    v140 = v53;
    if (v51 < 0)
    {
      v56 = [v53 application];
    }

    else
    {
      v56 = v53;
    }

    v57 = v56;
    type metadata accessor for ApplicationSceneClientSettings();
    v58 = [v57 defaultSceneIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    static ApplicationSceneClientSettings.settingsForSceneID(_:)();

    v59 = v142;
    sub_10003F268(v54, v142);
    v60 = v151;
    v61 = swift_allocObject();
    v138 = type metadata accessor for RootView;
    sub_100040830(v59, v61 + v60, type metadata accessor for RootView);
    v62 = v116;
    sub_10003F268(v54, v116);
    v63 = swift_allocObject();
    sub_100040830(v62, v63 + v60, type metadata accessor for RootView);
    v64 = v122;
    v66 = v139;
    v65 = v140;
    *v122 = v140;
    v64[1] = v66;
    v64[2] = v137;
    sub_10003FEE0(v65, v66);
    sub_10003F6FC(&qword_10032C718, &type metadata accessor for ApplicationSceneClientSettings);
    v64[3] = ObservedObject.init(wrappedValue:)();
    v64[4] = v67;
    v64[5] = sub_100040488;
    v64[6] = v61;
    v64[7] = sub_1000404A0;
    v64[8] = v63;
    v68 = v117;
    v69 = *(v117 + 36);
    *(v64 + v69) = swift_getKeyPath();
    sub_10002B6CC(&qword_10032C720);
    swift_storeEnumTagMultiPayload();
    v70 = v68[10];
    *(v64 + v70) = swift_getKeyPath();
    sub_10002B6CC(&qword_10032CEF0);
    swift_storeEnumTagMultiPayload();
    v71 = v68[11];
    static ClarityUIMetrics.componentCornerRadius.getter();
    *(v64 + v71) = v72;
    *(v64 + v68[12]) = 0x4024000000000000;
    v73 = v64 + v68[13];
    LOBYTE(v154) = 1;
    State.init(wrappedValue:)();
    v74 = v157;
    *v73 = v156;
    *(v73 + 1) = v74;
    v75 = objc_opt_self();
    v76 = [v75 defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    v77 = [v75 defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    v78 = v125;
    MoveTransition.init(edge:)();
    v79 = v126;
    v80 = v127;
    (*(v126 + 16))(v124, v78, v127);
    sub_10003F6FC(&qword_10032C728, &type metadata accessor for MoveTransition);
    v81 = AnyTransition.init<A>(_:)();
    (*(v79 + 8))(v78, v80);
    v82 = v64;
    v83 = v141;
    v84 = v120;
    sub_100040830(v82, v120, type metadata accessor for ApplicationSceneContainer);
    *(v84 + *(v121 + 36)) = v81;
    v85 = v84;
    v86 = v123;
    sub_1000404F8(v85, v123, &qword_10032C690);
    *(v86 + *(v119 + 36)) = 0x3FF0000000000000;
    sub_10003F268(v83, v59);
    v87 = swift_allocObject();
    sub_100040830(v59, v87 + v60, v138);
    v88 = v131;
    sub_1000404F8(v86, v131, &qword_10032C698);
    v89 = (v88 + *(v130 + 36));
    *v89 = sub_1000404E0;
    v89[1] = v87;
    v89[2] = 0;
    v89[3] = 0;
    v90 = v140;
    if (v66 < 0)
    {
      v91 = [v140 application];
    }

    else
    {
      v91 = v140;
    }

    v92 = v91;
    v93 = sub_10003DB5C(v91);

    LOBYTE(v156) = v93 & 1;
    v94 = v142;
    sub_10003F268(v83, v142);
    v95 = v151;
    v96 = swift_allocObject();
    sub_100040830(v94, v96 + v95, type metadata accessor for RootView);
    sub_1000405E0();
    v97 = v132;
    View.onChange<A>(of:initial:_:)();

    sub_10002C51C(v88, &qword_10032C6A0);
    v98 = static Alignment.center.getter();
    v100 = v99;
    v52 = v150;
    v101 = v129;
    v102 = &v129[*(v150 + 36)];
    sub_10003DD00(v102);
    sub_10003FE90(v90, v66);
    v103 = (v102 + *(sub_10002B6CC(&qword_10032C760) + 36));
    *v103 = v98;
    v103[1] = v100;
    (*(v133 + 32))(v101, v97, v134);
    v104 = v128;
    sub_1000404F8(v101, v128, &qword_10032C6B0);
    sub_1000404F8(v104, v149, &qword_10032C6B0);
    v49 = 0;
  }

  v105 = v149;
  (*(v146 + 56))(v149, v49, 1, v52);
  v107 = v143;
  v106 = v144;
  v108 = *(v144 + 16);
  v109 = v152;
  v110 = v145;
  v108(v143, v152, v145);
  v111 = v147;
  sub_100040418(v105, v147);
  v112 = v148;
  v108(v148, v107, v110);
  v113 = sub_10002B6CC(&qword_10032C710);
  sub_100040418(v111, &v112[*(v113 + 48)]);
  sub_10002C51C(v105, &qword_10032C6B8);
  v114 = *(v106 + 8);
  v114(v109, v110);
  sub_10002C51C(v111, &qword_10032C6B8);
  return (v114)(v107, v110);
}

void sub_10003D0C0(void *a1)
{
  if ([a1 canBeLaunched])
  {
    v2 = [objc_opt_self() trackStartOfActivationForApplication:a1];
    v3 = static Animation.clarityUINavigationTransition.getter();
    __chkstk_darwin(v3);
    withAnimation<A>(_:_:)();
  }
}

void sub_10003D1A0(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v10 = a3;
  sub_10002B6CC(&qword_10032C680);
  State.wrappedValue.getter();
  sub_10003B190(a2, a3);
  v5 = v11;
  v6 = v10;
  State.wrappedValue.setter();
  sub_10003B4FC(v12, v13);
  sub_10003FE90(v12, v13);

  v7 = [objc_opt_self() defaultCenter];
  v8 = CLBApplicationLaunchedNotification;
  v9 = sub_10003B8C0();
  [v7 postNotificationName:v8 object:v9];
}

uint64_t sub_10003D300()
{
  sub_10002B6CC(&qword_10032C768);
  sub_10002CAF8(&qword_10032C770);
  sub_10002CAF8(&qword_10032C778);
  sub_1000408A8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_10003D3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for RootView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_10002B6CC(&qword_10032C770);
  v7 = *(v6 - 8);
  v19 = v6;
  v20 = v7;
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v10 = [objc_opt_self() sharedPresentationController];
  v11 = static Color.clarityUIContentBackground.getter();
  v12 = static Edge.Set.all.getter();
  v23 = v10;
  v24 = v11;
  v25 = v12;
  sub_10003F268(a1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_100040830(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for RootView);
  v22 = 1;
  static Binding.constant(_:)();
  v15 = sub_10002B6CC(&qword_10032C778);
  v18 = sub_1000408A8();
  View.multimodalNavigationChrome(shouldDisplay:bottomBarTransitionProgress:backButtonAction:)();

  v23 = v15;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  v16 = v19;
  View.clarityUIIdiom()();
  return (*(v20 + 8))(v9, v16);
}

void sub_10003D6B4()
{
  type metadata accessor for SiriCoordinator();
  sub_10003F6FC(&qword_10032C588, type metadata accessor for SiriCoordinator);
  v0 = StateObject.wrappedValue.getter();
  [*&v0[OBJC_IVAR____TtC12ClarityBoard15SiriCoordinator_presentationController] dismissSiri:23];
}

void sub_10003D778(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.common.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Returning to home, enabling idle timer back", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = [objc_opt_self() sharedInstance];
  if (v10)
  {
    v11 = v10;
    v12 = String._bridgeToObjectiveC()();
    [v11 setIdleTimerDisabled:0 forReason:v12];

    v14 = a1[14];
    v15 = a1[15];
    v18 = a1[13];
    v13 = v18;
    v19 = v14;
    v20 = v15;
    sub_10002B6CC(&qword_10032C680);
    State.wrappedValue.getter();
    v16 = v17;
    sub_10003B190(0, 0xF000000000000007);
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v17 = xmmword_100298350;
    State.wrappedValue.setter();
    sub_10003B4FC(v16, *(&v16 + 1));
    sub_10003FE90(v16, *(&v16 + 1));
  }

  else
  {
    __break(1u);
  }
}

void sub_10003D9D0()
{
  sub_10002B6CC(&qword_10032C680);
  State.wrappedValue.getter();
  sub_10003B190(0, 0xF000000000000007);
  State.wrappedValue.setter();
  sub_10003B4FC(v0, v1);
  sub_10003FE90(v0, v1);
}

uint64_t sub_10003DA98()
{
  type metadata accessor for SiriCoordinator();
  sub_10003F6FC(&qword_10032C588, type metadata accessor for SiriCoordinator);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t sub_10003DB5C(void *a1)
{
  sub_10002B6CC(&qword_10032C688);
  State.wrappedValue.getter();
  sub_10002DD2C(a1);
  v3 = v2;

  if (v3)
  {

    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [a1 bundleIdentifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v4 = sub_10006F598(v6, v8);
  }

  return v4 & 1;
}

void sub_10003DC40(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_10002B6CC(&qword_10032C680);
  State.wrappedValue.getter();
  if ((~v6 & 0xF000000000000007) != 0)
  {
    if (v6 < 0)
    {
      v3 = [v5 application];
    }

    else
    {
      v3 = v5;
    }

    v4 = v3;
    sub_10003FE90(v5, v6);
    [v4 setShouldShield:v2];
  }
}

uint64_t sub_10003DD00@<X0>(uint64_t a1@<X8>)
{
  v14[0] = a1;
  v1 = type metadata accessor for InlineWebsiteView(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002B6CC(&qword_10032C148);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  type metadata accessor for RootView();
  sub_10002B6CC(&qword_10032C508);
  State.wrappedValue.getter();
  v8 = type metadata accessor for URL();
  v9 = 1;
  v10 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  v11 = v14[0];
  sub_10002C51C(v7, &qword_10032C148);
  if (v10 != 1)
  {
    State.projectedValue.getter();
    v12 = &v4[*(v1 + 20)];
    v14[1] = 0;
    sub_10002B6CC(&unk_10032C158);
    State.init(wrappedValue:)();

    *v12 = 0;
    *(v12 + 1) = 0;
    sub_100040830(v4, v11, type metadata accessor for InlineWebsiteView);
    v9 = 0;
  }

  return (*(v2 + 56))(v11, v9, 1, v1);
}

void sub_10003DF40(void **a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v19[0] = [v8 application];
  if ([v19[0] canBeLaunched])
  {
    v9 = Logger.common.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v9, v4);
    v10 = v19[0];
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "Launching application by request: %@", v13, 0xCu);
      sub_10002C51C(v14, &qword_10032B670);
    }

    (*(v5 + 8))(v7, v4);
    v16 = [objc_opt_self() trackStartOfActivationForApplication:v10];
    v17 = static Animation.clarityUINavigationTransition.getter();
    __chkstk_darwin(v17);
    v19[-4] = a2;
    v19[-3] = v8;
    v19[-2] = v16;
    withAnimation<A>(_:_:)();
  }

  else
  {
    v18 = v19[0];
  }
}

void sub_10003E204(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a3 | 0x8000000000000000;
  v9 = a2;
  v8 = a3;
  sub_10002B6CC(&qword_10032C680);
  State.wrappedValue.getter();
  sub_10003B190(a2, v5);
  v6 = v9;
  v7 = v8;
  State.wrappedValue.setter();
  sub_10003B4FC(v10, v11);
  sub_10003FE90(v10, v11);
}

uint64_t sub_10003E310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v36 - v10;
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = sub_10003B8C0();
  if (v14)
  {

    v15 = URL.scheme.getter();
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      v19 = Logger.common.unsafeMutableAddressor();
      (*(v5 + 16))(v11, v19, v4);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v37 = v4;
        v23 = v22;
        v24 = swift_slowAlloc();
        v38 = v24;
        *v23 = 136315138;
        v25 = sub_10005766C(v18, v17, &v38);

        *(v23 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v20, v21, "Opening website inline with URL scheme: %s", v23, 0xCu);
        sub_10002C9B0(v24);

        (*(v5 + 8))(v11, v37);
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }

      v35 = static Animation.clarityUINavigationTransition.getter();
      __chkstk_darwin(v35);
      *(&v36 - 2) = a2;
      *(&v36 - 1) = a1;
      withAnimation<A>(_:_:)();
    }

    else
    {
      v31 = Logger.common.unsafeMutableAddressor();
      (*(v5 + 16))(v13, v31, v4);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Attempted to open website inline, but URL was missing a scheme.", v34, 2u);
      }

      return (*(v5 + 8))(v13, v4);
    }
  }

  else
  {
    v26 = Logger.common.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v26, v4);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Attempted to open website inline, but no application was currently open.", v29, 2u);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10003E71C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002B6CC(&qword_10032C148);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  type metadata accessor for RootView();
  sub_1000389E8(v8, v6);
  sub_10002B6CC(&qword_10032C508);
  State.wrappedValue.setter();
  return sub_10002C51C(v8, &qword_10032C148);
}

void sub_10003E8A4(_BYTE *a1@<X8>)
{
  type metadata accessor for SiriCoordinator();
  sub_10003F6FC(&qword_10032C588, type metadata accessor for SiriCoordinator);
  v2 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
}

uint64_t sub_10003E990()
{
  type metadata accessor for SiriCoordinator();
  sub_10003F6FC(&qword_10032C588, type metadata accessor for SiriCoordinator);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t sub_10003EA88(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.layoutDirection.setter();
}

void *sub_10003EB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v47 = a4;
  v6 = type metadata accessor for Logger();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002B6CC(&qword_10032C4D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v45 = sub_10002B6CC(&qword_10032C148);
  v11 = __chkstk_darwin(v45);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  v16 = type metadata accessor for RootView();
  __chkstk_darwin(v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v51 = a1;
  sub_10002B6CC(&unk_10032B690);
  sub_10002CD18(&qword_10032C4D8, &unk_10032B690);
  v19 = Publisher.eraseToAnyPublisher()();
  *&v51 = a2;
  sub_10002B6CC(&unk_10032C810);
  sub_10002CD18(&qword_10032C4E0, &unk_10032C810);
  v20 = Publisher.eraseToAnyPublisher()();
  if (qword_10032B4D0 != -1)
  {
    swift_once();
  }

  type metadata accessor for UserPreferences();
  sub_10003F6FC(&qword_10032C4E8, type metadata accessor for UserPreferences);

  *v18 = ObservedObject.init(wrappedValue:)();
  *(v18 + 1) = v21;
  *(v18 + 2) = sub_10003B0CC;
  *(v18 + 3) = 0;
  v18[32] = 0;
  *(v18 + 5) = sub_10003B0E4;
  *(v18 + 6) = 0;
  v18[56] = 0;
  *(v18 + 8) = sub_10003B13C;
  *(v18 + 9) = 0;
  v18[80] = 0;
  type metadata accessor for ApplicationSceneOverlayProvider();
  v22 = swift_allocObject();
  type metadata accessor for AppProtectionCoordinator();
  swift_allocObject();
  *(v22 + 16) = sub_10006FF10();
  type metadata accessor for ScreenTimeCoordinator();
  swift_allocObject();
  *(v22 + 24) = sub_10002D380();
  ObservationRegistrar.init()();
  *&v53 = v22;
  State.init(wrappedValue:)();
  v23 = *(&v51 + 1);
  *(v18 + 11) = v51;
  *(v18 + 12) = v23;
  v53 = xmmword_100298350;
  sub_10002B6CC(&qword_10032C4F0);
  State.init(wrappedValue:)();
  v24 = v52;
  *(v18 + 104) = v51;
  *(v18 + 15) = v24;
  v25 = type metadata accessor for URL();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  sub_1000389E8(v15, v13);
  State.init(wrappedValue:)();
  sub_10002C51C(v15, &qword_10032C148);
  *&v18[v16[11]] = v19;
  *&v18[v16[12]] = v20;
  v26 = &v18[v16[13]];
  v27 = v47;
  *v26 = v46;
  *(v26 + 1) = v27;
  sub_10003F268(v18, v10);
  v28 = objc_allocWithZone(sub_10002B6CC(&qword_10032C4F8));

  v29 = UIHostingController.init(rootView:)();
  v30 = [v29 view];
  v32 = v48;
  v31 = v49;
  if (v30)
  {
    v33 = v30;
    sub_10002B6CC(&qword_10032C500);
    if (swift_dynamicCastClass())
    {
      v34 = static SafeAreaRegions.keyboard.getter();
      v36 = dispatch thunk of _UIHostingView.safeAreaRegions.modify();
      if ((*v35 & v34) != 0)
      {
        *v35 &= ~v34;
      }

      v36(&v51, 0);

      goto LABEL_12;
    }
  }

  v37 = Logger.common.unsafeMutableAddressor();
  (*(v32 + 16))(v50, v37, v31);
  v38 = v29;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    v43 = [v38 view];
    *(v41 + 4) = v43;
    *v42 = v43;
    _os_log_impl(&_mh_execute_header, v39, v40, "Unexpected type for hosting controller view: %@", v41, 0xCu);
    sub_10002C51C(v42, &qword_10032B670);
  }

  (*(v32 + 8))(v50, v31);
LABEL_12:
  sub_10003FF94(v18, type metadata accessor for RootView);
  return v29;
}

uint64_t type metadata accessor for RootView()
{
  result = qword_10032C568;
  if (!qword_10032C568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003F268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003F2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10002B6CC(&qword_10032C508);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003F3B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10002B6CC(&qword_10032C508);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10003F460()
{
  sub_10003F5D4();
  if (v0 <= 0x3F)
  {
    sub_10003F668();
    if (v1 <= 0x3F)
    {
      sub_10003F744();
      if (v2 <= 0x3F)
      {
        sub_10003F7D8();
        if (v3 <= 0x3F)
        {
          sub_10003F86C();
          if (v4 <= 0x3F)
          {
            sub_10003F8C4(319, &qword_10032C5B8, &qword_10032C4F0);
            if (v5 <= 0x3F)
            {
              sub_10003F8C4(319, &qword_10032C5C0, &qword_10032C148);
              if (v6 <= 0x3F)
              {
                sub_10003F918();
                if (v7 <= 0x3F)
                {
                  sub_10003F990();
                  if (v8 <= 0x3F)
                  {
                    sub_10003F9F8();
                    if (v9 <= 0x3F)
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

void sub_10003F5D4()
{
  if (!qword_10032C578)
  {
    type metadata accessor for UserPreferences();
    sub_10003F6FC(&qword_10032C4E8, type metadata accessor for UserPreferences);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10032C578);
    }
  }
}

void sub_10003F668()
{
  if (!qword_10032C580)
  {
    type metadata accessor for SiriCoordinator();
    sub_10003F6FC(&qword_10032C588, type metadata accessor for SiriCoordinator);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10032C580);
    }
  }
}

uint64_t sub_10003F6FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10003F744()
{
  if (!qword_10032C590)
  {
    type metadata accessor for ObservableThermalController();
    sub_10003F6FC(&qword_10032C598, type metadata accessor for ObservableThermalController);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10032C590);
    }
  }
}

void sub_10003F7D8()
{
  if (!qword_10032C5A0)
  {
    type metadata accessor for EmergencyModel();
    sub_10003F6FC(&qword_10032C5A8, type metadata accessor for EmergencyModel);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10032C5A0);
    }
  }
}

void sub_10003F86C()
{
  if (!qword_10032C5B0)
  {
    type metadata accessor for ApplicationSceneOverlayProvider();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10032C5B0);
    }
  }
}

void sub_10003F8C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10002CAF8(a3);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10003F918()
{
  if (!qword_10032C5C8)
  {
    sub_10002C9FC(255, &qword_10032C5D0);
    v0 = type metadata accessor for AnyPublisher();
    if (!v1)
    {
      atomic_store(v0, &qword_10032C5C8);
    }
  }
}

void sub_10003F990()
{
  if (!qword_10032C5D8)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for AnyPublisher();
    if (!v1)
    {
      atomic_store(v0, &qword_10032C5D8);
    }
  }
}

unint64_t sub_10003F9F8()
{
  result = qword_10032C5E0;
  if (!qword_10032C5E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10032C5E0);
  }

  return result;
}

uint64_t sub_10003FA68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1();
  }

  else
  {
  }
}

void sub_10003FA80(void *a1, uint64_t a2)
{
  v2 = (a2 & 0x7FFFFFFFFFFFFFFFLL);
}

void sub_10003FABC(void **a1)
{
  v3 = *(type metadata accessor for RootView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_10003DF40(a1, v4);
}

uint64_t sub_10003FB2C(uint64_t a1)
{
  v3 = *(type metadata accessor for RootView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10003E310(a1, v4);
}

unint64_t sub_10003FC14()
{
  result = qword_10032C660;
  if (!qword_10032C660)
  {
    sub_10002CAF8(&qword_10032C650);
    sub_10003FC98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C660);
  }

  return result;
}

unint64_t sub_10003FC98()
{
  result = qword_10032C668;
  if (!qword_10032C668)
  {
    sub_10002C9FC(255, &qword_10032B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C668);
  }

  return result;
}

uint64_t sub_10003FD00()
{
  v1 = (sub_10002B6CC(&qword_10032C638) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_10002B6CC(&qword_10032C670);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v0 + v2 + v1[11];

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10003FE0C()
{
  v1 = *(sub_10002B6CC(&qword_10032C638) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100069B58(v2);
}

void sub_10003FE90(void *a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    sub_10003FA80(a1, a2);
  }
}

id sub_10003FEE0(void *a1, uint64_t a2)
{
  v4 = (a2 & 0x7FFFFFFFFFFFFFFFLL);
  v2 = a1;

  return v4;
}

void sub_10003FF24(void *a1)
{
  type metadata accessor for RootView();

  sub_10003D0C0(a1);
}

uint64_t sub_10003FF94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10003FFF8(_BYTE *a1@<X8>)
{
  type metadata accessor for RootView();

  sub_10003E8A4(a1);
}

uint64_t sub_10004006C()
{
  v1 = type metadata accessor for RootView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  sub_10003FA68(*(v4 + 16), *(v4 + 24), *(v4 + 32));
  sub_10003FA68(*(v4 + 40), *(v4 + 48), *(v4 + 56));
  sub_10003FA78();

  v5 = *(v0 + v2 + 112);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    sub_10003FA80(*(v4 + 104), v5);
  }

  v6 = v4 + *(v1 + 40);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  sub_10002B6CC(&qword_10032C508);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100040248()
{
  type metadata accessor for RootView();

  return sub_10003E990();
}

uint64_t sub_1000402BC()
{
  type metadata accessor for RootView();

  return sub_10003D300();
}

unint64_t sub_10004032C()
{
  result = qword_10032C6F0;
  if (!qword_10032C6F0)
  {
    sub_10002CAF8(&qword_10032C6C0);
    sub_10003F6FC(&qword_10032C6D8, type metadata accessor for Home);
    sub_10003F6FC(&qword_10032D020, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C6F0);
  }

  return result;
}

uint64_t sub_100040418(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B6CC(&qword_10032C6B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000404F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10002B6CC(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100040560(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for RootView();

  sub_10003DC40(a1, a2);
}

unint64_t sub_1000405E0()
{
  result = qword_10032C730;
  if (!qword_10032C730)
  {
    sub_10002CAF8(&qword_10032C6A0);
    sub_100040698(&qword_10032C738, &qword_10032C698, &unk_100298490, sub_100040748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C730);
  }

  return result;
}

uint64_t sub_100040698(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10002CAF8(a2);
    a4();
    sub_10002CD18(&qword_10032C6F8, &qword_10032C700);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100040748()
{
  result = qword_10032C740;
  if (!qword_10032C740)
  {
    sub_10002CAF8(&qword_10032C690);
    sub_10003F6FC(&qword_10032C748, type metadata accessor for ApplicationSceneContainer);
    sub_10002CD18(&qword_10032C750, &qword_10032C758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C740);
  }

  return result;
}

uint64_t sub_100040830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000408A8()
{
  result = qword_10032C780;
  if (!qword_10032C780)
  {
    sub_10002CAF8(&qword_10032C778);
    sub_100040960();
    sub_10002CD18(&qword_10032C790, &qword_10032C798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C780);
  }

  return result;
}

unint64_t sub_100040960()
{
  result = qword_10032C788;
  if (!qword_10032C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C788);
  }

  return result;
}

uint64_t sub_1000409B4()
{
  v1 = type metadata accessor for RootView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  sub_10003FA68(*(v4 + 16), *(v4 + 24), *(v4 + 32));
  sub_10003FA68(*(v4 + 40), *(v4 + 48), *(v4 + 56));
  sub_10003FA78();

  v5 = *(v0 + v2 + 112);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    sub_10003FA80(*(v4 + 104), v5);
  }

  v6 = v4 + *(v1 + 40);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  sub_10002B6CC(&qword_10032C508);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100040BA0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RootView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

id sub_100040CFC()
{
  *&v0[OBJC_IVAR___CLBWindowSceneDelegate_window] = 0;
  v1 = OBJC_IVAR___CLBWindowSceneDelegate_openApplicationRequestPublisher;
  sub_10002B6CC(&unk_10032B690);
  swift_allocObject();
  *&v0[v1] = PassthroughSubject.init()();
  v2 = OBJC_IVAR___CLBWindowSceneDelegate_inlineWebsiteURLPublisher;
  sub_10002B6CC(&unk_10032C810);
  swift_allocObject();
  *&v0[v2] = PassthroughSubject.init()();
  *&v0[OBJC_IVAR___CLBWindowSceneDelegate_keyboardSceneUpdateTask] = 0;
  *&v0[OBJC_IVAR___CLBWindowSceneDelegate_keyboardSceneUpdateDelayInNanoseconds] = 1000000000;
  *&v0[OBJC_IVAR___CLBWindowSceneDelegate_currentApplication] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for WindowSceneDelegate();
  v3 = objc_msgSendSuper2(&v8, "init");
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:v5 selector:"willEnableSecureMode:" name:CLBWillEnableSecureModeNotification object:0];
  [v6 addObserver:v5 selector:"didDisableSecureMode:" name:CLBDidDisableSecureModeNotification object:0];

  return v5;
}

void sub_100040F28(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___CLBWindowSceneDelegate_currentApplication;
  v4 = *(v1 + OBJC_IVAR___CLBWindowSceneDelegate_currentApplication);
  if (a1)
  {
    if (v4)
    {
      v5 = a1;
      sub_1000427DC();
      v6 = v4;
      v7 = v5;
      LOBYTE(v5) = static NSObject.== infix(_:_:)();

      if (v5)
      {
        return;
      }
    }
  }

  else if (!v4)
  {
    return;
  }

  UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
  v8 = [objc_opt_self() defaultCenter];
  [v8 postNotificationName:CLBApplicationDidChangeNotification object:*(v2 + v3)];
}

void sub_100041034(void *a1, uint64_t a2)
{
  sub_100041A38(a1);
  v4 = OBJC_IVAR___CLBWindowSceneDelegate_currentApplication;
  v5 = *(a2 + OBJC_IVAR___CLBWindowSceneDelegate_currentApplication);
  *(a2 + OBJC_IVAR___CLBWindowSceneDelegate_currentApplication) = a1;
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v9 = a1;
    goto LABEL_7;
  }

  if (!a1 || (sub_1000427DC(), v6 = a1, v11 = v5, v7 = static NSObject.== infix(_:_:)(), v11, v8 = v11, (v7 & 1) == 0))
  {
LABEL_7:
    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
    v10 = [objc_opt_self() defaultCenter];
    [v10 postNotificationName:CLBApplicationDidChangeNotification object:*(a2 + v4)];

    v8 = v5;
  }
}

void sub_100041158(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR___CLBWindowSceneDelegate_currentApplication;
  v5 = *(a2 + OBJC_IVAR___CLBWindowSceneDelegate_currentApplication);
  *(a2 + OBJC_IVAR___CLBWindowSceneDelegate_currentApplication) = a1;
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v9 = a1;
    goto LABEL_7;
  }

  if (!a1 || (sub_1000427DC(), v6 = a1, v11 = v5, v7 = static NSObject.== infix(_:_:)(), v11, v8 = v11, (v7 & 1) == 0))
  {
LABEL_7:
    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
    v10 = [objc_opt_self() defaultCenter];
    [v10 postNotificationName:CLBApplicationDidChangeNotification object:*(a2 + v4)];

    v8 = v5;
  }
}

uint64_t sub_100041308(void *a1)
{
  v2 = sub_10002B6CC(&qword_10032C148);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v52 - v15;
  __chkstk_darwin(v14);
  v18 = &v52 - v17;
  v19 = [a1 type];
  if (v19 == 5)
  {
    if ([a1 context])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = 0u;
      v54 = 0u;
    }

    v55[0] = v53;
    v55[1] = v54;
    if (*(&v54 + 1))
    {
      v33 = swift_dynamicCast();
      (*(v6 + 56))(v4, v33 ^ 1u, 1, v5);
      if ((*(v6 + 48))(v4, 1, v5) != 1)
      {
        (*(v6 + 32))(v8, v4, v5);
        PassthroughSubject.send(_:)();
        (*(v6 + 8))(v8, v5);
        return 1;
      }
    }

    else
    {
      sub_10002C51C(v55, &qword_10032B680);
      (*(v6 + 56))(v4, 1, 1, v5);
    }

    sub_10002C51C(v4, &qword_10032C148);
    v34 = Logger.common.unsafeMutableAddressor();
    v35 = v10;
    v36 = *(v10 + 16);
    v37 = v9;
    v36(v13, v34, v9);
    v38 = a1;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unexpectedly missing URL for opening website inline: %@", v41, 0xCu);
      sub_10002C51C(v42, &qword_10032B670);
    }

    (*(v35 + 8))(v13, v37);
  }

  else if (v19 == 4)
  {
    v20 = [a1 openApplicationRequest];
    if (v20)
    {
      v21 = v20;
      if ([v20 isForeground])
      {
        *&v55[0] = v21;
        PassthroughSubject.send(_:)();

        return 1;
      }

      v44 = v9;
      v45 = Logger.common.unsafeMutableAddressor();
      (*(v10 + 16))(v18, v45, v9);
      v46 = v21;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        *(v49 + 4) = v46;
        *v50 = v21;
        v51 = v46;
        _os_log_impl(&_mh_execute_header, v47, v48, "Not handling non-foreground open application request: %@", v49, 0xCu);
        sub_10002C51C(v50, &qword_10032B670);
      }

      else
      {
        v51 = v47;
        v47 = v46;
      }

      (*(v10 + 8))(v18, v44);
    }

    else
    {
      v23 = Logger.common.unsafeMutableAddressor();
      v24 = v10;
      v25 = *(v10 + 16);
      v26 = v9;
      v25(v16, v23, v9);
      v27 = a1;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v27;
        *v31 = v27;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "Unexpectedly missing open application request: %@", v30, 0xCu);
        sub_10002C51C(v31, &qword_10032B670);
      }

      (*(v24 + 8))(v16, v26);
    }
  }

  return 0;
}

void sub_100041A38(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9)
  {
    v12 = [v9 canCoverBackButtonWithKeyboard] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = OBJC_IVAR___CLBWindowSceneDelegate_keyboardSceneUpdateTask;
  if (*&v2[OBJC_IVAR___CLBWindowSceneDelegate_keyboardSceneUpdateTask])
  {

    sub_10002B6CC(&qword_10032C1A0);
    Task.cancel()();
  }

  *&v2[v13] = 0;

  v14 = Logger.common.unsafeMutableAddressor();
  (*(v8 + 16))(v11, v14, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v15, v16, "Should show keyboard within app scene: %{BOOL}d", v17, 8u);
  }

  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v18 = [qword_100336870 sceneManager];
    [v18 setShouldShowKeyboardWithinAppScene:1];
  }

  else
  {
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    type metadata accessor for MainActor();
    v20 = v2;
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v20;
    *&v2[v13] = sub_1000AB448(0, 0, v6, &unk_1002985A0, v22);
  }
}

uint64_t sub_100041D78()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100041E28;

  return static Task<>.sleep(nanoseconds:)(1000000000);
}

uint64_t sub_100041E28()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100042020;
  }

  else
  {
    v4 = sub_100041F84;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100041F84()
{

  v1 = [qword_100336870 sceneManager];
  [v1 setShouldShowKeyboardWithinAppScene:0];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100042020()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1000420BC(uint64_t a1, const char *a2, char a3)
{
  v6 = v3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Logger.common.unsafeMutableAddressor();
  (*(v8 + 16))(v10, v11, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, a2, v14, 2u);
  }

  (*(v8 + 8))(v10, v7);
  result = *(v6 + OBJC_IVAR___CLBWindowSceneDelegate_window);
  if (result)
  {
    return [result setHidden:a3 & 1];
  }

  return result;
}

uint64_t sub_10004225C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

id sub_100042348()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WindowSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10004241C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10004245C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002E558;

  return sub_100041D78();
}

void sub_100042510()
{
  objc_opt_self();
  v1 = [objc_allocWithZone(UIWindow) initWithWindowScene:swift_dynamicCastObjCClassUnconditional()];
  v2 = *&v0[OBJC_IVAR___CLBWindowSceneDelegate_window];
  *&v0[OBJC_IVAR___CLBWindowSceneDelegate_window] = v1;
  v3 = v1;

  if (v3)
  {
    if ([objc_opt_self() usesInputSystemUI])
    {
      type metadata accessor for ClarityRootController();
      v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      *&v4[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_openApplicationRequestPublisher] = *&v0[OBJC_IVAR___CLBWindowSceneDelegate_openApplicationRequestPublisher];

      *&v4[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_inlineWebsiteURLPublisher] = *&v0[OBJC_IVAR___CLBWindowSceneDelegate_inlineWebsiteURLPublisher];

      v5 = swift_allocObject();
      *(v5 + 16) = v0;
      v6 = &v4[OBJC_IVAR____TtC12ClarityBoard21ClarityRootController_applicationDidUpdateHandler];
      *v6 = sub_1000427D4;
      v6[1] = v5;
      v7 = v0;
    }

    else
    {
      v8 = *&v0[OBJC_IVAR___CLBWindowSceneDelegate_openApplicationRequestPublisher];
      v9 = *&v0[OBJC_IVAR___CLBWindowSceneDelegate_inlineWebsiteURLPublisher];
      v10 = swift_allocObject();
      *(v10 + 16) = v0;
      v11 = v0;
      v4 = sub_10003EB50(v8, v9, sub_1000427CC, v10);
    }

    v12 = objc_opt_self();
    v14 = v4;
    v13 = [v12 currentDevice];
    [v13 setBatteryMonitoringEnabled:1];

    [v3 setRootViewController:v14];
    [v3 makeKeyAndVisible];
  }
}

uint64_t sub_100042794()
{

  return _swift_deallocObject(v0, 24);
}

unint64_t sub_1000427DC()
{
  result = qword_10032B730;
  if (!qword_10032B730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10032B730);
  }

  return result;
}

uint64_t sub_10004282C@<X0>(id a1@<X2>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = [a1 bundleIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  swift_getKeyPath();
  sub_100042CCC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v4 + 16);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 sharedInstance];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 standardBundleIdentifierForClarityBundleIdentifier:v13];

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  v15 = [objc_opt_self() applicationWithBundleIdentifier:v14];

  v16 = sub_10006F598(v6, v8);

  GeometryProxy.safeAreaInsets.getter();
  *a3 = v11;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v17;
  *(a3 + 32) = v18;
  *(a3 + 40) = v19;
  *(a3 + 48) = v20;
  v21 = *(type metadata accessor for AppProtectionShield(0) + 24);
  *(a3 + v21) = swift_getKeyPath();
  sub_10002B6CC(&qword_10032C720);
  swift_storeEnumTagMultiPayload();
  v22 = static SafeAreaRegions.all.getter();
  v23 = static Edge.Set.all.getter();
  result = sub_10002B6CC(&qword_10032C950);
  v25 = a3 + *(result + 36);
  *v25 = v22;
  *(v25 + 8) = v23;
  return result;
}

uint64_t sub_100042A4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{

  GeometryProxy.safeAreaInsets.getter();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v8;
  a4[4] = v9;
  a4[5] = v10;
  a4[6] = v11;
  v12 = *(type metadata accessor for ScreenTimeShield() + 24);
  *(a4 + v12) = swift_getKeyPath();
  sub_10002B6CC(&qword_10032C720);
  swift_storeEnumTagMultiPayload();
  v13 = static SafeAreaRegions.all.getter();
  LOBYTE(a3) = static Edge.Set.all.getter();
  result = sub_10002B6CC(&qword_10032C948);
  v15 = a4 + *(result + 36);
  *v15 = v13;
  v15[8] = a3;
  return result;
}

uint64_t sub_100042B1C()
{

  v1 = OBJC_IVAR____TtC12ClarityBoard31ApplicationSceneOverlayProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ApplicationSceneOverlayProvider()
{
  result = qword_10032C8B0;
  if (!qword_10032C8B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100042C1C()
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_100042CCC()
{
  result = qword_10032E240;
  if (!qword_10032E240)
  {
    type metadata accessor for AppProtectionCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032E240);
  }

  return result;
}

id sub_100042D68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002B6CC(&qword_10032C960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100298680;
  v4 = static Edge.Set.top.getter();
  *(inited + 32) = v4;
  v5 = static Edge.Set.leading.getter();
  *(inited + 33) = v5;
  v6 = static Edge.Set.trailing.getter();
  *(inited + 34) = v6;
  v7 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v4)
  {
    v7 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v5)
  {
    v7 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v6)
  {
    v7 = Edge.Set.init(rawValue:)();
  }

  v8 = static SafeAreaRegions.all.getter();
  v9 = static Color.clarityUIContentBackground.getter();
  v10 = static Color.primary.getter();
  *a2 = a1;
  *(a2 + 8) = v8;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = nullsub_4;
  *(a2 + 48) = 0;

  return a1;
}

uint64_t sub_100042F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100043324();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100042F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100043324();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100042FDC()
{
  sub_100043324();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_100043004(void *a1)
{
  v11 = a1;
  v2 = objc_allocWithZone(sub_10002B6CC(&qword_10032C958));
  v3 = a1;
  v4 = UIHostingController.init(rootView:)();
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];

    v8 = static SafeAreaRegions.keyboard.getter();
    v10 = UIHostingController.safeAreaRegions.modify();
    if ((*v9 & v8) != 0)
    {
      *v9 &= ~v8;
    }

    v10(&v11, 0);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100043150()
{
  result = qword_10032C968;
  if (!qword_10032C968)
  {
    sub_10002CAF8(&qword_10032C970);
    sub_1000431DC();
    sub_1000432BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C968);
  }

  return result;
}

unint64_t sub_1000431DC()
{
  result = qword_10032C978;
  if (!qword_10032C978)
  {
    sub_10002CAF8(&qword_10032C980);
    sub_100043268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C978);
  }

  return result;
}

unint64_t sub_100043268()
{
  result = qword_10032C988;
  if (!qword_10032C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C988);
  }

  return result;
}

unint64_t sub_1000432BC()
{
  result = qword_10032C990;
  if (!qword_10032C990)
  {
    sub_10002CAF8(&qword_10032C998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C990);
  }

  return result;
}

unint64_t sub_100043324()
{
  result = qword_10032C9A0;
  if (!qword_10032C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C9A0);
  }

  return result;
}

__n128 sub_100043378(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000433A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_1000433EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100043474()
{
  v1 = type metadata accessor for GeometryIndependentKeypad();
  __chkstk_darwin(v1);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002B6CC(&qword_10032C9A8);
  __chkstk_darwin(v4);
  v6 = (v26 - v5);
  if (*(v0 + 96))
  {
    v7 = swift_allocObject();
    v8 = *(v0 + 80);
    *(v7 + 80) = *(v0 + 64);
    *(v7 + 96) = v8;
    *(v7 + 112) = *(v0 + 96);
    v9 = *(v0 + 16);
    *(v7 + 16) = *v0;
    *(v7 + 32) = v9;
    v10 = *(v0 + 48);
    *(v7 + 48) = *(v0 + 32);
    *(v7 + 64) = v10;
    *v6 = sub_100043B58;
    v6[1] = v7;
    swift_storeEnumTagMultiPayload();
    sub_100043B60(v0, v26);
    sub_10002B6CC(&qword_10032C9B8);
    sub_10002CD18(&qword_10032C9C0, &qword_10032C9B8);
    sub_100043A44();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v12 = *(v0 + 16);
    v26[0] = *v0;
    v26[1] = v12;
    sub_10002B6CC(&qword_10032C9B0);
    v13 = v0;
    Binding.projectedValue.getter();
    v14 = v28;
    v15 = v29;
    v16 = v30;
    v17 = *(v0 + 32);
    v18 = *(v0 + 34);
    v19 = *(v0 + 56);
    v20 = *(v0 + 40);
    v21 = *(v0 + 48);
    v23 = *(v13 + 88);
    *&v26[0] = *(v13 + 80);
    v22 = *&v26[0];
    *&v28 = v23;
    *v3 = v14;
    *(v3 + 2) = v15;
    *(v3 + 3) = v16;
    *(v3 + 16) = v17;
    v3[34] = v18;
    *(v3 + 5) = v19;
    *(v3 + 6) = *(v13 + 64);
    v3[56] = *(v13 + 72);
    *(v3 + 8) = v20;
    *(v3 + 9) = v21;
    *(v3 + 10) = v22;
    *(v3 + 11) = v23;
    v24 = objc_opt_self();

    sub_100043984(v26, v27);
    sub_100043984(&v28, v27);
    v25 = [v24 defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    *&v3[*(v1 + 56)] = 0x4059000000000000;
    sub_1000439E0(v3, v6);
    swift_storeEnumTagMultiPayload();
    sub_10002B6CC(&qword_10032C9B8);
    sub_10002CD18(&qword_10032C9C0, &qword_10032C9B8);
    sub_100043A44();
    _ConditionalContent<>.init(storage:)();
    return sub_100043A9C(v3);
  }
}

void sub_1000437B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v4;
  sub_10002B6CC(&qword_10032C9B0);
  Binding.projectedValue.getter();
  v5 = v19;
  v6 = v20;
  v7 = v21;
  v8 = *(a1 + 32);
  v9 = *(a1 + 34);
  v10 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v14 = *(a1 + 88);
  *&v22[0] = *(a1 + 80);
  v13 = *&v22[0];
  *&v19 = v14;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 34) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = *(a1 + 64);
  *(a2 + 56) = *(a1 + 72);
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  v15 = type metadata accessor for GeometryIndependentKeypad();
  v16 = objc_opt_self();

  sub_100043984(v22, v18);
  sub_100043984(&v19, v18);
  v17 = [v16 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  *(a2 + *(v15 + 56)) = 0x4059000000000000;
}

uint64_t type metadata accessor for GeometryIndependentKeypad()
{
  result = qword_10032CA28;
  if (!qword_10032CA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000439E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeometryIndependentKeypad();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100043A44()
{
  result = qword_10032C9C8;
  if (!qword_10032C9C8)
  {
    type metadata accessor for GeometryIndependentKeypad();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032C9C8);
  }

  return result;
}

uint64_t sub_100043A9C(uint64_t a1)
{
  v2 = type metadata accessor for GeometryIndependentKeypad();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100043AF8()
{

  return _swift_deallocObject(v0, 113);
}

uint64_t sub_100043BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NSNotificationCenter.Publisher();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100043C6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NSNotificationCenter.Publisher();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100043D10()
{
  sub_100043E34(319, &qword_10032CA38, &type metadata for String, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_100043E34(319, &unk_10032CA40, &type metadata for CGFloat, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10003F9F8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NSNotificationCenter.Publisher();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100043E34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100043E84()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_100043EF0()
{
  result = qword_10032CB18;
  if (!qword_10032CB18)
  {
    sub_10002CAF8(&qword_10032CB20);
    sub_10002CD18(&qword_10032C9C0, &qword_10032C9B8);
    sub_100043A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032CB18);
  }

  return result;
}

uint64_t sub_100044010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_10004408C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100044108()
{
  swift_getWitnessTable();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100044148(uint64_t a1, uint64_t a2, uint64_t (*a3)@<X0>(uint64_t a1@<X8>), void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  swift_getOpaqueTypeMetadata2();
  v14 = a3;
  v15 = a4;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for InvertColorsOnlyInLightModeView();
  swift_getWitnessTable();
  v12 = sub_100046974;
  v13 = v8;
  v9 = type metadata accessor for DisablesMirroringViewController();
  WitnessTable = swift_getWitnessTable();
  sub_100086FE8(&v12, v9, WitnessTable);

  v12 = v14;
  v13 = v15;
  sub_100086FE8(&v12, v9, WitnessTable);
}

uint64_t sub_1000442BC@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v23[1] = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v10;
  v25 = v11;
  swift_getOpaqueTypeMetadata2();
  v24 = a2;
  v25 = a3;
  swift_getOpaqueTypeConformance2();
  v12 = type metadata accessor for InvertColorsOnlyInLightModeView();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v23 - v18;
  a1(v17);
  sub_10008633C(a2, a3, v16);
  (*(v7 + 8))(v9, a2);
  WitnessTable = swift_getWitnessTable();
  sub_100086FE8(v16, v12, WitnessTable);
  v21 = *(v13 + 8);
  v21(v16, v12);
  sub_100086FE8(v19, v12, WitnessTable);
  return (v21)(v19, v12);
}

uint64_t sub_10004461C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002B6CC(&qword_10032CD08);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v21[-v6];
  v8 = sub_10002B6CC(&qword_10032CD10);
  __chkstk_darwin(v8);
  v10 = &v21[-v9];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = sub_10002B6CC(&qword_10032CD18);
  (*(*(v11 - 8) + 16))(v7, a1, v11);
  v12 = &v7[*(v5 + 44)];
  v13 = v23;
  v14 = *&v21[8];
  v12[1] = v22;
  v12[2] = v13;
  *v12 = v14;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000404F8(v7, v10, &qword_10032CD08);
  v15 = &v10[*(v8 + 36)];
  v16 = v29;
  v15[4] = v28;
  v15[5] = v16;
  v15[6] = v30;
  v17 = v25;
  *v15 = v24;
  v15[1] = v17;
  v18 = v27;
  v15[2] = v26;
  v15[3] = v18;
  sub_1000404F8(v10, a2, &qword_10032CD10);
  result = sub_10002B6CC(&qword_10032CD20);
  v20 = a2 + *(result + 36);
  *v20 = 0x3FF0000000000000;
  *(v20 + 8) = 0;
  return result;
}

uint64_t sub_10004492C(uint64_t a1, uint64_t a2, void *a3)
{

  sub_10002B6CC(&qword_10032C9B0);
  Binding.wrappedValue.getter();
  v6._countAndFlagsBits = a2;
  v6._object = a3;
  String.append(_:)(v6);
  Binding.wrappedValue.setter();

  return (*(a1 + 64))(v7);
}

__n128 sub_100044A1C@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = static HorizontalAlignment.center.getter();
  sub_100044AF0(a1, a2, a3, v15);
  *&v14[7] = v15[0];
  *&v14[23] = v15[1];
  *&v14[39] = v15[2];
  *&v14[55] = v15[3];
  v9 = *(a3 + 48);
  v10 = *(a3 + 56);
  v11 = *(type metadata accessor for GeometryIndependentKeypad() + 56);
  *(a4 + 33) = *&v14[16];
  result = *&v14[32];
  *(a4 + 49) = *&v14[32];
  v13 = *(a3 + v11);
  *(a4 + 65) = *&v14[48];
  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 17) = *v14;
  *(a4 + 80) = *&v14[63];
  *(a4 + 88) = v9;
  *(a4 + 96) = v10;
  *(a4 + 104) = v13;
  *(a4 + 112) = 0;
  return result;
}

uint64_t sub_100044AF0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a1;
  v66 = a2;
  sub_100030970();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  v13 = a3;
  v14 = Text.font(_:)();
  v16 = v15;
  v63 = v17;
  v64 = v18;
  sub_100047B84(v8, v10, v12 & 1);

  v20 = HIBYTE(a2) & 0xF;
  v21 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v22 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    goto LABEL_68;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v59 = sub_100046BA8(a1, a2, 10);
    v61 = v60;

    if (v61)
    {
      goto LABEL_68;
    }

    v26 = v59;
    v24 = v13;
LABEL_63:
    if (*(v24 + 32) == 1)
    {
      v45 = v16;
      if ((*(v24 + 34) & 1) != 0 || v26)
      {
        sub_100044520();
        v46 = Text.init(_:tableName:bundle:comment:)();
        v48 = v47;
        v50 = v49;
        v51 = Text.font(_:)();
        v53 = v52;
        v62 = v14;
        v55 = v54;
        v57 = v56;
        sub_100047B84(v46, v48, v50 & 1);

        v58 = v55 & 1;
        v14 = v62;
        sub_100047B94(v51, v53, v58);

LABEL_70:
        sub_100047B94(v14, v45, v63 & 1);

        sub_100047BA4(v51, v53, v58, v57);
        sub_100047BE8(v51, v53, v58, v57);
        LOBYTE(v65) = v63 & 1;
        *a4 = v14;
        *(a4 + 8) = v45;
        *(a4 + 16) = v63 & 1;
        *(a4 + 24) = v64;
        *(a4 + 32) = v51;
        *(a4 + 40) = v53;
        *(a4 + 48) = v58;
        *(a4 + 56) = v57;
        sub_100047BE8(v51, v53, v58, v57);
        sub_100047B84(v14, v45, v63 & 1);
      }

LABEL_69:
      v51 = 0;
      v53 = 0;
      v58 = 0;
      v57 = 0;
      goto LABEL_70;
    }

LABEL_68:
    v45 = v16;
    goto LABEL_69;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v20 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v20 = result;
    }

    v23 = *v20;
    v24 = v13;
    if (v23 == 43)
    {
      if (v21 >= 1)
      {
        v33 = v21 - 1;
        if (v21 != 1)
        {
          v26 = 0;
          if (!v20)
          {
            goto LABEL_62;
          }

          v34 = (v20 + 1);
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            ++v34;
            if (!--v33)
            {
LABEL_53:
              LOBYTE(v20) = 0;
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_75;
    }

    if (v23 == 45)
    {
      if (v21 >= 1)
      {
        v25 = v21 - 1;
        if (v21 != 1)
        {
          v26 = 0;
          if (!v20)
          {
            goto LABEL_62;
          }

          v27 = (v20 + 1);
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v25)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_74;
    }

    if (v21)
    {
      v26 = 0;
      if (!v20)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v40 = *v20 - 48;
        if (v40 > 9)
        {
          break;
        }

        v41 = 10 * v26;
        if ((v26 * 10) >> 64 != (10 * v26) >> 63)
        {
          break;
        }

        v26 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
          break;
        }

        ++v20;
        if (!--v21)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_61;
  }

  v65 = a1;
  v66 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    v24 = v13;
    if (a1 == 45)
    {
      if (!v20)
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      if (--v20)
      {
        v26 = 0;
        v30 = &v65 + 1;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v26;
          if ((v26 * 10) >> 64 != (10 * v26) >> 63)
          {
            break;
          }

          v26 = v32 - v31;
          if (__OFSUB__(v32, v31))
          {
            break;
          }

          ++v30;
          if (!--v20)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v20)
    {
      v26 = 0;
      v42 = &v65;
      while (1)
      {
        v43 = *v42 - 48;
        if (v43 > 9)
        {
          break;
        }

        v44 = 10 * v26;
        if ((v26 * 10) >> 64 != (10 * v26) >> 63)
        {
          break;
        }

        v26 = v44 + v43;
        if (__OFADD__(v44, v43))
        {
          break;
        }

        v42 = (v42 + 1);
        if (!--v20)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_61:
    v26 = 0;
    LOBYTE(v20) = 1;
LABEL_62:
    if (v20)
    {
      goto LABEL_68;
    }

    goto LABEL_63;
  }

  if (v20)
  {
    v24 = v13;
    if (--v20)
    {
      v26 = 0;
      v37 = &v65 + 1;
      while (1)
      {
        v38 = *v37 - 48;
        if (v38 > 9)
        {
          break;
        }

        v39 = 10 * v26;
        if ((v26 * 10) >> 64 != (10 * v26) >> 63)
        {
          break;
        }

        v26 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          break;
        }

        ++v37;
        if (!--v20)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_100044FF8()
{
  sub_10002B6CC(&unk_10032BD50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100298680;
  *(v1 + 32) = &off_1002FD6A0;
  *(v1 + 40) = &off_1002FD6F0;
  *(v1 + 48) = &off_1002FD740;
  if (*(v0 + 34) == 1)
  {
    v1 = sub_100033034(1, 4, 1, v1);
    *(v1 + 16) = 4;
    *(v1 + 56) = &off_1002FD790;
  }

  return v1;
}

uint64_t sub_10004509C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for GeometryIndependentKeypad();
  v4 = v3 - 8;
  v27 = *(v3 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10002B6CC(&qword_10032CB28);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = *(v2 + 40);
  *v8 = static Alignment.center.getter();
  *(v8 + 1) = v10;
  *(v8 + 2) = v9;
  v8[24] = 0;
  *(v8 + 4) = v9;
  v8[40] = 0;
  v11 = sub_10002B6CC(&qword_10032CB30);
  sub_100045370(v2, &v8[*(v11 + 44)]);
  KeyPath = swift_getKeyPath();
  v13 = &v8[*(v6 + 36)];
  v14 = *(sub_10002B6CC(&qword_10032CB38) + 28);
  v15 = enum case for LayoutDirection.leftToRight(_:);
  v16 = type metadata accessor for LayoutDirection();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = KeyPath;
  sub_1000469A0();
  v17 = v26;
  View.accessibilityIdentifier(_:)();
  sub_10002C51C(v8, &qword_10032CB28);
  v18 = *(v4 + 60);
  sub_1000439E0(v2, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v20 = swift_allocObject();
  sub_100046A88(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v21 = sub_10002B6CC(&qword_10032CB60);
  v22 = *(v21 + 52);
  v23 = type metadata accessor for NSNotificationCenter.Publisher();
  result = (*(*(v23 - 8) + 16))(v17 + v22, v2 + v18, v23);
  v25 = (v17 + *(v21 + 56));
  *v25 = sub_100046AEC;
  v25[1] = v20;
  return result;
}

uint64_t sub_100045370@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = sub_10002B6CC(&qword_10032CB70);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  __chkstk_darwin(v3);
  v37[0] = v37 - v5;
  v6 = sub_10002B6CC(&qword_10032CB78);
  v7 = __chkstk_darwin(v6 - 8);
  v43 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v37 - v9;
  v11 = type metadata accessor for GeometryIndependentKeypad();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v39 = sub_10002B6CC(&qword_10032CB80);
  v14 = *(v39 - 8);
  v15 = __chkstk_darwin(v39);
  v40 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v37 - v17;
  v38 = a1;
  v45 = sub_100044FF8();
  v37[1] = swift_getKeyPath();
  sub_1000439E0(a1, v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  sub_100046A88(v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_10002B6CC(&qword_10032CB88);
  sub_10002B6CC(&qword_10032CB90);
  sub_10002CD18(&qword_10032CB98, &qword_10032CB88);
  sub_10004772C();
  v21 = v10;
  sub_10002CD18(&qword_10032CBA8, &qword_10032CB90);
  v22 = v18;
  v23 = v41;
  ForEach<>.init(_:id:content:)();
  v24 = v38;
  v25 = 1;
  if ((*(v38 + 34) & 1) == 0)
  {
    v26 = v37[0];
    *v37[0] = 0;
    *(v26 + 8) = 1;
    sub_100045BF0(v24, (v26 + *(v23 + 36)));
    sub_1000404F8(v26, v21, &qword_10032CB70);
    v25 = 0;
  }

  v27 = v21;
  (*(v42 + 56))(v21, v25, 1, v23);
  v28 = v14;
  v29 = *(v14 + 16);
  v30 = v39;
  v31 = v40;
  v29(v40, v22, v39);
  v32 = v43;
  sub_10003AFFC(v27, v43, &qword_10032CB78);
  v33 = v44;
  v29(v44, v31, v30);
  v34 = sub_10002B6CC(&qword_10032CBB0);
  sub_10003AFFC(v32, &v33[*(v34 + 48)], &qword_10032CB78);
  sub_10002C51C(v27, &qword_10032CB78);
  v35 = *(v28 + 8);
  v35(v22, v30);
  sub_10002C51C(v32, &qword_10032CB78);
  return (v35)(v31, v30);
}

uint64_t sub_100045860@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GeometryIndependentKeypad();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *a1;
  *a3 = 0;
  *(a3 + 8) = 1;
  sub_10002B6CC(&qword_10032CB90);
  v13[1] = v9;
  swift_getKeyPath();
  sub_1000439E0(a2, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_100046A88(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);

  sub_10002B6CC(&qword_10032BDC0);
  sub_10002B6CC(&qword_10032CBD0);
  sub_10002CD18(&qword_10032CC70, &qword_10032BDC0);
  sub_10002CD18(qword_10032CC78, &qword_10032CBD0);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100045A78(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for GeometryIndependentKeypad();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = *a1;
  v7 = a1[1];
  sub_1000439E0(a2, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_100046A88(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v11 = (v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v8;
  v11[1] = v7;
  v14 = v8;
  v15 = v7;
  v16 = a2;

  sub_10002B6CC(&qword_10032CBE0);
  sub_1000477BC();
  return Button.init(action:label:)();
}

uint64_t sub_100045BF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v61 = sub_10002B6CC(&qword_10032CBB8);
  __chkstk_darwin(v61);
  v63 = (&v56 - v3);
  v65 = sub_10002B6CC(&qword_10032CBC0);
  v58 = *(v65 - 8);
  __chkstk_darwin(v65);
  v57 = &v56 - v4;
  v5 = sub_10002B6CC(&qword_10032CBC8);
  v6 = __chkstk_darwin(v5 - 8);
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &v56 - v8;
  v9 = type metadata accessor for GeometryIndependentKeypad();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10002B6CC(&qword_10032CBD0);
  v59 = *(v64 - 8);
  v13 = __chkstk_darwin(v64);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v69 = &v56 - v15;
  sub_10002B6CC(&qword_10032CBD8);
  inited = swift_initStackObject();
  v56 = xmmword_100298850;
  *(inited + 16) = xmmword_100298850;
  v17 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v17;
  v18 = static Axis.Set.vertical.getter();
  *(inited + 33) = v18;
  v19 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v17)
  {
    v19 = Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() == v18)
  {
    v60 = v19;
  }

  else
  {
    v60 = Axis.Set.init(rawValue:)();
  }

  sub_1000439E0(a1, &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = (v20 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = sub_100046A88(v12, v22 + v20);
  v24 = (v22 + v21);
  *v24 = 48;
  v24[1] = 0xE100000000000000;
  __chkstk_darwin(v23);
  *(&v56 - 4) = v25;
  *(&v56 - 3) = v26;
  *(&v56 - 2) = a1;
  sub_10002B6CC(&qword_10032CBE0);
  sub_1000477BC();
  Button.init(action:label:)();
  if (*(a1 + 33))
  {
    goto LABEL_10;
  }

  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  v72 = *a1;
  v73 = v27;
  v74 = v28;
  sub_10002B6CC(&qword_10032C9B0);
  Binding.wrappedValue.getter();
  v30 = v70;
  v29 = v71;

  v31 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v31 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
LABEL_10:
    sub_1000439E0(a1, v12);
    v32 = swift_allocObject();
    v33 = sub_100046A88(v12, v32 + v20);
    __chkstk_darwin(v33);
    *(&v56 - 2) = a1;
    sub_10002B6CC(&qword_10032CC08);
    sub_10004792C();
    v34 = v57;
    Button.init(action:label:)();
    v35 = v58;
    v36 = v65;
    (*(v58 + 16))(v63, v34, v65);
    swift_storeEnumTagMultiPayload();
    sub_10002B6CC(&qword_10032CC48);
    sub_10002CD18(&qword_10032CC50, &qword_10032CBC0);
    sub_100047A9C();
    v37 = v66;
    _ConditionalContent<>.init(storage:)();
    (*(v35 + 8))(v34, v36);
  }

  else
  {
    v50 = swift_initStackObject();
    *(v50 + 16) = v56;
    v51 = static Axis.Set.horizontal.getter();
    *(v50 + 32) = v51;
    v52 = static Axis.Set.vertical.getter();
    *(v50 + 33) = v52;
    v53 = Axis.Set.init(rawValue:)();
    Axis.Set.init(rawValue:)();
    v54 = Axis.Set.init(rawValue:)();
    v37 = v66;
    if (v54 != v51)
    {
      v53 = Axis.Set.init(rawValue:)();
    }

    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v52)
    {
      v53 = Axis.Set.init(rawValue:)();
    }

    v55 = v63;
    *v63 = 0;
    *(v55 + 8) = 1;
    *(v55 + 9) = v53;
    swift_storeEnumTagMultiPayload();
    sub_10002B6CC(&qword_10032CC48);
    sub_10002CD18(&qword_10032CC50, &qword_10032CBC0);
    sub_100047A9C();
    _ConditionalContent<>.init(storage:)();
  }

  v38 = v59;
  v39 = *(v59 + 16);
  v40 = v62;
  v41 = v69;
  v42 = v64;
  v39(v62, v69, v64);
  v43 = v37;
  v44 = v37;
  v45 = v67;
  sub_10003AFFC(v43, v67, &qword_10032CBC8);
  v46 = v68;
  *v68 = 0;
  *(v46 + 8) = 1;
  *(v46 + 9) = v60;
  v47 = sub_10002B6CC(&qword_10032CC68);
  v39(v46 + *(v47 + 48), v40, v42);
  sub_10003AFFC(v45, v46 + *(v47 + 64), &qword_10032CBC8);
  sub_10002C51C(v44, &qword_10032CBC8);
  v48 = *(v38 + 8);
  v48(v41, v42);
  sub_10002C51C(v45, &qword_10032CBC8);
  return (v48)(v40, v42);
}

uint64_t sub_1000464B0()
{
  sub_10002B6CC(&qword_10032C9B0);
  Binding.wrappedValue.getter();

  v2 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v2 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    v3 = Binding.wrappedValue.getter();
    sub_100072368(v3);

    Binding.wrappedValue.setter();

    return (*(v0 + 64))(v4);
  }

  return result;
}

uint64_t sub_1000465C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.red.getter();
  v5 = Image.init(systemName:)();
  v6 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v8 = static Alignment.center.getter();
  v10 = v9;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  result = type metadata accessor for GeometryIndependentKeypad();
  v14 = *(a1 + *(result + 56));
  *a2 = v4;
  *(a2 + 8) = 256;
  *(a2 + 16) = v5;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = v6;
  *(a2 + 40) = v8;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = v12;
  *(a2 + 72) = v14;
  *(a2 + 80) = 0;
  return result;
}

void sub_1000466A8(uint64_t a1, uint64_t a2)
{
  Notification.object.getter();
  if (v29)
  {
    sub_100046B5C();
    if (swift_dynamicCast())
    {
      v3 = v20;
      v4 = [v20 characters];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v26 = v5;
      v27 = v7;
      __chkstk_darwin(v8);
      v19[2] = &v26;
      LOBYTE(v5) = sub_1000475A8(sub_100047654, v19, &off_1002FD7E0);
      swift_arrayDestroy();

      if (v5)
      {
        v9 = [v3 characters];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        v14 = *(a2 + 8);
        v16 = *(a2 + 16);
        v15 = *(a2 + 24);
        v26 = *a2;
        v13 = v26;
        v27 = v14;
        v28 = v16;
        v29 = v15;

        sub_10002B6CC(&qword_10032C9B0);
        Binding.wrappedValue.getter();
        v17._countAndFlagsBits = v10;
        v17._object = v12;
        String.append(_:)(v17);

        v20 = v13;
        v21 = v14;
        v22 = v16;
        v23 = v15;
        v19[5] = v24;
        v19[6] = v25;
        Binding.wrappedValue.setter();

        (*(a2 + 64))(v18);
      }

      else if ([v3 keyCode] == 42)
      {
        sub_1000464B0();
      }
    }
  }

  else
  {
    sub_10002C51C(&v26, &qword_10032B680);
  }
}

uint64_t sub_10004693C()
{

  return _swift_deallocObject(v0, 48);
}

unint64_t sub_1000469A0()
{
  result = qword_10032CB40;
  if (!qword_10032CB40)
  {
    sub_10002CAF8(&qword_10032CB28);
    sub_10002CD18(&qword_10032CB48, &qword_10032CB50);
    sub_10002CD18(&qword_10032CB58, &qword_10032CB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032CB40);
  }

  return result;
}

uint64_t sub_100046A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeometryIndependentKeypad();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100046AEC(uint64_t a1)
{
  v3 = *(type metadata accessor for GeometryIndependentKeypad() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1000466A8(a1, v4);
}

unint64_t sub_100046B5C()
{
  result = qword_10032CB68;
  if (!qword_10032CB68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10032CB68);
  }

  return result;
}

unsigned __int8 *sub_100046BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100047134();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
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
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
                  goto LABEL_127;
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

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100047134()
{
  v0 = String.subscript.getter();
  v4 = sub_1000471B4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000471B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100057AAC(v9, 0), v12 = sub_10004730C(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10004730C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10004752C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10004752C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10004752C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1000475A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100047654(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000476AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GeometryIndependentKeypad() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100045860(a1, v6, a2);
}

unint64_t sub_10004772C()
{
  result = qword_10032CBA0;
  if (!qword_10032CBA0)
  {
    sub_10002CAF8(&qword_10032BDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032CBA0);
  }

  return result;
}

unint64_t sub_1000477BC()
{
  result = qword_10032CBE8;
  if (!qword_10032CBE8)
  {
    sub_10002CAF8(&qword_10032CBE0);
    sub_10002CD18(&qword_10032CBF0, &qword_10032CBF8);
    sub_100047874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032CBE8);
  }

  return result;
}

unint64_t sub_100047874()
{
  result = qword_10032CC00;
  if (!qword_10032CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032CC00);
  }

  return result;
}

unint64_t sub_10004792C()
{
  result = qword_10032CC10;
  if (!qword_10032CC10)
  {
    sub_10002CAF8(&qword_10032CC08);
    sub_1000479B8();
    sub_100047874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032CC10);
  }

  return result;
}

unint64_t sub_1000479B8()
{
  result = qword_10032CC18;
  if (!qword_10032CC18)
  {
    sub_10002CAF8(&qword_10032CC20);
    sub_10002CD18(&qword_10032CC28, &qword_10032CC30);
    sub_10002CD18(&qword_10032CC38, &qword_10032CC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032CC18);
  }

  return result;
}

unint64_t sub_100047A9C()
{
  result = qword_10032CC58;
  if (!qword_10032CC58)
  {
    sub_10002CAF8(&qword_10032CC48);
    sub_100047B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032CC58);
  }

  return result;
}

unint64_t sub_100047B28()
{
  result = qword_10032CC60;
  if (!qword_10032CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032CC60);
  }

  return result;
}

uint64_t sub_100047B84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100047B94(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100047BA4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100047B94(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100047BE8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100047B84(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100047C2C()
{
  v1 = (type metadata accessor for GeometryIndependentKeypad() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[15];
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100047D3C(uint64_t *a1)
{
  v3 = *(type metadata accessor for GeometryIndependentKeypad() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100045A78(a1, v4);
}

uint64_t sub_100047DBC()
{
  v1 = (type metadata accessor for GeometryIndependentKeypad() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  v5 = v1[15];
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100047EE4()
{
  v1 = *(type metadata accessor for GeometryIndependentKeypad() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_10004492C(v0 + v2, v4, v5);
}

uint64_t sub_100047F74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100047FB0(uint64_t *a1, int a2)
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

uint64_t sub_100047FF8(uint64_t result, int a2, int a3)
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

__n128 sub_100048034(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100048048(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100048068(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1000480A8()
{
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for InvertColorsOnlyInLightModeView();
  swift_getWitnessTable();
  type metadata accessor for DisablesMirroringViewController();
  return swift_getWitnessTable();
}

void sub_1000481F4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  __chkstk_darwin(a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SecureHostingController();
  a1();
  v8 = sub_1000398F4(v7);
  (*(v5 + 8))(v7, a3);
  v9 = v8;
  v10 = [v9 view];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 layer];

    [v12 setDisableUpdateMask:18];
    v13 = [v9 view];

    if (v13)
    {
      v14 = [objc_opt_self() clearColor];
      [v13 setBackgroundColor:v14];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000483A8(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2(v1);
  return dispatch thunk of UIHostingController.rootView.setter();
}

unint64_t sub_1000484BC()
{
  result = qword_10032CD28;
  if (!qword_10032CD28)
  {
    sub_10002CAF8(&qword_10032CD20);
    sub_100048548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032CD28);
  }

  return result;
}

unint64_t sub_100048548()
{
  result = qword_10032CD30;
  if (!qword_10032CD30)
  {
    sub_10002CAF8(&qword_10032CD10);
    sub_1000485D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032CD30);
  }

  return result;
}

unint64_t sub_1000485D4()
{
  result = qword_10032CD38;
  if (!qword_10032CD38)
  {
    sub_10002CAF8(&qword_10032CD08);
    sub_10002CD18(&unk_10032CD40, &qword_10032CD18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032CD38);
  }

  return result;
}

uint64_t CLBOrientationUpdateReason.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0xD000000000000015;
    }

    if (a1 == 3)
    {
      return 0xD00000000000001FLL;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x7220656369766564;
    }

    if (a1 == 1)
    {
      return 0xD000000000000020;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000487BC(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for LayoutDirection();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002B6CC(&qword_10032CED0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = *v2;
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  (*(v8 + 16))(&v36 - v9, a1, v7);
  v14 = type metadata accessor for AppProtectionShield.ShieldViewController();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtCV12ClarityBoard19AppProtectionShield20ShieldViewController_shieldConfiguration];
  *v16 = v11;
  *(v16 + 1) = v12;
  v16[16] = v13;
  v38.receiver = v15;
  v38.super_class = v14;
  v17 = v11;
  v18 = v12;
  v19 = objc_msgSendSuper2(&v38, "initWithNibName:bundle:", 0, 0);
  sub_1000491B0();
  (*(v8 + 8))(v10, v7);
  objc_allocWithZone(sub_10002B6CC(&qword_10032CED8));
  v20 = v19;
  v21 = sub_10004993C(v20, &qword_10032CED8);
  type metadata accessor for AppProtectionShield(0);
  sub_10004A14C(&qword_10032C720, &type metadata accessor for LayoutDirection, v6);
  sub_1000B67CC(v6);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = (*(v4 + 8))(v6, v37);
  v31 = (v21 + qword_10032F2D0);
  v30.f64[0] = *(v21 + qword_10032F2D0);
  v32 = *(v21 + qword_10032F2D0 + 8);
  v33.f64[0] = *(v21 + qword_10032F2D0 + 16);
  v34 = *(v21 + qword_10032F2D0 + 24);
  *v31 = v23;
  v31[1] = v25;
  v31[2] = v27;
  v31[3] = v29;
  sub_100049E08(v30, v32, v33, v34);

  return v21;
}

void sub_100048A98(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LayoutDirection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppProtectionShield(0);
  sub_10004A14C(&qword_10032C720, &type metadata accessor for LayoutDirection, v7);
  sub_1000B67CC(v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = (*(v5 + 8))(v7, v4);
  v17 = (a1 + qword_10032F2D0);
  v16.f64[0] = *(a1 + qword_10032F2D0);
  v18 = *(a1 + qword_10032F2D0 + 8);
  v19.f64[0] = *(a1 + qword_10032F2D0 + 16);
  v20 = *(a1 + qword_10032F2D0 + 24);
  *v17 = v9;
  v17[1] = v11;
  v17[2] = v13;
  v17[3] = v15;
  sub_100049E08(v16, v18, v19, v20);
  v21 = *(a1 + qword_10032F2C8);
  v22 = *v1;
  v23 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v24 = v21;
  sub_100049020(v22, v23, v2);
}

uint64_t sub_100048C4C(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Logger.common.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v8, v4);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 67109378;
    *(v11 + 4) = a1 & 1;
    *(v11 + 8) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v11 + 10) = v13;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "AppProtection shield auth retry result: %{BOOL}d error: %@", v11, 0x12u);
    sub_10002E7BC(v12);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100048F14()
{
  result = type metadata accessor for AppProtectionShield(319);
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

void sub_100049020(void *a1, void *a2, char a3)
{
  v6 = a3 & 1;
  v7 = v3 + OBJC_IVAR____TtCV12ClarityBoard19AppProtectionShield20ShieldViewController_shieldConfiguration;
  if (*(v3 + OBJC_IVAR____TtCV12ClarityBoard19AppProtectionShield20ShieldViewController_shieldConfiguration + 16) != (a3 & 1))
  {
LABEL_2:
    v8 = *v7;
    v9 = *(v7 + 8);
    *v7 = a1;
    *(v7 + 8) = a2;
    *(v7 + 16) = v6;
    v10 = a1;
    v11 = a2;

    sub_1000491B0();
    return;
  }

  v12 = [*(v7 + 8) bundleIdentifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [a2 bundleIdentifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v13 != v17 || v15 != v19)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      return;
    }

    goto LABEL_2;
  }
}

void sub_1000491B0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtCV12ClarityBoard19AppProtectionShield20ShieldViewController_shieldConfiguration];
  if (v0[OBJC_IVAR____TtCV12ClarityBoard19AppProtectionShield20ShieldViewController_shieldConfiguration + 16] == 1)
  {
    v3 = [objc_allocWithZone(APBaseShieldViewConfig) initWithApplication:*(v2 + 1)];
    sub_10002B6CC(&qword_10032CED0);
    UIViewControllerRepresentableContext.coordinator.getter();
    [v3 setDelegate:v5];

    [v3 setOutlet:*v2];
    v4 = [objc_allocWithZone(APBaseShieldView) initWithConfig:v3];
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
  }

  [v1 setView:v4];
}

id sub_100049310(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000493C8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10002B6CC(&qword_10032CE18);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100049498(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10002B6CC(&qword_10032CE18);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100049548()
{
  sub_1000495CC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000495CC()
{
  if (!qword_10032CE88)
  {
    type metadata accessor for LayoutDirection();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10032CE88);
    }
  }
}

uint64_t sub_10004962C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049868(v2, v5);
  v6 = type metadata accessor for AppProtectionShield.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_100049868(v5, v7 + OBJC_IVAR____TtCV12ClarityBoard19AppProtectionShield11Coordinator_appProtectionShield);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, "init");
  result = sub_1000498CC(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_1000496F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004A0E0(&unk_10032CEE0);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100049770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004A0E0(&unk_10032CEE0);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000497F0()
{
  sub_10004A0E0(&unk_10032CEE0);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100049868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppProtectionShield(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000498CC(uint64_t a1)
{
  v2 = type metadata accessor for AppProtectionShield(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004993C(void *a1, uint64_t *a2)
{
  v4 = &v2[qword_10032F2D0];
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  *(v4 + 1) = v5;
  *&v2[qword_10032F2C8] = a1;
  v6 = a1;
  v38.receiver = v2;
  v38.super_class = sub_10002B6CC(a2);
  v7 = objc_msgSendSuper2(&v38, "initWithNibName:bundle:", 0, 0);
  v8 = v6;
  v9 = v7;
  [v9 addChildViewController:v8];
  v10 = [v8 view];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v9 view];

  if (!v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v12 addSubview:v11];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10002B6CC(&qword_10032B660);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100296710;
  v14 = [v9 view];

  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = [v14 topAnchor];

  v16 = [v11 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v13 + 32) = v17;
  v18 = [v9 view];

  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = [v18 bottomAnchor];

  v20 = [v11 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v13 + 40) = v21;
  v22 = [v9 view];

  if (v22)
  {
    v23 = [v22 leadingAnchor];

    v24 = [v11 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    *(v13 + 48) = v25;
    v26 = [v9 view];

    if (v26)
    {
      v27 = objc_opt_self();
      v28 = [v26 trailingAnchor];

      v29 = [v11 trailingAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];

      *(v13 + 56) = v30;
      sub_10004A094();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v27 activateConstraints:isa];

      [v8 didMoveToParentViewController:v9];
      return v9;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  _StringGuts.grow(_:)(26);

  v33 = [v8 description];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v37._countAndFlagsBits = v34;
  v37._object = v36;
  String.append(_:)(v37);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100049E08(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = &v4[qword_10032F2D0];
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&v4[qword_10032F2D0], a1), vceqq_f64(*&v4[qword_10032F2D0 + 16], a3)))) & 1) == 0)
  {
    v6 = [v4 view];
    if (v6)
    {
      v7 = v6;
      [v6 safeAreaInsets];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v4 additionalSafeAreaInsets];
      v20 = *v5 - (v9 - v16);
      v21 = v5[1] - (v11 - v17);
      v22 = v5[2] - (v13 - v18);
      v23 = v5[3] - (v15 - v19);

      [v4 setAdditionalSafeAreaInsets:{v20, v21, v22, v23}];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_100049F24(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  static os_log_type_t.fault.getter();
  v9 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_10004A5B4(a1, 0);
  (*(v5 + 8))(v7, v4);
  return *&v10[1];
}

unint64_t sub_10004A094()
{
  result = qword_10032B668;
  if (!qword_10032B668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10032B668);
  }

  return result;
}

uint64_t sub_10004A0E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppProtectionShield(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004A14C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002B6CC(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10003AFFC(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

void sub_10004A374()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.common.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v6, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Shield view unlock button was pressed, issuing retry challenge", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = [objc_opt_self() sharedGuard];
  v11 = *(v1 + OBJC_IVAR____TtCV12ClarityBoard19AppProtectionShield11Coordinator_appProtectionShield + 8);
  aBlock[4] = sub_100048C4C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100058D84;
  aBlock[3] = &unk_1002FED28;
  v12 = _Block_copy(aBlock);
  v13 = v11;
  [v10 authenticateForShieldDismissalForSubject:v13 completion:v12];

  _Block_release(v12);
}

uint64_t sub_10004A59C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004A5B4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10004A5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NSNotificationCenter.Publisher();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004A694(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NSNotificationCenter.Publisher();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ForgotAdminPasscodeButton()
{
  result = qword_10032CF68;
  if (!qword_10032CF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004A784()
{
  sub_10003F9F8();
  if (v0 <= 0x3F)
  {
    sub_10004A85C();
    if (v1 <= 0x3F)
    {
      sub_10004A8C0();
      if (v2 <= 0x3F)
      {
        type metadata accessor for NSNotificationCenter.Publisher();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10004A85C()
{
  if (!qword_10032CF80)
  {
    sub_10002CAF8(&qword_10032CF88);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10032CF80);
    }
  }
}

void sub_10004A8C0()
{
  if (!qword_10032CF90)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10032CF90);
    }
  }
}

uint64_t sub_10004A92C@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = type metadata accessor for ForgotAdminPasscodeButton();
  v3 = *(v2 - 8);
  v4 = v2 - 8;
  v51 = v2 - 8;
  __chkstk_darwin(v2 - 8);
  v58 = v5;
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002B6CC(&qword_10032CFD8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v48 - v9;
  v11 = sub_10002B6CC(&qword_10032CFE0);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  v56 = sub_10002B6CC(&qword_10032CFE8);
  v59 = *(v56 - 8);
  __chkstk_darwin(v56);
  v63 = &v48 - v14;
  v60 = sub_10002B6CC(&qword_10032CFF0);
  __chkstk_darwin(v60);
  v53 = &v48 - v15;
  v54 = v6;
  sub_10004D080(v1, v6);
  v57 = *(v3 + 80);
  v16 = (v57 + 16) & ~v57;
  v55 = v16;
  v17 = swift_allocObject();
  sub_10004D0F4(v6, v17 + v16);
  v64 = v1;
  v18 = v1;
  Button.init(action:label:)();
  sub_10002CD18(&unk_10032CFF8, &qword_10032CFD8);
  v50 = v13;
  View.accessibilityIdentifier(_:)();
  (*(v8 + 8))(v10, v7);
  v19 = *v1;
  v62 = v18;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v49 = v11;
  v22 = &v13[*(v11 + 36)];
  *v22 = KeyPath;
  v22[1] = sub_10004D1D4;
  v22[2] = v21;
  v48 = LocalizedStringKey.init(stringLiteral:)();
  v23 = v18 + *(v4 + 48);
  v24 = *v23;
  v25 = *(v23 + 8);
  v71 = v24;
  v72 = v25;
  v52 = sub_10002B6CC(&qword_10032B720);
  State.projectedValue.getter();
  v26 = sub_10004D1DC();
  v27 = v50;
  View.alert<A, B>(_:isPresented:actions:message:)();

  sub_10002C51C(v27, &qword_10032CFE0);
  v50 = LocalizedStringKey.init(stringLiteral:)();
  LODWORD(v48) = v28;
  v29 = v51;
  v30 = (v62 + *(v51 + 52));
  v31 = *v30;
  v32 = *(v30 + 1);
  v71 = v31;
  v72 = v32;
  State.projectedValue.getter();
  v65 = v49;
  v66 = &type metadata for EmptyView;
  v67 = &type metadata for Text;
  v68 = v26;
  v69 = &protocol witness table for EmptyView;
  v70 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v33 = v56;
  v34 = v53;
  v35 = v63;
  View.alert<A, B>(_:isPresented:actions:message:)();

  (*(v59 + 8))(v35, v33);
  v36 = *(v29 + 44);
  v37 = v62;
  v38 = v54;
  sub_10004D080(v62, v54);
  v39 = v55;
  v40 = swift_allocObject();
  sub_10004D0F4(v38, v40 + v39);
  v41 = v60;
  v42 = *(v60 + 52);
  v43 = type metadata accessor for NSNotificationCenter.Publisher();
  (*(*(v43 - 8) + 16))(v34 + v42, v37 + v36, v43);
  v44 = (v34 + *(v41 + 56));
  *v44 = sub_10004D3A4;
  v44[1] = v40;
  v45 = *(v37 + 64);
  LOBYTE(v65) = *(v37 + 56);
  v66 = v45;
  State.wrappedValue.getter();
  LOBYTE(v65) = v71;
  sub_10004D080(v37, v38);
  v46 = swift_allocObject();
  sub_10004D0F4(v38, v46 + v39);
  sub_10002CD18(&unk_10032D038, &qword_10032CFF0);
  View.onChange<A>(of:initial:_:)();

  return sub_10004D58C(v34);
}

void sub_10004B174()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ForgotAdminPasscodeButton();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_10004BEF0();
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
    [v14 setIsEphemeral:1];
    [v14 setAuthenticationType:2];
    [v14 setShouldPromptForPasswordOnly:1];
    [v14 setPresentingViewController:v13];
    v43 = v7;
    v15 = objc_opt_self();
    v41 = v13;
    v16 = v15;
    v17 = [v15 mainBundle];
    v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47._object = 0x80000001002C1F80;
    v18._object = 0x80000001002C1F60;
    v47._countAndFlagsBits = 0xD000000000000027;
    v18._countAndFlagsBits = 0xD00000000000001DLL;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v47);

    v20 = String._bridgeToObjectiveC()();

    [v14 setTitle:v20];

    v21 = [v16 mainBundle];
    v48._object = 0x80000001002C1FE0;
    v22._countAndFlagsBits = 0xD000000000000024;
    v22._object = 0x80000001002C1FB0;
    v48._countAndFlagsBits = 0xD00000000000008CLL;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v48);

    v24 = String._bridgeToObjectiveC()();

    [v14 setReason:v24];

    v25 = [v16 mainBundle];
    v49._object = 0xE90000000000006ELL;
    v49._countAndFlagsBits = 0x6F74747562204B4FLL;
    v26._countAndFlagsBits = 0xD000000000000021;
    v26._object = 0x80000001002C2070;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v49);

    v28 = String._bridgeToObjectiveC()();

    [v14 setDefaultButtonString:v28];

    v29 = *(v1 + 64);
    v45 = *(v1 + 56);
    v46 = v29;
    v44 = 1;
    sub_10002B6CC(&qword_10032B720);
    State.wrappedValue.setter();
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    v31 = v42;
    sub_10004D080(v1, v42);
    type metadata accessor for MainActor();
    v32 = v14;
    v33 = static MainActor.shared.getter();
    v34 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v35 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 16) = v33;
    *(v36 + 24) = &protocol witness table for MainActor;
    sub_10004D0F4(v31, v36 + v34);
    *(v36 + v35) = v32;
    sub_1000B85D8(0, 0, v11, &unk_100299000, v36);
  }

  else
  {
    v37 = Logger.common.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v37, v2);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Unable to find presenting view controller for Forgot Passcode button.", v40, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_10004B750@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002B6CC(&qword_10032D048);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  if (*a1 == 1)
  {
    v7 = String._bridgeToObjectiveC()();
    v8 = AXLocStringKeyForModel();

    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    LocalizedStringKey.init(_:)();
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
  }

  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12;
  v14 = type metadata accessor for Font.Design();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  static Font.system(size:weight:design:)();
  sub_10002C51C(v6, &qword_10032D048);
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_100047B84(v9, v11, v13 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_10004B984@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10004B9FC@<X0>(uint64_t a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = MGGetBoolAnswer();

  if (v3)
  {
    v4 = 0x4E414C575FLL;
  }

  else
  {
    v4 = 0x494649575FLL;
  }

  v5 = 0xE500000000000000;
  String.append(_:)(*&v4);

  LocalizedStringKey.init(_:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v9;
  return result;
}

void sub_10004BAD8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v27[-v7];
  __chkstk_darwin(v6);
  v10 = &v27[-v9];
  v11 = *(v0 + 64);
  v27[16] = *(v0 + 56);
  v28 = v11;
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.getter();
  if (v27[15] == 1)
  {
    v12 = sub_10004BEF0();
    if (v12)
    {
      v13 = v12;
      v14 = [v12 presentedViewController];
      if (v14)
      {

        v15 = Logger.common.unsafeMutableAddressor();
        (*(v2 + 16))(v10, v15, v1);
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Dismissing authentication view controller because secure mode was enabled.", v18, 2u);
        }

        (*(v2 + 8))(v10, v1);
        [v13 dismissViewControllerAnimated:0 completion:0];
      }

      else
      {
        v23 = Logger.common.unsafeMutableAddressor();
        (*(v2 + 16))(v8, v23, v1);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "Authentication view controller was presented, but unable to find presented view controller.", v26, 2u);
        }

        (*(v2 + 8))(v8, v1);
      }
    }

    else
    {
      v19 = Logger.common.unsafeMutableAddressor();
      (*(v2 + 16))(v5, v19, v1);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Authentication view controller was presented, but unable to find presenting view controller.", v22, 2u);
      }

      (*(v2 + 8))(v5, v1);
    }
  }
}

void sub_10004BE54()
{
  v0 = [qword_100336870 sceneManager];
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.getter();
  [v0 setNeedsKeyboardForAdminScene:v1];
}

id sub_10004BEF0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v33 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10004D0E8(v12, 0);
    (*(v9 + 8))(v11, v8);
    v12 = v34;
    if (v34)
    {
      goto LABEL_3;
    }

LABEL_7:
    v21 = Logger.common.unsafeMutableAddressor();
    (*(v2 + 16))(v5, v21, v1);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unexpectedly missing scene session for Forgot Passcode button.", v24, 2u);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  v13 = v12;
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = [v12 scene];
  if (v14)
  {
    v15 = v14;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = [v16 keyWindow];
      v18 = [v17 rootViewController];

      return v18;
    }
  }

  v25 = Logger.common.unsafeMutableAddressor();
  (*(v2 + 16))(v7, v25, v1);
  v26 = v12;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    v31 = [v26 scene];
    *(v29 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unexpected type for scene for Forgot Passcode button: %@", v29, 0xCu);
    sub_10002C51C(v30, &qword_10032B670);

    v32 = v26;
  }

  else
  {
    v32 = v27;
    v27 = v26;
  }

  (*(v2 + 8))(v7, v1);
  return 0;
}

uint64_t sub_10004C338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = type metadata accessor for Logger();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[31] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[32] = v8;
  v5[33] = v7;

  return _swift_task_switch(sub_10004C438, v8, v7);
}

uint64_t sub_10004C438()
{
  v1 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  v0[34] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[26];
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_10004C584;
    v4 = swift_continuation_init();
    v0[17] = sub_10002B6CC(&unk_10032D058);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10004CB48;
    v0[13] = &unk_1002FEE18;
    v0[14] = v4;
    [v2 authenticateWithContext:v3 completion:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_10004C584()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 264);
  v4 = *(v1 + 256);
  if (v2)
  {
    v5 = sub_10004C78C;
  }

  else
  {
    v5 = sub_10004C6B4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10004C6B4()
{
  v1 = *(v0 + 272);

  v2 = *(v0 + 176);

  sub_10004CC50(v2);

  v3 = *(v0 + 200);
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  *(v0 + 144) = v4;
  *(v0 + 152) = v5;
  *(v0 + 288) = 0;
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.setter();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10004C78C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  swift_willThrow();

  *(v0 + 184) = v2;
  swift_errorRetain();
  sub_10002B6CC(&qword_10032C1A0);
  sub_10004D86C();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v19 = *(v0 + 216);

    v20 = Logger.common.unsafeMutableAddressor();
    (*(v18 + 16))(v17, v20, v19);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Apple ID authentication error: %@", v23, 0xCu);
      sub_10002C51C(v24, &qword_10032B670);
    }

    else
    {
    }

    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    goto LABEL_11;
  }

  v3 = *(v0 + 192);
  if ([v3 code] != -7005)
  {

    goto LABEL_7;
  }

  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);

  v7 = Logger.common.unsafeMutableAddressor();
  (*(v6 + 16))(v4, v7, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Attempted to exit Assistive Access via Apple ID, but Apple ID server could not be found.", v10, 2u);
  }

  v11 = *(v0 + 240);
  v12 = *(v0 + 216);
  v13 = *(v0 + 224);
  v14 = *(v0 + 200);

  (*(v13 + 8))(v11, v12);
  v15 = v14 + *(type metadata accessor for ForgotAdminPasscodeButton() + 44);
  v16 = *(v15 + 8);
  *(v0 + 160) = *v15;
  *(v0 + 168) = v16;
  *(v0 + 289) = 1;

  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.setter();

LABEL_11:
  v26 = *(v0 + 200);
  v27 = *(v26 + 56);
  v28 = *(v26 + 64);
  *(v0 + 144) = v27;
  *(v0 + 152) = v28;
  *(v0 + 288) = 0;
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.setter();

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10004CB48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10004D8B8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10002B6CC(&qword_10032C1A0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_10002B6CC(&unk_10032D070);
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10004CC50(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - v10;
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  if (!a1)
  {
    goto LABEL_9;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

LABEL_9:
    v19 = Logger.common.unsafeMutableAddressor();
    (*(v5 + 16))(v8, v19, v4);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Unable to find authenticated Apple ID in authentication results.", v22, 2u);
    }

    return (*(v5 + 8))(v8, v4);
  }

  v16 = sub_1000884C0(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_9;
  }

  v40 = *(*(a1 + 56) + 8 * v16);
  swift_unknownObjectRetain();
  sub_10002B6CC(&unk_10032D070);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v38 == *(v2 + 8) && v39 == *(v2 + 16))
  {

LABEL_14:
    v25 = Logger.common.unsafeMutableAddressor();
    (*(v5 + 16))(v13, v25, v4);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Exiting Assistive Access via Apple ID.", v28, 2u);
    }

    v29 = (*(v5 + 8))(v13, v4);
    return (*(v2 + 24))(v29);
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_14;
  }

  v30 = Logger.common.unsafeMutableAddressor();
  (*(v5 + 16))(v11, v30, v4);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Attempted to exit Assistive Access via Apple ID, but Apple ID did not match.", v33, 2u);
  }

  (*(v5 + 8))(v11, v4);
  v34 = (v2 + *(type metadata accessor for ForgotAdminPasscodeButton() + 40));
  v35 = *v34;
  v36 = *(v34 + 1);
  LOBYTE(v38) = v35;
  v39 = v36;
  LOBYTE(v40) = 1;
  sub_10002B6CC(&qword_10032B720);
  return State.wrappedValue.setter();
}

uint64_t sub_10004D080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForgotAdminPasscodeButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10004D0E8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10004D0F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForgotAdminPasscodeButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004D1DC()
{
  result = qword_10032D008;
  if (!qword_10032D008)
  {
    sub_10002CAF8(&qword_10032CFE0);
    sub_10004D294();
    sub_10002CD18(&unk_10032FEE0, &qword_10032D030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D008);
  }

  return result;
}

unint64_t sub_10004D294()
{
  result = qword_10032D010;
  if (!qword_10032D010)
  {
    sub_10002CAF8(&qword_10032D018);
    sub_10002CD18(&unk_10032CFF8, &qword_10032CFD8);
    sub_10004D34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D010);
  }

  return result;
}

unint64_t sub_10004D34C()
{
  result = qword_10032D020;
  if (!qword_10032D020)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D020);
  }

  return result;
}

uint64_t sub_10004D400()
{
  v1 = (type metadata accessor for ForgotAdminPasscodeButton() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  sub_10004D0E8(*(v0 + v2 + 40), *(v0 + v2 + 48));

  v4 = v1[11];
  v5 = type metadata accessor for NSNotificationCenter.Publisher();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_10004D52C()
{
  type metadata accessor for ForgotAdminPasscodeButton();

  sub_10004BE54();
}

uint64_t sub_10004D58C(uint64_t a1)
{
  v2 = sub_10002B6CC(&qword_10032CFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004D5F4()
{
  v1 = (type metadata accessor for ForgotAdminPasscodeButton() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  sub_10004D0E8(*(v4 + 40), *(v4 + 48));

  v5 = v1[11];
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10004D734(uint64_t a1)
{
  v4 = *(type metadata accessor for ForgotAdminPasscodeButton() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002E558;

  return sub_10004C338(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_10004D86C()
{
  result = qword_10032D068;
  if (!qword_10032D068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10032D068);
  }

  return result;
}

void *sub_10004D8B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10004D8FC()
{
  sub_10002CAF8(&qword_10032CFF0);
  sub_10002CD18(&unk_10032D038, &qword_10032CFF0);
  return swift_getOpaqueTypeConformance2();
}

id sub_10004D9B0()
{
  v1 = [v0 alertTitle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = [v0 alertMessage];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  *(swift_allocObject() + 16) = v0;
  v3 = v0;
  State.init(wrappedValue:)();
  v4 = objc_allocWithZone(sub_10002B6CC(&qword_10032BD28));
  v5 = UIHostingController.init(rootView:)();
  result = [v5 view];
  if (result)
  {
    v7 = result;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor:v8];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004DB88()
{

  return _swift_deallocObject(v0, 24);
}

BOOL sub_10004DBD0()
{
  v4 = *(v0 + 40);
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.getter();
  if (v3)
  {
    return 1;
  }

  type metadata accessor for ObservableThermalController();
  sub_100053DE0(&qword_10032C598, type metadata accessor for ObservableThermalController);
  v2 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v4 == 5;
}

uint64_t sub_10004DCF8()
{
  v1 = *(v0 + 24);
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.getter();
  v1(v3);
  result = State.wrappedValue.getter();
  if ((v3 & 1) == 0)
  {
    State.wrappedValue.getter();
    return State.wrappedValue.setter();
  }

  return result;
}

id sub_10004DDE0()
{
  v0 = objc_allocWithZone(type metadata accessor for ObservableThermalController());

  return [v0 init];
}

uint64_t sub_10004DE18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for AdminSceneView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v31 = sub_10002B6CC(&qword_10032D190);
  __chkstk_darwin(v31);
  v8 = (&v30 - v7);
  *v8 = static Alignment.center.getter();
  v8[1] = v9;
  v10 = sub_10002B6CC(&qword_10032D198);
  sub_10004E218(v1, (v8 + *(v10 + 44)));
  v11 = static Edge.Set.bottom.getter();
  *(v8 + *(sub_10002B6CC(&qword_10032D1A0) + 36)) = v11;
  v30 = *v2;
  v12 = v30;
  sub_1000529F4(v2, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_100052A5C(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  v15 = sub_10002B6CC(&qword_10032D1A8);
  *(v8 + *(v15 + 52)) = v12;
  v16 = (v8 + *(v15 + 56));
  *v16 = sub_100052AC0;
  v16[1] = v14;
  v17 = *(v4 + 80);
  sub_1000529F4(v2, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = swift_allocObject();
  sub_100052A5C(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v13);
  v19 = sub_10002B6CC(&qword_10032D1B0);
  v20 = *(v19 + 52);
  v21 = type metadata accessor for NSNotificationCenter.Publisher();
  (*(*(v21 - 8) + 16))(v8 + v20, &v2[v17], v21);
  v22 = (v8 + *(v19 + 56));
  *v22 = sub_100052B30;
  v22[1] = v18;
  sub_1000529F4(v2, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  sub_100052A5C(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v13);
  v24 = (v8 + *(v31 + 36));
  *v24 = sub_100052B8C;
  v24[1] = v23;
  v24[2] = 0;
  v24[3] = 0;

  v33 = sub_10004DBD0();
  sub_1000529F4(v2, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  sub_100052A5C(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v13);
  sub_100052C64();
  v26 = v32;
  View.onChange<A>(of:initial:_:)();

  sub_10002C51C(v8, &qword_10032D190);
  sub_1000529F4(v2, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_100052A5C(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v13);
  v28 = (v26 + *(sub_10002B6CC(&qword_10032D1C8) + 36));
  type metadata accessor for _TaskModifier();
  result = static TaskPriority.userInitiated.getter();
  *v28 = &unk_1002990E8;
  v28[1] = v27;
  return result;
}

uint64_t sub_10004E218@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v235 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v223 = *(v3 - 8);
  v224 = v3;
  __chkstk_darwin(v3);
  v222 = &v181 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OpacityTransition();
  v219 = *(v5 - 8);
  v220 = v5;
  v6 = __chkstk_darwin(v5);
  v217 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v218 = &v181 - v8;
  v9 = sub_10002B6CC(&qword_10032D1F0);
  v231 = *(v9 - 8);
  v232 = v9;
  __chkstk_darwin(v9);
  v221 = &v181 - v10;
  v11 = sub_10002B6CC(&qword_10032D1F8);
  v12 = __chkstk_darwin(v11 - 8);
  v234 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v233 = &v181 - v14;
  v15 = sub_10002B6CC(&qword_10032D200);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v216 = &v181 - v17;
  v18 = sub_10002B6CC(&qword_10032D208);
  v213 = *(v18 - 8);
  v214 = v18;
  __chkstk_darwin(v18);
  v206 = &v181 - v19;
  v20 = sub_10002B6CC(&qword_10032D210);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v181 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v244 = &v181 - v24;
  v25 = sub_10002B6CC(&qword_10032D218);
  __chkstk_darwin(v25 - 8);
  v204 = &v181 - v26;
  v27 = sub_10002B6CC(&qword_10032D220);
  v211 = *(v27 - 8);
  v212 = v27;
  v28 = __chkstk_darwin(v27);
  v203 = &v181 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v202 = &v181 - v30;
  v31 = sub_10002B6CC(&qword_10032D228);
  v32 = __chkstk_darwin(v31 - 8);
  v228 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v243 = &v181 - v34;
  v225 = type metadata accessor for MoveTransition();
  v240 = *(v225 - 8);
  v35 = __chkstk_darwin(v225);
  v238 = &v181 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v239 = &v181 - v37;
  v38 = sub_10002B6CC(&qword_10032D230);
  v208 = *(v38 - 8);
  v209 = v38;
  __chkstk_darwin(v38);
  v198 = &v181 - v39;
  v40 = sub_10002B6CC(&qword_10032D238);
  v41 = __chkstk_darwin(v40 - 8);
  v227 = &v181 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v242 = &v181 - v43;
  v44 = type metadata accessor for AdminSceneView();
  v210 = *(v44 - 8);
  __chkstk_darwin(v44 - 8);
  v236 = v45;
  v237 = &v181 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10002B6CC(&qword_10032D240);
  __chkstk_darwin(v46 - 8);
  v48 = &v181 - v47;
  v49 = sub_10002B6CC(&qword_10032D248);
  v50 = __chkstk_darwin(v49 - 8);
  v226 = &v181 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __chkstk_darwin(v50);
  v207 = &v181 - v53;
  __chkstk_darwin(v52);
  v241 = &v181 - v54;
  v55 = sub_10002B6CC(&qword_10032D250);
  v56 = __chkstk_darwin(v55 - 8);
  v230 = &v181 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v59 = &v181 - v58;
  v60 = *(a1 + 160);
  LOBYTE(v296) = *(a1 + 152);
  *(&v296 + 1) = v60;
  v61 = sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.getter();
  v229 = v285;
  v62 = *(a1 + 48);
  LOBYTE(v296) = *(a1 + 40);
  *(&v296 + 1) = v62;
  State.wrappedValue.getter();
  v245 = v59;
  if (v285 == 1)
  {
    v189 = v48;
    v215 = v23;
    v192 = v16;
    v193 = v15;
    v63 = *(a1 + 80);
    v196 = *(a1 + 72);
    LOBYTE(v285) = v196;
    v197 = v63;
    *(&v285 + 1) = v63;
    State.projectedValue.getter();
    v190 = *(&v296 + 1);
    v191 = v296;
    v188 = v297;
    v64 = *(a1 + 128);
    v199 = *(a1 + 120);
    LOBYTE(v285) = v199;
    v200 = v64;
    *(&v285 + 1) = v64;
    State.projectedValue.getter();
    v186 = *(&v296 + 1);
    v187 = v296;
    v185 = v297;
    v66 = *(a1 + 64);
    LOBYTE(v285) = *(a1 + 56);
    v65 = v285;
    *(&v285 + 1) = v66;
    State.projectedValue.getter();
    v183 = *(&v296 + 1);
    v184 = v296;
    v182 = v297;
    v67 = *(a1 + 144);
    v194 = *(a1 + 136);
    LOBYTE(v285) = v194;
    v195 = v67;
    *(&v285 + 1) = v67;
    State.projectedValue.getter();
    v68 = v296;
    v181 = v297;
    v246 = a1;
    v69 = v237;
    sub_1000529F4(a1, v237);
    v70 = (*(v210 + 80) + 16) & ~*(v210 + 80);
    v210 = *(v210 + 80);
    v71 = swift_allocObject();
    v201 = v70;
    sub_100052A5C(v69, v71 + v70);
    *&v309 = v191;
    *(&v309 + 1) = v190;
    LOBYTE(v310) = v188;
    *(&v310 + 1) = v187;
    *&v311 = v186;
    BYTE8(v311) = v185;
    *&v312 = v184;
    *(&v312 + 1) = v183;
    v313[0] = v182;
    *&v313[8] = v68;
    v313[24] = v181;
    *&v314 = sub_100053314;
    *(&v314 + 1) = v71;
    v315 = 0;
    LODWORD(v190) = v65;
    LOBYTE(v296) = v65;
    v191 = v66;
    *(&v296 + 1) = v66;
    State.wrappedValue.getter();
    if (v285 & 1) != 0 || (LOBYTE(v296) = v199, *(&v296 + 1) = v200, State.wrappedValue.getter(), (v285))
    {
      v72 = v246;
    }

    else
    {
      LOBYTE(v296) = v196;
      *(&v296 + 1) = v197;
      State.wrappedValue.getter();
      v72 = v246;
      if ((v285 & 1) == 0)
      {
        v73 = *(v246 + 112);
        LOBYTE(v296) = *(v246 + 104);
        *(&v296 + 1) = v73;
        State.wrappedValue.getter();
        if ((v285 & 1) == 0)
        {
          LOBYTE(v296) = v194;
          *(&v296 + 1) = v195;
          State.wrappedValue.getter();
          if ((v285 & 1) == 0)
          {
            type metadata accessor for ObservableThermalController();
            sub_100053DE0(&qword_10032C598, type metadata accessor for ObservableThermalController);
            v180 = StateObject.wrappedValue.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();
          }
        }
      }
    }

    sub_10002B6CC(&qword_10032D290);
    sub_10005332C();
    v74 = v189;
    View.accessibilityHidden(_:)();
    v307[4] = *v313;
    v307[5] = *&v313[16];
    v307[6] = v314;
    v308 = v315;
    v307[0] = v309;
    v307[1] = v310;
    v307[2] = v311;
    v307[3] = v312;
    sub_10002C51C(v307, &qword_10032D290);
    v75 = v207;
    sub_1000404F8(v74, v207, &qword_10032D240);
    sub_1000404F8(v75, v241, &qword_10032D248);
    LOBYTE(v296) = v194;
    *(&v296 + 1) = v195;
    State.wrappedValue.getter();
    v205 = v61;
    if (v285 == 1)
    {
      type metadata accessor for AccessibilityShortcutOptionsList();
      sub_100053DE0(&qword_10032D2F8, &type metadata accessor for AccessibilityShortcutOptionsList);
      v76 = v198;
      List<>.init(content:)();
      v77 = v237;
      sub_1000529F4(v72, v237);
      v78 = v201;
      v79 = swift_allocObject();
      sub_100052A5C(v77, v79 + v78);
      v80 = static Color.clarityUIContentBackground.getter();
      v81 = static Color.primary.getter();
      v82 = (v76 + *(sub_10002B6CC(&qword_10032D300) + 36));
      *v82 = sub_100053704;
      v82[1] = v79;
      v82[2] = v80;
      v82[3] = v81;
      *(v76 + *(sub_10002B6CC(&qword_10032D308) + 36)) = 0x3FF0000000000000;
      v83 = v239;
      MoveTransition.init(edge:)();
      v84 = v240;
      v85 = v225;
      (*(v240 + 16))(v238, v83, v225);
      sub_100053DE0(&qword_10032C728, &type metadata accessor for MoveTransition);
      v86 = AnyTransition.init<A>(_:)();
      (*(v84 + 8))(v83, v85);
      *(v76 + *(sub_10002B6CC(&qword_10032D310) + 36)) = v86;
      sub_1000529F4(v246, v77);
      v72 = v246;
      v87 = swift_allocObject();
      sub_100052A5C(v77, v87 + v78);
      v88 = v209;
      v89 = (v76 + *(v209 + 36));
      *v89 = 0;
      v89[1] = 0;
      v89[2] = sub_100053FBC;
      v89[3] = v87;
      v90 = v242;
      sub_1000404F8(v76, v242, &qword_10032D230);
      v91 = 0;
    }

    else
    {
      v91 = 1;
      v90 = v242;
      v77 = v237;
      v88 = v209;
    }

    (*(v208 + 56))(v90, v91, 1, v88);
    LOBYTE(v296) = v190;
    *(&v296 + 1) = v191;
    State.wrappedValue.getter();
    if (v285 == 1)
    {
      [objc_opt_self() settingEnabled];
      v92 = LocalizedStringKey.init(stringLiteral:)();
      v94 = v93;
      v96 = v95;
      v98 = v97;
      sub_1000529F4(v72, v77);
      v99 = v201;
      v100 = swift_allocObject();
      sub_100052A5C(v77, v100 + v99);
      *&v285 = 0;
      *(&v285 + 1) = 0xE000000000000000;
      State.init(wrappedValue:)();
      v101 = v296;
      v102 = v297;
      if (qword_10032B4C8 != -1)
      {
        swift_once();
      }

      v263 = v101;
      *&v264 = v102;
      *(&v264 + 1) = v92;
      *&v265 = v94;
      BYTE8(v265) = v96 & 1;
      *&v266 = v98;
      BYTE8(v266) = 1;
      v267 = 0uLL;
      *&v268 = sub_100053478;
      *(&v268 + 1) = v100;
      *&v269 = qword_100336880;
      v274 = v101;
      *&v275 = v102;
      *(&v275 + 1) = v92;
      *&v276 = v94;
      BYTE8(v276) = v96 & 1;
      *&v277 = v98;
      BYTE8(v277) = 1;
      v278 = 0uLL;
      *&v279 = sub_100053478;
      *(&v279 + 1) = v100;
      *&v280 = qword_100336880;
      sub_100053490(&v263, &v296);
      sub_1000534EC(&v274);
      v251 = v267;
      v252 = v268;
      v253 = v269;
      v247 = v263;
      v248 = v264;
      v249 = v265;
      v250 = v266;
      v103 = v239;
      MoveTransition.init(edge:)();
      v104 = v240;
      v105 = v225;
      (*(v240 + 16))(v238, v103, v225);
      sub_100053DE0(&qword_10032C728, &type metadata accessor for MoveTransition);
      v106 = AnyTransition.init<A>(_:)();
      (*(v104 + 8))(v103, v105);
      v289 = v251;
      v290 = v252;
      *&v291 = v253;
      v285 = v247;
      v286 = v248;
      v287 = v249;
      v288 = v250;
      *(&v291 + 1) = 0x3FF0000000000000;
      *&v292 = v106;
      v107 = *(v246 + 112);
      LOBYTE(v296) = *(v246 + 104);
      *(&v296 + 1) = v107;
      State.wrappedValue.getter();
      sub_10002B6CC(&qword_10032D2D0);
      sub_100053540();
      v108 = v204;
      View.accessibilityHidden(_:)();
      v300 = v289;
      v301 = v290;
      v302 = v291;
      *&v303 = v292;
      v296 = v285;
      v297 = v286;
      v298 = v287;
      v299 = v288;
      sub_10002C51C(&v296, &qword_10032D2D0);
      v109 = v203;
      sub_1000404F8(v108, v203, &qword_10032D218);
      v110 = v109;
      v111 = v202;
      sub_1000404F8(v110, v202, &qword_10032D220);
      v112 = v111;
      v113 = v243;
      sub_1000404F8(v112, v243, &qword_10032D220);
      (*(v211 + 56))(v113, 0, 1, v212);
      v77 = v237;
    }

    else
    {
      (*(v211 + 56))(v243, 1, 1, v212);
    }

    LOBYTE(v296) = v199;
    *(&v296 + 1) = v200;
    State.wrappedValue.getter();
    if (v285 == 1)
    {
      v114 = v246;
      type metadata accessor for EmergencyModel();
      sub_100053DE0(&qword_10032C5A8, type metadata accessor for EmergencyModel);
      v115 = StateObject.wrappedValue.getter();
      sub_1000529F4(v114, v77);
      v116 = v201;
      v117 = swift_allocObject();
      sub_100052A5C(v77, v117 + v116);
      *&v285 = 0;
      *(&v285 + 1) = 0xE000000000000000;
      State.init(wrappedValue:)();
      v118 = v297;
      v119 = v240;
      v120 = v206;
      *(v206 + 24) = v296;
      *(v120 + 40) = v118;
      LOBYTE(v285) = 0;
      State.init(wrappedValue:)();
      v121 = *(&v296 + 1);
      *(v120 + 48) = v296;
      *(v120 + 56) = v121;
      v122 = type metadata accessor for EmergencyDialerView();
      AccessibilityFocusState.init<>()();
      *(v120 + v122[9]) = 0x4034000000000000;
      *(v120 + v122[10]) = 0x4040000000000000;
      v123 = v122[11];
      *(v120 + v123) = [objc_opt_self() lockScreenConfiguration];
      *v120 = sub_100053470;
      *(v120 + 8) = v115;
      *(v120 + 16) = 0;
      v124 = (v120 + v122[8]);
      *v124 = sub_100053458;
      v124[1] = v117;
      *(v120 + *(sub_10002B6CC(&qword_10032D2C0) + 36)) = 0x3FF0000000000000;
      v125 = v239;
      MoveTransition.init(edge:)();
      v126 = v225;
      (*(v119 + 16))(v238, v125, v225);
      sub_100053DE0(&qword_10032C728, &type metadata accessor for MoveTransition);
      v127 = AnyTransition.init<A>(_:)();
      (*(v119 + 8))(v125, v126);
      *(v120 + *(sub_10002B6CC(&qword_10032D2C8) + 36)) = v127;
      v128 = v244;
      sub_1000404F8(v120, v244, &qword_10032D208);
      v129 = 0;
    }

    else
    {
      v129 = 1;
      v128 = v244;
      v126 = v225;
    }

    (*(v213 + 56))(v128, v129, 1, v214);
    LOBYTE(v296) = v196;
    *(&v296 + 1) = v197;
    State.wrappedValue.getter();
    if (v285 == 1)
    {
      v130 = static Alignment.center.getter();
      v132 = v131;
      v133 = v246;
      sub_1000506AC(v246, &v296);
      v269 = v302;
      v270 = v303;
      v265 = v298;
      v266 = v299;
      v267 = v300;
      v268 = v301;
      v263 = v296;
      v264 = v297;
      v280 = v302;
      v281 = v303;
      v276 = v298;
      v277 = v299;
      v278 = v300;
      v279 = v301;
      LOBYTE(v271) = v304;
      LOBYTE(v282) = v304;
      v274 = v296;
      v275 = v297;
      sub_10003AFFC(&v263, &v285, &qword_10032D2B8);
      sub_10002C51C(&v274, &qword_10032D2B8);
      v259 = v268;
      v260 = v269;
      v261 = v270;
      v255 = v264;
      v256 = v265;
      v257 = v266;
      v258 = v267;
      v262 = v271;
      v254 = v263;
      v134 = v239;
      MoveTransition.init(edge:)();
      v135 = v240;
      (*(v240 + 16))(v238, v134, v126);
      sub_100053DE0(&qword_10032C728, &type metadata accessor for MoveTransition);
      v136 = AnyTransition.init<A>(_:)();
      (*(v135 + 8))(v134, v126);
      v292 = v260;
      v293 = v261;
      v288 = v256;
      v289 = v257;
      *&v285 = v130;
      *(&v285 + 1) = v132;
      LOBYTE(v294) = v262;
      v290 = v258;
      v291 = v259;
      v286 = v254;
      v287 = v255;
      *(&v294 + 1) = v136;
      v295 = 0x3FF0000000000000;
      nullsub_4(&v285);
      v304 = v293;
      v305 = v294;
      v306 = v295;
      v300 = v289;
      v301 = v290;
      v302 = v291;
      v303 = v292;
      v296 = v285;
      v297 = v286;
      v298 = v287;
      v299 = v288;
    }

    else
    {
      sub_100053438(&v296);
      v133 = v246;
    }

    v137 = *(v133 + 112);
    LOBYTE(v285) = *(v133 + 104);
    *(&v285 + 1) = v137;
    State.wrappedValue.getter();
    if (v274 == 1)
    {
      v138 = v239;
      MoveTransition.init(edge:)();
      v139 = v240;
      (*(v240 + 16))(v238, v138, v126);
      sub_100053DE0(&qword_10032C728, &type metadata accessor for MoveTransition);
      v140 = AnyTransition.init<A>(_:)();
      (*(v139 + 8))(v138, v126);
      v240 = v140;

      v239 = 0x4000000000000000;
    }

    else
    {
      v239 = 0;
      v240 = 0;
    }

    v141 = v242;
    v142 = v226;
    sub_10003AFFC(v241, v226, &qword_10032D248);
    v143 = v227;
    sub_10003AFFC(v141, v227, &qword_10032D238);
    v144 = v228;
    sub_10003AFFC(v243, v228, &qword_10032D228);
    v145 = v215;
    sub_10003AFFC(v244, v215, &qword_10032D210);
    v271 = v304;
    v272 = v305;
    v273 = v306;
    v267 = v300;
    v268 = v301;
    v269 = v302;
    v270 = v303;
    v263 = v296;
    v264 = v297;
    v265 = v298;
    v266 = v299;
    v146 = v216;
    sub_10003AFFC(v142, v216, &qword_10032D248);
    v147 = sub_10002B6CC(&qword_10032D2A8);
    sub_10003AFFC(v143, v146 + v147[12], &qword_10032D238);
    sub_10003AFFC(v144, v146 + v147[16], &qword_10032D228);
    sub_10003AFFC(v145, v146 + v147[20], &qword_10032D210);
    v148 = v146 + v147[24];
    v149 = v270;
    v282 = v271;
    v283 = v272;
    v150 = v268;
    v151 = v269;
    v280 = v269;
    v281 = v270;
    v152 = v266;
    v153 = v267;
    v278 = v267;
    v279 = v268;
    v274 = v263;
    v275 = v264;
    v154 = v272;
    *(v148 + 128) = v271;
    *(v148 + 144) = v154;
    *(v148 + 64) = v153;
    *(v148 + 80) = v150;
    *(v148 + 96) = v151;
    *(v148 + 112) = v149;
    v155 = v264;
    *v148 = v263;
    *(v148 + 16) = v155;
    v156 = v265;
    v157 = v266;
    *(v148 + 32) = v265;
    *(v148 + 48) = v152;
    v284 = v273;
    *(v148 + 160) = v273;
    v158 = (v146 + v147[28]);
    v276 = v156;
    v277 = v157;
    sub_10003AFFC(&v274, &v285, &qword_10032D2B0);
    v159 = v240;
    *v158 = v239;
    v158[1] = v159;
    sub_10002C51C(v244, &qword_10032D210);
    sub_10002C51C(v243, &qword_10032D228);
    sub_10002C51C(v242, &qword_10032D238);
    sub_10002C51C(v241, &qword_10032D248);

    v293 = v271;
    v294 = v272;
    v295 = v273;
    v289 = v267;
    v290 = v268;
    v291 = v269;
    v292 = v270;
    v285 = v263;
    v286 = v264;
    v287 = v265;
    v288 = v266;
    sub_10002C51C(&v285, &qword_10032D2B0);
    sub_10002C51C(v215, &qword_10032D210);
    sub_10002C51C(v228, &qword_10032D228);
    sub_10002C51C(v227, &qword_10032D238);
    sub_10002C51C(v226, &qword_10032D248);
    v160 = v245;
    sub_1000404F8(v146, v245, &qword_10032D200);
    (*(v192 + 56))(v160, 0, 1, v193);
  }

  else
  {
    (*(v16 + 56))(v59, 1, 1, v15);
  }

  type metadata accessor for ObservableThermalController();
  sub_100053DE0(&qword_10032C598, type metadata accessor for ObservableThermalController);
  v161 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v296 == 5)
  {
    v162 = StateObject.wrappedValue.getter();
    v163 = sub_1000AF59C();

    v164 = v218;
    OpacityTransition.init()();
    v166 = v219;
    v165 = v220;
    (*(v219 + 16))(v217, v164, v220);
    sub_100053DE0(&qword_10032D260, &type metadata accessor for OpacityTransition);
    v167 = AnyTransition.init<A>(_:)();
    (*(v166 + 8))(v164, v165);
    LOBYTE(v296) = v163;
    *(&v296 + 1) = 0x4008000000000000;
    *&v297 = v167;
    v168 = v222;
    static AccessibilityTraits.isModal.getter();
    sub_10002B6CC(&qword_10032D268);
    sub_100053150();
    v169 = v221;
    View.accessibilityAddTraits(_:)();
    (*(v223 + 8))(v168, v224);

    v170 = v233;
    sub_1000404F8(v169, v233, &qword_10032D1F0);
    v171 = 0;
  }

  else
  {
    v171 = 1;
    v170 = v233;
  }

  (*(v231 + 56))(v170, v171, 1, v232);
  v172 = v229;
  if (v229)
  {
    v173 = 0xBFF0000000000000;
  }

  else
  {
    v173 = 0;
  }

  v174 = v245;
  v175 = v230;
  sub_10003AFFC(v245, v230, &qword_10032D250);
  v176 = v234;
  sub_10003AFFC(v170, v234, &qword_10032D1F8);
  v177 = v235;
  *v235 = v173;
  *(v177 + 8) = v172 ^ 1;
  v178 = sub_10002B6CC(&qword_10032D258);
  sub_10003AFFC(v175, v177 + *(v178 + 48), &qword_10032D250);
  sub_10003AFFC(v176, v177 + *(v178 + 64), &qword_10032D1F8);
  sub_10002C51C(v170, &qword_10032D1F8);
  sub_10002C51C(v174, &qword_10032D250);
  sub_10002C51C(v176, &qword_10032D1F8);
  return sub_10002C51C(v175, &qword_10032D250);
}

uint64_t sub_100050294(char a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimationCompletionCriteria();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Logger.common.unsafeMutableAddressor();
  (*(v9 + 16))(v11, v12, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v18[0] = v4;
    *v15 = 67109120;
    *(v15 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "Passcode entered. Success: %{BOOL}d", v15, 8u);
    v4 = v18[0];
  }

  v16 = (*(v9 + 8))(v11, v8);
  __chkstk_darwin(v16);
  LOBYTE(v18[-2]) = a1 & 1;
  v18[-1] = a2;
  *(swift_allocObject() + 16) = a1 & 1;
  static Animation.default.getter();
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v5 + 8))(v7, v4);
}

void sub_1000505F0(char a1)
{
  if (a1)
  {
    _AXFeatureSupportsNonSightedUsage();
    v2[4] = sub_10007B860;
    v2[5] = 0;
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = sub_1000357AC;
    v2[3] = &unk_1002FF098;
    v1 = _Block_copy(v2);
    AXPerformBlockOnMainThreadAfterDelay();
    _Block_release(v1);
  }
}

double sub_1000506AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AdminSceneView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = *(a1 + 96);
  LOBYTE(v36) = *(a1 + 88);
  *(&v36 + 1) = v7;
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.getter();
  if (v33 == 1)
  {
    sub_1000529F4(a1, v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v9 = swift_allocObject();
    sub_100052A5C(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
    LOBYTE(v33) = 0;
    State.init(wrappedValue:)();
    v10 = v36;
    v11 = *(&v36 + 1);
    LOBYTE(v33) = 0;
    State.init(wrappedValue:)();
    v12 = v36;
    v13 = *(&v36 + 1);
    static Color.white.getter();
    v14 = Color.opacity(_:)();

    *&v33 = sub_1000539F4;
    *(&v33 + 1) = v9;
    LOBYTE(v34[0]) = v10;
    *(&v34[0] + 1) = v11;
    LOBYTE(v34[1]) = v12;
    *(&v34[1] + 1) = v13;
    *&v34[2] = v14;
    sub_100053A0C(&v33);
  }

  else
  {
    v15 = static HorizontalAlignment.center.getter();
    sub_100050A88(a1, &v36);
    v28 = v40;
    v29 = v41;
    v30 = v42;
    v24 = v36;
    v25 = v37;
    v26 = v38;
    v27 = v39;
    v31[0] = v36;
    v31[1] = v37;
    v31[2] = v38;
    v31[3] = v39;
    v31[4] = v40;
    v31[5] = v41;
    v32 = v42;
    sub_100053490(&v24, &v33);
    sub_1000534EC(v31);
    *(&v23[3] + 7) = v27;
    *(&v23[4] + 7) = v28;
    *(&v23[5] + 7) = v29;
    *(&v23[6] + 7) = v30;
    *(v23 + 7) = v24;
    *(&v23[1] + 7) = v25;
    *(&v23[2] + 7) = v26;
    v33 = v15;
    LOBYTE(v34[0]) = 1;
    *(&v34[2] + 1) = v23[2];
    *(&v34[1] + 1) = v23[1];
    *(v34 + 1) = v23[0];
    v34[6] = *(&v23[5] + 15);
    *(&v34[5] + 1) = v23[5];
    *(&v34[4] + 1) = v23[4];
    *(&v34[3] + 1) = v23[3];
    sub_1000537FC(&v33);
  }

  v21[6] = v34[5];
  v21[7] = v34[6];
  v22 = v35;
  v21[2] = v34[1];
  v21[3] = v34[2];
  v21[4] = v34[3];
  v21[5] = v34[4];
  v21[0] = v33;
  v21[1] = v34[0];
  sub_10002B6CC(&qword_10032D318);
  sub_10002B6CC(&qword_10032D320);
  sub_100053808();
  sub_10005393C();
  _ConditionalContent<>.init(storage:)();
  v16 = v41;
  v17 = v43;
  *(a2 + 96) = v42;
  *(a2 + 112) = v17;
  *(a2 + 128) = v44;
  v18 = v37;
  v19 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v19;
  *(a2 + 64) = v40;
  *(a2 + 80) = v16;
  result = *&v36;
  *a2 = v36;
  *(a2 + 16) = v18;
  return result;
}

uint64_t sub_100050A10()
{
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.setter();
  return sub_10004DCF8();
}

__n128 sub_100050A88@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AdminSceneView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = LocalizedStringKey.init(stringLiteral:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1000529F4(a1, &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_100052A5C(&v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14);
  *&v23 = 0;
  *(&v23 + 1) = 0xE000000000000000;
  State.init(wrappedValue:)();
  v16 = v30;
  v17 = v31;
  v18 = v32;
  if (qword_10032B4C8 != -1)
  {
    swift_once();
  }

  *&v23 = v16;
  *(&v23 + 1) = v17;
  *&v24 = v18;
  *(&v24 + 1) = v7;
  *&v25 = v9;
  BYTE8(v25) = v11 & 1;
  v26.n128_u64[0] = v13;
  v26.n128_u8[8] = 0;
  v27 = 0uLL;
  *&v28 = sub_100053B80;
  *(&v28 + 1) = v15;
  v29 = qword_100336880;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v7;
  v34 = v9;
  v35 = v11 & 1;
  v36 = v13;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = sub_100053B80;
  v41 = v15;
  v42 = qword_100336880;
  sub_100053490(&v23, v22);
  sub_1000534EC(&v30);
  v19 = v28;
  *(a2 + 64) = v27;
  *(a2 + 80) = v19;
  *(a2 + 96) = v29;
  v20 = v24;
  *a2 = v23;
  *(a2 + 16) = v20;
  result = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_100050CA4()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100050D14(char a1)
{
  if (a1)
  {
    sub_10002B6CC(&qword_10032B720);
    State.wrappedValue.setter();
    return sub_10004DCF8();
  }

  else
  {
    sub_10002B6CC(&qword_10032B720);
    return State.wrappedValue.setter();
  }
}

void sub_100050DD4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AdminSceneView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.common.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Showing admin view.", v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v14 = [objc_opt_self() sharedPresentationController];
  sub_1000529F4(a2, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_100052A5C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  aBlock[4] = sub_1000530A0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000357AC;
  aBlock[3] = &unk_1002FEF80;
  v17 = _Block_copy(aBlock);

  [v14 dismissSiri:1 completion:v17];
  _Block_release(v17);
}

uint64_t sub_10005109C()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000510FC()
{
  sub_10002B6CC(&qword_10032B720);
  State.wrappedValue.setter();
  State.wrappedValue.setter();
  State.wrappedValue.setter();
  State.wrappedValue.setter();
  sub_10004DCF8();
  return State.wrappedValue.setter();
}

uint64_t sub_100051200(uint64_t a1)
{
  v2 = type metadata accessor for AdminSceneView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  sub_100035D1C();
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v9 setShouldShowTripleClickInstructions:0];

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1000529F4(a1, v5);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_100052A5C(v5, v13 + v12);
  sub_1000AB448(0, 0, v8, &unk_100299160, v13);
}

uint64_t sub_1000513F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100051488, v6, v5);
}

uint64_t sub_100051488(unint64_t a1)
{
  v3 = *(*(v1 + 16) + 168);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0x3B9ACA00uLL))
  {
LABEL_11:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = 1000000000 * v3;
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_100051580;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_100051580()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_10005177C;
  }

  else
  {
    v5 = sub_1000516BC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000516BC()
{
  v1 = *(v0 + 16);

  *(swift_task_alloc() + 16) = v1;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005177C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000517E0(uint64_t a1)
{
  v1[6] = a1;
  v2 = type metadata accessor for Logger();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_10002B6CC(&qword_10032D1D0);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_10002B6CC(&qword_10032D1D8);
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v6;
  v1[19] = v5;

  return _swift_task_switch(sub_1000519A8, v6, v5);
}

uint64_t sub_1000519A8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = [objc_allocWithZone(type metadata accessor for InCallServiceAppearanceHandler()) init];
  v0[20] = v4;
  v0[4] = *&v4[OBJC_IVAR____TtC12ClarityBoardP33_05D61AEEC536D81D4E64D6EE76DB593F30InCallServiceAppearanceHandler_publisher];
  sub_10002B6CC(&qword_10032D0B8);
  sub_10002CD18(&qword_10032D1E0, &qword_10032D0B8);
  Publisher<>.values.getter();
  AsyncPublisher.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[21] = static MainActor.shared.getter();
  v5 = sub_10002CD18(&qword_10032D1E8, &qword_10032D1D8);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_100051B60;
  v7 = v0[13];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 24, v7, v5);
}

uint64_t sub_100051B60()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100051FDC;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_100051CF8;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100051CF8()
{

  *(v0 + 194) = *(v0 + 192);
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return _swift_task_switch(sub_100051D64, v1, v2);
}

uint64_t sub_100051D64()
{
  if (*(v0 + 194))
  {
    v1 = *(v0 + 160);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 48);
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    *(v0 + 16) = v5;
    *(v0 + 24) = v6;
    sub_10002B6CC(&qword_10032B720);
    State.wrappedValue.getter();
    if (*(v0 + 193) == 1)
    {
      v8 = *(v0 + 64);
      v7 = *(v0 + 72);
      v9 = *(v0 + 56);
      v10 = Logger.common.unsafeMutableAddressor();
      (*(v8 + 16))(v7, v10, v9);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Dismissing admin view to show InCallService.", v13, 2u);
      }

      v15 = *(v0 + 64);
      v14 = *(v0 + 72);
      v16 = *(v0 + 56);

      (*(v15 + 8))(v14, v16);
      sub_1000510FC();
    }

    *(v0 + 168) = static MainActor.shared.getter();
    v17 = sub_10002CD18(&qword_10032D1E8, &qword_10032D1D8);
    v18 = swift_task_alloc();
    *(v0 + 176) = v18;
    *v18 = v0;
    v18[1] = sub_100051B60;
    v19 = *(v0 + 104);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 192, v19, v17);
  }
}

uint64_t sub_100051FDC()
{
  *(v0 + 40) = *(v0 + 184);
  sub_10002B6CC(&qword_10032C1A0);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100052070()
{
  v0 = type metadata accessor for AccessibilityNotification.ScreenChanged();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v5, 0, sizeof(v5));
  AccessibilityNotification.ScreenChanged.init(_:)();
  _AccessibilityNotifications.post()();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100052150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002B6CC(&qword_10032D360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_10002B6CC(&qword_10032D368) + 36));
  *v5 = sub_100053F90;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0;
  result = sub_10002B6CC(&qword_10032D370);
  v7 = (a2 + *(result + 36));
  *v7 = 0;
  v7[1] = 0;
  v7[2] = sub_100053F90;
  v7[3] = 0;
  return result;
}

char *sub_100052224()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12ClarityBoardP33_05D61AEEC536D81D4E64D6EE76DB593F30InCallServiceAppearanceHandler_publisher;
  sub_10002B6CC(&qword_10032D0B8);
  swift_allocObject();
  *&v0[v2] = PassthroughSubject.init()();
  v3 = TUCallCenterInCallServiceDidAppearNotification;
  *&v1[OBJC_IVAR____TtC12ClarityBoardP33_05D61AEEC536D81D4E64D6EE76DB593F30InCallServiceAppearanceHandler_notificationName] = TUCallCenterInCallServiceDidAppearNotification;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InCallServiceAppearanceHandler();
  v4 = v3;
  v5 = objc_msgSendSuper2(&v8, "init");
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v6, v5, sub_100052314, *&v5[OBJC_IVAR____TtC12ClarityBoardP33_05D61AEEC536D81D4E64D6EE76DB593F30InCallServiceAppearanceHandler_notificationName], 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v5;
}

id sub_100052340()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v1, v0, *&v0[OBJC_IVAR____TtC12ClarityBoardP33_05D61AEEC536D81D4E64D6EE76DB593F30InCallServiceAppearanceHandler_notificationName], 0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for InCallServiceAppearanceHandler();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100052490(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for InCallServiceAppearanceHandler();
    swift_unknownObjectRetain();
    if (swift_dynamicCastClass())
    {

      sub_10002B6CC(&qword_10032D0B8);
      sub_10002CD18(&qword_10032EE10, &qword_10032D0B8);
      Subject<>.send()();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v7 = Logger.common.unsafeMutableAddressor();
  (*(v3 + 16))(v5, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Unexpected type for observer in InCallServiceDidAppearNotificationHandler.", v10, 2u);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000526C0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NSNotificationCenter.Publisher();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 72);

    return v9(v10, a2, v8);
  }
}

void *sub_100052780(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NSNotificationCenter.Publisher();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 72);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AdminSceneView()
{
  result = qword_10032D118;
  if (!qword_10032D118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100052870()
{
  sub_100052974();
  if (v0 <= 0x3F)
  {
    sub_10003F9F8();
    if (v1 <= 0x3F)
    {
      sub_10004A8C0();
      if (v2 <= 0x3F)
      {
        sub_10003F744();
        if (v3 <= 0x3F)
        {
          sub_10003F7D8();
          if (v4 <= 0x3F)
          {
            type metadata accessor for NSNotificationCenter.Publisher();
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

void sub_100052974()
{
  if (!qword_10032D128)
  {
    v0 = type metadata accessor for PassthroughSubject();
    if (!v1)
    {
      atomic_store(v0, &qword_10032D128);
    }
  }
}

uint64_t sub_1000529F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdminSceneView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdminSceneView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100052AC0(uint64_t a1)
{
  v3 = *(type metadata accessor for AdminSceneView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100050DD4(a1, v4);
}

uint64_t sub_100052B8C()
{
  v1 = *(type metadata accessor for AdminSceneView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100051200(v2);
}

uint64_t sub_100052BEC()
{
  v1 = *(type metadata accessor for AdminSceneView() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 8);
  v3 = sub_10004DBD0();
  return v2(v3);
}

unint64_t sub_100052C64()
{
  result = qword_10032D1B8;
  if (!qword_10032D1B8)
  {
    sub_10002CAF8(&qword_10032D190);
    sub_10002CD18(&qword_10032D1C0, &qword_10032D1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10032D1B8);
  }

  return result;
}