uint64_t sub_C3FDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_C4024(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_C4080()
{
  v0 = MTLCreateSystemDefaultDevice();
  sub_C40C0(v0, v2);
  xmmword_E70D50 = v2[0];
  *&qword_E70D60 = v2[1];
  result = *&v3;
  xmmword_E70D70 = v3;
  return result;
}

void sub_C40C0(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    goto LABEL_13;
  }

  v4 = [swift_unknownObjectRetain() newCommandQueue];
  if (!v4)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    sub_AB9F30();
    sub_C43C0();
    v18 = sub_ABA980();
    sub_AB4A90();

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v5 = v4;
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  cacheOut = 0;
  v6 = [v2 newDefaultLibraryWithBundle:qword_E71620 error:&cacheOut];
  if (!v6)
  {
    v17 = cacheOut;
    sub_AB3050();

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_12;
  }

  v7 = v6;
  v8 = cacheOut;
  swift_unknownObjectRelease();
  cacheOut = 0;
  v9 = CVMetalTextureCacheCreate(kCFAllocatorDefault, 0, v2, 0, &cacheOut);
  v10 = v9;
  v11 = cacheOut;
  if (cacheOut && !v9)
  {
    v12 = objc_allocWithZone(MTKTextureLoader);
    swift_unknownObjectRetain();
    v13 = v11;
    v14 = [v12 initWithDevice:v2];
    if ([v2 supportsFamily:1003])
    {
      v15 = *DeviceCapabilities.hasExtendedColorDisplay.unsafeMutableAddressor();
      swift_unknownObjectRelease();
      if (v15)
      {
        v16 = 552;
LABEL_21:

        goto LABEL_15;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v16 = 80;
    goto LABEL_21;
  }

  v19 = sub_AB9F30();
  sub_C43C0();
  v20 = sub_ABA980();
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = v10;
    _os_log_impl(&dword_0, v20, v19, "Metal: Unsuccessful creating CVMetalTextureCache, Metal rendering unavailable: %d", v21, 8u);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_14:
  v2 = 0;
  v5 = 0;
  v7 = 0;
  v14 = 0;
  v16 = 0;
  v11 = 0;
LABEL_15:
  *a2 = v2;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v14;
  a2[4] = v16;
  a2[5] = v11;
}

unint64_t sub_C43C0()
{
  result = qword_DED8C0;
  if (!qword_DED8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DED8C0);
  }

  return result;
}

void sub_C44B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for JSBrickModelRequest();
  objc_msgSendSuper2(&v13, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v12);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel];
    v6 = *&v11[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel];
    *&v11[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel] = v5;
    v7 = v5;

    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_previousResponse];
    v9 = *&v11[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_previousResponse];
    *&v11[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_previousResponse] = v8;
    v10 = v8;
  }
}

uint64_t sub_C45F8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_60044();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_C56C4, v12);
}

uint64_t sub_C46C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);
}

void sub_C49A4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication28JSBrickModelRequestOperation_request];
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel);
  if (v2)
  {
    v3 = v2;
    v4 = [v1 itemProperties];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 itemKind];
      if (!v6 || (v7 = v6, [v6 modelClass], v7, swift_getObjCClassMetadata(), (v8 = objc_msgSend(swift_getObjCClassFromMetadata(), "requiredStoreLibraryPersonalizationProperties")) == 0))
      {
        v8 = [objc_opt_self() emptyPropertySet];
      }

      v9 = [v5 propertySetByCombiningWithPropertySet:v8];

      v10 = objc_allocWithZone(type metadata accessor for JSModelBrickItemBuilder());
      v11 = sub_405D10(v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v13 = sub_AB9260();
    v34 = v12;
    [v12 appendSection:v13];

    v14 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v15 = sub_AB9260();
    v33 = v14;
    [v14 appendSection:v15];

    v16 = JSBrick.items.getter();
    v17 = v16;
    if (v16 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v31 = v1;
      v32 = v3;
      v1 = 0;
      v3 = &selRef__authenticateReturningError_;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v22 = sub_360828(v1, v17);
        }

        else
        {
          if (v1 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_23;
          }

          v22 = *(v17 + 8 * v1 + 32);
        }

        v23 = v22;
        v24 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v11)
        {
          v25 = [a1 userIdentity];
          if (!v25)
          {
            __break(1u);
LABEL_21:

            v1 = v31;
            v3 = v32;
            goto LABEL_26;
          }

          v19 = v25;
          v20 = sub_4053EC(v23, v25);

          [v33 appendItem:v23];
          v21 = v20;
          [v34 appendItem:v21];
        }

        ++v1;
        if (v24 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_26:
    v26 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v1 unpersonalizedContentDescriptors:v34];
    [v26 setRepresentedObjects:v33];
    v27 = swift_allocObject();
    *(v27 + 16) = v1;
    *(v27 + 24) = a1;
    aBlock[4] = sub_C55D8;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_30;
    v28 = _Block_copy(aBlock);
    v29 = v1;
    v30 = a1;

    [v26 performWithResponseHandler:v28];
    _Block_release(v28);
  }

  else
  {
    __break(1u);
  }
}

void sub_C4DB8(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSBrickModelResponse());
    v9 = a1;
    v13 = sub_C5014(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication28JSBrickModelRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication28JSBrickModelRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

char *sub_C5014(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_itemsDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_personalizationResponse] = a2;
  v4 = a2;
  v5 = [v4 representedObjectResults];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_jsResults] = v5;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for JSBrickModelResponse();
  result = objc_msgSendSuper2(&v22, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v4;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v21 = a1;
    v11 = *&a1[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel];
    v12 = v11;
    v13 = *JSBrick.itemsDidChangeNotification.unsafeMutableAddressor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v15 = v9;
    v16 = v12;
    *&v15[OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_itemsDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v11, 1, 1, sub_AAF10, v14);

    v17 = MPModelResponseDidInvalidateNotification;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v8;
    v20 = v17;

    swift_allocObject();
    *&v15[OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v8, 1, 1, sub_AADB4, v18);

    LOBYTE(v18) = [v19 isValid];

    if ((v18 & 1) == 0)
    {
      [v15 _invalidate];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_C5440(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_C5508()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_C5558()
{

  return swift_deallocObject();
}

uint64_t sub_C5598()
{

  return swift_deallocObject();
}

uint64_t sub_C55E0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_C5618()
{

  return swift_deallocObject();
}

uint64_t sub_C566C()
{

  return swift_deallocObject();
}

uint64_t sub_C56D4()
{

  return swift_deallocObject();
}

uint64_t sub_C5728(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked] = 2;
  v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isTopSeparatorHidden] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isBottomSeparatorHidden] = 0;
  v11 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView;
  *&v4[v12] = sub_C6BB0();
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_textComponents];
  *v13 = sub_C7580();
  v13[1] = v14;
  v15 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customTopSeparatorView;
  *&v4[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customBottomSeparatorView;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_accessibilityIsSelectedChoice] = 0;
  v30.receiver = v4;
  v30.super_class = type metadata accessor for MultiChoiceCell();
  v17 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v18 = v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  v19 = v17;
  v20 = v19;
  if ((v18 & 1) == 0)
  {
    [v19 setNeedsLayout];
  }

  v21 = *(v20 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
  v22 = v20 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_textComponents;
  result = swift_beginAccess();
  v24 = *(v22 + 1);
  if (!(v24 >> 62))
  {
    v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
    if (v25)
    {
      goto LABEL_5;
    }

LABEL_12:
    (*&stru_658.segname[(swift_isaMask & *v20) - 8])(result);
    v29 = [v20 contentView];
    [v29 addSubview:*(v20 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView)];
    [v29 addSubview:*(v20 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView)];

    return v20;
  }

  result = sub_ABB060();
  v25 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v25 >= 1)
  {
    v26 = v21;

    for (i = 0; i != v25; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v28 = sub_36003C(i, v24);
      }

      else
      {
        v28 = *(v24 + 8 * i + 32);
      }

      TextStackView.add(_:)(v28);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_C5AB0(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_textComponents;
      swift_beginAccess();
      v5 = *&v2[v4];

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

uint64_t sub_C5BD0(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);
}

uint64_t sub_C5C64(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView];

      v5 = String.trim()();

      v6 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text];
      v7 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text + 8];
      *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text] = v5;
      sub_4CEE20(v6, v7);

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_C5D5C(id result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked];
  if (v2 != 2)
  {
    v3 = v1;
    if (result == 2 || ((v2 ^ result) & 1) != 0)
    {
      v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_accessibilityIsSelectedChoice] = v2 & 1;
      p_name = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView;
      v5 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView];
      if (v2)
      {
        if (v5)
        {
          [*&v3[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView] setTintColor:0];
          v6 = *(p_name + v3);
          if (v6)
          {
            v7 = v6;
            v8 = sub_AB9260();
            v9 = [objc_opt_self() systemImageNamed:v8];

            [v7 setImage:v9];
          }
        }

        p_name = &JSDateDescriptor.name;
        result = [v3 tintColor];
        if (!result)
        {
          __break(1u);
          goto LABEL_19;
        }

        v10 = result;
        swift_beginAccess();
        sub_C6040(1, v10);
        swift_endAccess();

        v5 = *&v3[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView];
        v11 = [v3 tintColor];
        if (v11)
        {
LABEL_16:
          sub_4CDC88(v11);

          return [v3 setNeedsLayout];
        }

        __break(1u);
      }

      if (v5)
      {
        v12 = objc_opt_self();
        v13 = v5;
        v14 = [v12 tertiaryLabelColor];
        [v13 setTintColor:v14];

        v15 = *(p_name + v3);
        if (v15)
        {
          v16 = v15;
          v17 = sub_AB9260();
          v18 = [objc_opt_self() systemImageNamed:v17];

          [v16 setImage:v18];
        }
      }

      result = [v3 tintColor];
      if (result)
      {
        v19 = result;
        swift_beginAccess();
        sub_C6040(0, v19);
        swift_endAccess();

        v5 = *&v3[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView];
        v11 = 0;
        goto LABEL_16;
      }

LABEL_19:
      __break(1u);
    }
  }

  return result;
}

void sub_C6040(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_DE6C98 != -1)
    {
      swift_once();
    }

    a2 = qword_E718D8;
  }

  v3 = *v2;
  v4 = qword_DE67D0;
  v5 = a2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_DEDB08;
  v7 = objc_opt_self();
  v8 = v5;
  v9 = v6;
  v10 = [v7 clearColor];
  swift_beginAccess();
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v14 = v3[7];
  v15 = v3[8];
  v16 = v3[9];
  v17 = v3[10];
  v3[4] = v5;
  v3[5] = v10;
  *(v3 + 3) = xmmword_AF7C20;
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = v9;
  sub_C7504(v11, v12, v13, v14, v15, v16, v17);
  sub_2EB2A8();
}

id sub_C61A0(char a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *&v3[*a2];
  v8 = [v3 contentView];
  v9 = [v7 isDescendantOfView:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [v3 contentView];
    [v10 addSubview:*&v3[v6]];
  }

  v11 = *a3;
  result = [*&v3[v6] setHidden:v3[v11]];
  if (v3[v11] != (a1 & 1))
  {

    return [v3 setNeedsLayout];
  }

  return result;
}

void sub_C62B4()
{
  v1 = [objc_allocWithZone(UIImageView) init];
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView);
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView) = v1;
  v3 = v1;

  if (v3)
  {
    v4 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
    [v3 setPreferredSymbolConfiguration:v4];
  }
}

double sub_C6390()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView);
  if (!v1)
  {
    return 0.0;
  }

  [v1 sizeThatFits:{0.0, 0.0}];
  return result;
}

void sub_C63D8()
{
  v1 = v0;
  v90.receiver = v0;
  v90.super_class = type metadata accessor for MultiChoiceCell();
  objc_msgSendSuper2(&v90, "layoutSubviews");
  v2 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView;
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView];
    v5 = v3;
    if (([v5 isDescendantOfView:v4] & 1) == 0)
    {
      [v4 addSubview:v5];
    }
  }

  v6 = [v1 contentView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v1 music_inheritedLayoutInsets];
  v16 = v15;
  v18 = v17;
  [v1 effectiveUserInterfaceLayoutDirection];
  v19 = UIEdgeInsetsInsetRect(v8, v10, v12, v14, v16, v18);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v1 traitCollection];
  [v26 displayScale];

  sub_C6FC0(v19, v21, v23, v25);
  v81 = v25;
  v82 = v19;
  sub_C6DE8(v19, v21, v23, v25);
  v27 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView];
  [v27 bounds];
  v32 = *&v1[v2];
  if (v32)
  {
    v33 = v28;
    v34 = v29;
    v35 = v30;
    v36 = v31;
    v37 = v32;
    [v37 sizeThatFits:{v35, v36}];
    v79 = v23;
    v39 = v38;
    v41 = v40;
    v91.origin.x = v33;
    v91.origin.y = v34;
    v91.size.width = v35;
    v91.size.height = v36;
    CGRectGetMaxX(v91);
    v92.origin.x = 0.0;
    v92.origin.y = 0.0;
    v92.size.width = v39;
    v92.size.height = v41;
    CGRectGetWidth(v92);
    [v27 bounds];
    sub_ABA470();
    [v27 bounds];
    v23 = v79;
    sub_ABA490();
    [v37 setFrame:?];
  }

  [v27 frame];
  v42 = v23 - (CGRectGetWidth(v93) + 32.0);
  v43 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle + 8];
  if ((v43 & 0x2000000000000000) != 0)
  {
    v44 = HIBYTE(v43) & 0xF;
  }

  else
  {
    v44 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle] & 0xFFFFFFFFFFFFLL;
  }

  v45 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
  v80 = v42;
  [*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] sizeThatFits:?];
  v47 = v46;
  v49 = v48;
  if (v44)
  {
    v50 = v82;
  }

  else
  {
    sub_ABA470();
    v50 = v51;
    v21 = v52;
    v47 = v53;
    v49 = v54;
  }

  v55 = *&v1[v45];
  sub_ABA490();
  [v55 setFrame:?];

  v94.origin.x = v50;
  v94.origin.y = v21;
  v94.size.width = v47;
  v94.size.height = v49;
  CGRectGetMaxY(v94);
  v95.origin.x = v50;
  v95.origin.y = v21;
  v95.size.width = v47;
  v95.size.height = v49;
  Height = CGRectGetHeight(v95);
  if (v44)
  {
    v57 = v81 - Height;
    v58 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView;
    v59 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView];
    sub_4CDE34(v80, v57);

    v60 = *&v1[v58];
    sub_ABA490();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = type metadata accessor for ParagraphView();
    v89.receiver = v60;
    v89.super_class = v69;
    objc_msgSendSuper2(&v89, "frame");
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v88.receiver = v60;
    v88.super_class = v69;
    objc_msgSendSuper2(&v88, "setFrame:", v62, v64, v66, v68);
    type metadata accessor for CGRect(0);
    v84 = v71;
    v85 = v73;
    v86 = v75;
    v87 = v77;
    v83.receiver = v60;
    v83.super_class = v69;
    objc_msgSendSuper2(&v83, "frame");
    if (sub_AB38D0())
    {
      [v60 setNeedsLayout];
      v78 = *&v60[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
      if (v78)
      {

        v78(v60);
        sub_17654(v78);
      }
    }
  }
}

void sub_C6994()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MultiChoiceCell();
  objc_msgSendSuper2(&v4, "tintColorDidChange");
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked);
  v2 = [v0 tintColor];
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    sub_C6040(v1 & 1, v3);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_C6A8C(double a1)
{
  v3 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView))
  {
    [*(v1 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView) frame];
    v3 = CGRectGetWidth(v7) + 32.0;
  }

  v4 = a1 - v3;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView) sizeThatFits:{v4, 5.99231045e307}];
  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView);
  sub_4CDE34(v4, 5.99231045e307);

  sub_471A4();
  return sub_AB38F0();
}

_BYTE *sub_C6BB0()
{
  type metadata accessor for ParagraphView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_4CE4D0(0);
  sub_4CE638(0);
  v1 = v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_shouldApplyInheritedLayoutInsets];
  v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_shouldApplyInheritedLayoutInsets] = 0;
  if (v1 == 1)
  {
    [v0 setNeedsLayout];
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    if (v2)
    {

      v2(v0);
      sub_17654(v2);
    }
  }

  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle];
  *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle] = 1;
  sub_31838(v3);
  v4 = sub_4CF7F0();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  [v4 setTextColor:qword_E718D8];

  v5 = v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textSize];
  v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textSize] = 2;
  if (v5 != 2)
  {
    sub_4CEF60();
    [v0 setNeedsLayout];
    v6 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    if (v6)
    {

      v6(v0);
      sub_17654(v6);
    }
  }

  v7 = &v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedFirstBaselineOffset];
  v8 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedFirstBaselineOffset];
  v9 = v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedFirstBaselineOffset + 8];
  *v7 = 0x4010000000000000;
  v7[8] = 0;
  sub_4CF890(v8, v9);
  v10 = &v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedLastBaselineOffset];
  v11 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedLastBaselineOffset];
  v12 = v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedLastBaselineOffset + 8];
  *v10 = 0x4024000000000000;
  v10[8] = 0;
  sub_4CF89C(v11, v12);
  return v0;
}

id sub_C6DAC()
{
  result = [objc_opt_self() separatorColor];
  qword_DEDB00 = result;
  return result;
}

id sub_C6DE8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = [v4 traitCollection];
  [v9 displayScale];

  if (qword_DE67C8 != -1)
  {
    swift_once();
  }

  v10 = qword_DEDB00;
  [v4 effectiveUserInterfaceLayoutDirection];
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetMinY(v18);
  v11 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customTopSeparatorView;
  v12 = *&v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customTopSeparatorView];
  [v4 bounds];
  sub_ABA490();
  [v12 setFrame:?];

  [*&v4[v11] setBackgroundColor:v10];
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetMaxY(v19);
  v13 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customBottomSeparatorView;
  v14 = *&v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customBottomSeparatorView];
  [v4 bounds];
  sub_ABA490();
  [v14 setFrame:?];

  v15 = *&v4[v13];

  return [v15 setBackgroundColor:v10];
}

id sub_C6FC0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = [v4 traitCollection];
  [v9 displayScale];

  v10 = [v4 effectiveUserInterfaceLayoutDirection];
  v11 = (*&stru_658.segname[swift_isaMask & *v4])(v10);
  v13 = v12;
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  CGRectGetMaxX(v17);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v11;
  v18.size.height = v13;
  CGRectGetWidth(v18);
  [v4 bounds];
  sub_ABA470();
  [v4 bounds];
  sub_ABA490();
  v14 = *(v4 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView);

  return [v14 setFrame:?];
}

void sub_C7164()
{
  sub_89F60();
  v0 = UIFontTextStyleBody;
  v1 = sub_ABA550();

  qword_DEDB08 = v1;
}

void sub_C71EC()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView);
}

id sub_C72A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiChoiceCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MultiChoiceCell()
{
  result = qword_DEDB58;
  if (!qword_DEDB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C7470(uint64_t *a1, int a2)
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

uint64_t sub_C74B8(uint64_t result, int a2, int a3)
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

void sub_C7504(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a6 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_C7580()
{
  if (qword_DE67D0 != -1)
  {
    swift_once();
  }

  v0 = qword_DE6C98;
  v1 = qword_DEDB08;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_E718D8;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  *&v10[0] = v2;
  *(&v10[0] + 1) = v5;
  v10[1] = xmmword_AF7C20;
  v11 = 0;
  v12 = 0;
  v13 = v1;
  v14 = 0;
  v15 = xmmword_AFBCE0;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF82B0;
  *(v7 + 32) = v6;
  v16[0] = v2;
  v16[1] = v5;
  v17 = xmmword_AF7C20;
  v18 = 0;
  v19 = 0;
  v20 = v1;
  v21 = 0;
  v22 = xmmword_AFBCE0;
  sub_2F118(v10, v9);

  sub_2F174(v16);
  return v6;
}

void sub_C772C()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isTopSeparatorHidden) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isBottomSeparatorHidden) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView;
  *(v0 + v4) = sub_C6BB0();
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_textComponents);
  *v5 = sub_C7580();
  v5[1] = v6;
  v7 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customTopSeparatorView;
  *(v0 + v7) = [objc_allocWithZone(UIView) init];
  v8 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customBottomSeparatorView;
  *(v0 + v8) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_accessibilityIsSelectedChoice) = 0;
  sub_ABAFD0();
  __break(1u);
}

