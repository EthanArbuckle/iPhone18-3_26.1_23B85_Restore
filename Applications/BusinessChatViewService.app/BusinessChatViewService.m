void BCChatSuggestRemoteViewController.presentAppleSupportGuidedHelp(presenter:)(void *a1)
{
  v13 = a1;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v14 = (*(*(sub_100001E10(&qword_10001E658, &unk_100010730) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v4 - v14;
  v23 = __chkstk_darwin(v13);
  v22 = v1;
  v16 = 0;
  type metadata accessor for SupportFlowViewController();
  v2 = type metadata accessor for SupportFlowIdentifier();
  (*(*(v2 - 8) + 56))(v15, 1);
  sub_100001E7C();
  v17 = SupportFlowViewController.__allocating_init(flowIdentifier:showsSearchBar:)();
  v21 = v17;
  _s38SupportFlowViewControllerDelegateProxyCMa();
  v18;
  v3 = sub_100001EB0(v18);
  sub_100001EEC(v3);
  v19 = sub_100001FB8();
  if (v19)
  {
    v12 = v19;
    v11 = v19;
  }

  else
  {
    v11 = 0;
  }

  dispatch thunk of SupportFlowViewController.delegate.setter();
  v17;
  v10 = [v17 sheetPresentationController];
  if (v10)
  {
    v9 = v10;
    v8 = v10;
    v20 = v10;
    _objc_release(v17);
    v7 = UISheetPresentationControllerDetentIdentifierLarge;
    UISheetPresentationControllerDetentIdentifierLarge;
    [v8 setSelectedDetentIdentifier:v7];
    _objc_release(v7);
    _objc_release(v8);
  }

  else
  {
    _objc_release(v17);
  }

  v17;
  [v17 setModalPresentationStyle:0];
  _objc_release(v17);
  swift_unknownObjectRetain();
  if (v13)
  {
    v6 = v13;
    v5 = v13;
    swift_getObjectType();
    [v5 presentViewController:v17 animated:1 completion:0];
    swift_unknownObjectRelease();
  }

  _objc_release(v17);
}

uint64_t sub_100001E10(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

void sub_100001EEC(void *a1)
{
  v1;
  key = sub_1000021FC();
  a1;
  swift_beginAccess();
  objc_setAssociatedObject(v1, key, a1, 0x301);
  swift_endAccess();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _objc_release(a1);
}

uint64_t sub_100001FB8()
{
  v11 = v0;
  v0;
  key = sub_1000021FC();
  swift_beginAccess();
  v5 = objc_getAssociatedObject(v0, key);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    sub_100002728(v6, &v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0uLL;
    v9 = 0uLL;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    _s38SupportFlowViewControllerDelegateProxyCMa();
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000264C(v10);
    return 0;
  }
}

uint64_t sub_100002208()
{
  v1 = sub_1000021FC();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2;
}

uint64_t sub_10000225C(char a1)
{
  v2 = sub_1000021FC();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t sub_1000022B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

void sub_100002318(void *a1)
{
  a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  _objc_release(a1);
  swift_endAccess();
  _objc_release(a1);
}

void (*sub_1000023B0(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_100002CF8(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtCE23BusinessChatViewServiceCSo33BCChatSuggestRemoteViewControllerP33_D33DBE072432EE7147065A24717A63BF38SupportFlowViewControllerDelegateProxy_chatSuggestRemoteViewController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10000245C;
}

void sub_10000245C(uint64_t *a1, char a2)
{
  v7 = *a1;
  if (a2)
  {
    v4 = *(v7 + 32) + *(v7 + 40);
    v5 = *(v7 + 24);
    v5;
    swift_unknownObjectWeakAssign();
    _objc_release(v5);
    sub_1000027E4((v7 + 24));
  }

  else
  {
    v2 = *(v7 + 40);
    v3 = *(v7 + 32);
    v6 = *(v7 + 24);
    swift_unknownObjectWeakAssign();
    _objc_release(v6);
  }

  swift_endAccess();
  free(v7);
}

id sub_100002528(void *a1)
{
  v6 = 0;
  v5 = a1;
  swift_unknownObjectWeakInit();
  a1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  _objc_release(a1);
  swift_endAccess();
  v4.receiver = v6;
  v4.super_class = _s38SupportFlowViewControllerDelegateProxyCMa();
  v3 = objc_msgSendSuper2(&v4, "init");
  v3;
  v6 = v3;
  _objc_release(a1);
  _objc_release(v6);
  return v3;
}

uint64_t *sub_10000264C(uint64_t *a1)
{
  if (a1[3])
  {
    sub_100002688(a1);
  }

  return a1;
}

uint64_t sub_100002688(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

__n128 sub_100002728(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

void sub_100002744(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v5 = v2;
  v4 = sub_1000022B0();
  if (v4)
  {
    v3 = v4;
    v4;
    sub_1000027E4(&v4);
    [v3 sendCancelDialResponseForDialRequestAction];
    _objc_release(v3);
  }

  else
  {
    sub_1000027E4(&v4);
  }
}

void sub_1000029F0(uint64_t a1)
{
  v5 = a1;
  v4 = v1;
  v3 = sub_1000022B0();
  if (v3)
  {
    v2 = v3;
    v3;
    sub_1000027E4(&v3);
    [v2 sendCancelDialResponseForDialRequestAction];
    _objc_release(v2);
  }

  else
  {
    sub_1000027E4(&v3);
  }
}

id sub_100002C64()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = _s38SupportFlowViewControllerDelegateProxyCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100002CF8(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t sub_100002D84(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  Int.init(bitPattern:)(&v9);
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
LABEL_12:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000030B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        __chkstk_darwin(v17);
        v15 = sub_100003DF4;
        v16 = &v37;
        sub_100002D84(sub_100003E10, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000038E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
              }

              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }

            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100003EDC()
{
  sub_100004800();
  type metadata accessor for ResourceBundleClass();
  result = sub_100003F24();
  qword_10001E690 = result;
  return result;
}

id sub_100003F24()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

uint64_t *sub_100003F7C()
{
  if (qword_10001E628 != -1)
  {
    swift_once();
  }

  return &qword_10001E690;
}

uint64_t sub_100003FDC()
{
  v1 = type metadata accessor for ColorResource();
  sub_100004074(v1, qword_10001E940);
  sub_100004110(v1, qword_10001E940);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AlertActionIconColor", 0x14uLL, 1);
  v2 = *sub_100003F7C();
  v2;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100004074(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t sub_100004110(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_100004168()
{
  if (qword_10001E630 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_100004110(v0, qword_10001E940);
}

uint64_t sub_1000041D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004168();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100004238()
{
  v1 = type metadata accessor for ColorResource();
  sub_100004074(v1, qword_10001E958);
  sub_100004110(v1, qword_10001E958);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CellBackgroundColor", 0x13uLL, 1);
  v2 = *sub_100003F7C();
  v2;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1000042D0()
{
  if (qword_10001E638 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_100004110(v0, qword_10001E958);
}

uint64_t sub_10000433C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000042D0();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1000043A0()
{
  v1 = type metadata accessor for ImageResource();
  sub_100004074(v1, qword_10001E970);
  sub_100004110(v1, qword_10001E970);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DefaultBizIcon", 0xEuLL, 1);
  v2 = *sub_100003F7C();
  v2;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100004438()
{
  if (qword_10001E640 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_100004110(v0, qword_10001E970);
}

uint64_t sub_1000044A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004438();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100004508()
{
  v1 = type metadata accessor for ImageResource();
  sub_100004074(v1, qword_10001E988);
  sub_100004110(v1, qword_10001E988);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MessageIcon", 0xBuLL, 1);
  v2 = *sub_100003F7C();
  v2;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1000045A0()
{
  if (qword_10001E648 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_100004110(v0, qword_10001E988);
}

uint64_t sub_10000460C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000045A0();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100004670()
{
  v1 = type metadata accessor for ImageResource();
  sub_100004074(v1, qword_10001E9A0);
  sub_100004110(v1, qword_10001E9A0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PhoneIcon", 9uLL, 1);
  v2 = *sub_100003F7C();
  v2;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100004708()
{
  if (qword_10001E650 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_100004110(v0, qword_10001E9A0);
}

uint64_t sub_100004774@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004708();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_100004800()
{
  v2 = qword_10001E730;
  if (!qword_10001E730)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_10001E730);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_100006440(id a1)
{
  qword_10001E918 = objc_alloc_init(BCCoreAnalytics);

  _objc_release_x1();
}

id sub_100006528(uint64_t a1)
{
  v9[0] = @"bizIdCallToAction";
  v2 = [*(a1 + 32) bizID];
  v3 = [*(a1 + 32) messageSubtitle];
  v4 = [NSString stringWithFormat:@"%@ - %@", v2, v3];
  v10[0] = v4;
  v9[1] = @"chatSuggestLatencyInMiliSeconds";
  v5 = [NSNumber numberWithInteger:*(a1 + 40)];
  v10[1] = v5;
  v9[2] = @"bizItemReturnedAfterAction";
  v6 = [NSNumber numberWithBool:*(a1 + 48)];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

id sub_1000066E4(uint64_t a1)
{
  v4 = @"isDefaultSimLineSelected";
  v1 = [NSNumber numberWithBool:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_1000068A8(uint64_t a1)
{
  v9[0] = @"bizIdCallToAction";
  v2 = [*(a1 + 32) bizID];
  v3 = [*(a1 + 32) messageSubtitle];
  v4 = [NSString stringWithFormat:@"%@ - %@", v2, v3];
  v10[0] = v4;
  v9[1] = @"bizIsVisible";
  v5 = [NSNumber numberWithBool:*(a1 + 48)];
  v10[1] = v5;
  v9[2] = @"chatSuggestLatencyInMiliSeconds";
  v6 = [NSNumber numberWithInteger:*(a1 + 40)];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

id sub_1000069F4(uint64_t a1)
{
  v7[0] = @"bizFetchError";
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) code]);
  v8[0] = v2;
  v7[1] = @"bizIsVisible";
  v3 = [NSNumber numberWithBool:*(a1 + 48)];
  v8[1] = v3;
  v7[2] = @"chatSuggestLatencyInMiliSeconds";
  v4 = [NSNumber numberWithInteger:*(a1 + 40)];
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void sub_100007EEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 dialRequestAction];
  [v2 configureAlertControllerForDialRequestAction:v3];

  v4 = [*(a1 + 32) alertController];

  if (v4)
  {
    v5 = sub_10000BC3C();
    v6 = [*(a1 + 32) tapId];
    if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v7, "RenderBusinessChatCallAction", &unk_10001585D, buf, 2u);
      }
    }

    v8 = [*(a1 + 32) deviceState];
    v9 = [v8 isLocked];

    v10 = *(a1 + 32);
    if (v9)
    {
      [v10 _dismiss];
    }

    else
    {
      v11 = [v10 presenter];
      v12 = [*(a1 + 32) alertController];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100008070;
      v13[3] = &unk_1000186B8;
      v13[4] = *(a1 + 32);
      [v11 presentViewController:v12 animated:1 completion:v13];
    }
  }
}

void sub_100008070(uint64_t a1)
{
  [*(a1 + 32) setChatSuggestUIPresented:1];
  v2 = [*(a1 + 32) pendingActionItems];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) deviceState];
    v5 = [v4 isLocked];

    v6 = *(a1 + 32);
    if (v5)
    {

      [v6 _dismiss];
    }

    else
    {
      [v6 addPendingActionItemsToAlert];
      v7 = *(a1 + 32);

      [v7 setPendingActionItems:0];
    }
  }
}

void sub_1000084E0(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  v2[2](v2, *(a1 + 32));
}

void sub_100008AE4(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 || !a2)
  {
    v4 = sub_10000BC3C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BCChatSuggestRemoteViewController] This number does not support on device support", v7, 2u);
    }
  }

  else
  {
    v4 = [*(a1 + 32) supportActionForBizItem:*(a1 + 40) dialRequestAction:*(a1 + 48)];
    v5 = [*(a1 + 32) headerActionItem];
    v8[0] = v5;
    v8[1] = v4;
    v8[2] = *(a1 + 56);
    v6 = [NSArray arrayWithObjects:v8 count:3];
    [*(a1 + 32) setPendingActionItems:v6];
  }
}

void sub_100009660(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 presenter];
  [v1 presentAppleSupportGuidedHelpWithPresenter:v2];
}

void sub_1000099BC(id *a1)
{
  +[BCCoreAnalytics logEventForView:bizItem:bizItemReturnedAfterAction:latency:](BCCoreAnalytics, "logEventForView:bizItem:bizItemReturnedAfterAction:latency:", @"com.apple.BusinessChatViewService.MessageButtonTapped", a1[4], 0, [a1[5] _latencyFromViewDidLoad]);
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [a1[4] messagesOpenURL];
  v4 = objc_opt_new();
  v16 = 0;
  [v2 openURL:v3 withOptions:v4 error:&v16];
  v5 = v16;

  v6 = sub_10000BC3C();
  v7 = v6;
  if (v5)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v8 = [a1[4] messagesOpenURL];
    *buf = 136315394;
    v18 = "[BCChatSuggestRemoteViewController messageAlertActionForBizItem:dialRequestAction:]_block_invoke";
    v19 = 2112;
    v20 = v8;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s Error opening Messages url: %@", buf, 0x16u);
  }

  else
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v8 = [a1[4] messagesOpenURL];
    *buf = 136315394;
    v18 = "[BCChatSuggestRemoteViewController messageAlertActionForBizItem:dialRequestAction:]_block_invoke";
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Success open Messages url: %@", buf, 0x16u);
  }

LABEL_7:
  if ([a1[6] isValid])
  {
    v9 = objc_alloc_init(BSMutableSettings);
    if ([a1[5] simLinePickerEnabled] && objc_msgSend(a1[5], "isDualSim"))
    {
      v10 = [NSNumber numberWithInt:0xFFFFFFFFLL];
      [v9 setObject:v10 forSetting:10];
    }

    else
    {
      [v9 setObject:@"Message" forSetting:10];
    }

    v13 = a1[6];
    v14 = [BSActionResponse responseWithInfo:v9];
    [v13 sendResponse:v14];

    v15 = sub_10000BC3C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[BCChatSuggestRemoteViewController messageAlertActionForBizItem:dialRequestAction:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s Sending message to InCallService via XPC Action to place a call", buf, 0xCu);
    }

    [a1[5] _dismiss];
  }

  else
  {
    v11 = sub_10000BC3C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[6];
      *buf = 136315394;
      v18 = "[BCChatSuggestRemoteViewController messageAlertActionForBizItem:dialRequestAction:]_block_invoke";
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s invalid dialrequest message action : %@", buf, 0x16u);
    }

    [a1[5] _dismiss];
  }
}

void sub_100009F48(uint64_t a1)
{
  v2 = [*(a1 + 32) _latencyFromViewDidLoad];
  v3 = [*(a1 + 32) bizItem];
  +[BCCoreAnalytics logEventForView:bizItem:bizItemReturnedAfterAction:latency:](BCCoreAnalytics, "logEventForView:bizItem:bizItemReturnedAfterAction:latency:", @"com.apple.BusinessChatViewService.CallButtonTapped", v3, 0, [*(a1 + 32) _latencyFromViewDidLoad]);

  v4 = +[BCCoreAnalytics sharedInstance];
  [v4 setLastActionTaken:@"com.apple.BusinessChatViewService.CallButtonTapped" withLatency:v2];

  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [v5 isValid];
    v7 = sub_10000BC3C();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 136315138;
        v21 = "[BCChatSuggestRemoteViewController callAlertActionForBizItem:dialRequestAction:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Sending message to InCallService via XPC Action to place a call", buf, 0xCu);
      }

      v7 = objc_alloc_init(BSMutableSettings);
      [v7 setObject:@"Call" forSetting:10];
      v9 = *(a1 + 40);
      v10 = [BSActionResponse responseWithInfo:v7];
      [v9 sendResponse:v10];
    }

    else if (v8)
    {
      v18 = *(a1 + 40);
      *buf = 136315394;
      v21 = "[BCChatSuggestRemoteViewController callAlertActionForBizItem:dialRequestAction:]_block_invoke";
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s invalid dialrequest call action : %@", buf, 0x16u);
    }

    [*(a1 + 32) _dismiss];
  }

  else
  {
    v11 = sub_10000BC3C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[BCChatSuggestRemoteViewController callAlertActionForBizItem:dialRequestAction:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Sending message to InCallService via launch services to place a call", buf, 0xCu);
    }

    v12 = [NSString stringWithFormat:@"tel://%@?handleType=phoneNumber", *(a1 + 48)];
    v13 = [NSURL URLWithString:v12];
    v14 = +[LSApplicationWorkspace defaultWorkspace];
    v15 = objc_opt_new();
    v19 = 0;
    [v14 openURL:v13 withOptions:v15 error:&v19];
    v16 = v19;

    if (v16)
    {
      v17 = sub_10000BC3C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "[BCChatSuggestRemoteViewController callAlertActionForBizItem:dialRequestAction:]_block_invoke";
        v22 = 2112;
        v23 = v13;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Error opening Telephony url: %@", buf, 0x16u);
      }
    }

    [*(a1 + 32) _dismiss];
  }
}

void sub_10000A46C(uint64_t a1)
{
  v2 = [*(a1 + 32) _latencyFromViewDidLoad];
  v3 = [*(a1 + 32) bizItem];
  +[BCCoreAnalytics logEventForView:bizItem:bizItemReturnedAfterAction:latency:](BCCoreAnalytics, "logEventForView:bizItem:bizItemReturnedAfterAction:latency:", @"com.apple.BusinessChatViewService.CallButtonTapped", v3, 0, [*(a1 + 32) _latencyFromViewDidLoad]);

  v4 = +[BCCoreAnalytics sharedInstance];
  [v4 setLastActionTaken:@"com.apple.BusinessChatViewService.CallButtonTapped" withLatency:v2];

  [BCCoreAnalytics logEventForNonDefaultSimLineTappedForView:@"com.apple.BusinessChatViewService.nonDefaultSimCallButtonTapped" isDefaultSimLineSelected:*(a1 + 64)];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [v5 isValid];
    v7 = sub_10000BC3C();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 136315138;
        v22 = "[BCChatSuggestRemoteViewController callAlertActionForBizItem:dialRequestAction:senderId:localizedName:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Sending message to InCallService via XPC Action to place a call", buf, 0xCu);
      }

      v7 = objc_alloc_init(BSMutableSettings);
      v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 48) intValue]);
      [v7 setObject:v9 forSetting:10];

      v10 = *(a1 + 40);
      v11 = [BSActionResponse responseWithInfo:v7];
      [v10 sendResponse:v11];
    }

    else if (v8)
    {
      v19 = *(a1 + 40);
      *buf = 136315394;
      v22 = "[BCChatSuggestRemoteViewController callAlertActionForBizItem:dialRequestAction:senderId:localizedName:]_block_invoke";
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s invalid dialrequest call action : %@", buf, 0x16u);
    }

    [*(a1 + 32) _dismiss];
  }

  else
  {
    v12 = sub_10000BC3C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "[BCChatSuggestRemoteViewController callAlertActionForBizItem:dialRequestAction:senderId:localizedName:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Sending message to InCallService via launch services to place a call", buf, 0xCu);
    }

    v13 = [NSString stringWithFormat:@"tel://%@?handleType=phoneNumber", *(a1 + 56)];
    v14 = [NSURL URLWithString:v13];
    v15 = +[LSApplicationWorkspace defaultWorkspace];
    v16 = objc_opt_new();
    v20 = 0;
    [v15 openURL:v14 withOptions:v16 error:&v20];
    v17 = v20;

    if (v17)
    {
      v18 = sub_10000BC3C();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[BCChatSuggestRemoteViewController callAlertActionForBizItem:dialRequestAction:senderId:localizedName:]_block_invoke";
        v23 = 2112;
        v24 = v14;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Error opening Telephony url: %@", buf, 0x16u);
      }
    }

    [*(a1 + 32) _dismiss];
  }
}

