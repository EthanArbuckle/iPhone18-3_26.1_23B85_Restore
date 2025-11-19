uint64_t CanvasElementResizeHandle.hitHandle(_:with:)(void *a1, CGFloat a2, CGFloat a3)
{
  if (v3[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_enabled] != 1)
  {
    return 0;
  }

  [v3 bounds];
  v21.x = a2;
  v21.y = a3;
  v7 = CGRectContainsPoint(v23, v21);
  [v3 bounds];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MidY = CGRectGetMidY(v25);
  if (!a1)
  {
    if (v7)
    {
      return sqrt((MidX - a2) * (MidX - a2) + (MidY - a3) * (MidY - a3));
    }

    goto LABEL_10;
  }

  v14 = a1;
  if ([v14 PK_isEventFromPencil])
  {

    if (!v7)
    {
      return 0;
    }

    return sqrt((MidX - a2) * (MidX - a2) + (MidY - a3) * (MidY - a3));
  }

  v15 = [v14 buttonMask];

  if (v7)
  {
    return sqrt((MidX - a2) * (MidX - a2) + (MidY - a3) * (MidY - a3));
  }

  if (!v15)
  {
LABEL_10:
    [v3 bounds];
    v16 = 44.0 - CGRectGetWidth(v26);
    if (v16 > 0.0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0.0;
    }

    [v3 bounds];
    v18 = 44.0 - CGRectGetHeight(v27);
    if (v18 > 0.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0.0;
    }

    [v3 bounds];
    v29 = CGRectInset(v28, v17 * -0.5, v19 * -0.5);
    v22.x = a2;
    v22.y = a3;
    if (!CGRectContainsPoint(v29, v22))
    {
      return 0;
    }

    return sqrt((MidX - a2) * (MidX - a2) + (MidY - a3) * (MidY - a3));
  }

  return 0;
}

uint64_t CanvasElementResizeHandle.accessibilityLabel()()
{
  if (*(v0 + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_enabled) != 1)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type);
  if (v1 > 3)
  {
    if (*(v0 + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type) > 5u)
    {
      if (v1 == 6)
      {
        if (one-time initialization token for paperKitBundle != -1)
        {
          swift_once();
        }

        isa = paperKitBundle.super.isa;
        v10 = 0x80000001D4085FB0;
        v3 = 0x617A696C61636F4CLL;
        v4 = 0xEB00000000656C62;
        v5 = 0xD000000000000019;
        v6 = 0x80000001D4085F90;
        v7 = 0xD000000000000034;
      }

      else
      {
        if (one-time initialization token for paperKitBundle != -1)
        {
          swift_once();
        }

        isa = paperKitBundle.super.isa;
        v10 = 0x80000001D4085F60;
        v3 = 0x617A696C61636F4CLL;
        v4 = 0xEB00000000656C62;
        v5 = 0xD000000000000012;
        v6 = 0x80000001D4085F40;
        v7 = 0xD00000000000002DLL;
      }
    }

    else if (v1 == 4)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      isa = paperKitBundle.super.isa;
      v10 = 0x80000001D4086060;
      v3 = 0x617A696C61636F4CLL;
      v4 = 0xEB00000000656C62;
      v5 = 0xD00000000000001ALL;
      v6 = 0x80000001D4086040;
      v7 = 0xD000000000000035;
    }

    else
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      isa = paperKitBundle.super.isa;
      v10 = 0x80000001D4086010;
      v3 = 0x617A696C61636F4CLL;
      v4 = 0xEB00000000656C62;
      v5 = 0xD000000000000014;
      v6 = 0x80000001D4085FF0;
      v7 = 0xD00000000000002FLL;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type) > 1u)
  {
    if (v1 == 2)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      isa = paperKitBundle.super.isa;
      v10 = 0x80000001D4086110;
      v3 = 0x617A696C61636F4CLL;
      v4 = 0xEB00000000656C62;
      v5 = 0xD000000000000017;
      v6 = 0x80000001D40860F0;
      v7 = 0xD000000000000032;
    }

    else
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      isa = paperKitBundle.super.isa;
      v10 = 0x80000001D40860C0;
      v3 = 0x617A696C61636F4CLL;
      v4 = 0xEB00000000656C62;
      v5 = 0xD000000000000013;
      v6 = 0x80000001D40860A0;
      v7 = 0xD00000000000002ELL;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type))
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    isa = paperKitBundle.super.isa;
    v10 = 0x80000001D4086170;
    v3 = 0x617A696C61636F4CLL;
    v4 = 0xEB00000000656C62;
    v6 = 0x80000001D4086150;
    v7 = 0xD00000000000002CLL;
    v5 = 0xD000000000000011;
  }

  else
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    isa = paperKitBundle.super.isa;
    v10 = 0x80000001D40861C0;
    v3 = 0x617A696C61636F4CLL;
    v4 = 0xEB00000000656C62;
    v5 = 0xD000000000000016;
    v6 = 0x80000001D40861A0;
    v7 = 0xD000000000000031;
  }

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, *&v3, isa, v9, *&v7)._countAndFlagsBits;
}

unint64_t one-time initialization function for handleImageCache()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo7UIColorC_So7UIImageCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static CanvasElementResizeHandle.handleImageCache = result;
  return result;
}

void closure #1 in static CanvasElementResizeHandle.handleImage(color:)(CGFloat a1, CGFloat a2, uint64_t a3, void *a4)
{
  if (one-time initialization token for resizeHandleInset != -1)
  {
    swift_once();
  }

  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = a1;
  v10.size.height = a2;
  v11 = CGRectInset(v10, *&static UIConstants.resizeHandleInset, *&static UIConstants.resizeHandleInset);
  v8 = [objc_opt_self() bezierPathWithOvalInRect_];
  [a4 set];
  [v8 fill];
  v7 = [objc_opt_self() whiteColor];
  [v7 set];

  if (one-time initialization token for resizeHandleEdgeWidth != -1)
  {
    swift_once();
  }

  [v8 setLineWidth_];
  [v8 stroke];
}

uint64_t one-time initialization function for disabledImage()
{
  if (one-time initialization token for resizeHandleSize != -1)
  {
    swift_once();
  }

  v0 = *&static UIConstants.resizeHandleSize;
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in closure #1 in variable initialization expression of static CanvasElementResizeHandle.disabledImage;
  *(v3 + 24) = v2;
  v7[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v7[3] = &block_descriptor_52;
  v4 = _Block_copy(v7);

  v5 = [v1 imageWithActions_];

  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    static CanvasElementResizeHandle.disabledImage = v5;
  }

  return result;
}

void closure #1 in closure #1 in variable initialization expression of static CanvasElementResizeHandle.disabledImage(CGFloat a1, CGFloat a2)
{
  if (one-time initialization token for resizeHandleInset != -1)
  {
    swift_once();
  }

  v4 = *&static UIConstants.resizeHandleInset;
  v5 = *&static UIConstants.resizeHandleInset;
  if (one-time initialization token for resizeHandleEdgeWidth != -1)
  {
    swift_once();
    v5 = *&static UIConstants.resizeHandleInset;
  }

  v6 = v5 + *&static UIConstants.resizeHandleEdgeWidth * 0.5;
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = a1;
  v9.size.height = a2;
  v10 = CGRectInset(v9, v4 + *&static UIConstants.resizeHandleEdgeWidth * 0.5, v6);
  v7 = [objc_opt_self() bezierPathWithOvalInRect_];
  if (one-time initialization token for resizeHandleColorDisabled != -1)
  {
    swift_once();
  }

  [static UIConstants.resizeHandleColorDisabled set];
  [v7 fill];
}

Swift::Void __swiftcall CanvasElementResizeHandle.didMoveToWindow()()
{
  v1 = [v0 layer];
  v2 = [v1 contents];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v14);
    return;
  }

  memset(v14, 0, sizeof(v14));
  outlined destroy of Any?(v14);
  v3 = [v0 window];
  if (v3)
  {
    v4 = v3;
    if (v0[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_enabled] != 1)
    {
      v5 = [v0 layer];
      if (one-time initialization token for disabledImage != -1)
      {
        swift_once();
      }

      v6 = [static CanvasElementResizeHandle.disabledImage CGImage];
      [v5 setContents_];

      goto LABEL_25;
    }

    if (v0[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_category] > 1u)
    {
      if (v0[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_category] == 2)
      {
LABEL_12:
        v7 = v3;
        v8 = [v7 tintColor];
        if (!v8)
        {
          if (one-time initialization token for resizeHandleColor != -1)
          {
            swift_once();
          }

          v8 = static UIConstants.resizeHandleColor;
        }

        v9 = v8;

        goto LABEL_24;
      }

      if (one-time initialization token for resizeHandleColorReflow != -1)
      {
        swift_once();
      }

      v10 = static UIConstants.resizeHandleColorReflow;
    }

    else
    {
      if (!v0[OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_category])
      {
        goto LABEL_12;
      }

      if (one-time initialization token for resizeHandleColorControl != -1)
      {
        swift_once();
      }

      v10 = static UIConstants.resizeHandleColorControl;
    }

    v9 = v10;
LABEL_24:
    v6 = v9;
    v11 = [v0 layer];
    v12 = specialized static CanvasElementResizeHandle.handleImage(color:)(v6);

    v13 = [v12 CGImage];
    [v11 setContents_];

LABEL_25:
  }
}

uint64_t CanvasElementResizeHandle.pointerAccessories()()
{
  v1 = type metadata accessor for UIPointerAccessory.Position();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC8PaperKit25CanvasElementResizeHandle_type);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D405B640;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerAccessory);
  v7 = (v2 + 8);
  if (v5 > 3)
  {
    if (v5 <= 5)
    {
      if (v5 == 4)
      {
        goto LABEL_4;
      }

LABEL_7:
      static UIPointerAccessory.Position.top.getter();
      v10 = static UIPointerAccessory.arrow(_:)();
      v9 = *v7;
      (*v7)(v4, v1);
      *(v6 + 32) = v10;
      static UIPointerAccessory.Position.bottom.getter();
      goto LABEL_12;
    }

    if (v5 == 6)
    {
LABEL_9:
      static UIPointerAccessory.Position.bottomLeft.getter();
      v11 = static UIPointerAccessory.arrow(_:)();
      v9 = *v7;
      (*v7)(v4, v1);
      *(v6 + 32) = v11;
      static UIPointerAccessory.Position.topRight.getter();
      goto LABEL_12;
    }

LABEL_11:
    static UIPointerAccessory.Position.left.getter();
    v12 = static UIPointerAccessory.arrow(_:)();
    v9 = *v7;
    (*v7)(v4, v1);
    *(v6 + 32) = v12;
    static UIPointerAccessory.Position.right.getter();
    goto LABEL_12;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  static UIPointerAccessory.Position.topLeft.getter();
  v8 = static UIPointerAccessory.arrow(_:)();
  v9 = *v7;
  (*v7)(v4, v1);
  *(v6 + 32) = v8;
  static UIPointerAccessory.Position.bottomRight.getter();
LABEL_12:
  v13 = static UIPointerAccessory.arrow(_:)();
  v9(v4, v1);
  *(v6 + 40) = v13;
  return v6;
}

id ControlHandleView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type ResizeHandleCategory and conformance ResizeHandleCategory()
{
  result = lazy protocol witness table cache variable for type ResizeHandleCategory and conformance ResizeHandleCategory;
  if (!lazy protocol witness table cache variable for type ResizeHandleCategory and conformance ResizeHandleCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResizeHandleCategory and conformance ResizeHandleCategory);
  }

  return result;
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo8NSObjectC_yXlTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSObjectCyXlGMd);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    if (__CocoaDictionary.Iterator.next()())
    {
      v4 = v3;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
      do
      {
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v6 = v19 + 64;
        v7 = -1 << *(v19 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v9 == v15;
            if (v9 == v15)
            {
              v9 = 0;
            }

            v14 |= v16;
            v17 = *(v6 + 8 * v9);
          }

          while (v17 == -1);
          v10 = __clz(__rbit64(~v17)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v19 + 48) + 8 * v10) = v18;
        *(*(v19 + 56) + 8 * v10) = v4;
        ++*(v19 + 16);
        v11 = __CocoaDictionary.Iterator.next()();
        v4 = v12;
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo7UIColorC_So7UIImageCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo7UIColorCSo7UIImageCGMd);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIImage);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo13PDFAnnotationC_8PaperKit20AnyCanvasElementViewCTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo13PDFAnnotationC8PaperKit20AnyCanvasElementViewCGMd);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for AnyCanvasElementView();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

unint64_t specialized ResizeHandleType.init(rawValue:)(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

id specialized ControlHandleView.pointerInteraction(_:styleFor:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for UIPointerEffect();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [a1 view];
  if (result)
  {
    v11 = result;
    v12 = [result window];
    if (v12)
    {

      v13 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerStyle);
      *v9 = v13;
      (*(v6 + 104))(v9, *MEMORY[0x1E69DBF70], v5);
      v14 = type metadata accessor for UIPointerShape();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
      v15 = v13;
      v16 = UIPointerStyle.init(effect:shape:)();
      ControlHandleView.pointerAccessories()();
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerAccessory);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v16 setAccessories_];

      return v16;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t specialized static CanvasElementResizeHandle.handleImage(color:)(void *a1)
{
  if (one-time initialization token for handleImageCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = specialized Dictionary.subscript.getter(a1, static CanvasElementResizeHandle.handleImageCache);
  if (v2)
  {
    v3 = v2;
    swift_endAccess();
    return v3;
  }

  swift_endAccess();
  if (one-time initialization token for resizeHandleSize != -1)
  {
    swift_once();
  }

  v4 = *&static UIConstants.resizeHandleSize;
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v4;
  *(v6 + 4) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in static CanvasElementResizeHandle.handleImage(color:);
  *(v7 + 24) = v6;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  aBlock[3] = &block_descriptor_16;
  v8 = _Block_copy(aBlock);
  v9 = a1;

  v3 = [v5 imageWithActions_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    if ((static CanvasElementResizeHandle.handleImageCache & 0xC000000000000001) == 0)
    {
      v13 = v3;
      goto LABEL_15;
    }

    if (static CanvasElementResizeHandle.handleImageCache < 0)
    {
      v11 = static CanvasElementResizeHandle.handleImageCache;
    }

    else
    {
      v11 = static CanvasElementResizeHandle.handleImageCache & 0xFFFFFFFFFFFFFF8;
    }

    v12 = v3;
    result = __CocoaSet.count.getter();
    if (!__OFADD__(result, 1))
    {
      static CanvasElementResizeHandle.handleImageCache = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo7UIColorC_So7UIImageCTt1g5(v11, result + 1);
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = static CanvasElementResizeHandle.handleImageCache;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v9, isUniquelyReferenced_nonNull_native);
      static CanvasElementResizeHandle.handleImageCache = v15;
      swift_endAccess();

      return v3;
    }
  }

  __break(1u);
  return result;
}

id specialized CanvasElementResizeHandle.pointerInteraction(_:styleFor:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit14UIPointerShapeOSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for UIPointerEffect();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [a1 view];
  if (result)
  {
    v12 = result;
    v13 = [result window];
    if (v13)
    {

      v14 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerStyle);
      *v10 = v14;
      (*(v7 + 104))(v10, *MEMORY[0x1E69DBF70], v6);
      v15 = type metadata accessor for UIPointerShape();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      v16 = v14;
      v17 = UIPointerStyle.init(effect:shape:)();
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0xD8))();
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIPointerAccessory);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v17 setAccessories_];

      return v17;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9Coherence15SharedTagged_10Vy8PaperKit0f6CanvasB0VGG_ALs5NeverOTg503_s8g14Kit22Containerib122PAA9Coherence4CRDTRzrlE16_applyDifference2id2in4fromyAD9CRKeyPathV_AD7CapsuleV3RefCyqd___GAMyAA0A8DocumentVGtAdERd__lFAD15eF21_10VyAA0sdE0VGAXXEfU_SDyAF0uV0VALGTf1cn_n(uint64_t a1, uint64_t *a2)
{
  v45 = a2;
  v44 = type metadata accessor for CRKeyPath();
  v4 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = v34 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v34 - v13;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v34[1] = v2;
    v56 = MEMORY[0x1E69E7CC0];
    v17 = v4;
    v18 = v12;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v56;
    v41 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v42 = v6;
    v19 = a1 + v41;
    v40 = (v17 + 8);
    v35 = (v18 + 8);
    v36 = v14;
    v46 = *(v18 + 72);
    v47 = (v18 + 16);
    v43 = (v18 + 32);
    do
    {
      MEMORY[0x1DA6CB7A0](v7);
      v20 = *v45;
      if (*(*v45 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v22 & 1) != 0))
      {
        v23 = *(v20 + 56) + v21 * v46;
        v24 = v6;
        v25 = *v47;
        v26 = v39;
        v27 = v37;
        (*v47)(v37, v23, v7);
        (*v40)(v24, v44);
        v28 = v27;
        v29 = v43;
        v38 = *v43;
        v38(v26, v28, v7);
        WeakTagged_10.tag.getter();
        v52 = v54;
        v53 = v55;
        WeakTagged_10.tag.getter();
        v48 = v50;
        v49 = v51;
        lazy protocol witness table accessor for type TaggedCanvasElement.Enum and conformance TaggedCanvasElement.Enum();
        if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
        {
          v14 = v36;
          v38(v36, v39, v7);
          goto LABEL_9;
        }

        (*v35)(v39, v7);
        v14 = v36;
      }

      else
      {
        (*v40)(v6, v44);
        v25 = *v47;
        v29 = v43;
      }

      v25(v14, v19, v7);
LABEL_9:
      v56 = v16;
      v31 = *(v16 + 16);
      v30 = *(v16 + 24);
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30 > 1, v31 + 1, 1);
        v29 = v43;
        v16 = v56;
      }

      *(v16 + 16) = v31 + 1;
      v32 = v46;
      (*v29)(v16 + v41 + v31 * v46, v14, v7);
      v19 += v32;
      --v15;
      v6 = v42;
    }

    while (v15);
  }

  return v16;
}

uint64_t specialized CRRegister<>.setIfDifferent(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  CRRegister.value.getter();
  result = v8;
  if (!v8)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v7 == a1 && v8 == a2)
  {
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
LABEL_12:

    return CRRegister.value.setter();
  }

  return result;
}

uint64_t specialized CRRegister<>.setIfDifferent(_:)(uint64_t a1)
{
  v3 = type metadata accessor for SignatureValue(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v23[0] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSg_ADtMd);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14SignatureValueVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v24 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14SignatureValueVSgGMd);
  v25 = v1;
  CRRegister.value.getter();
  v18 = *(v7 + 56);
  outlined init with copy of Date?(v17, v9, &_s8PaperKit14SignatureValueVSgMd);
  outlined init with copy of Date?(a1, &v9[v18], &_s8PaperKit14SignatureValueVSgMd);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit14SignatureValueVSgMd);
    if (v19(&v9[v18], 1, v3) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit14SignatureValueVSgMd);
    }

    goto LABEL_6;
  }

  outlined init with copy of Date?(v9, v14, &_s8PaperKit14SignatureValueVSgMd);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit14SignatureValueVSgMd);
    _s8PaperKit0A0VWOhTm_3(v14, type metadata accessor for SignatureValue);
LABEL_6:
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit14SignatureValueVSg_ADtMd);
LABEL_7:
    outlined init with copy of Date?(a1, v24, &_s8PaperKit14SignatureValueVSgMd);
    return CRRegister.value.setter();
  }

  v21 = v23[0];
  _s8PaperKit0A0VWObTm_1(&v9[v18], v23[0], type metadata accessor for SignatureValue);
  v22 = specialized static SignatureValue.== infix(_:_:)(v14, v21);
  _s8PaperKit0A0VWOhTm_3(v21, type metadata accessor for SignatureValue);
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit14SignatureValueVSgMd);
  _s8PaperKit0A0VWOhTm_3(v14, type metadata accessor for SignatureValue);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit14SignatureValueVSgMd);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v27 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DateVSgGMd);
  v29 = v1;
  CRRegister.value.getter();
  v18 = *(v7 + 56);
  outlined init with copy of Date?(v17, v9, &_s10Foundation4DateVSgMd);
  v28 = a1;
  outlined init with copy of Date?(a1, &v9[v18], &_s10Foundation4DateVSgMd);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s10Foundation4DateVSgMd);
    if (v19(&v9[v18], 1, v3) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s10Foundation4DateVSgMd);
    }

    goto LABEL_6;
  }

  outlined init with copy of Date?(v9, v14, &_s10Foundation4DateVSgMd);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s10Foundation4DateVSgMd);
    (*(v4 + 8))(v14, v3);
LABEL_6:
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s10Foundation4DateVSg_ADtMd);
LABEL_7:
    outlined init with copy of Date?(v28, v27, &_s10Foundation4DateVSgMd);
    return CRRegister.value.setter();
  }

  v21 = v25;
  (*(v4 + 32))(v25, &v9[v18], v3);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v4 + 8);
  v23(v21, v3);
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s10Foundation4DateVSgMd);
  v23(v14, v3);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s10Foundation4DateVSgMd);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_AHtMd);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v27 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7WeakRefVy8PaperKit20PDFAnnotationElementVGSgGMd);
  v29 = v1;
  CRRegister.value.getter();
  v18 = *(v7 + 56);
  outlined init with copy of Date?(v17, v9, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  v28 = a1;
  outlined init with copy of Date?(a1, &v9[v18], &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
    if (v19(&v9[v18], 1, v3) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
    }

    goto LABEL_6;
  }

  outlined init with copy of Date?(v9, v14, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
    (*(v4 + 8))(v14, v3);
LABEL_6:
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSg_AHtMd);
LABEL_7:
    outlined init with copy of Date?(v28, v27, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
    return CRRegister.value.setter();
  }

  v21 = v25;
  (*(v4 + 32))(v25, &v9[v18], v3);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<PDFAnnotationElement> and conformance WeakRef<A>, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGMd);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  v23 = *(v4 + 8);
  v23(v21, v3);
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  v23(v14, v3);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence7WeakRefVy8PaperKit20PDFAnnotationElementVGSgMd);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