UIMenu sub_C78D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, UIMenu *a5@<X8>)
{
  v9 = *a1;
  v10 = OBJC_IVAR____TtC11MusicJSCore13JSMenuSection_items;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v20 = a2;
  v21 = a3;
  v22 = a4;

  v12 = sub_4BF0FC(sub_C7D88, v19, v11);

  sub_13C80(0, &qword_DF1D50);
  v13 = (v9 + OBJC_IVAR____TtC11MusicJSCore13JSMenuSection_title);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];

  v24._countAndFlagsBits = v14;
  v24._object = v15;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v23.value.super.isa = 0;
  v23.is_nil = 0;
  v16.value = (&dword_0 + 1);
  result.super.super.isa = sub_ABA5B0(v24, v25, v23, v16, 0xFFFFFFFFFFFFFFFFLL, v12, v18).super.super.isa;
  a5->super.super.isa = result.super.super.isa;
  return result;
}

objc_class *sub_C7A0C@<X0>(void **a1@<X0>, _BOOL8 a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, UIMenu *a5@<X8>)
{
  v9 = *a1;
  v10 = (*(&stru_68.offset + (swift_isaMask & **a1)))();
  if (v10)
  {
    v11 = v10;
    v12 = (*&stru_68.segname[(swift_isaMask & *v9) + 8])();
    v14 = v13;
    v15 = JSMenu.sections.getter();
    __chkstk_darwin(v15);
    v31 = a2;
    v32 = a3;
    v33 = v11;
    v16 = sub_4BF0D0(sub_70FB0, v30, v15);

    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v12 = 0;
      v17 = 0xE000000000000000;
    }

    if (v16 >> 62)
    {
      sub_13C80(0, &qword_DEAB30);

      v18 = sub_ABAFF0();
    }

    else
    {

      sub_ABB3E0();
      sub_13C80(0, &qword_DEAB30);
      v18 = v16;
    }

    sub_13C80(0, &qword_DF1D50);
    v37._countAndFlagsBits = v12;
    v37._object = v17;
    v38.value._countAndFlagsBits = 0;
    v38.value._object = 0;
    v36.value.super.isa = 0;
    v36.is_nil = 0;
    v19.value = 0;
    v20.super.super.isa = sub_ABA5B0(v37, v38, v36, v19, 0xFFFFFFFFFFFFFFFFLL, v18, v34).super.super.isa;
  }

  else
  {
    (*&stru_68.segname[(swift_isaMask & *v9) + 8])();
    v22 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem;
    swift_beginAccess();
    v23 = *(a4 + v22);
    v27 = 0;
    if (v23)
    {
      type metadata accessor for JSMenuItem();
      v24 = v9;
      v25 = v23;
      v26 = sub_ABA790();

      if (v26)
      {
        v27 = 1;
      }
    }

    sub_13C80(0, &unk_E05310);
    sub_15F28(a3, v35);
    v28 = swift_allocObject();
    *(v28 + 16) = v9;
    sub_17704(v35, v28 + 24);
    v29 = v9;
    v30[0] = 0;
    v30[1] = 0;
    v32 = sub_C85DC;
    v33 = v28;
    v31 = v27;
    result = sub_ABA7D0();
    v20.super.super.isa = result;
  }

  a5->super.super.isa = v20.super.super.isa;
  return result;
}

void sub_C7DAC(uint64_t a1, void *a2, uint64_t a3)
{
  v58 = a2;
  v55 = sub_AB3430();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = _s23MusicPerformanceContextVMa();
  __chkstk_darwin(v57);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510);
  __chkstk_darwin(v19 - 8);
  v21 = &v51 - v20;
  v56 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v22 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  sub_15F84(v62, &v59, &unk_DE8E30);
  if (!*(&v60 + 1))
  {
    sub_12E1C(&v59, &unk_DE8E30);
    v29 = _s30CollectionViewSelectionHandlerVMa();
    (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50);
  v23 = a3;
  v24 = _s30CollectionViewSelectionHandlerVMa();
  v25 = swift_dynamicCast();
  v26 = *(v24 - 8);
  (*(v26 + 56))(v12, v25 ^ 1u, 1, v24);
  v27 = (*(v26 + 48))(v12, 1, v24);
  a3 = v23;
  if (v27 == 1)
  {
LABEL_5:
    sub_12E1C(v12, &qword_E037A0);
    v28 = 1;
    goto LABEL_6;
  }

  (*(v6 + 16))(v18, &v12[*(v24 + 20)], v5);
  sub_2D6C0(v12, _s30CollectionViewSelectionHandlerVMa);
  v28 = 0;
LABEL_6:
  (*(v6 + 56))(v18, v28, 1, v5);
  v30 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v32 = Strong, sub_12B2FC(), v34 = v33, v36 = v35, v32, v34))
  {
    ObjectType = swift_getObjectType();
    (*(v36 + 8))(ObjectType, v36);
    v39 = v38;
    swift_unknownObjectRelease();
    sub_15F84(v18, v16, &unk_DE8E20);
    if ((*(v6 + 48))(v16, 1, v5) == 1)
    {
      sub_12E1C(v16, &unk_DE8E20);
      v59 = 0u;
      v60 = 0u;
      v61 = 0;
    }

    else
    {
      (*(v6 + 32))(v52, v16, v5);
      sub_2D668();
      sub_ABAD10();
    }

    v41 = swift_getObjectType();
    v42 = v53;
    sub_3B8F68();
    v40 = sub_21CCAC(1, v42, &v59, v41, v39);
    (*(v54 + 8))(v42, v55);
    sub_12E1C(&v59, &qword_DF2BD0);
    sub_12E1C(v18, &unk_DE8E20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v18, &unk_DE8E20);
    v40 = 0;
  }

  v43 = swift_unknownObjectWeakLoadStrong();
  if (v43)
  {
    v44 = v43;
    sub_12AFE8();
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  sub_15F28(v30, &v59);
  sub_15F84(v62, (v9 + 104), &unk_DE8E30);
  v47 = v57;
  sub_15F84(v21, &v9[*(v57 + 28)], &unk_DEA510);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 8) = 1;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0;
  sub_2D594(&v59, v9);
  *(v9 + 12) = 0;
  v48 = *v56;
  *(&v60 + 1) = v47;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v59);
  sub_2D604(v9, boxed_opaque_existential_0);
  v50 = v48;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v58, 0, v40, v46, &v59);
  sub_12E1C(v21, &unk_DEA510);
  sub_12E1C(v62, &unk_DE8E30);
  sub_2D6C0(v9, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v59, &unk_DE8E40);
}

uint64_t sub_C8560()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_C8604(uint64_t a1, int a2)
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

uint64_t sub_C864C(uint64_t result, int a2, int a3)
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

uint64_t sub_C86C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980);
  return sub_AB7650();
}

uint64_t sub_C8734@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_AB7A30();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB80);
  return sub_C8784(a1, a2 + *(v5 + 44));
}

uint64_t sub_C8784@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB88);
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB90);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  v13 = a1[1];
  v22 = *a1;
  v25 = *(a1 + 2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980);
  sub_AB7640();
  v14 = v24;
  v25 = *(a1 + 2);
  sub_AB7640();
  if (v24 == 1)
  {
    sub_AB58D0();
    v15 = v23;
    (*(v4 + 32))(v12, v6, v23);
    v16 = 0;
    v17 = v15;
  }

  else
  {
    v16 = 1;
    v17 = v23;
  }

  (*(v4 + 56))(v12, v16, 1, v17);
  if (v14)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 1.0;
  }

  sub_15F84(v12, v10, &qword_DEDB90);
  *a2 = v22;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB98);
  sub_15F84(v10, a2 + *(v19 + 48), &qword_DEDB90);

  sub_C8ED0(v12);
  sub_C8ED0(v10);
}

uint64_t sub_C8A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v13 = *v1;
  v14 = v3;
  v15 = v1[2];
  v16 = v13;
  v4 = v3;
  v17 = v15;
  v5 = swift_allocObject();
  v6 = v1[1];
  v5[1] = *v1;
  v5[2] = v6;
  v5[3] = v1[2];
  sub_C8C3C(&v16, &v12);
  sub_307CC(v4);
  sub_15F84(&v17, &v12, &qword_DFE980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB68);
  sub_36A00(&qword_DEDB70, &qword_DEDB68);
  sub_AB7690();
  v12 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980);
  sub_AB7640();
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB78);
  v10 = (a1 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = sub_C8EC8;
  v10[2] = v8;
  return result;
}

uint64_t sub_C8BDC()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_C8C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v29 = a1;
  *(&v29 + 1) = a2;
  sub_36A48();

  v4 = sub_AB6F20();
  v6 = v5;
  v8 = v7;
  sub_AB74B0();
  v9 = sub_AB6E10();
  v11 = v10;
  v13 = v12;

  sub_36B74(v4, v6, v8 & 1);

  sub_AB6CC0();
  v14 = sub_AB6E80();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_36B74(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  sub_AB7A30();
  sub_AB5E90();
  *&v28[55] = v32;
  *&v28[71] = v33;
  *&v28[87] = v34;
  *&v28[103] = v35;
  *&v28[7] = v29;
  *&v28[23] = v30;
  LOBYTE(v11) = v18 & 1;
  *&v28[39] = v31;
  v22 = sub_AB6AA0();
  result = sub_AB5690();
  *(a3 + 105) = *&v28[64];
  *(a3 + 121) = *&v28[80];
  *(a3 + 137) = *&v28[96];
  *(a3 + 41) = *v28;
  *(a3 + 57) = *&v28[16];
  *(a3 + 73) = *&v28[32];
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v11;
  *(a3 + 24) = v20;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 152) = *(&v35 + 1);
  *(a3 + 89) = *&v28[48];
  *(a3 + 160) = v22;
  *(a3 + 168) = v24;
  *(a3 + 176) = v25;
  *(a3 + 184) = v26;
  *(a3 + 192) = v27;
  *(a3 + 200) = 0;
  return result;
}

uint64_t sub_C8ED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_C8F4C()
{
  result = qword_DEDBA0;
  if (!qword_DEDBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEDB78);
    sub_36A00(&qword_DEDBA8, &qword_DEDBB0);
    sub_36A00(&qword_DEDBB8, &qword_DEDBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDBA0);
  }

  return result;
}

unint64_t sub_C9058()
{
  result = qword_DEDBC8;
  if (!qword_DEDBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEDBD0);
    sub_C90E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDBC8);
  }

  return result;
}

unint64_t sub_C90E4()
{
  result = qword_DEDBD8;
  if (!qword_DEDBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEDBE0);
    sub_C9170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDBD8);
  }

  return result;
}

unint64_t sub_C9170()
{
  result = qword_DEDBE8;
  if (!qword_DEDBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEDBF0);
    sub_36A00(&qword_DEDBF8, &qword_DFE960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDBE8);
  }

  return result;
}

id sub_C928C(void *a1)
{
  *&v1[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_preventStoreItemMetadataCaching] = 2;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for StoreModelItemRequest();
  v3 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  if (v3)
  {
    sub_13C80(0, &qword_DEDE20);
    v4 = v3;
    v5 = sub_ABA710();
    v6 = *&v4[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model];
    *&v4[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model] = v5;

    a1 = v6;
  }

  return v3;
}

void sub_C9448(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = type metadata accessor for StoreModelItemRequest();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model];
    *&v8[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model] = v5;
    v7 = v5;
  }
}

uint64_t sub_C9574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = JSViewModelRequestCoordinator.sharedCoordinator.unsafeMutableAddressor();
  v7 = *v6;
  v8 = *(**v6 + 144);

  result = v8(v9);
  v11 = v3[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_preventStoreItemMetadataCaching];
  if (v11 == 2)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = swift_allocObject();
    *(v13 + 2) = v7;
    *(v13 + 3) = v12;
    *(v13 + 4) = a1;
    *(v13 + 5) = a2;
    v14 = type metadata accessor for StoreModelItemRequestOperation();
    v15 = objc_allocWithZone(v14);

    v16 = v3;
    [v16 copy];
    sub_ABAB50();
    type metadata accessor for StoreModelItemRequest();
    swift_dynamicCast();
    *&v15[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_request] = v20;
    swift_unknownObjectRelease();
    v17 = &v15[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_responseHandler];
    *v17 = sub_CB540;
    v17[1] = v13;
    v15[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_preventStoreItemMetadataCaching] = v11 & 1;
    v19.receiver = v15;
    v19.super_class = v14;
    v18 = objc_msgSendSuper2(&v19, "init");

    return v18;
  }

  return result;
}

uint64_t sub_C96F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a1;
  v12[5] = a2;
  v13 = *(*a3 + 152);

  v14 = a1;
  swift_errorRetain();
  v13(a4, sub_AAED4, v12);
}

Swift::Int NSFileManager.Failure.hashValue.getter()
{
  sub_ABB5C0();
  sub_ABB5D0(0);
  return sub_ABB610();
}

Swift::Int sub_C9910()
{
  sub_ABB5C0();
  sub_ABB5D0(0);
  return sub_ABB610();
}

void sub_C995C()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for StoreModelItemRequestOperation();
  objc_msgSendSuper2(&v19, "execute");
  v2 = *(*&v0[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_request] + OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model);
  if (v2)
  {
    v3 = v2;
    v4 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v5 = MPModelObject.bestIdentifier(for:)(*v4, 0);
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = [objc_opt_self() sharedStoreItemMetadataRequestController];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_AF4EC0;
      *(v10 + 32) = v7;
      *(v10 + 40) = v8;

      isa = sub_AB9740().super.isa;

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = v7;
      v13[4] = v8;
      v13[5] = v3;
      v18[4] = sub_CB444;
      v18[5] = v13;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 1107296256;
      v18[2] = sub_151E0;
      v18[3] = &block_descriptor_26;
      v14 = _Block_copy(v18);
      v15 = v3;

      [v9 requestStoreItemMetadataForReason:1 withItemIdentifiers:isa responseHandler:v14];
      _Block_release(v14);

      return;
    }
  }

  v16 = *&v1[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_responseHandler];
  sub_CB370();
  v17 = swift_allocError();
  v16(0, v17);

  [v1 finish];
}

void sub_C9BB8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (!a1 || a2)
    {
      (*(Strong + OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_responseHandler))(0, a2);
      [v5 finish];
LABEL_5:

      return;
    }

    v6 = a1;
    if (![v6 isFinalResponse])
    {

      goto LABEL_5;
    }

    v7 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v8 = sub_AB9260();
    v9 = [v6 storeItemMetadataForItemIdentifier:v8];

    if (!v9)
    {
LABEL_54:
      v43 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:*&v5[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_request] unpersonalizedContentDescriptors:v7];
      v44 = swift_allocObject();
      *(v44 + 16) = v5;
      aBlock[4] = sub_CB488;
      aBlock[5] = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_32;
      v45 = _Block_copy(aBlock);
      v46 = v5;

      [v43 performWithResponseHandler:v45];

      _Block_release(v45);
      v5 = v43;
      goto LABEL_5;
    }

    v10 = [*&v5[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_request] itemProperties];
    if (v10)
    {
      v11 = v10;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_AF4EC0;
        *(v12 + 32) = sub_AB92A0();
        *(v12 + 40) = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
        v14 = v9;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_AF4EC0;
        v56 = v6;
        v16 = v7;
        *(inited + 32) = sub_AB92A0();
        *(inited + 40) = v17;
        *(inited + 48) = v11;
        v55 = v11;
        sub_96EA4(inited);
        swift_setDeallocating();
        sub_CB490(inited + 32);
        v18 = objc_allocWithZone(MPPropertySet);
        isa = sub_AB9740().super.isa;

        v9 = v14;
        sub_13C80(0, &qword_DEA550);
        v20.super.isa = sub_AB8FD0().super.isa;

        v21 = v18;
        v7 = v16;
        v6 = v56;
        v22 = [v21 initWithProperties:isa relationships:v20.super.isa];
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
                  v47 = swift_allocObject();
                  *(v47 + 16) = xmmword_AF4EC0;
                  *(v47 + 32) = sub_AB92A0();
                  *(v47 + 40) = v48;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
                  v49 = swift_initStackObject();
                  *(v49 + 16) = xmmword_AF4EC0;
                  *(v49 + 32) = sub_AB92A0();
                  *(v49 + 40) = v50;
                  *(v49 + 48) = v11;
                  v51 = v11;
                  sub_96EA4(v49);
                  swift_setDeallocating();
                  sub_CB490(v49 + 32);
                  v52 = objc_allocWithZone(MPPropertySet);
                  v53 = sub_AB9740().super.isa;

                  sub_13C80(0, &qword_DEA550);
                  v54 = sub_AB8FD0().super.isa;

                  v22 = [v52 initWithProperties:v53 relationships:v54];
                }

                else
                {
                  v22 = [objc_opt_self() emptyPropertySet];
                }

                goto LABEL_21;
              }
            }
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_AF4EC0;
        *(v23 + 32) = sub_AB92A0();
        *(v23 + 40) = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_AF4EC0;
        *(v25 + 32) = sub_AB92A0();
        *(v25 + 40) = v26;
        *(v25 + 48) = v11;
        v57 = v11;
        sub_96EA4(v25);
        swift_setDeallocating();
        sub_CB490(v25 + 32);
        v27 = objc_allocWithZone(MPPropertySet);
        v28 = sub_AB9740().super.isa;

        sub_13C80(0, &qword_DEA550);
        v20.super.isa = sub_AB8FD0().super.isa;

        v22 = [v27 initWithProperties:v28 relationships:v20.super.isa];
      }
    }

    else
    {
      v22 = [objc_opt_self() emptyPropertySet];
    }

LABEL_21:
    sub_13C80(0, &unk_DEDE10);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = v22;
    v31 = [ObjCClassFromMetadata requiredStoreLibraryPersonalizationProperties];
    v32 = [v30 propertySetByCombiningWithPropertySet:v31];

    v33 = [objc_allocWithZone(MPModelStoreBrowseContentItemBuilder) initWithRequestedPropertySet:v32];
    if (!v33)
    {
      __break(1u);
      JUMPOUT(0xCAD20);
    }

    v34 = v33;
    [v33 setPreventStoreItemMetadataCaching:v5[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_preventStoreItemMetadataCaching]];
    v35 = v9;
    v36 = [v5 userIdentity];
    v37 = [v34 modelObjectWithStoreItemMetadata:v35 userIdentity:v36];

    if (v37)
    {
      switch([v37 itemType])
      {
        case 1uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = [v37 album];
            goto LABEL_50;
          }

          break;
        case 2uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = [v37 artist];
            goto LABEL_50;
          }

          break;
        case 3uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = [v37 curator];
            goto LABEL_50;
          }

          break;
        case 4uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = [v37 playlist];
            goto LABEL_50;
          }

          break;
        case 5uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = [v37 radioStation];
            goto LABEL_50;
          }

          break;
        case 6uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = [v37 socialPerson];
            goto LABEL_50;
          }

          break;
        case 7uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = [v37 song];
            goto LABEL_50;
          }

          break;
        case 8uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = [v37 episode];
            goto LABEL_50;
          }

          break;
        case 9uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = [v37 show];
            goto LABEL_50;
          }

          break;
        case 0xAuLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = [v37 season];
            goto LABEL_50;
          }

          break;
        case 0xBuLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = [v37 showCreator];
            goto LABEL_50;
          }

          break;
        case 0xCuLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = [v37 movie];
            goto LABEL_50;
          }

          break;
        case 0xEuLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v38 = [v37 recordLabel];
LABEL_50:
            v39 = v38;
            if (v39)
            {
              v40 = v39;
              v41 = sub_AB9260();
              [v7 appendSection:v41];

              v42 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v40 personalizationStyle:1];
              [v7 appendItem:v42];

              v37 = v40;
              v32 = v40;
            }
          }

          break;
        default:
          break;
      }
    }

    goto LABEL_54;
  }
}

