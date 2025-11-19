void *sub_100038430()
{
  v1 = v0;
  sub_100006D40(&qword_1000B3028);
  v2 = *v0;
  v3 = sub_10007DDC0();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

uint64_t sub_1000385A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100006D40(&qword_1000B3028);
  v34 = a2;
  result = sub_10007DDD0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_10007DF00();
      sub_10007D820();
      result = sub_10007DF10();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_100038848()
{
  if (qword_1000B5990 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B5998;
  v1 = objc_allocWithZone(ISIcon);
  v2 = v0;
  v3 = sub_10007D7A0();
  v4 = [v1 initWithBundleIdentifier:v3];

  result = [v4 imageForDescriptor:v2];
  if (result)
  {
    v6 = result;
    result = [result CGImage];
    if (result)
    {
      v7 = result;
      [v6 scale];
      v9 = [objc_allocWithZone(UIImage) initWithCGImage:v7 scale:0 orientation:v8];

      v10 = v9;
      v11 = sub_10007D120();
      [v6 placeholder];

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000389C4(void *a1)
{
  v2 = v1;
  *(v2 + 80) = a1;
  sub_1000397DC();
  v4 = a1;
  sub_100006D40(&qword_1000B3058);
  sub_100039830(&qword_1000B3060, &qword_1000B3058);
  sub_10007DC50();
  v51 = v50;
  if (([v4 presentationContexts] & 2) != 0)
  {
    PresentationContexts.media.unsafeMutableAddressor();
    sub_10007DC20();
    sub_1000398D8();
    if ((sub_10007D790() & 1) == 0)
    {
      sub_10007DC30();
    }
  }

  if ([v4 presentationContexts])
  {
    PresentationContexts.messages.unsafeMutableAddressor();
    sub_10007DC20();
    sub_1000398D8();
    if ((sub_10007D790() & 1) == 0)
    {
      sub_10007DC30();
    }
  }

  if ([v4 presentationContexts] == -1)
  {
    v51 = *PresentationContexts.all.unsafeMutableAddressor();
  }

  v5 = [v4 extensionIdentifier];
  if (!v5)
  {
    __break(1u);
    goto LABEL_29;
  }

  v6 = v5;
  sub_10007D7D0();

  sub_100039884();
  v7 = sub_10007DC00();

  if (!*(v7 + 16))
  {
LABEL_29:

    __break(1u);
    goto LABEL_30;
  }

  v8 = sub_10007D810();
  v10 = v9;

  if (qword_1000B59A0 != -1)
  {
    swift_once();
  }

  v11 = qword_1000B59A8;
  v12 = sub_10007D7A0();
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    v14 = v13;
    sub_10007D120();
    swift_beginAccess();
    sub_10007C890();
    swift_endAccess();
LABEL_15:

    v15 = 0;
    goto LABEL_16;
  }

  v32 = [objc_opt_self() currentTraitCollection];
  v33 = [v32 userInterfaceStyle];

  v34 = [v4 __ck_browserImageForInterfaceStyle:v33];
  if (v34)
  {
    v35 = v34;
    if (qword_1000B5990 != -1)
    {
      swift_once();
    }

    [qword_1000B5998 size];
    v37 = v36;
    [v35 size];
    v39 = v37 / v38;
    [v35 size];
    v41 = v39 * v40;
    [qword_1000B5998 scale];
    v43 = v42;
    v52.width = v41;
    v52.height = v37;
    UIGraphicsBeginImageContextWithOptions(v52, 0, v43);
    [v35 drawInRect:{0.0, 0.0, v41, v37}];
    v44 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    if (v44)
    {
      v14 = v44;
      sub_10007D120();
      swift_beginAccess();
      sub_10007C890();
      swift_endAccess();

      goto LABEL_15;
    }

    sub_100038848();
    v15 = v46;
    swift_beginAccess();

    sub_10007C890();
    swift_endAccess();
  }

  else
  {
    sub_100038848();
    v15 = v45;
    swift_beginAccess();

    sub_10007C890();
    swift_endAccess();
  }

LABEL_16:
  result = [v4 extensionIdentifier];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v17 = result;
  v47 = v15;
  v48 = v10;
  v49 = v8;
  v18 = sub_10007D7D0();
  v20 = v19;

  result = [v4 browserDisplayName];
  if (!result)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = sub_10007D7D0();
  v24 = v23;

  v25 = [v4 app];
  v26 = [v25 isStickerPackOnly];

  LOBYTE(v25) = [v4 showInBrowser];
  v27 = [v4 app];
  v28 = [v27 canSendDataPayloads];

  v29 = [v4 app];
  v30 = [v29 shouldBalloonHideAppIcon];

  v31 = iMessageApp.init(extensionIdentifier:bundleIdentifier:displayName:isStickerPackOnly:hideFromBrowser:canSendDataPayloads:shouldHideAppIcon:shouldHideAppSwitcher:presentationContexts:)(v18, v20, v49, v48, v22, v24, v26, v25 ^ 1u, v28, v30, [v4 shouldHideAppSwitcher], v51);
  if (v47)
  {

    sub_1000377A0();
  }

  return v31;
}

uint64_t sub_100039100()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039140()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*(*v1 + 144))();
  v4 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  sub_10007DE60();
  type metadata accessor for iMessageApp();
  v5 = v2;
LABEL_3:
  v6 = sub_100037B80(v3, v5);

  if (v6)
  {
    return result;
  }

  if (v4)
  {
    v8 = sub_10007DDB0();
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_18:
    if (*(&_swiftEmptyArrayStorage + 2))
    {
LABEL_19:
      sub_100006D40(&qword_1000B3028);
      v15 = sub_10007DDE0();
    }

    else
    {
      v15 = &_swiftEmptyDictionarySingleton;
    }

    v24 = v15;

    sub_10003809C(v16, 1, &v24);

    (*(*v1 + 176))(v24);
    if (v4)
    {
      type metadata accessor for iMessageApp();

      v18 = sub_10007DDA0();

      v17 = v18;
    }

    else
    {

      sub_10007DE60();
      type metadata accessor for iMessageApp();
      v17 = v2;
    }

    (*(*v1 + 152))(v17);
    if (v4)
    {
      type metadata accessor for iMessageApp();

      v19 = sub_10007DDA0();

      v2 = v19;
    }

    else
    {

      sub_10007DE60();
      type metadata accessor for iMessageApp();
    }

    return (*(*v1 + 200))(v2);
  }

  v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_6:
  v24 = &_swiftEmptyArrayStorage;
  sub_100037E00(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v20 = v4;
    v21 = v1;
    v4 = 0;
    v9 = v24;
    v22 = v2 & 0xFFFFFFFFFFFFFF8;
    v23 = v2 & 0xC000000000000001;
    v3 = v2;
    while (1)
    {
      if (v23)
      {
        v10 = sub_10007DCD0();
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          type metadata accessor for iMessageApp();

          v5 = sub_10007DDA0();

          goto LABEL_3;
        }

        if (v4 >= *(v22 + 16))
        {
          goto LABEL_30;
        }

        v10 = *(v2 + 8 * v4 + 32);
      }

      v1 = *(v10 + 16);
      v11 = *(v10 + 24);
      v24 = v9;
      v13 = v9[2];
      v12 = v9[3];

      if (v13 >= v12 >> 1)
      {
        sub_100037E00((v12 > 1), v13 + 1, 1);
        v9 = v24;
      }

      ++v4;
      v9[2] = v13 + 1;
      v14 = &v9[3 * v13];
      v14[4] = v1;
      v14[5] = v11;
      v14[6] = v10;
      v2 = v3;
      if (v8 == v4)
      {
        v4 = v20;
        v1 = v21;
        goto LABEL_19;
      }
    }
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_100039520()
{
  sub_100036444();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000395C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1000395F8(void *result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    v11 = result;
    if (([v11 placeholder] & 1) == 0)
    {
      v3 = [v11 CGImage];
      if (!v3)
      {
        __break(1u);
        return _objc_release_x2();
      }

      v4 = v3;
      [v11 scale];
      v6 = [objc_allocWithZone(UIImage) initWithCGImage:v4 scale:0 orientation:v5];

      if (qword_1000B59A0 != -1)
      {
        swift_once();
      }

      v7 = qword_1000B59A8;
      v8 = sub_10007D7A0();
      [v7 setObject:v6 forKey:v8];

      v9 = v6;
      v10 = sub_10007D120();
      (*(*v2 + 192))(v10);
    }

    return _objc_release_x2();
  }

  return result;
}

uint64_t sub_100039794(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000397DC()
{
  result = qword_1000B3050;
  if (!qword_1000B3050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3050);
  }

  return result;
}

uint64_t sub_100039830(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000B8F8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100039884()
{
  result = qword_1000B44D0;
  if (!qword_1000B44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B44D0);
  }

  return result;
}

unint64_t sub_1000398D8()
{
  result = qword_1000B3068;
  if (!qword_1000B3068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3068);
  }

  return result;
}

uint64_t sub_1000399E4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100039A50(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10000702C;
}

uint64_t sub_100039AF0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StickersCancelState.addNewStickerButton(_:);
  v3 = sub_10007C480();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100039B64@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_analyticsCancelState;
  swift_beginAccess();
  v4 = sub_10007C480();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100039BEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_analyticsCancelState;
  swift_beginAccess();
  v4 = sub_10007C480();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void *sub_100039CDC()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_picker;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100039D28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_picker;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100039E34(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_selection;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *sub_100039EF4()
{
  v1 = sub_100006D40(&qword_1000B3078);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v34 = sub_10007D3B0();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100006D40(&qword_1000B3080);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v35 = sub_10007D450();
  v33 = *(v35 - 8);
  v10 = __chkstk_darwin(v35);
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  *&v0[OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_analyticsCancelState;
  v15 = enum case for StickersCancelState.addNewStickerButton(_:);
  v16 = sub_10007C480();
  (*(*(v16 - 8) + 104))(&v0[v14], v15, v16);
  *&v0[OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_picker] = 0;
  *&v0[OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_selection] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_maxPixelDimension] = 8000;
  v17 = type metadata accessor for StickerPhotosController();
  v37.receiver = v0;
  v37.super_class = v17;
  v18 = objc_msgSendSuper2(&v37, "init");
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 sharedPhotoLibrary];
  sub_10007D3F0();
  sub_10007D430();
  sub_10007D400();
  sub_100006D40(&qword_1000B3088);
  *(swift_allocObject() + 16) = xmmword_10008D5C0;
  sub_10007D3A0();
  sub_10007D390();
  sub_10007D360();
  sub_10007D380();
  v22 = v34;
  (*(v4 + 8))(v6, v34);
  sub_10007D370();

  (*(v4 + 56))(v9, 0, 1, v22);
  v23 = v33;
  sub_10007D440();
  sub_10007D460();
  v24 = sub_10007D470();
  (*(*(v24 - 8) + 56))(v3, 0, 1, v24);
  v25 = v35;
  sub_10007D410();
  sub_10007D420();
  sub_10000B77C(0, &qword_1000B3090);
  (*(v23 + 16))(v36, v13, v25);
  v26 = sub_10007DB10();
  sub_10003D710(&qword_1000B3098, type metadata accessor for StickerPhotosController);
  sub_10007DB20();
  v27 = [v26 presentationController];
  if (v27)
  {
    v28 = v27;
    [v27 setDelegate:v20];
  }

  (*(v23 + 8))(v13, v25);
  v29 = OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_picker;
  swift_beginAccess();
  v30 = *&v20[v29];
  *&v20[v29] = v26;

  return v20;
}

uint64_t type metadata accessor for StickerPhotosController()
{
  result = qword_1000B5A80;
  if (!qword_1000B5A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10003A49C()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension23StickerPhotosController_picker;
  swift_beginAccess();
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  v4.receiver = v0;
  v4.super_class = type metadata accessor for StickerPhotosController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10003A61C()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B59E8);
  sub_10000AE78(v0, qword_1000B59E8);
  return sub_10007C770();
}

void sub_10003A6A4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_opt_self() assetResourcesForLivePhoto:a1];
  sub_10000B77C(0, &unk_1000B30A0);
  v8 = sub_10007D8E0();

  v21 = a3;
  if (v8 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10007DDB0())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = sub_10007DCD0();
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ([v11 type] == 1)
      {

        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10008D5D0;
        v15 = [objc_opt_self() defaultManager];
        v26 = sub_10003D3EC;
        v27 = v14;
        aBlock = _NSConcreteStackBlock;
        v23 = 1107296256;
        v24 = sub_10003B41C;
        v25 = &unk_1000A4810;
        v16 = _Block_copy(&aBlock);

        v17 = swift_allocObject();
        v17[2] = v3;
        v17[3] = v14;
        v17[4] = a2;
        v17[5] = v21;
        v17[6] = a1;
        v26 = sub_10003D4B4;
        v27 = v17;
        aBlock = _NSConcreteStackBlock;
        v23 = 1107296256;
        v24 = sub_1000328C8;
        v25 = &unk_1000A4860;
        v18 = _Block_copy(&aBlock);

        v19 = a1;

        v20 = v3;

        [v15 requestDataForAssetResource:v12 options:0 dataReceivedHandler:v16 completionHandler:v18];
        _Block_release(v18);
        _Block_release(v16);

        return;
      }

      ++v10;
      if (v13 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

uint64_t sub_10003A9D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v27[1] = a3;
  v27[2] = a5;
  v31 = sub_10007D2F0();
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007D320();
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin(v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007D3E0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B77C(0, &qword_1000B22E0);
  v28 = sub_10007DAC0();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v16 + 16))(v18, a4, v15);
  v20 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v19;
  *(v21 + 3) = a1;
  *(v21 + 4) = a2;
  (*(v16 + 32))(&v21[v20], v18, v15);
  aBlock[4] = v29;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = v30;
  v22 = _Block_copy(aBlock);
  v23 = a1;
  swift_errorRetain();

  sub_10007D310();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003D710(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000B894();
  v24 = v31;
  sub_10007DC50();
  v25 = v28;
  sub_10007DAD0();
  _Block_release(v22);

  (*(v34 + 8))(v11, v24);
  return (*(v32 + 8))(v14, v33);
}

void sub_10003AD90(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = &off_1000AE000;
  [a1 size];
  v12 = v11;
  [a1 size];
  if (v12 > v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = v14;
  if (v14 >= 8001)
  {
    v15 = [a1 CGImage];
    if (v15)
    {
      v10 = v15;
      if (qword_1000B59E0 == -1)
      {
LABEL_10:
        v16 = sub_10007C780();
        sub_10000AE78(v16, qword_1000B59E8);
        v17 = v4;
        v18 = sub_10007C760();
        v19 = sub_10007DA30();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 134218240;
          *(v20 + 4) = v5;
          *(v20 + 12) = 2048;
          *(v20 + 14) = 8000;

          _os_log_impl(&_mh_execute_header, v18, v19, "maxDimension: %ld is greater than max: %ld, attempting downscale", v20, 0x16u);
        }

        else
        {

          v18 = v17;
        }

        DownsampledImage = _UIStickerCreateDownsampledImage();
        v23 = [objc_allocWithZone(UIImage) initWithCGImage:DownsampledImage];

        v21 = v23;
        goto LABEL_15;
      }

LABEL_21:
      swift_once();
      goto LABEL_10;
    }
  }

  v21 = a1;
LABEL_15:
  v24 = v21;
  sub_10003B7BC(v21, a2, a3, a4);
}

uint64_t sub_10003AFE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v29 = a5;
  v35 = sub_10007D2F0();
  v38 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007D320();
  v36 = *(v11 - 8);
  v37 = v11;
  __chkstk_darwin(v11);
  v30 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10007D3E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10000B77C(0, &qword_1000B22E0);
  v33 = sub_10007DAC0();
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v14 + 16))(&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v13);
  v18 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v16;
  *(v19 + 3) = a1;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  (*(v14 + 32))(&v19[v18], &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v20 = &v19[(v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  v21 = v32;
  *v20 = v31;
  *(v20 + 1) = v21;
  aBlock[4] = sub_10003E14C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000136A4;
  aBlock[3] = &unk_1000A4AC8;
  v22 = _Block_copy(aBlock);

  sub_10003E47C(a1, a2);
  swift_errorRetain();

  v23 = v30;
  sub_10007D310();
  v39 = _swiftEmptyArrayStorage;
  sub_10003D710(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000B894();
  v25 = v34;
  v24 = v35;
  sub_10007DC50();
  v26 = v33;
  sub_10007DAD0();
  _Block_release(v22);

  (*(v38 + 8))(v25, v24);
  (*(v36 + 8))(v23, v37);
}

uint64_t sub_10003B41C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_10007C3D0();
  v7 = v6;

  v3(v5, v7);
  sub_10003D398(v5, v7);
}

uint64_t sub_10003B4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = a3;
  v8 = sub_10007D2F0();
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10007D320();
  v11 = *(v22 - 8);
  __chkstk_darwin(v22);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B77C(0, &qword_1000B22E0);
  v14 = sub_10007DAC0();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a2;
  v16[4] = v21;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_10003D614;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = &unk_1000A4910;
  v17 = _Block_copy(aBlock);

  v18 = a5;

  sub_10007D310();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003D710(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000B894();
  sub_10007DC50();
  sub_10007DAD0();
  _Block_release(v17);

  (*(v23 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v22);
}

void sub_10003B7BC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_10007C480();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*((swift_isaMask & *v4) + 0xA8))(v12);
  if (v15)
  {
    v16 = v15;
    v27 = v10;
    v28 = _swiftEmptyArrayStorage;
    if (a4 && a3)
    {
      type metadata accessor for StickerLivePhotoConfirmationController(0);
      v17 = a4;

      v18 = sub_10005A010(a1, a2, a3, v17);
      sub_10007D8B0();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10007D900();
      }

      sub_10007D930();
      v19 = *((swift_isaMask & *v18) + 0x150);
      v20 = swift_unknownObjectRetain();
      v19(v20, &off_1000A48A8);
      v21 = [v18 presentationController];

      if (v21)
      {
        [v21 setDelegate:v5];
      }

      v22 = v27;
    }

    else
    {
      type metadata accessor for StickerImageConfirmationController();

      v17 = sub_100007100(a1, a2, a3);
      sub_10007D8B0();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10007D900();
      }

      sub_10007D930();
      v23 = *((swift_isaMask & *v17) + 0xC8);
      v24 = swift_unknownObjectRetain();
      v23(v24, &off_1000A4888);
      v18 = [v17 presentationController];

      if (!v18)
      {
        v22 = v27;
        goto LABEL_15;
      }

      [v18 setDelegate:v4];
      v22 = v27;
    }

LABEL_15:
    (*(v11 + 104))(v14, enum case for StickersCancelState.choosePhoto(_:), v22);
    (*((swift_isaMask & *v5) + 0x98))(v14);
    v25 = [objc_allocWithZone(UINavigationController) init];
    sub_10000B77C(0, &qword_1000B3B10);
    isa = sub_10007D8C0().super.isa;

    [v25 setViewControllers:isa];

    [v25 setToolbarHidden:0];
    [v16 presentViewController:v25 animated:1 completion:0];
  }
}

uint64_t sub_10003BC1C()
{
  v1 = *((swift_isaMask & *v0) + 0xC0);
  v2 = *(v1() + 16);

  if (v2)
  {
    v4 = (*((swift_isaMask & *v0) + 0xA8))(result);
    if (v4)
    {
      v5 = v4;
      v1();
      isa = sub_10007D8C0().super.isa;

      [v5 deselectAssetsWithIdentifiers:isa];
    }

    v7 = *((swift_isaMask & *v0) + 0xC8);

    return v7(_swiftEmptyArrayStorage);
  }

  return result;
}

id sub_10003BD54(void *a1)
{
  sub_10003BC1C();

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

void sub_10003BD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *((swift_isaMask & *v3) + 0x78);
  v8 = v7();
  if (v8)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v3, ObjectType, v10);
    v8 = swift_unknownObjectRelease();
  }

  if ((v7)(v8))
  {
    v13 = v12;
    v14 = swift_getObjectType();
    (*(v13 + 32))(v3, a3, v14, v13);
    swift_unknownObjectRelease();
  }

  sub_10003BEB0(a1, a2);
}

void sub_10003BEB0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = (*(a2 + 8))(ObjectType, a2);
  if (v5)
  {
    v21 = v5;
    (*(a2 + 16))(v22, ObjectType, a2);
    if ((v23 & 1) == 0)
    {
      v6 = *v22;
      v7 = *&v22[1];
      v8 = *&v22[2];
      v9 = *&v22[3];
      v10 = (*(a2 + 32))(ObjectType, a2);
      v12 = v11;
      v14 = v13;
      v16 = v15;
      if ((*((swift_isaMask & *v2) + 0x78))())
      {
        v18 = v17;
        v20 = swift_getObjectType();
        v19 = (*(a2 + 24))(ObjectType, a2);
        (*(v18 + 24))(v2, v19, v21, v10, v12, v14, v16 & 1, v20, v6, v7, v8, v9, v18);

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_10003C0A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *((swift_isaMask & *v4) + 0x78);
  v10 = v9();
  if (v10)
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v4, ObjectType, v12);
    v10 = swift_unknownObjectRelease();
  }

  if ((v9)(v10))
  {
    v15 = v14;
    v16 = swift_getObjectType();
    (*(v15 + 40))(v4, a3, a4 & 1, v16, v15);
    swift_unknownObjectRelease();
  }

  sub_10003BEB0(a1, a2);
}