{
  v3 = type metadata accessor for Color(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v23[0] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSg_ADtMd);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v24 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v25 = v1;
  CRRegister.value.getter();
  v18 = *(v7 + 56);
  outlined init with copy of Date?(v17, v9, &_s8PaperKit5ColorVSgMd);
  outlined init with copy of Date?(a1, &v9[v18], &_s8PaperKit5ColorVSgMd);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ColorVSgMd);
    if (v19(&v9[v18], 1, v3) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit5ColorVSgMd);
    }

    goto LABEL_6;
  }

  outlined init with copy of Date?(v9, v14, &_s8PaperKit5ColorVSgMd);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ColorVSgMd);
    _s8PaperKit0A0VWOhTm_3(v14, type metadata accessor for Color);
LABEL_6:
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit5ColorVSg_ADtMd);
LABEL_7:
    outlined init with copy of Date?(a1, v24, &_s8PaperKit5ColorVSgMd);
    return CRRegister.value.setter();
  }

  v21 = v23[0];
  _s8PaperKit0A0VWObTm_1(&v9[v18], v23[0], type metadata accessor for Color);
  v22 = specialized static Color.== infix(_:_:)(v14, v21);
  _s8PaperKit0A0VWOhTm_3(v21, type metadata accessor for Color);
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit5ColorVSgMd);
  _s8PaperKit0A0VWOhTm_3(v14, type metadata accessor for Color);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit5ColorVSgMd);
  if (!v22)
  {
    goto LABEL_7;
  }

  return result;
}

{
  v3 = type metadata accessor for ContentsBounds(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v23[0] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSg_ADtMd);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v24 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v25 = v1;
  CRRegister.value.getter();
  v18 = *(v7 + 56);
  outlined init with copy of Date?(v17, v9, &_s8PaperKit14ContentsBoundsOSgMd);
  outlined init with copy of Date?(a1, &v9[v18], &_s8PaperKit14ContentsBoundsOSgMd);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit14ContentsBoundsOSgMd);
    if (v19(&v9[v18], 1, v3) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit14ContentsBoundsOSgMd);
    }

    goto LABEL_6;
  }

  outlined init with copy of Date?(v9, v14, &_s8PaperKit14ContentsBoundsOSgMd);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit14ContentsBoundsOSgMd);
    _s8PaperKit0A0VWOhTm_3(v14, type metadata accessor for ContentsBounds);
LABEL_6:
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit14ContentsBoundsOSg_ADtMd);
LABEL_7:
    outlined init with copy of Date?(a1, v24, &_s8PaperKit14ContentsBoundsOSgMd);
    return CRRegister.value.setter();
  }

  v21 = v23[0];
  _s8PaperKit0A0VWObTm_1(&v9[v18], v23[0], type metadata accessor for ContentsBounds);
  v22 = specialized static ContentsBounds.== infix(_:_:)(v14, v21);
  _s8PaperKit0A0VWOhTm_3(v21, type metadata accessor for ContentsBounds);
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit14ContentsBoundsOSgMd);
  _s8PaperKit0A0VWOhTm_3(v14, type metadata accessor for ContentsBounds);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit14ContentsBoundsOSgMd);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

{
  v3 = type metadata accessor for ImageFilter(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v23[0] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSg_ADtMd);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v24 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
  v25 = v1;
  CRRegister.value.getter();
  v18 = *(v7 + 56);
  outlined init with copy of Date?(v17, v9, &_s8PaperKit11ImageFilterOSgMd);
  outlined init with copy of Date?(a1, &v9[v18], &_s8PaperKit11ImageFilterOSgMd);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit11ImageFilterOSgMd);
    if (v19(&v9[v18], 1, v3) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit11ImageFilterOSgMd);
    }

    goto LABEL_6;
  }

  outlined init with copy of Date?(v9, v14, &_s8PaperKit11ImageFilterOSgMd);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit11ImageFilterOSgMd);
    _s8PaperKit0A0VWOhTm_3(v14, type metadata accessor for ImageFilter);
LABEL_6:
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit11ImageFilterOSg_ADtMd);
LABEL_7:
    outlined init with copy of Date?(a1, v24, &_s8PaperKit11ImageFilterOSgMd);
    return CRRegister.value.setter();
  }

  v21 = v23[0];
  _s8PaperKit0A0VWObTm_1(&v9[v18], v23[0], type metadata accessor for ImageFilter);
  v22 = specialized static ImageFilter.== infix(_:_:)(v14, v21);
  _s8PaperKit0A0VWOhTm_3(v21, type metadata accessor for ImageFilter);
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit11ImageFilterOSgMd);
  _s8PaperKit0A0VWOhTm_3(v14, type metadata accessor for ImageFilter);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit11ImageFilterOSgMd);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

{
  v3 = type metadata accessor for CRAssetOrData();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v23[0] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSg_ADtMd);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v24 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v23 - v16;
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  v25 = v1;
  CRRegister.value.getter();
  v18 = *(v7 + 56);
  outlined init with copy of Date?(v17, v9, &_s8PaperKit13CRAssetOrDataOSgMd);
  outlined init with copy of Date?(a1, &v9[v18], &_s8PaperKit13CRAssetOrDataOSgMd);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit13CRAssetOrDataOSgMd);
    if (v19(&v9[v18], 1, v3) == 1)
    {
      return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit13CRAssetOrDataOSgMd);
    }

    goto LABEL_6;
  }

  outlined init with copy of Date?(v9, v14, &_s8PaperKit13CRAssetOrDataOSgMd);
  if (v19(&v9[v18], 1, v3) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit13CRAssetOrDataOSgMd);
    _s8PaperKit0A0VWOhTm_3(v14, type metadata accessor for CRAssetOrData);
LABEL_6:
    outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit13CRAssetOrDataOSg_ADtMd);
LABEL_7:
    outlined init with copy of Date?(a1, v24, &_s8PaperKit13CRAssetOrDataOSgMd);
    return CRRegister.value.setter();
  }

  v21 = v23[0];
  _s8PaperKit0A0VWObTm_1(&v9[v18], v23[0], type metadata accessor for CRAssetOrData);
  v22 = specialized static CRAssetOrData.== infix(_:_:)(v14, v21);
  _s8PaperKit0A0VWOhTm_3(v21, type metadata accessor for CRAssetOrData);
  outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit13CRAssetOrDataOSgMd);
  _s8PaperKit0A0VWOhTm_3(v14, type metadata accessor for CRAssetOrData);
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s8PaperKit13CRAssetOrDataOSgMd);
  if ((v22 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t closure #1 in Capsule<>.applyDifference(from:)(uint64_t a1, uint64_t a2)
{
  v133 = a2;
  v121 = type metadata accessor for CRKeyPath();
  v92 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121 - 8);
  v144 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v134 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v92 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v130 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v136 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v92 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v141 = (&v92 - v11);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v139 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v92 - v12;
  v106 = type metadata accessor for PaperDocumentPage(0);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v129 = *(v143 - 1);
  MEMORY[0x1EEE9AC00](v143);
  v142 = (&v92 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit0C12DocumentPageVGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v112 = &v92 - v16;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit0C12DocumentPageVGMd);
  v115 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v111 = &v92 - v17;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v128 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v126 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v92 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v125 = &v92 - v22;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
  v95 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v24 = &v92 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceV6ChangeOy9Coherence14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
  MEMORY[0x1EEE9AC00](v120);
  v119 = (&v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v118 = &v92 - v27;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys20CollectionDifferenceVy9Coherence14SharedTagged_3Vy8PaperKit0gH4PageVGGGMd) - 8;
  MEMORY[0x1EEE9AC00](v140);
  v123 = &v92 - v28;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVy9Coherence14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  v97 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v96 = &v92 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  v94 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v92 - v31;
  swift_getKeyPath();
  v150 = a1;
  Capsule.Ref.subscript.getter();

  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_3<TaggedPaperPage>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  v33 = dispatch thunk of Sequence._copyToContiguousArray()();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGMd);
  Capsule.subscript.getter();

  v93 = v32;
  v122 = v30;
  v147 = dispatch thunk of Sequence._copyToContiguousArray()();
  v145 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [SharedTagged_3<TaggedPaperPage>] and conformance [A], &_sSay9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v34 = v96;
  v35 = v127;
  v36 = v123;
  BidirectionalCollection<>.difference<A>(from:)();

  (*(v97 + 16))(v36, v34, v35);
  v37 = *(v140 + 44);
  v38 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CollectionDifference<SharedTagged_3<TaggedPaperPage>> and conformance CollectionDifference<A>, &_ss20CollectionDifferenceVy9Coherence14SharedTagged_3Vy8PaperKit0eF4PageVGGMd);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v39 = *(v36 + v37);
  v131 = v24;
  if (v39 != v147)
  {
    v110 = (v128 + 32);
    v109 = (v115 + 6);
    v103 = (v115 + 4);
    v102 = (v139 + 2);
    v101 = (v139 + 1);
    v140 = v130 + 48;
    v139 = (v130 + 32);
    ++v134;
    v135 = (v130 + 16);
    v100 = (v129 + 8);
    v99 = v115 + 1;
    v115 = (v128 + 8);
    v104 = v9;
    v117 = v37;
    v116 = v38;
    v98 = (v130 + 8);
    do
    {
      v63 = dispatch thunk of Collection.subscript.read();
      v64 = v118;
      outlined init with copy of Date?(v65, v118, &_ss20CollectionDifferenceV6ChangeOy9Coherence14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
      v63(&v147, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v66 = v119;
      outlined init with take of Range<AttributedString.Index>(v64, v119, &_ss20CollectionDifferenceV6ChangeOy9Coherence14SharedTagged_3Vy8PaperKit0fG4PageVG_GMd);
      LODWORD(v63) = swift_getEnumCaseMultiPayload();
      v67 = *v66;
      v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence14SharedTagged_3Vy8PaperKit0dE4PageVG7elementSiSg14associatedWithtMd) + 48);
      if (v63 == 1)
      {
        swift_getKeyPath();
        v62 = Capsule.Ref.subscript.modify();
        CROrderedSet.remove(at:)(v67);
        v62(&v147, 0);

        (*v115)(v66 + v68, v132);
      }

      else
      {
        v69 = v66 + v68;
        v70 = v113;
        v71 = v132;
        (*v110)(v113, v69, v132);
        SharedTagged_3.any.getter();
        __swift_project_boxed_opaque_existential_1(&v147, v149);
        v72 = type metadata accessor for PaperDocument(0);
        v73 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
        v130 = v72;
        v129 = v73;
        Capsule.Ref.import<A, B>(_:from:)();
        __swift_destroy_boxed_opaque_existential_0(&v147);
        swift_getKeyPath();
        v74 = Capsule.Ref.subscript.modify();
        CROrderedSet.insert(_:at:)();
        v74(&v147, 0);

        v75 = v112;
        SharedTagged_3.tagged3.getter();
        v76 = v114;
        if ((*v109)(v75, 1, v114) == 1)
        {
          (*v115)(v70, v71);
          outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s9Coherence3RefVy8PaperKit0C12DocumentPageVGSgMd);
        }

        else
        {
          (*v103)(v111, v75, v76);
          v77 = v105;
          Ref.subscript.getter();
          v78 = v107;
          v79 = v108;
          (*v102)(v107, v77 + *(v106 + 44), v108);
          _s8PaperKit0A0VWOhTm_3(v77, type metadata accessor for PaperDocumentPage);
          CROrderedSet.makeIterator()();
          (*v101)(v78, v79);
          v80 = v141;
          CROrderedSet.Iterator.next()();
          v81 = *v140;
          v82 = (*v140)(v80, 1, v5);
          v83 = v104;
          v84 = v98;
          if (v82 != 1)
          {
            v85 = *v139;
            (*v139)(v104, v80, v5);
            while (1)
            {
              v87 = v136;
              (*v135)(v136, v83, v5);
              WeakTagged_10.tag.getter();
              v145 = v147;
              v146 = v148;
              MEMORY[0x1DA6CB7A0](v5);
              lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
              v88 = v137;
              WeakTagged_10.init(_:id:)();
              v89 = *v84;
              (*v84)(v87, v5);
              v90 = v138;
              WeakTagged_10.subscript.getter();
              (*v134)(v88, v90);
              v91 = v149;
              outlined destroy of StocksKitCurrencyCache.Provider?(&v147, &_s8PaperKit13CanvasElement_pSgMd);
              if (!v91)
              {

                SharedTagged_10.subscript.getter();
                SharedTagged_10.subscript.setter();
              }

              v89(v83, v5);
              v86 = v141;
              CROrderedSet.Iterator.next()();
              if (v81(v86, 1, v5) == 1)
              {
                break;
              }

              v85(v83, v86, v5);
            }
          }

          (*v100)(v142, v143);
          (*v99)(v111, v114);
          (*v115)(v113, v132);
        }
      }

      v36 = v123;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v36 + v117) != v147);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_ss16IndexingIteratorVys20CollectionDifferenceVy9Coherence14SharedTagged_3Vy8PaperKit0gH4PageVGGGMd);
  swift_getKeyPath();
  v40 = v93;
  Capsule.Ref.subscript.getter();

  v41 = v122;
  CROrderedSet.makeIterator()();
  (*(v94 + 8))(v40, v41);
  v42 = v125;
  v43 = v124;
  CROrderedSet.Iterator.next()();
  v44 = v128;
  v45 = *(v128 + 48);
  v46 = v132;
  v47 = v45(v42, 1, v132);
  v48 = v126;
  if (v47 != 1)
  {
    v50 = *(v44 + 32);
    v49 = v44 + 32;
    v143 = v50;
    v141 = (v49 - 24);
    v142 = (v92 + 8);
    v128 = v49;
    do
    {
      v143(v48, v42, v46);
      MEMORY[0x1DA6CB6F0](v46);
      v51 = SharedTagged_3.subscript.modify();
      v53 = *(v52 + 24);
      v54 = *(v52 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
      v55 = *(v54 + 200);
      v56 = type metadata accessor for PaperDocument(0);
      v57 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
      v58 = v53;
      v59 = v144;
      v60 = v54;
      v46 = v132;
      v55(v144, v150, v133, v56, v57, v58, v60);
      v43 = v124;
      v42 = v125;
      v48 = v126;
      (*v142)(v59, v121);
      v51(&v147, 0);
      (*v141)(v48, v46);
      CROrderedSet.Iterator.next()();
    }

    while (v45(v42, 1, v46) != 1);
  }

  (*(v95 + 8))(v131, v43);
  return (*(v97 + 8))(v96, v127);
}

uint64_t Paper.applyDifference<A>(id:in:from:)(void (**a1)(void, void), char **a2, uint64_t a3)
{
  v50 = a3;
  v51 = a1;
  v47 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v42 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A0VSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for CRKeyPath();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D0VGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - v17;
  v19 = type metadata accessor for Paper(0);
  v20 = *(v19 - 1);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v51, v11, v21);
  v24 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  WeakRef.init(id:)();
  type metadata accessor for PaperDocument(0);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
  WeakRef.subscript.getter();
  (*(v16 + 8))(v18, v15);
  v25 = *(v20 + 48);
  v48 = v19;
  if (v25(v10, 1, v19) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s8PaperKit0A0VSgMd);
  }

  v42 = v24;
  _s8PaperKit0A0VWObTm_1(v10, v23, type metadata accessor for Paper);
  v27 = v44;
  CRRegister.wrappedValue.getter();
  x = v52.origin.x;
  y = v52.origin.y;
  width = v52.size.width;
  height = v52.size.height;
  v32 = v43;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  v33 = v23;
  if (!CGRectEqualToRect(v52, v53))
  {
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    CRRegister.value.setter();
  }

  v34 = v46;
  v35 = *(v46 + 16);
  v35(v49, v32, v27);
  CRRegister.projectedValue.setter();
  v36 = *(v34 + 8);
  v36(v32, v27);
  v46 = v33;
  CRRegister.wrappedValue.getter();
  v37 = v52.origin.x;
  v38 = v52.origin.y;
  v39 = v52.size.width;
  v40 = v52.size.height;
  v41 = v45;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  v54.origin.x = v37;
  v54.origin.y = v38;
  v54.size.width = v39;
  v54.size.height = v40;
  if (!CGRectEqualToRect(v52, v54))
  {
    v52.origin.x = v37;
    v52.origin.y = v38;
    v52.size.width = v39;
    v52.size.height = v40;
    CRRegister.value.setter();
  }

  v35(v49, v41, v27);
  CRRegister.projectedValue.setter();
  v36(v41, v27);
  ContainerCanvasElement<>._applyDifference<A>(id:in:from:)(v51, v47, v50, v48, v42, &protocol witness table for Paper);
  return _s8PaperKit0A0VWOhTm_3(v46, type metadata accessor for Paper);
}