void sub_CAD58(void *a1, uint64_t a2, char *a3)
{
  if (a1 && (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
  {
    v6 = v5;
    v7 = *&a3[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_request];
    objc_allocWithZone(type metadata accessor for StoreModelItemResponse());
    v8 = a1;
    v12 = sub_CAF58(v7, v6);
    v9 = *&a3[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_responseHandler];
    v10 = v12;
    v11 = v12;
  }

  else
  {
    v11 = 0;
    v9 = *&a3[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_responseHandler];
  }

  v13 = v11;
  v9();

  [a3 finish];
}

char *sub_CAF58(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication22StoreModelItemResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication22StoreModelItemResponse_personalizationResponse] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for StoreModelItemResponse();
  v5 = a2;
  result = objc_msgSendSuper2(&v15, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v5;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v11 = MPModelResponseDidInvalidateNotification;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = v8;
    v14 = v11;

    type metadata accessor for NotificationObserver();
    swift_allocObject();
    *&v9[OBJC_IVAR____TtC16MusicApplication22StoreModelItemResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v14, v8, 1, 1, sub_B5984, v12);

    LOBYTE(v8) = [v13 isValid];

    if ((v8 & 1) == 0)
    {
      [v9 _invalidate];
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_CB278(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_CB320()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_CB370()
{
  result = qword_DEDE00;
  if (!qword_DEDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDE00);
  }

  return result;
}

uint64_t sub_CB3C4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_CB3FC()
{

  return swift_deallocObject();
}

uint64_t sub_CB450()
{

  return swift_deallocObject();
}

uint64_t sub_CB490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CB4F8()
{

  return swift_deallocObject();
}

uint64_t sub_CB54C()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for JSPlaybackIntent.ShuffleMode(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for JSPlaybackIntent.ShuffleMode(_WORD *result, int a2, int a3)
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

unint64_t sub_CB678()
{
  result = qword_DEDE28;
  if (!qword_DEDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDE28);
  }

  return result;
}

void sub_CB6E4(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_28F80C(a1);
  v4 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerStoreItemMetadata;
  swift_beginAccess();
  v5 = *&v2[v4];
  v87 = a1;
  v88 = v2;
  if (!v5)
  {
    v97 = 0u;
    v98 = 0u;
LABEL_11:
    sub_9BC10(&v97);
    goto LABEL_12;
  }

  v6 = v5;
  if ([v6 storeID])
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v90 = 0u;
    v91 = 0u;
  }

  v97 = v90;
  v98 = v91;

  if (!*(&v91 + 1))
  {
    goto LABEL_11;
  }

  sub_9ACFC(&v97, &v92);
  __swift_project_boxed_opaque_existential_1(&v92, v94);
  sub_ABB3A0();
  v7 = MPStoreItemMetadataStringNormalizeStoreIDValue();
  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = sub_AB92A0();
    v10 = v9;

    v11 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_6B0F0((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[16 * v13];
    *(v14 + 4) = v8;
    *(v14 + 5) = v10;
    __swift_destroy_boxed_opaque_existential_0(&v92);
    goto LABEL_63;
  }

  __swift_destroy_boxed_opaque_existential_0(&v92);
LABEL_12:
  v15 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerIdentifierSet;
  swift_beginAccess();
  v16 = *&v2[v15];
  if (v16)
  {
    v17 = *(&stru_B8.reserved2 + (swift_isaMask & *v16));
    v18 = v16;
    v19 = v17();
    v21 = v20;

    if (v21)
    {
      v22 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_6B0F0((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[16 * v24];
      *(v25 + 4) = v19;
      *(v25 + 5) = v21;
      goto LABEL_63;
    }
  }

  v26 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_items;
  swift_beginAccess();
  v27 = *&v2[v26];
  if (v27 >> 62)
  {
    if (sub_ABB060())
    {
      goto LABEL_19;
    }
  }

  else if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_19:
    v89 = *&v2[v26];
    if (v89 >> 62)
    {
      v28 = sub_ABB060();
      if (!v28)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v28 = *(&dword_10 + (v89 & 0xFFFFFFFFFFFFFF8));
      if (!v28)
      {
        goto LABEL_63;
      }
    }

    if (v28 >= 1)
    {
      v29 = v89 & 0xC000000000000001;

      v30 = 0;
      v31 = _swiftEmptyArrayStorage;
      v32 = &selRef_performWithResponseHandler_;
      v86 = v89 & 0xC000000000000001;
      while (1)
      {
        v33 = v29 ? sub_3608C4(v30, v89) : *(v89 + 8 * v30 + 32);
        v34 = v33;
        if (![v33 v32[311]])
        {
          break;
        }

        sub_ABAB50();
        sub_9ACFC(&v92, &v97);
        swift_unknownObjectRelease();
        if (!*(&v98 + 1))
        {
          goto LABEL_24;
        }

        sub_9ACFC(&v97, &v92);
        __swift_project_boxed_opaque_existential_1(&v92, v94);
        sub_ABB3A0();
        v35 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        swift_unknownObjectRelease();
        if (v35)
        {
          v36 = v32;
          v37 = sub_AB92A0();
          v39 = v38;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_6B0F0(0, *(v31 + 2) + 1, 1, v31);
          }

          v41 = *(v31 + 2);
          v40 = *(v31 + 3);
          if (v41 >= v40 >> 1)
          {
            v31 = sub_6B0F0((v40 > 1), v41 + 1, 1, v31);
          }

          *(v31 + 2) = v41 + 1;
          v42 = &v31[16 * v41];
          *(v42 + 4) = v37;
          *(v42 + 5) = v39;
          __swift_destroy_boxed_opaque_existential_0(&v92);

          v29 = v86;
          v32 = v36;
          goto LABEL_26;
        }

        __swift_destroy_boxed_opaque_existential_0(&v92);
LABEL_25:

LABEL_26:
        if (v28 == ++v30)
        {
          goto LABEL_58;
        }
      }

      v97 = 0u;
      v98 = 0u;
LABEL_24:
      sub_9BC10(&v97);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_62;
  }

  v28 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_itemIdentifiers;
  swift_beginAccess();
  v43 = *&v2[v28];
  if (v43 >> 62)
  {
LABEL_62:
    if (!sub_ABB060())
    {
      goto LABEL_63;
    }

    goto LABEL_44;
  }

  if (!*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_63;
  }

LABEL_44:
  v44 = *&v2[v28];
  if (v44 >> 62)
  {
    goto LABEL_68;
  }

  v45 = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
  if (v45)
  {
    goto LABEL_46;
  }

  while (1)
  {
    do
    {
LABEL_63:
      v44 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
      [v44 setInGroupSession:0];
      isa = sub_AB9740().super.isa;

      [v44 setStoreIDs:isa];

      v58 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
      [v58 setRequest:v44];
      v59 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_startItemIdentifier;
      v60 = v88;
      v61 = swift_beginAccess();
      v62 = *&v60[v59];
      if (!v62)
      {
        goto LABEL_66;
      }

      v63 = [objc_opt_self() kindWithVariants:7];
      v89 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE38);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF8600;
      *(inited + 32) = sub_AB92A0();
      *(inited + 40) = v65;
      *(inited + 48) = v63;
      *(inited + 56) = sub_AB92A0();
      *(inited + 64) = v66;
      v67 = objc_opt_self();
      v68 = v63;
      *(inited + 72) = [v67 kindWithSongKind:v68];
      *(inited + 80) = sub_AB92A0();
      *(inited + 88) = v69;
      v70 = objc_opt_self();
      v88 = v68;
      v71 = [v67 kindWithSongKind:v68];
      v72 = [v70 kindWithAlbumKind:v71];

      *(inited + 96) = v72;
      *(inited + 104) = sub_AB92A0();
      *(inited + 112) = v73;
      sub_13C80(0, &unk_DE8EA0);
      *(inited + 120) = static MPModelPlaylist.defaultMusicKind.getter();
      *(inited + 128) = sub_AB92A0();
      *(inited + 136) = v74;
      sub_13C80(0, &qword_DE9C10);
      *(inited + 144) = static MPModelPlaylistEntry.defaultMusicKind.getter();
      sub_97B14(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE40);
      swift_arrayDestroy();
      sub_13C80(0, &qword_DE7580);
      v75 = sub_AB8FD0().super.isa;

      v76 = [v89 kindWithRelationshipKinds:v75];

      __chkstk_darwin(v77);
      v85[2] = v62;
      v78 = objc_allocWithZone(MPIdentifierSet);
      v79 = swift_allocObject();
      *(v79 + 16) = sub_CCA84;
      *(v79 + 24) = v85;
      v95 = sub_57B84;
      v96 = v79;
      *&v92 = _NSConcreteStackBlock;
      *(&v92 + 1) = 1107296256;
      v93 = sub_41A314;
      v94 = &block_descriptor_23;
      v80 = _Block_copy(&v92);

      v81 = [v78 initWithModelKind:v76 block:v80];
      _Block_release(v80);

      LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

      if ((v78 & 1) == 0)
      {
        [v58 setStartItemIdentifiers:v81];

LABEL_66:
        v82 = PlaybackIntentDescriptor.intent.getter(v61);
        [v82 setTracklistToken:v58];

        v84 = PlaybackIntentDescriptor.intent.getter(v83);
        [v84 setTracklistSource:3];

        return;
      }

      __break(1u);
LABEL_68:
      v45 = sub_ABB060();
    }

    while (!v45);
LABEL_46:
    if (v45 < 1)
    {
      break;
    }

    v89 = v44 & 0xC000000000000001;

    v46 = 0;
    v47 = _swiftEmptyArrayStorage;
    do
    {
      if (v89)
      {
        v49 = sub_36088C(v46, v44);
      }

      else
      {
        v49 = *(v44 + 8 * v46 + 32);
      }

      v50 = v49;
      v51 = (*(&stru_B8.reserved2 + (swift_isaMask & *v49)))();
      if (v52)
      {
        v53 = v51;
        v54 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_6B0F0(0, *(v47 + 2) + 1, 1, v47);
        }

        v56 = *(v47 + 2);
        v55 = *(v47 + 3);
        if (v56 >= v55 >> 1)
        {
          v47 = sub_6B0F0((v55 > 1), v56 + 1, 1, v47);
        }

        *(v47 + 2) = v56 + 1;
        v48 = &v47[16 * v56];
        *(v48 + 4) = v53;
        *(v48 + 5) = v54;
      }

      ++v46;
    }

    while (v45 != v46);
LABEL_58:
  }

  __break(1u);
}

uint64_t sub_CC1F0(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_CCAC4;
  *(v5 + 24) = v4;
  v8[4] = sub_57B84;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_4522E8;
  v8[3] = &block_descriptor_9;
  v6 = _Block_copy(v8);

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

id sub_CC344()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerStoreItemMetadata;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_CC58C();
    v5 = [objc_allocWithZone(MPStoreModelGenericObjectBuilder) initWithRequestedPropertySet:v4];

    if (v5)
    {
      v6 = objc_opt_self();
      v7 = v3;
      v8 = [v6 activeAccount];
      v9 = [v5 modelObjectWithStoreItemMetadata:v7 userIdentity:v8];

      if (v9)
      {
        v10 = [v9 innermostModelObject];

        return v10;
      }
    }

    else
    {
      v5 = v3;
    }
  }

  v12 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerIdentifierSet;
  swift_beginAccess();
  v13 = *(v0 + v12);
  if (v13)
  {
    v14 = *&stru_158.segname[swift_isaMask & *v13];
    v15 = v13;
    v16 = v14();

    if (v16)
    {
      v17 = [objc_opt_self() sharedServerObjectDatabase];
      v18 = sub_CC58C();
      v19 = [v17 modelObjectMatchingIdentifierSet:v16 propertySet:v18];

      if (v19)
      {
        v20 = [v19 innermostModelObject];

        return v20;
      }
    }
  }

  return 0;
}

id sub_CC58C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8600;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v1;
  sub_13C80(0, &unk_DE8EB0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v4 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v5 = [v3 propertySetByCombiningWithPropertySet:v4];

  v6 = sub_10F414();
  v7 = [v5 propertySetByCombiningWithPropertySet:v6];

  *(inited + 48) = v7;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v8;
  sub_13C80(0, &qword_DE8E90);
  v9 = swift_getObjCClassFromMetadata();
  v10 = [v9 requiredLibraryNavigationHandlerProperties];
  v11 = [v9 requiredStoreNavigationHandlerProperties];
  v12 = [v10 propertySetByCombiningWithPropertySet:v11];

  v13 = sub_10F414();
  v14 = [v12 propertySetByCombiningWithPropertySet:v13];

  *(inited + 72) = v14;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v15;
  sub_13C80(0, &qword_DE8E78);
  v16 = swift_getObjCClassFromMetadata();
  v17 = [v16 requiredLibraryNavigationHandlerProperties];
  v18 = [v16 requiredStoreNavigationHandlerProperties];
  v19 = [v17 propertySetByCombiningWithPropertySet:v18];

  v20 = sub_10F414();
  v21 = [v19 propertySetByCombiningWithPropertySet:v20];

  *(inited + 96) = v21;
  *(inited + 104) = sub_AB92A0();
  *(inited + 112) = v22;
  sub_13C80(0, &unk_DE8EA0);
  v23 = swift_getObjCClassFromMetadata();
  v24 = [v23 requiredLibraryNavigationHandlerProperties];
  v25 = [v23 requiredStoreNavigationHandlerProperties];
  v26 = [v24 propertySetByCombiningWithPropertySet:v25];

  v27 = sub_10F414();
  v28 = [v26 propertySetByCombiningWithPropertySet:v27];

  *(inited + 120) = v28;
  *(inited + 128) = sub_AB92A0();
  *(inited + 136) = v29;
  sub_13C80(0, &qword_DE9C10);
  v30 = swift_getObjCClassFromMetadata();
  v31 = [v30 requiredLibraryNavigationHandlerProperties];
  v32 = [v30 requiredStoreNavigationHandlerProperties];
  v33 = [v31 propertySetByCombiningWithPropertySet:v32];

  v34 = sub_10F414();
  v35 = [v33 propertySetByCombiningWithPropertySet:v34];

  *(inited + 144) = v35;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80);
  swift_arrayDestroy();
  v36 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;
  sub_13C80(0, &qword_DEA550);
  v38 = sub_AB8FD0().super.isa;

  v39 = [v36 initWithProperties:isa relationships:v38];

  return v39;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall JSSplitWidgetViewController.populateViewModelKinds(for:)(Swift::OpaquePointer *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController);
  if (v3)
  {
    v4 = v3;
    v5 = JSSplitWidgetViewModel.leftViewModelKind.getter();
    if ((~v5 & 0xF000000000000007) != 0)
    {
      v6 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      rawValue = a1->_rawValue;
      sub_91ABC(v4, v6, isUniquelyReferenced_nonNull_native);
      sub_2D4D8(v6);
      a1->_rawValue = rawValue;
    }

    else
    {
    }
  }

  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController);
  if (v8)
  {
    v12 = v8;
    v9 = JSSplitWidgetViewModel.rightViewModelKind.getter();
    if ((~v9 & 0xF000000000000007) != 0)
    {
      v10 = v9;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v14 = a1->_rawValue;
      sub_91ABC(v12, v10, v11);
      sub_2D4D8(v10);
      a1->_rawValue = v14;
    }

    else
    {
    }
  }
}

Swift::Int LaunchURL.Resolver.PerformOption.hashValue.getter(char a1)
{
  sub_ABB5C0();
  sub_ABB5D0(a1 & 1);
  return sub_ABB610();
}

id JSSplitWidgetViewController.init(splitWidgetViewModel:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController] = 0;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_lastSeenViewBounds];
  *v4 = 0u;
  v4[1] = 0u;
  v5 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_contentSizeObserverMap;
  *&v1[v5] = sub_96FE0(_swiftEmptyArrayStorage);
  v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState] = 0x80;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_splitWidgetViewModel] = a1;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  v8 = JSSplitWidgetViewModel.viewModelKinds.getter();
  sub_CCE28(v8);

  v9 = sub_4D3C64();

  v10 = &v9[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  v11 = *&v9[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  v12 = *&v9[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8];
  v13 = v9[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10];
  *v10 = 0;
  *(v10 + 4) = 256;
  v10[10] = 0;
  sub_4DBD3C(v11, v12 | (v13 << 16));

  return v7;
}

void sub_CCE28(uint64_t a1)
{
  v77 = sub_AB7C10();
  v2 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_AB7C50();
  __chkstk_darwin(v75);
  v74 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v81 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController;
    v7 = (a1 + 32);
    v80 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController;
    v78 = &v85;
    v73 = (v2 + 8);
    v72 = (v4 + 8);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v11 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
    do
    {
      v13 = *v7++;
      v12 = v13;
      v14 = (v13 >> 58) & 0x3C | (v13 >> 1) & 3;
      if (v14 > 11)
      {
        if (v14 == 12)
        {
          v31 = type metadata accessor for JSParagraphViewController();
          v32 = objc_allocWithZone(v31);
          v33 = &v32[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_additionalContentInsets];
          *v33 = UIEdgeInsetsZero.top;
          v33[1] = left;
          v33[2] = bottom;
          v33[3] = right;
          *&v32[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController____lazy_storage___paragraphView] = 0;
          *&v32[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_paragraphViewModel] = v12 & 0xFFFFFFFFFFFFFF9;
          v91.receiver = v32;
          v91.super_class = v31;
          v34 = (v12 & 0xFFFFFFFFFFFFFF9);
          v35 = objc_msgSendSuper2(&v91, "initWithNibName:bundle:", 0, 0);
          v36 = qword_DE6D80;
          v23 = v35;
          if (v36 != -1)
          {
            swift_once();
          }

          v37 = qword_E0BF40;
          if (objc_getAssociatedObject(v23, qword_E0BF40))
          {
            sub_ABAB50();
            swift_unknownObjectRelease();
          }

          else
          {
            v89 = 0u;
            v90 = 0u;
          }

          v85 = v90;
          aBlock = v89;
          if (*(&v90 + 1))
          {
            type metadata accessor for VerticalStackViewController.Item();
            if (swift_dynamicCast())
            {
              v38 = v11;
              v39 = v83;
              goto LABEL_34;
            }

            v79 = v7;
          }

          else
          {
            v79 = v7;
            sub_12E1C(&aBlock, &unk_DE8E40);
          }

          v40 = type metadata accessor for VerticalStackViewController.Item();
          v41 = objc_allocWithZone(v40);
          v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
          v42 = &v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
          *v42 = UIEdgeInsetsZero.top;
          v42[1] = left;
          v42[2] = bottom;
          v42[3] = right;
          v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
          v43 = &v41[v11[8].vtable];
          *v43 = 0;
          *(v43 + 4) = 0;
          v43[10] = 1;
          *&v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
          *&v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
          v38 = v11;
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          v44 = &v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
          *v44 = 0u;
          v44[1] = 0u;
          v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
          v45 = &v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
          *v45 = 0;
          *(v45 + 1) = 0;
          v45[16] = 1;
          swift_unknownObjectWeakAssign();
          v88.receiver = v41;
          v88.super_class = v40;
          v39 = objc_msgSendSuper2(&v88, "init");
          objc_setAssociatedObject(v23, v37, v39, &dword_0 + 1);
          v7 = v79;
LABEL_34:
          v46 = &v39[v38[8].vtable];
          v47 = *(v46 + 4);
          v48 = v46[10];
          *v46 = 0;
          *(v46 + 4) = 256;
          v46[10] = 0;
          if ((v48 & 1) != 0 || (v47 & 0x100) == 0)
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v50 = Strong;
              if ((*(Strong + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) & 1) == 0)
              {
                *(Strong + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) = 1;
                sub_13C80(0, &qword_DE8ED0);
                v79 = sub_ABA150();
                v51 = swift_allocObject();
                *(v51 + 16) = v50;
                v86 = sub_A95F0;
                v87 = v51;
                *&aBlock = _NSConcreteStackBlock;
                *(&aBlock + 1) = 1107296256;
                *&v85 = sub_1B5EB4;
                *(&v85 + 1) = &block_descriptor_43;
                v70 = _Block_copy(&aBlock);
                v71 = v50;

                v52 = v74;
                sub_AB7C30();
                *&aBlock = _swiftEmptyArrayStorage;
                sub_8FFF0();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30);
                sub_D1010();
                v53 = v76;
                v54 = v77;
                sub_ABABB0();
                v55 = v70;
                v56 = v79;
                sub_ABA160();
                (*v73)(v53, v54);
                (*v72)(v52, v75);
                _Block_release(v55);

                v50 = v56;
              }
            }

            v57 = swift_unknownObjectWeakLoadStrong();
            if (v57 && (v58 = v57, v59 = [v57 contentScrollView], v58, v59))
            {
              v60 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v61 = objc_allocWithZone(ScrollViewContentOffsetObserver);
              v86 = sub_D1074;
              v87 = v60;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              *&v85 = sub_2DDCF4;
              *(&v85 + 1) = &block_descriptor_49;
              v62 = _Block_copy(&aBlock);
              v63 = v59;

              v64 = [v61 initWithScrollView:v63 changeHandler:v62];
              _Block_release(v62);

              v65 = *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver];
              *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = v64;

              *&aBlock = v63;
              swift_getKeyPath();
              swift_allocObject();
              swift_unknownObjectWeakInit();
              v66 = sub_AB3080();

              v67 = *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver];
              *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = v66;

              v11 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
            }

            else
            {
              v68 = *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver];
              *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;

              v69 = *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver];
              *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;

              v11 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
            }
          }

          else
          {

            v11 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
          }