uint64_t sub_10003C1CC(uint64_t a1, uint64_t a2)
{
  result = (*((swift_isaMask & *v2) + 0x78))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10003C2CC()
{
  result = (*((swift_isaMask & *v0) + 0x78))();
  if (result)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_10003C434(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006D40(&qword_1000B30F0);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10003C540(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_10003C5EC(uint64_t a1)
{
  v3 = sub_100006D40(&qword_1000B29D8);
  __chkstk_darwin(v3 - 8);
  v88 = &v83 - v4;
  v90 = sub_10007C730();
  v5 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007D3E0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v98 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v12 = __chkstk_darwin(v11);
  v16 = &v83 - v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    v94 = v14;
    v105 = v13;
    v106 = v5;
    v100 = v1;
    v95 = v8;
    v19 = *(v8 + 16);
    v18 = v8 + 16;
    v111 = v19;
    v20 = *(v18 + 64);
    v21 = ~v20;
    v99 = v20;
    v22 = a1 + ((v20 + 32) & ~v20);
    v23 = *(v18 + 56);
    v109 = (v18 - 8);
    v110 = v23;
    v24 = _swiftEmptyArrayStorage;
    v104 = v22;
    v101 = v7;
    v102 = v17;
    v107 = v18;
    v19(v16, v22, v7);
    while (1)
    {
      v26 = sub_10007D3D0();
      v28 = v27;
      v108 = *v109;
      v108(v16, v7);
      if (v28)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_10003C434(0, *(v24 + 2) + 1, 1, v24);
        }

        v30 = *(v24 + 2);
        v29 = *(v24 + 3);
        if (v30 >= v29 >> 1)
        {
          v24 = sub_10003C434((v29 > 1), v30 + 1, 1, v24);
        }

        *(v24 + 2) = v30 + 1;
        v25 = &v24[16 * v30];
        *(v25 + 4) = v26;
        *(v25 + 5) = v28;
        v7 = v101;
      }

      v22 += v110;
      if (!--v17)
      {
        break;
      }

      v111(v16, v22, v7);
    }

    (*((swift_isaMask & *v100) + 0xC8))(v24);
    v97 = [objc_allocWithZone(StickerPhotosUtil) init];
    sub_10000B77C(0, &qword_1000B30E0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v87 = (v106 + 48);
    v86 = (v106 + 32);
    v96 = (v99 + 24) & v21;
    v94 += v96;
    v85 = (v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 += 4;
    v84 = (v106 + 8);
    v93 = &v114;
    *&v31 = 136315138;
    v91 = v31;
    v32 = v105;
    v33 = v111;
    while (1)
    {
      v33(v32, v104 + v17 * v110, v7);
      v34 = sub_10007D3C0();
      if ([v34 canLoadObjectOfClass:ObjCClassFromMetadata])
      {
        v35 = v98;
        v33(v98, v32, v7);
        v36 = swift_allocObject();
        v37 = v100;
        *(v36 + 16) = v100;
        (*v95)(v36 + v96, v35, v7);
        v116 = sub_10003DA8C;
        v117 = v36;
        aBlock = _NSConcreteStackBlock;
        v113 = 1107296256;
        v114 = sub_10003E4E4;
        v115 = &unk_1000A49D8;
        v38 = _Block_copy(&aBlock);
        v39 = v37;

        [v97 loadLivePhotoFromItemProvider:v34 completion:v38];
        _Block_release(v38);
      }

      else
      {
        sub_10000B77C(0, &qword_1000B30E8);
        if ([v34 canLoadObjectOfClass:swift_getObjCClassFromMetadata()])
        {
          v40 = v98;
          v33(v98, v32, v7);
          v41 = swift_allocObject();
          v42 = v100;
          *(v41 + 16) = v100;
          (*v95)(v41 + v96, v40, v7);
          v116 = sub_10003D9A0;
          v117 = v41;
          aBlock = _NSConcreteStackBlock;
          v113 = 1107296256;
          v114 = sub_10003E4E4;
          v115 = &unk_1000A4988;
          v43 = _Block_copy(&aBlock);
          v44 = v42;

          [v97 loadImageFromItemProvider:v34 completion:v43];

          _Block_release(v43);
        }

        else
        {
          v92 = v34;
          v45 = [v34 registeredTypeIdentifiers];
          v46 = sub_10007D8E0();

          v47 = CGImageSourceCopyTypeIdentifiers();
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            aBlock = 0;
            sub_10007D8D0();

            v49 = aBlock;
            if (aBlock)
            {
              v50 = *(v46 + 16);
              v106 = v46;
              if (v50)
              {
                v51 = 0;
                v52 = (v46 + 40);
                while (1)
                {
                  if (v51 >= *(v106 + 16))
                  {
                    __break(1u);
                    return;
                  }

                  v54 = *(v52 - 1);
                  v53 = *v52;
                  aBlock = v54;
                  v113 = v53;
                  __chkstk_darwin(v48);
                  *(&v83 - 2) = &aBlock;

                  if (sub_10003C540(sub_10003D7AC, (&v83 - 4), v49))
                  {
                    break;
                  }

                  ++v51;
                  v52 += 2;
                  v32 = v105;
                  v33 = v111;
                  if (v50 == v51)
                  {
                    goto LABEL_23;
                  }
                }

                v64 = v88;
                sub_10007C740();
                v65 = v90;
                v66 = (*v87)(v64, 1, v90);
                v7 = v101;
                v32 = v105;
                if (v66 == 1)
                {

                  sub_10000B348(v64, &qword_1000B29D8);
                  v33 = v111;
                  goto LABEL_25;
                }

                (*v86)(v89, v64, v65);
                if (qword_1000B59E0 != -1)
                {
                  swift_once();
                }

                v67 = sub_10007C780();
                sub_10000AE78(v67, qword_1000B59E8);

                v68 = sub_10007C760();
                v69 = sub_10007DA30();

                if (os_log_type_enabled(v68, v69))
                {
                  v70 = swift_slowAlloc();
                  v71 = swift_slowAlloc();
                  aBlock = v71;
                  *v70 = v91;
                  *(v70 + 4) = sub_10000A660(v54, v53, &aBlock);
                  _os_log_impl(&_mh_execute_header, v68, v69, "Attempting to load data with type identifier %s as a UIImage", v70, 0xCu);
                  sub_10000B5CC(v71);
                }

                v72 = v111;
                v73 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v74 = v98;
                v72(v98, v105, v7);
                v75 = v85;
                v76 = swift_allocObject();
                *(v76 + 16) = v73;
                (*v95)(v76 + v96, v74, v7);
                v77 = (v76 + v75);
                *v77 = v54;
                v77[1] = v53;

                v78 = v89;
                v79 = v92;

                v33 = v111;

                (*v84)(v78, v90);
                v32 = v105;
                v108(v105, v7);

                goto LABEL_32;
              }

LABEL_23:

              v7 = v101;
            }
          }

          else
          {
          }

LABEL_25:
          if (qword_1000B59E0 != -1)
          {
            swift_once();
          }

          v55 = sub_10007C780();
          sub_10000AE78(v55, qword_1000B59E8);

          v56 = sub_10007C760();
          v57 = sub_10007DA10();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            aBlock = v59;
            *v58 = v91;
            v60 = sub_10007D8F0();
            v62 = v61;

            v63 = sub_10000A660(v60, v62, &aBlock);

            *(v58 + 4) = v63;
            v7 = v101;
            _os_log_impl(&_mh_execute_header, v56, v57, "Error loading item from provider with registered types %s", v58, 0xCu);
            sub_10000B5CC(v59);

            v33 = v111;
          }

          else
          {
          }
        }
      }

      v108(v32, v7);
LABEL_32:
      if (++v17 == v102)
      {

        return;
      }
    }
  }

  if ((*((swift_isaMask & *v1) + 0x78))(v12))
  {
    v81 = v80;
    ObjectType = swift_getObjectType();
    (*(v81 + 8))(v1, ObjectType, v81);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10003D360()
{
  sub_10003D398(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003D398(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10003D3EC()
{
  swift_beginAccess();
  sub_10007C3E0();
  return swift_endAccess();
}

uint64_t sub_10003D44C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003D464()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003D4CC()
{
  result = sub_10007C480();
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

uint64_t sub_10003D58C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D5C4()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_10003D614()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = *(v1 + 16);
    v8 = *(v1 + 24);
    v9 = objc_allocWithZone(UIImage);
    sub_10003D758(v7, v8);
    isa = sub_10007C3C0().super.isa;
    v11 = [v9 initWithData:isa];

    sub_10003D398(v7, v8);
    if (v11)
    {
      sub_10003AD90(v11, v2, v3, v4);
    }
  }
}

uint64_t sub_10003D710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003D758(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10003D7AC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10007DE50() & 1;
  }
}

uint64_t sub_10003D804()
{
  v1 = sub_10007D3E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10003D8E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_10007D3E0() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_10003AFE4(a1, a2, a3, v9, v3 + v8, v11, v12);
}

uint64_t sub_10003D9C8()
{
  v1 = sub_10007D3E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10003DB50()
{
  sub_10007D3E0();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (!v1 || v2)
    {
      if (qword_1000B59E0 != -1)
      {
        swift_once();
      }

      v8 = sub_10007C780();
      sub_10000AE78(v8, qword_1000B59E8);
      swift_errorRetain();
      v9 = sub_10007C760();
      v10 = sub_10007DA10();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        if (v2)
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

        *(v11 + 4) = v13;
        *v12 = v14;
        _os_log_impl(&_mh_execute_header, v9, v10, "Error loading live photo: %@", v11, 0xCu);
        sub_10000B348(v12, &unk_1000B2D40);
      }
    }

    else
    {
      v5 = v1;
      v6 = sub_10007D3D0();
      sub_10003A6A4(v5, v6, v7);
    }
  }
}

uint64_t sub_10003DD64()
{
  v1 = sub_10007D3E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10003DE38()
{
  sub_10007D3E0();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (!v1 || v2)
    {
      if (qword_1000B59E0 != -1)
      {
        swift_once();
      }

      v8 = sub_10007C780();
      sub_10000AE78(v8, qword_1000B59E8);
      swift_errorRetain();
      v9 = sub_10007C760();
      v10 = sub_10007DA10();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        if (v2)
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

        *(v11 + 4) = v13;
        *v12 = v14;
        _os_log_impl(&_mh_execute_header, v9, v10, "Error loading image from photo: %@", v11, 0xCu);
        sub_10000B348(v12, &unk_1000B2D40);
      }
    }

    else
    {
      v5 = v1;
      v6 = sub_10007D3D0();
      sub_10003AD90(v5, v6, v7, 0);
    }
  }
}

uint64_t sub_10003E050()
{
  v1 = sub_10007D3E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  v5 = *(v0 + 32);
  if (v5 >> 60 != 15)
  {
    sub_10003D398(*(v0 + 24), v5);
  }

  v6 = (v3 + 48) & ~v3;

  (*(v2 + 8))(v0 + v6, v1);

  return _swift_deallocObject(v0, ((v4 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

void sub_10003E14C()
{
  v1 = *(sub_10007D3E0() - 8);
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 48) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v5;
  v6 = v5[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (v4 >> 60 != 15)
    {
      v10 = objc_allocWithZone(UIImage);
      sub_10003D758(v2, v4);
      sub_10003D758(v2, v4);
      isa = sub_10007C3C0().super.isa;
      v12 = [v10 initWithData:isa];

      sub_10003E490(v2, v4);
      if (v12)
      {
        if (!v3)
        {
          v21 = sub_10007D3D0();
          sub_10003AD90(v12, v21, v22, 0);

          sub_10003E490(v2, v4);
          return;
        }
      }

      sub_10003E490(v2, v4);
    }

    if (qword_1000B59E0 != -1)
    {
      swift_once();
    }

    v13 = sub_10007C780();
    sub_10000AE78(v13, qword_1000B59E8);

    swift_errorRetain();
    v14 = sub_10007C760();
    v15 = sub_10007DA10();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_10000A660(v7, v6, &v23);
      *(v16 + 12) = 2112;
      if (v3)
      {
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v16 + 14) = v19;
      *v17 = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error loading %s image: %@", v16, 0x16u);
      sub_10000B348(v17, &unk_1000B2D40);

      sub_10000B5CC(v18);
    }
  }
}

uint64_t sub_10003E47C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003D758(a1, a2);
  }

  return a1;
}

uint64_t sub_10003E490(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003D398(a1, a2);
  }

  return a1;
}

uint64_t sub_10003E4E8()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B5A98);
  sub_10000AE78(v0, qword_1000B5A98);
  return sub_10007C770();
}

void sub_10003E568()
{
  v0 = IMBalloonPluginIdentifierAnimojiStickers;
  v1 = IMBalloonExtensionIDWithSuffix();

  if (v1)
  {
    v2 = sub_10007D7D0();
    v4 = v3;

    qword_1000B7250 = v2;
    *algn_1000B7258 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_10003E5DC()
{
  if (qword_1000B5AB0 != -1)
  {
    swift_once();
  }

  return &qword_1000B7250;
}

uint64_t sub_10003E62C()
{
  if (qword_1000B5AB0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B7250;

  return v0;
}

uint64_t sub_10003E6C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007C8D0();

  return v1;
}

uint64_t sub_10003E738@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10003E784(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_10003E7EC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007C8E0();
}

void (*sub_10003E868(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_10007C8C0();
  return sub_1000532C8;
}

uint64_t sub_10003E94C(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B3100);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100006D40(&qword_1000B30F8);
  sub_10007C8B0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_10003EA84(uint64_t *a1))(uint64_t, char)
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
  v5 = sub_100006D40(&qword_1000B3100);
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

  v9 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__selectedItemIdentifier;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100006D40(&qword_1000B30F8);
  sub_10007C8A0();
  swift_endAccess();
  return sub_1000532CC;
}

uint64_t sub_10003EC08@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result & 1;
  return result;
}

void (*sub_10003ECB4(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_10007C8C0();
  return sub_1000532C8;
}

uint64_t sub_10003ED74(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B3110);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100006D40(&qword_1000B3108);
  sub_10007C8B0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_10003EEAC(uint64_t *a1))(uint64_t, char)
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
  v5 = sub_100006D40(&qword_1000B3110);
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

  v9 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__canShowAppStore;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100006D40(&qword_1000B3108);
  sub_10007C8A0();
  swift_endAccess();
  return sub_1000532CC;
}

uint64_t sub_10003F030@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

void (*sub_10003F0DC(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_10007C8C0();
  return sub_1000532C8;
}

uint64_t sub_10003F19C(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B3110);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100006D40(&qword_1000B3108);
  sub_10007C8B0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_10003F2D4(uint64_t *a1))(uint64_t, char)
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
  v5 = sub_100006D40(&qword_1000B3110);
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

  v9 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__isUserContentSupported;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100006D40(&qword_1000B3108);
  sub_10007C8A0();
  swift_endAccess();
  return sub_1000532CC;
}

uint64_t sub_10003F458@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result & 1;
  return result;
}

void (*sub_10003F514(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_10007C8C0();
  return sub_1000532C8;
}

uint64_t sub_10003F5D4(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B3110);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100006D40(&qword_1000B3108);
  sub_10007C8B0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_10003F70C(uint64_t *a1))(uint64_t, char)
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
  v5 = sub_100006D40(&qword_1000B3110);
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

  v9 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__willShowMemoji;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100006D40(&qword_1000B3108);
  sub_10007C8A0();
  swift_endAccess();
  return sub_1000532CC;
}

uint64_t sub_10003F8C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007C8D0();

  return v1;
}

uint64_t sub_10003F92C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 312))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10003F9E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007C8E0();
}

void (*sub_10003FA54(uint64_t *a1))(void *)
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
  *(v3 + 48) = sub_10007C8C0();
  return sub_10003FAF8;
}

uint64_t sub_10003FB18(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  sub_100006D40(a2);
  sub_10007C8A0();
  return swift_endAccess();
}

uint64_t sub_10003FB90(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B3110);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_100006D40(&qword_1000B3108);
  sub_10007C8B0();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_10003FCC8(uint64_t *a1))(uint64_t, char)
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
  v5 = sub_100006D40(&qword_1000B3110);
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

  v9 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__didShowMemoji;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100006D40(&qword_1000B3108);
  sub_10007C8A0();
  swift_endAccess();
  return sub_10003FE38;
}

uint64_t sub_10003FE3C()
{
  v1 = (*(*v0 + 120))();
  v3 = v2;
  if (qword_1000B5AB0 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  if (v1 == qword_1000B7250 && v3 == *algn_1000B7258)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_10007DE50();
  }

  return v5 & 1;
}

uint64_t sub_10003FEF8()
{
  if ((*(*v0 + 264))() & 1) != 0 || ((*(*v0 + 312))())
  {
    return 1;
  }

  v2 = *(*v0 + 360);

  return v2();
}

uint64_t sub_10003FFB0()
{
  v5[0] = (*(*v0 + 120))();
  v5[1] = v1;
  v4[2] = v5;
  v2 = sub_10003C540(sub_10003D7AC, v4, &off_1000A4AF0);
  swift_arrayDestroy();

  return v2 & 1;
}

uint64_t sub_100040060()
{
  v0 = swift_allocObject();
  sub_100040098();
  return v0;
}

uint64_t sub_100040098()
{
  v1 = v0;
  v2 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_100006D40(&qword_1000B3108);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = sub_100006D40(&qword_1000B30F8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - v11;
  v13 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__selectedItemIdentifier;
  strcpy(v23, "uninitialized");
  v23[7] = -4864;
  sub_10007C890();
  (*(v10 + 32))(v1 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__canShowAppStore;
  LOBYTE(v23[0]) = 0;
  sub_10007C890();
  v15 = *(v6 + 32);
  v15(v1 + v14, v8, v5);
  v16 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__isUserContentSupported;
  LOBYTE(v23[0]) = 1;
  sub_10007C890();
  v15(v1 + v16, v8, v5);
  v17 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__willShowMemoji;
  LOBYTE(v23[0]) = 0;
  sub_10007C890();
  v15(v1 + v17, v8, v5);
  v18 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__didShowMemoji;
  LOBYTE(v23[0]) = 0;
  sub_10007C890();
  v15(v1 + v18, v8, v5);
  v19 = sub_10007D990();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  sub_10007D960();

  v20 = sub_10007D950();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v1;
  sub_100009514(0, 0, v4, &unk_10008D8E0, v21);

  return v1;
}

uint64_t sub_100040418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_10007D960();
  v4[19] = sub_10007D950();
  v6 = sub_10007D940();
  v4[20] = v6;
  v4[21] = v5;

  return _swift_task_switch(sub_1000404B0, v6, v5);
}

uint64_t sub_1000404B0()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = IMBalloonPluginIdentifierAppStore;
  v0[22] = v1;
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_10004060C;
  v3 = swift_continuation_init();
  v0[17] = sub_100006D40(&qword_1000B39A8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100040B98;
  v0[13] = &unk_1000A5390;
  v0[14] = v3;
  [v1 canShowBrowserForPluginIdentifier:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10004060C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return _swift_task_switch(sub_100040714, v2, v1);
}

uint64_t sub_100040714()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  (*(**(v0 + 144) + 176))(*(v0 + 208));

  if (qword_1000B5A90 != -1)
  {
    swift_once();
  }

  v3 = sub_10007C780();
  *(v0 + 192) = sub_10000AE78(v3, qword_1000B5A98);

  v4 = sub_10007C760();
  v5 = sub_10007D9F0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = (*(*v7 + 168))() & 1;

    _os_log_impl(&_mh_execute_header, v4, v5, "Can show App Store: %{BOOL}d", v8, 8u);
  }

  else
  {
  }

  sub_10007D720();
  v9 = swift_task_alloc();
  *(v0 + 200) = v9;
  *v9 = v0;
  v9[1] = sub_100040910;

  return static Sticker.isUserContentSupported()();
}

uint64_t sub_100040910(char a1)
{
  v2 = *v1;
  *(*v1 + 209) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return _swift_task_switch(sub_100040A38, v4, v3);
}