uint64_t ContainerCanvasElement<>._applyDifference<A>(id:in:from:)(void (**a1)(void, void), char **a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v166 = a6;
  v172 = a2;
  v173 = a3;
  v175 = a1;
  v163 = *a2;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceV6ChangeOy9Coherence15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  MEMORY[0x1EEE9AC00](v158);
  v157 = (&v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v156 = &v135 - v9;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys20CollectionDifferenceVy9Coherence15SharedTagged_10Vy8PaperKit0G13CanvasElementVGGGMd);
  MEMORY[0x1EEE9AC00](v139);
  v160 = &v135 - v10;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVy9Coherence15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v146 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v145 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v169 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v155 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v176 = &v135 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v168 = &v135 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v165 = &v135 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v164 = &v135 - v21;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v153 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v147 = &v135 - v22;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v144 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v167 = &v135 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v137 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v138 = &v135 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v141 = &v135 - v29;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v154 = &v135 - v30;
  v170 = type metadata accessor for Optional();
  v140 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v161 = &v135 - v31;
  v32 = type metadata accessor for CRKeyPath();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v177 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v135 - v36;
  v38 = type metadata accessor for WeakRef();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v135 - v40;
  v148 = *(a4 - 1);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v135 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = v33;
  v46 = *(v33 + 16);
  v47 = v175;
  v175 = v32;
  v150 = v33 + 16;
  v149 = v46;
  (v46)(v37, v47, v32, v43);
  WeakRef.init(id:)();
  v48 = type metadata accessor for PaperDocument(0);
  v49 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
  v50 = v161;
  v171 = v48;
  v51 = v49;
  WeakRef.subscript.getter();
  v52 = v41;
  v53 = v50;
  v54 = v38;
  v55 = a4;
  v56 = v148;
  (*(v39 + 8))(v52, v54);
  if ((*(v56 + 48))(v53, 1, a4) == 1)
  {
    return (*(v140 + 1))(v53, v170);
  }

  v136 = v37;
  v170 = v51;
  (*(v56 + 32))(v45, v53, a4);
  v58 = v166;
  v59 = *(v166 + 8);
  v60 = *(v59 + 56);
  v61 = v60(a4, v59);
  if (v61 != v60(a4, v59))
  {
    v62 = v60(a4, v59);
    (*(v59 + 64))(v62, a4, v59);
  }

  v63 = *(v58 + 64);
  v64 = v141;
  v140 = v45;
  v161 = v63;
  (v63)(a4, v58);
  v65 = v142;
  v66 = v142[6];
  v67 = v143;
  if (v66(v64, 1, v143) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  }

  else
  {
    (v65[4])(v154, v64, v67);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
    Capsule.Ref.import<A, B>(_:from:)();
    v68 = v138;
    (v161)(v55, v58);
    if (v66(v68, 1, v67) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      v69 = v137;
      v70 = v154;
      (v65[2])(v137, v154, v67);
      (v65[7])(v69, 0, 1, v67);
      (*(v58 + 72))(v69, v55, v58);
      (v65[1])(v70, v67);
    }

    else
    {
      (v65[1])(v154, v67);
      outlined destroy of StocksKitCurrencyCache.Provider?(v68, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    }
  }

  v71 = *(v58 + 88);
  v72 = v147;
  v161 = v55;
  v143 = v58 + 88;
  v142 = v71;
  (v71)(v55, v58);
  v73 = v162;
  CROrderedSet.makeIterator()();
  (*(v153 + 8))(v72, v73);
  v74 = v164;
  CROrderedSet.Iterator.next()();
  v75 = *(v169 + 48);
  v76 = v75(v74, 1, v12);
  v77 = v165;
  v78 = v136;
  if (v76 != 1)
  {
    v153 = *(v169 + 32);
    v79 = (v151 + 8);
    v154 = (v169 + 32);
    v80 = (v169 + 8);
    do
    {
      (v153)(v77, v74, v12);
      MEMORY[0x1DA6CB7A0](v12);
      v81 = SharedTagged_10.subscript.modify();
      v83 = *(v82 + 24);
      v84 = *(v82 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v82, v83);
      v85 = v83;
      v74 = v164;
      (*(v84 + 128))(v78, v172, v173, *&v163[*MEMORY[0x1E6995440]], v171, *&v163[*MEMORY[0x1E6995440] + 8], v170, v85, v84);
      (*v79)(v78, v175);
      v81(v179, 0);
      v77 = v165;
      (*v80)(v165, v12);
      CROrderedSet.Iterator.next()();
    }

    while (v75(v74, 1, v12) != 1);
  }

  (*(v144 + 8))(v167, v174);
  v86 = v161;
  v87 = v166;
  v88 = v142;
  (v142)(v161, v166);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v89 = dispatch thunk of Sequence._copyToContiguousArray()();
  v88(v86, v87);
  v153 = dispatch thunk of Sequence._copyToContiguousArray()();
  v90 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_AC15SharedTagged_10Vy8PaperKit0G13CanvasElementVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v180 = v90;
  v167 = *(v89 + 16);
  if (v167)
  {
    v91 = 0;
    v165 = (v89 + ((*(v169 + 80) + 32) & ~*(v169 + 80)));
    v164 = (v169 + 16);
    v174 = v169 + 32;
    v163 = (v151 + 8);
    v154 = (v169 + 40);
    while (v91 < *(v89 + 16))
    {
      v92 = v89;
      v94 = v168;
      v93 = v169;
      v95 = *(v169 + 72);
      (*(v169 + 16))(v168, &v165[v95 * v91], v12);
      v96 = v177;
      MEMORY[0x1DA6CB7A0](v12);
      v97 = *(v93 + 32);
      v97(v176, v94, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v179[0] = v90;
      v99 = specialized __RawDictionaryStorage.find<A>(_:)(v96);
      v101 = v90[2];
      v102 = (v100 & 1) == 0;
      v103 = __OFADD__(v101, v102);
      v104 = v101 + v102;
      if (v103)
      {
        goto LABEL_37;
      }

      v105 = v100;
      if (v90[3] >= v104)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v113 = v99;
          specialized _NativeDictionary.copy()();
          v99 = v113;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v104, isUniquelyReferenced_nonNull_native);
        v99 = specialized __RawDictionaryStorage.find<A>(_:)(v177);
        if ((v105 & 1) != (v106 & 1))
        {
          goto LABEL_39;
        }
      }

      v107 = v175;
      v90 = v179[0];
      if (v105)
      {
        (*v154)(*(v179[0] + 56) + v99 * v95, v176, v12);
        (*v163)(v177, v107);
      }

      else
      {
        *(v179[0] + 8 * (v99 >> 6) + 64) |= 1 << v99;
        v108 = v151;
        v109 = v99;
        v110 = v177;
        v149(v90[6] + *(v151 + 72) * v99, v177, v107);
        v97((v90[7] + v109 * v95), v176, v12);
        (*(v108 + 8))(v110, v107);
        v111 = v90[2];
        v103 = __OFADD__(v111, 1);
        v112 = v111 + 1;
        if (v103)
        {
          goto LABEL_38;
        }

        v90[2] = v112;
      }

      ++v91;
      v180 = v90;
      v89 = v92;
      if (v167 == v91)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_27:
    v114 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9Coherence15SharedTagged_10Vy8PaperKit0f6CanvasB0VGG_ALs5NeverOTg503_s8g14Kit22Containerib122PAA9Coherence4CRDTRzrlE16_applyDifference2id2in4fromyAD9CRKeyPathV_AD7CapsuleV3RefCyqd___GAMyAA0A8DocumentVGtAdERd__lFAD15eF21_10VyAA0sdE0VGAXXEfU_SDyAF0uV0VALGTf1cn_n(v153, &v180);

    v179[0] = v114;
    v178 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [SharedTagged_10<TaggedCanvasElement>] and conformance [A], &_sSay9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    v115 = v145;
    BidirectionalCollection<>.difference<A>(from:)();

    v116 = v160;
    v117 = v159;
    (*(v146 + 16))(v160, v115, v159);
    v118 = *(v139 + 36);
    v119 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CollectionDifference<SharedTagged_10<TaggedCanvasElement>> and conformance CollectionDifference<A>, &_ss20CollectionDifferenceVy9Coherence15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*(v116 + v118) != v179[0])
    {
      v168 = (v169 + 32);
      v177 = v166 + 104;
      v174 = v118;
      v175 = (v169 + 8);
      v152 = v12;
      v176 = v119;
      do
      {
        v122 = dispatch thunk of Collection.subscript.read();
        v123 = v156;
        outlined init with copy of Date?(v124, v156, &_ss20CollectionDifferenceV6ChangeOy9Coherence15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
        v122(v179, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v125 = v157;
        outlined init with take of Range<AttributedString.Index>(v123, v157, &_ss20CollectionDifferenceV6ChangeOy9Coherence15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
        LODWORD(v122) = swift_getEnumCaseMultiPayload();
        v126 = *v125;
        v127 = v125 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_9Coherence15SharedTagged_10Vy8PaperKit0D13CanvasElementVG7elementSiSg14associatedWithtMd) + 48);
        if (v122 == 1)
        {
          v120 = (*(v166 + 104))(v179, v161);
          CROrderedSet.remove(at:)(v126);
          v120(v179, 0);
          v121 = v152;
        }

        else
        {
          v121 = v152;
          (*v168)(v155, v127, v152);
          SharedTagged_10.any.getter();
          __swift_project_boxed_opaque_existential_1(v179, v179[3]);
          Capsule.Ref.import<A, B>(_:from:)();
          __swift_destroy_boxed_opaque_existential_0(v179);
          v128 = SharedTagged_10.subscript.modify();
          v131 = *(v129 + 24);
          v130 = *(v129 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(v129, v131);
          v133 = (*(v130 + 104))(&v178, v131, v130);
          if ((*v132 & 0x60) != 0)
          {
            *v132 &= 0xFFFFFFFFFFFFFF9FLL;
          }

          v133(&v178, 0);
          v128(v179, 0);
          v134 = (*(v166 + 104))(v179, v161);
          v127 = v155;
          CROrderedSet.insert(_:at:)();
          v134(v179, 0);
        }

        (*v175)(v127, v121);
        v116 = v160;
        v117 = v159;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*(v116 + v174) != v179[0]);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v116, &_ss16IndexingIteratorVys20CollectionDifferenceVy9Coherence15SharedTagged_10Vy8PaperKit0G13CanvasElementVGGGMd);
    (*(v146 + 8))(v145, v117);
    (*(v148 + 8))(v140, v161);
  }

  return result;
}

uint64_t Image.applyDifference<A>(id:in:from:)(void (**a1)(void, void), char **a2, uint64_t a3)
{
  v115 = a2;
  v116 = a3;
  v117 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  v110 = *(v3 - 8);
  v111 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v109 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v108 = &v89 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v107 = &v89 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v104 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v102 = &v89 - v13;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v89 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v89 - v18;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v92 = &v89 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v113 = *(v22 - 8);
  v114 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v112 = &v89 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v91 = &v89 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ImageVSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v89 - v29;
  v31 = type metadata accessor for CRKeyPath();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit5ImageVGMd);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v89 - v37;
  v39 = type metadata accessor for Image(0);
  v40 = *(v39 - 1);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v89 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v34, v117, v31, v41);
  v44 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  WeakRef.init(id:)();
  type metadata accessor for PaperDocument(0);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
  WeakRef.subscript.getter();
  (*(v36 + 8))(v38, v35);
  if ((*(v40 + 48))(v30, 1, v39) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s8PaperKit5ImageVSgMd);
  }

  v90 = v44;
  _s8PaperKit0A0VWObTm_1(v30, v43, type metadata accessor for Image);
  v46 = Image.pdfContentsBounds.getter();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = Image.pdfContentsBounds.getter();
  v57 = v43;
  if (CGRect.almostEqual(_:threshold:)(v53, v54, v55, v56, 1.0, v46, v48, v50, v52))
  {
    v58 = v114;
    CRRegister.wrappedValue.getter();
    x_low = LODWORD(v118.origin.x);
    v60 = v91;
    CRRegister.projectedValue.getter();
    CRRegister.value.getter();
    if (LODWORD(v118.origin.x) != x_low)
    {
      LODWORD(v118.origin.x) = x_low;
      CRRegister.value.setter();
    }

    v61 = v113;
    (*(v113 + 16))(v112, v60, v58);
    CRRegister.projectedValue.setter();
    (*(v61 + 8))(v60, v58);
  }

  else
  {
    v62 = v95;
    CRRegister.wrappedValue.getter();
    CRRegister.wrappedValue.setter();
    CRRegister.wrappedValue.getter();
    origin = v118.origin;
    width = v118.size.width;
    height = v118.size.height;
    v66 = v92;
    CRRegister.projectedValue.getter();
    CRRegister.value.getter();
    v119.origin = origin;
    v119.size.width = width;
    v119.size.height = height;
    v67 = CGRectEqualToRect(v118, v119);
    v68 = v114;
    if (!v67)
    {
      v118.origin = origin;
      v118.size.width = width;
      v118.size.height = height;
      CRRegister.value.setter();
    }

    v69 = v94;
    (*(v94 + 16))(v93, v66, v62);
    CRRegister.projectedValue.setter();
    (*(v69 + 8))(v66, v62);
    v70 = v96;
    v71 = v101;
    CRRegister.wrappedValue.getter();
    v72 = v98;
    CRRegister.projectedValue.getter();
    specialized CRRegister<>.setIfDifferent(_:)(v70);
    outlined destroy of StocksKitCurrencyCache.Provider?(v70, &_s8PaperKit14ContentsBoundsOSgMd);
    v73 = v100;
    (*(v100 + 16))(v99, v72, v71);
    CRRegister.projectedValue.setter();
    (*(v73 + 8))(v72, v71);
    CRRegister.wrappedValue.getter();
    v74 = LODWORD(v118.origin.x);
    v75 = v97;
    CRRegister.projectedValue.getter();
    CRRegister.value.getter();
    if (LODWORD(v118.origin.x) != v74)
    {
      LODWORD(v118.origin.x) = v74;
      CRRegister.value.setter();
    }

    v76 = v113;
    (*(v113 + 16))(v112, v75, v68);
    CRRegister.projectedValue.setter();
    (*(v76 + 8))(v75, v68);
    v77 = v102;
    v78 = v106;
    CRRegister.wrappedValue.getter();
    v79 = v103;
    CRRegister.projectedValue.getter();
    specialized CRRegister<>.setIfDifferent(_:)(v77);
    outlined destroy of StocksKitCurrencyCache.Provider?(v77, &_s8PaperKit11ImageFilterOSgMd);
    v80 = v105;
    (*(v105 + 16))(v104, v79, v78);
    CRRegister.projectedValue.setter();
    (*(v80 + 8))(v79, v78);
    v81 = v107;
    v82 = v111;
    CRRegister.wrappedValue.getter();
    v83 = v108;
    CRRegister.projectedValue.getter();
    specialized CRRegister<>.setIfDifferent(_:)(v81);
    outlined destroy of StocksKitCurrencyCache.Provider?(v81, &_s8PaperKit13CRAssetOrDataOSgMd);
    v84 = v110;
    (*(v110 + 16))(v109, v83, v82);
    CRRegister.projectedValue.setter();
    (*(v84 + 8))(v83, v82);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, logger);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_1D38C4000, v86, v87, "Importing Image page with different bounds, this should not happen.", v88, 2u);
      MEMORY[0x1DA6D0660](v88, -1, -1);
    }
  }

  ContainerCanvasElement<>._applyDifference<A>(id:in:from:)(v117, v115, v116, v39, v90, &protocol witness table for Image);
  return _s8PaperKit0A0VWOhTm_3(v57, type metadata accessor for Image);
}

uint64_t PaperDocumentPage.applyDifference<A>(id:in:from:)(void (**a1)(void, void), char **a2, uint64_t a3)
{
  v64 = a3;
  v65 = a1;
  v61 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v50 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit0A12DocumentPageVSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v50 - v15;
  v17 = type metadata accessor for CRKeyPath();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVy8PaperKit0D12DocumentPageVGMd);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v50 - v23;
  v25 = type metadata accessor for PaperDocumentPage(0);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v65, v17, v27);
  v52 = _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
  WeakRef.init(id:)();
  type metadata accessor for PaperDocument(0);
  _s8PaperKit0A0VAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocument and conformance PaperDocument, type metadata accessor for PaperDocument);
  WeakRef.subscript.getter();
  (*(v22 + 8))(v24, v21);
  v30 = *(v26 + 48);
  v62 = v25;
  if (v30(v16, 1, v25) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit0A12DocumentPageVSgMd);
  }

  _s8PaperKit0A0VWObTm_1(v16, v29, type metadata accessor for PaperDocumentPage);
  v32 = v53;
  CRRegister.wrappedValue.getter();
  x = v66.origin.x;
  y = v66.origin.y;
  width = v66.size.width;
  height = v66.size.height;
  v37 = v51;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  if (!CGRectEqualToRect(v66, v67))
  {
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    CRRegister.value.setter();
  }

  v38 = v55;
  v50 = *(v55 + 16);
  v50(v63, v37, v32);
  CRRegister.projectedValue.setter();
  v39 = *(v38 + 8);
  v39(v37, v32);
  CRRegister.wrappedValue.getter();
  v40 = v66.origin.x;
  v41 = v66.origin.y;
  v42 = v66.size.width;
  v43 = v66.size.height;
  v44 = v54;
  CRRegister.projectedValue.getter();
  CRRegister.value.getter();
  v68.origin.x = v40;
  v68.origin.y = v41;
  v68.size.width = v42;
  v68.size.height = v43;
  if (!CGRectEqualToRect(v66, v68))
  {
    v66.origin.x = v40;
    v66.origin.y = v41;
    v66.size.width = v42;
    v66.size.height = v43;
    CRRegister.value.setter();
  }

  v50(v63, v44, v32);
  CRRegister.projectedValue.setter();
  v39(v44, v32);
  v45 = v62;
  v46 = v56;
  v47 = v60;
  CRRegister.wrappedValue.getter();
  v48 = v57;
  CRRegister.projectedValue.getter();
  specialized CRRegister<>.setIfDifferent(_:)(v46);
  outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s8PaperKit14ContentsBoundsOSgMd);
  v49 = v59;
  (*(v59 + 16))(v58, v48, v47);
  CRRegister.projectedValue.setter();
  (*(v49 + 8))(v48, v47);
  ContainerCanvasElement<>._applyDifference<A>(id:in:from:)(v65, v61, v64, v45, v52, &protocol witness table for PaperDocumentPage);
  return _s8PaperKit0A0VWOhTm_3(v29, type metadata accessor for PaperDocumentPage);
}

uint64_t _s8PaperKit0A0VWOhTm_3(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s8PaperKit0A0VWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id ValueEditingViewController.stepper.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___stepper;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___stepper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___stepper);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_unit);
    v5 = *(v0 + OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_unit + 8);
    objc_allocWithZone(type metadata accessor for ValueStepper());

    v6 = v4;
    v7 = v0;
    ValueStepper.init(minValue:maxValue:unit:)(5, 300, v6, v5);
    v8 = *(v0 + v1);
    *(v7 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

char *ValueEditingViewController.slider.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___slider;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___slider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___slider);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for ValueSlider());
    v6 = ValueSlider.init(minValue:maxValue:)(5, 300);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

Swift::Void __swiftcall ValueEditingViewController.viewDidLoad()()
{
  v1 = v0;
  v52.receiver = v0;
  v52.super_class = type metadata accessor for ValueEditingViewController();
  objc_msgSendSuper2(&v52, sel_viewDidLoad);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v2 setAxis_];
  [v2 setSpacing_];
  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D405B630;
  v7 = [v3 topAnchor];
  v8 = [v1 view];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  v10 = [v8 safeAreaLayoutGuide];

  v11 = [v10 topAnchor];
  v12 = [v7 constraintEqualToAnchor:v11 constant:0.0];

  *(v6 + 32) = v12;
  v13 = [v3 leadingAnchor];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = [v14 safeAreaLayoutGuide];

  v17 = [v16 leadingAnchor];
  v18 = [v13 constraintEqualToAnchor:v17 constant:0.0];

  *(v6 + 40) = v18;
  v19 = [v3 bottomAnchor];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [v20 safeAreaLayoutGuide];

  v23 = [v22 bottomAnchor];
  v24 = [v19 constraintEqualToAnchor:v23 constant:-0.0];

  *(v6 + 48) = v24;
  v25 = [v3 trailingAnchor];

  v26 = [v1 view];
  if (!v26)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = [v27 safeAreaLayoutGuide];

  v30 = [v29 trailingAnchor];
  v31 = [v25 constraintEqualToAnchor:v30 constant:-0.0];

  *(v6 + 56) = v31;
  type metadata accessor for NSLayoutConstraint();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 activateConstraints_];

  v33 = ValueEditingViewController.stepper.getter();
  [v3 addArrangedSubview_];

  v34 = OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___stepper;
  v35 = [*&v1[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___stepper] heightAnchor];
  v36 = [v35 constraintEqualToConstant_];

  [v36 setActive_];
  v37 = ValueEditingViewController.slider.getter();
  [v3 addArrangedSubview_];

  v38 = OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___slider;
  v39 = [*&v1[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___slider] widthAnchor];
  v40 = [*&v1[v34] widthAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  [v41 setActive_];
  [*&v1[v34] addTarget:v1 action:sel_didChangeStepperValue forControlEvents:4096];
  [*&v1[v38] addTarget:v1 action:sel_didStartChangingSliderValue forControlEvents:1];
  [*&v1[v38] addTarget:v1 action:sel_didFinishChangingSliderValue forControlEvents:448];
  [*&v1[v38] addTarget:v1 action:sel_didChangeSliderValue forControlEvents:4096];
  v42 = *&v1[v38];
  v43 = OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_currentValue;
  v44 = *&v1[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_currentValue];
  if (*(v42 + OBJC_IVAR____TtC8PaperKit11ValueSlider_minValue) > v44)
  {
    v44 = *(v42 + OBJC_IVAR____TtC8PaperKit11ValueSlider_minValue);
  }

  if (v44 >= *(v42 + OBJC_IVAR____TtC8PaperKit11ValueSlider_maxValue))
  {
    v44 = *(v42 + OBJC_IVAR____TtC8PaperKit11ValueSlider_maxValue);
  }

  v45 = v42 + OBJC_IVAR____TtC8PaperKit11ValueSlider____lazy_storage___currentValue;
  *v45 = v44;
  *(v45 + 8) = 0;
  v46 = *(v42 + OBJC_IVAR____TtC8PaperKit11ValueSlider_slider);
  *&v47 = ValueSlider.currentValue.getter();
  [v46 setValue_];
  v48 = *&v1[v34];
  v49 = *&v1[v43];
  if (*&v48[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue] > v49)
  {
    v49 = *&v48[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue];
  }

  if (v49 >= *&v48[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue])
  {
    v49 = *&v48[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue];
  }

  v50 = &v48[OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue];
  *v50 = v49;
  v50[8] = 0;
  v51 = v48;
  ValueStepper.updateUI()();

  [v1 setPreferredContentSize_];
}

void *ValueEditingViewController.didChangeStepperValue()()
{
  v1 = v0;
  v2 = ValueEditingViewController.stepper.getter();
  v3 = ValueStepper.currentValue.getter();

  v4 = OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_currentValue;
  *(v1 + OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_currentValue) = v3;
  v5 = ValueEditingViewController.slider.getter();
  v6 = v5;
  v7 = *(v1 + v4);
  if (*&v5[OBJC_IVAR____TtC8PaperKit11ValueSlider_minValue] > v7)
  {
    v7 = *&v5[OBJC_IVAR____TtC8PaperKit11ValueSlider_minValue];
  }

  if (v7 >= *&v5[OBJC_IVAR____TtC8PaperKit11ValueSlider_maxValue])
  {
    v7 = *&v5[OBJC_IVAR____TtC8PaperKit11ValueSlider_maxValue];
  }

  v8 = &v5[OBJC_IVAR____TtC8PaperKit11ValueSlider____lazy_storage___currentValue];
  *v8 = v7;
  v8[8] = 0;
  v9 = *&v5[OBJC_IVAR____TtC8PaperKit11ValueSlider_slider];
  *&v10 = ValueSlider.currentValue.getter();
  [v9 setValue_];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result valueEditingViewController:v1 didChangeValue:*(v1 + v4)];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *@objc ValueEditingViewController.didStartChangingSliderValue()(char *a1, uint64_t a2, SEL *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      v7 = *&a1[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_currentValue];
      v8 = a1;
      [v6 *a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *ValueEditingViewController.didChangeSliderValue()()
{
  v1 = v0;
  v2 = ValueEditingViewController.slider.getter();
  v3 = ValueSlider.currentValue.getter();

  v4 = OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_currentValue;
  *(v1 + OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_currentValue) = v3;
  v5 = ValueEditingViewController.stepper.getter();
  v6 = v5;
  v7 = *(v1 + v4);
  if (*&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue] > v7)
  {
    v7 = *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_minValue];
  }

  if (v7 >= *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue])
  {
    v7 = *&v5[OBJC_IVAR____TtC8PaperKit12ValueStepper_maxValue];
  }

  v8 = &v5[OBJC_IVAR____TtC8PaperKit12ValueStepper____lazy_storage___currentValue];
  *v8 = v7;
  v8[8] = 0;
  ValueStepper.updateUI()();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result valueEditingViewController:v1 didChangeValue:*(v1 + v4)];

    return swift_unknownObjectRelease();
  }

  return result;
}

id ValueEditingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ValueEditingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized ValueEditingViewController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_contentSize) = xmmword_1D405BB80;
  *(v0 + OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_verticalInterItemSpacing) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_stepperSizeHeight) = 0x4043000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___stepper) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___slider) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *CalculateDocument.pkCalculateDocumentProvider(sessionExpressionUUIDs:expressionsToSolve:expressionStrokeGroups:resultDrawings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = a4;
  v112 = a2;
  v129 = a1;
  v6 = type metadata accessor for UUID();
  v116 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v107 - v10;
  v134 = MEMORY[0x1E69E7CC0];
  v132 = MEMORY[0x1E69E7CC0];
  v133 = MEMORY[0x1E69E7CD0];
  v127 = v4;
  v12 = dispatch thunk of CalculateDocument.declaredSymbols.getter();
  v13 = 0;
  v15 = v12 + 56;
  v14 = *(v12 + 56);
  v128 = v12;
  v16 = 1 << *(v12 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v130 = v11;
  if ((v17 & v14) != 0)
  {
    while (1)
    {
      v20 = v13;
LABEL_9:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v22 = (*(v128 + 48) + ((v20 << 10) | (16 * v21)));
      v23 = *v22;
      v24 = v22[1];

      specialized Set._Variant.insert(_:)(&v131, v23, v24);

      v11 = v130;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v20 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v20 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v20);
    ++v13;
    if (v18)
    {
      v13 = v20;
      goto LABEL_9;
    }
  }

  v12 = MEMORY[0x1DA6CACA0](v25);
  if (!(v12 >> 62))
  {
    v27 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v129;
    if (v27)
    {
      goto LABEL_13;
    }

LABEL_68:

    v103 = MEMORY[0x1E69E7CC0];
    v102 = MEMORY[0x1E69E7CC0];
    goto LABEL_69;
  }

LABEL_67:
  v104 = v12;
  v27 = __CocoaSet.count.getter();
  v12 = v104;
  v28 = v129;
  if (!v27)
  {
    goto LABEL_68;
  }

LABEL_13:
  v29 = 0;
  v122 = v12 & 0xC000000000000001;
  v115 = v12 & 0xFFFFFFFFFFFFFF8;
  v118 = v12;
  v114 = v12 + 32;
  v127 = v116 + 16;
  v128 = v28 + 56;
  v30 = (v116 + 8);
  v111 = MEMORY[0x1E69E7CC0];
  *&v26 = 136380675;
  v109 = v26;
  v120 = v27;
  v121 = a3;
  v119 = (v116 + 8);
  do
  {
    while (1)
    {
      if (v122)
      {
        v12 = MEMORY[0x1DA6CE0C0](v29, v118);
        v32 = v12;
        v33 = __OFADD__(v29, 1);
        v34 = v29 + 1;
        if (v33)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v29 >= *(v115 + 16))
        {
          goto LABEL_66;
        }

        v32 = *(v114 + 8 * v29);

        v33 = __OFADD__(v29, 1);
        v34 = v29 + 1;
        if (v33)
        {
          goto LABEL_65;
        }
      }

      CalculateExpression.id.getter();
      v124 = CalculateExpression.expression.getter();
      v126 = v35;
      v36 = [objc_allocWithZone(type metadata accessor for MathExpression()) init];
      v37 = *(a3 + 16);
      v125 = v32;
      if (v37 && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v39 & 1) != 0))
      {
        v40 = *(*(a3 + 56) + 8 * v38);
        v41 = v40;
      }

      else
      {
        v40 = 0;
      }

      v42 = *(v28 + 16);
      v123 = v34;
      if (v42 && (_s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]), v43 = dispatch thunk of Hashable._rawHashValue(seed:)(), v44 = -1 << *(v28 + 32), v45 = v43 & ~v44, ((*(v128 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0))
      {
        v46 = ~v44;
        v47 = *(v116 + 72);
        v48 = *(v116 + 16);
        do
        {
          v48(v9, *(v129 + 48) + v47 * v45, v6);
          _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
          v49 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v30)(v9, v6);
          if (v49)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
        }

        while (((*(v128 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) != 0);
      }

      else
      {
        v49 = 0;
      }

      v50 = OBJC_IVAR____TtC8PaperKit14MathExpression_isAssociatedWithCurrentSession;
      v36[OBJC_IVAR____TtC8PaperKit14MathExpression_isAssociatedWithCurrentSession] = v49 & 1;
      v51 = *&v36[OBJC_IVAR____TtC8PaperKit14MathExpression_strokeGroupIdentifier];
      *&v36[OBJC_IVAR____TtC8PaperKit14MathExpression_strokeGroupIdentifier] = v40;
      v52 = v40;

      v53 = &v36[OBJC_IVAR____TtC8PaperKit14MathExpression_expression];
      v54 = v126;
      *v53 = v124;
      v53[1] = v54;

      v55 = v36;
      MEMORY[0x1DA6CD190]();
      if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v56 = v134;
      if (v36[v50])
      {
        break;
      }

      v31 = v119;
      v11 = v130;
      (*v119)(v130, v6);

      v30 = v31;

      a3 = v121;
LABEL_15:
      v28 = v129;
      v29 = v123;
      if (v123 == v120)
      {
        goto LABEL_63;
      }
    }

    a3 = v121;
    v11 = v130;
    if (!v40)
    {
      v63 = v119;
      (*v119)(v130, v6);

      v30 = v63;

      goto LABEL_15;
    }

    v117 = v134;
    v57 = v52;
    v58 = CalculateExpression.result.getter();
    v59 = v55;
    if (!v58)
    {
      v30 = v119;
      (*v119)(v11, v6);

      v28 = v129;
      v62 = v120;
      goto LABEL_62;
    }

    v60 = v58;
    v61 = [v58 isTrivial];
    v62 = v120;
    if (!v61)
    {
      v113 = v57;
      v64 = [v60 formattedResult];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v11 = v130;
      if (specialized Set.contains(_:)(v130, v112))
      {
        v68 = [objc_allocWithZone(type metadata accessor for MathExpressionEvaluationResult()) init];
        v69 = &v68[OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_string];
        *v69 = v65;
        v69[1] = v67;

        v70 = *&v68[OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_strokeGroupIdentifier];
        v71 = v113;
        *&v68[OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_strokeGroupIdentifier] = v113;
        v113 = v71;

        v72 = v110;
        if (*(v110 + 16) && (v73 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v74 & 1) != 0))
        {
          v75 = *(*(v72 + 56) + 8 * v73);
          v76 = v75;
        }

        else
        {
          v75 = 0;
        }

        v88 = *&v68[OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_drawing];
        *&v68[OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_drawing] = v75;

        v89 = v68;
        MEMORY[0x1DA6CD190]();
        if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v90 = v132;
        if (one-time initialization token for mathLogger != -1)
        {
          swift_once();
        }

        v111 = v90;
        v91 = type metadata accessor for Logger();
        __swift_project_value_buffer(v91, mathLogger);
        v92 = v126;

        v79 = Logger.logObject.getter();
        v93 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v79, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v108 = v89;
          v96 = v95;
          v131 = v95;
          *v94 = v109;
          v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v92, &v131);
          v124 = v79;
          v98 = v97;

          *(v94 + 4) = v98;
          v85 = v124;
          _os_log_impl(&dword_1D38C4000, v124, v93, "Expression should be solved: %{private}s", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v96);
          MEMORY[0x1DA6D0660](v96, -1, -1);
          v99 = v94;
          v11 = v130;
          MEMORY[0x1DA6D0660](v99, -1, -1);

          v100 = v113;
          goto LABEL_57;
        }
      }

      else
      {

        if (one-time initialization token for mathLogger != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        __swift_project_value_buffer(v77, mathLogger);
        v78 = v126;

        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v131 = v82;
          *v81 = v109;
          v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v78, &v131);
          v124 = v79;
          v84 = v83;

          *(v81 + 4) = v84;
          v85 = v124;
          _os_log_impl(&dword_1D38C4000, v124, v80, "Expression should NOT be solved: %{private}s", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v82);
          MEMORY[0x1DA6D0660](v82, -1, -1);
          v86 = v81;
          v11 = v130;
          MEMORY[0x1DA6D0660](v86, -1, -1);

          v87 = v113;
LABEL_57:

          goto LABEL_61;
        }
      }

      v101 = v113;

      goto LABEL_61;
    }

LABEL_61:
    v30 = v119;
    v12 = (*v119)(v11, v6);
    v28 = v129;
LABEL_62:
    v29 = v123;
    v56 = v117;
  }

  while (v123 != v62);
LABEL_63:

  v102 = v56;
  v103 = v111;
LABEL_69:
  v105 = [objc_allocWithZone(type metadata accessor for CalculateDocumentProvider()) init];
  *&v105[OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_declaredVariables] = v133;

  *&v105[OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_expressions] = v102;

  *&v105[OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_evaluationResults] = v103;

  return v105;
}

Class @objc CalculateDocumentProvider.recognizedExpressions.getter(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t *a5)
{
  v7 = a1;

  a4(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

uint64_t CalculateDocumentProvider.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  outlined init with copy of Any?(a1, v28);
  if (!v29)
  {
    outlined destroy of Any?(v28);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v25 = 0;
    return v25 & 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_declaredVariables);
  v5 = *&v27[OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_declaredVariables];

  v6 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v4, v5);

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

  v7 = OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_expressions;
  v8 = *(v2 + OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_expressions);
  if (!(v8 >> 62))
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v9 = v8;
LABEL_6:
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CHMathExpression_pMd);
  v9 = _bridgeCocoaArray<A>(_:)();

  if (!(v9 >> 62))
  {
    goto LABEL_6;
  }

  v10 = __CocoaSet.count.getter();
LABEL_7:

  v11 = OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_expressions;
  v12 = *&v27[OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_expressions];
  if (!(v12 >> 62))
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v13 = v12;
LABEL_9:
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CHMathExpression_pMd);
  v13 = _bridgeCocoaArray<A>(_:)();

  if (!(v13 >> 62))
  {
    goto LABEL_9;
  }

  v14 = __CocoaSet.count.getter();
LABEL_10:

  if (v10 != v14)
  {
    goto LABEL_24;
  }

  v15 = OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_evaluationResults;
  v16 = *(v2 + OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_evaluationResults);
  if (v16 >> 62)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_evaluationResults;
  v19 = *&v27[OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_evaluationResults];
  if (!(v19 >> 62))
  {
    if (v17 == *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v17 != __CocoaSet.count.getter())
  {
    goto LABEL_24;
  }

LABEL_15:
  v20 = *(v2 + v7);
  v21 = *&v27[v11];

  v22 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit14MathExpressionC_Tt1g5(v20, v21);

  if ((v22 & 1) == 0)
  {
    goto LABEL_24;
  }

  v23 = *(v2 + v15);
  v24 = *&v27[v18];

  v25 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit30MathExpressionEvaluationResultC_Tt1g5(v23, v24);

  return v25 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CalculateDocumentProvider.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000736E6FLL;
  v3 = 0x6973736572707865;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x6973736572707865;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v4 == 1)
  {
    v6 = 0xEB00000000736E6FLL;
  }

  else
  {
    v6 = 0x80000001D40805A0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001D4080580;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001D40805A0;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001D4080580;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CalculateDocumentProvider.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CalculateDocumentProvider.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CalculateDocumentProvider.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CalculateDocumentProvider.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CalculateDocumentProvider.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CalculateDocumentProvider.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000736E6FLL;
  v4 = 0x6973736572707865;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001D40805A0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v5)
  {
    v3 = 0x80000001D4080580;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CalculateDocumentProvider.CodingKeys()
{
  v1 = 0x6973736572707865;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CalculateDocumentProvider.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CalculateDocumentProvider.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CalculateDocumentProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CalculateDocumentProvider.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *CalculateDocumentProvider.__allocating_init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit25CalculateDocumentProviderC10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = [objc_allocWithZone(v1) init];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd);
    v11 = 0;
    lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v8[OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_declaredVariables] = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit14MathExpressionCGMd);
    v11 = 1;
    lazy protocol witness table accessor for type [MathExpression] and conformance <A> [A](&lazy protocol witness table cache variable for type [MathExpression] and conformance <A> [A], &lazy protocol witness table cache variable for type MathExpression and conformance MathExpression);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v8[OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_expressions] = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit30MathExpressionEvaluationResultCGMd);
    v11 = 2;
    lazy protocol witness table accessor for type [MathExpressionEvaluationResult] and conformance <A> [A](&lazy protocol witness table cache variable for type [MathExpressionEvaluationResult] and conformance <A> [A], &lazy protocol witness table cache variable for type MathExpressionEvaluationResult and conformance MathExpressionEvaluationResult);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    *&v8[OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_evaluationResults] = v12;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

char *protocol witness for Decodable.init(from:) in conformance CalculateDocumentProvider@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = CalculateDocumentProvider.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CalculateDocumentProvider.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit25CalculateDocumentProviderC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_declaredVariables);
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd);
  lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_expressions);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit14MathExpressionCGMd);
    lazy protocol witness table accessor for type [MathExpression] and conformance <A> [A](&lazy protocol witness table cache variable for type [MathExpression] and conformance <A> [A], &lazy protocol witness table cache variable for type MathExpression and conformance MathExpression);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + OBJC_IVAR____TtC8PaperKit25CalculateDocumentProvider_evaluationResults);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit30MathExpressionEvaluationResultCGMd);
    lazy protocol witness table accessor for type [MathExpressionEvaluationResult] and conformance <A> [A](&lazy protocol witness table cache variable for type [MathExpressionEvaluationResult] and conformance <A> [A], &lazy protocol witness table cache variable for type MathExpressionEvaluationResult and conformance MathExpressionEvaluationResult);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL MathExpression.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v8);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____TtC8PaperKit14MathExpression_expression) == *&v7[OBJC_IVAR____TtC8PaperKit14MathExpression_expression] && *(v1 + OBJC_IVAR____TtC8PaperKit14MathExpression_expression + 8) == *&v7[OBJC_IVAR____TtC8PaperKit14MathExpression_expression + 8];
      if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = *(v1 + OBJC_IVAR____TtC8PaperKit14MathExpression_expressionType);
        v5 = *&v7[OBJC_IVAR____TtC8PaperKit14MathExpression_expressionType];

        return v4 == v5;
      }
    }
  }

  else
  {
    outlined destroy of Any?(v8);
  }

  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MathExpression.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0xEE00657079546E6FLL;
  }

  else
  {
    v2 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v3 = 0xEE00657079546E6FLL;
  }

  else
  {
    v3 = 0xEA00000000006E6FLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MathExpression.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MathExpression.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MathExpression.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MathExpression.CodingKeys(void *a1@<X8>)
{
  v2 = 0xEA00000000006E6FLL;
  if (*v1)
  {
    v2 = 0xEE00657079546E6FLL;
  }

  *a1 = 0x6973736572707865;
  a1[1] = v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MathExpression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MathExpression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *MathExpression.__allocating_init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit14MathExpressionC10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = [objc_allocWithZone(v1) init];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    v16 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = &v8[OBJC_IVAR____TtC8PaperKit14MathExpression_expression];
    *v11 = v9;
    v11[1] = v12;

    v15 = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    *&v8[OBJC_IVAR____TtC8PaperKit14MathExpression_expressionType] = v13;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

char *protocol witness for Decodable.init(from:) in conformance MathExpression@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = MathExpression.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t MathExpression.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit14MathExpressionC10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;

  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v4 + 8))(v6, v3);
  }
}

id @objc MathExpression.expression.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = MEMORY[0x1DA6CCED0](v4, v5);

  return v6;
}

uint64_t @objc MathExpression.expression.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

uint64_t MathExpressionEvaluationResult.strokes.getter()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_drawing);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_allocWithZone(MEMORY[0x1E69784F0]);
  PKDrawing._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v2 + 8))(v4, v1);
  v11 = [v7 initWithDrawing_];

  if (v11)
  {
    v12 = [v11 orderedStrokes];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8CHStroke_pMd);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = v12;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  return v13;
}

BOOL MathExpressionEvaluationResult.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for PKDrawing();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any?(a1, v56);
  if (v57)
  {
    if (swift_dynamicCast())
    {
      v8 = v55;
      v9 = *(v1 + OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_string) == *&v55[OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_string] && *(v1 + OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_string + 8) == *&v55[OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_string + 8];
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
        v10 = *&v8[OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_strokeGroupIdentifier];
        v11 = *(v1 + OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_strokeGroupIdentifier);
        v12 = v10;
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          v54 = OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_drawing;
          v14 = *(v2 + OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_drawing);
          v15 = &selRef_pointyBitPoint;
          if (v14)
          {
            v16 = v14;
            static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = objc_allocWithZone(MEMORY[0x1E69784F0]);
            PKDrawing._bridgeToObjectiveC()(v18);
            v20 = v19;
            (*(v5 + 8))(v7, v4);
            v21 = [v17 initWithDrawing_];

            if (v21)
            {
              v22 = [v21 orderedStrokes];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8CHStroke_pMd);
              v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v16 = v22;
              v15 = &selRef_pointyBitPoint;
            }

            else
            {
              v23 = MEMORY[0x1E69E7CC0];
            }
          }

          else
          {
            v23 = MEMORY[0x1E69E7CC0];
          }

          v24 = v23 >> 62 ? __CocoaSet.count.getter() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

          v25 = OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_drawing;
          v26 = *&v8[OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_drawing];
          if (v26)
          {
            v53 = v24;
            v27 = v26;
            static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
            v28 = objc_allocWithZone(MEMORY[0x1E69784F0]);
            PKDrawing._bridgeToObjectiveC()(v29);
            v31 = v30;
            (*(v5 + 8))(v7, v4);
            v32 = [v28 v15[59]];

            if (v32)
            {
              v33 = [v32 orderedStrokes];
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8CHStroke_pMd);
              v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v27 = v33;
            }

            else
            {
              v34 = MEMORY[0x1E69E7CC0];
            }

            v24 = v53;
          }

          else
          {
            v34 = MEMORY[0x1E69E7CC0];
          }

          v35 = v34 >> 62 ? __CocoaSet.count.getter() : *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v24 == v35)
          {
            v36 = *(v2 + v54);
            if (v36)
            {
              [v36 bounds];
              v38 = v37;
              v40 = v39;
              v42 = v41;
              v44 = v43;
              v45 = *&v8[v25];
              if (v45)
              {
LABEL_29:
                [v45 bounds];
LABEL_35:
                v50 = CGRect.almostEqual(_:threshold:)(v46, v47, v48, v49, 0.1, v38, v40, v42, v44);

                return v50;
              }
            }

            else
            {
              v38 = *MEMORY[0x1E695F050];
              v40 = *(MEMORY[0x1E695F050] + 8);
              v42 = *(MEMORY[0x1E695F050] + 16);
              v44 = *(MEMORY[0x1E695F050] + 24);
              v45 = *&v8[v25];
              if (v45)
              {
                goto LABEL_29;
              }
            }

            v46 = *MEMORY[0x1E695F050];
            v47 = *(MEMORY[0x1E695F050] + 8);
            v48 = *(MEMORY[0x1E695F050] + 16);
            v49 = *(MEMORY[0x1E695F050] + 24);
            goto LABEL_35;
          }
        }
      }
    }
  }

  else
  {
    outlined destroy of Any?(v56);
  }

  return 0;
}

uint64_t @objc CalculateDocumentProvider.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of Any?(v10);
  return v8 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MathExpressionEvaluationResult.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x44676E6977617264;
  }

  else
  {
    v3 = 0x676E69727473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEB00000000617461;
  }

  if (*a2)
  {
    v5 = 0x44676E6977617264;
  }

  else
  {
    v5 = 0x676E69727473;
  }

  if (*a2)
  {
    v6 = 0xEB00000000617461;
  }

  else
  {
    v6 = 0xE600000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MathExpressionEvaluationResult.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MathExpressionEvaluationResult.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MathExpressionEvaluationResult.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MathExpression.CodingKeys@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MathExpressionEvaluationResult.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x676E69727473;
  if (*v1)
  {
    v2 = 0x44676E6977617264;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000617461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MathExpressionEvaluationResult.CodingKeys()
{
  if (*v0)
  {
    return 0x44676E6977617264;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MathExpression.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MathExpressionEvaluationResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MathExpressionEvaluationResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *MathExpressionEvaluationResult.__allocating_init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit30MathExpressionEvaluationResultC10CodingKeysOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = [objc_allocWithZone(v1) init];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    LOBYTE(v23[0]) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = &v8[OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_string];
    *v10 = v9;
    v10[1] = v11;

    LOBYTE(v23[0]) = 1;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v24) = 1;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v13 = v23[0];
      v21 = v23[1];
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSKeyedUnarchiver);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D405C990;
      v20 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKDrawing);
      *(v14 + 32) = v20;
      *(v14 + 40) = type metadata accessor for PKDrawingCoherence(0);
      v22 = v13;
      v15 = v21;
      static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
      (*(v5 + 8))(v7, v4);

      outlined consume of Data._Representation(v22, v15);
      if (v23[3])
      {
        v16 = swift_dynamicCast();
        v17 = v24;
        if (!v16)
        {
          v17 = 0;
        }
      }

      else
      {
        outlined destroy of Any?(v23);
        v17 = 0;
      }

      v18 = *&v8[OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_drawing];
      *&v8[OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_drawing] = v17;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

char *protocol witness for Decodable.init(from:) in conformance MathExpressionEvaluationResult@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = MathExpressionEvaluationResult.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t MathExpressionEvaluationResult.encode(to:)(void *a1)
{
  v3 = v1;
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit30MathExpressionEvaluationResultC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20[0]) = 0;

  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  v10 = *(v3 + OBJC_IVAR____TtC8PaperKit30MathExpressionEvaluationResult_drawing);
  if (v10)
  {
    v11 = objc_opt_self();
    v20[0] = 0;
    v12 = v10;
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v20];
    v14 = v20[0];
    if (v13)
    {
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v20[0] = v15;
      v20[1] = v17;
      v19[7] = 1;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v6 + 8))(v8, v5);

      return outlined consume of Data._Representation(v15, v17);
    }

    v18 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys;
  if (!lazy protocol witness table cache variable for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CalculateDocumentProvider.CodingKeys and conformance CalculateDocumentProvider.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MathExpression] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8PaperKit14MathExpressionCGMd);
    _s10Foundation4UUIDVACSHAAWlTm_0(a2, v5, type metadata accessor for MathExpression);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MathExpressionEvaluationResult] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8PaperKit30MathExpressionEvaluationResultCGMd);
    _s10Foundation4UUIDVACSHAAWlTm_0(a2, v5, type metadata accessor for MathExpressionEvaluationResult);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MathExpression.CodingKeys and conformance MathExpression.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MathExpressionEvaluationResult.CodingKeys and conformance MathExpressionEvaluationResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t specialized CalculateDocumentProvider.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CalculateDocumentProvider.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