id sub_10000A8EC(uint64_t a1)
{
  if ([*(a1 + 32) isValid])
  {
    v2 = objc_alloc_init(BSMutableSettings);
    if ([*(a1 + 40) simLinePickerEnabled] && objc_msgSend(*(a1 + 40), "isDualSim"))
    {
      v3 = [NSNumber numberWithInt:0xFFFFFFFFLL];
      [v2 setObject:v3 forSetting:10];
    }

    else
    {
      [v2 setObject:@"Cancel" forSetting:10];
    }

    v4 = *(a1 + 32);
    v5 = [BSActionResponse responseWithInfo:v2];
    [v4 sendResponse:v5];

    v6 = sub_10000BC3C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[BCChatSuggestRemoteViewController defaultAlertActionForDialRequestAction:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s sendResponse", &v11, 0xCu);
    }

    v7 = [*(a1 + 40) _latencyFromViewDidLoad];
    v8 = [*(a1 + 40) bizItem];
    +[BCCoreAnalytics logEventForView:bizItem:bizItemReturnedAfterAction:latency:](BCCoreAnalytics, "logEventForView:bizItem:bizItemReturnedAfterAction:latency:", @"com.apple.BusinessChatViewService.ChatSuggestDismissed", v8, 0, [*(a1 + 40) _latencyFromViewDidLoad]);

    v9 = +[BCCoreAnalytics sharedInstance];
    [v9 setLastActionTaken:@"com.apple.BusinessChatViewService.ChatSuggestDismissed" withLatency:v7];
  }

  return [*(a1 + 40) _dismiss];
}