uint64_t sub_100040A38()
{
  v1 = *(v0 + 209);
  v2 = *(v0 + 144);

  (*(*v2 + 224))(v1);

  v3 = sub_10007C760();
  v4 = sub_10007D9F0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = (*(*v6 + 216))() & 1;

    _os_log_impl(&_mh_execute_header, v3, v4, "Is user content supported: %{BOOL}d", v7, 8u);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100040B98(uint64_t a1, char a2)
{
  **(*(*sub_10000C9A4((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_100040BF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10007D2F0();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007D320();
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007D340();
  v39 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v38 = &v32 - v16;
  if (a1 == 0x696A6F6D656DLL && a2 == 0xE600000000000000 || (sub_10007DE50() & 1) != 0)
  {
    if (qword_1000B5AB0 != -1)
    {
      swift_once();
    }

    a1 = qword_1000B7250;
    a2 = *algn_1000B7258;
  }

  else
  {
    v17 = qword_1000B5AB0;

    if (v17 != -1)
    {
      swift_once();
    }
  }

  if (a1 == qword_1000B7250 && a2 == *algn_1000B7258)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_10007DE50();
  }

  v19 = (*(*v3 + 272))(v18 & 1);
  v20 = (*(*v3 + 264))(v19);
  v21 = *v3;
  if (v20)
  {
    (*(v21 + 320))(1);
  }

  else if ((*(v21 + 312))())
  {
    sub_10004DCB8();
    v36 = sub_10007DAC0();
    sub_10007D330();
    sub_10007D350();
    v22 = *(v39 + 8);
    v39 += 8;
    v37 = v22;
    v22(v15, v12);
    v23 = swift_allocObject();
    swift_weakInit();
    v48 = sub_10004DDE4;
    v49 = v23;
    v35 = v23;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_1000136A4;
    v47 = &unk_1000A4BE0;
    v33 = _Block_copy(&aBlock);

    sub_10007D310();
    v43 = _swiftEmptyArrayStorage;
    sub_10004DFB4(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
    v34 = v12;
    sub_100006D40(&unk_1000B22F0);
    sub_10000D744(&qword_1000B2980, &unk_1000B22F0);
    sub_10007DC50();
    v24 = v38;
    v25 = v33;
    v26 = v36;
    sub_10007DAB0();
    _Block_release(v25);

    (*(v42 + 8))(v8, v6);
    (*(v40 + 8))(v11, v41);
    v37(v24, v34);
  }

  sub_10004DCB8();
  v27 = sub_10007DAC0();
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = a1;
  v29[4] = a2;
  v48 = sub_10004DDC0;
  v49 = v29;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_1000136A4;
  v47 = &unk_1000A4BB8;
  v30 = _Block_copy(&aBlock);

  sub_10007D310();
  v43 = _swiftEmptyArrayStorage;
  sub_10004DFB4(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000D744(&qword_1000B2980, &unk_1000B22F0);
  sub_10007DC50();
  sub_10007DAD0();
  _Block_release(v30);

  (*(v42 + 8))(v8, v6);
  (*(v40 + 8))(v11, v41);
}

uint64_t sub_100041394(uint64_t a1)
{
  if (qword_1000B5AC8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  __chkstk_darwin(a1);
  return sub_10007CA30();
}

uint64_t *sub_10004146C()
{
  if (qword_1000B5AC8 != -1)
  {
    swift_once();
  }

  return &qword_1000B7278;
}

uint64_t sub_1000414BC()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__selectedItemIdentifier;
  v2 = sub_100006D40(&qword_1000B30F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__canShowAppStore;
  v4 = sub_100006D40(&qword_1000B3108);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__isUserContentSupported, v4);
  v5(v0 + OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__willShowMemoji, v4);
  v5(v0 + OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__didShowMemoji, v4);
  return v0;
}

uint64_t sub_1000415DC()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__selectedItemIdentifier;
  v2 = sub_100006D40(&qword_1000B30F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__canShowAppStore;
  v4 = sub_100006D40(&qword_1000B3108);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__isUserContentSupported, v4);
  v5(v0 + OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__willShowMemoji, v4);
  v5(v0 + OBJC_IVAR____TtC22StickersUltraExtension25StickerPackStripViewModel__didShowMemoji, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_100041738@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StickerPackStripViewModel(0);
  result = sub_10007C880();
  *a1 = result;
  return result;
}

uint64_t sub_10004180C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007CBE0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100006D40(&qword_1000B3120);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for StickerPackStrip(0);
  sub_10003260C(v1 + *(v10 + 20), v9, &qword_1000B3120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007CA90();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10007DA20();
    v13 = sub_10007CE70();
    sub_10007C750();

    sub_10007CBD0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100041A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_100041B50()
{
  if (qword_1000B5AB0 != -1)
  {
    swift_once();
  }

  qword_1000B7260 = qword_1000B7250;
  *algn_1000B7268 = *algn_1000B7258;
}

uint64_t *sub_100041BBC()
{
  if (qword_1000B5AB8 != -1)
  {
    swift_once();
  }

  return &qword_1000B7260;
}

uint64_t sub_100041C0C()
{
  if (qword_1000B5AB8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000B7260;

  return v0;
}

double sub_100041C74()
{
  result = *sub_100053934();
  qword_1000B7270 = *&result;
  return result;
}

uint64_t *sub_100041C98()
{
  if (qword_1000B5AC0 != -1)
  {
    swift_once();
  }

  return &qword_1000B7270;
}

double sub_100041CE8()
{
  if (qword_1000B5AC0 != -1)
  {
    swift_once();
  }

  return *&qword_1000B7270;
}

uint64_t sub_100041D4C()
{
  result = sub_10007D290();
  qword_1000B7278 = result;
  return result;
}

uint64_t sub_100041D80()
{
  if (qword_1000B5AC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100041E24(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StickerPackStrip(0) + 24);

  return sub_10004DEB4(a1, v3);
}

uint64_t sub_100041EB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100006D40(&qword_1000B3118);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for StickerPackStrip(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_100006D40(&qword_1000B3120);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v7 = a2 + v4[8];
  v24 = 0x746E65636572;
  v25 = 0xE600000000000000;
  sub_10007D170();
  v8 = v21;
  *v7 = v20;
  *(v7 + 2) = v8;
  v9 = a2 + v4[9];
  LOBYTE(v24) = 0;
  sub_10007D170();
  v10 = *(&v20 + 1);
  *v9 = v20;
  *(v9 + 1) = v10;
  v11 = a2 + v4[10];
  *v11 = sub_10004237C;
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = (a2 + v4[11]);
  *v12 = 0xD000000000000013;
  v12[1] = 0x8000000100089360;
  sub_10004DF24(a1, v6);
  sub_10003260C(a1, &v20, &qword_1000B3128);
  v13 = v22;
  if (v22)
  {
    v14 = v23;
    sub_10000C9A4(&v20, v22);
    (*(v14 + 64))(v13, v14);
    sub_10000B5CC(&v20);
  }

  else
  {
    sub_10000B348(&v20, &qword_1000B3128);
    type metadata accessor for StickerPackStripViewModel(0);
    swift_allocObject();
    sub_100040098();
  }

  v15 = (a2 + v4[7]);
  type metadata accessor for StickerPackStripViewModel(0);
  sub_10004DFB4(&qword_1000B3130, type metadata accessor for StickerPackStripViewModel);
  v16 = sub_10007CA40();
  v18 = v17;
  result = sub_10000B348(a1, &qword_1000B3128);
  *v15 = v16;
  v15[1] = v18;
  return result;
}

uint64_t sub_100042224(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StickerPackStrip(0) + 28);

  *(v3 + 8) = a1;
  return result;
}

uint64_t sub_100042260()
{
  type metadata accessor for StickerPackStrip(0);
}

uint64_t sub_1000422E4()
{
  v1 = (v0 + *(type metadata accessor for StickerPackStrip(0) + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = type metadata accessor for StickerPackStripViewModel(0);
  v5 = sub_10004DFB4(&qword_1000B3130, type metadata accessor for StickerPackStripViewModel);

  return ObservedObject.projectedValue.getter(v2, v3, v4, v5);
}

uint64_t sub_10004237C()
{
  iMessageAppsRegistry.shared.unsafeMutableAddressor();
}

uint64_t sub_1000423A8()
{
  v1 = sub_10007CA90();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v8 = *(v0 + *(type metadata accessor for StickerPackStrip(0) + 28) + 8);
  if (((*(*v8 + 360))() & 1) == 0 && ((*(*v8 + 264))() & 1) == 0)
  {
    if (((*(*v8 + 376))() & 1) == 0)
    {
      return 0;
    }

    sub_10004180C(v7);
    (*(v2 + 104))(v5, enum case for LayoutDirection.rightToLeft(_:), v1);
    v12 = sub_10007CA80();
    v13 = *(v2 + 8);
    v13(v5, v1);
    v13(v7, v1);
    if ((v12 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_10007D2D0();
    return v11;
  }

  sub_10004180C(v7);
  (*(v2 + 104))(v5, enum case for LayoutDirection.rightToLeft(_:), v1);
  v9 = sub_10007CA80();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_10007D2E0();
  return v11;
}

uint64_t sub_10004268C(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v4 = sub_10007CA90();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  sub_10004180C(&v15 - v9);
  (*(v5 + 104))(v8, enum case for LayoutDirection.rightToLeft(_:), v4);
  v11 = sub_10007CA80();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = (v12)(v10, v4);
  if (v11)
  {
    return a1(v13);
  }

  else
  {
    return a2(v13);
  }
}

uint64_t sub_1000427E8()
{
  v0 = sub_10007CA90();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  sub_10004180C(&v10 - v5);
  (*(v1 + 104))(v4, enum case for LayoutDirection.rightToLeft(_:), v0);
  v7 = sub_10007CA80();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_100042920(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for StickerPackStrip(0);
  v7 = *(v2 + v6[7] + 8);
  if (qword_1000B5AB8 != -1)
  {
    swift_once();
  }

  if (qword_1000B7260 == a1 && *algn_1000B7268 == a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10007DE50();
  }

  v10 = (*(*v7 + 272))(v9 & 1);
  v11 = *(*v7 + 120);
  if (v11(v10) == a1 && v12 == a2)
  {
  }

  else
  {
    v14 = sub_10007DE50();

    if ((v14 & 1) == 0)
    {
      if (v11(result) == 0x616974696E696E75 && v16 == 0xED000064657A696CLL)
      {
      }

      else
      {
        v18 = sub_10007DE50();

        if ((v18 & 1) == 0)
        {
          v20 = v11(v19);
          v21 = (v3 + v6[8]);
          v22 = *v21;
          v23 = *(v21 + 2);
          v27 = v22;
          v28 = v23;
          v31 = v20;
          v32 = v24;
          sub_100006D40(&qword_1000B3138);
          sub_10007D190();
        }
      }

      sub_10003260C(v3 + v6[6], &v27, &qword_1000B3128);
      v25 = v29;
      if (v29)
      {
        v26 = v30;
        sub_10000C9A4(&v27, v29);
        (*(v26 + 8))(v3, a1, a2, v25, v26);
        return sub_10000B5CC(&v27);
      }

      else
      {
        return sub_10000B348(&v27, &qword_1000B3128);
      }
    }
  }

  return result;
}

uint64_t sub_100042BE4@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)@<X8>)
{
  v56 = a1;
  v60 = type metadata accessor for StickerPackStrip(0);
  v53 = *(v60 - 8);
  __chkstk_darwin(v60);
  v54 = v2;
  v55 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10007C930();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v51 - v8;
  v59 = objc_opt_self();
  v10 = [v59 mainBundle];
  v49._countAndFlagsBits = 0xE000000000000000;
  v69._countAndFlagsBits = 0x746E65636552;
  v69._object = 0xE600000000000000;
  v72.value._countAndFlagsBits = 0;
  v72.value._object = 0;
  v11.super.isa = v10;
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  v12 = sub_10007C340(v69, v72, v11, v75, v49);
  v57 = v13;
  v58 = v12;

  v14 = v1;
  sub_10004C620(&qword_1000B3118, &type metadata accessor for ColorScheme, v9);
  v15 = *(v4 + 104);
  v52 = enum case for ColorScheme.light(_:);
  v51 = v15;
  v15(v7);
  sub_10007C920();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v9, v3);
  type metadata accessor for StickerPackStripItem();
  sub_10007D130();
  v63[4] = sub_100035D68(0x746E65636572, 0xE600000000000000, v58, v57);
  v17 = (*(**(v1 + *(v60 + 28) + 8) + 216))();
  v18 = 0;
  if (v17)
  {
    v19 = [v59 mainBundle];
    v50._countAndFlagsBits = 0xE000000000000000;
    v70._countAndFlagsBits = 0x697453206576694CLL;
    v70._object = 0xED00007372656B63;
    v73.value._countAndFlagsBits = 0;
    v73.value._object = 0;
    v20.super.isa = v19;
    v76._countAndFlagsBits = 0;
    v76._object = 0xE000000000000000;
    v21 = sub_10007C340(v70, v73, v20, v76, v50);
    v58 = v22;

    sub_10004C620(&qword_1000B3118, &type metadata accessor for ColorScheme, v9);
    v51(v7, v52, v3);
    sub_10007C920();
    v16(v7, v3);
    v16(v9, v3);
    sub_10007D150();
    v18 = sub_100035D68(0x746E6F4372657375, 0xEB00000000746E65, v21, v58);
  }

  v63[5] = v18;
  v23 = [v59 mainBundle];
  v50._countAndFlagsBits = 0xE000000000000000;
  v71._countAndFlagsBits = 0x696A6F6D45;
  v71._object = 0xE500000000000000;
  v74.value._countAndFlagsBits = 0;
  v74.value._object = 0;
  v24.super.isa = v23;
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  v25 = sub_10007C340(v71, v74, v24, v77, v50);
  v27 = v26;

  v28 = v14;

  sub_10007D150();
  v29 = sub_100035D68(0x696A6F6D65, 0xE500000000000000, v25, v27);
  v30 = 0;
  v63[6] = v29;
  v64 = _swiftEmptyArrayStorage;
  v31 = _swiftEmptyArrayStorage;
LABEL_4:
  if (v30 <= 3)
  {
    v32 = 3;
  }

  else
  {
    v32 = v30;
  }

  while (v30 != 3)
  {
    if (v32 == v30)
    {
      __break(1u);
LABEL_23:
      v35 = sub_10007DDB0();
      if (!v35)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

    if (v63[v30++ + 4])
    {

      sub_10007D8B0();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10007D900();
      }

      sub_10007D930();
      v31 = v64;
      goto LABEL_4;
    }
  }

  sub_100006D40(&qword_1000B3140);
  swift_arrayDestroy();
  type metadata accessor for iMessageAppsRegistry();
  sub_10004DFB4(&qword_1000B3148, type metadata accessor for iMessageAppsRegistry);
  v34 = sub_10007C960();
  v30 = (*(*v34 + 192))(v34);

  if (v30 >> 62)
  {
    goto LABEL_23;
  }

  v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
LABEL_24:

    v39 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_15:
  v64 = _swiftEmptyArrayStorage;
  result = sub_10007DD20();
  if (v35 < 0)
  {
    __break(1u);
    return result;
  }

  v37 = 0;
  do
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v38 = sub_10007DCD0();
    }

    else
    {
    }

    ++v37;
    sub_100035EBC(v38);
    sub_10007DD00();
    sub_10007DD30();
    sub_10007DD40();
    sub_10007DD10();
  }

  while (v35 != v37);

  v39 = v64;
LABEL_25:
  v40 = v55;
  sub_10004E548(v28, v55, type metadata accessor for StickerPackStrip);
  v41 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v42 = (v54 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v31;
  sub_10004E5B0(v40, v43 + v41, type metadata accessor for StickerPackStrip);
  *(v43 + v42) = v39;
  if (qword_1000B5AC0 != -1)
  {
    swift_once();
  }

  sub_10007D270();
  result = sub_10007C9B0();
  v44 = v64;
  v45 = v65;
  v46 = v66;
  v47 = v67;
  v62 = v65;
  v61 = v67;
  v48 = v56;
  *v56 = sub_10004E21C;
  v48[1] = v43;
  v48[2] = v44;
  *(v48 + 24) = v45;
  v48[4] = v46;
  *(v48 + 40) = v47;
  *(v48 + 3) = v68;
  return result;
}

uint64_t sub_10004348C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v20 = a2;
  v21 = a4;
  v8 = sub_10007CA00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StickerPackStrip(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  sub_10004E548(a3, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickerPackStrip);
  (*(v9 + 16))(v11, a1, v8);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = (v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v9 + 80) + v16 + 8) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v20;
  sub_10004E5B0(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15, type metadata accessor for StickerPackStrip);
  *(v18 + v16) = v21;
  (*(v9 + 32))(v18 + v17, v11, v8);
  *a5 = sub_100051020;
  a5[1] = v18;
}

uint64_t sub_1000436BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a3;
  v40 = a1;
  v42 = a6;
  v46 = sub_10007CAE0();
  v11 = *(v46 - 8);
  v47 = *(v11 + 64);
  __chkstk_darwin(v46);
  v45 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StickerPackStrip(0);
  v14 = v13 - 8;
  v44 = *(v13 - 8);
  v43 = *(v44 + 64);
  __chkstk_darwin(v13);
  v41 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100006D40(&qword_1000B3848);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v38 - v18;
  v38[1] = sub_10007CE80();
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a1;
  sub_100006D40(&qword_1000B3850);
  v20 = sub_10000B8F8(&qword_1000B3858);
  v21 = sub_10000B8F8(&qword_1000B3860);
  v22 = sub_10000B8F8(&qword_1000B3868);
  v23 = sub_100051128();
  v24 = sub_1000511E0();
  v53 = v21;
  v54 = v22;
  v55 = v23;
  v56 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v20;
  v54 = &type metadata for String;
  v55 = OpaqueTypeConformance2;
  v56 = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  v26 = sub_10007C910();
  v27 = v39;
  (*(**(v39 + *(v14 + 36) + 8) + 360))(v26);
  sub_10000D744(&qword_1000B3890, &qword_1000B3848);
  v28 = v42;
  sub_10007D020();
  (*(v17 + 8))(v19, v16);
  v29 = (v28 + *(sub_100006D40(&qword_1000B3898) + 36));
  *v29 = 0xD000000000000010;
  v29[1] = 0x800000010008DEA0;
  v30 = v41;
  sub_10004E548(v27, v41, type metadata accessor for StickerPackStrip);
  v32 = v45;
  v31 = v46;
  (*(v11 + 16))(v45, v40, v46);
  v33 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v34 = (v43 + *(v11 + 80) + v33) & ~*(v11 + 80);
  v35 = swift_allocObject();
  sub_10004E5B0(v30, v35 + v33, type metadata accessor for StickerPackStrip);
  (*(v11 + 32))(v35 + v34, v32, v31);
  result = sub_100006D40(&qword_1000B38A0);
  v37 = (v28 + *(result + 36));
  *v37 = sub_100051284;
  v37[1] = v35;
  v37[2] = 0;
  v37[3] = 0;
  return result;
}

uint64_t sub_100043B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v104 = a6;
  v103 = sub_10007CAE0();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v99 = v11;
  v101 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for StickerPackStrip(0);
  v92 = *(v114 - 8);
  __chkstk_darwin(v114);
  v93 = v12;
  v97 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100006D40(&qword_1000B38A8);
  v112 = *(v111 - 1);
  v13 = __chkstk_darwin(v111);
  v110 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v109 = (&v83 - v15);
  v89 = sub_100006D40(&qword_1000B38B0);
  v85 = *(v89 - 8);
  v16 = v85;
  v17 = __chkstk_darwin(v89);
  v108 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v105 = &v83 - v19;
  v107 = sub_100006D40(&qword_1000B38B8);
  v87 = *(v107 - 8);
  v20 = v87;
  v21 = __chkstk_darwin(v107);
  v106 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v83 - v23;
  v25 = sub_100006D40(&qword_1000B3880);
  __chkstk_darwin(v25 - 8);
  v27 = &v83 - v26;
  v113 = sub_100006D40(&qword_1000B3860);
  __chkstk_darwin(v113);
  v91 = &v83 - v28;
  v96 = sub_100006D40(&qword_1000B3858);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v83 - v29;
  *v27 = sub_10007CC10();
  *(v27 + 1) = 0x4020000000000000;
  v27[16] = 0;
  v30 = *(sub_100006D40(&qword_1000B38C0) + 44);
  v90 = v27;
  v88 = &v27[v30];
  v122 = a1;
  v123 = a2;
  sub_100006D40(&qword_1000B38C8);
  sub_100051414();
  v86 = v24;
  sub_10007D220();
  v118 = a3;
  v119 = a2;
  v120 = a4;
  v121 = a5;
  v100 = a5;
  sub_100006D40(&qword_1000B38E0);
  sub_100051524(&qword_1000B38E8, &qword_1000B38E0, &unk_10008E138, sub_1000515A0);
  v31 = v105;
  sub_10007D220();
  v98 = a2;
  v115 = a2;
  v116 = a3;
  v117 = a4;
  sub_100006D40(&qword_1000B3920);
  sub_10000D744(&qword_1000B3928, &qword_1000B3920);
  v32 = v109;
  sub_10007D220();
  v33 = *(v20 + 16);
  v34 = v106;
  v35 = v107;
  v33(v106, v24, v107);
  v84 = *(v16 + 16);
  v36 = v108;
  v37 = v89;
  v84(v108, v31, v89);
  v38 = *(v112 + 16);
  v38(v110, v32, v111);
  v39 = v88;
  v33(v88, v34, v35);
  v40 = sub_100006D40(&qword_1000B3930);
  v41 = &v39[*(v40 + 48)];
  v42 = v39;
  v43 = v37;
  v84(v41, v36, v37);
  v44 = &v42[*(v40 + 64)];
  v45 = v110;
  v46 = v111;
  v38(v44, v110, v111);
  v47 = *(v112 + 8);
  v47(v109, v46);
  v48 = *(v85 + 8);
  v48(v105, v37);
  v49 = *(v87 + 8);
  v50 = v107;
  v49(v86, v107);
  v47(v45, v46);
  v48(v108, v43);
  v49(v106, v50);
  sub_100006D40(&qword_1000B3278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008D720;
  LOBYTE(v46) = sub_10007CED0();
  *(inited + 32) = v46;
  v52 = sub_10007CEF0();
  *(inited + 33) = v52;
  v53 = sub_10007CEE0();
  sub_10007CEE0();
  if (sub_10007CEE0() != v46)
  {
    v53 = sub_10007CEE0();
  }

  sub_10007CEE0();
  if (sub_10007CEE0() != v52)
  {
    v53 = sub_10007CEE0();
  }

  sub_10007C900();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v91;
  sub_10004EAF4(v90, v91, &qword_1000B3880);
  v63 = v62 + *(v113 + 36);
  *v63 = v53;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  v64 = v98;
  v65 = v98 + *(v114 + 36);
  v66 = *v65;
  v67 = *(v65 + 8);
  LOBYTE(v128) = v66;
  v129 = v67;
  sub_100006D40(&qword_1000B31E8);
  sub_10007D1A0();
  v109 = type metadata accessor for StickerPackStrip;
  v68 = v97;
  sub_10004E548(v64, v97, type metadata accessor for StickerPackStrip);
  v69 = *(v92 + 80);
  v70 = (v69 + 16) & ~v69;
  v110 = (v70 + v93);
  v112 = v69 | 7;
  v71 = swift_allocObject();
  v111 = type metadata accessor for StickerPackStrip;
  sub_10004E5B0(v68, v71 + v70, type metadata accessor for StickerPackStrip);
  v106 = sub_100006D40(&qword_1000B3868);
  v107 = sub_100051128();
  v108 = sub_1000511E0();
  v72 = v94;
  v73 = v113;
  sub_10007D0A0();

  v74 = sub_10000B348(v62, &qword_1000B3860);
  v128 = (*(**(v64 + *(v114 + 28) + 8) + 120))(v74);
  v129 = v75;
  sub_10004E548(v64, v68, v109);
  v76 = v102;
  v77 = v101;
  v78 = v103;
  (*(v102 + 16))(v101, v100, v103);
  v79 = &v110[*(v76 + 80)] & ~*(v76 + 80);
  v80 = swift_allocObject();
  sub_10004E5B0(v68, v80 + v70, v111);
  (*(v76 + 32))(v80 + v79, v77, v78);
  v124 = v73;
  v125 = v106;
  v126 = v107;
  v127 = v108;
  swift_getOpaqueTypeConformance2();
  v81 = v96;
  sub_10007D0D0();

  return (*(v95 + 8))(v72, v81);
}

uint64_t sub_100044894(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StickerPackStrip(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v11[3] = a1;
  sub_10004E548(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickerPackStrip);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10004E5B0(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for StickerPackStrip);

  sub_100006D40(&qword_1000B32F0);
  sub_100006D40(&qword_1000B39A0);
  sub_10000D744(&qword_1000B37F0, &qword_1000B32F0);
  v9 = sub_1000514C4();
  v11[1] = &type metadata for StickerPackStripSymbolView;
  v11[2] = v9;
  swift_getOpaqueTypeConformance2();
  sub_10004DFB4(&qword_1000B37F8, type metadata accessor for StickerPackStripItem);
  return sub_10007D210();
}

uint64_t sub_100044AC4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = type metadata accessor for StickerPackStrip(0);
  v21[0] = *(v5 - 8);
  v6 = *(v21[0] + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v8 = *a1;
  if ((*(**(a2 + *(v7 + 36) + 8) + 120))() == v8[2] && v9 == v8[3])
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10007DE50();
  }

  v12 = v8[4];
  v13 = v8[5];
  v14 = *(*v8 + 120);

  v16 = v14(v15);
  v17 = sub_100009D10();
  sub_100072B7C(v12, v13, v16, v11 & 1, v17 & 1, v22);
  sub_10004E548(a2, v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickerPackStrip);
  v18 = (*(v21[0] + 80) + 16) & ~*(v21[0] + 80);
  v19 = swift_allocObject();
  sub_10004E5B0(v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for StickerPackStrip);
  *(v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  sub_1000514C4();

  sub_10007D000();
}

uint64_t sub_100044D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v26 = a1;
  v27 = a2;
  v31 = a5;
  v28 = sub_10007CAE0();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v28);
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007CA00();
  v24 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StickerPackStrip(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_10004E548(v27, v15, type metadata accessor for StickerPackStrip);
  (*(v9 + 16))(v11, v29, v8);
  v16 = v25;
  v17 = v28;
  (*(v6 + 16))(v25, v30, v28);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = (v14 + *(v9 + 80) + v18) & ~*(v9 + 80);
  v20 = (v10 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = swift_allocObject();
  sub_10004E5B0(v15, v21 + v18, type metadata accessor for StickerPackStrip);
  (*(v9 + 32))(v21 + v19, v11, v24);
  (*(v6 + 32))(v21 + v20, v16, v17);

  sub_100006D40(&qword_1000B32F0);
  sub_100006D40(&qword_1000B38F8);
  sub_10000D744(&qword_1000B37F0, &qword_1000B32F0);
  sub_1000515A0();
  sub_10004DFB4(&qword_1000B37F8, type metadata accessor for StickerPackStripItem);
  return sub_10007D210();
}

uint64_t sub_1000450E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v50 = a5;
  v7 = type metadata accessor for StickerPackStrip(0);
  v8 = v7 - 8;
  v43 = *(v7 - 8);
  v9 = *(v43 + 64);
  __chkstk_darwin(v7);
  v49 = sub_100006D40(&qword_1000B3958);
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v44 = &v42 - v10;
  v48 = sub_100006D40(&qword_1000B3960);
  __chkstk_darwin(v48);
  v12 = &v42 - v11;
  v13 = sub_100006D40(&qword_1000B3908);
  v14 = __chkstk_darwin(v13);
  v16 = &v42 - v15;
  v17 = *a1;
  if ((*(**(a2 + *(v8 + 36) + 8) + 120))(v14) == *(v17 + 16) && v18 == *(v17 + 24))
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_10007DE50();
  }

  v23 = *(v17 + 16);
  v22 = *(v17 + 24);
  if (qword_1000B5AB8 != -1)
  {
    v21 = swift_once();
  }

  if (v23 == qword_1000B7260 && v22 == *algn_1000B7268 || (v21 = sub_10007DE50(), (v21 & 1) != 0))
  {
    __chkstk_darwin(v21);
    *(&v42 - 48) = v20 & 1;
    v25 = v46;
    v24 = v47;
    *(&v42 - 5) = a2;
    *(&v42 - 4) = v25;
    *(&v42 - 3) = v17;
    *(&v42 - 2) = v24;
    sub_100006D40(&qword_1000B3968);
    sub_100052864();
    sub_10007D220();
    v26 = *(v17 + 24);
    v27 = &v16[*(v13 + 52)];
    *v27 = *(v17 + 16);
    *(v27 + 1) = v26;
    sub_10003260C(v16, v12, &qword_1000B3908);
    swift_storeEnumTagMultiPayload();
    sub_10000D744(&qword_1000B3900, &qword_1000B3908);

    v28 = sub_10000B8F8(&qword_1000B3910);
    v29 = sub_10000D744(&qword_1000B3918, &qword_1000B3910);
    v51 = v28;
    v52 = v29;
    swift_getOpaqueTypeConformance2();
    sub_10007CD80();
    return sub_10000B348(v16, &qword_1000B3908);
  }

  else
  {
    type metadata accessor for StickerPackStripItem();
    sub_10004DFB4(&qword_1000B3150, type metadata accessor for StickerPackStripItem);

    v31 = sub_10007CA40();
    v47 = v32;
    v33 = *(v17 + 16);
    v34 = *(v17 + 24);
    v51 = v31;
    v52 = v32;
    v53 = v20 & 1;
    v54 = v33;
    v55 = v34;
    sub_10004E548(a2, &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickerPackStrip);
    v35 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v36 = swift_allocObject();
    sub_10004E5B0(&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for StickerPackStrip);
    *(v36 + ((v9 + v35 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;

    v37 = sub_100006D40(&qword_1000B3910);
    v38 = sub_10000D744(&qword_1000B3918, &qword_1000B3910);
    v39 = v44;
    sub_10007D000();

    v40 = v45;
    v41 = v49;
    (*(v45 + 16))(v12, v39, v49);
    swift_storeEnumTagMultiPayload();
    sub_10000D744(&qword_1000B3900, &qword_1000B3908);
    v51 = v37;
    v52 = v38;
    swift_getOpaqueTypeConformance2();
    sub_10007CD80();
    return (*(v40 + 8))(v39, v41);
  }
}

uint64_t sub_100045770@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a3;
  v53 = a5;
  v55 = a4;
  v62 = a2;
  v66 = a6;
  v7 = sub_10007CAE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100006D40(&qword_1000B3990);
  v57 = *(v65 - 8);
  __chkstk_darwin(v65);
  v56 = &v52 - v10;
  v63 = sub_100006D40(&qword_1000B3998);
  __chkstk_darwin(v63);
  v64 = &v52 - v11;
  v12 = sub_10007CA00();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v58 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StickerPackStrip(0);
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  __chkstk_darwin(v15);
  v61 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100006D40(&qword_1000B3980);
  v18 = __chkstk_darwin(v17);
  v20 = (&v52 - v19);
  v60 = v18;
  if (a1)
  {
    v21 = v18;
    v22 = (v20 + *(v18 + 40));
    v22[3] = v15;
    v22[4] = &off_1000A4C78;
    v23 = sub_10000AEB0(v22);
    v24 = v62;
    sub_10004E548(v62, v23, type metadata accessor for StickerPackStrip);
    v25 = *(v13 + 16);
    v26 = v20 + *(v21 + 36);
    v27 = v52;
    v25(v26, v52, v12);
    v28 = v24;
    v29 = v61;
    sub_10004E548(v28, v61, type metadata accessor for StickerPackStrip);
    v25(v58, v27, v12);
    v30 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v31 = (v16 + *(v13 + 80) + v30) & ~*(v13 + 80);
    v32 = swift_allocObject();
    sub_10004E5B0(v29, v32 + v30, type metadata accessor for StickerPackStrip);
    (*(v13 + 32))(v32 + v31, v58, v12);
    *v20 = swift_getKeyPath();
    sub_100006D40(&qword_1000B3120);
    swift_storeEnumTagMultiPayload();
    v33 = v60;
    v34 = (v20 + *(v60 + 48));
    *v34 = 0xD000000000000010;
    v34[1] = 0x8000000100089380;
    v35 = (v20 + *(v33 + 44));
    *v35 = sub_100052D24;
    v35[1] = v32;
    sub_10003260C(v20, v64, &qword_1000B3980);
    swift_storeEnumTagMultiPayload();
    sub_10000D744(&qword_1000B3978, &qword_1000B3980);
    v36 = sub_100052948();
    v67 = &type metadata for StickerPackStrip.IconView;
    v68 = v36;
    swift_getOpaqueTypeConformance2();
    sub_10007CD80();
    return sub_10000B348(v20, &qword_1000B3980);
  }

  else
  {
    type metadata accessor for StickerPackStripItem();
    sub_10004DFB4(&qword_1000B3150, type metadata accessor for StickerPackStripItem);
    v38 = v55;

    v39 = sub_10007CA40();
    v58 = v40;
    v67 = v39;
    v68 = v40;
    v69 = 0;
    v41 = v54;
    (*(v8 + 16))(v54, v53, v7);
    v42 = v7;
    v43 = v61;
    sub_10004E548(v62, v61, type metadata accessor for StickerPackStrip);
    v44 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v45 = (v9 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (*(v59 + 80) + v45 + 8) & ~*(v59 + 80);
    v47 = swift_allocObject();
    (*(v8 + 32))(v47 + v44, v41, v42);
    *(v47 + v45) = v38;
    sub_10004E5B0(v43, v47 + v46, type metadata accessor for StickerPackStrip);
    v48 = sub_100052948();

    v49 = v56;
    sub_10007D000();

    v50 = v57;
    v51 = v65;
    (*(v57 + 16))(v64, v49, v65);
    swift_storeEnumTagMultiPayload();
    sub_10000D744(&qword_1000B3978, &qword_1000B3980);
    v67 = &type metadata for StickerPackStrip.IconView;
    v68 = v48;
    swift_getOpaqueTypeConformance2();
    sub_10007CD80();
    return (*(v50 + 8))(v49, v51);
  }
}

uint64_t sub_100045F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10007CA00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StickerPackStrip(0);
  v31 = v10;
  v32 = &off_1000A4C88;
  v11 = sub_10000AEB0(&v30);
  sub_10004E548(a1, v11, type metadata accessor for StickerPackStrip);
  (*(v7 + 16))(v9, a2, v6);
  sub_10003260C(a1 + *(v10 + 24), &v26, &qword_1000B3128);
  v12 = v28;
  if (v28)
  {
    v13 = v29;
    sub_10000C9A4(&v26, v28);
    v14 = (*(v13 + 56))(v12, v13);
    v12 = v15;
    sub_10000B5CC(&v26);
  }

  else
  {
    sub_10000B348(&v26, &qword_1000B3128);
    v14 = 0;
  }

  sub_10004E2CC(&v30, a3);
  v16 = type metadata accessor for StickerPackStrip.MemojiPicker(0);
  (*(v7 + 32))(a3 + v16[5], v9, v6);
  v17 = (a3 + v16[6]);
  *v17 = v14;
  v17[1] = v12;
  v18 = (a3 + v16[7]);
  *v18 = xmmword_10008D730;
  v18[1] = xmmword_10008D730;
  v19 = a3 + v16[8];
  v25 = 0;
  sub_10007D170();
  v20 = v27;
  *v19 = v26;
  *(v19 + 8) = v20;
  v21 = a3 + v16[9];
  v25 = 0;
  result = sub_10007D170();
  v23 = v27;
  *v21 = v26;
  *(v21 + 8) = v23;
  return result;
}

uint64_t sub_10004616C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_10004E2CC(a1, a5);
  v9 = type metadata accessor for StickerPackStrip.MemojiPicker(0);
  v10 = v9[5];
  v11 = sub_10007CA00();
  (*(*(v11 - 8) + 32))(a5 + v10, a2, v11);
  v12 = (a5 + v9[6]);
  *v12 = a3;
  v12[1] = a4;
  v13 = (a5 + v9[7]);
  *v13 = xmmword_10008D730;
  v13[1] = xmmword_10008D730;
  v14 = a5 + v9[8];
  sub_10007D170();
  *v14 = v17;
  *(v14 + 8) = v18;
  v15 = a5 + v9[9];
  result = sub_10007D170();
  *v15 = v17;
  *(v15 + 8) = v18;
  return result;
}

uint64_t sub_100046284@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  sub_100006D40(&qword_1000B3120);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for StickerPackStrip.DrillDownContainer();
  v11 = (a5 + v10[12]);
  *v11 = 0xD000000000000010;
  v11[1] = 0x8000000100089380;
  v12 = (a5 + v10[11]);
  *v12 = a3;
  v12[1] = a4;
  v13 = v10[9];
  v14 = sub_10007CA00();
  (*(*(v14 - 8) + 32))(a5 + v13, a2, v14);
  v15 = a5 + v10[10];

  return sub_10004E2CC(a1, v15);
}

uint64_t sub_1000463A8()
{
  type metadata accessor for StickerPackStripItem();
  sub_10004DFB4(&qword_1000B3150, type metadata accessor for StickerPackStripItem);
  return sub_10007CA40();
}

uint64_t sub_100046428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007D2F0();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007D320();
  v20 = *(v9 - 8);
  v21 = v9;
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StickerPackStrip(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  if (qword_1000B5AC8 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_1000B7278);
  *(&v20 - 4) = a1;
  *(&v20 - 3) = a2;
  *(&v20 - 2) = a3;
  sub_10007CA30();
  sub_10004DCB8();
  v15 = sub_10007DAC0();
  sub_10004E548(a3, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickerPackStrip);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = swift_allocObject();
  sub_10004E5B0(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for StickerPackStrip);
  *(v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  aBlock[4] = sub_1000532A0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = &unk_1000A52C8;
  v18 = _Block_copy(aBlock);

  sub_10007D310();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10004DFB4(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000D744(&qword_1000B2980, &unk_1000B22F0);
  sub_10007DC50();
  sub_10007DAD0();
  _Block_release(v18);

  (*(v22 + 8))(v8, v6);
  return (*(v20 + 8))(v11, v21);
}

uint64_t sub_100046870(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007CA90();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v15[0] = v10;
  v15[1] = v11;

  sub_10004180C(v9);
  (*(v4 + 104))(v7, enum case for LayoutDirection.rightToLeft(_:), v3);
  v12 = sub_10007CA80();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v13(v9, v3);
  if (v12)
  {
    sub_10007D2E0();
  }

  else
  {
    sub_10007D2D0();
  }

  sub_10007CAD0();
}

uint64_t sub_100046A0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for StickerPackStrip(0);
  v9 = v8 - 8;
  v46 = *(v8 - 8);
  __chkstk_darwin(v8);
  v47 = v10;
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100006D40(&qword_1000B3938);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13);
  v18 = &v39 - v17;
  v19 = *(a1 + *(v9 + 36) + 8);
  if ((*(*v19 + 168))(v16))
  {
    goto LABEL_29;
  }

  v45 = a1;
  v48 = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
LABEL_25:
    v20 = sub_10007DDB0();
    if (v20)
    {
LABEL_4:
      v39 = v11;
      v40 = v19;
      v41 = v18;
      v42 = v15;
      v43 = a3;
      v44 = a4;
      v21 = 0;
      v18 = (a2 & 0xC000000000000001);
      v11 = (a2 & 0xFFFFFFFFFFFFFF8);
      v22 = &qword_1000B4E98[45];
      v15 = &qword_1000B7260;
      do
      {
        if (v18)
        {
          v19 = sub_10007DCD0();
          a3 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v21 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v19 = *(a2 + 8 * v21 + 32);

          a3 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        v23 = v19[6];
        v24 = v19[7];
        if (v22[343] != -1)
        {
          v26 = v19[6];
          a4 = v19[7];
          swift_once();
          v24 = a4;
          v23 = v26;
          v22 = qword_1000B4E98 + 360;
        }

        v25 = v23 == qword_1000B7260 && v24 == *algn_1000B7268;
        if (v25 || (sub_10007DE50() & 1) != 0)
        {
        }

        else
        {
          sub_10007DD00();
          a4 = *(v48 + 16);
          sub_10007DD30();
          sub_10007DD40();
          sub_10007DD10();
          v22 = qword_1000B4E98 + 360;
        }

        ++v21;
      }

      while (a3 != v20);
      v27 = v48;
      a4 = v44;
      v18 = v41;
      v15 = v42;
      v11 = v39;
      v19 = v40;
      a1 = v45;
      if ((v48 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_4;
    }
  }

  v27 = _swiftEmptyArrayStorage;
  a1 = v45;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  if ((v27 & 0x4000000000000000) != 0)
  {
LABEL_33:
    v37 = sub_10007DDB0();
    a1 = v45;

    if (!v37)
    {
      goto LABEL_34;
    }

LABEL_29:
    v48 = 0x4036000000000000;
    sub_10004E548(a1, v11, type metadata accessor for StickerPackStrip);
    v29 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v30 = swift_allocObject();
    sub_10004E5B0(v11, v30 + v29, type metadata accessor for StickerPackStrip);
    sub_1000523A0();
    sub_10007D000();

    v31 = sub_100006D40(&qword_1000B3948);
    v32 = (*(*(v31 - 8) + 56))(v18, 0, 1, v31);
    goto LABEL_30;
  }

  v28 = *(v27 + 16);

  if (v28)
  {
    goto LABEL_29;
  }

LABEL_34:
  v38 = sub_100006D40(&qword_1000B3948);
  v32 = (*(*(v38 - 8) + 56))(v18, 1, 1, v38);
LABEL_30:
  v33 = 0;
  if ((*(*v19 + 368))(v32))
  {
    sub_10007C9E0();
    v33 = v34;
  }

  sub_10003260C(v18, v15, &qword_1000B3938);
  sub_10003260C(v15, a4, &qword_1000B3938);
  v35 = a4 + *(sub_100006D40(&qword_1000B3950) + 48);
  sub_10000B348(v18, &qword_1000B3938);
  *v35 = v33;
  *(v35 + 8) = 0;
  return sub_10000B348(v15, &qword_1000B3938);
}

uint64_t sub_100046F3C(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_10007D2C0();
}

uint64_t sub_10004710C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StickerPackStrip(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  sub_10004E548(a1, &v19 - v9, type metadata accessor for StickerPackStrip);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_10004E5B0(v10, v12 + v11, type metadata accessor for StickerPackStrip);
  sub_10004E548(a1, v8, type metadata accessor for StickerPackStrip);
  v13 = swift_allocObject();
  sub_10004E5B0(v8, v13 + v11, type metadata accessor for StickerPackStrip);
  v14 = sub_100006A04(sub_100052088, v12, sub_100052208, v13);
  sub_100006D40(&qword_1000B3278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008D720;
  LOBYTE(v10) = sub_10007CEB0();
  *(inited + 32) = v10;
  v16 = sub_10007CEC0();
  *(inited + 33) = v16;
  v17 = sub_10007CEE0();
  sub_10007CEE0();
  if (sub_10007CEE0() != v10)
  {
    v17 = sub_10007CEE0();
  }

  sub_10007CEE0();
  result = sub_10007CEE0();
  if (result != v16)
  {
    result = sub_10007CEE0();
    v17 = result;
  }

  *a2 = v14;
  *(a2 + 8) = v17;
  return result;
}

uint64_t sub_100047370(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007D2F0();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007D320();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StickerPackStrip(0);
  v9 = v8 - 8;
  v46 = *(v8 - 8);
  v10 = *(v46 + 64);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007CAE0();
  v44 = *(v12 - 8);
  v45 = v12;
  __chkstk_darwin(v12);
  v42 = v13;
  v43 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10007D340();
  v48 = *(v55 - 8);
  v14 = __chkstk_darwin(v55);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v41 - v17;
  v18 = sub_10007CA90();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v41 - v24;
  if ((*(**(a1 + *(v9 + 36) + 8) + 360))(v23))
  {
    sub_10004180C(v25);
    (*(v19 + 104))(v22, enum case for LayoutDirection.rightToLeft(_:), v18);
    LODWORD(v41) = sub_10007CA80();
    v26 = *(v19 + 8);
    v26(v22, v18);
    v26(v25, v18);
    v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  sub_10004DCB8();
  v41 = sub_10007DAC0();
  sub_10007D330();
  v27 = v47;
  sub_10007D350();
  v48 = *(v48 + 8);
  (v48)(v16, v55);
  v29 = v43;
  v28 = v44;
  v30 = a2;
  v31 = v45;
  (*(v44 + 16))(v43, v30, v45);
  sub_10004E548(a1, v11, type metadata accessor for StickerPackStrip);
  v32 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v33 = (v42 + *(v46 + 80) + v32) & ~*(v46 + 80);
  v34 = swift_allocObject();
  (*(v28 + 32))(v34 + v32, v29, v31);
  sub_10004E5B0(v11, v34 + v33, type metadata accessor for StickerPackStrip);
  aBlock[4] = sub_100051D8C;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008F80;
  aBlock[3] = &unk_1000A5160;
  v35 = _Block_copy(aBlock);

  v36 = v49;
  sub_10007D310();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10004DFB4(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000D744(&qword_1000B2980, &unk_1000B22F0);
  v37 = v52;
  v38 = v54;
  sub_10007DC50();
  v39 = v41;
  sub_10007DAB0();
  _Block_release(v35);

  (*(v53 + 8))(v37, v38);
  (*(v50 + 8))(v36, v51);
  return (v48)(v27, v55);
}

uint64_t sub_100047A98(uint64_t a1)
{
  if (qword_1000B5AC8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  __chkstk_darwin(a1);
  return sub_10007CA30();
}

uint64_t sub_100047B60(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_10007D2F0();
  v32 = *(v3 - 8);
  __chkstk_darwin(v3);
  v30 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10007D320();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StickerPackStrip(0);
  v8 = v7 - 8;
  v27 = *(v7 - 8);
  v9 = *(v27 + 64);
  __chkstk_darwin(v7);
  v10 = sub_10007CAE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  if ((*(**(a1 + *(v8 + 36) + 8) + 120))(v13) == 0x616974696E696E75 && v14 == 0xED000064657A696CLL)
  {
  }

  else
  {
    v26 = v3;
    v16 = sub_10007DE50();

    if ((v16 & 1) == 0)
    {
      sub_10004DCB8();
      v25 = sub_10007DAC0();
      (*(v11 + 16))(&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v10);
      sub_10004E548(a1, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickerPackStrip);
      v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v19 = (v12 + *(v27 + 80) + v18) & ~*(v27 + 80);
      v20 = swift_allocObject();
      (*(v11 + 32))(v20 + v18, &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      sub_10004E5B0(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for StickerPackStrip);
      aBlock[4] = sub_1000512C8;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008F80;
      aBlock[3] = &unk_1000A50C0;
      v21 = _Block_copy(aBlock);

      sub_10007D310();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10004DFB4(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
      sub_100006D40(&unk_1000B22F0);
      sub_10000D744(&qword_1000B2980, &unk_1000B22F0);
      v22 = v30;
      v23 = v26;
      sub_10007DC50();
      v24 = v25;
      sub_10007DAD0();
      _Block_release(v21);

      (*(v32 + 8))(v22, v23);
      return (*(v29 + 8))(v6, v31);
    }
  }

  return result;
}

uint64_t sub_1000480DC(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_100048128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StickerPackStripItem();
  v5 = sub_10004DFB4(&qword_1000B3150, type metadata accessor for StickerPackStripItem);

  return ObservedObject.projectedValue.getter(a1, a2, v4, v5);
}

uint64_t sub_1000481C4@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v3 = a2;
  v30 = a2;
  v35 = a3;
  v5 = sub_10007CC70();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = __chkstk_darwin(v5);
  v34 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v29[-v8];
  v10 = sub_100006D40(&qword_1000B3158);
  __chkstk_darwin(v10);
  v12 = &v29[-v11];
  v13 = sub_100006D40(&qword_1000B3160);
  __chkstk_darwin(v13);
  v15 = &v29[-v14];
  v33 = sub_100006D40(&qword_1000B3168);
  __chkstk_darwin(v33);
  v17 = &v29[-v16];
  *v12 = sub_10007D270();
  v12[1] = v18;
  v19 = sub_100006D40(&qword_1000B3170);
  v20 = sub_100048638(a1, v3, v12 + *(v19 + 44));
  v36 = sub_1000488DC(v20, a1);
  v37 = v21;
  sub_10000D744(&qword_1000B3178, &qword_1000B3158);
  sub_100039884();
  sub_10007D040();

  v22 = v31;
  sub_10000B348(v12, &qword_1000B3158);
  v15[*(v13 + 36)] = 1;
  sub_10007CC50();
  sub_10004E31C();
  sub_10007D080();
  v23 = *(v22 + 8);
  v24 = v9;
  v25 = v32;
  v23(v24, v32);
  sub_10000B348(v15, &qword_1000B3160);
  sub_100006D40(&qword_1000B31A8);
  if (v30)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10008D720;
    sub_10007CC40();
  }

  else
  {
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10008CBC0;
  }

  sub_10007CC60();
  v36 = v26;
  sub_10004DFB4(&qword_1000B31B0, &type metadata accessor for AccessibilityTraits);
  sub_100006D40(&qword_1000B31B8);
  sub_10000D744(&qword_1000B31C0, &qword_1000B31B8);
  v27 = v34;
  sub_10007DC50();
  sub_10007CAB0();
  v23(v27, v25);
  return sub_10000B348(v17, &qword_1000B3168);
}

uint64_t sub_100048638@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100006D40(&qword_1000B3830);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v27 - v11);
  v13 = type metadata accessor for StickerPackStripSelectionBackground();
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  v19 = sub_1000541AC(a2, &v27 - v17);
  v20 = (*(*a1 + 120))(v19);
  v21 = v12 + *(v7 + 44);
  v22 = sub_100006D40(&qword_1000B3838);
  sub_10007CB10();
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = sub_10007CC30();
  (*(*(v24 - 8) + 104))(v21, v23, v24);
  v21[*(v22 + 36)] = 0;
  *v12 = v20;
  sub_10004E548(v18, v16, type metadata accessor for StickerPackStripSelectionBackground);
  sub_10003260C(v12, v10, &qword_1000B3830);
  sub_10004E548(v16, a3, type metadata accessor for StickerPackStripSelectionBackground);
  v25 = sub_100006D40(&qword_1000B3840);
  sub_10003260C(v10, a3 + *(v25 + 48), &qword_1000B3830);
  sub_10000B348(v12, &qword_1000B3830);
  sub_100050D14(v18, type metadata accessor for StickerPackStripSelectionBackground);
  sub_10000B348(v10, &qword_1000B3830);
  return sub_100050D14(v16, type metadata accessor for StickerPackStripSelectionBackground);
}

uint64_t sub_1000488DC(uint64_t a1, uint64_t a2)
{
  v2 = 0x746E65636572;
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = v3 == 0x746E65636572 && v4 == 0xE600000000000000;
  if (!v5 && (sub_10007DE50() & 1) == 0)
  {
    v10 = v3 == 0x746E6F4372657375 && v4 == 0xEB00000000746E65;
    if (v10 || (sub_10007DE50() & 1) != 0)
    {
      v11 = [objc_opt_self() mainBundle];
      v13._countAndFlagsBits = 0xE000000000000000;
      v14._countAndFlagsBits = 0x697453206576694CLL;
      v14._object = 0xED00007372656B63;
      v16.value._countAndFlagsBits = 0;
      v16.value._object = 0;
      v12.super.isa = v11;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v3 = sub_10007C340(v14, v16, v12, v18, v13);

      return v3;
    }

    if (v3 == 0x696A6F6D65 && v4 == 0xE500000000000000 || (sub_10007DE50() & 1) != 0)
    {
      v6 = [objc_opt_self() mainBundle];
      v7._countAndFlagsBits = 0x696A6F6D45;
      v13._countAndFlagsBits = 0xE000000000000000;
      v7._object = 0xE500000000000000;
      goto LABEL_7;
    }

    v2 = 0x696A6F6D656DLL;
    if ((v3 != 0x696A6F6D656DLL || v4 != 0xE600000000000000) && (sub_10007DE50() & 1) == 0)
    {

      return v3;
    }
  }

  v6 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = v2 - 32;
  v13._countAndFlagsBits = 0xE000000000000000;
  v7._object = 0xE600000000000000;
LABEL_7:
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v8.super.isa = v6;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v3 = sub_10007C340(v7, v15, v8, v17, v13);

  return v3;
}

uint64_t sub_100048B44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10007CBE0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006D40(&qword_1000B3120);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10003260C(v2, &v14 - v9, &qword_1000B3120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007CA90();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_10007DA20();
    v13 = sub_10007CE70();
    sub_10007C750();

    sub_10007CBD0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100048D44@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100006D40(&qword_1000B3120);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100048DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_10007CA00();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100048E18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_10007CA00();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100048ED4(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_10000B5CC(v2 + v4);

  return sub_10004E2CC(a1, v2 + v4);
}

uint64_t sub_100048F44(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t sub_100048F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 44));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_100048FFC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));

  return v2;
}

uint64_t sub_100049034@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v33 = type metadata accessor for DrillDownTransitionModifier(0);
  v3 = __chkstk_darwin(v33);
  v5 = (v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v7 = (v32 - v6);
  sub_10000B8F8(&qword_1000B31C8);
  v32[1] = a1;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  sub_10007D1F0();
  swift_getTupleTypeMetadata2();
  sub_10007D2B0();
  swift_getWitnessTable();
  v10 = sub_10007D1D0();
  v32[0] = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v32 - v11;
  v13 = sub_10007CAC0();
  v37 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v32 - v14;
  sub_10000B8F8(&qword_1000B31D0);
  v38 = v13;
  v16 = sub_10007CAC0();
  v39 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v35 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v36 = v32 - v19;
  v41 = v8;
  v42 = v9;
  v43 = v34;
  sub_10007CC10();
  sub_10007D1C0();
  sub_10007C9E0();
  sub_10007D270();
  WitnessTable = swift_getWitnessTable();
  v34 = v15;
  sub_10007D090();
  (*(v32[0] + 8))(v12, v10);
  *v7 = swift_getKeyPath();
  sub_100006D40(&qword_1000B3120);
  swift_storeEnumTagMultiPayload();
  v21 = v33;
  *(v7 + *(v33 + 20)) = 0;
  *v5 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v5 + *(v21 + 20)) = 0x3FF0000000000000;
  sub_10004DFB4(&qword_1000B31D8, type metadata accessor for DrillDownTransitionModifier);
  sub_10007C9C0();
  sub_100050D14(v5, type metadata accessor for DrillDownTransitionModifier);
  sub_100050D14(v7, type metadata accessor for DrillDownTransitionModifier);
  if (qword_1000B5AC8 != -1)
  {
    swift_once();
  }

  sub_10007C9D0();

  v46 = WitnessTable;
  v47 = &protocol witness table for _FrameLayout;
  v22 = v38;
  v23 = swift_getWitnessTable();
  v24 = v34;
  v25 = v35;
  sub_10007CFF0();

  (*(v37 + 8))(v24, v22);
  v26 = sub_10000D744(&qword_1000B31E0, &qword_1000B31D0);
  v44 = v23;
  v45 = v26;
  swift_getWitnessTable();
  v27 = v39;
  v28 = *(v39 + 16);
  v29 = v36;
  v28(v36, v25, v16);
  v30 = *(v27 + 8);
  v30(v25, v16);
  v28(v40, v29, v16);
  return (v30)(v29, v16);
}

uint64_t sub_100049648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v40 = a2;
  WitnessTable = a3;
  v46 = sub_10007D1F0();
  v49 = *(v46 - 8);
  v5 = __chkstk_darwin(v46);
  v44 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v35 - v7;
  v8 = type metadata accessor for StickerPackStrip.DrillDownContainer();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  v12 = sub_100006D40(&qword_1000B31C8);
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = __chkstk_darwin(v12);
  v48 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v37 = a1;
  v38 = &v35 - v15;

  v16 = sub_10007D130();
  v36 = sub_1000730C8(v16);
  v53 = v36;
  v54 = v17;
  v55 = v18;
  v56 = v19;
  (*(v9 + 16))(v11, a1, v8);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v22 = WitnessTable;
  *(v21 + 16) = v40;
  *(v21 + 24) = v22;
  (*(v9 + 32))(v21 + v20, v11, v8);
  v39 = sub_1000509A0();
  v23 = v38;
  sub_10007D000();

  sub_10007CC80();
  v24 = v44;
  sub_10007D1E0();
  v25 = v46;
  WitnessTable = swift_getWitnessTable();
  v26 = v49;
  v27 = *(v49 + 16);
  v28 = v45;
  v27(v45, v24, v25);
  v29 = *(v26 + 8);
  v49 = v26 + 8;
  v29(v24, v25);
  v30 = v42;
  v31 = v43;
  v32 = v48;
  (*(v42 + 16))(v48, v23, v43);
  v53 = v32;
  v27(v24, v28, v25);
  v54 = v24;
  v52[0] = v31;
  v52[1] = v25;
  OpaqueTypeConformance2 = &type metadata for StickerPackStripDrillDownSymbolView;
  v51 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = WitnessTable;
  sub_100046F3C(&v53, 2uLL, v52);
  v29(v28, v25);
  v33 = *(v30 + 8);
  v33(v23, v31);
  v29(v24, v25);
  return (v33)(v48, v31);
}

uint64_t sub_100049B0C(uint64_t a1)
{
  if (qword_1000B5AC8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  __chkstk_darwin(a1);
  return sub_10007CA30();
}

uint64_t sub_100049BE4()
{
  v0 = type metadata accessor for DrillDownTransitionModifier(0);
  v1 = __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v1);
  v5 = (&v8 - v4);
  *v5 = swift_getKeyPath();
  sub_100006D40(&qword_1000B3120);
  swift_storeEnumTagMultiPayload();
  *(v5 + *(v0 + 20)) = 0;
  *v3 = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v3 + *(v0 + 20)) = 0x3FF0000000000000;
  sub_10004DFB4(&qword_1000B31D8, type metadata accessor for DrillDownTransitionModifier);
  v6 = sub_10007C9C0();
  sub_100050D14(v3, type metadata accessor for DrillDownTransitionModifier);
  sub_100050D14(v5, type metadata accessor for DrillDownTransitionModifier);
  return v6;
}

uint64_t sub_100049D8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StickerPackStrip.MemojiPicker(0) + 20);
  v4 = sub_10007CA00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100049E08(uint64_t a1)
{
  v3 = *(type metadata accessor for StickerPackStrip.MemojiPicker(0) + 20);
  v4 = sub_10007CA00();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_100049ECC()
{
  v1 = *(v0 + *(type metadata accessor for StickerPackStrip.MemojiPicker(0) + 24));

  return v1;
}

uint64_t sub_100049F0C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StickerPackStrip.MemojiPicker(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_10004A01C()
{
  type metadata accessor for StickerPackStrip.MemojiPicker(0);
  sub_100006D40(&qword_1000B31E8);
  sub_10007D180();
  if (v1)
  {
    return 0x73697370696C6C65;
  }

  else
  {
    return 1937075312;
  }
}

uint64_t sub_10004A0B0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StickerPackStrip.MemojiPicker(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_10007C9E0();
  sub_10005391C();
  *a1 = sub_10007CC10();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v6 = sub_100006D40(&qword_1000B31F0);
  sub_10004A298(v1, a1 + *(v6 + 44));
  sub_10004E548(v1, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickerPackStrip.MemojiPicker);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_10004E5B0(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for StickerPackStrip.MemojiPicker);
  result = sub_100006D40(&qword_1000B31F8);
  v10 = (a1 + *(result + 36));
  *v10 = sub_10004E618;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t sub_10004A298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for StickerPackStrip.MemojiPicker(0);
  v57 = *(v3 - 1);
  v55[1] = *(v57 + 64);
  __chkstk_darwin(v3);
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100006D40(&qword_1000B31C8);
  v59 = *(v60 - 8);
  v6 = __chkstk_darwin(v60);
  v61 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = v55 - v8;
  v9 = sub_100006D40(&qword_1000B3808);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v58 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v55 - v13;
  *(&v69 + 1) = v3;
  *&v70 = &off_1000A4C58;
  v15 = sub_10000AEB0(&v68);
  sub_10004E548(a1, v15, type metadata accessor for StickerPackStrip.MemojiPicker);
  v16 = (a1 + v3[6]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (a1 + v3[7]);
  v20 = v19[1];
  v71[0] = *v19;
  v71[1] = v20;
  v72 = 0;
  v21 = a1 + v3[8];
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v63) = v22;
  v64 = v23;

  sub_100006D40(&qword_1000B31E8);
  sub_10007D180();
  sub_10000C354(&v68, v17, v18, v71, v67, v14);
  v24 = &v14[*(sub_100006D40(&qword_1000B3810) + 36)];
  v25 = *(sub_10007CAF0() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = sub_10007CC30();
  (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
  __asm { FMOV            V0.2D, #13.0 }

  *v24 = _Q0;
  *&v24[*(sub_100006D40(&qword_1000B3818) + 36)] = 256;
  sub_10007D270();
  sub_10007C9B0();
  v33 = &v14[*(v10 + 44)];
  v55[0] = v14;
  v34 = v69;
  *v33 = v68;
  *(v33 + 1) = v34;
  *(v33 + 2) = v70;
  v35 = a1 + v3[9];
  v36 = *v35;
  v37 = *(v35 + 8);
  LOBYTE(v63) = v36;
  v64 = v37;
  sub_10007D180();
  v38 = sub_10007D130();
  v63 = sub_1000730C8(v38);
  v64 = v39;
  v65 = v40;
  v66 = v41;
  sub_10004E548(a1, v5, type metadata accessor for StickerPackStrip.MemojiPicker);
  v42 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v43 = swift_allocObject();
  sub_10004E5B0(v5, v43 + v42, type metadata accessor for StickerPackStrip.MemojiPicker);
  sub_1000509A0();
  v44 = v56;
  sub_10007D000();

  v45 = v14;
  v46 = v58;
  sub_10003260C(v45, v58, &qword_1000B3808);
  v47 = v59;
  v48 = *(v59 + 16);
  v49 = v60;
  v50 = v61;
  v48(v61, v44, v60);
  v51 = v62;
  sub_10003260C(v46, v62, &qword_1000B3808);
  v52 = sub_100006D40(&qword_1000B3828);
  v48((v51 + *(v52 + 48)), v50, v49);
  v53 = *(v47 + 8);
  v53(v44, v49);
  sub_10000B348(v55[0], &qword_1000B3808);
  v53(v50, v49);
  return sub_10000B348(v46, &qword_1000B3808);
}

uint64_t sub_10004A868(uint64_t a1)
{
  v31 = sub_10007D2F0();
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10007D320();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StickerPackStrip.MemojiPicker(0);
  v7 = v6 - 8;
  v27 = *(v6 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v6);
  v9 = sub_10007D340();
  v29 = v9;
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = a1 + *(v7 + 40);
  v17 = *v16;
  v18 = *(v16 + 8);
  LOBYTE(aBlock) = v17;
  v36 = v18;
  v41 = 1;
  sub_100006D40(&qword_1000B31E8);
  sub_10007D190();
  sub_10004DCB8();
  v19 = sub_10007DAC0();
  sub_10007D330();
  sub_10007D350();
  v28 = *(v10 + 8);
  v28(v13, v9);
  sub_10004E548(a1, &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickerPackStrip.MemojiPicker);
  v20 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v21 = swift_allocObject();
  sub_10004E5B0(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for StickerPackStrip.MemojiPicker);
  v39 = sub_1000509F4;
  v40 = v21;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100008F80;
  v38 = &unk_1000A4FF8;
  v22 = _Block_copy(&aBlock);

  sub_10007D310();
  aBlock = _swiftEmptyArrayStorage;
  sub_10004DFB4(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006D40(&unk_1000B22F0);
  sub_10000D744(&qword_1000B2980, &unk_1000B22F0);
  v24 = v30;
  v23 = v31;
  sub_10007DC50();
  sub_10007DAB0();
  _Block_release(v22);

  (*(v34 + 8))(v24, v23);
  (*(v32 + 8))(v5, v33);
  return (v28)(v15, v29);
}

uint64_t sub_10004AD34()
{
  v1 = sub_100006D40(&unk_1000B3BF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10[-v2];

  sub_10007C3F0();

  v4 = sub_10007C420();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_10000B348(v3, &unk_1000B3BF0);
  v6 = (v0 + *(type metadata accessor for StickerPackStrip.MemojiPicker(0) + 36));
  v7 = *v6;
  v8 = *(v6 + 1);
  v10[16] = v7;
  v11 = v8;
  v10[15] = v5;
  sub_100006D40(&qword_1000B31E8);
  return sub_10007D190();
}

uint64_t sub_10004AE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100006D40(&unk_1000B3BF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18[-v8];

  sub_10007C3F0();

  v10 = sub_10007C420();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10) != 1;
  sub_10000B348(v9, &unk_1000B3BF0);
  v12 = v3 + *(type metadata accessor for StickerPackStrip.MemojiPicker(0) + 36);
  v13 = *v12;
  v14 = *(v12 + 1);
  v18[16] = v13;
  v19 = v14;
  v18[15] = v11;
  sub_100006D40(&qword_1000B31E8);
  sub_10007D190();
  v15 = v3[3];
  v16 = v3[4];
  sub_10000C9A4(v3, v15);
  return (*(v16 + 8))(a1, a2, a3, v15, v16);
}

uint64_t sub_10004B030(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  sub_10000C9A4(v2, v5);
  return (*(v6 + 16))(a1, a2, v5, v6);
}

uint64_t sub_10004B09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = v4[3];
  v9 = v4[4];
  sub_10000C9A4(v4, v8);
  result = (*(v9 + 24))(a1, a2, a3, v8, v9);
  if (a2)
  {

    return sub_10004AD34();
  }

  return result;
}

uint64_t sub_10004B148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10007C9E0();
  sub_10005391C();
  *a2 = sub_10007CC10();
  *(a2 + 8) = 0x4028000000000000;
  *(a2 + 16) = 0;
  v6 = sub_100006D40(&qword_1000B31F0);
  sub_10004A298(v2, a2 + *(v6 + 44));
  sub_10004E548(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickerPackStrip.MemojiPicker);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_10004E5B0(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for StickerPackStrip.MemojiPicker);
  result = sub_100006D40(&qword_1000B31F8);
  v10 = (a2 + *(result + 36));
  *v10 = sub_10005327C;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t sub_10004B2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004AD34();
  v7 = v3[3];
  v8 = v3[4];
  sub_10000C9A4(v3, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

uint64_t sub_10004B36C@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v107 = sub_10007CC70();
  v105 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v91 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100006D40(&qword_1000B3200);
  __chkstk_darwin(v97);
  v112 = &v91 - v2;
  v3 = sub_100006D40(&qword_1000B4700);
  __chkstk_darwin(v3 - 8);
  *&v113 = &v91 - v4;
  v111 = sub_10007CF60();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100006D40(&qword_1000B3208);
  __chkstk_darwin(v108);
  v7 = &v91 - v6;
  v95 = sub_100006D40(&qword_1000B3210);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v92 = &v91 - v8;
  v93 = sub_100006D40(&qword_1000B3218);
  __chkstk_darwin(v93);
  v96 = &v91 - v9;
  v99 = sub_100006D40(&qword_1000B3220);
  __chkstk_darwin(v99);
  v100 = &v91 - v10;
  v98 = sub_100006D40(&qword_1000B3228);
  __chkstk_darwin(v98);
  v101 = &v91 - v11;
  v102 = sub_100006D40(&qword_1000B3230);
  __chkstk_darwin(v102);
  v103 = &v91 - v12;
  sub_10007CC20();
  v13 = sub_10007CFA0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = &v7[*(sub_100006D40(&qword_1000B3238) + 36)];
  v21 = *(sub_100006D40(&qword_1000B3240) + 28);
  v22 = enum case for Text.Case.uppercase(_:);
  v23 = sub_10007CF90();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v20 + v21, v22, v23);
  (*(v24 + 56))(v20 + v21, 0, 1, v23);
  *v20 = swift_getKeyPath();
  v25 = v112;
  *v7 = v13;
  *(v7 + 1) = v15;
  v26 = v108;
  v7[16] = v17 & 1;
  *(v7 + 3) = v19;
  v27 = v110;
  v28 = v109;
  v29 = v111;
  (*(v110 + 104))(v109, enum case for Font.TextStyle.caption2(_:), v111);
  v30 = sub_10007CF00();
  v31 = v113;
  (*(*(v30 - 8) + 56))(v113, 1, 1, v30);
  v32 = v31;
  v33 = sub_10007CF40();
  sub_10000B348(v32, &qword_1000B4700);
  (*(v27 + 8))(v28, v29);
  KeyPath = swift_getKeyPath();
  v35 = &v7[*(v26 + 36)];
  *v35 = KeyPath;
  v35[1] = v33;
  v36 = enum case for DynamicTypeSize.xxLarge(_:);
  v37 = sub_10007CA70();
  (*(*(v37 - 8) + 104))(v25, v36, v37);
  sub_10004DFB4(&qword_1000B3248, &type metadata accessor for DynamicTypeSize);
  result = sub_10007D790();
  if (result)
  {
    v39 = sub_10004E61C();
    v40 = sub_10000D744(&qword_1000B3270, &qword_1000B3200);
    v41 = v92;
    v42 = v97;
    sub_10007D030();
    sub_10000B348(v25, &qword_1000B3200);
    sub_10000B348(v7, &qword_1000B3208);
    sub_10007CF10();
    *&v114 = v26;
    *(&v114 + 1) = v42;
    *&v115 = v39;
    *(&v115 + 1) = v40;
    swift_getOpaqueTypeConformance2();
    v43 = v96;
    v44 = v95;
    sub_10007CFE0();
    (*(v94 + 8))(v41, v44);
    v45 = sub_10007D110();
    v46 = swift_getKeyPath();
    v47 = &v43[*(v93 + 36)];
    *v47 = v46;
    v47[1] = v45;
    sub_100006D40(&qword_1000B3278);
    inited = swift_initStackObject();
    v113 = xmmword_10008D720;
    *(inited + 16) = xmmword_10008D720;
    v49 = sub_10007CED0();
    *(inited + 32) = v49;
    v50 = sub_10007CEF0();
    *(inited + 33) = v50;
    v51 = sub_10007CEE0();
    sub_10007CEE0();
    if (sub_10007CEE0() != v49)
    {
      v51 = sub_10007CEE0();
    }

    sub_10007CEE0();
    v52 = sub_10007CEE0();
    v53 = v101;
    if (v52 != v50)
    {
      v51 = sub_10007CEE0();
    }

    sub_10007C900();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v43;
    v63 = v100;
    sub_10004EAF4(v62, v100, &qword_1000B3218);
    v64 = v63 + *(v99 + 36);
    *v64 = v51;
    *(v64 + 8) = v55;
    *(v64 + 16) = v57;
    *(v64 + 24) = v59;
    *(v64 + 32) = v61;
    *(v64 + 40) = 0;
    v65 = sub_10007D270();
    v67 = v66;
    v68 = v53 + *(v98 + 36);
    v69 = enum case for RoundedCornerStyle.continuous(_:);
    v70 = sub_10007CC30();
    (*(*(v70 - 8) + 104))(v68, v69, v70);
    v71 = [objc_opt_self() tertiarySystemFillColor];
    v72 = sub_10007D0E0();
    v73 = sub_100006D40(&qword_1000B3280);
    *(v68 + *(v73 + 52)) = v72;
    *(v68 + *(v73 + 56)) = 256;
    sub_10007D270();
    sub_10007C9B0();
    v74 = (v68 + *(sub_100006D40(&qword_1000B3288) + 36));
    v75 = v115;
    *v74 = v114;
    v74[1] = v75;
    v74[2] = v116;
    v76 = (v68 + *(sub_100006D40(&qword_1000B3290) + 36));
    *v76 = v65;
    v76[1] = v67;
    sub_10004EAF4(v63, v53, &qword_1000B3220);
    v77 = swift_initStackObject();
    *(v77 + 16) = v113;
    LOBYTE(v68) = sub_10007CED0();
    *(v77 + 32) = v68;
    v78 = sub_10007CEF0();
    *(v77 + 33) = v78;
    v79 = sub_10007CEE0();
    sub_10007CEE0();
    if (sub_10007CEE0() != v68)
    {
      v79 = sub_10007CEE0();
    }

    sub_10007CEE0();
    if (sub_10007CEE0() != v78)
    {
      v79 = sub_10007CEE0();
    }

    sub_10007C900();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = v103;
    sub_10004EAF4(v53, v103, &qword_1000B3228);
    v89 = v88 + *(v102 + 36);
    *v89 = v79;
    *(v89 + 8) = v81;
    *(v89 + 16) = v83;
    *(v89 + 24) = v85;
    *(v89 + 32) = v87;
    *(v89 + 40) = 0;
    v90 = v104;
    sub_10007CC60();
    sub_10004E78C();
    sub_10007D070();
    (*(v105 + 8))(v90, v107);
    return sub_10000B348(v88, &qword_1000B3230);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004BFC4()
{
  type metadata accessor for StickerPackStrip(0);
  sub_100006D40(&qword_1000B3138);
  sub_10007D180();
  sub_100042920(v1, v2);
}

uint64_t sub_10004C04C()
{
  sub_100006D40(&qword_1000B3138);
  sub_10007D180();
  sub_100042920(v1, v2);
}

uint64_t sub_10004C0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StickerPackStrip(0);
  sub_10003260C(v3 + *(v6 + 24), v10, &qword_1000B3128);
  v7 = v11;
  if (!v11)
  {
    return sub_10000B348(v10, &qword_1000B3128);
  }

  v8 = v12;
  sub_10000C9A4(v10, v11);
  (*(v8 + 16))(v3, a2, a3, v7, v8);
  return sub_10000B5CC(v10);
}

uint64_t sub_10004C19C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for StickerPackStrip(0);
  sub_10003260C(v2 + *(v5 + 24), v9, &qword_1000B3128);
  v6 = v10;
  if (!v10)
  {
    return sub_10000B348(v9, &qword_1000B3128);
  }

  v7 = v11;
  sub_10000C9A4(v9, v10);
  (*(v7 + 32))(v2, a1, a2 & 1, v6, v7);
  return sub_10000B5CC(v9);
}

uint64_t sub_10004C26C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for StickerPackStrip(0);
  sub_10003260C(v3 + *(v7 + 24), v11, &qword_1000B3128);
  v8 = v12;
  if (!v12)
  {
    return sub_10000B348(v11, &qword_1000B3128);
  }

  v9 = v13;
  sub_10000C9A4(v11, v12);
  (*(v9 + 40))(v3, a1, a2, a3 & 1, v8, v9);
  return sub_10000B5CC(v11);
}

uint64_t sub_10004C344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10003260C(v4 + *(a4 + 24), v10, &qword_1000B3128);
  v7 = v11;
  if (!v11)
  {
    return sub_10000B348(v10, &qword_1000B3128);
  }

  v8 = v12;
  sub_10000C9A4(v10, v11);
  (*(v8 + 16))(v4, a2, a3, v7, v8);
  return sub_10000B5CC(v10);
}

uint64_t sub_10004C40C(uint64_t a1, char a2, uint64_t a3)
{
  sub_10003260C(v3 + *(a3 + 24), v9, &qword_1000B3128);
  v6 = v10;
  if (!v10)
  {
    return sub_10000B348(v9, &qword_1000B3128);
  }

  v7 = v11;
  sub_10000C9A4(v9, v10);
  (*(v7 + 32))(v3, a1, a2 & 1, v6, v7);
  return sub_10000B5CC(v9);
}

uint64_t sub_10004C4D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10003260C(v4 + *(a4 + 24), v11, &qword_1000B3128);
  v8 = v12;
  if (!v12)
  {
    return sub_10000B348(v11, &qword_1000B3128);
  }

  v9 = v13;
  sub_10000C9A4(v11, v12);
  (*(v9 + 40))(v4, a1, a2, a3 & 1, v8, v9);
  return sub_10000B5CC(v11);
}

uint64_t sub_10004C5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_10004EAF4(a1, a2, &qword_1000B32D0);
  result = type metadata accessor for DrillDownTransitionModifier(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_10004C620@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_10007CBE0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100006D40(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10003260C(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_10007DA20();
    v17 = sub_10007CE70();
    sub_10007C750();

    sub_10007CBD0();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_10004C820@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_100006D40(a1);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10004C8A4()
{
  v0 = sub_10007CA90();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  sub_10004C620(&qword_1000B3120, &type metadata accessor for LayoutDirection, &v10 - v5);
  (*(v1 + 104))(v4, enum case for LayoutDirection.rightToLeft(_:), v0);
  v7 = sub_10007CA80();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    return sub_10007D2E0();
  }

  else
  {
    return sub_10007D2D0();
  }
}

uint64_t sub_10004CA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10007CA90();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_100006D40(&qword_1000B32D8);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v15 = *(v2 + *(type metadata accessor for DrillDownTransitionModifier(0) + 20));
  sub_10004C620(&qword_1000B3120, &type metadata accessor for LayoutDirection, v11);
  (*(v6 + 104))(v9, enum case for LayoutDirection.rightToLeft(_:), v5);
  v16 = sub_10007CA80();
  v17 = *(v6 + 8);
  v17(v9, v5);
  v17(v11, v5);
  if (v16)
  {
    sub_10007D2E0();
  }

  else
  {
    sub_10007D2D0();
  }

  v20 = v18;
  v21 = v19;
  v22 = sub_100006D40(&qword_1000B32E0);
  (*(*(v22 - 8) + 16))(v14, a1, v22);
  v23 = &v14[*(v12 + 36)];
  *v23 = v15;
  *(v23 + 1) = v15 * 0.5 + 0.5;
  *(v23 + 2) = v20;
  *(v23 + 3) = v21;
  sub_10004EAF4(v14, a2, &qword_1000B32D8);
  result = sub_100006D40(&qword_1000B32E8);
  *(a2 + *(result + 36)) = v15;
  return result;
}

uint64_t sub_10004CCA8()
{
  sub_100006D40(&qword_1000B32F8);
  sub_10007D180();
  return v1;
}

void (*sub_10004CD44(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x48uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[6] = a2;
  v6[7] = a3;
  *v6 = a2;
  v6[1] = a3;

  v7[8] = sub_100006D40(&qword_1000B32F8);
  sub_10007D180();
  return sub_10004CDF4;
}

void sub_10004CDF4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    sub_10007D190();
  }

  else
  {
    sub_10007D190();
  }

  free(v2);
}

uint64_t sub_10004CEA8()
{
  sub_100006D40(&qword_1000B32F8);
  sub_10007D1A0();
  return v1;
}

__n128 sub_10004CEF8@<Q0>(uint64_t a1@<X1>, __n128 *a2@<X8>)
{
  v4 = sub_10007CC10();
  sub_10004CF74(a1, &v9);
  v5 = v9;
  v6 = v11;
  v7 = v12;
  result = v10;
  a2->n128_u64[0] = v4;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = 1;
  a2[1].n128_u64[1] = v5;
  a2[2] = result;
  a2[3].n128_u8[0] = v6;
  a2[3].n128_u64[1] = v7;
  return result;
}

uint64_t sub_10004CF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*a1 + 120))(a1);
  sub_100039884();

  v4 = sub_10007CFB0();
  v6 = v5;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  v8 = v7 & 1;
  *(a2 + 24) = v7 & 1;
  *(a2 + 32) = v9;

  sub_100050920(v4, v6, v8);

  sub_100050930(v4, v6, v8);
}

uint64_t sub_10004D064(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(0);
  sub_10004DFB4(a3, a4);

  return sub_10007CA40();
}

__n128 sub_10004D0DC@<Q0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = sub_10007CC10();
  sub_10004CF74(v3, &v9);
  v5 = v9;
  v6 = v11;
  v7 = v12;
  result = v10;
  a1->n128_u64[0] = v4;
  a1->n128_u64[1] = 0;
  a1[1].n128_u8[0] = 1;
  a1[1].n128_u64[1] = v5;
  a1[2] = result;
  a1[3].n128_u8[0] = v6;
  a1[3].n128_u64[1] = v7;
  return result;
}