char *SignatureEditViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_panelSize] = xmmword_1D4060E20;
  v7 = OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_navigationBar;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69DCCC0]) init];
  v8 = &v3[OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_completion];
  *v8 = UnknownCanvasElementView.flags.modify;
  *(v8 + 1) = 0;
  if (a2)
  {

    v9 = MEMORY[0x1DA6CCED0](a1, a2);
  }

  else
  {
    v9 = 0;
  }

  v19.receiver = v3;
  v19.super_class = type metadata accessor for SignatureEditViewController();
  v10 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, v9, a3);

  v11 = v10;
  [v11 setModalTransitionStyle_];
  [v11 setModalPresentationStyle_];
  [v11 setModalInPresentation_];
  [v11 setPreferredContentSize_];
  result = [v11 view];
  if (result)
  {
    v13 = result;

    v14 = objc_opt_self();
    v15 = [v14 systemBackgroundColor];
    [v13 setBackgroundColor_];

    v16 = OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_navigationBar;
    [*&v11[OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_navigationBar] setTranslatesAutoresizingMaskIntoConstraints_];
    v17 = *&v11[v16];
    v18 = [v14 systemBackgroundColor];
    [v17 setBackgroundColor_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SignatureEditViewController.viewDidLoad()()
{
  v1 = v0;
  v67.receiver = v0;
  v67.super_class = type metadata accessor for SignatureEditViewController();
  objc_msgSendSuper2(&v67, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  v4 = *&v1[OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_navigationBar];
  [v2 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D405B640;
  v6 = [v4 widthAnchor];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  v9 = [v7 widthAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [v4 topAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  v14 = [v12 safeAreaLayoutGuide];

  v15 = [v14 topAnchor];
  if (_UISolariumEnabled())
  {
    v16 = 10.0;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = objc_opt_self();
  v18 = [v11 constraintEqualToAnchor:v15 constant:v16];

  *(v5 + 40) = v18;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints_];

  type metadata accessor for SignatureListViewController();
  v20 = *&v1[OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_completion];
  v21 = *&v1[OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_completion + 8];

  SignatureListViewController.__allocating_init(editable:_:)(1, v20, v21);
  v23 = v22;
  v24 = [v23 view];
  if (!v24)
  {
    goto LABEL_21;
  }

  v25 = v24;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];

  [v1 addChildViewController_];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = v26;
  v28 = [v23 view];
  if (!v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v29 = v28;
  [v27 addSubview_];

  [v23 didMoveToParentViewController_];
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D405B630;
  v31 = [v23 view];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v1 view];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v30 + 32) = v37;
  v38 = [v23 view];
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  v40 = [v38 trailingAnchor];

  v41 = [v1 view];
  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = v41;
  v43 = [v41 trailingAnchor];

  v44 = [v40 constraintEqualToAnchor_];
  *(v30 + 40) = v44;
  v45 = [v23 view];
  if (!v45)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v46 = v45;
  v47 = [v45 topAnchor];

  v48 = [v4 bottomAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v30 + 48) = v49;
  v50 = [v23 view];
  if (!v50)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v51 = v50;
  v52 = [v50 bottomAnchor];

  v53 = [v1 view];
  if (v53)
  {
    v54 = v53;
    v55 = [v53 bottomAnchor];

    v56 = [v52 constraintEqualToAnchor_];
    *(v30 + 56) = v56;
    v57 = Array._bridgeToObjectiveC()().super.isa;

    [v17 activateConstraints_];

    v58 = [objc_allocWithZone(MEMORY[0x1E69DCCE0]) init];
    v59 = [v23 title];

    [v58 setTitle_];
    v60 = objc_allocWithZone(MEMORY[0x1E69DC708]);
    v61 = v1;
    v62 = [v60 initWithBarButtonSystemItem:4 target:v61 action:sel_addAction_];
    [v58 setLeftBarButtonItem_];

    v63 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v61 action:sel_doneAction_];
    [v58 setRightBarButtonItem_];

    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1D405CEB0;
    *(v64 + 32) = v58;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UINavigationItem);
    v65 = v58;
    v66 = Array._bridgeToObjectiveC()().super.isa;

    [v4 setItems_];

    return;
  }

LABEL_30:
  __break(1u);
}

id closure #1 in SignatureEditViewController.addAction(_:)(void *a1, id a2)
{
  v4 = [a2 traitCollection];
  v5 = [v4 userInterfaceStyle];

  [a1 setOverrideUserInterfaceStyle_];

  return [a2 presentViewController:a1 animated:1 completion:0];
}

id SignatureEditViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignatureEditViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized SignatureEditViewController.addAction(_:)()
{
  v1 = v0;
  if (one-time initialization token for SignatureLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, SignatureLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D38C4000, v3, v4, "showing creation panel", v5, 2u);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v7 = *&v1[OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_completion];
  v6 = *&v1[OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_completion + 8];
  v8 = objc_allocWithZone(type metadata accessor for SignatureCreationViewController());

  v9 = [v8 initWithNibName:0 bundle:0];
  v10 = &v9[OBJC_IVAR____TtC8PaperKit31SignatureCreationViewController_completion];
  *v10 = v7;
  *(v10 + 1) = v6;

  v11 = [v1 presentingViewController];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    *(v13 + 24) = v12;
    v17[4] = partial apply for closure #1 in SignatureEditViewController.addAction(_:);
    v17[5] = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v17[3] = &block_descriptor_10_0;
    v14 = _Block_copy(v17);
    v15 = v9;
    v16 = v12;

    [v1 dismissViewControllerAnimated:1 completion:v14];
    _Block_release(v14);
  }

  else
  {
    __break(1u);
  }
}

void specialized SignatureEditViewController.doneAction(_:)()
{
  v1 = v0;
  if (one-time initialization token for SignatureLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, SignatureLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D38C4000, v3, v4, "edit panel done", v5, 2u);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v9[4] = partial apply for closure #1 in SignatureEditViewController.doneAction(_:);
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v9[3] = &block_descriptor_17;
  v7 = _Block_copy(v9);
  v8 = v1;

  [v8 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

uint64_t partial apply for closure #1 in SignatureEditViewController.doneAction(_:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8PaperKit27SignatureEditViewController_completion);

  v1(0);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void @objc SignatureView.init(coder:)(uint64_t a1)
{
  v2 = direct field offset for SignatureView.imageView;
  *(a1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *(a1 + direct field offset for SignatureView.defaultSignatureWidth) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t SignatureView.modifiableProperties.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  v10 = *(v3 + 16);
  v10(v8, &v1[v9], v2);
  swift_getKeyPath();
  Capsule.subscript.getter();
  v11 = *(v3 + 8);
  result = v11(v8, v2);
  v13 = v18;
  if (v18)
  {

    v14 = v13[OBJC_IVAR____TtC8PaperKit13SignatureItem_isOwned];

    if (v14 == 1)
    {
      v15 = (v10)(v5, &v1[v9], v2);
      MEMORY[0x1EEE9AC00](v15);
      *(&v18 - 4) = type metadata accessor for Signature(0);
      *(&v18 - 3) = lazy protocol witness table accessor for type Signature and conformance Signature();
      *(&v18 - 2) = &protocol witness table for Signature;
      swift_getKeyPath();
      Capsule.subscript.getter();

      v11(v5, v2);
      result = 0;
      if ((v18 & 4) == 0)
      {
        v16 = 9;
        if ((v18 & 0x80) == 0)
        {
          v16 = 11;
        }

        v17 = 3;
        if ((v18 & 0x80) != 0)
        {
          v17 = 1;
        }

        if ((v18 & 0x10) != 0)
        {
          return v17;
        }

        else
        {
          return v16;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SignatureView.isSelectable.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - v3;
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v5], v1);
  swift_getKeyPath();
  Capsule.subscript.getter();
  result = (*(v2 + 8))(v4, v1);
  v7 = v9;
  if (v9)
  {

    v8 = v7[OBJC_IVAR____TtC8PaperKit13SignatureItem_isOwned];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void SignatureView.isSelected.setter(char a1)
{
  *(v1 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_isSelected) = a1;
  specialized CanvasElementView.isSelected.didset();

  SignatureView.updateUI()();
}

void @objc SignatureView.traitCollectionDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    v8 = a1;
    v5 = [v4 userInterfaceStyle];
    v6 = [v8 traitCollection];
    v7 = [v6 userInterfaceStyle];

    if (v5 != v7)
    {
      SignatureView.updateUI()();
    }
  }
}

Swift::Void __swiftcall SignatureView.layoutSubviews()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v58 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - v10;
  v12 = type metadata accessor for SignatureView();
  v68.receiver = v0;
  v68.super_class = v12;
  objc_msgSendSuper2(&v68, sel_layoutSubviews);
  v13 = *(v0 + direct field offset for SignatureView.imageView);
  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  t1.tx = 0.0;
  t1.ty = 0.0;
  v64 = v13;
  [v13 setTransform_];
  [v1 bounds];
  [v13 setFrame_];
  v14 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  v15 = *(v5 + 16);
  v15(v11, v1 + v14, v4);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v16 = *(v5 + 8);
  v16(v11, v4);
  v17.n128_u64[0] = *&t1.c;
  if (t1.c >= 0.0)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = -1.0;
  }

  (v15)(v11, v1 + v14, v4, v17);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v16(v11, v4);
  if (t1.d >= 0.0)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = -1.0;
  }

  CGAffineTransformMakeScale(&t1, v18, v19);
  tx = t1.tx;
  ty = t1.ty;
  v62 = *&t1.a;
  v61 = *&t1.c;
  v60 = v14;
  v63 = v15;
  v15(v11, v1 + v14, v4);
  swift_getKeyPath();
  Capsule.subscript.getter();
  v22 = v64;

  v16(v11, v4);
  CGAffineTransformMakeRotation(&t1, t2.a);
  v23 = *&t1.a;
  v24 = *&t1.c;
  v25 = *&t1.tx;
  *&t1.a = v62;
  *&t1.c = v61;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v23;
  *&t2.c = v24;
  *&t2.tx = v25;
  CGAffineTransformConcat(&v65, &t1, &t2);
  t1 = v65;
  [v22 setTransform_];
  v26 = [v22 image];
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = [v22 image];
  if (!v27)
  {
    __break(1u);
    return;
  }

  v28 = v27;
  [v27 size];
  v30 = v29;
  v32 = v31;

  [v22 bounds];
  if (v30 != v34 || v32 != v33)
  {
LABEL_11:
    v35 = v60;
    v36 = v59;
    v37 = v63;
    v63(v59, v1 + v60, v4);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v16(v36, v4);
    if (*&t2.a)
    {
      *&v62 = t2.a;
      [v1 bounds];
      v39 = v38;
      v41 = v40;
      v42 = v57;
      v37(v57, v1 + v35, v4);
      swift_getKeyPath();
      v43 = v58;
      Capsule.subscript.getter();

      v16(v42, v4);
      v44 = type metadata accessor for Color(0);
      if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s8PaperKit5ColorVSgMd);
        v45 = 0;
      }

      else
      {
        v45 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
        outlined destroy of Signature(v43, type metadata accessor for Color);
      }

      v63(v11, v1 + v35, v4);
      swift_getKeyPath();
      Capsule.subscript.getter();

      v16(v11, v4);
      a = t1.a;
      b_low = LOBYTE(t1.b);

      v49 = objc_opt_self();
      v50 = [v49 currentTraitCollection];
      v51 = [v50 userInterfaceStyle];

      v52 = [v49 currentTraitCollection];
      [v52 displayScale];
      v54 = v53;

      v55 = *&a;
      v56 = v62;
      v46 = SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(v45, v55, b_low, v51 == 2, v39, v41, v54);
    }

    else
    {
      v46 = 0;
    }

    [v64 setImage_];
  }
}

void @objc SignatureView.layoutSubviews()(void *a1)
{
  v1 = a1;
  SignatureView.layoutSubviews()();
}

Swift::Void __swiftcall SignatureView.updateUI()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v39 - v3;
  v4 = type metadata accessor for Color(0);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Signature(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  specialized CanvasElementView.updateGestures()();
  specialized CanvasElementView.updateFrame()();
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v18 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x928))();
  }

  v19 = *((*v17 & *v1) + 0x3F0);
  swift_beginAccess();
  v20 = *(v10 + 16);
  v20(v15, &v1[v19], v9);
  Capsule.root.getter();
  outlined destroy of Signature(v8, type metadata accessor for Signature);
  v21 = *(v10 + 8);
  v22 = v15;
  v23 = v1;
  v21(v22, v9);
  v20(v12, &v1[v19], v9);
  swift_getKeyPath();
  v24 = v43;
  Capsule.subscript.getter();

  v21(v12, v9);
  if ((*(v41 + 48))(v24, 1, v42) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s8PaperKit5ColorVSgMd);
    v25 = [objc_opt_self() blackColor];
  }

  else
  {
    v26 = v40;
    outlined init with take of Color(v24, v40);
    v27 = [v23 layer];
    v28 = *v26;
    v29 = CGColorRef.isHDR.getter();
    v30 = MEMORY[0x1E69792A0];
    if ((v29 & 1) == 0)
    {
      v30 = MEMORY[0x1E69792A8];
    }

    v31 = *v30;
    [v27 setPreferredDynamicRange_];

    v25 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    outlined destroy of Signature(v26, type metadata accessor for Color);
  }

  v32 = v25;
  v33 = [v23 traitCollection];
  v34 = swift_allocObject();
  *(v34 + 16) = v23;
  *(v34 + 24) = v32;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for closure #1 in SignatureView.updateUI();
  *(v35 + 24) = v34;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_18;
  v36 = _Block_copy(aBlock);
  v37 = v23;

  [v33 performAsCurrentTraitCollection_];

  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void closure #1 in SignatureView.updateUI()(char *a1, void *a2)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v28 = *&a1[direct field offset for SignatureView.imageView];
  v10 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  swift_beginAccess();
  v11 = *(v4 + 16);
  v11(v9, &a1[v10], v3);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v12 = *(v4 + 8);
  v12(v9, v3);
  v13 = v31;
  if (v31)
  {
    [a1 bounds];
    v15 = v14;
    v17 = v16;
    v11(v6, &a1[v10], v3);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v12(v6, v3);
    v18 = v29;
    v19 = v30;

    v20 = objc_opt_self();
    v21 = [v20 currentTraitCollection];
    v22 = [v21 userInterfaceStyle];

    v23 = [v20 currentTraitCollection];
    [v23 displayScale];
    v25 = v24;

    v26 = SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(v27, v18, v19, v22 == 2, v15, v17, v25);
  }

  else
  {
    v26 = 0;
  }

  [v28 setImage_];
}

id @objc SignatureView.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(void *a1)
{
  v1 = a1;
  v2 = [v1 window];
  if (v2)
  {

    v3 = *&v1[direct field offset for SignatureView.imageView];
    v4 = objc_allocWithZone(MEMORY[0x1E69DD070]);
    v5 = v3;
    v6 = [v4 initWithView_];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id SignatureView.dragInteractionPreviewForLifting(item:session:)()
{
  v1 = *(v0 + direct field offset for SignatureView.imageView);
  result = [v1 window];
  if (result)
  {

    return [objc_allocWithZone(MEMORY[0x1E69DD068]) initWithView_];
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall SignatureView.pasteboardRepresentation()()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [*(v0 + direct field offset for SignatureView.imageView) image];
  if (v6)
  {
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D4058CF0;
    static UTType.png.getter();
    v10 = UTType.identifier.getter();
    v12 = v11;
    (*(v2 + 8))(v5, v1);
    *(inited + 32) = v10;
    *(inited + 40) = v12;
    *(inited + 72) = type metadata accessor for UIImage();
    *(inited + 48) = v8;
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSS_yptMd);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  result.value._rawValue = v14;
  result.is_nil = v7;
  return result;
}

id SignatureView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignatureView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SignatureView()
{
  result = type metadata singleton initialization cache for SignatureView;
  if (!type metadata singleton initialization cache for SignatureView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata accessor for UIImage()
{
  result = lazy cache variable for type metadata for UIImage;
  if (!lazy cache variable for type metadata for UIImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIImage);
  }

  return result;
}

void *specialized SignatureView.init(frame:canvasElement:canvas:parentCanvasElement:)(char *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - v17;
  v19 = direct field offset for SignatureView.imageView;
  *&v7[v19] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v7[direct field offset for SignatureView.defaultSignatureWidth] = 2;
  v20 = *(v16 + 16);
  v20(v18, a1, v15);
  v21 = MEMORY[0x1E69E7D40];
  (*(v16 + 56))(&v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0x3F8)], 1, 1, v15);
  *&v7[*((*v21 & *v7) + 0x400)] = 0;
  *&v7[*((*v21 & *v7) + 0x408)] = 0;
  *&v7[*((*v21 & *v7) + 0x410)] = 0;
  *&v7[*((*v21 & *v7) + 0x418)] = 0;
  *&v7[*((*v21 & *v7) + 0x420)] = 0;
  v20(&v7[*((*v21 & *v7) + 0x3F0)], v18, v15);
  v22 = a3;
  v23 = a2;
  v24 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(a2, a3, a4, a5, a6, a7);
  specialized CanvasElementView.setupAccessibility()();
  if (a2)
  {
    (*((*v21 & *v24) + 0x520))();
  }

  v25 = *(v16 + 8);
  v25(v18, v15);
  v26 = *(v24 + direct field offset for SignatureView.imageView);
  v27 = v24;
  [v27 addSubview_];
  [v27 setIsAccessibilityElement_];
  swift_getKeyPath();
  Capsule.subscript.getter();

  v28 = v44;
  if (v44)
  {
    v29 = *&v44[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription];
    v30 = *&v44[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription + 8];
    outlined copy of SignatureDescription(v29, v30);

    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v47._object = 0x80000001D40866B0;
    v31._countAndFlagsBits = 0x727574616E676953;
    v32.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v32.value._object = 0xEB00000000656C62;
    v31._object = 0xE900000000000065;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0xD00000000000001DLL;
    v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, paperKitBundle, v33, v47);
    outlined consume of SignatureDescription(v29, v30);
    v35 = MEMORY[0x1DA6CCED0](v34._countAndFlagsBits, v34._object);
  }

  else
  {
    v35 = 0;
  }

  [v27 setAccessibilityLabel_];

  swift_getKeyPath();
  Capsule.subscript.getter();

  v36 = v46;
  if (v46)
  {
    v38 = *&v46[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription];
    v37 = *&v46[OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription + 8];
    outlined copy of SignatureDescription(v38, v37);

    if (v37 - 1 >= 5)
    {
      if (v37)
      {
        countAndFlagsBits = v38;
      }

      else
      {
        countAndFlagsBits = 0;
      }

      if (v37)
      {
        object = v37;
      }

      else
      {
        object = 0xE000000000000000;
      }
    }

    else
    {
      v44 = v38;
      v45 = v37;
      v39 = SignatureDescription.localizedTitle()();
      countAndFlagsBits = v39._countAndFlagsBits;
      object = v39._object;
      outlined consume of SignatureDescription(v38, v37);
    }

    v36 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);
  }

  [v27 setAccessibilityValue_];

  v25(a1, v15);
  return v27;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined destroy of Signature(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Signature and conformance Signature()
{
  result = lazy protocol witness table cache variable for type Signature and conformance Signature;
  if (!lazy protocol witness table cache variable for type Signature and conformance Signature)
  {
    type metadata accessor for Signature(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Signature and conformance Signature);
  }

  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CanvasElementFlags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.init(from:) in conformance CanvasElementFlags(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance CanvasElementFlags(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void))
{
  a4();
  a5();
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance CanvasElementFlags(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v6 = a3();
  v7 = a4();
  v8 = MEMORY[0x1E6995528];

  return MEMORY[0x1EEDF52E0](a1, v6, v7, v8);
}

uint64_t SharedTagged_10<>.layout()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  WeakTagged_10.tag.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit19TaggedCanvasElementV4EnumOGMd);
  CRExtensible.rawValue.getter();
  if (v9 > 4)
  {
    if (v9 <= 6)
    {
      if (v9 == 5)
      {
        v3 = type metadata accessor for ShapeLayout();
        v4 = &protocol witness table for ShapeLayout;
      }

      else
      {
        v3 = type metadata accessor for SignatureLayout();
        v4 = &protocol witness table for SignatureLayout;
      }

      goto LABEL_22;
    }

    switch(v9)
    {
      case 7:
        v3 = type metadata accessor for PaperDocumentPageLayout();
        v4 = &protocol witness table for PaperDocumentPageLayout;
        goto LABEL_22;
      case 8:
        v3 = type metadata accessor for PDFAnnotationElementLayout();
        v4 = &protocol witness table for PDFAnnotationElementLayout;
        goto LABEL_22;
      case 9:
        v3 = type metadata accessor for LoupeLayout();
        v4 = &protocol witness table for LoupeLayout;
LABEL_22:
        a1[3] = v3;
        a1[4] = v4;
        __swift_allocate_boxed_opaque_existential_1(a1);
        return MEMORY[0x1DA6CB870](v2);
    }
  }

  else
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v3 = type metadata accessor for GraphLayout();
        v4 = &protocol witness table for GraphLayout;
      }

      else if (v9 == 3)
      {
        v3 = type metadata accessor for TextBoxLayout();
        v4 = &protocol witness table for TextBoxLayout;
      }

      else
      {
        v3 = type metadata accessor for LinkLayout();
        v4 = &protocol witness table for LinkLayout;
      }

      goto LABEL_22;
    }

    if (!v9)
    {
      v3 = type metadata accessor for PaperLayout();
      v4 = &protocol witness table for PaperLayout;
      goto LABEL_22;
    }

    if (v9 == 1)
    {
      v3 = type metadata accessor for ImageLayout();
      v4 = &protocol witness table for ImageLayout;
      goto LABEL_22;
    }
  }

  v6 = type metadata accessor for UnknownLayout();
  a1[3] = v6;
  a1[4] = &protocol witness table for UnknownLayout;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  MEMORY[0x1DA6CB870](v2);
  WeakTagged_10.tag.getter();
  result = CRExtensible.rawValue.getter();
  *(boxed_opaque_existential_1 + *(v6 + 20)) = v8;
  return result;
}