LABEL_15:
          swift_getObjectType();
          v24 = swift_conformsToProtocol2();
          if (v24)
          {
            v25 = v23 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
            v26 = v24;
            ObjectType = swift_getObjectType();
            v28 = *(v26 + 16);
            v29 = v23;
            v28(0, ObjectType, v26);
            v11 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
          }

          v30 = v81;
          if (*(v82 + v81) && (v30 = v80, *(v82 + v80)))
          {
          }

          else
          {
            *(v82 + v30) = v23;
          }

          goto LABEL_5;
        }

        if (v14 == 38)
        {
          v17 = type metadata accessor for JSBiographyViewController();
          v18 = objc_allocWithZone(v17);
          v19 = OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_textDrawingCache;
          type metadata accessor for TextDrawing.Cache();
          swift_allocObject();
          v20 = (v12 & 0xFFFFFFFFFFFFFF9);
          *&v18[v19] = TextDrawing.Cache.init()();
          *&v18[OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController____lazy_storage___biographyView] = 0;
          *&v18[OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_viewModel] = v20;
          v92.receiver = v18;
          v92.super_class = v17;
          v11 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
          v21 = v20;
          v16 = objc_msgSendSuper2(&v92, "initWithNibName:bundle:", 0, 0);
          goto LABEL_14;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v22 = objc_allocWithZone(type metadata accessor for JSShelfViewController(0));
          v16 = JSShelfViewController.init(shelf:)((v12 & 0xFFFFFFFFFFFFFF9));
LABEL_14:
          v23 = v16;
          goto LABEL_15;
        }

        if (v14 == 4)
        {
          v15 = objc_allocWithZone(type metadata accessor for JSGridViewController());
          v16 = sub_4A50FC((v12 & 0xFFFFFFFFFFFFFF9));
          goto LABEL_14;
        }
      }

LABEL_5:
      --v6;
    }

    while (v6);
  }
}

Swift::Void __swiftcall JSSplitWidgetViewController.viewDidLoad()()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v2 = sub_CDA4C();
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = v2;
  [v4 addSubview:v5];

  [v5 setClipsToBounds:1];
  v6 = JSSplitWidgetViewModel.displayStyle.getter();
  v7 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView];
  v8 = v7[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_preferredDisplayStyle];
  if (v6)
  {
    v7[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_preferredDisplayStyle] = 1;
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_preferredDisplayStyle] = 0;
  if (v8)
  {
LABEL_6:
    [v7 setNeedsLayout];
  }

LABEL_7:
  v9 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController];
  if (v9)
  {
    v10 = v9;
    sub_CDAD0(v10);
  }

  v11 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController];
  if (v11)
  {
    v12 = v11;
    sub_CDAD0(v12);
  }

  sub_CE094();
}

id sub_CDA4C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SplitDisplayView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_CDAD0(void *a1)
{
  v3 = v1;
  v5 = [a1 parentViewController];
  if (!v5 || (v6 = v5, v5, v6 != v3))
  {
    v7 = [v3 childViewControllers];
    sub_13C80(0, &qword_DE7500);
    v8 = sub_AB9760();
    v42 = a1;
    __chkstk_darwin(v8);
    v40[2] = &v42;
    v9 = sub_1B3840(sub_72E3C, v40, v8);

    if ((v9 & 1) == 0)
    {
      [a1 willMoveToParentViewController:v3];
      [v3 addChildViewController:a1];
      [a1 didMoveToParentViewController:v3];
    }
  }

  if (![v3 isViewLoaded])
  {
    goto LABEL_29;
  }

  type metadata accessor for JSParagraphViewController();
  if (swift_dynamicCastClass())
  {
    v10 = a1;
    v11 = sub_37F240();
    v12 = sub_4CF7F0();
    v13 = [v12 font];

    v2 = UIView.maxReadableContentWidth(for:)();
  }

  else
  {
    v2 = 1.79769313e308;
  }

  v14 = sub_CDA4C();
  v15 = *&v3[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController];
  if (v15 && (ObjectType = swift_getObjectType(), (v17 = swift_conformsToProtocol2()) != 0) || (v15 = *&v3[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController]) != 0 && (ObjectType = swift_getObjectType(), (v17 = swift_conformsToProtocol2()) != 0))
  {
    v18 = *(v17 + 8);
    v19 = v17;
    v20 = v15;
    v21 = v18(ObjectType, v19);

    if (v21)
    {
      goto LABEL_16;
    }
  }

  if (qword_DE67D8 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v21 = qword_DEDE48;
LABEL_16:
    v22 = *&v14[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientColor];
    *&v14[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientColor] = v21;

    v23 = &v14[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem];
    if (!*&v14[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem])
    {
      break;
    }

    v23 = &v14[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem];
    if (!*&v14[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem])
    {
      v24 = [a1 view];
      if (!v24)
      {
        goto LABEL_42;
      }

      v25 = &OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem;
      goto LABEL_22;
    }

LABEL_23:
    v30 = v3[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState];
    if (v30 != 128)
    {
      if (v30 >> 6)
      {
        if (v30 >> 6 != 1)
        {
          [a1 beginAppearanceTransition:1 animated:0];
          [a1 endAppearanceTransition];
        }
      }

      else
      {
        [a1 beginAppearanceTransition:1 animated:v30 & 1];
      }
    }

LABEL_29:
    v31 = [a1 contentScrollView];
    if (v31)
    {
      v42 = v31;
      v32 = v31;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = sub_AB3080();

      v14 = v33;
    }

    else
    {
      v42 = a1;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = sub_AB3080();

      v14 = v34;
    }

    v35 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_contentSizeObserverMap;
    swift_beginAccess();
    v36 = *&v3[v35];
    if ((v36 & 0xC000000000000001) == 0)
    {
      goto LABEL_38;
    }

    if (v36 < 0)
    {
      v37 = *&v3[v35];
    }

    else
    {
      v37 = v36 & 0xFFFFFFFFFFFFFF8;
    }

    v38 = sub_ABAFA0();
    if (!__OFADD__(v38, 1))
    {
      *&v3[v35] = sub_426A9C(v37, v38 + 1);
LABEL_38:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *&v3[v35];
      sub_92FE8(v14, a1, isUniquelyReferenced_nonNull_native);
      *&v3[v35] = v41;
      swift_endAccess();

      return;
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  v24 = [a1 view];
  if (v24)
  {
    v25 = &OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem;
LABEL_22:
    v27 = *v23;
    v26 = *(v23 + 1);
    v28 = *(v23 + 2);
    *v23 = v24;
    *(v23 + 1) = 0;
    *(v23 + 2) = v2;
    v29 = v24;
    sub_CFFE8(v27, v26, v28, v25);

    goto LABEL_23;
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_CE094()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 traitCollection];
  [v3 displayScale];
  v4 = sub_CDA4C();
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v83 = ObjectType;
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v96.origin.x = v8;
    v96.origin.y = v10;
    v96.size.width = v12;
    v96.size.height = v14;
    Width = CGRectGetWidth(v96);
    *&v90 = Width;
    *&v87 = 0x408F400000000000;
    sub_471A4();
    v16 = sub_AB38F0();
    v17 = [v0 childViewControllers];
    v18 = sub_13C80(0, &qword_DE7500);
    v19 = sub_AB9760();

    v84 = v3;
    v85 = v4;
    if (v19 >> 62)
    {
      v20 = sub_ABB060();
      if (v20)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      if (v20)
      {
LABEL_4:
        if (v20 >= 1)
        {
          v21 = 0;
          v22 = v19 & 0xC000000000000001;
          v86 = v20;
          while (1)
          {
            if (v22)
            {
              v24 = sub_35F8D4(v21, v19);
              if ((v16 & 1) == 0)
              {
                goto LABEL_7;
              }
            }

            else
            {
              v24 = *(v19 + 8 * v21 + 32);
              if ((v16 & 1) == 0)
              {
                goto LABEL_7;
              }
            }

            *&v87 = v24;
            v25 = v24;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE98);
            if (swift_dynamicCast())
            {
              v26 = v22;
              v27 = v19;
              v28 = v16;
              v29 = v1;
              v30 = v18;
              v32 = *(&v91 + 1);
              v31 = v92;
              __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
              v33 = (*(v31 + 8))(v32, v31);
              __swift_destroy_boxed_opaque_existential_0(&v90);
              if (v33)
              {
                v23 = [objc_opt_self() traitCollectionWithHorizontalSizeClass:1];
              }

              else
              {
                v23 = 0;
              }

              v18 = v30;
              v1 = v29;
              v16 = v28;
              v19 = v27;
              v22 = v26;
              v20 = v86;
              goto LABEL_8;
            }

            v92 = 0;
            v90 = 0u;
            v91 = 0u;
            sub_12E1C(&v90, &qword_DEDE90);
LABEL_7:
            v23 = 0;
LABEL_8:
            ++v21;
            [v1 setOverrideTraitCollection:v23 forChildViewController:v24];

            if (v20 == v21)
            {
              goto LABEL_19;
            }
          }
        }

        __break(1u);
        goto LABEL_60;
      }
    }

LABEL_19:
    v82 = v18;

    v34 = &v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController];
    v35 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController];
    v36 = v35;
    sub_CFC44(v35);
    v38 = v37;
    v40 = v39;

    if (v40 & 1) != 0 || (v41 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController], v42 = v41, sub_CFC44(v41), v44 = v43, v46 = v45, v42, (v46))
    {
      v47 = v85;
      if (*v34)
      {
        v48 = *v34;
        [v48 preferredContentSize];
        v49 = [v48 contentScrollView];
        if (v49)
        {
          v50 = v49;
          [v49 contentSize];
          [v50 contentInset];
          [v50 contentInset];
        }

        else
        {
        }
      }

      sub_AB3A10();
      v51 = v53;
      v54 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController];
      if (v54)
      {
        v55 = v54;
        [v55 preferredContentSize];
        v56 = [v55 contentScrollView];
        if (v56)
        {
          v57 = v56;
          [v56 contentSize];
          [v57 contentInset];
          [v57 contentInset];
        }

        else
        {
        }
      }

      sub_AB3A10();
      v52 = v58;
    }

    else
    {
      v51 = v38;
      v52 = v44;
      v47 = v85;
    }

    v60 = sub_CFF44(&v90);
    if (*v59)
    {
      *(v59 + 8) = v51;
    }

    v60(&v90, 0);
    v62 = sub_D0154(&v90);
    if (*v61)
    {
      *(v61 + 8) = v52;
    }

    v62(&v90, 0);
    v63 = v52 + v51;
    if (v51 > v52)
    {
      v64 = v51;
    }

    else
    {
      v64 = v52;
    }

    if (v16)
    {
      v65 = v64;
    }

    else
    {
      v65 = v52 + v51;
    }

    v95.receiver = v1;
    v95.super_class = v83;
    objc_msgSendSuper2(&v95, "preferredContentSize", v63, v82);
    v68 = v67 == v65 && v66 == Width;
    v94.receiver = v1;
    v94.super_class = v83;
    objc_msgSendSuper2(&v94, "preferredContentSize");
    v70 = v69;
    v72 = v71;
    v93.receiver = v1;
    v93.super_class = v83;
    objc_msgSendSuper2(&v93, "setPreferredContentSize:", Width, v65);
    sub_CF4D8(v70, v72);
    v73 = JSSplitWidgetViewModel.displayStyle.getter();
    v74 = &v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController];
    if ((v73 & 1) == 0)
    {
      v74 = v34;
    }

    v75 = *v74;
    if (*v74 && (v76 = v75, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE98), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v88 + 1))
      {
        sub_70DF8(&v87, &v90);
        v77 = *(&v91 + 1);
        v78 = v92;
        __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
        v79 = (*(v78 + 16))(v77, v78);
        if ((v80 & 1) == 0 && *&v47[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_compactNumberOfGridColumns] != v79)
        {
          *&v47[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_compactNumberOfGridColumns] = v79;
          [v47 setNeedsLayout];
          __swift_destroy_boxed_opaque_existential_0(&v90);
          goto LABEL_53;
        }

        __swift_destroy_boxed_opaque_existential_0(&v90);
        if (!v68)
        {
LABEL_52:
          v76 = v75;
LABEL_53:
          v81 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView];
          [v81 setNeedsLayout];

LABEL_57:
          return;
        }

LABEL_56:

        v47 = v75;
        goto LABEL_57;
      }
    }

    else
    {
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    sub_12E1C(&v87, &qword_DEDE90);
    if (!v68)
    {
      goto LABEL_52;
    }

    goto LABEL_56;
  }

LABEL_60:
  __break(1u);
}

Swift::Void __swiftcall JSSplitWidgetViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v38, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = sub_CDA4C();
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = &v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_lastSeenViewBounds];
  *&v34 = CGRectGetWidth(*&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_lastSeenViewBounds]);
  v39.origin.x = v5;
  v39.origin.y = v7;
  v39.size.width = v9;
  v39.size.height = v11;
  Width = CGRectGetWidth(v39);
  if ((sub_AB38D0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView];
  [v14 bounds];
  *&v34 = CGRectGetWidth(v40);
  Width = 1000.0;
  sub_471A4();
  v15 = sub_AB38F0();

  v16 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController];
  if (v16 && (Width = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController], sub_13C80(0, &qword_DE7500), v17 = v16, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE98), (swift_dynamicCast() & 1) != 0))
  {
    v18 = *(&v35 + 1);
    if (*(&v35 + 1))
    {
      v19 = v36;
      __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
      (*(v19 + 32))((v15 ^ 1) & 1, v18, v19, v9, v11);
      __swift_destroy_boxed_opaque_existential_0(&v34);
      goto LABEL_9;
    }
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  sub_12E1C(&v34, &qword_DEDE90);
LABEL_9:
  v20 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController];
  if (v20 && (Width = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController], sub_13C80(0, &qword_DE7500), v21 = v20, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE98), (swift_dynamicCast() & 1) != 0))
  {
    v22 = *(&v35 + 1);
    if (*(&v35 + 1))
    {
      v23 = v36;
      __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
      (*(v23 + 32))((v15 ^ 1) & 1, v22, v23, v9, v11);
      __swift_destroy_boxed_opaque_existential_0(&v34);
      goto LABEL_15;
    }
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  sub_12E1C(&v34, &qword_DEDE90);
LABEL_15:
  v24 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController;
  v25 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController];
  if (v25 && (ObjectType = swift_getObjectType(), (v27 = swift_conformsToProtocol2()) != 0) || (v25 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController]) != 0 && (ObjectType = swift_getObjectType(), (v27 = swift_conformsToProtocol2()) != 0))
  {
    v28 = *(v27 + 8);
    v29 = v27;
    v30 = v25;
    v31 = v28(ObjectType, v29);

    if (v31)
    {
      v32 = *&v1[v24];
      if (v32)
      {
        [v32 setViewBackgroundColor:v31];
      }

      v33 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController];
      if (v33)
      {
        [v33 setViewBackgroundColor:v31];
      }
    }
  }

  *v13 = v5;
  v13[1] = v7;
  v13[2] = v9;
  v13[3] = v11;
  sub_CE094();
}

void *JSSplitWidgetViewController.verticalStackItemPreferredBackgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController);
  if (v1)
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
LABEL_5:
      v4 = *(v3 + 8);
      v5 = v3;
      v6 = v1;
      v1 = v4(ObjectType, v5);

      return v1;
    }
  }

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController);
  if (v1)
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (!v3)
    {
      return 0;
    }

    goto LABEL_5;
  }

  return v1;
}

Swift::Void __swiftcall JSSplitWidgetViewController.music_viewInheritedLayoutInsetsDidChange()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "music_viewInheritedLayoutInsetsDidChange");
  sub_CE094();
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall JSSplitWidgetViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", isa);
  v3 = [v1 traitCollection];
  if (isa)
  {
    v4 = [(objc_class *)isa horizontalSizeClass];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 horizontalSizeClass];
  if (isa && v4 == v5)
  {
    goto LABEL_8;
  }

  sub_CE094();
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 setNeedsLayout];

  if (isa)
  {
LABEL_8:
    v8 = [(objc_class *)isa userInterfaceStyle];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 userInterfaceStyle];
  if (isa && v8 == v9)
  {
    v10 = v3;
  }

  else
  {
    v10 = sub_CDA4C();
    v11 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView;
    v12 = *&v10[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView];
    if (v12)
    {
      [v12 removeFromSuperview];
      v13 = *&v10[v11];
    }

    else
    {
      v13 = 0;
    }

    *&v10[v11] = 0;

    [v10 setNeedsLayout];
  }
}

void JSSplitWidgetViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_D0D24;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_CF24C;
  v9[3] = &block_descriptor_24;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_CF19C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_CE094();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 view];

    if (v4)
    {
      [v4 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_CF24C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id JSSplitWidgetViewController.preferredContentSize.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "preferredContentSize");
}

void JSSplitWidgetViewController.preferredContentSize.setter(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v11.receiver = v2;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "preferredContentSize");
  v7 = v6;
  v9 = v8;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "setPreferredContentSize:", a1, a2);
  sub_CF4D8(v7, v9);
}

void sub_CF4D8(double a1, double a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  type metadata accessor for CGSize(0);
  v15 = a1;
  v16 = a2;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "preferredContentSize");
  v12 = v7;
  v13 = v8;
  if (sub_AB38D0())
  {
    v9 = [v3 view];
    if (v9)
    {
      v10 = v9;
      [v9 setNeedsLayout];

      v11 = sub_CDA4C();
      [v11 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void (*JSSplitWidgetViewController.preferredContentSize.modify(uint64_t *a1))(double **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 96) = v1;
  ObjectType = swift_getObjectType();
  v4[6].super_class = ObjectType;
  v4[1].receiver = v1;
  v4[1].super_class = ObjectType;
  objc_msgSendSuper2(v4 + 1, "preferredContentSize");
  v4->receiver = v6;
  v4->super_class = v7;
  return sub_CF654;
}

void sub_CF654(double **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[12];
  v6 = (*a1)[13];
  if (a2)
  {
    v7 = 6;
  }

  else
  {
    v7 = 10;
  }

  v8 = 8;
  if (a2)
  {
    v8 = 4;
  }

  v9 = 9;
  if (a2)
  {
    v9 = 5;
    v10 = 7;
  }

  else
  {
    v10 = 11;
  }

  v2[v8] = v5;
  v2[v9] = v6;
  objc_msgSendSuper2(&v2[v8], "preferredContentSize");
  v12 = v11;
  v14 = v13;
  v2[v7] = v5;
  v2[v10] = v6;
  objc_msgSendSuper2(&v2[v7], "setPreferredContentSize:", v3, v4);
  sub_CF4D8(v12, v14);

  free(v2);
}

Swift::Void __swiftcall JSSplitWidgetViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewWillAppear:", a1);
  sub_CF788(a1);
}

void sub_CF788(int a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState);
  *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState) = a1;
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      if ((a1 & 0xC0) != 0x40)
      {
        goto LABEL_12;
      }

LABEL_6:
      if (((v3 ^ a1) & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    if (v3 == 128)
    {
      if (a1 == 128)
      {
        return;
      }
    }

    else if (a1 == 129)
    {
      return;
    }
  }

  else if (a1 <= 0x3Fu)
  {
    goto LABEL_6;
  }

LABEL_12:
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController);
  if (v4)
  {
    v5 = a1;
    v6 = v4;
    sub_69014(v3, v5, v7, v8);
  }

  v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController);
  if (v9)
  {
    v10 = *(v1 + v2);
    v12 = v9;
    sub_69014(v3, v10, v12, v11);
  }
}

Swift::Void __swiftcall JSSplitWidgetViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = a1;
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewWillDisappear:", v2);
  sub_CF788(v2 | 0x40);
}

void sub_CFA08(char a1, SEL *a2, int a3)
{
  v7.receiver = v3;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, *a2, a1 & 1);
  sub_CF788(a3);
}

void sub_CFA74(void *a1, uint64_t a2, uint64_t a3, const char **a4, int a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  sub_CF788(a5);
}

void *sub_CFAE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController);
  v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController);
  v10 = v1;
  v2 = v1;
  v3 = v9;
  for (i = 0; i != 2; ++i)
  {
    v5 = v8[i + 4];
    if (v5)
    {
      v6 = v5;
      sub_AB9730();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDF28);
  swift_arrayDestroy();
  return &_swiftEmptyArrayStorage;
}