uint64_t sub_10004D158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10007D230();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  v19 = a2;
  sub_100006D40(&qword_1000B3300);
  v10 = sub_10000B8F8(&qword_1000B3308);
  v11 = sub_10004EB64();
  v20 = v10;
  v21 = v11;
  swift_getOpaqueTypeConformance2();
  sub_10007CF70();
  KeyPath = swift_getKeyPath();
  v13 = (a3 + *(sub_100006D40(&qword_1000B3340) + 36));
  v14 = *(sub_100006D40(&qword_1000B3348) + 28);
  (*(v7 + 104))(v9, enum case for EditMode.active(_:), v6);
  sub_10007D200();
  (*(v7 + 8))(v9, v6);
  v15 = sub_100006D40(&qword_1000B3350);
  result = (*(*(v15 - 8) + 56))(v13 + v14, 0, 1, v15);
  *v13 = KeyPath;
  return result;
}

uint64_t sub_10004D378(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B3308);
  __chkstk_darwin(v4);
  v6 = v11 - v5;
  v11[2] = a1;
  v11[3] = a2;
  sub_100006D40(&qword_1000B32F8);
  sub_10007D180();
  sub_100006D40(&qword_1000B32F0);
  sub_10000D744(&qword_1000B37F0, &qword_1000B32F0);
  sub_10004EC48();
  sub_10004DFB4(&qword_1000B37F8, type metadata accessor for StickerPackStripItem);
  sub_10007D210();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1000507B0;
  *(v8 + 24) = v7;
  v9 = &v6[*(v4 + 36)];
  *v9 = sub_1000508F4;
  *(v9 + 1) = v8;
  sub_10004EB64();

  sub_10007D0B0();
  return sub_10000B348(v6, &qword_1000B3308);
}