uint64_t specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36 = a4;
  v37 = a2;
  v38 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  outlined init with copy of Date?(a1, v10, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGSgMd);
  }

  v34 = v5;
  v35 = v17;
  v32 = *(v12 + 32);
  v32(v17, v10, v11);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v33 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v14, v17, v11);
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v22 = v36;
  v21 = v37;
  v23 = v38;
  *(v20 + 16) = v37;
  *(v20 + 24) = v23;
  v32((v20 + v19), v14, v11);
  *(v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = partial apply for specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_138;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  v26 = v21;
  v27 = v23;

  v28 = v39;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v29 = v41;
  v30 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = v33;
  MEMORY[0x1DA6CD890](0, v28, v29, v24);
  _Block_release(v24);

  (*(v43 + 8))(v29, v30);
  (*(v40 + 8))(v28, v42);
  return (*(v12 + 8))(v35, v11);
}

{
  v36 = a4;
  v37 = a2;
  v38 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  outlined init with copy of Date?(a1, v10, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  }

  v34 = v5;
  v35 = v17;
  v32 = *(v12 + 32);
  v32(v17, v10, v11);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v33 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v14, v17, v11);
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v22 = v36;
  v21 = v37;
  v23 = v38;
  *(v20 + 16) = v37;
  *(v20 + 24) = v23;
  v32((v20 + v19), v14, v11);
  *(v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = partial apply for specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_232;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  v26 = v21;
  v27 = v23;

  v28 = v39;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v29 = v41;
  v30 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = v33;
  MEMORY[0x1DA6CD890](0, v28, v29, v24);
  _Block_release(v24);

  (*(v43 + 8))(v29, v30);
  (*(v40 + 8))(v28, v42);
  return (*(v12 + 8))(v35, v11);
}

{
  v36 = a4;
  v37 = a2;
  v38 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  outlined init with copy of Date?(a1, v10, &_s9Coherence7CapsuleVy8PaperKit4LinkVGSgMd);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence7CapsuleVy8PaperKit4LinkVGSgMd);
  }

  v34 = v5;
  v35 = v17;
  v32 = *(v12 + 32);
  v32(v17, v10, v11);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v33 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v14, v17, v11);
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v22 = v36;
  v21 = v37;
  v23 = v38;
  *(v20 + 16) = v37;
  *(v20 + 24) = v23;
  v32((v20 + v19), v14, v11);
  *(v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = partial apply for specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_112;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  v26 = v21;
  v27 = v23;

  v28 = v39;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v29 = v41;
  v30 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = v33;
  MEMORY[0x1DA6CD890](0, v28, v29, v24);
  _Block_release(v24);

  (*(v43 + 8))(v29, v30);
  (*(v40 + 8))(v28, v42);
  return (*(v12 + 8))(v35, v11);
}

{
  v36 = a4;
  v37 = a2;
  v38 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  outlined init with copy of Date?(a1, v10, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGSgMd);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGSgMd);
  }

  v34 = v5;
  v35 = v17;
  v32 = *(v12 + 32);
  v32(v17, v10, v11);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v33 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v14, v17, v11);
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v22 = v36;
  v21 = v37;
  v23 = v38;
  *(v20 + 16) = v37;
  *(v20 + 24) = v23;
  v32((v20 + v19), v14, v11);
  *(v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = partial apply for specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_167;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  v26 = v21;
  v27 = v23;

  v28 = v39;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v29 = v41;
  v30 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = v33;
  MEMORY[0x1DA6CD890](0, v28, v29, v24);
  _Block_release(v24);

  (*(v43 + 8))(v29, v30);
  (*(v40 + 8))(v28, v42);
  return (*(v12 + 8))(v35, v11);
}

{
  v36 = a4;
  v37 = a2;
  v38 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  outlined init with copy of Date?(a1, v10, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  }

  v34 = v5;
  v35 = v17;
  v32 = *(v12 + 32);
  v32(v17, v10, v11);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v33 = static OS_dispatch_queue.main.getter();
  (*(v12 + 16))(v14, v17, v11);
  v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v20 = swift_allocObject();
  v22 = v36;
  v21 = v37;
  v23 = v38;
  *(v20 + 16) = v37;
  *(v20 + 24) = v23;
  v32((v20 + v19), v14, v11);
  *(v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = partial apply for specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_196;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  v26 = v21;
  v27 = v23;

  v28 = v39;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v29 = v41;
  v30 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = v33;
  MEMORY[0x1DA6CD890](0, v28, v29, v24);
  _Block_release(v24);

  (*(v43 + 8))(v29, v30);
  (*(v40 + 8))(v28, v42);
  return (*(v12 + 8))(v35, v11);
}

uint64_t specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D4083BF0);
  v9 = [a1 hasItemConformingToTypeIdentifier_];

  v10 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x700);
  v11 = type metadata accessor for Shape(0);
  v12 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  return v10(a3, 1, a4, v9, v11, v12, &protocol witness table for Shape);
}

{
  v8 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D4083BF0);
  v9 = [a1 hasItemConformingToTypeIdentifier_];

  v10 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x700);
  v11 = type metadata accessor for Paper(0);
  v12 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  return v10(a3, 1, a4, v9, v11, v12, &protocol witness table for Paper);
}

{
  v8 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D4083BF0);
  v9 = [a1 hasItemConformingToTypeIdentifier_];

  v10 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x700);
  v11 = type metadata accessor for Link(0);
  v12 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link);
  return v10(a3, 1, a4, v9, v11, v12, &protocol witness table for Link);
}

{
  v8 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D4083BF0);
  v9 = [a1 hasItemConformingToTypeIdentifier_];

  v10 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x700);
  v11 = type metadata accessor for GraphElement(0);
  v12 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
  return v10(a3, 1, a4, v9, v11, v12, &protocol witness table for GraphElement);
}

{
  v8 = MEMORY[0x1DA6CCED0](0xD000000000000011, 0x80000001D4083BF0);
  v9 = [a1 hasItemConformingToTypeIdentifier_];

  v10 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x700);
  v11 = type metadata accessor for Image(0);
  v12 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  return v10(a3, 1, a4, v9, v11, v12, &protocol witness table for Image);
}

uint64_t specialized static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v56 = a2;
  v15 = type metadata accessor for UTType();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65, v17);
  v21 = [a1 hasItemConformingToTypeIdentifier_];

  if ((v21 & 1) != 0 || (v22 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380), v23 = [a1 hasItemConformingToTypeIdentifier_], v22, v23))
  {
    v24 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
    v25 = [a1 hasRepresentationConformingToTypeIdentifier:v24 fileOptions:0];

    if (v25)
    {
      v26 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v28 = swift_allocObject();
      v29 = v56;
      *(v28 + 16) = v56;
      *(v28 + 24) = a4;
      *(v28 + 32) = a5;
      *(v28 + 40) = a6;
      *(v28 + 48) = a7;
      *(v28 + 56) = UnknownCanvasElementView.flags.modify;
      *(v28 + 64) = 0;
      v61 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v62 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v58 = 1107296256;
      v30 = &block_descriptor_132;
LABEL_7:
      v59 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
      v60 = v30;
      v34 = _Block_copy(&aBlock);
      v35 = v29;

      [a1 loadItemForTypeIdentifier:v26 options:v27.super.isa completionHandler:v34];
      _Block_release(v34);

      return 1;
    }

    v31 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    v32 = [a1 hasRepresentationConformingToTypeIdentifier:v31 fileOptions:0];

    if (v32)
    {
      v26 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v33 = swift_allocObject();
      v29 = v56;
      *(v33 + 16) = v56;
      *(v33 + 24) = a4;
      *(v33 + 32) = a5;
      *(v33 + 40) = a6;
      *(v33 + 48) = a7;
      *(v33 + 56) = UnknownCanvasElementView.flags.modify;
      *(v33 + 64) = 0;
      v61 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v62 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v58 = 1107296256;
      v30 = &block_descriptor_125;
      goto LABEL_7;
    }
  }

  else
  {
    v37 = v56;
    [v56 frame];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v55 = v44;
    LOBYTE(aBlock) = 0;
    CRContext.assetManager.getter();

    v45 = swift_allocObject();
    v45[2] = a1;
    v45[3] = v37;
    v45[4] = a3;
    v46 = a3;
    v47 = v37;
    v48 = a1;
    static UTType.utf8PlainText.getter();
    v49 = UTType.identifier.getter();
    v51 = v50;
    (*(v16 + 8))(v19, v15);
    v52 = MEMORY[0x1DA6CCED0](v49, v51);

    LODWORD(v51) = [v48 hasRepresentationConformingToTypeIdentifier:v52 fileOptions:0];

    if (v51)
    {
      v53 = swift_allocObject();
      *(v53 + 16) = v39;
      *(v53 + 24) = v41;
      v54 = v55;
      *(v53 + 32) = v43;
      *(v53 + 40) = v54;
      *(v53 + 48) = a4;
      *(v53 + 56) = a5;
      *(v53 + 64) = a6;
      *(v53 + 72) = a7;
      *(v53 + 80) = aBlock;
      *(v53 + 88) = a8;
      *(v53 + 96) = 9;
      *(v53 + 104) = 0;
      *(v53 + 112) = 0;
      *(v53 + 120) = 1;
      *(v53 + 128) = partial apply for specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:);
      *(v53 + 136) = v45;
      lazy protocol witness table accessor for type String and conformance String();

      return 1;
    }
  }

  return 0;
}

{
  v16 = type metadata accessor for UTType();
  v65 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65, v17);
  v21 = [a1 hasItemConformingToTypeIdentifier_];

  if ((v21 & 1) != 0 || (v22 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380), v23 = [a1 hasItemConformingToTypeIdentifier_], v22, v23))
  {
    v24 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
    v25 = [a1 hasRepresentationConformingToTypeIdentifier:v24 fileOptions:0];

    if (v25)
    {
      v26 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v28 = swift_allocObject();
      *(v28 + 16) = a2;
      *(v28 + 24) = a4;
      *(v28 + 32) = a5;
      *(v28 + 40) = a6;
      *(v28 + 48) = a7;
      *(v28 + 56) = UnknownCanvasElementView.flags.modify;
      *(v28 + 64) = 0;
      v70 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v71 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v67 = 1107296256;
      v29 = &block_descriptor_106;
LABEL_7:
      v68 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
      v69 = v29;
      v33 = _Block_copy(&aBlock);
      v34 = a2;

      [a1 loadItemForTypeIdentifier:v26 options:v27.super.isa completionHandler:v33];
      _Block_release(v33);

      return 1;
    }

    v30 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    v31 = [a1 hasRepresentationConformingToTypeIdentifier:v30 fileOptions:0];

    if (v31)
    {
      v26 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v32 = swift_allocObject();
      *(v32 + 16) = a2;
      *(v32 + 24) = a4;
      *(v32 + 32) = a5;
      *(v32 + 40) = a6;
      *(v32 + 48) = a7;
      *(v32 + 56) = UnknownCanvasElementView.flags.modify;
      *(v32 + 64) = 0;
      v70 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v71 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v67 = 1107296256;
      v29 = &block_descriptor_99_0;
      goto LABEL_7;
    }

    return 0;
  }

  [a2 frame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v64 = v42;
  v72 = 0;
  CRContext.assetManager.getter();

  v43 = swift_allocObject();
  v43[2] = a1;
  v43[3] = a2;
  v43[4] = a3;
  v44 = *MEMORY[0x1E69D5450];
  v45 = a3;
  v46 = a2;
  v47 = a1;
  if ([v47 hasRepresentationConformingToTypeIdentifier:v44 fileOptions:0])
  {
    v48 = 1;
  }

  else
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for SYContentItem);
    v48 = [v47 canLoadObjectOfClass_];
  }

  static UTType.url.getter();
  v49 = UTType.identifier.getter();
  v51 = v50;
  (*(v65 + 8))(v19, v16);
  v52 = MEMORY[0x1DA6CCED0](v49, v51);

  v53 = [v47 hasRepresentationConformingToTypeIdentifier:v52 fileOptions:0];

  if (v48)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for SYContentItem);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v55 = swift_allocObject();
    *(v55 + 16) = partial apply for specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:);
    *(v55 + 24) = v43;
    *(v55 + 32) = v37;
    *(v55 + 40) = v39;
    v56 = v64;
    *(v55 + 48) = v41;
    *(v55 + 56) = v56;
    *(v55 + 64) = a4;
    *(v55 + 72) = a5;
    *(v55 + 80) = a6;
    *(v55 + 88) = a7;
    *(v55 + 96) = v72;
    *(v55 + 104) = a8;
    *(v55 + 112) = 9;
    *(v55 + 120) = 0;
    *(v55 + 128) = 0;
    *(v55 + 136) = 1;
    v70 = partial apply for closure #1 in static LinkLayout.loadItemProvider(_:canvasFrame:frame:rotation:anchor:offset:assetManager:dragItem:completion:);
    v71 = v55;
    aBlock = MEMORY[0x1E69E9820];
    v67 = 1107296256;
    v68 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
    v69 = &block_descriptor_92;
    v57 = _Block_copy(&aBlock);

    v58 = [v47 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v57];
LABEL_15:
    v62 = v58;

    _Block_release(v57);

    return 1;
  }

  if (v53)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSURL);
    v59 = swift_getObjCClassFromMetadata();
    v60 = swift_allocObject();
    *(v60 + 16) = partial apply for specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:);
    *(v60 + 24) = v43;
    *(v60 + 32) = v37;
    *(v60 + 40) = v39;
    v61 = v64;
    *(v60 + 48) = v41;
    *(v60 + 56) = v61;
    *(v60 + 64) = a4;
    *(v60 + 72) = a5;
    *(v60 + 80) = a6;
    *(v60 + 88) = a7;
    *(v60 + 96) = v72;
    *(v60 + 104) = a8;
    *(v60 + 112) = 9;
    *(v60 + 120) = 0;
    *(v60 + 128) = 0;
    *(v60 + 136) = 1;
    v70 = partial apply for closure #2 in static LinkLayout.loadItemProvider(_:canvasFrame:frame:rotation:anchor:offset:assetManager:dragItem:completion:);
    v71 = v60;
    aBlock = MEMORY[0x1E69E9820];
    v67 = 1107296256;
    v68 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
    v69 = &block_descriptor_86;
    v57 = _Block_copy(&aBlock);

    v58 = [v47 loadObjectOfClass:v59 completionHandler:v57];
    goto LABEL_15;
  }

  return 0;
}

{
  v66 = a2;
  v15 = type metadata accessor for UTType();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65, v17);
  v21 = [a1 hasItemConformingToTypeIdentifier_];

  if ((v21 & 1) != 0 || (v22 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380), v23 = [a1 hasItemConformingToTypeIdentifier_], v22, v23))
  {
    v24 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
    v25 = [a1 hasRepresentationConformingToTypeIdentifier:v24 fileOptions:0];

    if (v25)
    {
      v26 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v28 = swift_allocObject();
      v29 = v66;
      *(v28 + 16) = v66;
      *(v28 + 24) = a4;
      *(v28 + 32) = a5;
      *(v28 + 40) = a6;
      *(v28 + 48) = a7;
      *(v28 + 56) = UnknownCanvasElementView.flags.modify;
      *(v28 + 64) = 0;
      v71 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v72 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v30 = &block_descriptor_190;
LABEL_7:
      v69 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
      v70 = v30;
      v34 = _Block_copy(&aBlock);
      v35 = v29;

      [a1 loadItemForTypeIdentifier:v26 options:v27.super.isa completionHandler:v34];
      _Block_release(v34);

      return 1;
    }

    v31 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    v32 = [a1 hasRepresentationConformingToTypeIdentifier:v31 fileOptions:0];

    if (v32)
    {
      v26 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v33 = swift_allocObject();
      v29 = v66;
      *(v33 + 16) = v66;
      *(v33 + 24) = a4;
      *(v33 + 32) = a5;
      *(v33 + 40) = a6;
      *(v33 + 48) = a7;
      *(v33 + 56) = UnknownCanvasElementView.flags.modify;
      *(v33 + 64) = 0;
      v71 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v72 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v30 = &block_descriptor_183_0;
      goto LABEL_7;
    }
  }

  else
  {
    v37 = v66;
    [v66 frame];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v65 = v44;
    v73 = 0;
    v45 = CRContext.assetManager.getter();
    v46 = swift_allocObject();
    v46[2] = a1;
    v46[3] = v37;
    v46[4] = a3;
    v47 = a3;
    v48 = v37;
    v49 = a1;
    static UTType.image.getter();
    v50 = UTType.identifier.getter();
    v52 = v51;
    v53 = *(v16 + 8);
    v53(v19, v15);
    v54 = MEMORY[0x1DA6CCED0](v50, v52);

    LODWORD(v52) = [v49 hasRepresentationConformingToTypeIdentifier:v54 fileOptions:0];

    if (v52)
    {
      static UTType.image.getter();
      v55 = UTType.identifier.getter();
      v57 = v56;
      v53(v19, v15);
      v58 = MEMORY[0x1DA6CCED0](v55, v57);

      v59 = swift_allocObject();
      *(v59 + 16) = v45;
      *(v59 + 24) = v39;
      *(v59 + 32) = v41;
      v60 = v65;
      *(v59 + 40) = v43;
      *(v59 + 48) = v60;
      *(v59 + 56) = a4;
      *(v59 + 64) = a5;
      *(v59 + 72) = a6;
      *(v59 + 80) = a7;
      *(v59 + 88) = v73;
      *(v59 + 96) = a8;
      *(v59 + 104) = 9;
      *(v59 + 112) = 0;
      *(v59 + 120) = 0;
      *(v59 + 128) = 1;
      *(v59 + 136) = v49;
      *(v59 + 144) = partial apply for specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:);
      *(v59 + 152) = v46;
      v71 = partial apply for closure #1 in static ImageLayout.loadItemProvider(_:canvasFrame:frame:rotation:anchor:offset:assetManager:dragItem:completion:);
      v72 = v59;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v69 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
      v70 = &block_descriptor_176;
      v61 = _Block_copy(&aBlock);
      v62 = v49;

      v63 = [v62 loadDataRepresentationForTypeIdentifier:v58 completionHandler:v61];

      _Block_release(v61);

      return 1;
    }
  }

  return 0;
}

uint64_t specialized static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v12 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
  v13 = [a1 hasItemConformingToTypeIdentifier_];

  if ((v13 & 1) != 0 || (v14 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380), v15 = [a1 hasItemConformingToTypeIdentifier_], v14, v15))
  {
    v16 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
    v17 = [a1 hasRepresentationConformingToTypeIdentifier:v16 fileOptions:0];

    if (v17)
    {
      v18 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v20 = swift_allocObject();
      *(v20 + 16) = a2;
      *(v20 + 24) = a3;
      *(v20 + 32) = a4;
      *(v20 + 40) = a5;
      *(v20 + 48) = a6;
      *(v20 + 56) = UnknownCanvasElementView.flags.modify;
      *(v20 + 64) = 0;
      v32 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v33 = v20;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v21 = &block_descriptor_49;
LABEL_7:
      v30 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
      v31 = v21;
      v25 = _Block_copy(&v28);
      v26 = a2;

      [a1 loadItemForTypeIdentifier:v18 options:v19.super.isa completionHandler:{v25, v28, v29}];
      _Block_release(v25);

      return 1;
    }

    v22 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    v23 = [a1 hasRepresentationConformingToTypeIdentifier:v22 fileOptions:0];

    if (v23)
    {
      v18 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = swift_allocObject();
      *(v24 + 16) = a2;
      *(v24 + 24) = a3;
      *(v24 + 32) = a4;
      *(v24 + 40) = a5;
      *(v24 + 48) = a6;
      *(v24 + 56) = UnknownCanvasElementView.flags.modify;
      *(v24 + 64) = 0;
      v32 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v33 = v24;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v21 = &block_descriptor_42_0;
      goto LABEL_7;
    }
  }

  else
  {
    [a2 frame];
    CRContext.assetManager.getter();
  }

  return 0;
}

{
  v12 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
  v13 = [a1 hasItemConformingToTypeIdentifier_];

  if ((v13 & 1) != 0 || (v14 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380), v15 = [a1 hasItemConformingToTypeIdentifier_], v14, v15))
  {
    v16 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
    v17 = [a1 hasRepresentationConformingToTypeIdentifier:v16 fileOptions:0];

    if (v17)
    {
      v18 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v20 = swift_allocObject();
      *(v20 + 16) = a2;
      *(v20 + 24) = a3;
      *(v20 + 32) = a4;
      *(v20 + 40) = a5;
      *(v20 + 48) = a6;
      *(v20 + 56) = UnknownCanvasElementView.flags.modify;
      *(v20 + 64) = 0;
      v32 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v33 = v20;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v21 = &block_descriptor_21_0;
LABEL_7:
      v30 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
      v31 = v21;
      v25 = _Block_copy(&v28);
      v26 = a2;

      [a1 loadItemForTypeIdentifier:v18 options:v19.super.isa completionHandler:{v25, v28, v29}];
      _Block_release(v25);

      return 1;
    }

    v22 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    v23 = [a1 hasRepresentationConformingToTypeIdentifier:v22 fileOptions:0];

    if (v23)
    {
      v18 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = swift_allocObject();
      *(v24 + 16) = a2;
      *(v24 + 24) = a3;
      *(v24 + 32) = a4;
      *(v24 + 40) = a5;
      *(v24 + 48) = a6;
      *(v24 + 56) = UnknownCanvasElementView.flags.modify;
      *(v24 + 64) = 0;
      v32 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v33 = v24;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v21 = &block_descriptor_14_0;
      goto LABEL_7;
    }
  }

  else
  {
    [a2 frame];
    CRContext.assetManager.getter();
  }

  return 0;
}