void sub_CFBF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_CE094();
  }
}

id sub_CFC44(void *a1)
{
  if (!a1 || (v17[0] = a1, sub_13C80(0, &qword_DE7500), v3 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE98), (swift_dynamicCast() & 1) == 0))
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_7;
  }

  if (!*(&v15 + 1))
  {
LABEL_7:
    sub_12E1C(&v14, &qword_DEDE90);
    return 0;
  }

  sub_70DF8(&v14, v17);
  v4 = v18;
  v5 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v6 = [v1 traitCollection];
  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];
    v10 = v9;
    v12 = v11;

    v13 = (*(v5 + 24))(v6, v4, v5, v10, v12);
    __swift_destroy_boxed_opaque_existential_0(v17);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_CFEC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  sub_13C80(0, &qword_DFA720);
  v6 = sub_ABA790();
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

void (*sub_CFF44(uint64_t *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = (v1 + v4);
  v6 = *(v5 + 2);
  v7 = *v5;
  *v3 = *v5;
  *(v3 + 16) = v6;
  v8 = v7;
  return sub_CFFDC;
}

void sub_CFFE8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v6 = &v4[*a4];
  v7 = *v6;
  if (!a1)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!v7 || (v11 = v6[1], v12 = v6[2], sub_13C80(0, &qword_DFA720), v13 = v7, v14 = sub_ABA790(), v13, (v14 & 1) == 0) || (v11 == *&a2 ? (v15 = v12 == *&a3) : (v15 = 0), !v15))
  {
    v16 = a1;
    if ([v16 isDescendantOfView:v5])
    {
      [v16 removeFromSuperview];
    }

LABEL_12:
    [v5 setNeedsLayout];
  }

LABEL_13:
  if (*v6)
  {
    v17 = *v6;
    if (([v17 isDescendantOfView:v5] & 1) == 0)
    {
      [v5 addSubview:v17];
    }
  }
}

void (*sub_D0154(uint64_t *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = (v1 + v4);
  v6 = *(v5 + 2);
  v7 = *v5;
  *v3 = *v5;
  *(v3 + 16) = v6;
  v8 = v7;
  return sub_D01EC;
}

void sub_D01F8(void ***a1, char a2, void *a3)
{
  v5 = *a1;
  v6 = (*a1)[2];
  v7 = (*a1)[4] + (*a1)[3];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v11 = **a1;
  *v7 = v11;
  *(v7 + 2) = v6;
  v12 = v11;
  v13 = v12;
  if (a2)
  {
    v14 = v12;
    sub_CFFE8(v8, v9, v10, a3);

    v8 = *v5;
  }

  else
  {
    sub_CFFE8(v8, v9, v10, a3);
  }

  free(v5);
}

void sub_D02C8()
{
  v1 = v0;
  v68.receiver = v0;
  v68.super_class = type metadata accessor for SplitDisplayView();
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v2 = [v0 traitCollection];
  [v0 bounds];
  v67 = v3;
  MaxY = v4;
  v7 = v6;
  v9 = v8;
  [v0 music_inheritedLayoutInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v0 bounds];
  *&v71[0] = CGRectGetWidth(v72);
  v70 = 0x408F400000000000;
  sub_471A4();
  if ((sub_AB38F0() & 1) == 0)
  {
    v40 = v11;
    v41 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem];
    if (v41)
    {
      v42 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem + 8];
      v43 = v41;
      [v43 music_setLayoutInsets:{v40, v13, v15, v17}];
      [v43 setFrame:{v67, MaxY, v7, v42}];
      [v43 frame];
      MaxY = CGRectGetMaxY(v76);
      [v43 frame];
      Height = CGRectGetHeight(v77);

      v9 = v9 - Height;
    }

    v45 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem];
    if (v45)
    {
      v46 = v45;
      [v46 music_setLayoutInsets:{v40, v13, v15, v17}];
      [v46 setFrame:{v67, MaxY, v7, v9}];
    }

    v47 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView];
    if (!v47)
    {
      goto LABEL_25;
    }

    v39 = v47;
    if ([v39 isDescendantOfView:v1])
    {
      [v39 removeFromSuperview];
    }

    goto LABEL_24;
  }

  v62 = v13;
  MaxX = UIEdgeInsetsInsetRect(v67, MaxY, v7, v9, v11, v13);
  v63 = v19;
  v64 = v18;
  v21 = v20;
  v22 = [v0 traitCollection];
  v23 = sub_45B2C4(v22, v67, MaxY, v7, v9);

  v24 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_compactNumberOfGridColumns];
  if (__OFSUB__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    if (v23 - v24 >= v24)
    {
      v25 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_compactNumberOfGridColumns];
    }

    else
    {
      v25 = v23 - v24;
    }

    if (v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_preferredDisplayStyle] != 1 || !__OFSUB__(v23, v25))
    {
      v26 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem];
      if (v26)
      {
        v58 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem + 16];
        rect = MaxY;
        left = UIEdgeInsetsZero.left;
        v61 = v17;
        v59 = v11;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
        v30 = v26;
        [v30 music_setLayoutInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
        sub_45B2C4(v2, v67, rect, v7, v9);
        HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, v69, v7);
        v60 = v15;
        [v2 displayScale];
        v73.origin.x = v67;
        v73.origin.y = rect;
        v73.size.width = v7;
        v73.size.height = v9;
        CGRectGetWidth(v73);
        v17 = v61;
        sub_AB3A00();
        HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1u, 1u, 0, &v70, v7);
        [v2 displayScale];
        MaxY = rect;
        sub_AB3A00();
        if (v58 < v31)
        {
          v31 = v58;
        }

        [v30 setFrame:{MaxX, v64, v31 - v61, v63}];
        [v30 frame];
        MaxX = CGRectGetMaxX(v74);
        v75.origin.x = v67;
        v75.origin.y = rect;
        v75.size.width = v7;
        v75.size.height = v9;
        v32 = CGRectGetWidth(v75) - v61;
        [v30 frame];
        v34 = v33;

        v21 = v32 - v34;
        v11 = v59;
        v15 = v60;
      }

      v35 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem];
      if (!v35)
      {
        goto LABEL_25;
      }

      v36 = v35;
      [v36 music_setLayoutInsets:{v11, v62, v15, v17}];
      [v36 setFrame:{MaxX, v64, v21, v63}];
      v37 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView;
      v38 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView];
      if (v38)
      {
        v39 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_AF7C50;
        v49 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientColor;
        *(v48 + 32) = [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientColor] colorWithAlphaComponent:1.0];
        *(v48 + 40) = [*&v1[v49] colorWithAlphaComponent:0.0];
        static Gradient.horizontal(colors:locations:interpolations:)(v48, 0, 0, v71);

        v50 = objc_allocWithZone(type metadata accessor for Gradient.View());
        v51 = Gradient.View.init(configuration:)(v71);
        v52 = *&v1[v37];
        *&v1[v37] = v51;
        v39 = v51;

        v38 = 0;
      }

      v53 = v38;
      [v1 insertSubview:v39 above:v36];
      [v36 frame];
      MinX = CGRectGetMinX(v78);
      v79.origin.x = v67;
      v79.origin.y = MaxY;
      v79.size.width = v7;
      v79.size.height = v9;
      MinY = CGRectGetMinY(v79);
      [v1 music_inheritedLayoutInsets];
      v57 = v56;
      v80.origin.x = v67;
      v80.origin.y = MaxY;
      v80.size.width = v7;
      v80.size.height = v9;
      [v39 setFrame:{MinX, MinY, v57, CGRectGetHeight(v80)}];

      v2 = v39;
LABEL_24:

      v2 = v39;
LABEL_25:

      return;
    }
  }

  __break(1u);
}

id sub_D09B4()
{
  if (qword_DE6C58 != -1)
  {
    swift_once();
  }

  v1 = qword_E71898;
  qword_DEDE48 = qword_E71898;

  return v1;
}

id sub_D0A18(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem];
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem];
  *v10 = 0;
  v10[1] = 0;
  v10[2] = 0;
  v4[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_preferredDisplayStyle] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_compactNumberOfGridColumns] = 2;
  v11 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientColor;
  if (qword_DE67D8 != -1)
  {
    swift_once();
  }

  v12 = qword_DEDE48;
  *&v4[v11] = qword_DEDE48;
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SplitDisplayView();
  v13 = v12;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
}

id sub_D0B88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplitDisplayView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s16MusicApplication27JSSplitWidgetViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_lastSeenViewBounds);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_contentSizeObserverMap;
  *(v0 + v2) = sub_96FE0(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState) = 0x80;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_D0CEC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_D0D48()
{
  result = qword_DEDEA8;
  if (!qword_DEDEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDEA8);
  }

  return result;
}

unint64_t sub_D0E20()
{
  result = qword_DEDF20;
  if (!qword_DEDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDF20);
  }

  return result;
}

id sub_D0E74(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem];
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem];
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_preferredDisplayStyle] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_compactNumberOfGridColumns] = 2;
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientColor;
  if (qword_DE67D8 != -1)
  {
    swift_once();
  }

  v6 = qword_DEDE48;
  *&v1[v5] = qword_DEDE48;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SplitDisplayView();
  v7 = v6;
  return objc_msgSendSuper2(&v9, "initWithCoder:", a1);
}

id sub_D0F6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredContentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_D0FD8()
{

  return swift_deallocObject();
}

unint64_t sub_D1010()
{
  result = qword_DF06D0;
  if (!qword_DF06D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DE9C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF06D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication33ContainerDetailPlaylistPropertiesV06EditedE11UserArtworkOSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_D1104(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_D114C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_D11C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2EBF88(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_808B0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_D1224@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2EBF88(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;

    sub_9ACA0(v8, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void *sub_D12E0(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      v9 = a3();
      if (v10)
      {
        v7 = *(*(a2 + 56) + 8 * v9);
        v11 = v7;
        return v7;
      }
    }

    return 0;
  }

  v5 = a1;
  v6 = sub_ABAFB0();

  if (!v6)
  {
    return 0;
  }

  sub_13C80(0, a4);
  swift_unknownObjectRetain();
  swift_dynamicCast();
  v7 = v13;
  swift_unknownObjectRelease();
  return v7;
}

void *sub_D13C8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      v6 = sub_2ECAB0(a1);
      if (v7)
      {
        v5 = *(*(a2 + 56) + 8 * v6);
        v8 = v5;
        return v5;
      }
    }

    return 0;
  }

  v3 = a1;
  v4 = sub_ABAFB0();

  if (!v4)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02CC0);
  swift_dynamicCast();
  v5 = v10;
  swift_unknownObjectRelease();
  return v5;
}

void *sub_D1498(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      v6 = sub_2EC3D0(a1);
      if (v7)
      {
        v5 = *(*(a2 + 56) + 8 * v6);
        v8 = v5;
        return v5;
      }
    }

    return 0;
  }

  v3 = a1;
  v4 = sub_ABAFB0();

  if (!v4)
  {
    return 0;
  }

  sub_AB2FA0();
  swift_unknownObjectRetain();
  swift_dynamicCast();
  v5 = v10;
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_D1560()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = MPModelRelationshipPlaylistCurator;
    v3 = v1;
    if ([v3 hasLoadedValueForKey:v2])
    {
      v4 = [v3 curator];
      if (v4)
      {
        v5 = v4;
        if ([v4 hasLoadedValueForKey:MPModelPropertyCuratorName])
        {
          v6 = v5;
          v7 = [v6 name];
          if (v7)
          {
            v8 = v7;
            v9 = sub_AB92A0();

            return v9;
          }
        }
      }
    }

    if ([v3 hasLoadedValueForKey:MPModelPropertyPlaylistIsOwner])
    {
      v11 = [v3 ownerName];
      if (v11)
      {
        v12 = v11;
        v13 = sub_AB92A0();

        return v13;
      }
    }
  }

  return 0;
}