uint64_t sub_10004D5CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StickerPackStripItem();
  sub_10004DFB4(&qword_1000B3150, type metadata accessor for StickerPackStripItem);

  result = sub_10007CA40();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004D654()
{

  sub_100006D40(&qword_1000B32F8);
  sub_10007D180();
  sub_100006D40(&qword_1000B32F0);
  sub_10000D744(&qword_1000B3358, &qword_1000B32F0);
  sub_10007D780();
  sub_10007D190();
}

id sub_10004D764()
{
  v0 = objc_allocWithZone(NSItemProvider);

  return [v0 init];
}

uint64_t sub_10004D7EC()
{
  sub_100006D40(&qword_1000B32F0);
  sub_10007D170();
  return v1;
}

uint64_t sub_10004D834@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007D230();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1[1];
  v16 = *v1;
  v17 = v7;
  sub_100006D40(&qword_1000B3300);
  v8 = sub_10000B8F8(&qword_1000B3308);
  v9 = sub_10004EB64();
  v18 = v8;
  v19 = v9;
  swift_getOpaqueTypeConformance2();
  sub_10007CF70();
  KeyPath = swift_getKeyPath();
  v11 = (a1 + *(sub_100006D40(&qword_1000B3340) + 36));
  v12 = *(sub_100006D40(&qword_1000B3348) + 28);
  (*(v4 + 104))(v6, enum case for EditMode.active(_:), v3);
  sub_10007D200();
  (*(v4 + 8))(v6, v3);
  v13 = sub_100006D40(&qword_1000B3350);
  result = (*(*(v13 - 8) + 56))(v11 + v12, 0, 1, v13);
  *v11 = KeyPath;
  return result;
}