void sub_10000AFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000AFDC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = sub_10000BC3C();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "[BCChatSuggestRemoteViewController fetchBizInfoForDialRequestAction:]_block_invoke";
    v30 = 2112;
    v31 = v7;
    v32 = 1024;
    v33 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Fetch returned BizItem %@ Visible:%d", buf, 0x1Cu);
  }

  if (v8)
  {
    v11 = sub_10000BC3C();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[BCChatSuggestRemoteViewController fetchBizInfoForDialRequestAction:]_block_invoke";
      v30 = 2112;
      v31 = v8;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Error fetching biz item. Error %@", buf, 0x16u);
    }

    +[BCCoreAnalytics logEventForChatSuggestDidNotAppearForBizItem:error:isVisible:latency:](BCCoreAnalytics, "logEventForChatSuggestDidNotAppearForBizItem:error:isVisible:latency:", v7, v8, a3, [WeakRetained _latencyFromViewDidLoad]);
    v12 = sub_10000BC3C();
    v13 = [WeakRetained tapId];
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v14, "RenderBusinessChatUI", &unk_10001585D, buf, 2u);
      }
    }

    v15 = sub_10000BC3C();
    v16 = [WeakRetained tapId];
    if ((v16 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_22;
    }

    v17 = v16;
    if (!os_signpost_enabled(v15))
    {
      goto LABEL_22;
    }

    *buf = 0;
    goto LABEL_21;
  }

  if (v7 && a3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B41C;
    block[3] = &unk_100018830;
    block[4] = WeakRetained;
    v26 = v7;
    v27 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_23;
  }

  +[BCCoreAnalytics logEventForChatSuggestDidNotAppearForBizItem:error:isVisible:latency:](BCCoreAnalytics, "logEventForChatSuggestDidNotAppearForBizItem:error:isVisible:latency:", v7, 0, a3, [WeakRetained _latencyFromViewDidLoad]);
  v18 = sub_10000BC3C();
  v19 = [WeakRetained tapId];
  if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v19;
    if (os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v20, "RenderBusinessChatUI", &unk_10001585D, buf, 2u);
    }
  }

  v15 = sub_10000BC3C();
  v21 = [WeakRetained tapId];
  if ((v21 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v21;
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
LABEL_21:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, v17, "ChatSuggestEnd", &unk_10001585D, buf, 2u);
    }
  }