uint64_t sub_D16B0()
{
  result = sub_D1CF8();
  if (!v2)
  {
    v4 = *(v0 + 56);
    if (!v4 || ![*(v0 + 56) hasLoadedValueForKey:MPModelPropertyPlaylistDescriptionText])
    {
      return 0;
    }

    result = [v4 descriptionText];
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = sub_AB92A0();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      return v6;
    }

LABEL_5:

    return 0;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_D1780()
{
  v1 = *(v0 + 48);
  v2 = sub_AB92A0();
  if (!*(v1 + 16) || (v4 = sub_2EBF88(v2, v3), (v5 & 1) == 0))
  {
    v8 = 0u;
    v9 = 0u;

    goto LABEL_8;
  }

  sub_808B0(*(v1 + 56) + 32 * v4, &v8);

  if (!*(&v9 + 1))
  {
LABEL_8:
    sub_12E1C(&v8, &unk_DE8E40);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_D1854()
{
  if (*(v0 + 16))
  {

    v1 = sub_AB43F0();

    return v1;
  }

  v3 = *(v0 + 56);
  if (v3)
  {
    v4 = MPModelPropertyPlaylistVisiblePlaylist;
    v5 = v3;
    if ([v5 hasLoadedValueForKey:v4])
    {
      v6 = [v5 isVisiblePlaylist];

      return v6;
    }
  }

  return 2;
}

uint64_t sub_D18F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *(v1 + 56);
  if (v6 && [*(v1 + 56) hasLoadedValueForKey:MPModelPropertyPlaylistLastModifiedDateComponents])
  {
    v7 = [v6 lastModifiedDateComponents];
    if (v7)
    {
      v8 = v7;
      sub_AB2D70();

      v9 = sub_AB2DC0();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = sub_AB2DC0();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return sub_D321C(v5, a1);
  }

  else
  {
    v10 = sub_AB2DC0();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

void sub_D1A9C(uint64_t a1@<X8>)
{
  v3 = sub_D1CF8();
  if (!v4)
  {
    v17 = *(v1 + 56);
    v12 = 0uLL;
    if (!v17)
    {
      v11 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      goto LABEL_8;
    }

    v5 = MPModelPropertyPlaylistCoverArtworkRecipe;
    v6 = v17;
    if (([v6 hasLoadedValueForKey:v5] & 1) == 0)
    {

      v17 = 0;
      v11 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v12 = 0uLL;
      goto LABEL_8;
    }

    v7 = [v6 coverArtworkRecipe];
    v8 = sub_AB92A0();
    v10 = v9;

    v4 = v10;
    v3 = v8;
  }

  PlaylistCovers.Recipe.init(_:)(v3, v4, v18);
  v12 = v18[0];
  v11 = v18[1];
  v13 = v18[2];
  v14 = v18[3];
  v15 = v18[4];
  v16 = v18[5];
  v17 = v19;
LABEL_8:
  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  *(a1 + 80) = v16;
  *(a1 + 96) = v17;
}

uint64_t sub_D1CF8()
{
  v1 = *(v0 + 48);
  v2 = sub_AB92A0();
  if (!*(v1 + 16) || (v4 = sub_2EBF88(v2, v3), (v5 & 1) == 0))
  {
    v8 = 0u;
    v9 = 0u;

    goto LABEL_9;
  }

  sub_808B0(*(v1 + 56) + 32 * v4, &v8);

  if (!*(&v9 + 1))
  {
LABEL_9:
    sub_12E1C(&v8, &unk_DE8E40);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

id sub_D1DC8()
{
  v1 = *(v0 + 64);
  if (v1 >= 2)
  {
    return [objc_opt_self() staticArtworkCatalogWithImage:v1];
  }

  v2 = *(v0 + 56);
  if (!v2)
  {
    return 0;
  }

  v3 = MPModelPropertyPlaylistArtwork;
  v4 = v2;
  if (![v4 hasLoadedValueForKey:v3])
  {
    if ([v4 hasLoadedValueForKey:MPModelPropertyPlaylistTracksTiledArtwork])
    {
      v17 = [v4 tracksTiledArtworkCatalogWithRows:2 columns:2];
LABEL_17:
      v18 = v17;

      return v18;
    }

    return 0;
  }

  v5 = sub_D1CF8();
  if (!v6)
  {
LABEL_16:
    v17 = MPModelPlaylist.preferredArtworkCatalog.getter();
    goto LABEL_17;
  }

  v7 = v6;
  v8 = v5;
  v9 = sub_D1FC0();
  if (!v10)
  {
LABEL_14:

    goto LABEL_16;
  }

  v11 = v9;
  v12 = v10;
  v13 = MPModelPropertyPlaylistUserEditableComponents;
  v14 = v4;
  if (([v14 hasLoadedValueForKey:v13] & 1) == 0)
  {

    goto LABEL_16;
  }

  v15 = [v14 userEditableComponents];

  if ((v15 & 2) == 0)
  {

    goto LABEL_14;
  }

  type metadata accessor for PlaylistCovers.ArtworkToken();
  v19 = PlaylistCovers.ArtworkToken.__allocating_init(rawJSON:playlistTitle:)(v8, v7, v11, v12);
  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = v19;
  v21 = [objc_allocWithZone(MPArtworkCatalog) initWithToken:v19 dataSource:*PlaylistCovers.ArtworkDataSource.shared.unsafeMutableAddressor()];

  return v21;
}

uint64_t sub_D1FC0()
{
  result = sub_D1CF8();
  if (!v2)
  {
LABEL_6:
    v4 = *(v0 + 56);
    if (!v4 || ![v4 hasLoadedValueForKey:MPModelPropertyPlaylistName])
    {
      return 0;
    }

    result = [v4 name];
    if (result)
    {
      v5 = result;
      v6 = sub_AB92A0();

      return v6;
    }

    return result;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    goto LABEL_6;
  }

  return result;
}

BOOL sub_D2078(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_13C80(0, &qword_DFA720);
      return sub_ABA790() & 1;
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_D20E8()
{
  v1 = *(v0 + 56);
  v2 = xmmword_AF82C0;
  v3 = 0uLL;
  if (v1)
  {
    sub_13C80(0, &unk_DE8EA0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = v1;
    v6 = [ObjCClassFromMetadata requiredLibraryAddStatusObservationProperties];
    v7 = [v5 hasLoadedValuesForPropertySet:v6];

    if (v7)
    {
      v8 = [v5 libraryAddStatusObserverConfiguration];

      v9 = v8 & 0x100000000;
      v10 = vdupq_n_s64(v8);
      v3 = vandq_s8(v10, xmmword_AFC580);
      v2 = vandq_s8(v10, xmmword_AFC590);
    }

    else
    {

      v9 = 0;
      v3 = 0uLL;
      v2 = xmmword_AF82C0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = vorrq_s8(v2, v3);
  return *&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v9;
}

id sub_D2204()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    sub_13C80(0, &unk_DE8EA0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = v1;
    v4 = [ObjCClassFromMetadata requiredKeepLocalStatusObservationProperties];
    v5 = [v3 hasLoadedValuesForPropertySet:v4];

    if (v5)
    {
      v6 = [v3 newKeepLocalStatusObserverConfiguration];

      return v6;
    }
  }

  v8 = objc_allocWithZone(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration);

  return [v8 init];
}

void *MetricsEvent.ComponentRender.componentEndTime.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_D2318()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  v2 = MPModelPropertyPlaylistIsFavorite;
  v3 = v1;
  if ([v3 hasLoadedValueForKey:v2])
  {
    v4 = [v3 isFavorite];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_D23C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_D24AC(v11, v13) & 1;
}

uint64_t sub_D2448()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E70DC0);
  __swift_project_value_buffer(v0, qword_E70DC0);
  return static Logger.music(_:)();
}

uint64_t sub_D24AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB2DC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDFB0);
  __chkstk_darwin(v8);
  v10 = &v84 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0);
  v12 = __chkstk_darwin(v11 - 8);
  v13 = __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v17 = *(a1 + 56);
  v18 = *(a2 + 56);
  if (v17)
  {
    if (!v18)
    {
LABEL_69:
      LOBYTE(v33) = 0;
      return v33 & 1;
    }

    v98 = v16;
    v99 = &v84 - v14;
    v95 = v7;
    v96 = v15;
    v100 = v5;
    v101 = v4;
    v97 = v10;
    sub_13C80(0, &unk_DE8EA0);
    v19 = v18;
    v20 = v17;
    v21 = a1;
    v22 = a2;
    v23 = v17;
    v24 = v19;
    v25 = v23;
    a2 = v22;
    a1 = v21;
    v26 = v25;
    v27 = sub_ABA790();

    if ((v27 & 1) == 0)
    {

      goto LABEL_69;
    }
  }

  else
  {
    v98 = v16;
    v99 = &v84 - v14;
    v95 = v7;
    v96 = v15;
    v100 = v5;
    v101 = v4;
    v97 = v10;
    v20 = 0;
    if (v18)
    {
      goto LABEL_69;
    }
  }

  v28 = sub_D16B0();
  v30 = v29;
  v94 = a2;
  v31 = sub_D16B0();
  LOBYTE(v33) = v32;
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_19;
    }

    if (v28 == v31 && v30 == v32)
    {
    }

    else
    {
      v34 = sub_ABB3C0();

      if ((v34 & 1) == 0)
      {
        goto LABEL_67;
      }
    }
  }

  else if (v32)
  {
    goto LABEL_21;
  }

  v35 = sub_D1FC0();
  v37 = v36;
  v38 = sub_D1FC0();
  LOBYTE(v33) = v39;
  if (!v37)
  {
    if (!v39)
    {
      goto LABEL_23;
    }

LABEL_21:

    goto LABEL_69;
  }

  if (v39)
  {
    if (v35 == v38 && v37 == v39)
    {
    }

    else
    {
      v40 = sub_ABB3C0();

      if ((v40 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

LABEL_23:
    v41 = *(a1 + 64);
    v42 = *(v94 + 64);
    if (v41 == 1)
    {
      if (v42 == &dword_0 + 1)
      {
LABEL_25:
        v43 = *(a1 + 40);
        v44 = *(v94 + 40);
        if (v43)
        {
          if (!v44)
          {
            goto LABEL_67;
          }

          sub_13C80(0, &unk_E04570);
          v45 = v44;
          v46 = v43;
          v47 = sub_ABA790();

          if ((v47 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        else if (v44)
        {
          goto LABEL_67;
        }

        if (*(a1 + 112))
        {
          if ((*(v94 + 112) & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        else if ((*(v94 + 112) & 1) != 0 || *(a1 + 104) != *(v94 + 104))
        {
          goto LABEL_67;
        }

        if (*(a1 + 96))
        {
          if ((*(v94 + 96) & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        else if ((*(v94 + 96) & 1) != 0 || *(a1 + 88) != *(v94 + 88))
        {
          goto LABEL_67;
        }

        v50 = sub_D1780();
        if (v50 == 2)
        {
          v50 = sub_D1854();
        }

        v51 = sub_D1780();
        if (v51 == 2 && (v51 = sub_D1854(), v51 == 2))
        {
          if (v50)
          {
            goto LABEL_67;
          }
        }

        else if ((v50 ^ v51))
        {
          goto LABEL_67;
        }

        if (v20)
        {
          v52 = MPModelPropertyPlaylistIsFavorite;
          v53 = v20;
          if ([v53 hasLoadedValueForKey:v52])
          {
            v54 = [v53 isFavorite];
          }

          else
          {
            v54 = 0;
          }
        }

        else
        {
          v54 = 0;
        }

        if (v18)
        {
          v55 = MPModelPropertyPlaylistIsFavorite;
          v56 = v18;
          if ([v56 hasLoadedValueForKey:v55])
          {
            v57 = [v56 isFavorite];

            if (v54 != v57)
            {

LABEL_68:
              goto LABEL_69;
            }

LABEL_71:
            v93 = v20;
            v59 = v99;
            sub_D18F4(v99);
            v60 = v98;
            sub_D18F4(v98);
            v61 = *(v8 + 48);
            v62 = v97;
            sub_D3154(v59, v97);
            v92 = v61;
            sub_D3154(v60, v62 + v61);
            v63 = v101;
            v64 = *(v100 + 48);
            if (v64(v62, 1, v101) == 1)
            {
              v101 = v63;
              sub_12E1C(v60, &qword_DF43E0);
              sub_12E1C(v59, &qword_DF43E0);
              if (v64(v62 + v92, 1, v101) == 1)
              {
                sub_12E1C(v62, &qword_DF43E0);
                v65 = v93;
                goto LABEL_79;
              }
            }

            else
            {
              v66 = v96;
              sub_D3154(v62, v96);
              if (v64(v62 + v92, 1, v63) != 1)
              {
                v67 = v100;
                v68 = v95;
                (*(v100 + 32))(v95, v62 + v92, v63);
                sub_D31C4();
                v96 = v66;
                LODWORD(v92) = sub_AB91C0();
                v69 = *(v67 + 8);
                v69(v68, v63);
                sub_12E1C(v98, &qword_DF43E0);
                sub_12E1C(v99, &qword_DF43E0);
                v69(v96, v63);
                sub_12E1C(v62, &qword_DF43E0);
                v65 = v93;
                if (v92)
                {
LABEL_79:
                  if (v65)
                  {
                    if ([v65 hasLoadedValueForKey:MPModelPropertyPlaylistTraits])
                    {
                      v70 = [v93 traits];
                    }

                    else
                    {
                      v70 = 0;
                    }
                  }

                  else
                  {
                    v70 = 0;
                  }

                  if (v18)
                  {
                    if ([v18 hasLoadedValueForKey:MPModelPropertyPlaylistTraits])
                    {
                      v71 = [v18 traits];

                      if (v70 != v71)
                      {
                        goto LABEL_69;
                      }

LABEL_91:
                      v72 = *(a1 + 8);
                      v33 = *(v94 + 8);
                      if (v72)
                      {
                        if (!v33)
                        {
                          return v33 & 1;
                        }

                        v73 = sub_12BDDC(v72, v33);

                        if ((v73 & 1) == 0)
                        {
                          goto LABEL_69;
                        }
                      }

                      else if (v33)
                      {
                        goto LABEL_69;
                      }

                      v74 = *a1;
                      v33 = *v94;
                      if (*a1)
                      {
                        if (!v33)
                        {
                          return v33 & 1;
                        }

                        v75 = sub_12BDDC(v74, v33);

                        if ((v75 & 1) == 0)
                        {
                          goto LABEL_69;
                        }
                      }

                      else if (v33)
                      {
                        goto LABEL_69;
                      }

                      sub_D1A9C(&v129);
                      sub_D1A9C(&v142);
                      v76 = v129;
                      v77 = v130;
                      v100 = v132;
                      v101 = v131;
                      v98 = v134;
                      v99 = v133;
                      v96 = v136;
                      v97 = v135;
                      v94 = v138;
                      v95 = v137;
                      v92 = v140;
                      v93 = v139;
                      v78 = v142;
                      v79 = v143;
                      v81 = v144;
                      v80 = v145;
                      v82 = v146;
                      v83 = v147;
                      v90 = v148;
                      v91 = v141;
                      v88 = v150;
                      v89 = v149;
                      v86 = v152;
                      v87 = v151;
                      v84 = v154;
                      v85 = v153;
                      if (v130)
                      {
                        if (v143)
                        {
                          if (v129 == v142 && v143 == v130)
                          {
                            if (v101 != v144)
                            {
LABEL_126:
                              LOBYTE(v33) = 0;
LABEL_127:
                              v102[0] = v78;
                              v102[1] = v79;
                              v102[2] = v81;
                              v102[3] = v80;
                              v102[4] = v82;
                              v102[5] = v83;
                              v102[6] = v90;
                              v102[7] = v89;
                              v102[8] = v88;
                              v102[9] = v87;
                              v102[10] = v86;
                              v102[11] = v85;
                              v102[12] = v84;
                              sub_12E1C(v102, &unk_E02CB0);
                              v103 = v76;
                              v104 = v77;
                              v105 = v101;
                              v106 = v100;
                              v107 = v99;
                              v108 = v98;
                              v109 = v97;
                              v110 = v96;
                              v111 = v95;
                              v112 = v94;
                              v113 = v93;
                              v114 = v92;
                              v115 = v91;
                              sub_12E1C(&v103, &unk_E02CB0);
                              return v33 & 1;
                            }
                          }

                          else
                          {
                            LOBYTE(v33) = 0;
                            if ((sub_ABB3C0() & 1) == 0 || v101 != v81)
                            {
                              goto LABEL_127;
                            }
                          }

                          if (v100 == v80 && v99 == v82 || (sub_ABB3C0()) && (v98 == v83 && v97 == v90 || (sub_ABB3C0()) && (v96 == v89 && v95 == v88 || (sub_ABB3C0()) && (v94 == v87 && v93 == v86 || (sub_ABB3C0()))
                          {
                            if (v92 == v85 && v91 == v84)
                            {
                              LOBYTE(v33) = 1;
                            }

                            else
                            {
                              LOBYTE(v33) = sub_ABB3C0();
                            }

                            goto LABEL_127;
                          }

                          goto LABEL_126;
                        }
                      }

                      else if (!v143)
                      {
                        v103 = v129;
                        v104 = 0;
                        v105 = v101;
                        v106 = v100;
                        v107 = v99;
                        v108 = v98;
                        v109 = v97;
                        v110 = v96;
                        v111 = v95;
                        v112 = v94;
                        v113 = v93;
                        v114 = v92;
                        v115 = v91;
                        sub_12E1C(&v103, &unk_E02CB0);
                        LOBYTE(v33) = 1;
                        return v33 & 1;
                      }

                      v103 = v129;
                      v104 = v130;
                      v105 = v101;
                      v106 = v100;
                      v107 = v99;
                      v108 = v98;
                      v109 = v97;
                      v110 = v96;
                      v111 = v95;
                      v112 = v94;
                      v113 = v93;
                      v114 = v92;
                      v115 = v91;
                      v116 = v142;
                      v117 = v143;
                      v118 = v144;
                      v119 = v145;
                      v120 = v146;
                      v121 = v147;
                      v122 = v90;
                      v123 = v89;
                      v124 = v88;
                      v125 = v87;
                      v126 = v86;
                      v127 = v85;
                      v128 = v84;
                      sub_12E1C(&v103, &qword_DEDFB8);
                      goto LABEL_69;
                    }
                  }

                  if (v70)
                  {
                    goto LABEL_69;
                  }

                  goto LABEL_91;
                }

LABEL_77:

                goto LABEL_69;
              }

              sub_12E1C(v98, &qword_DF43E0);
              sub_12E1C(v99, &qword_DF43E0);
              (*(v100 + 8))(v66, v63);
            }

            sub_12E1C(v62, &qword_DEDFB0);
            v65 = v93;
            goto LABEL_77;
          }
        }

        if (!v54)
        {
          goto LABEL_71;
        }

LABEL_67:

        goto LABEL_68;
      }
    }

    else
    {
      if (v42 == &dword_0 + 1)
      {
        goto LABEL_67;
      }

      if (v41)
      {
        if (v42)
        {
          sub_13C80(0, &qword_DFA720);
          v48 = v42;
          if (sub_ABA790())
          {
            sub_D3144(v42);
            goto LABEL_25;
          }

LABEL_40:

          sub_D3144(v42);
          goto LABEL_69;
        }
      }

      else if (!v42)
      {
        goto LABEL_25;
      }
    }

    v49 = v42;
    goto LABEL_40;
  }

LABEL_19:

  return v33 & 1;
}

void sub_D3144(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

uint64_t sub_D3154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_D31C4()
{
  result = qword_DEDFC0;
  if (!qword_DEDFC0)
  {
    sub_AB2DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDFC0);
  }

  return result;
}

uint64_t sub_D321C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_D328C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_97420(_swiftEmptyArrayStorage);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = v4;
  *(a2 + 56) = a1;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  return result;
}

uint64_t sub_D3310(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v11 = qword_E718D8;
  *&v4[v10] = qword_E718D8;
  v4[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textAlignment] = 4;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_handler];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textDrawingCache] = 0;
  v13 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_accessoryImageView;
  v14 = objc_allocWithZone(UIImageView);
  v15 = v11;
  *&v4[v13] = [v14 initWithImage:0];
  v16 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView;
  type metadata accessor for TextStackView();
  *&v4[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textComponents];
  sub_D481C(v37);
  v18 = v37[1];
  *v17 = v37[0];
  *(v17 + 1) = v18;
  *(v17 + 4) = v38;
  v19 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_button;
  *&v4[v19] = [objc_opt_self() buttonWithType:0];
  *&v4[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_buttonActionEventHandler] = 0;
  v36.receiver = v4;
  v36.super_class = type metadata accessor for CollectionAccessoryView();
  v20 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v21 = [v20 layer];
  [v21 setAllowsGroupOpacity:0];

  v22 = [v20 layer];
  [v22 setAllowsGroupBlending:0];

  [v20 addSubview:*&v20[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_accessoryImageView]];
  v23 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView;
  v24 = *&v20[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView];
  v25 = &v20[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textComponents];
  result = swift_beginAccess();
  v27 = *(v25 + 4);
  if (!(v27 >> 62))
  {
    v28 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_12:
    [v20 addSubview:*&v20[v23]];
    v32 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_button;
    [v20 addSubview:*&v20[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_button]];
    v33 = *&v20[v32];
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ControlEventHandler();
    swift_allocObject();
    v35 = sub_13C80(0, &qword_DF13D0);
    *&v20[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_buttonActionEventHandler] = ControlEventHandler.init<A>(control:events:handler:)(v33, 64, sub_D4C58, v34, v35);

    return v20;
  }

  result = sub_ABB060();
  v28 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v28 >= 1)
  {
    v29 = v24;

    for (i = 0; i != v28; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v31 = sub_36003C(i, v27);
      }

      else
      {
        v31 = *(v27 + 8 * i + 32);
      }

      TextStackView.add(_:)(v31);
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_D370C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_handler);
    if (v2)
    {

      v2(v1);
      sub_17654(v2);
    }
  }
}

void sub_D392C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor);
  sub_13C80(0, qword_DFAAC0);
  v4 = v3;
  v5 = sub_ABA790();

  if ((v5 & 1) == 0)
  {
    v6 = *(v1 + v2);
    v7 = v1 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textComponents;
    swift_beginAccess();
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;
    v9 = v6;

    v10 = *(v7 + 8);
    sub_D4B88(*v7, *(v7 + 16), v9, v18);
    swift_beginAccess();
    v12 = v10[3];
    v11 = v10[4];
    v13 = v10[6];
    v17[3] = v10[5];
    v17[4] = v13;
    v17[1] = v12;
    v17[2] = v11;
    v17[0] = v10[2];
    v14 = v18[4];
    v10[5] = v18[3];
    v10[6] = v14;
    v15 = v18[1];
    v10[2] = v18[0];
    v10[3] = v15;
    v10[4] = v18[2];
    sub_2F118(v18, &v16);
    sub_2F174(v17);
    sub_2EB2A8();
    swift_endAccess();
    sub_2F174(v18);
  }
}

double sub_D3A68(double a1)
{
  [v1 intrinsicContentSize];
  v4 = v3;
  sub_7FD28();
  v5 = sub_AB38E0();
  if (v4 <= a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  if (v5)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  sub_AB38E0();
  return v7;
}

void sub_D3C38()
{
  v36.receiver = v0;
  v36.super_class = type metadata accessor for CollectionAccessoryView();
  objc_msgSendSuper2(&v36, "layoutSubviews");
  v1 = [v0 traitCollection];
  [v0 music_inheritedLayoutInsets];
  v3 = v2;
  v5 = v4;
  [v1 displayScale];
  [v0 bounds];
  v34 = v7;
  v35 = v6;
  v9 = v8;
  v11 = v10;
  v12 = UIEdgeInsetsInsetRect(v6, v7, v8, v10, v3, v5);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v0 effectiveUserInterfaceLayoutDirection];
  v19 = *&v0[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_accessoryImageView];
  [v19 sizeThatFits:{v16, v18}];
  v21 = v20;
  v23 = v22;
  v37.origin.x = v12;
  v37.origin.y = v14;
  v37.size.width = v16;
  v37.size.height = v18;
  CGRectGetMaxX(v37);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v21;
  v38.size.height = v23;
  CGRectGetWidth(v38);
  sub_ABA470();
  sub_ABA490();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [v19 setFrame:*&v23];
  v39.origin.x = v25;
  v39.origin.y = v27;
  v39.size.width = v29;
  v39.size.height = v31;
  CGRectGetWidth(v39);
  v32 = *&v0[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView];
  sub_ABA490();
  [v32 setFrame:?];
  v33 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_button;
  [*&v0[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_button] setFrame:{v35, v34, v9, v11}];
  [v0 bringSubviewToFront:*&v0[v33]];
}

void (*sub_D3FA8(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_D4030;
}

void sub_D4030(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;
    swift_retain_n();
    sub_2E6210(v8);
  }

  free(v3);
}

uint64_t sub_D4250(uint64_t a1)
{
  sub_D4760(a1);
}

void (*sub_D4288(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_D3FA8(v2);
  return sub_A8F90;
}

id sub_D42F8(void *a1, double a2, double a3, double a4, double a5)
{
  v13.receiver = a1;
  v13.super_class = type metadata accessor for AccessoryReusableView();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
  v10 = [v9 layer];
  [v10 setAllowsGroupOpacity:0];

  v11 = [v9 layer];
  [v11 setAllowsGroupBlending:0];

  return v9;
}

double sub_D4440()
{
  v0 = [objc_opt_self() defaultMetrics];
  sub_AB9EF0();
  v2 = v1;

  return v2;
}

void sub_D44F4()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AccessoryReusableView();
  objc_msgSendSuper2(&v6, "tintColorDidChange");
  v2 = *&v0[qword_DF4010];
  v3 = [v1 tintColor];
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor);
    *(v2 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor) = v3;
    v5 = v3;
    sub_D392C();
  }

  else
  {
    __break(1u);
  }
}

void sub_D4598(void *a1)
{
  v1 = a1;
  sub_D44F4();
}

id sub_D45FC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for AccessoryReusableView()
{
  result = qword_DEE068;
  if (!qword_DEE068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D46C0(uint64_t a1, int a2)
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

uint64_t sub_D4708(uint64_t result, int a2, int a3)
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

uint64_t sub_D4760(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = a1;

  sub_2E6210(v6);
}

uint64_t sub_D481C@<X0>(uint64_t a1@<X8>)
{
  sub_13C80(0, &qword_DE6EE0);
  v2 = sub_ABA560();
  v3 = qword_DE6C98;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_E718D8;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  *&v13[0] = v5;
  *(&v13[0] + 1) = v8;
  v13[1] = xmmword_AF7C20;
  v14 = 0;
  v15 = 0;
  v16 = v4;
  v17 = 1;
  v18 = xmmword_AF7C40;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v9 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF82B0;
  *(v10 + 32) = v9;
  v19[0] = v5;
  v19[1] = v8;
  v20 = xmmword_AF7C20;
  v21 = 0;
  v22 = 0;
  v23 = v4;
  v24 = 1;
  v25 = xmmword_AF7C40;
  sub_2F118(v13, v12);

  result = sub_2F174(v19);
  *a1 = 4;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4;
  *(a1 + 24) = v7;
  *(a1 + 32) = v10;
  return result;
}

void sub_D49E4()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v3 = qword_E718D8;
  *(v0 + v2) = qword_E718D8;
  *(v0 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textAlignment) = 4;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_handler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textDrawingCache) = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_accessoryImageView;
  v6 = objc_allocWithZone(UIImageView);
  v7 = v3;
  *(v0 + v5) = [v6 initWithImage:0];
  v8 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView;
  type metadata accessor for TextStackView();
  *(v0 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = v0 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textComponents;
  sub_D481C(v12);
  v10 = v12[1];
  *v9 = v12[0];
  *(v9 + 16) = v10;
  *(v9 + 32) = v13;
  v11 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_button;
  *(v0 + v11) = [objc_opt_self() buttonWithType:0];
  *(v0 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_buttonActionEventHandler) = 0;
  sub_ABAFD0();
  __break(1u);
}

double sub_D4B88@<D0>(unsigned __int8 a1@<W0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  v9 = a2;
  v10 = a3;
  v11 = [v8 clearColor];
  *a4 = a3;
  *(a4 + 8) = v11;
  *(a4 + 16) = a1;
  *(a4 + 24) = 4;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = v9;
  *(a4 + 56) = 1;
  result = 16.0;
  *(a4 + 64) = xmmword_AF9C80;
  return result;
}

uint64_t sub_D4C20()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_D4CC8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for EditingSectionedCollection.ChangeRecord();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7 - 8);
  if (a2)
  {
    if (!a1)
    {

      goto LABEL_22;
    }

    sub_307CC(a2);
    v11 = a1;
    v12 = [v3 results];
    if (v12)
    {
      v13 = v12;
      type metadata accessor for EditingSectionedCollection();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        goto LABEL_12;
      }

      v15 = v14;
      v16 = [v11 results];
      if (v16)
      {
        v44 = v11;
        v17 = v16;
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v43 = v17;
          if (*(v18 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection) != *&v15[OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection])
          {

LABEL_22:
            v24 = 0;
            goto LABEL_23;
          }

          v25 = *(v18 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_changeRecords);
          v26 = *&v15[OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_changeRecords];
          v27 = *(v26 + 16);
          v28 = *(v25 + 16);
          if (v27 == v28 + 1)
          {
            v39 = *(v8 + 80);
            v41 = (2 * v28) | 1;
            v29 = v25;

            v42 = v26;
            v40 = v26 + ((v39 + 32) & ~v39);
            sub_13099C(v26, v40, 0, v41);
            v31 = v30;
            result = sub_12CF30(v30, v29);
            if (result)
            {
              v38[1] = v31;
              v41 = v29;
              if (v27 <= *(v42 + 16))
              {
                v32 = v39;
                sub_57E38(v40 + *(v8 + 72) * (v27 - 1), v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
                v33 = swift_allocObject();
                sub_D587C(v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + ((v32 + 16) & ~v32));
                v34 = objc_allocWithZone(MPChangeDetails);
                v49 = sub_D58E0;
                v50 = v33;
                aBlock = _NSConcreteStackBlock;
                v46 = 1107296256;
                v47 = sub_1546C;
                v48 = &block_descriptor_9_0;
                v35 = _Block_copy(&aBlock);
                v24 = [v34 initWithBlock:v35];
                _Block_release(v35);

                goto LABEL_23;
              }

              __break(1u);
LABEL_28:
              __break(1u);
              return result;
            }
          }

          goto LABEL_22;
        }

        v11 = v44;
      }

      if (*(*&v15[OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_changeRecords] + 16))
      {
LABEL_12:

        goto LABEL_22;
      }

      v19 = [v15 totalItemCount];
      result = [v11 results];
      if (!result)
      {
        goto LABEL_28;
      }

      v20 = result;
      v21 = [result totalItemCount];

      if (v19 == v21)
      {
        v22 = objc_allocWithZone(MPChangeDetails);
        v49 = UIScreen.Dimensions.size.getter;
        v50 = 0;
        aBlock = _NSConcreteStackBlock;
        v46 = 1107296256;
        v47 = sub_1546C;
        v48 = &block_descriptor_25;
        v23 = _Block_copy(&aBlock);
        v24 = [v22 initWithBlock:v23];
        _Block_release(v23);

LABEL_23:
        sub_60044();
        v36 = swift_allocObject();
        v36[2] = a2;
        v36[3] = a3;
        v36[4] = v24;
        sub_307CC(a2);
        v37 = v24;
        static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_C3964, v36);

        return sub_17654(a2);
      }
    }

    goto LABEL_22;
  }

  return result;
}

void sub_D51E4(void *a1, uint64_t a2)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EditingSectionedCollection.ChangeRecord();
  __chkstk_darwin(v8);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_57E38(a2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D38);
      v13 = *(v5 + 8);
      v13(v10 + *(v12 + 48), v4);
      v13(v10, v4);
      return;
    }

    (*(v5 + 32))(v7, v10, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530);
    v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_AF4EC0;
    (*(v5 + 16))(v20 + v19, v7, v4);
    v18.super.isa = sub_AB9740().super.isa;

    [a1 setDeletedItemIndexPaths:v18.super.isa];
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v14 = *v10;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D40);
    (*(v5 + 32))(v7, v10 + *(v15 + 48), v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530);
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_AF4EC0;
    (*(v5 + 16))(v17 + v16, v7, v4);
    v18.super.isa = sub_AB9740().super.isa;

    [a1 setInsertedItemIndexPaths:v18.super.isa];
    (*(v5 + 8))(v7, v4);
  }
}

id sub_D55D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditingModelResponse();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_D562C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_D5664()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_D56BC()
{
  v1 = *(type metadata accessor for EditingSectionedCollection.ChangeRecord() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v10 = sub_AB3820();
      (*(*(v10 - 8) + 8))(v0 + v2, v10);
      break;
    case 1:
      v7 = sub_AB3820();
      v8 = *(*(v7 - 8) + 8);
      v8(v0 + v2, v7);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D38);
      v8(v3 + *(v9 + 48), v7);
      break;
    case 0:

      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D40) + 48);
      v6 = sub_AB3820();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_D587C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditingSectionedCollection.ChangeRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_D58E0(void *a1)
{
  v3 = *(type metadata accessor for EditingSectionedCollection.ChangeRecord() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_D51E4(a1, v4);
}

id sub_D5958@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VerticalLockupCollectionViewCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    [*(*(v2 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) frame];
    goto LABEL_12;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = v26;
  if (v7)
  {
    v9 = v26;
    v10 = [v7 _collectionView];
    if (v10)
    {
      v11 = v10;
      v12 = sub_AB9260();
      v13 = NSSelectorFromString(v12);

      if ([v11 respondsToSelector:v13])
      {
        v14 = [v11 _currentTouch];
        if (v14)
        {
          v15 = v14;
          [v14 locationInView:v9];
          v17 = v16;
          v19 = v18;

          v32.size.width = 0.0;
          v32.size.height = 0.0;
          v32.origin.x = v17;
          v32.origin.y = v19;
          v33 = CGRectInset(v32, -20.0, -20.0);
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;

          v6 = height;
          v5 = width;
          v4 = y;
          v3 = x;
          goto LABEL_12;
        }
      }
    }

    else
    {
      v11 = v9;
    }

    v8 = v26;
  }

  [v8 bounds];
LABEL_12:
  v29[0] = v26;
  *&v29[1] = v3;
  *&v29[2] = v4;
  *&v29[3] = v5;
  *&v29[4] = v6;
  v30 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v29, 15, v27);
  v24 = v27[1];
  *a1 = v27[0];
  *(a1 + 16) = v24;
  *(a1 + 32) = v27[2];
  *(a1 + 48) = v28;

  return v26;
}

void sub_D5B6C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];
  sub_D5EA8();
  sub_D5EF4();
  v2 = sub_AB9B40();

  v27 = v1;
  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_ABAC10();
    sub_AB9BC0();
    v2 = v29;
    v3 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v26 = v4;
  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      while (1)
      {
        v16 = v2;
        v17 = v15;
        v18 = [v15 session];
        v19 = [v18 role];

        v20 = sub_AB92A0();
        v22 = v21;
        if (v20 == sub_AB92A0() && v22 == v23)
        {
          break;
        }

        v25 = sub_ABB3C0();

        if (v25)
        {
          goto LABEL_26;
        }

        v5 = v13;
        v6 = v14;
        v2 = v16;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_ABAC90())
        {
          swift_unknownObjectRetain();
          swift_dynamicCast();
          swift_unknownObjectRelease();
          v15 = v28;
          v13 = v5;
          v14 = v6;
          if (v28)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_26:
      sub_2BB88();

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
      }
    }

    else
    {
LABEL_23:
      sub_2BB88();
    }
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_D5EA8()
{
  result = qword_DEE360;
  if (!qword_DEE360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DEE360);
  }

  return result;
}