uint64_t sub_10004DA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = sub_100006D40(a5);
  __chkstk_darwin(v10 - 8);
  v12 = &v14 - v11;
  sub_10003260C(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_10004DB48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007CB70();
  *a1 = result;
  return result;
}

uint64_t sub_10004DBA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007CB40();
  *a1 = result;
  return result;
}

uint64_t sub_10004DC24()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000B180;

  return sub_100040418(v3, v4, v5, v2);
}

unint64_t sub_10004DCB8()
{
  result = qword_1000B22E0;
  if (!qword_1000B22E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B22E0);
  }

  return result;
}

uint64_t sub_10004DD04()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004DD68(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_10004DDCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004DDE4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (((*(*result + 264))(result) & 1) == 0)
    {
      (*(*v1 + 320))(0);
    }
  }

  return result;
}

uint64_t sub_10004DEB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B3128);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B3128);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004DFB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004DFFC()
{
  v1 = type metadata accessor for StickerPackStrip(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3;
  sub_100006D40(&qword_1000B3118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10007C930();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  sub_100006D40(&qword_1000B3120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10007CA90();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v5 + *(v1 + 24);
  if (*(v9 + 24))
  {
    sub_10000B5CC(v9);
  }

  sub_10004E214();

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10004E21C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v5 = *(type metadata accessor for StickerPackStrip(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_10004348C(a1, v8, v2 + v6, v7, a2);
}

uint64_t sub_10004E2CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10004E31C()
{
  result = qword_1000B3180;
  if (!qword_1000B3180)
  {
    sub_10000B8F8(&qword_1000B3160);
    sub_10004E3A8();
    sub_10004E490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3180);
  }

  return result;
}

unint64_t sub_10004E3A8()
{
  result = qword_1000B3188;
  if (!qword_1000B3188)
  {
    sub_10000B8F8(&qword_1000B3190);
    sub_10000D744(&qword_1000B3178, &qword_1000B3158);
    sub_10004DFB4(&qword_1000B3198, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3188);
  }

  return result;
}

unint64_t sub_10004E490()
{
  result = qword_1000B31A0;
  if (!qword_1000B31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B31A0);
  }

  return result;
}

uint64_t sub_10004E504(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004E548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004E5B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10004E61C()
{
  result = qword_1000B3250;
  if (!qword_1000B3250)
  {
    sub_10000B8F8(&qword_1000B3208);
    sub_10004E6D4();
    sub_10000D744(&unk_1000B4760, &qword_1000B3268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3250);
  }

  return result;
}

unint64_t sub_10004E6D4()
{
  result = qword_1000B3258;
  if (!qword_1000B3258)
  {
    sub_10000B8F8(&qword_1000B3238);
    sub_10000D744(&qword_1000B3260, &qword_1000B3240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3258);
  }

  return result;
}

unint64_t sub_10004E78C()
{
  result = qword_1000B3298;
  if (!qword_1000B3298)
  {
    sub_10000B8F8(&qword_1000B3230);
    sub_10004E818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3298);
  }

  return result;
}

unint64_t sub_10004E818()
{
  result = qword_1000B32A0;
  if (!qword_1000B32A0)
  {
    sub_10000B8F8(&qword_1000B3228);
    sub_10004E8D0();
    sub_10000D744(&qword_1000B32C8, &qword_1000B3290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B32A0);
  }

  return result;
}

unint64_t sub_10004E8D0()
{
  result = qword_1000B32A8;
  if (!qword_1000B32A8)
  {
    sub_10000B8F8(&qword_1000B3220);
    sub_10004E95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B32A8);
  }

  return result;
}

unint64_t sub_10004E95C()
{
  result = qword_1000B32B0;
  if (!qword_1000B32B0)
  {
    sub_10000B8F8(&qword_1000B3218);
    sub_10000B8F8(&qword_1000B3210);
    sub_10000B8F8(&qword_1000B3208);
    sub_10000B8F8(&qword_1000B3200);
    sub_10004E61C();
    sub_10000D744(&qword_1000B3270, &qword_1000B3200);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000D744(&qword_1000B32B8, &qword_1000B32C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B32B0);
  }

  return result;
}

uint64_t sub_10004EAF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100006D40(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10004EB64()
{
  result = qword_1000B3310;
  if (!qword_1000B3310)
  {
    sub_10000B8F8(&qword_1000B3308);
    sub_100051524(&qword_1000B3318, &qword_1000B3320, &unk_10008DB30, sub_10004EC48);
    sub_10000D744(&qword_1000B3330, &qword_1000B3338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3310);
  }

  return result;
}

unint64_t sub_10004EC48()
{
  result = qword_1000B3328;
  if (!qword_1000B3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3328);
  }

  return result;
}

void sub_10004EDAC()
{
  sub_10004FBFC(319, &qword_1000B3388, &type metadata for String, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_10004FBFC(319, &unk_1000B3390, &type metadata for Bool, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10004EED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006D40(&qword_1000B3540);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100006D40(&qword_1000B32D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10004F010(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100006D40(&qword_1000B3540);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100006D40(&qword_1000B32D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10004F134()
{
  sub_10004F2B4(319, &unk_1000B4680, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_10004F2B4(319, &qword_1000B35A0, &type metadata accessor for LayoutDirection);
    if (v1 <= 0x3F)
    {
      sub_10004F308();
      if (v2 <= 0x3F)
      {
        sub_10004F36C();
        if (v3 <= 0x3F)
        {
          sub_10004FBFC(319, &qword_1000B35C0, &type metadata for String, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10004FBFC(319, &qword_1000B35C8, &type metadata for Bool, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_10004F400();
              if (v6 <= 0x3F)
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

void sub_10004F2B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10007C950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10004F308()
{
  if (!qword_1000B35A8)
  {
    sub_10000B8F8(&qword_1000B35B0);
    v0 = sub_10007DBF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B35A8);
    }
  }
}

void sub_10004F36C()
{
  if (!qword_1000B35B8)
  {
    type metadata accessor for StickerPackStripViewModel(255);
    sub_10004DFB4(&qword_1000B3130, type metadata accessor for StickerPackStripViewModel);
    v0 = sub_10007CA60();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B35B8);
    }
  }
}

void sub_10004F400()
{
  if (!qword_1000B35D0)
  {
    type metadata accessor for iMessageAppsRegistry();
    sub_10004DFB4(&qword_1000B3148, type metadata accessor for iMessageAppsRegistry);
    v0 = sub_10007C970();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B35D0);
    }
  }
}

__n128 sub_10004F494(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004F4A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10004F4F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10004F548()
{
  sub_10004F2B4(319, &qword_1000B35A0, &type metadata accessor for LayoutDirection);
  if (v0 <= 0x3F)
  {
    sub_10007CA00();
    if (v1 <= 0x3F)
    {
      sub_10004FB78(319, &qword_1000B3618);
      if (v2 <= 0x3F)
      {
        sub_10004F88C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10004F644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006D40(&qword_1000B32D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10007CA00();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10004F774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100006D40(&qword_1000B32D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10007CA00();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

unint64_t sub_10004F88C()
{
  result = qword_1000B3620;
  if (!qword_1000B3620)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000B3620);
  }

  return result;
}

uint64_t sub_10004F8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10007CA00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10004F9B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10007CA00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10004FA54()
{
  sub_10004FB78(319, &qword_1000B3680);
  if (v0 <= 0x3F)
  {
    sub_10007CA00();
    if (v1 <= 0x3F)
    {
      sub_10004FBFC(319, &unk_1000B3688, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for UIEdgeInsets(319);
        if (v3 <= 0x3F)
        {
          sub_10004FBFC(319, &qword_1000B35C8, &type metadata for Bool, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10004FB78(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10004FBFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10004FC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B32D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10004FCFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B32D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10004FD78()
{
  sub_10004F2B4(319, &qword_1000B35A0, &type metadata accessor for LayoutDirection);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10004FE08(uint64_t *a1, int a2)
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

uint64_t sub_10004FE50(uint64_t result, int a2, int a3)
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

uint64_t sub_10004FE9C(uint64_t a1, int a2)
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

uint64_t sub_10004FEE4(uint64_t result, int a2, int a3)
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

unint64_t sub_10004FF34()
{
  result = qword_1000B3748;
  if (!qword_1000B3748)
  {
    sub_10000B8F8(&qword_1000B3750);
    sub_10000D744(&qword_1000B3758, &qword_1000B3760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3748);
  }

  return result;
}

uint64_t sub_100050030()
{
  sub_10000B8F8(&qword_1000B31C8);
  sub_10007D1F0();
  swift_getTupleTypeMetadata2();
  sub_10007D2B0();
  swift_getWitnessTable();
  sub_10007D1D0();
  sub_10007CAC0();
  sub_10000B8F8(&qword_1000B31D0);
  sub_10007CAC0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000D744(&qword_1000B31E0, &qword_1000B31D0);
  return swift_getWitnessTable();
}

unint64_t sub_1000501C0()
{
  result = qword_1000B3770;
  if (!qword_1000B3770)
  {
    sub_10000B8F8(&qword_1000B31F8);
    sub_10000D744(&qword_1000B3778, &qword_1000B3780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3770);
  }

  return result;
}

uint64_t sub_1000502BC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B8F8(a2);
    a4();
    sub_10004DFB4(&qword_1000B3198, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100050374()
{
  result = qword_1000B3798;
  if (!qword_1000B3798)
  {
    sub_10000B8F8(&qword_1000B32E8);
    sub_100050400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3798);
  }

  return result;
}

unint64_t sub_100050400()
{
  result = qword_1000B37A0;
  if (!qword_1000B37A0)
  {
    sub_10000B8F8(&qword_1000B32D8);
    sub_10000D744(&qword_1000B37A8, &qword_1000B32E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B37A0);
  }

  return result;
}

unint64_t sub_100050500()
{
  result = qword_1000B37C0;
  if (!qword_1000B37C0)
  {
    sub_10000B8F8(&qword_1000B3340);
    sub_10000D744(&qword_1000B37C8, &qword_1000B37D0);
    sub_10000D744(&qword_1000B37D8, &qword_1000B3348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B37C0);
  }

  return result;
}

uint64_t sub_1000505E8()
{
  v1 = (type metadata accessor for StickerPackStrip.MemojiPicker(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_10000B5CC(v0 + v3);
  v5 = v1[7];
  v6 = sub_10007CA00();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100050770()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000507B0()
{

  sub_100006D40(&qword_1000B32F8);
  sub_10007D180();
  sub_100006D40(&qword_1000B32F0);
  sub_10000D744(&qword_1000B3358, &qword_1000B32F0);
  sub_10007D780();
  sub_10007D190();
}

uint64_t sub_1000508BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100050920(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100050930(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100050940()
{
  v1 = *(type metadata accessor for StickerPackStrip.MemojiPicker(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10004A868(v2);
}

unint64_t sub_1000509A0()
{
  result = qword_1000B3820;
  if (!qword_1000B3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3820);
  }

  return result;
}

uint64_t sub_1000509F4()
{
  type metadata accessor for StickerPackStrip.MemojiPicker(0);
  sub_100006D40(&qword_1000B31E8);
  return sub_10007D190();
}

uint64_t sub_100050A94()
{
  v1 = type metadata accessor for StickerPackStrip.DrillDownContainer();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_100006D40(&qword_1000B3120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10007CA90();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 36);
  v8 = sub_10007CA00();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  sub_10000B5CC(v5 + *(v1 + 40));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100050C1C()
{
  v1 = *(type metadata accessor for StickerPackStrip.DrillDownContainer() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100049B0C(v2);
}

uint64_t sub_100050CA0()
{
  v1 = *(v0 + 32);
  v2 = (v1 + *(type metadata accessor for StickerPackStrip.DrillDownContainer() + 40));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000C9A4(v2, v3);
  return (*(v4 + 8))(1, v3, v4);
}

uint64_t sub_100050D14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100050D74()
{
  v1 = type metadata accessor for StickerPackStrip(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_10007CA00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v15 = *(v6 + 64);

  v8 = v0 + v3;
  sub_100006D40(&qword_1000B3118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10007C930();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = *(v1 + 20);
  sub_100006D40(&qword_1000B3120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007CA90();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
  }

  v12 = v8 + *(v1 + 24);
  if (*(v12 + 24))
  {
    sub_10000B5CC(v12);
  }

  v13 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;

  sub_10004E214();

  (*(v6 + 8))(v0 + v13, v5);

  return _swift_deallocObject(v0, v13 + v15, v2 | v7 | 7);
}

uint64_t sub_100051020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StickerPackStrip(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10007CA00() - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + v7);
  v11 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  return sub_1000436BC(a1, v9, v2 + v6, v10, v11, a2);
}

unint64_t sub_100051128()
{
  result = qword_1000B3870;
  if (!qword_1000B3870)
  {
    sub_10000B8F8(&qword_1000B3860);
    sub_10000D744(&qword_1000B3878, &qword_1000B3880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3870);
  }

  return result;
}

unint64_t sub_1000511E0()
{
  result = qword_1000B3888;
  if (!qword_1000B3888)
  {
    sub_10000B8F8(&qword_1000B3868);
    sub_100006B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3888);
  }

  return result;
}

uint64_t sub_1000512C8()
{
  v1 = v0;
  v2 = *(sub_10007CAE0() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for StickerPackStrip(0);
  (*(**(v1 + ((v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80)) + *(v5 + 28) + 8) + 120))();
  sub_1000423A8();
  sub_10007CAD0();
}

unint64_t sub_100051414()
{
  result = qword_1000B38D0;
  if (!qword_1000B38D0)
  {
    sub_10000B8F8(&qword_1000B38C8);
    sub_1000514C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B38D0);
  }

  return result;
}

unint64_t sub_1000514C4()
{
  result = qword_1000B38D8;
  if (!qword_1000B38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B38D8);
  }

  return result;
}

uint64_t sub_100051524(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000B8F8(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000515A0()
{
  result = qword_1000B38F0;
  if (!qword_1000B38F0)
  {
    sub_10000B8F8(&qword_1000B38F8);
    sub_10000D744(&qword_1000B3900, &qword_1000B3908);
    sub_10000B8F8(&qword_1000B3910);
    sub_10000D744(&qword_1000B3918, &qword_1000B3910);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B38F0);
  }

  return result;
}

uint64_t sub_1000516D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StickerPackStrip(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10004710C(v4, a1);
}

uint64_t sub_100051744(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for StickerPackStrip(0);
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(*(v3 - 8) + 64);
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v18 = *(v8 + 64);
  v10 = v1 + v5;
  sub_100006D40(&qword_1000B3118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007C930();
    (*(*(v11 - 8) + 8))(v1 + v5, v11);
  }

  else
  {
  }

  v12 = *(v3 + 20);
  sub_100006D40(&qword_1000B3120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007CA90();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
  }

  v14 = v10 + *(v3 + 24);
  if (*(v14 + 24))
  {
    sub_10000B5CC(v14);
  }

  v15 = v4 | v9;
  v16 = (v5 + v6 + v9) & ~v9;

  sub_10004E214();

  (*(v8 + 8))(v1 + v16, v7);

  return _swift_deallocObject(v1, v16 + v18, v15 | 7);
}

uint64_t sub_100051A1C(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(unint64_t, uint64_t))
{
  v5 = *(a1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(a2(0) - 8);
  v9 = v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a3(v3 + v6, v9);
}

uint64_t sub_100051B0C()
{
  v1 = sub_10007CAE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for StickerPackStrip(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  sub_100006D40(&qword_1000B3118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007C930();
    (*(*(v11 - 8) + 8))(v0 + v8, v11);
  }

  else
  {
  }

  v12 = *(v6 + 20);
  sub_100006D40(&qword_1000B3120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007CA90();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
  }

  v14 = v10 + *(v6 + 24);
  if (*(v14 + 24))
  {
    sub_10000B5CC(v14);
  }

  sub_10004E214();

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_100051DCC()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for StickerPackStrip(0);
  (*(**(v1 + *(v2 + 28) + 8) + 120))();
  sub_1000423A8();
  sub_10007CAD0();
}

uint64_t sub_100051E8C()
{
  v1 = type metadata accessor for StickerPackStrip(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_100006D40(&qword_1000B3118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10007C930();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  sub_100006D40(&qword_1000B3120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10007CA90();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v5 + *(v1 + 24);
  if (*(v9 + 24))
  {
    sub_10000B5CC(v9);
  }

  sub_10004E214();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100052088()
{
  v1 = type metadata accessor for StickerPackStrip(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = (v2 + v1[9]);
  v4 = *v3;
  v5 = *(v3 + 1);
  LOBYTE(v13[0]) = v4;
  v13[1] = v5;
  v16 = 0;
  sub_100006D40(&qword_1000B31E8);
  sub_10007D190();
  sub_10003260C(v2 + v1[6], v13, &qword_1000B3128);
  v6 = v14;
  if (!v14)
  {
    return sub_10000B348(v13, &qword_1000B3128);
  }

  v7 = v15;
  v8 = sub_10000C9A4(v13, v14);
  v10 = (*(**(v2 + v1[7] + 8) + 120))(v8, v9);
  (*(v7 + 8))(v2, v10, v11, v6, v7);

  return sub_10000B5CC(v13);
}

uint64_t sub_100052208(uint64_t a1)
{
  v3 = type metadata accessor for StickerPackStrip(0);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));
  sub_10003260C(v4 + *(v3 + 24), v8, &qword_1000B3128);
  v5 = v9;
  if (!v9)
  {
    return sub_10000B348(v8, &qword_1000B3128);
  }

  v6 = v10;
  sub_10000C9A4(v8, v9);
  (*(v6 + 48))(v4, a1, v5, v6);
  return sub_10000B5CC(v8);
}

uint64_t sub_1000522FC()
{
  type metadata accessor for StickerPackStrip(0);
  sub_100006D40(&qword_1000B31E8);
  return sub_10007D190();
}

unint64_t sub_1000523A0()
{
  result = qword_1000B3940;
  if (!qword_1000B3940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3940);
  }

  return result;
}

uint64_t sub_1000523F4()
{
  v1 = type metadata accessor for StickerPackStrip(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 8) + 64);
  v21 = sub_10007CA00();
  v4 = *(v21 - 8);
  v5 = *(v4 + 80);
  v17 = *(v4 + 64);
  v20 = sub_10007CAE0();
  v6 = *(v20 - 8);
  v7 = *(v6 + 80);
  v19 = *(v6 + 64);
  v8 = v0 + v3;
  sub_100006D40(&qword_1000B3118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10007C930();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = *(v1 + 20);
  sub_100006D40(&qword_1000B3120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007CA90();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  else
  {
  }

  v12 = v8 + *(v1 + 24);
  if (*(v12 + 24))
  {
    sub_10000B5CC(v12);
  }

  v13 = v2 | v5 | v7;
  v14 = (v3 + v18 + v5) & ~v5;
  v15 = (v14 + v17 + v7) & ~v7;

  sub_10004E214();

  (*(v4 + 8))(v0 + v14, v21);
  (*(v6 + 8))(v0 + v15, v20);

  return _swift_deallocObject(v0, v15 + v19, v13 | 7);
}

uint64_t sub_100052710@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StickerPackStrip(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10007CA00() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_10007CAE0() - 8);
  v12 = v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_1000450E4(a1, v2 + v6, v2 + v9, v12, a2);
}

unint64_t sub_100052864()
{
  result = qword_1000B3970;
  if (!qword_1000B3970)
  {
    sub_10000B8F8(&qword_1000B3968);
    sub_10000D744(&qword_1000B3978, &qword_1000B3980);
    sub_100052948();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3970);
  }

  return result;
}

unint64_t sub_100052948()
{
  result = qword_1000B3988;
  if (!qword_1000B3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3988);
  }

  return result;
}

uint64_t sub_10005299C()
{
  v1 = sub_10007CAE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for StickerPackStrip(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);

  v10 = v0 + v8;
  sub_100006D40(&qword_1000B3118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10007C930();
    (*(*(v11 - 8) + 8))(v0 + v8, v11);
  }

  else
  {
  }

  v12 = *(v6 + 20);
  sub_100006D40(&qword_1000B3120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10007CA90();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  else
  {
  }

  v14 = v10 + *(v6 + 24);
  if (*(v14 + 24))
  {
    sub_10000B5CC(v14);
  }

  sub_10004E214();

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_100052C30()
{
  v1 = *(sub_10007CAE0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for StickerPackStrip(0) - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_100046428(v0 + v2, v5, v6);
}

uint64_t sub_100052D24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StickerPackStrip(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10007CA00() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100045F0C(v1 + v4, v7, a1);
}

uint64_t sub_100052E28()
{
  v1 = type metadata accessor for StickerPackStrip(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_100006D40(&qword_1000B3118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10007C930();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  sub_100006D40(&qword_1000B3120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10007CA90();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v5 + *(v1 + 24);
  if (*(v9 + 24))
  {
    sub_10000B5CC(v9);
  }

  sub_10004E214();

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100053038()
{
  v1 = *(type metadata accessor for StickerPackStrip(0) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_100042920(*(v2 + 16), *(v2 + 24));
}

uint64_t sub_1000530C4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for StickerPackStrip(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100044AC4(a1, v6, a2);
}

uint64_t sub_100053148()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(*result + 128);

    v4(v1, v2);
  }

  return result;
}

void *sub_100053328(void *a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = *((swift_isaMask & *v3) + 0x50);
  v5 = v3;
  v4(a1);

  return v5;
}

void sub_1000533B0(void *a1)
{
  [v1 setAlpha:0.0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() separatorColor];
  [v1 setBackgroundColor:v3];

  v4 = [a1 subviews];
  sub_10000B77C(0, &qword_1000B39B0);
  v5 = sub_10007D8E0();

  if (v5 >> 62)
  {
    v6 = sub_10007DDB0();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [a1 insertSubview:v1 atIndex:v6];
  v7 = objc_opt_self();
  sub_100006D40(&qword_1000B2200);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10008C950;
  v9 = [v1 heightAnchor];
  v10 = [v9 constraintEqualToConstant:0.35];

  *(v8 + 32) = v10;
  v11 = [v1 topAnchor];
  v12 = [a1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v8 + 40) = v13;
  v14 = [v1 leftAnchor];
  v15 = [a1 leftAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v8 + 48) = v16;
  v17 = [v1 rightAnchor];
  v18 = [a1 rightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v8 + 56) = v19;
  sub_10000B77C(0, &qword_1000B2210);
  isa = sub_10007D8C0().super.isa;

  [v7 activateConstraints:isa];
}

id sub_1000536E4(double a1)
{
  v2 = a1 / 75.0;
  if (v2 > 0.5)
  {
    v2 = 0.5;
  }

  return [v1 setAlpha:v2];
}

id sub_100053710(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for KeylineView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100053808(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for KeylineView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000538E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeylineView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100053950@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(sub_10007CAF0() + 20);
  v3 = enum case for RoundedCornerStyle.continuous(_:);
  v4 = sub_10007CC30();
  (*(*(v4 - 8) + 104))(a1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #13.0 }

  *a1 = result;
  return result;
}

uint64_t sub_1000539D4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StickerPackStripSelectionBackground() + 20);

  return sub_100053A64(v3, a1);
}

uint64_t type metadata accessor for StickerPackStripSelectionBackground()
{
  result = qword_1000B6140;
  if (!qword_1000B6140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100053A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007CAF0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053AC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100006D40(&qword_1000B39E0);
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_100006D40(&qword_1000B39E8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  if (*v1 == 1)
  {
    v9 = [objc_opt_self() tertiarySystemFillColor];
    v28 = sub_10007D0E0();
    sub_10007D270();
    sub_10007C9B0();
    v10 = v34;
    v11 = v35;
    v12 = v37;
    v29 = v3;
    v26 = *(&v38 + 1);
    v13 = v38;
    v27 = v36;
    v14 = type metadata accessor for StickerPackStripSelectionBackground();
    v30 = a1;
    v15 = *(v14 + 20);
    v16 = &v8[*(sub_100006D40(&qword_1000B3A08) + 36)];
    sub_100053A64(&v1[v15], v16);
    *(v16 + *(sub_100006D40(&qword_1000B3818) + 36)) = 256;
    v17 = v27;
    *v8 = v28;
    *(v8 + 1) = v10;
    v8[16] = v11;
    *(v8 + 3) = v17;
    v8[32] = v12;
    v18 = v26;
    *(v8 + 5) = v13;
    *(v8 + 6) = v18;
    v19 = &v8[*(v6 + 36)];
    v20 = sub_100006D40(&qword_1000B3A30);
    sub_10007CB10();
    sub_100053A64(&v1[v15], v19);
    *(v19 + *(v20 + 36)) = 0;
    sub_10005403C(v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_100006D40(&qword_1000B39F0);
    sub_100053E3C();
    sub_100053FCC(&qword_1000B3A38, &qword_1000B39F0);
    sub_10007CD80();
    return sub_1000540AC(v8);
  }

  else
  {
    sub_10007D270();
    sub_10007C9B0();
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v33 = 1;
    v32 = v35;
    v31 = v37;
    *v5 = 0;
    v5[8] = 1;
    *(v5 + 2) = v22;
    v5[24] = v23;
    *(v5 + 4) = v24;
    v5[40] = v25;
    *(v5 + 3) = v38;
    swift_storeEnumTagMultiPayload();
    sub_100006D40(&qword_1000B39F0);
    sub_100053E3C();
    sub_100053FCC(&qword_1000B3A38, &qword_1000B39F0);
    return sub_10007CD80();
  }
}

unint64_t sub_100053E3C()
{
  result = qword_1000B39F8;
  if (!qword_1000B39F8)
  {
    sub_10000B8F8(&qword_1000B39E8);
    sub_100053EF4();
    sub_10000D744(&qword_1000B3A28, &qword_1000B3A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B39F8);
  }

  return result;
}

unint64_t sub_100053EF4()
{
  result = qword_1000B3A00;
  if (!qword_1000B3A00)
  {
    sub_10000B8F8(&qword_1000B3A08);
    sub_100053FCC(&qword_1000B3A10, &qword_1000B3A18);
    sub_10000D744(&qword_1000B3A20, &qword_1000B3818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3A00);
  }

  return result;
}

uint64_t sub_100053FCC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000B8F8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005403C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B39E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000540AC(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B39E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_100054114@<Q0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for StickerPackStripSelectionBackground() + 20)];
  v2 = *(sub_10007CAF0() + 20);
  v3 = enum case for RoundedCornerStyle.continuous(_:);
  v4 = sub_10007CC30();
  (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #13.0 }

  *v1 = result;
  return result;
}

__n128 sub_1000541AC@<Q0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  v2 = &a2[*(type metadata accessor for StickerPackStripSelectionBackground() + 20)];
  v3 = *(sub_10007CAF0() + 20);
  v4 = enum case for RoundedCornerStyle.continuous(_:);
  v5 = sub_10007CC30();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  __asm { FMOV            V0.2D, #13.0 }

  *v2 = result;
  return result;
}

uint64_t sub_100054278(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10007CAF0();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100054338(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_10007CAF0();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000543D8()
{
  result = sub_10007CAF0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100054458()
{
  result = qword_1000B3AC0;
  if (!qword_1000B3AC0)
  {
    sub_10000B8F8(&qword_1000B3AC8);
    sub_100053E3C();
    sub_100053FCC(&qword_1000B3A38, &qword_1000B39F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3AC0);
  }

  return result;
}

uint64_t sub_100054504()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B6158);
  sub_10000AE78(v0, qword_1000B6158);
  return sub_10007C770();
}

uint64_t sub_1000545D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_delegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_100054688()
{
  if (*(v0 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType) == 6)
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType);
  }
}

uint64_t sub_1000546A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__puppetIdentifier);

  return v1;
}

uint64_t sub_1000546DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__thirdPartyAppIdentifier);

  return v1;
}

uint64_t sub_100054718@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2 || a1 == 1)
  {
    v3 = &enum case for Sticker.StickerType.recent(_:);
    goto LABEL_6;
  }

  if (!a1)
  {
    v3 = &enum case for Sticker.StickerType.userContent(_:);
LABEL_6:
    v4 = *v3;
    v5 = sub_10007D540();
    v12 = *(v5 - 8);
    (*(v12 + 104))(a2, v4, v5);
    v6 = *(v12 + 56);
    v7 = a2;
    v8 = 0;
    v9 = v5;
    goto LABEL_8;
  }

  v10 = sub_10007D540();
  v6 = *(*(v10 - 8) + 56);
  v9 = v10;
  v7 = a2;
  v8 = 1;
LABEL_8:

  return v6(v7, v8, 1, v9);
}

uint64_t sub_100054850(unsigned __int8 a1)
{
  v1 = 0x746E6F4372657375;
  v2 = 0x696A6F6D656DLL;
  v3 = 0x696A6F6D65;
  if (a1 != 4)
  {
    v3 = 0x7261506472696874;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x746E65636572;
  if (a1 != 1)
  {
    v4 = 0x6472616F6279656BLL;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100054924(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746E65;
  v3 = 0x746E6F4372657375;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x696A6F6D656DLL;
  v7 = 0xE500000000000000;
  v8 = 0x696A6F6D65;
  if (a1 != 4)
  {
    v8 = 0x7261506472696874;
    v7 = 0xEA00000000007974;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x746E65636572;
  if (a1 != 1)
  {
    v10 = 0x6472616F6279656BLL;
    v9 = 0xEE00746E65636552;
  }

  if (!a1)
  {
    v10 = 0x746E6F4372657375;
    v9 = 0xEB00000000746E65;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x696A6F6D656DLL)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x696A6F6D65)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEA00000000007974;
      if (v11 != 0x7261506472696874)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x746E65636572)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6472616F6279656BLL;
      v2 = 0xEE00746E65636552;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_10007DE50();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

Swift::Int sub_100054B10()
{
  sub_10007DF00();
  sub_10007D820();

  return sub_10007DF10();
}

uint64_t sub_100054C24()
{
  sub_10007D820();
}

Swift::Int sub_100054D28()
{
  sub_10007DF00();
  sub_10007D820();

  return sub_10007DF10();
}

uint64_t sub_100054E38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100058958(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100054E68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000746E65;
  v4 = 0x746E6F4372657375;
  v5 = 0xE600000000000000;
  v6 = 0x696A6F6D656DLL;
  v7 = 0xE500000000000000;
  v8 = 0x696A6F6D65;
  if (v2 != 4)
  {
    v8 = 0x7261506472696874;
    v7 = 0xEA00000000007974;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x746E65636572;
  if (v2 != 1)
  {
    v10 = 0x6472616F6279656BLL;
    v9 = 0xEE00746E65636552;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

double sub_100054F68(char a1)
{
  result = 70.0;
  if (a1)
  {
    return 120.0;
  }

  return result;
}

uint64_t sub_100054F90()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_isPresentedWithNavigationTitleBar;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100054FD4(char a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_isPresentedWithNavigationTitleBar;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100055084()
{
  sub_1000550FC(v2);
  v0 = v3;
  if (v3)
  {
    sub_10000C9A4(v2, v3);
    v0 = sub_10007C510();
    sub_10000B5CC(v2);
  }

  else
  {
    sub_1000589A4(v2);
  }

  return v0 & 1;
}

double sub_1000550FC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController);
  if (!v3 || (sub_10000B77C(0, &qword_1000B3B10), v4 = v3, sub_100006D40(&qword_1000B3BB0), (swift_dynamicCast() & 1) == 0))
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_7;
  }

  if (!*(&v7 + 1))
  {
LABEL_7:
    sub_1000589A4(&v6);
    goto LABEL_8;
  }

  sub_10004E2CC(&v6, v9);
  sub_10000C9A4(v9, v9[3]);
  if (sub_10007C510())
  {
    sub_10000C940(v9, a1);
    sub_10000B5CC(v9);
    return result;
  }

  sub_10000B5CC(v9);
LABEL_8:
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10005520C()
{
  sub_1000550FC(&v2);
  if (v3)
  {
    sub_10004E2CC(&v2, v4);
    sub_10000C9A4(v4, v4[3]);
    v0 = sub_10007C520();
    sub_10000B5CC(v4);
  }

  else
  {
    sub_1000589A4(&v2);
    return 0;
  }

  return v0;
}

uint64_t sub_100055294()
{
  v1 = sub_10007D540();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v13 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController);
  if (!v8)
  {
    return 0;
  }

  sub_10007C680();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v8;
    sub_10007C670();
    (*(v2 + 104))(v5, enum case for Sticker.StickerType.userContent(_:), v1);
    sub_100058A0C();
    sub_10007D8A0();
    sub_10007D8A0();
    v11 = *(v2 + 8);
    v11(v5, v1);
    v11(v7, v1);
    if (v13[1] != v13[0])
    {

      return 0;
    }
  }

  return v9;
}

void sub_100055444(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for StickerProvidingViewController();
  objc_msgSendSuper2(&v6, "viewWillAppear:", a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000555B0(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType;
  v9 = v4[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType];
  if (v9 == 6 || (sub_100054924(v9, a1) & 1) == 0)
  {
    v20 = OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController;
    v21 = *&v4[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController];
    v22 = &v4[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__puppetIdentifier];
    *v22 = a2;
    v22[1] = a3;
    v23 = v21;

    v24 = sub_100055EF4(a1);
    v25 = v24;
    if (v24)
    {
      v37 = v21;
      v26 = v24;
      v27 = [v26 parentViewController];
      if (!v27)
      {
        goto LABEL_15;
      }

      v28 = v27;
      sub_10000B77C(0, &qword_1000B3B10);
      v29 = v4;
      v30 = sub_10007DBA0();

      if ((v30 & 1) == 0)
      {
        goto LABEL_15;
      }

      v31 = [v29 view];
      if (!v31)
      {
        __break(1u);
        goto LABEL_23;
      }

      v32 = v31;
      v33 = [v26 view];
      v34 = [v32 containsView:v33];

      if (!v34)
      {
LABEL_15:
        v35 = v26;
        sub_1000574BC(v25, 0);

        sub_100056C8C(v35, 0);
      }

      v21 = v37;
    }

    sub_1000574BC(v21, 0);

    v4[v8] = a1;
    v19 = *&v4[v20];
    *&v4[v20] = v25;
    goto LABEL_18;
  }

  sub_100055D10(a2, a3);
  v10 = *&v4[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController];
  if (!v10)
  {
    return;
  }

  v36 = v10;
  v11 = [v36 parentViewController];
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  sub_10000B77C(0, &qword_1000B3B10);
  v13 = v4;
  v14 = sub_10007DBA0();

  if ((v14 & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = [v13 view];
  if (!v15)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v36 view];
  v18 = [v16 containsView:v17];

  if (!v18)
  {
LABEL_8:
    v36 = v36;
    sub_1000574BC(v10, 0);

    sub_100056C8C(v36, 0);
  }

  v19 = v36;
LABEL_18:
}

void sub_1000558E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType;
  if (v3[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType] <= 4u)
  {
    v7 = sub_10007DE50();

    if ((v7 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v3[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeControllerType] != 5)
    {
      goto LABEL_20;
    }
  }

  v8 = *&v3[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__thirdPartyAppIdentifier + 8];
  if (!a2)
  {
    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_20:
    v20 = OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController;
    v21 = *&v3[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController];
    v22 = &v3[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__thirdPartyAppIdentifier];
    *v22 = a1;
    v22[1] = a2;
    v23 = v21;

    v24 = sub_100055EF4(5u);
    v25 = v24;
    if (v24)
    {
      v26 = v24;
      v27 = [v26 parentViewController];
      if (!v27)
      {
        goto LABEL_25;
      }

      v28 = v27;
      sub_10000B77C(0, &qword_1000B3B10);
      v29 = v3;
      v30 = sub_10007DBA0();

      if ((v30 & 1) == 0)
      {
        goto LABEL_25;
      }

      v31 = [v29 view];
      if (!v31)
      {
        __break(1u);
        goto LABEL_33;
      }

      v32 = v31;
      v33 = [v26 view];
      v34 = [v32 containsView:v33];

      if (!v34)
      {
LABEL_25:
        v35 = v26;
        sub_1000574BC(v25, 0);

        sub_100056C8C(v35, 0);
      }
    }

    sub_1000574BC(v21, 0);

    v3[v6] = 5;
    v19 = *&v3[v20];
    *&v3[v20] = v25;
    goto LABEL_28;
  }

  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = *&v3[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__thirdPartyAppIdentifier] == a1 && v8 == a2;
  if (!v9 && (sub_10007DE50() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v10 = *&v3[OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController];
  if (!v10)
  {
    return;
  }

  v36 = v10;
  v11 = [v36 parentViewController];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  sub_10000B77C(0, &qword_1000B3B10);
  v13 = v3;
  v14 = sub_10007DBA0();

  if ((v14 & 1) == 0)
  {
    goto LABEL_17;
  }

  v15 = [v13 view];
  if (!v15)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v36 view];
  v18 = [v16 containsView:v17];

  if (!v18)
  {
LABEL_17:
    v36 = v36;
    sub_1000574BC(v10, 0);

    sub_100056C8C(v36, 0);
  }

  v19 = v36;
LABEL_28:
}

void sub_100055D10(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController_activeController);
  if (!v3)
  {
    return;
  }

  v4 = v2;
  type metadata accessor for AvatarStickersViewController();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = *((swift_isaMask & *v7) + 0x128);
  v16 = v3;
  v10 = v9();
  if (!v11)
  {
    if (!a2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!a2)
  {

LABEL_15:
    v14 = (v4 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__puppetIdentifier);
    *v14 = a1;
    v14[1] = a2;

    v15 = *((swift_isaMask & *v8) + 0x130);

    v15(a1, a2);
LABEL_16:

    return;
  }

  if (v10 != a1 || v11 != a2)
  {
    v13 = sub_10007DE50();

    if (v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }
}

uint64_t sub_100055EF4(unsigned __int8 a1)
{
  v3 = v1;
  v5 = sub_10007D540();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100006D40(&qword_1000B3BB8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v66 - v11;
  if (a1 <= 2u)
  {
    if (a1 < 2u)
    {
      v13 = [v3 view];
      if (v13)
      {
        v14 = v13;
        [v13 frame];

        v15 = &enum case for Sticker.StickerType.userContent(_:);
        if (a1)
        {
          v15 = &enum case for Sticker.StickerType.recent(_:);
        }

        (*(v6 + 104))(v12, *v15, v5);
        (*(v6 + 56))(v12, 0, 1, v5);
        v16 = objc_allocWithZone(sub_10007C680());
        v17 = sub_10007C650();
        (*((swift_isaMask & *v3) + 0x118))();
        v18 = sub_10007C640();
        (*((swift_isaMask & *v3) + 0x88))(v18);
        sub_10007C660();
        return v17;
      }

      __break(1u);
      goto LABEL_26;
    }

    v22 = [v3 view];
    if (!v22)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v23 = v22;
    [v22 frame];

    (*(v6 + 104))(v8, enum case for Sticker.StickerType.recent(_:), v5);
    v24 = objc_allocWithZone(sub_10007C6C0());
    v25 = sub_10007C6B0();
    v26 = *((swift_isaMask & *v3) + 0x88);
    v17 = v25;
    v26();
    sub_10007C660();

    return v17;
  }

  if (a1 == 3)
  {
    if (*(v3 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__puppetIdentifier + 8))
    {
      v27 = *(v3 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__puppetIdentifier);
      v28 = *(v3 + OBJC_IVAR____TtC22StickersUltraExtension30StickerProvidingViewController__puppetIdentifier + 8);
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
    }

    type metadata accessor for AvatarStickersViewController();

    v17 = sub_10007A50C(v27, v28);
    v38 = (*((swift_isaMask & *v3) + 0x118))();
    v39 = (*((swift_isaMask & *v17) + 0xB8))(v38 & 1);
    v40 = (*((swift_isaMask & *v3) + 0x88))(v39);
    (*((swift_isaMask & *v17) + 0x118))(v40);
    return v17;
  }

  if (a1 == 4)
  {
    type metadata accessor for EmojiViewController();
    v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v19 = (*((swift_isaMask & *v3) + 0x118))();
    v20 = (*((swift_isaMask & *v17) + 0x130))(v19 & 1);
    v21 = (*((swift_isaMask & *v3) + 0x88))(v20);
    (*((swift_isaMask & *v17) + 0xE0))(v21);
    return v17;
  }

  v2 = *((swift_isaMask & *v3) + 0xB0);
  v29 = (v2)(v10);
  if (!v30)
  {
LABEL_27:
    if (qword_1000B6150 != -1)
    {
      swift_once();
    }

    v45 = sub_10007C780();
    sub_10000AE78(v45, qword_1000B6158);
    v46 = v3;
    v47 = sub_10007C760();
    v48 = sub_10007DA10();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v73 = v50;
      *v49 = 136315138;
      aBlock = v2();
      v68 = v51;
      sub_100006D40(&unk_1000B2BC0);
      v52 = sub_10007D7F0();
      v54 = sub_10000A660(v52, v53, &v73);

      *(v49 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v47, v48, "Request to load 3rd party app, but no identifier: %s", v49, 0xCu);
      sub_10000B5CC(v50);
    }

    goto LABEL_37;
  }

  v31 = v29;
  v32 = v30;
  v33 = objc_opt_self();
  v34 = [v33 sharedInstance];
  v35 = sub_10007D7A0();
  v17 = [v34 viewControllerForPluginIdentifier:v35 dataSource:0];

  if (v17)
  {

    if ((*((swift_isaMask & *v3) + 0x88))(v36))
    {
      v66 = &OBJC_PROTOCOL___CKBrowserViewControllerSendDelegate;
      v37 = swift_dynamicCastObjCProtocolConditional();
      if (!v37)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v37 = 0;
    }

    [v17 setSendDelegate:v37];
    swift_unknownObjectRelease();
    if ([v17 respondsToSelector:"loadRemoteViewWithCompletion:"])
    {
      v41 = swift_allocObject();
      *(v41 + 16) = v17;
      v71 = sub_100058DF4;
      v72 = v41;
      aBlock = _NSConcreteStackBlock;
      v68 = 1107296256;
      v69 = sub_1000136CC;
      v70 = &unk_1000A5680;
      v42 = _Block_copy(&aBlock);
      v43 = v17;

      [v43 loadRemoteViewWithCompletion:v42];
      _Block_release(v42);
    }

    return v17;
  }

  if (qword_1000B6150 != -1)
  {
    swift_once();
  }

  v55 = sub_10007C780();
  sub_10000AE78(v55, qword_1000B6158);

  v56 = sub_10007C760();
  v57 = sub_10007DA10();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v58 = 136315394;
    v59 = sub_10000A660(v31, v32, &aBlock);

    *(v58 + 4) = v59;
    *(v58 + 12) = 2080;
    v60 = [v33 sharedInstance];
    v61 = [v60 allPlugins];

    sub_10000B77C(0, &qword_1000B2AB8);
    sub_10007D8E0();

    v62 = sub_10007D910();
    v64 = v63;

    v65 = sub_10000A660(v62, v64, &aBlock);

    *(v58 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v56, v57, "Failed to load 3rd party controller %s in dictionary %s", v58, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_37:
  result = sub_10007DD90();
  __break(1u);
  return result;
}