{
  v12 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
  v13 = [a1 hasItemConformingToTypeIdentifier_];

  if ((v13 & 1) != 0 || (v14 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380), v15 = [a1 hasItemConformingToTypeIdentifier_], v14, v15))
  {
    v16 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
    v17 = [a1 hasRepresentationConformingToTypeIdentifier:v16 fileOptions:0];

    if (v17)
    {
      v18 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v20 = swift_allocObject();
      *(v20 + 16) = a2;
      *(v20 + 24) = a3;
      *(v20 + 32) = a4;
      *(v20 + 40) = a5;
      *(v20 + 48) = a6;
      *(v20 + 56) = UnknownCanvasElementView.flags.modify;
      *(v20 + 64) = 0;
      v32 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v33 = v20;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v21 = &block_descriptor_77;
LABEL_7:
      v30 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
      v31 = v21;
      v25 = _Block_copy(&v28);
      v26 = a2;

      [a1 loadItemForTypeIdentifier:v18 options:v19.super.isa completionHandler:{v25, v28, v29}];
      _Block_release(v25);

      return 1;
    }

    v22 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    v23 = [a1 hasRepresentationConformingToTypeIdentifier:v22 fileOptions:0];

    if (v23)
    {
      v18 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = swift_allocObject();
      *(v24 + 16) = a2;
      *(v24 + 24) = a3;
      *(v24 + 32) = a4;
      *(v24 + 40) = a5;
      *(v24 + 48) = a6;
      *(v24 + 56) = UnknownCanvasElementView.flags.modify;
      *(v24 + 64) = 0;
      v32 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v33 = v24;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v21 = &block_descriptor_70_0;
      goto LABEL_7;
    }
  }

  else
  {
    [a2 frame];
    CRContext.assetManager.getter();
  }

  return 0;
}

{
  v12 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
  v13 = [a1 hasItemConformingToTypeIdentifier_];

  if ((v13 & 1) != 0 || (v14 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380), v15 = [a1 hasItemConformingToTypeIdentifier_], v14, v15))
  {
    v16 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
    v17 = [a1 hasRepresentationConformingToTypeIdentifier:v16 fileOptions:0];

    if (v17)
    {
      v18 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v20 = swift_allocObject();
      *(v20 + 16) = a2;
      *(v20 + 24) = a3;
      *(v20 + 32) = a4;
      *(v20 + 40) = a5;
      *(v20 + 48) = a6;
      *(v20 + 56) = UnknownCanvasElementView.flags.modify;
      *(v20 + 64) = 0;
      v32 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v33 = v20;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v21 = &block_descriptor_7;
LABEL_7:
      v30 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
      v31 = v21;
      v25 = _Block_copy(&v28);
      v26 = a2;

      [a1 loadItemForTypeIdentifier:v18 options:v19.super.isa completionHandler:{v25, v28, v29}];
      _Block_release(v25);

      return 1;
    }

    v22 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    v23 = [a1 hasRepresentationConformingToTypeIdentifier:v22 fileOptions:0];

    if (v23)
    {
      v18 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = swift_allocObject();
      *(v24 + 16) = a2;
      *(v24 + 24) = a3;
      *(v24 + 32) = a4;
      *(v24 + 40) = a5;
      *(v24 + 48) = a6;
      *(v24 + 56) = UnknownCanvasElementView.flags.modify;
      *(v24 + 64) = 0;
      v32 = partial apply for closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:);
      v33 = v24;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v21 = &block_descriptor_19;
      goto LABEL_7;
    }
  }

  else
  {
    [a2 frame];
    CRContext.assetManager.getter();
  }

  return 0;
}

{
  v12 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
  v13 = [a1 hasItemConformingToTypeIdentifier_];

  if ((v13 & 1) != 0 || (v14 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380), v15 = [a1 hasItemConformingToTypeIdentifier_], v14, v15))
  {
    v16 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
    v17 = [a1 hasRepresentationConformingToTypeIdentifier:v16 fileOptions:0];

    if (v17)
    {
      v18 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v20 = swift_allocObject();
      *(v20 + 16) = a2;
      *(v20 + 24) = a3;
      *(v20 + 32) = a4;
      *(v20 + 40) = a5;
      *(v20 + 48) = a6;
      *(v20 + 56) = UnknownCanvasElementView.flags.modify;
      *(v20 + 64) = 0;
      v32 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v33 = v20;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v21 = &block_descriptor_63;
LABEL_7:
      v30 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
      v31 = v21;
      v25 = _Block_copy(&v28);
      v26 = a2;

      [a1 loadItemForTypeIdentifier:v18 options:v19.super.isa completionHandler:{v25, v28, v29}];
      _Block_release(v25);

      return 1;
    }

    v22 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    v23 = [a1 hasRepresentationConformingToTypeIdentifier:v22 fileOptions:0];

    if (v23)
    {
      v18 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = swift_allocObject();
      *(v24 + 16) = a2;
      *(v24 + 24) = a3;
      *(v24 + 32) = a4;
      *(v24 + 40) = a5;
      *(v24 + 48) = a6;
      *(v24 + 56) = UnknownCanvasElementView.flags.modify;
      *(v24 + 64) = 0;
      v32 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v33 = v24;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v21 = &block_descriptor_56;
      goto LABEL_7;
    }
  }

  else
  {
    [a2 frame];
    CRContext.assetManager.getter();
  }

  return 0;
}

{
  v12 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
  v13 = [a1 hasItemConformingToTypeIdentifier_];

  if ((v13 & 1) != 0 || (v14 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380), v15 = [a1 hasItemConformingToTypeIdentifier_], v14, v15))
  {
    v16 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
    v17 = [a1 hasRepresentationConformingToTypeIdentifier:v16 fileOptions:0];

    if (v17)
    {
      v18 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v20 = swift_allocObject();
      *(v20 + 16) = a2;
      *(v20 + 24) = a3;
      *(v20 + 32) = a4;
      *(v20 + 40) = a5;
      *(v20 + 48) = a6;
      *(v20 + 56) = UnknownCanvasElementView.flags.modify;
      *(v20 + 64) = 0;
      v32 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v33 = v20;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v21 = &block_descriptor_35;
LABEL_7:
      v30 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
      v31 = v21;
      v25 = _Block_copy(&v28);
      v26 = a2;

      [a1 loadItemForTypeIdentifier:v18 options:v19.super.isa completionHandler:{v25, v28, v29}];
      _Block_release(v25);

      return 1;
    }

    v22 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    v23 = [a1 hasRepresentationConformingToTypeIdentifier:v22 fileOptions:0];

    if (v23)
    {
      v18 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = swift_allocObject();
      *(v24 + 16) = a2;
      *(v24 + 24) = a3;
      *(v24 + 32) = a4;
      *(v24 + 40) = a5;
      *(v24 + 48) = a6;
      *(v24 + 56) = UnknownCanvasElementView.flags.modify;
      *(v24 + 64) = 0;
      v32 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
      v33 = v24;
      v28 = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v21 = &block_descriptor_28;
      goto LABEL_7;
    }
  }

  else
  {
    [a2 frame];
    CRContext.assetManager.getter();
  }

  return 0;
}

uint64_t specialized static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v14 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
  v15 = [a1 hasItemConformingToTypeIdentifier_];

  if ((v15 & 1) == 0)
  {
    v16 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    v17 = [a1 hasItemConformingToTypeIdentifier_];

    if (!v17)
    {
      [a2 frame];
      CRContext.assetManager.getter();

      v29 = swift_allocObject();
      v29[2] = a1;
      v29[3] = a2;
      v29[4] = a3;
      v30 = a3;
      v31 = a2;
      v32 = a1;
      v33 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
      v34 = [v32 hasRepresentationConformingToTypeIdentifier:v33 fileOptions:0];

      if (v34)
      {
        v35 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v36 = swift_allocObject();
        *(v36 + 16) = partial apply for specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:);
        *(v36 + 24) = v29;
        v47 = closure #1 in static PaperLayout.loadItemProvider(_:canvasFrame:frame:anchor:offset:assetManager:dragItem:typeIdentifier:completion:)partial apply;
        v48 = v36;
        v43 = MEMORY[0x1E69E9820];
        v44 = 1107296256;
        v37 = &block_descriptor_212;
      }

      else
      {
        v38 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
        v39 = [v32 hasRepresentationConformingToTypeIdentifier:v38 fileOptions:0];

        if (!v39)
        {

          return 0;
        }

        v35 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v40 = swift_allocObject();
        *(v40 + 16) = partial apply for specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:);
        *(v40 + 24) = v29;
        v47 = partial apply for closure #1 in static PaperLayout.loadItemProvider(_:canvasFrame:frame:anchor:offset:assetManager:dragItem:typeIdentifier:completion:);
        v48 = v40;
        v43 = MEMORY[0x1E69E9820];
        v44 = 1107296256;
        v37 = &block_descriptor_205;
      }

      v45 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
      v46 = v37;
      v41 = _Block_copy(&v43);

      [v32 loadItemForTypeIdentifier:v35 options:v21.super.isa completionHandler:{v41, v43, v44}];

      _Block_release(v41);

      goto LABEL_13;
    }
  }

  v18 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
  v19 = [a1 hasRepresentationConformingToTypeIdentifier:v18 fileOptions:0];

  if (v19)
  {
    v20 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a4;
    *(v22 + 32) = a5;
    *(v22 + 40) = a6;
    *(v22 + 48) = a7;
    *(v22 + 56) = UnknownCanvasElementView.flags.modify;
    *(v22 + 64) = 0;
    v47 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
    v48 = v22;
    v43 = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v23 = &block_descriptor_226;
LABEL_7:
    v45 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
    v46 = v23;
    v27 = _Block_copy(&v43);
    v28 = a2;

    [a1 loadItemForTypeIdentifier:v20 options:v21.super.isa completionHandler:{v27, v43, v44}];
    _Block_release(v27);

LABEL_13:
    return 1;
  }

  v24 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
  v25 = [a1 hasRepresentationConformingToTypeIdentifier:v24 fileOptions:0];

  if (v25)
  {
    v20 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v26 = swift_allocObject();
    *(v26 + 16) = a2;
    *(v26 + 24) = a4;
    *(v26 + 32) = a5;
    *(v26 + 40) = a6;
    *(v26 + 48) = a7;
    *(v26 + 56) = UnknownCanvasElementView.flags.modify;
    *(v26 + 64) = 0;
    v47 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
    v48 = v26;
    v43 = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v23 = &block_descriptor_219;
    goto LABEL_7;
  }

  return 0;
}

{
  v14 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
  v15 = [a1 hasItemConformingToTypeIdentifier_];

  if ((v15 & 1) == 0)
  {
    v16 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    v17 = [a1 hasItemConformingToTypeIdentifier_];

    if (!v17)
    {
      [a2 frame];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      CRContext.assetManager.getter();

      v37 = swift_allocObject();
      v37[2] = a1;
      v37[3] = a2;
      v37[4] = a3;
      v38 = a3;
      v39 = a2;
      v40 = a1;
      v21.super.isa = MEMORY[0x1DA6CCED0](0xD000000000000018, 0x80000001D4084910);
      v41 = swift_allocObject();
      v41[2] = v30;
      v41[3] = v32;
      v41[4] = v34;
      v41[5] = v36;
      v41[6] = partial apply for specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:);
      v41[7] = v37;
      v47 = partial apply for closure #1 in static GraphLayout.loadItemProvider(_:canvasFrame:frame:rotation:anchor:offset:assetManager:dragItem:completion:);
      v48 = v41;
      v43 = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v45 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
      v46 = &block_descriptor_147;
      v27 = _Block_copy(&v43);

      v20 = [v40 loadDataRepresentationForTypeIdentifier:v21.super.isa completionHandler:v27];
      goto LABEL_9;
    }
  }

  v18 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
  v19 = [a1 hasRepresentationConformingToTypeIdentifier:v18 fileOptions:0];

  if (v19)
  {
    v20 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a4;
    *(v22 + 32) = a5;
    *(v22 + 40) = a6;
    *(v22 + 48) = a7;
    *(v22 + 56) = UnknownCanvasElementView.flags.modify;
    *(v22 + 64) = 0;
    v47 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
    v48 = v22;
    v43 = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v23 = &block_descriptor_161;
LABEL_7:
    v45 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSItemProviderReading?, @guaranteed Error?) -> ();
    v46 = v23;
    v27 = _Block_copy(&v43);
    v28 = a2;

    [a1 loadItemForTypeIdentifier:v20 options:v21.super.isa completionHandler:{v27, v43, v44}];
LABEL_9:
    _Block_release(v27);

    return 1;
  }

  v24 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
  v25 = [a1 hasRepresentationConformingToTypeIdentifier:v24 fileOptions:0];

  if (v25)
  {
    v20 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v26 = swift_allocObject();
    *(v26 + 16) = a2;
    *(v26 + 24) = a4;
    *(v26 + 32) = a5;
    *(v26 + 40) = a6;
    *(v26 + 48) = a7;
    *(v26 + 56) = UnknownCanvasElementView.flags.modify;
    *(v26 + 64) = 0;
    v47 = closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)partial apply;
    v48 = v26;
    v43 = MEMORY[0x1E69E9820];
    v44 = 1107296256;
    v23 = &block_descriptor_154;
    goto LABEL_7;
  }

  return 0;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL specialized static Layout.canHandle(session:)(void *a1)
{
  v19 = type metadata accessor for UTType();
  v2 = *(v19 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 items];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
LABEL_15:
    v20 = v7 & 0xFFFFFFFFFFFFFF8;
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = v7 & 0xFFFFFFFFFFFFFF8;
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = (v2 + 8);
  do
  {
    v2 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1DA6CE0C0](v9, v7);
    }

    else
    {
      if (v9 >= *(v20 + 16))
      {
        goto LABEL_14;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v13 = [v11 itemProvider];
    static UTType.utf8PlainText.getter();
    v14 = UTType.identifier.getter();
    v16 = v15;
    (*v10)(v5, v19);
    v17 = MEMORY[0x1DA6CCED0](v14, v16);

    LODWORD(v16) = [v13 hasItemConformingToTypeIdentifier_];

    v9 = v2 + 1;
  }

  while (!v16);

  return v8 != v2;
}

{
  v1 = [a1 items];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA6CE0C0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 itemProvider];
    v9 = MEMORY[0x1DA6CCED0](0xD000000000000018, 0x80000001D4084910);
    v10 = [v8 hasItemConformingToTypeIdentifier_];

    v4 = v5 + 1;
  }

  while (!v10);

  return v3 != v5;
}

{
  v1 = [a1 items];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_17:
    v14 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA6CE0C0](v4, v2);
    }

    else
    {
      if (v4 >= *(v14 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v8 = [v6 itemProvider];
    v9 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
    v10 = [v8 hasItemConformingToTypeIdentifier_];

    if (v10)
    {

      break;
    }

    v11 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
    v12 = [v8 hasItemConformingToTypeIdentifier_];

    v4 = v5 + 1;
  }

  while (!v12);

  return v3 != v5;
}

void specialized static Layout.canHandle(session:)(void *a1)
{
  v1 = [a1 items];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t specialized static Layout.canHandle(session:)(void *a1)
{
  v22 = type metadata accessor for UTType();
  v2 = *(v22 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 items];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v9 = 0;
    v19 = v7 & 0xFFFFFFFFFFFFFF8;
    v20 = *MEMORY[0x1E69D5450];
    v21 = v7 & 0xC000000000000001;
    v10 = v2 + 1;
    while (1)
    {
      if (v21)
      {
        v11 = MEMORY[0x1DA6CE0C0](v9, v7);
      }

      else
      {
        if (v9 >= *(v19 + 16))
        {
          goto LABEL_17;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v14 = [v11 itemProvider];
      if ([v14 hasItemConformingToTypeIdentifier_] || (type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for SYContentItem), (objc_msgSend(v14, sel_canLoadObjectOfClass_, swift_getObjCClassFromMetadata()) & 1) != 0))
      {

LABEL_15:

        return 1;
      }

      static UTType.url.getter();
      v15 = UTType.identifier.getter();
      v17 = v16;
      (*v10)(v5, v22);
      v2 = MEMORY[0x1DA6CCED0](v15, v17);

      LOBYTE(v17) = [v14 hasItemConformingToTypeIdentifier_];

      if (v17)
      {
        goto LABEL_15;
      }

      ++v9;
      if (v13 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_13:

  return 0;
}

{
  v27 = type metadata accessor for UTType();
  v2 = *(v27 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v27).n128_u64[0];
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 items];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v9 = 0;
    v23 = v7 & 0xFFFFFFFFFFFFFF8;
    v25 = v2 + 1;
    v26 = v7 & 0xC000000000000001;
    v24 = *MEMORY[0x1E6978590];
    v10 = 0x1FB92F000;
    while (1)
    {
      if (v26)
      {
        v11 = MEMORY[0x1DA6CE0C0](v9, v7);
      }

      else
      {
        if (v9 >= *(v23 + 16))
        {
          goto LABEL_15;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v2 = v11;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = v10;
      v14 = [v11 itemProvider];
      static UTType.image.getter();
      v15 = UTType.identifier.getter();
      v17 = v16;
      (*v25)(v5, v27);
      v18 = MEMORY[0x1DA6CCED0](v15, v17);

      LODWORD(v17) = [v14 (v13 + 2471)];

      if (v17)
      {
        v19 = v24;
        v20 = [v14 (v13 + 2471)];

        if ((v20 & 1) == 0)
        {

          return 1;
        }
      }

      else
      {
      }

      ++v9;
      v10 = 0x1FB92F000uLL;
      if (v12 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return 0;
}

uint64_t partial apply for specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(uint64_t a1)
{
  return specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(a1, v1[2], v1[3], v1[4]);
}

{
  return specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(a1, v1[2], v1[3], v1[4]);
}

{
  return specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(a1, v1[2], v1[3], v1[4]);
}

{
  return specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(a1, v1[2], v1[3], v1[4]);
}

{
  return specialized closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(a1, v1[2], v1[3], v1[4]);
}

uint64_t partial apply for specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)()
{
  return partial apply for specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd, &_s9Coherence7CapsuleVy8PaperKit4LinkVGMR, specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:));
}

{
  return partial apply for specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd, &_s9Coherence7CapsuleVy8PaperKit5ShapeVGMR, specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:));
}

{
  return partial apply for specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd, &_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMR, specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:));
}

{
  return partial apply for specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR, specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:));
}

{
  return partial apply for specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR, specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:));
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in closure #2 in static LayoutItemProvider.loadItemProvider(_:frame:rotation:in:dragItem:)(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(v6, v7, v3 + v5, v8);
}

uint64_t objectdestroy_79Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t objectdestroy_108Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + 8, v4 | 7);
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