unint64_t sub_D5EF4()
{
  result = qword_DEE368;
  if (!qword_DEE368)
  {
    sub_D5EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE368);
  }

  return result;
}

void sub_D5F78()
{
  v61.receiver = v0;
  v61.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v61, "viewDidLoad");
  v1 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_D658C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_119878;
  aBlock[3] = &block_descriptor_26;
  v2 = _Block_copy(aBlock);
  v3 = [v1 initWithDynamicProvider:v2];
  _Block_release(v2);

  v4 = [v3 CGColor];

  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v62.origin.x = v8;
  v62.origin.y = v10;
  v62.size.width = v12;
  v62.size.height = v14;
  MinX = CGRectGetMinX(v62);
  v16 = [v0 view];
  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v63.origin.x = v19;
  v63.origin.y = v21;
  v63.size.width = v23;
  v63.size.height = v25;
  v26 = [objc_allocWithZone(UIView) initWithFrame:{MinX, CGRectGetMinY(v63), 270.0, 100.0}];
  [v26 setAlpha:0.5];
  [v26 center];
  v28 = v27;
  [v26 center];
  v30 = v29 + -10.0;
  if (qword_DE67E8 != -1)
  {
    swift_once();
  }

  v31 = *&qword_E70DD8;
  v32 = objc_opt_self();
  v33 = [v32 bezierPathWithArcCenter:1 radius:v28 startAngle:v30 endAngle:17.0 clockwise:{v31, 4.71238898}];
  [v26 center];
  v35 = v34;
  [v26 center];
  v37 = [v32 bezierPathWithArcCenter:1 radius:v35 startAngle:v36 + -10.0 endAngle:7.5 clockwise:{v31, 4.71238898}];
  v38 = [objc_allocWithZone(CAShapeLayer) init];
  v59 = v33;
  v39 = [v33 CGPath];
  [v38 setPath:v39];

  v40 = objc_opt_self();
  v41 = [v40 clearColor];
  v42 = [v41 CGColor];

  [v38 setFillColor:v42];
  v43 = v4;
  [v38 setStrokeColor:v43];
  [v38 setLineWidth:4.0];
  [v38 setStrokeEnd:1.0];
  v44 = [v26 layer];
  [v44 addSublayer:v38];

  v45 = *&v0[OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_circleLayer];
  *&v0[OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_circleLayer] = v38;
  v58 = v38;

  v46 = [objc_allocWithZone(CAShapeLayer) init];
  v47 = [v37 CGPath];
  [v46 setPath:v47];

  v48 = [v40 clearColor];
  v49 = [v48 CGColor];

  [v46 setFillColor:v49];
  [v46 setStrokeColor:v43];

  v50 = [v0 traitCollection];
  [v50 displayScale];
  v52 = v51;

  [v46 setLineWidth:1.0 / v52 + 15.0];
  [v46 setStrokeEnd:0.0];
  v53 = [v26 layer];
  [v53 addSublayer:v46];

  v54 = *&v0[OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_progressLayer];
  *&v0[OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_progressLayer] = v46;
  v55 = v46;

  v56 = [v0 view];
  if (v56)
  {
    v57 = v56;
    [v56 addSubview:v26];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_D658C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != &dword_0 + 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_D6830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_AB3820();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_D68BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_AB3820();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t _s30CollectionViewSelectionHandlerVMa()
{
  result = qword_DEE400;
  if (!qword_DEE400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D6984()
{
  result = sub_AB3820();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_D6A04(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_AB31C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  JSStoreFlowSegue.url.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_12E1C(v6, &unk_DF2AE0);
  }

  else
  {
    v39 = *(v8 + 32);
    v39(v13, v6, v7);
    v14 = [objc_opt_self() standardUserDefaults];
    v15 = sub_F6EF4();

    if (v15)
    {
      (*(v8 + 8))(v13, v7);
    }

    else
    {
      sub_13C80(0, &qword_DEE560);
      v16 = static ICStoreRequestContext.storeFlow.getter();
      v17 = [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v16];

      v18 = [objc_allocWithZone(AMSURLParser) initWithBag:v17];
      v36 = v2;
      v19 = v18;
      v20 = v13;
      sub_AB30F0(v21);
      v37 = v13;
      v23 = v22;
      v38 = [v19 typeForURL:v22];

      (*(v8 + 16))(v11, v20, v7);
      sub_2D384(a1, v41);
      v24 = (*(v8 + 80) + 24) & ~*(v8 + 80);
      v25 = (v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      v27 = v36;
      *(v26 + 16) = v36;
      v39((v26 + v24), v11, v7);
      *(v26 + v25) = v17;
      v28 = v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
      *(v28 + 48) = v42;
      v29 = v41[2];
      v30 = v41[0];
      *(v28 + 16) = v41[1];
      *(v28 + 32) = v29;
      *v28 = v30;
      aBlock[4] = sub_DB124;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_DBA68;
      aBlock[3] = &block_descriptor_30_0;
      v31 = _Block_copy(aBlock);
      v32 = v27;
      v33 = v17;

      v34 = v38;
      [v38 addFinishBlock:v31];

      (*(v8 + 8))(v37, v7);
      _Block_release(v31);
    }
  }
}

uint64_t sub_D6E00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v26 = a5;
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(a1);
  v14 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v13)
  {
    v15 = [v13 integerValue];
  }

  else
  {
    v15 = &dword_0 + 1;
  }

  sub_13C80(0, &qword_DE8ED0);
  (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
  sub_2D384(a6, v27);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = a3;
  (*(v11 + 32))(v18 + v16, v14, v10);
  v19 = v26;
  *(v18 + v17) = v26;
  v20 = v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v20 + 48) = v28;
  v21 = v27[2];
  v22 = v27[0];
  *(v20 + 16) = v27[1];
  *(v20 + 32) = v21;
  *v20 = v22;
  v23 = a3;
  v24 = v19;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_DB2F4, v18);
}

uint64_t sub_D6FE8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a1 != 2)
  {
    if (a1 == 1)
    {
      v16 = v13;
      BagProvider.shared.unsafeMutableAddressor();
      (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v16);
      sub_2D384(a5, v25);
      v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      (*(v11 + 32))(v19 + v17, v14, v16);
      *(v19 + v18) = a2;
      v20 = v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
      *(v20 + 48) = v26;
      v21 = v25[2];
      v22 = v25[0];
      *(v20 + 16) = v25[1];
      *(v20 + 32) = v21;
      *v20 = v22;

      v23 = a2;
      BagProvider.getBag(completion:)(sub_DB460, v19);
    }

    else
    {
      result = sub_ABAFD0();
      __break(1u);
    }
  }

  else
  {

    return sub_D97A4(a3, a4, a1, a5, a2);
  }

  return result;
}

uint64_t sub_D724C()
{
  if (qword_DE67F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = off_DEE440;
  if (*(&dword_10 + off_DEE440) && (v2 = sub_2EC708(v0), (v3 & 1) != 0))
  {
    sub_DB588(*&stru_20.segname[v1 + 16] + 16 * v2, v6);
    v7 = 0;
  }

  else
  {
    v6[0] = 0;
    v6[1] = 0;
    v7 = 1;
  }

  swift_endAccess();
  if (v7)
  {
    sub_12E1C(v6, &qword_DEE460);
    return 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_DA7FC(v6);
    return Strong;
  }
}

uint64_t sub_D7348@<X0>(uint64_t a1@<X8>)
{
  if (qword_DE67F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_DEE440;
  if (*(&dword_10 + off_DEE440) && (v4 = sub_2EC708(v1), (v5 & 1) != 0))
  {
    sub_DB588(*&stru_20.segname[v3 + 16] + 16 * v4, a1);
    *(a1 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  return swift_endAccess();
}

uint64_t sub_D740C(int a1, id a2, void *a3)
{
  v4 = a2;
  v5 = [a2 viewControllers];
  v6 = sub_13C80(0, &qword_DE7500);
  v7 = sub_AB9760();
  v8 = v7;
  if (v7 >> 62)
  {
    if (sub_ABB060())
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_35F8D4(0, v8);
  }

  else
  {
    if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_21:
      result = sub_ABB060();
      if (result)
      {
        goto LABEL_13;
      }

LABEL_22:

      goto LABEL_23;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();

  if (v11)
  {
    JSStoreFlowPresentationCoordinator.viewControllerDidDismiss(_:from:)(v11, a3);

    goto LABEL_23;
  }

LABEL_11:
  v4 = [v4 viewControllers];
  v12 = sub_AB9760();
  v6 = v12;
  if (v12 >> 62)
  {
    goto LABEL_21;
  }

  result = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = sub_35F8D4(0, v6);
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v14 = *(v6 + 32);
  }

  v15 = v14;

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();

  if (v16)
  {
    JSStoreFlowPresentationCoordinator.viewControllerDidDismiss(_:from:)(v16, a3);
  }

LABEL_23:
  if (qword_DE67F0 != -1)
  {
    swift_once();
  }

  v17[0] = 0;
  v17[1] = 0;
  v18 = 1;
  swift_beginAccess();
  sub_2E5440(v17, a3);
  return swift_endAccess();
}

uint64_t sub_D7688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v25[-v6];
  v8 = *(a1 + 16);
  if (v8)
  {
    type metadata accessor for JSComponentController();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = *(&stru_1A8.offset + (swift_isaMask & *v9));
      v11 = v8;
      v12 = v10();

      return v12;
    }
  }

  sub_4148FC(v25);
  if (v26 == 1)
  {
    sub_12E1C(v25, &unk_DEA520);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1611C(v25);
  result = 0;
  if (Strong)
  {
    type metadata accessor for JSDrivenViewController();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      v19 = [Strong parentViewController];

      if (v19)
      {
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          v21 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
          v22 = v20;
          swift_beginAccess();
          sub_15F84(v22 + v21, v5, &unk_DF1330);
          v23 = type metadata accessor for MetricsPageProperties();
          if ((*(*(v23 - 8) + 48))(v5, 1, v23) != 1)
          {
            v12 = *&v5[*(v23 + 28)];

            sub_DB5CC(v5, type metadata accessor for MetricsPageProperties);

            return v12;
          }

          sub_12E1C(v5, &unk_DF1330);
        }
      }

      return 0;
    }

    v16 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
    v17 = v15;
    swift_beginAccess();
    sub_15F84(v17 + v16, v7, &unk_DF1330);
    v18 = type metadata accessor for MetricsPageProperties();
    if ((*(*(v18 - 8) + 48))(v7, 1, v18) == 1)
    {
      sub_12E1C(v7, &unk_DF1330);

      return 0;
    }

    v24 = *&v7[*(v18 + 28)];

    sub_DB5CC(v7, type metadata accessor for MetricsPageProperties);

    return v24;
  }

  return result;
}

uint64_t sub_D79FC(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = *JSBridge.shared.unsafeMutableAddressor();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = ObjectType;
  v7 = *&stru_B8.segname[(swift_isaMask & *v5) + 16];
  v8 = v5;
  v9 = a1;
  v10 = a2;
  v7(sub_DB5C0, v6);
}

uint64_t sub_D7AE4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_AB31C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_DE8ED0);
  (*(v9 + 16))(v11, a2, v8);
  sub_2D384(a4, v22);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = (v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v9 + 32))(v14 + v12, v11, v8);
  *(v14 + v13) = a3;
  v15 = v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v15 + 48) = v23;
  v16 = v22[2];
  v17 = v22[0];
  *(v15 + 16) = v22[1];
  *(v15 + 32) = v16;
  *v15 = v17;
  v18 = a1;
  v19 = a3;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_DB740, v14);
}

uint64_t sub_D7CA4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v49 = a4;
  v50 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  v7 = __chkstk_darwin(v6);
  v47 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v44 - v9;
  v11 = sub_AB31C0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v44 - v16;
  v18 = swift_allocBox();
  v19 = *(v12 + 56);
  v46 = v20;
  v19(v20, 1, 1, v11);
  v21 = sub_AB9260();
  v22 = [a1 dictionaryForBagKey:v21];

  if (!v22)
  {
    goto LABEL_12;
  }

  v48 = a2;
  v23 = sub_AB8FF0();

  v24 = sub_16A318(v23);

  if (!v24)
  {
    LOBYTE(v22) = 0;
    a2 = v48;
    goto LABEL_12;
  }

  a2 = v48;
  if (!*(v24 + 16) || (v25 = sub_2EBF88(0x6C725565736162, 0xE700000000000000), (v26 & 1) == 0) || (v51 = *(*(v24 + 56) + 8 * v25), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_10:

    LOBYTE(v22) = 0;
    goto LABEL_12;
  }

  v45 = v52[0];
  v27 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
  v29 = v28;
  v44[1] = v27;
  if (!sub_AB9530(v45))
  {

    goto LABEL_10;
  }

  v44[2] = v29;
  v30 = [objc_opt_self() standardUserDefaults];
  sub_F6FBC(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &unk_DF2AE0);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);

    v40 = sub_AB9260();
    v45._countAndFlagsBits = sub_AB9420();
    _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
    v41 = sub_AB9260();

    v42 = [v40 stringByReplacingCharactersInRange:0 withString:{v45._countAndFlagsBits, v41}];

    sub_AB92A0();
    v43 = v47;
    sub_AB3180();
    (*(v12 + 8))(v17, v11);
    sub_DB970(v43, v46);

    a2 = v48;
  }

  LOBYTE(v22) = 1;
LABEL_12:
  v31 = *JSBridge.shared.unsafeMutableAddressor();
  sub_2D384(v49, v52);
  (*(v12 + 16))(v15, a2, v11);
  v32 = (*(v12 + 80) + 88) & ~*(v12 + 80);
  v33 = swift_allocObject();
  v34 = v50;
  *(v33 + 16) = v50;
  v35 = v52[1];
  *(v33 + 24) = v52[0];
  *(v33 + 40) = v35;
  *(v33 + 56) = v52[2];
  *(v33 + 72) = v53;
  *(v33 + 80) = v18;
  (*(v12 + 32))(v33 + v32, v15, v11);
  *(v33 + v32 + v13) = v22;
  v36 = *&stru_B8.segname[(swift_isaMask & *v31) + 16];
  v37 = v31;
  v38 = v34;

  v36(sub_DB8D4, v33);
}