LABEL_22:

LABEL_23:
  if ([WeakRetained chatSuggestRemoteViewControllerDismissed])
  {
    v22 = +[BCCoreAnalytics sharedInstance];
    v23 = [v22 lastActionTaken];
    v24 = +[BCCoreAnalytics sharedInstance];
    +[BCCoreAnalytics logEventForView:bizItem:bizItemReturnedAfterAction:latency:](BCCoreAnalytics, "logEventForView:bizItem:bizItemReturnedAfterAction:latency:", v23, v7, 1, [v24 lastActionLatency]);

    [WeakRetained _logPhoneNumberDisplayedIfNecessary];
  }
}

id sub_10000B41C(uint64_t a1)
{
  [*(a1 + 32) setBizItem:*(a1 + 40)];
  result = [*(a1 + 32) chatSuggestRemoteViewControllerDismissed];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v3 configureAlertControllerForBusinessItem:v4 dialRequestAction:v5];
  }

  return result;
}

id sub_10000BC3C()
{
  if (qword_10001E9C0 != -1)
  {
    dispatch_once(&qword_10001E9C0, &stru_100018878);
  }

  v1 = qword_10001E9B8;

  return v1;
}

void sub_10000BC90(id a1)
{
  qword_10001E9B8 = os_log_create("com.apple.BusinessServices.businesschatviewservice", "Common");

  _objc_release_x1();
}

uint64_t sub_10000BD00()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = off_10001E930;
  v7 = off_10001E930;
  if (!off_10001E930)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000BDE4;
    v3[3] = &unk_1000188A0;
    v3[4] = &v4;
    sub_10000BDE4(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    dlerror();
    v2 = abort_report_np();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v2);
  }

  return v0(0);
}

void *sub_10000BDE4(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_10001E938)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10000BF24;
    v5[4] = &unk_1000188D8;
    v5[5] = v5;
    v6 = off_1000188C0;
    v7 = 0;
    qword_10001E938 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_10001E938;
    if (qword_10001E938)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_10001E938;
LABEL_5:
  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10001E930 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000BF24(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10001E938 = result;
  return result;
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}