id _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy8PaperKit13AnalyticsKeysOSo8NSObjectCG_SS_AJts5NeverOTg503_s8d5Kit13fg4OSo8h36CSSAEIgygoo_AC3key_AE5valuetSS_AEts5i97OIegnrzr_TR03_s8a4Kit9c34C13sendEventLazy3key7payloadyAA0C4d10O_SDyAHSo8e31CGyXAtFSDySSAJGSgycfU_P24_AJtAH_W5XEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v34;
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v27 = v3 + 72;
  v28 = v1;
  v29 = v8;
  v30 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v31 = v7;
    v11 = *(*(v3 + 56) + 8 * v6);
    v12 = AnalyticsKeys.rawValue.getter(*(*(v3 + 48) + v6));
    v32 = v13;
    v33 = v12;
    v14 = v3;
    v16 = *(v34 + 16);
    v15 = *(v34 + 24);
    result = v11;
    v17 = result;
    if (v16 >= v15 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    }

    *(v34 + 16) = v16 + 1;
    v18 = (v34 + 24 * v16);
    v18[4] = v33;
    v18[5] = v32;
    v18[6] = v17;
    v9 = 1 << *(v14 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v30;
    v19 = *(v30 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v14;
    v20 = *(v14 + 36);
    v8 = v29;
    if (v29 != v20)
    {
      goto LABEL_26;
    }

    v21 = v19 & (-2 << (v6 & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (v27 + 8 * v10);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v6, v29, 0);
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = outlined consume of [AnalyticsKeys : NSObject].Index._Variant(v6, v29, 0);
    }

LABEL_4:
    v7 = v31 + 1;
    v6 = v9;
    if (v31 + 1 == v28)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t AnalyticsKeys.rawValue.getter(char a1)
{
  result = 6579297;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      return result;
    case 4:
      result = 0x65766F6D6572;
      break;
    case 5:
      result = 0xD00000000000002ALL;
      break;
    case 6:
      result = 0x6F697463656C6573;
      break;
    case 7:
      result = 7364980;
      break;
    case 8:
      result = 0x6F7373616CLL;
      break;
    case 9:
    case 25:
      result = 0xD000000000000028;
      break;
    case 10:
      result = 0x54746E65746E6F63;
      break;
    case 11:
    case 12:
      result = 0x6C457361766E6163;
      break;
    case 13:
      result = 0x646578696DLL;
      break;
    case 14:
    case 19:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0x44646E4167617264;
      break;
    case 16:
      result = 0x4E6564697374756FLL;
      break;
    case 17:
      result = 0xD00000000000001DLL;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0x6E756F436E65706FLL;
      break;
    case 21:
      result = 0xD000000000000020;
      break;
    case 22:
      result = 0x64657463656C6573;
      break;
    case 23:
      result = 0xD000000000000020;
      break;
    case 24:
      result = 0x4C6464416D6F7266;
      break;
    case 26:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000020;
      break;
  }

  return result;
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance DragAndDropType@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnalyticsKeys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = AnalyticsKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == AnalyticsKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnalyticsKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AnalyticsKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnalyticsKeys()
{
  AnalyticsKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnalyticsKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AnalyticsKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AnalyticsKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized AnalyticsKeys.init(rawValue:)();
  *a1 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AnalyticsKeys@<X0>(unint64_t *a1@<X8>)
{
  result = AnalyticsKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t specialized closure #1 in Analytics.sendEventLazy(key:payload:)()
{
  return specialized closure #1 in Analytics.sendEventLazy(key:payload:)(22);
}

{
  return specialized closure #1 in Analytics.sendEventLazy(key:payload:)(20);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit13AnalyticsKeysO_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  *(inited + 32) = 24;
  type metadata accessor for NSNumber();
  *(inited + 40) = NSNumber.init(BOOLeanLiteral:)(1);
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit13AnalyticsKeysO_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_s8PaperKit13AnalyticsKeysO_So8NSObjectCtMd);
  v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy8PaperKit13AnalyticsKeysOSo8NSObjectCG_SS_AJts5NeverOTg503_s8d5Kit13fg4OSo8h36CSSAEIgygoo_AC3key_AE5valuetSS_AEts5i97OIegnrzr_TR03_s8a4Kit9c34C13sendEventLazy3key7payloadyAA0C4d10O_SDyAHSo8e31CGyXAtFSDySSAJGSgycfU_P24_AJtAH_W5XEfU_Tf3nnnpf_nTf1cn_n(v1);

  if (v2[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v4, 1, &v6);

  return v6;
}

uint64_t specialized closure #1 in Analytics.sendEventLazy(key:payload:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit13AnalyticsKeysO_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  *(inited + 32) = a1;
  type metadata accessor for NSNumber();
  *(inited + 40) = NSNumber.init(integerLiteral:)(1);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit13AnalyticsKeysO_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_s8PaperKit13AnalyticsKeysO_So8NSObjectCtMd);
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy8PaperKit13AnalyticsKeysOSo8NSObjectCG_SS_AJts5NeverOTg503_s8d5Kit13fg4OSo8h36CSSAEIgygoo_AC3key_AE5valuetSS_AEts5i97OIegnrzr_TR03_s8a4Kit9c34C13sendEventLazy3key7payloadyAA0C4d10O_SDyAHSo8e31CGyXAtFSDySSAJGSgycfU_P24_AJtAH_W5XEfU_Tf3nnnpf_nTf1cn_n(v3);

  if (v4[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v6, 1, &v8);

  return v8;
}

uint64_t closure #1 in Analytics.sendEventLazy(key:payload:)(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy8PaperKit13AnalyticsKeysOSo8NSObjectCG_SS_AJts5NeverOTg503_s8d5Kit13fg4OSo8h36CSSAEIgygoo_AC3key_AE5valuetSS_AEts5i97OIegnrzr_TR03_s8a4Kit9c34C13sendEventLazy3key7payloadyAA0C4d10O_SDyAHSo8e31CGyXAtFSDySSAJGSgycfU_P24_AJtAH_W5XEfU_Tf3nnnpf_nTf1cn_n(v1);

  if (v2[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v4, 1, &v6);

  return v6;
}

unint64_t implicit closure #1 in Analytics.recordAddCanvasElementEvent(type:)(uint64_t a1, unsigned __int8 a2, char a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit13AnalyticsKeysO_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405C990;
  *(inited + 32) = 1;
  if (a3)
  {
    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
  }

  else if (a2 > 4u)
  {
    v17 = 0xE400000000000000;
    v18 = 1701273968;
    v19 = 0xED00006E6F697461;
    v20 = 0x746F6E6E41666470;
    if (a2 != 8)
    {
      v20 = 0x6570756F6CLL;
      v19 = 0xE500000000000000;
    }

    if (a2 != 7)
    {
      v18 = v20;
      v17 = v19;
    }

    v21 = 0xE500000000000000;
    v22 = 0x6570616873;
    if (a2 != 5)
    {
      v22 = 0x727574616E676973;
      v21 = 0xE900000000000065;
    }

    if (a2 <= 6u)
    {
      v11 = v22;
    }

    else
    {
      v11 = v18;
    }

    if (a2 <= 6u)
    {
      v10 = v21;
    }

    else
    {
      v10 = v17;
    }
  }

  else
  {
    v12 = 0x7265706170;
    v13 = 0xE500000000000000;
    v14 = 0x6870617267;
    v15 = 0xE700000000000000;
    v16 = 0x786F4274786574;
    if (a2 != 3)
    {
      v16 = 1802398060;
      v15 = 0xE400000000000000;
    }

    if (a2 != 2)
    {
      v14 = v16;
      v13 = v15;
    }

    if (a2)
    {
      v12 = 0x6567616D69;
    }

    if (a2 <= 1u)
    {
      v11 = v12;
    }

    else
    {
      v11 = v14;
    }

    if (a2 <= 1u)
    {
      v10 = 0xE500000000000000;
    }

    else
    {
      v10 = v13;
    }
  }

  v23 = MEMORY[0x1DA6CCED0](v11, v10);

  *(inited + 40) = v23;
  *(inited + 48) = 2;
  *(inited + 56) = MEMORY[0x1DA6CCED0](a4, a5);
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit13AnalyticsKeysO_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13AnalyticsKeysO_So8NSObjectCtMd);
  swift_arrayDestroy();
  return v24;
}

void Analytics.recordDidMakeSelection(type:contentType:)(char a1, char a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1 & 1;

  v6 = MEMORY[0x1DA6CCED0](0xD00000000000002ALL, 0x80000001D4080660);
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for implicit closure #1 in Analytics.recordDidMakeSelection(type:contentType:);
  *(v7 + 24) = v5;
  v17 = partial apply for closure #1 in Analytics.sendEventLazy(key:payload:);
  v18 = v7;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v16 = &block_descriptor_20;
  v8 = _Block_copy(&v13);

  AnalyticsSendEventLazy();
  _Block_release(v8);

  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = a2;

  v10 = MEMORY[0x1DA6CCED0](0xD000000000000028, 0x80000001D40806B0);
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for implicit closure #2 in Analytics.recordDidMakeSelection(type:contentType:);
  *(v11 + 24) = v9;
  v17 = closure #1 in Analytics.sendEventLazy(key:payload:)partial apply;
  v18 = v11;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v16 = &block_descriptor_28_0;
  v12 = _Block_copy(&v13);

  AnalyticsSendEventLazy();
  _Block_release(v12);
}

unint64_t implicit closure #1 in Analytics.recordDidMakeSelection(type:contentType:)(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit13AnalyticsKeysO_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  *(inited + 32) = 6;
  if (a2)
  {
    v4 = 0x6F7373616CLL;
  }

  else
  {
    v4 = 7364980;
  }

  if (a2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v6 = MEMORY[0x1DA6CCED0](v4, v5);

  *(inited + 40) = v6;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit13AnalyticsKeysO_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_s8PaperKit13AnalyticsKeysO_So8NSObjectCtMd);
  return v7;
}

unint64_t implicit closure #2 in Analytics.recordDidMakeSelection(type:contentType:)(uint64_t a1, char a2)
{
  v3 = 0x6C457361766E6163;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit13AnalyticsKeysO_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  *(inited + 32) = 10;
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xEE0073746E656D65;
    }

    else
    {
      v3 = 0x646578696DLL;
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xED0000746E656D65;
  }

  v6 = MEMORY[0x1DA6CCED0](v3, v5);

  *(inited + 40) = v6;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit13AnalyticsKeysO_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_s8PaperKit13AnalyticsKeysO_So8NSObjectCtMd);
  return v7;
}

unint64_t implicit closure #1 in Analytics.recordDragAndDropEvent(type:)(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit13AnalyticsKeysO_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  *(inited + 32) = 15;
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0xD00000000000001DLL;
    }

    else
    {
      v4 = 0xD000000000000018;
    }

    if (a2 == 1)
    {
      v5 = 0x80000001D4080750;
    }

    else
    {
      v5 = 0x80000001D4080770;
    }
  }

  else
  {
    v5 = 0xEB0000000065746FLL;
    v4 = 0x4E6564697374756FLL;
  }

  v6 = MEMORY[0x1DA6CCED0](v4, v5);

  *(inited + 40) = v6;
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit13AnalyticsKeysO_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_s8PaperKit13AnalyticsKeysO_So8NSObjectCtMd);
  return v7;
}

unint64_t implicit closure #1 in Analytics.recordDidPresentAddLinkMenu(linksCount:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit13AnalyticsKeysO_So8NSObjectCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  *(inited + 32) = 26;
  *(inited + 40) = Int._bridgeToObjectiveC()();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8PaperKit13AnalyticsKeysO_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_s8PaperKit13AnalyticsKeysO_So8NSObjectCtMd);
  return v1;
}

BOOL Capsule<>.hasDrawing()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.subscript.getter();

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  return v4;
}

BOOL Capsule<>.hasSpatialImage()(uint64_t a1)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v21 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v22 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.subscript.getter();

  CROrderedSet.makeIterator()();
  (*(v8 + 8))(v10, v7);
  v14 = (v21 + 48);
  v15 = (v21 + 32);
  v16 = (v21 + 8);
  do
  {
    CROrderedSet.Iterator.next()();
    v17 = (*v14)(v6, 1, v1);
    if (v17 == 1)
    {
      break;
    }

    (*v15)(v3, v6, v1);
    WeakTagged_10.tag.getter();
    v26 = v28;
    v27 = v29;
    v24 = v23;
    v25 = 0;
    lazy protocol witness table accessor for type TaggedCanvasElement.Enum and conformance TaggedCanvasElement.Enum();
    v18 = static CRExtensible.== infix(_:_:)();
    (*v16)(v3, v1);
  }

  while ((v18 & 1) == 0);
  (*(v22 + 8))(v13, v11);
  return v17 != 1;
}

uint64_t Capsule<>.hasSpatialWebHighlight()()
{
  v0 = Capsule<>.links.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1DA6CE0C0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 userActivity];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 _linkContextInfo];

        if (v9)
        {

          return 1;
        }
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return 0;
}

unint64_t lazy protocol witness table accessor for type DragAndDropType and conformance DragAndDropType()
{
  result = lazy protocol witness table cache variable for type DragAndDropType and conformance DragAndDropType;
  if (!lazy protocol witness table cache variable for type DragAndDropType and conformance DragAndDropType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragAndDropType and conformance DragAndDropType);
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v5 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1DA6CD010](0xD00000000000001BLL, 0x80000001D40820C0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1DA6CD010](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, 1);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for AnalyticsKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnalyticsKeys and conformance AnalyticsKeys()
{
  result = lazy protocol witness table cache variable for type AnalyticsKeys and conformance AnalyticsKeys;
  if (!lazy protocol witness table cache variable for type AnalyticsKeys and conformance AnalyticsKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnalyticsKeys and conformance AnalyticsKeys);
  }

  return result;
}

uint64_t specialized AnalyticsKeys.init(rawValue:)()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

char *ShapeListItemView.init(image:symbolWeight:)(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8PaperKit17ShapeListItemView_imageView;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v2[OBJC_IVAR____TtC8PaperKit17ShapeListItemView_cornerRadius] = 0x4018000000000000;
  *&v2[OBJC_IVAR____TtC8PaperKit17ShapeListItemView_symbolPointSize] = 0x403E000000000000;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for ShapeListItemView();
  v6 = objc_msgSendSuper2(&v31, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = [v6 layer];
  [v7 setCornerCurve_];

  v8 = v6;
  v9 = [v8 layer];
  [v9 setCornerRadius_];

  v10 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
  [v8 addInteraction_];

  v11 = OBJC_IVAR____TtC8PaperKit17ShapeListItemView_imageView;
  v12 = *&v8[OBJC_IVAR____TtC8PaperKit17ShapeListItemView_imageView];
  v13 = [a1 imageWithRenderingMode_];
  [v12 setImage_];

  v14 = *&v8[v11];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 configurationWithPointSize:a2 weight:30.0];
  [v16 setPreferredSymbolConfiguration_];

  [*&v8[v11] setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 addSubview_];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D405B640;
  v20 = [*&v8[v11] centerXAnchor];
  v21 = [v8 centerXAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v19 + 32) = v22;
  v23 = [*&v8[v11] centerYAnchor];
  v24 = [v8 centerYAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v19 + 40) = v25;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints_];

  [v8 setIsAccessibilityElement_];
  ShapeListItemView.updateUI()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D4058CF0;
  v28 = type metadata accessor for UITraitUserInterfaceStyle();
  v29 = MEMORY[0x1E69DC0F8];
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  MEMORY[0x1DA6CDBA0](v27, sel_updateUI);

  swift_unknownObjectRelease();

  return v8;
}

void ShapeListItemView.updateUI()()
{
  v1 = [v0 isHighlighted];
  v2 = objc_opt_self();
  v3 = &selRef_secondarySystemFillColor;
  if (!v1)
  {
    v3 = &selRef_quaternarySystemFillColor;
  }

  v4 = [v2 *v3];
  [v0 setBackgroundColor_];

  v5 = [v0 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 6)
  {
    v7 = *&v0[OBJC_IVAR____TtC8PaperKit17ShapeListItemView_imageView];
    v15 = [objc_opt_self() whiteColor];
    [v7 setTintColor_];
  }

  else
  {
    v8 = [v0 traitCollection];
    v9 = [v8 userInterfaceStyle];

    v10 = *&v0[OBJC_IVAR____TtC8PaperKit17ShapeListItemView_imageView];
    v11 = objc_opt_self();
    if (v9 == 2)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v13 = &selRef_systemGrayColor;
    if (v9 != 2)
    {
      v13 = &selRef_systemGray3Color;
    }

    v14 = [v11 *v13];
    [v10 setTintColor_];

    [v10 setOverrideUserInterfaceStyle_];
  }
}

id ShapeListItemView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShapeListItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized static ShapeListItemView.newAddRectangleListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1DA6CCED0](0xD000000000000010, 0x80000001D40867D0);
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for ShapeListItemView());
    v7 = ShapeListItemView.init(image:symbolWeight:)(v5, 5);
    v8 = one-time initialization token for paperKitBundle;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v24._object = 0x80000001D40867F0;
    v10._countAndFlagsBits = 0x6C676E6174636552;
    v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v11.value._object = 0xEB00000000656C62;
    v24._countAndFlagsBits = 0xD00000000000002FLL;
    v10._object = 0xE900000000000065;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, paperKitBundle, v12, v24)._countAndFlagsBits;
    v14 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v9 setAccessibilityLabel_];

    outlined init with copy of Any?(a1, v22);
    v15 = v23;
    if (v23)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = *(v15 - 8);
      v18 = MEMORY[0x1EEE9AC00](v16);
      v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v21 = 0;
    }

    [v9 addTarget:v21 action:a2 forControlEvents:64];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void specialized static ShapeListItemView.newAddOvalListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1DA6CCED0](0x662E656C63726963, 0xEB000000006C6C69);
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for ShapeListItemView());
    v7 = ShapeListItemView.init(image:symbolWeight:)(v5, 5);
    outlined init with copy of Any?(a1, v22);
    v8 = v23;
    if (v23)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v10 = *(v8 - 8);
      v11 = MEMORY[0x1EEE9AC00](v9);
      v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v10 + 8))(v13, v8);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v14 = 0;
    }

    [v7 addTarget:v14 action:a2 forControlEvents:64];
    swift_unknownObjectRelease();
    v15 = one-time initialization token for paperKitBundle;
    v16 = v7;
    if (v15 != -1)
    {
      swift_once();
    }

    v24._object = 0x80000001D4086880;
    v17._countAndFlagsBits = 0x656C63726943;
    v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v18.value._object = 0xEB00000000656C62;
    v17._object = 0xE600000000000000;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD00000000000002CLL;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, paperKitBundle, v19, v24)._countAndFlagsBits;
    v21 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v16 setAccessibilityLabel_];
  }

  else
  {
    __break(1u);
  }
}

void specialized static ShapeListItemView.newAddTriangleListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1DA6CCED0](0x656C676E61697274, 0xED00006C6C69662ELL);
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for ShapeListItemView());
    v7 = ShapeListItemView.init(image:symbolWeight:)(v5, 5);
    v8 = one-time initialization token for paperKitBundle;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v24._object = 0x80000001D40868B0;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v11._countAndFlagsBits = 0x656C676E61697254;
    v11._object = 0xE800000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD00000000000002ELL;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, paperKitBundle, v12, v24)._countAndFlagsBits;
    v14 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v9 setAccessibilityLabel_];

    outlined init with copy of Any?(a1, v22);
    v15 = v23;
    if (v23)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = *(v15 - 8);
      v18 = MEMORY[0x1EEE9AC00](v16);
      v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v21 = 0;
    }

    [v9 addTarget:v21 action:a2 forControlEvents:64];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void specialized static ShapeListItemView.newAddLineListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1DA6CCED0](0x6169642E656E696CLL, 0xED00006C616E6F67);
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for ShapeListItemView());
    v7 = ShapeListItemView.init(image:symbolWeight:)(v5, 7);
    v8 = one-time initialization token for paperKitBundle;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v24._object = 0x80000001D4086A70;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v11._countAndFlagsBits = 1701734732;
    v11._object = 0xE400000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD00000000000002ALL;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, paperKitBundle, v12, v24)._countAndFlagsBits;
    v14 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v9 setAccessibilityLabel_];

    outlined init with copy of Any?(a1, v22);
    v15 = v23;
    if (v23)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = *(v15 - 8);
      v18 = MEMORY[0x1EEE9AC00](v16);
      v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v21 = 0;
    }

    [v9 addTarget:v21 action:a2 forControlEvents:64];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void specialized static ShapeListItemView.newAddArrowListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1DA6CCED0](0xD000000000000013, 0x80000001D4086A10);
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for ShapeListItemView());
    v7 = ShapeListItemView.init(image:symbolWeight:)(v5, 7);
    v8 = one-time initialization token for paperKitBundle;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v24._object = 0x80000001D4086A30;
    v10._countAndFlagsBits = 0x206465776F727241;
    v10._object = 0xEC000000656E694CLL;
    v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v11.value._object = 0xEB00000000656C62;
    v24._countAndFlagsBits = 0xD000000000000033;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, paperKitBundle, v12, v24)._countAndFlagsBits;
    v14 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v9 setAccessibilityLabel_];

    outlined init with copy of Any?(a1, v22);
    v15 = v23;
    if (v23)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = *(v15 - 8);
      v18 = MEMORY[0x1EEE9AC00](v16);
      v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v21 = 0;
    }

    [v9 addTarget:v21 action:a2 forControlEvents:64];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void specialized static ShapeListItemView.newAddChatListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1DA6CCED0](0xD000000000000010, 0x80000001D40869B0);
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for ShapeListItemView());
    v7 = ShapeListItemView.init(image:symbolWeight:)(v5, 5);
    v8 = one-time initialization token for paperKitBundle;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v24._object = 0x80000001D40869D0;
    v10._countAndFlagsBits = 0x4220686365657053;
    v10._object = 0xED0000656C626275;
    v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v11.value._object = 0xEB00000000656C62;
    v24._countAndFlagsBits = 0xD000000000000033;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, paperKitBundle, v12, v24)._countAndFlagsBits;
    v14 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v9 setAccessibilityLabel_];

    outlined init with copy of Any?(a1, v22);
    v15 = v23;
    if (v23)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = *(v15 - 8);
      v18 = MEMORY[0x1EEE9AC00](v16);
      v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v21 = 0;
    }

    [v9 addTarget:v21 action:a2 forControlEvents:64];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void specialized static ShapeListItemView.newAddRoundedRectListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1DA6CCED0](0x662E657261757173, 0xEB000000006C6C69);
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for ShapeListItemView());
    v7 = ShapeListItemView.init(image:symbolWeight:)(v5, 5);
    v8 = one-time initialization token for paperKitBundle;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v24._object = 0x80000001D4086840;
    v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10.value._object = 0xEB00000000656C62;
    v11._object = 0x80000001D4086820;
    v24._countAndFlagsBits = 0xD000000000000037;
    v11._countAndFlagsBits = 0xD000000000000011;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, paperKitBundle, v12, v24)._countAndFlagsBits;
    v14 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v9 setAccessibilityLabel_];

    outlined init with copy of Any?(a1, v22);
    v15 = v23;
    if (v23)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = *(v15 - 8);
      v18 = MEMORY[0x1EEE9AC00](v16);
      v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v21 = 0;
    }

    [v9 addTarget:v21 action:a2 forControlEvents:64];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void specialized static ShapeListItemView.newAddPolygonListItemView(_:action:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1DA6CCED0](0x2E6E6F6761786568, 0xEC0000006C6C6966);
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    v6 = objc_allocWithZone(type metadata accessor for ShapeListItemView());
    v7 = ShapeListItemView.init(image:symbolWeight:)(v5, 5);
    v8 = one-time initialization token for paperKitBundle;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v24._object = 0x80000001D40868E0;
    v10._countAndFlagsBits = 0x6E6F67796C6F50;
    v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v11.value._object = 0xEB00000000656C62;
    v10._object = 0xE700000000000000;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD00000000000002DLL;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, paperKitBundle, v12, v24)._countAndFlagsBits;
    v14 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

    [v9 setAccessibilityLabel_];

    outlined init with copy of Any?(a1, v22);
    v15 = v23;
    if (v23)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = *(v15 - 8);
      v18 = MEMORY[0x1EEE9AC00](v16);
      v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v17 + 8))(v20, v15);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v21 = 0;
    }

    [v9 addTarget:v21 action:a2 forControlEvents:64];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}