uint64_t sub_D823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v19 = a6;
  v18 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  swift_beginAccess();
  sub_15F84(v14, v9, &unk_DF2AE0);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    (*(v11 + 16))(v13, v18, v10);
    if (v15(v9, 1, v10) != 1)
    {
      sub_12E1C(v9, &unk_DF2AE0);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  sub_D8464(a3, v13, v19 & 1);
  return (*(v11 + 8))(v13, v10);
}

void sub_D8464(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v53[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570);
  __chkstk_darwin(v10 - 8);
  v12 = &v53[-v11 - 8];
  sub_15F84(a1 + 24, v62, &unk_DE8E40);
  if (!v63)
  {
    sub_12E1C(v62, &unk_DE8E40);
    v22 = _s23MusicPerformanceContextVMa();
    (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
    goto LABEL_7;
  }

  v13 = _s23MusicPerformanceContextVMa();
  v14 = swift_dynamicCast();
  v15 = *(v13 - 8);
  (*(v15 + 56))(v12, v14 ^ 1u, 1, v13);
  if ((*(v15 + 48))(v12, 1, v13) == 1)
  {
LABEL_7:
    sub_12E1C(v12, &unk_DEE570);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 1;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_8;
  }

  sub_15F84(v12, &v54, &unk_DEA520);
  sub_DB5CC(v12, _s23MusicPerformanceContextVMa);
  if (v58 == 1)
  {
LABEL_8:
    sub_12E1C(&v54, &unk_DEA520);
    return;
  }

  sub_17704(&v54, v62);
  v16 = [objc_allocWithZone(SKCloudServiceSetupReloadContext) init];
  sub_AB30F0(v17);
  v19 = v18;
  [v16 setCloudServiceSetupURL:v18];

  JSStoreFlowSegue.sourceApplicationBundleIdentifier.getter();
  if (v20)
  {
    v21 = sub_AB9260();
  }

  else
  {
    v21 = 0;
  }

  [v16 setSourceApplicationBundleIdentifier:v21];

  JSStoreFlowSegue.referrerURL.getter();
  v23 = sub_AB31C0();
  v24 = *(v23 - 8);
  v26 = 0;
  if ((*(v24 + 48))(v9, 1, v23) != 1)
  {
    sub_AB30F0(v25);
    v26 = v27;
    (*(v24 + 8))(v9, v23);
  }

  [v16 setReferrerURL:v26];

  if (JSStoreFlowSegue.userInfo.getter())
  {
    v28.super.isa = sub_AB8FD0().super.isa;
  }

  else
  {
    v28.super.isa = 0;
  }

  [v16 setUserInfo:v28.super.isa];

  if ((a3 & 1) == 0)
  {
    goto LABEL_21;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_21;
  }

  v30 = Strong;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31 || (v32 = v31, v33 = [v31 configuration], v34 = objc_msgSend(v33, "targetsFinanceApplication"), v33, !v34))
  {

LABEL_21:
    v41 = [objc_allocWithZone(SKCloudServiceSetupConfiguration) init];
    v42 = sub_AB9260();
    [v41 setApplicationIdentifier:v42];

    v43 = sub_AB9260();
    [v41 setApplicationVersion:v43];

    [v41 setTargetsFinanceApplication:a3 & 1];
    v44 = [objc_allocWithZone(SKCloudServiceSetupViewController) initWithConfiguration:v41];
    [v44 reloadWithContext:v16];
    [v44 setModalPresentationStyle:2];
    [v44 setDelegate:v4];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v44, 0, 1, 0, 0);
    sub_D7348(&v54);
    LODWORD(v43) = v55;
    sub_12E1C(&v54, &qword_DEE460);
    if (v43 == 1)
    {
      if (qword_DE67F0 != -1)
      {
        swift_once();
      }

      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();
      v53[16] = 0;
      swift_beginAccess();
      sub_2E5440(v53, v4);
      swift_endAccess();
    }

    v45 = *JSBridge.shared.unsafeMutableAddressor();
    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v4;
    v47 = *&stru_B8.segname[(swift_isaMask & *v45) + 16];
    v48 = v4;
    v38 = v45;
    v39 = v44;
    v47(sub_DB9E0, v46);

    goto LABEL_26;
  }

  [v32 reloadWithContext:v16];
  v35 = *JSBridge.shared.unsafeMutableAddressor();
  v36 = swift_allocObject();
  *(v36 + 16) = v32;
  *(v36 + 24) = v4;
  v37 = *&stru_B8.segname[(swift_isaMask & *v35) + 16];
  v38 = v35;
  v39 = v30;
  v40 = v4;
  v37(sub_DBA0C, v36);
LABEL_26:

  sub_414AFC(&v54);
  if (*(&v55 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    v49 = swift_unknownObjectWeakLoadStrong();
    if (v49)
    {
      v50 = v49;
      _s30CollectionViewSelectionHandlerVMa();
      isa = sub_AB3770().super.isa;
      [v50 deselectItemAtIndexPath:isa animated:1];
      sub_1611C(v62);
    }

    else
    {
      sub_1611C(v62);
    }

    __swift_destroy_boxed_opaque_existential_0(&v54);
  }

  else
  {
    sub_1611C(v62);
    sub_12E1C(&v54, &unk_DE8E30);
  }
}

int *sub_D8CB8()
{
  result = sub_97D48(_swiftEmptyArrayStorage);
  off_DEE440 = result;
  return result;
}

Swift::Void __swiftcall JSStoreFlowSegue.cloudServiceSetupViewControllerDidDismiss(_:)(SKCloudServiceSetupViewController a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_D724C();
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector:"cloudServiceSetupViewControllerDidDismiss:"])
    {
      [v5 cloudServiceSetupViewControllerDidDismiss:a1.super.super.super.isa];
    }

    swift_unknownObjectRelease();
  }

  v6 = *JSBridge.shared.unsafeMutableAddressor();
  v7 = swift_allocObject();
  v7[2].super.super.super.isa = a1.super.super.super.isa;
  v7[3].super.super.super.isa = v1;
  v7[4].super.super.super.isa = ObjectType;
  v8 = *&stru_B8.segname[(swift_isaMask & *v6) + 16];
  v9 = v6;
  v10 = a1.super.super.super.isa;
  v11 = v1;
  v8(sub_D8EE8, v7);
}

uint64_t sub_D8E00(uint64_t a1, uint64_t a2, void *a3)
{
  JSStoreFlowPresentationCoordinator.viewControllerDidDismiss(_:from:)(a2, a3);
  if (qword_DE67F0 != -1)
  {
    swift_once();
  }

  v5[0] = 0;
  v5[1] = 0;
  v6 = 1;
  swift_beginAccess();
  sub_2E5440(v5, a3);
  return swift_endAccess();
}

uint64_t sub_D8EA8()
{

  return swift_deallocObject();
}

void JSStoreFlowSegue.webViewController(_:handle:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4)
{
  sub_D7348(v13);
  if (v14)
  {
    sub_12E1C(v13, &qword_DEE460);
LABEL_5:
    v11 = sub_AB9260();
    v12 = sub_AB9260();
    v9 = AMSError();

    a3(0, v9);
    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_DA7FC(v13);
  if (!Strong)
  {
    goto LABEL_5;
  }

  v8 = [objc_allocWithZone(AMSUIAlertDialogTask) initWithRequest:a2 presentingViewController:Strong];
  v9 = [v8 present];
  v16 = a3;
  v17 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v14 = sub_DBA68;
  v15 = &block_descriptor_27;
  v10 = _Block_copy(v13);

  [v9 addFinishBlock:v10];
  _Block_release(v10);

LABEL_6:
}

uint64_t JSStoreFlowSegue.dynamicViewController(_:contentViewWith:frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(type metadata accessor for UpsellArtworkGrid());

  return sub_3624F4(a1, a2, a3, a4);
}

uint64_t sub_D950C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DEE448);
  __swift_project_value_buffer(v0, qword_DEE448);
  return static Logger.music(_:)();
}

id sub_D970C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommerceNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_D9758@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_808B0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_D97A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570);
  __chkstk_darwin(v10 - 8);
  v12 = &v37[-v11 - 8];
  sub_15F84(a4 + 24, v47, &unk_DE8E40);
  if (!v48)
  {
    sub_12E1C(v47, &unk_DE8E40);
    v18 = _s23MusicPerformanceContextVMa();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    goto LABEL_9;
  }

  v13 = _s23MusicPerformanceContextVMa();
  v14 = swift_dynamicCast();
  v15 = *(v13 - 8);
  (*(v15 + 56))(v12, v14 ^ 1u, 1, v13);
  if ((*(v15 + 48))(v12, 1, v13) == 1)
  {
LABEL_9:
    sub_12E1C(v12, &unk_DEE570);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 1;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    goto LABEL_10;
  }

  sub_15F84(v12, &v39, &unk_DEA520);
  sub_DB5CC(v12, _s23MusicPerformanceContextVMa);
  if (v43 == 1)
  {
LABEL_10:
    v19 = &unk_DEA520;
    return sub_12E1C(&v39, v19);
  }

  sub_17704(&v39, v47);
  v16 = sub_D9D54(a3, a1, a2, a4, a5);
  if (!v16)
  {
    return sub_1611C(v47);
  }

  v17 = v16;
  sub_D7348(&v39);
  if (v40)
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    if (v40 != 1)
    {
      sub_12E1C(&v39, &qword_DEE460);
    }
  }

  else
  {
    sub_9AFE0(&v39, v38);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  v22 = *JSBridge.shared.unsafeMutableAddressor();
  v23 = swift_allocObject();
  *(v23 + 16) = v17;
  *(v23 + 24) = a5;
  v24 = *&stru_B8.segname[(swift_isaMask & *v22) + 16];
  v25 = v22;
  v26 = v17;
  v27 = a5;
  v24(sub_DBA4C, v23);

  v28 = [objc_allocWithZone(type metadata accessor for CommerceNavigationController()) init];
  [v28 setModalPresentationStyle:2];
  [v28 pushViewController:v26 animated:0];
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  v30 = &v28[OBJC_IVAR____TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController_dismissCallback];
  v31 = *&v28[OBJC_IVAR____TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController_dismissCallback];
  *v30 = sub_DB580;
  v30[1] = v29;
  v32 = v27;
  sub_17654(v31);
  if (qword_DE67F0 != -1)
  {
    swift_once();
  }

  sub_DB588(v38, v37);
  v37[16] = 0;
  swift_beginAccess();
  sub_2E5440(v37, v32);
  swift_endAccess();
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v28, 0, 1, 0, 0);
  sub_414AFC(&v39);
  if (!*(&v40 + 1))
  {

    sub_DA7FC(v38);
    sub_1611C(v47);
    v19 = &unk_DE8E30;
    return sub_12E1C(&v39, v19);
  }

  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    _s30CollectionViewSelectionHandlerVMa();
    isa = sub_AB3770().super.isa;
    [v34 deselectItemAtIndexPath:isa animated:1];

    sub_DA7FC(v38);
    sub_1611C(v47);
  }

  else
  {

    sub_DA7FC(v38);
    sub_1611C(v47);
  }

  return __swift_destroy_boxed_opaque_existential_0(&v39);
}

uint64_t sub_D9D54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_13C80(0, &qword_DF0600);
  v8 = static ICUserIdentityStore.activeAccountDSID.getter();
  v9 = v8;
  if (v8)
  {
    v10 = [v8 longLongValue];
  }

  else
  {
    v10 = 0;
  }

  sub_2D384(a4, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580);
  inited = swift_initStackObject();
  v12 = inited;
  *(inited + 32) = 7368801;
  *(inited + 16) = xmmword_AF8600;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 0x6C7070612E6D6F63;
  *(inited + 56) = 0xEF636973754D2E65;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6369706F74;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = 0xD000000000000011;
  *(inited + 104) = 0x8000000000B4FE20;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 1682535268;
  *(inited + 136) = 0xE400000000000000;
  if (v9)
  {
    v41 = &type metadata for Int64;
    *&v40 = v10;
    sub_9ACFC(&v40, (inited + 144));
  }

  else
  {
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 0;
    *(inited + 152) = 0xE000000000000000;
  }

  *(v12 + 176) = 0x746E6F4365676170;
  *(v12 + 184) = 0xEB00000000747865;
  *(v12 + 192) = 0;
  *(v12 + 200) = 0xE000000000000000;
  *(v12 + 216) = &type metadata for String;
  *(v12 + 224) = 0x6174654465676170;
  *(v12 + 232) = 0xEB00000000736C69;
  v13 = sub_D7688(v42);
  sub_16170(v42);
  v14 = a3;
  if (v13)
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE590);
    *&v40 = v13;
    sub_9ACFC(&v40, (v12 + 240));
  }

  else
  {
    *(v12 + 264) = &type metadata for String;
    *(v12 + 240) = 0;
    *(v12 + 248) = 0xE000000000000000;
  }

  v15 = sub_97420(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0);
  swift_arrayDestroy();
  v16 = JSStoreFlowSegue.scriptingMetricsOverlay.getter();
  if (v16)
  {
    v17 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40 = v15;
    sub_DA3C8(v17, sub_D9758, 0, isUniquelyReferenced_nonNull_native, &v40);

    v15 = v40;
  }

  if (a1 == 2)
  {
    v19 = objc_allocWithZone(AMSUIDynamicViewController);
    sub_AB30F0(v20);
    v22 = v21;
    v23 = [v19 initWithBag:a3 URL:v21];

    [v23 setDelegate:a5];
    v24 = [objc_opt_self() ams_sharedAccountStore];
    v25 = [v24 ams_activeiTunesAccount];

    [v23 setAccount:v25];
    sub_3E8814(v15);
    isa = sub_AB8FD0().super.isa;

    [v23 setMetricsOverlay:isa];

    if (JSStoreFlowSegue.userInfo.getter())
    {
      v27.super.isa = sub_AB8FD0().super.isa;
    }

    else
    {
      v27.super.isa = 0;
    }

    [v23 setClientOptions:v27.super.isa];

    v35 = sub_AB9260();
    [v23 setMediaClientIdentifier:v35];

    v36 = [objc_opt_self() bagKeySet];
    if (v36)
    {
      v37 = v36;

      v34 = [v14 profile];
      if (!v34)
      {
        sub_AB92A0();
        v34 = sub_AB9260();
      }

      v33 = [v14 profileVersion];
      if (!v33)
      {
        sub_AB92A0();
        v33 = sub_AB9260();
      }

      [objc_opt_self() registerBagKeySet:v37 forProfile:v34 profileVersion:v33];

      goto LABEL_24;
    }

    __break(1u);
  }

  else if (!a1)
  {
    v28 = [objc_opt_self() ams_sharedAccountStore];
    v29 = [v28 ams_activeiTunesAccount];

    v23 = [objc_allocWithZone(AMSUIWebViewController) initWithBag:a3 account:v29 clientInfo:0];
    [v23 setDelegate:a5];
    v30 = sub_AB8FD0().super.isa;

    [v23 setMetricsOverlay:v30];

    sub_AB30F0(v31);
    v33 = v32;
    v34 = [v23 loadURL:v32];
LABEL_24:

    return v23;
  }

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

unint64_t sub_DA3C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1B6194(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_9ACFC(v44, v42);
  v14 = *a5;
  result = sub_2EBF88(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_329034(v20, a4 & 1);
    result = sub_2EBF88(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_ABB4C0();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_331FD8();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_9ACFC(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_9ACFC(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1B6194(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_9ACFC(v44, v42);
        v32 = *a5;
        result = sub_2EBF88(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_329034(v36, 1);
          result = sub_2EBF88(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_9ACFC(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_9ACFC(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1B6194(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_2BB88();
  }

LABEL_27:
  __break(1u);
  return result;
}

void _s11MusicJSCore16JSStoreFlowSegueC0A11ApplicationE17webViewController_6handle10completionySo08AMSUIWebhI0C_So22AMSAuthenticateRequestCySo0M6ResultCSg_s5Error_pSgtctF_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = PresentationSource.PresentingViewControllerOptions.allowsPresentation.unsafeMutableAddressor();
  v9 = static PresentationSource.topmostPresentedViewController(from:options:)(a1, *v8);
  v10 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithRequest:a2 presentingViewController:v9];
  v11 = [v10 performAuthentication];
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_151E0;
  v13[3] = &block_descriptor_60;
  v12 = _Block_copy(v13);

  [v11 addFinishBlock:v12];
  _Block_release(v12);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_DA844(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  sub_D7348(v12);
  if (v13)
  {
    sub_12E1C(v12, &qword_DEE460);
LABEL_5:
    v10 = sub_AB9260();
    v11 = sub_AB9260();
    v7 = AMSError();

    v8 = sub_AB3040();
    (a3)[2](a3, 0, v8);

    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_DA7FC(v12);
  if (!Strong)
  {
    goto LABEL_5;
  }

  v7 = [objc_allocWithZone(AMSUIAlertDialogTask) initWithRequest:a1 presentingViewController:Strong];
  v8 = [v7 present];
  v15 = sub_DB118;
  v16 = v5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v13 = sub_DBA68;
  v14 = &block_descriptor_21;
  v9 = _Block_copy(v12);

  [v8 addFinishBlock:v9];
  _Block_release(v9);

LABEL_6:
}

void sub_DAA6C(void *a1, uint64_t a2)
{
  if (a1)
  {
    JSStoreFlowSegue.didCompleteSubscriptionPurchase.setter();
    v3 = [a1 responseDictionary];
    if (v3)
    {
      v4 = v3;
      v5 = sub_AB8FF0();

      sub_ABAD10();
      if (*(v5 + 16) && (v6 = sub_2EC004(v22), (v7 & 1) != 0))
      {
        sub_808B0(*(v5 + 56) + 32 * v6, v23);
        sub_8085C(v22);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680);
        if (swift_dynamicCast())
        {
          JSStoreFlowSegue.subscriptionStatus.setter();
        }
      }

      else
      {
        sub_8085C(v22);
      }
    }

    v16 = [objc_opt_self() sharedController];
    [v16 refreshMusicSubscriptionStatus];

    if (qword_DE67F8 != -1)
    {
      swift_once();
    }

    v17 = sub_AB4BC0();
    __swift_project_value_buffer(v17, qword_DEE448);
    v18 = sub_AB4BA0();
    v19 = sub_AB9F50();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Did complete subscription purchase.", v20, 2u);
    }
  }

  else
  {
    JSStoreFlowSegue.didCompleteSubscriptionPurchase.setter();
    if (a2)
    {
      swift_errorRetain();
      if (qword_DE67F8 != -1)
      {
        swift_once();
      }

      v9 = sub_AB4BC0();
      __swift_project_value_buffer(v9, qword_DEE448);
      swift_errorRetain();
      oslog = sub_AB4BA0();
      v10 = sub_AB9F30();

      if (os_log_type_enabled(oslog, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v22[0] = v12;
        *v11 = 136315138;
        swift_getErrorValue();
        v13 = sub_ABB520();
        v15 = sub_425E68(v13, v14, v22);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_0, oslog, v10, "Subscription purchase failed with error: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
      }

      else
      {
      }
    }
  }
}

void sub_DAE24(uint64_t a1)
{
  if (a1)
  {
    if (qword_DE67F8 != -1)
    {
      swift_once();
    }

    v1 = sub_AB4BC0();
    __swift_project_value_buffer(v1, qword_DEE448);
    swift_errorRetain();
    oslog = sub_AB4BA0();
    v2 = sub_AB9F30();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v13 = v4;
      *v3 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE5A0);
      v5 = sub_ABA9B0();
      v7 = sub_425E68(v5, v6, &v13);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_0, oslog, v2, "Carrier linking failed with error: %s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v4);

      return;
    }
  }

  else
  {
    JSStoreFlowSegue.didFinishLinkingWithCarrier.setter();
    v8 = [objc_opt_self() sharedController];
    [v8 refreshMusicSubscriptionStatus];

    if (qword_DE67F8 != -1)
    {
      swift_once();
    }

    v9 = sub_AB4BC0();
    __swift_project_value_buffer(v9, qword_DEE448);
    oslog = sub_AB4BA0();
    v10 = sub_AB9F50();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, oslog, v10, "Did finish carrier linking.", v11, 2u);
    }
  }
}

uint64_t sub_DB0E0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_DB124(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_AB31C0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);

  return sub_D6E00(a1, a2, v8, v2 + v6, v9, v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
}