void CGRect.dividedIntegral(fraction:from:)(CGRectEdge a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>)
{
  type metadata accessor for CGRectEdge(0);
  v14 = a6;
  if (a1 > CGRectMinYEdge)
  {
    if (a1 != CGRectMaxXEdge)
    {
      v14 = a7;
      if (a1 != CGRectMaxYEdge)
      {
        goto LABEL_13;
      }
    }

LABEL_7:
    v15 = ceil(v14 * a3);
    memset(&slice, 0, sizeof(slice));
    memset(&v21, 0, sizeof(v21));
    v23.origin.x = a4;
    v23.origin.y = a5;
    v23.size.width = a6;
    v23.size.height = a7;
    CGRectDivide(v23, &slice, &v21, v15, a1);
    size = slice.size;
    y = v21.origin.y;
    x = v21.origin.x;
    height = v21.size.height;
    width = v21.size.width;
    if (a1 > CGRectMinYEdge)
    {
      if (a1 != CGRectMaxYEdge)
      {
        goto LABEL_9;
      }
    }

    else if (a1 == CGRectMinXEdge)
    {
LABEL_9:
      x = v21.origin.x + 1.0;
      width = v21.size.width + -1.0;
LABEL_12:
      *a2 = slice.origin;
      *(a2 + 16) = size;
      *(a2 + 32) = x;
      *(a2 + 40) = y;
      *(a2 + 48) = width;
      *(a2 + 56) = height;
      return;
    }

    y = v21.origin.y + 1.0;
    height = v21.size.height + -1.0;
    goto LABEL_12;
  }

  if (a1 == CGRectMinXEdge)
  {
    goto LABEL_7;
  }

  v14 = a7;
  if (a1 == CGRectMinYEdge)
  {
    goto LABEL_7;
  }

LABEL_13:
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

CGFloat MOSuggestionSheetHalfMosaicLayout.firstRect(segmentFrame:)(double a1, double a2, double a3, double a4)
{
  memset(&slice, 0, sizeof(slice));
  memset(&v5, 0, sizeof(v5));
  CGRectDivide(*&a1, &slice, &v5, ceil(a3 * 0.5), CGRectMinXEdge);
  return slice.origin.x;
}

uint64_t MOSuggestionSheetHalfMosaicLayout.quarterRects(of:)(double a1, double a2, double a3, double a4)
{
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(*&a1, &slice, &remainder, ceil(a3 * 0.5), CGRectMinXEdge);
  v23 = slice;
  y = remainder.origin.y;
  height = remainder.size.height;
  v6 = remainder.origin.x + 1.0;
  v7 = remainder.size.width + -1.0;
  v8 = ceil(slice.size.height * 0.5);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v23, &slice, &remainder, v8, CGRectMinYEdge);
  width = remainder.size.width;
  x = remainder.origin.x;
  v9 = remainder.origin.y + 1.0;
  v10 = remainder.size.height + -1.0;
  v18 = slice;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v24.origin.x = v6;
  v24.origin.y = y;
  v24.size.width = v7;
  v24.size.height = height;
  CGRectDivide(v24, &slice, &remainder, ceil(height * 0.5), CGRectMinYEdge);
  v11 = remainder.origin.x;
  v12 = remainder.size.width;
  v13 = remainder.origin.y + 1.0;
  v14 = remainder.size.height + -1.0;
  size = slice.size;
  origin = slice.origin;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_1002A48C0;
  *(result + 32) = v18;
  *(result + 64) = origin;
  *(result + 80) = size;
  *(result + 96) = x;
  *(result + 104) = v9;
  *(result + 112) = width;
  *(result + 120) = v10;
  *(result + 128) = v11;
  *(result + 136) = v13;
  *(result + 144) = v12;
  *(result + 152) = v14;
  return result;
}

id MOSuggestionSheetHalfMosaicLayout.shouldInvalidateLayout(forBoundsChange:)(double a1, double a2, CGFloat a3, CGFloat a4)
{
  result = [v4 collectionView];
  if (result)
  {
    v8 = result;
    [result bounds];
    v10.width = a3;
    v10.height = a4;
    v9 = CGSizeEqualToSize(v10, v11);

    return !v9;
  }

  return result;
}

uint64_t MOSuggestionSheetMosaicLayout.layoutAttributesForItem(at:)()
{
  v1 = *((swift_isaMask & *v0) + 0x70);
  v2 = v1();
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (IndexPath.item.getter() >= v3)
  {
    return 0;
  }

  v4 = IndexPath.item.getter();
  result = v1();
  if ((result & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(result + 8 * v4 + 32);
LABEL_8:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t MOSuggestionSheetMosaicLayout.layoutAttributesForElements(in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v7 = v4;
  v12 = &swift_isaMask;
  v13 = *((swift_isaMask & *v4) + 0x70);
  v14 = (swift_isaMask & *v4) + 112;
  v15 = v13();
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_3;
  }

  while (1)
  {
    v19 = v15;
    v16 = _CocoaArrayWrapper.endIndex.getter();

    if (v16 < 0)
    {
      break;
    }

LABEL_3:
    if (!v16)
    {
      return _swiftEmptyArrayStorage;
    }

    v17 = (*((*v12 & *v7) + 0xD8))(0, v16 - 1, a1, a2, a3, a4);
    if (v18)
    {
      return _swiftEmptyArrayStorage;
    }

    v6 = v17;
    v19 = v7;
    v20 = v13();
    if (v6 < 0)
    {
      goto LABEL_61;
    }

    v19 = v20;
    v21 = v20 & 0xFFFFFFFFFFFFFF8;
    v16 = v20 >> 62;
    if (v20 >> 62)
    {
      goto LABEL_62;
    }

    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < v6)
    {
      goto LABEL_67;
    }

LABEL_9:
    if ((v19 & 0xC000000000000001) == 0 || v6 == 0)
    {
    }

    else
    {
      type metadata accessor for UICollectionViewLayoutAttributes();

      v23 = 0;
      do
      {
        v24 = v23 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v23);
        v23 = v24;
      }

      while (v6 != v24);
    }

    v51 = v13;
    if (v16)
    {
      _CocoaArrayWrapper.subscript.getter();
      v13 = v27;
      v25 = v28;
      v30 = v29;

      v26 = v30 >> 1;
    }

    else
    {
      v25 = 0;
      v13 = ((v19 & 0xFFFFFFFFFFFFFF8) + 32);
      v26 = v6;
    }

    p_align = &stru_100327FE8.align;
    v12 = _swiftEmptyArrayStorage;
    if (v26 == v25)
    {
LABEL_30:
      v36 = swift_unknownObjectRelease();
      result = (v51)(v36);
      v14 = result;
      v16 = result >> 62;
      if (result >> 62)
      {
        goto LABEL_68;
      }

      v38 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v38 < v6)
      {
        goto LABEL_72;
      }

      goto LABEL_32;
    }

    v31 = v26;
    while (!__OFSUB__(v31--, 1))
    {
      if (v31 < v25 || v31 >= v26)
      {
        goto LABEL_57;
      }

      v33 = *(v13 + v31);
      [v33 frame];
      MaxY = CGRectGetMaxY(v52);
      v53.origin.x = a1;
      v53.origin.y = a2;
      v53.size.width = a3;
      v53.size.height = a4;
      if (CGRectGetMinY(v53) > MaxY)
      {

        goto LABEL_30;
      }

      v35 = v33;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v12 = _swiftEmptyArrayStorage;
      if (v31 == v25)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  if (v19 < 0)
  {
    v12 = v19;
  }

  else
  {
    v12 = v21;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 0)
  {
    goto LABEL_74;
  }

  if (_CocoaArrayWrapper.endIndex.getter() >= v6)
  {
    goto LABEL_9;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_75;
  }

  v38 = result;
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_76;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result >= v38)
  {
LABEL_32:
    if ((v14 & 0xC000000000000001) == 0 || v6 == v38)
    {
    }

    else
    {
      if (v6 >= v38)
      {
        goto LABEL_73;
      }

      type metadata accessor for UICollectionViewLayoutAttributes();

      v39 = v6;
      do
      {
        v40 = v39 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v39);
        v39 = v40;
      }

      while (v38 != v40);
    }

    if (v16)
    {
      v7 = _CocoaArrayWrapper.subscript.getter();
      v41 = v42;
      v6 = v43;
      v45 = v44;

      v38 = v45 >> 1;
    }

    else
    {
      v7 = (v14 & 0xFFFFFFFFFFFFFF8);
      v41 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v15 = swift_unknownObjectRetain();
    v14 = v38 - v6;
    if (v38 != v6)
    {
      if (v6 <= v38)
      {
        v46 = v38;
      }

      else
      {
        v46 = v6;
      }

      v13 = (v46 - v6);
      v47 = (v41 + 8 * v6);
      while (v13)
      {
        v48 = *v47;
        [v48 *(p_align + 266)];
        MinY = CGRectGetMinY(v54);
        v55.origin.x = a1;
        v55.origin.y = a2;
        v55.size.width = a3;
        v55.size.height = a4;
        if (MinY > CGRectGetMaxY(v55))
        {

          goto LABEL_54;
        }

        v50 = v48;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v12 = _swiftEmptyArrayStorage;
        v13 = (v13 - 1);
        ++v47;
        if (!--v14)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_58;
    }

LABEL_54:
    swift_unknownObjectRelease_n();
    return v12;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

uint64_t MOSuggestionSheetMosaicLayout.assetGridHeight(assetCount:totalWidth:)(uint64_t result)
{
  if (result)
  {
    return (*((swift_isaMask & *v1) + 0xA0))();
  }

  return result;
}

uint64_t MOSuggestionSheetMosaicLayout.binSearch(_:start:end:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2 < a1)
  {
    return 0;
  }

  v15 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v9 = a1;
  v8 = a2;
  v6 = v15 / 2;
  v10 = &swift_isaMask;
  result = (*((swift_isaMask & *v7) + 0x70))();
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_16:
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
    v18 = v17;

    [v18 frame];
    v29.origin.x = v14;
    v29.origin.y = v13;
    v29.size.width = v12;
    v29.size.height = v11;
    if (CGRectIntersectsRect(v26, v29))
    {
    }

    else
    {
      [v18 frame];
      MaxY = CGRectGetMaxY(v27);
      v28.origin.x = v14;
      v28.origin.y = v13;
      v28.size.width = v12;
      v28.size.height = v11;
      if (MaxY >= CGRectGetMinY(v28))
      {
        v25 = v6 - 1;
        v20.n128_f64[0] = v14;
        v21.n128_f64[0] = v13;
        v22.n128_f64[0] = v12;
        v23.n128_f64[0] = v11;
        v24 = v9;
      }

      else
      {
        v24 = v6 + 1;
        v20.n128_f64[0] = v14;
        v21.n128_f64[0] = v13;
        v22.n128_f64[0] = v12;
        v25 = v8;
        v23.n128_f64[0] = v11;
      }

      v6 = (*((*v10 & *v7) + 0xD8))(v24, v25, v20, v21, v22, v23);
    }

    return v6;
  }

  if (v15 < -1)
  {
    __break(1u);
  }

  else if (v6 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(result + 8 * v6 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id MOSuggestionSheetMosaicLayout.init()()
{
  *&v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_cachedAttributes] = _swiftEmptyArrayStorage;
  v1 = &v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_contentBounds];
  *v1 = 0u;
  v1[1] = 0u;
  v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_isFullHeight] = 1;
  *&v0[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_mosaicSegmentDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MOSuggestionSheetMosaicLayout();
  return objc_msgSendSuper2(&v3, "init");
}

id MOSuggestionSheetMosaicLayout.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_cachedAttributes] = _swiftEmptyArrayStorage;
  v3 = &v1[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_contentBounds];
  *v3 = 0u;
  v3[1] = 0u;
  v1[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_isFullHeight] = 1;
  *&v1[OBJC_IVAR____TtC16MomentsUIService29MOSuggestionSheetMosaicLayout_mosaicSegmentDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MOSuggestionSheetMosaicLayout();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id MOSuggestionSheetMosaicLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetMosaicLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 protocol witness for MosaicSegmentDelegate.quarterRects(of:) in conformance MOSuggestionSheetMosaicLayout(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRect.dividedIntegral(fraction:from:)(CGRectMinXEdge, &v16, 0.5, a1, a2, a3, a4);
  v4 = v18;
  v5 = v19;
  CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v16, 0.5, *&v16, *(&v16 + 1), *&v17, *(&v17 + 1));
  v12 = v17;
  v13 = v16;
  v14 = v18;
  v15 = v19;
  CGRect.dividedIntegral(fraction:from:)(CGRectMinYEdge, &v16, 0.5, v4.n128_f64[0], v4.n128_f64[1], *&v5, *(&v5 + 1));
  v8 = v17;
  v9 = v16;
  v10 = v19;
  v11 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
  v6 = swift_allocObject();
  v6[1] = xmmword_1002A48C0;
  v6[2] = v13;
  v6[3] = v12;
  v6[4] = v9;
  v6[5] = v8;
  v6[6] = v14;
  v6[7] = v15;
  result = v11;
  v6[8] = v11;
  v6[9] = v10;
  return result;
}

char *specialized MOSuggestionSheetMosaicLayout.firstRowRects(segmentFrame:)(double a1, double a2, double a3, double a4)
{
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(*&a1, &slice, &remainder, ceil(a3 * 0.5), CGRectMinXEdge);
  size = slice.size;
  origin = slice.origin;
  y = remainder.origin.y;
  height = remainder.size.height;
  v6 = remainder.origin.x + 1.0;
  v7 = remainder.size.width + -1.0;
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[32 * v10];
  *(v11 + 2) = origin;
  *(v11 + 3) = size;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v54.origin.x = v6;
  v54.origin.y = y;
  v54.size.width = v7;
  v54.size.height = height;
  CGRectDivide(v54, &slice, &remainder, ceil(v7 * 0.5), CGRectMinXEdge);
  v55 = slice;
  v12 = remainder.origin.y;
  v13 = remainder.size.height;
  v14 = remainder.origin.x + 1.0;
  v15 = remainder.size.width + -1.0;
  v16 = ceil(slice.size.height * 0.5);
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v55, &slice, &remainder, v16, CGRectMinYEdge);
  v47 = slice.size;
  v49 = slice.origin;
  x = remainder.origin.x;
  v17 = remainder.origin.y;
  v19 = remainder.size.height;
  width = remainder.size.width;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v56.origin.x = v14;
  v56.origin.y = v12;
  v56.size.width = v15;
  v56.size.height = v13;
  CGRectDivide(v56, &slice, &remainder, ceil(v13 * 0.5), CGRectMinYEdge);
  v20 = slice.origin;
  v21 = slice.size;
  v22 = remainder.origin.x;
  v23 = remainder.origin.y;
  v24 = remainder.size.width;
  v25 = remainder.size.height;
  v27 = *(v8 + 2);
  v26 = *(v8 + 3);
  v28 = v26 >> 1;
  v29 = v27 + 1;
  if (v26 >> 1 <= v27)
  {
    v43 = slice.size;
    v45 = slice.origin;
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v8);
    v21 = v43;
    v20 = v45;
    v8 = v41;
    v26 = *(v41 + 3);
    v28 = v26 >> 1;
  }

  *(v8 + 2) = v29;
  v30 = &v8[32 * v27];
  *(v30 + 2) = v49;
  *(v30 + 3) = v47;
  v31 = v27 + 2;
  if (v28 < (v27 + 2))
  {
    v44 = v21;
    v46 = v20;
    v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 2, 1, v8);
    v21 = v44;
    v20 = v46;
    v8 = v42;
  }

  v32 = v17 + 1.0;
  v33 = v19 + -1.0;
  *(v8 + 2) = v31;
  v34 = &v8[32 * v29];
  *(v34 + 2) = v20;
  *(v34 + 3) = v21;
  v35 = *(v8 + 3);
  v36 = v27 + 3;
  if ((v27 + 3) > (v35 >> 1))
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v27 + 3, 1, v8);
  }

  *(v8 + 2) = v36;
  v37 = &v8[32 * v31];
  v37[4] = x;
  v37[5] = v32;
  v37[6] = width;
  v37[7] = v33;
  v38 = *(v8 + 3);
  if ((v27 + 4) > (v38 >> 1))
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v27 + 4, 1, v8);
  }

  *(v8 + 2) = v27 + 4;
  v39 = &v8[32 * v36];
  v39[4] = v22;
  v39[5] = v23 + 1.0;
  v39[6] = v24;
  v39[7] = v25 + -1.0;
  return v8;
}

unint64_t type metadata accessor for UICollectionViewLayoutAttributes()
{
  result = lazy cache variable for type metadata for UICollectionViewLayoutAttributes;
  if (!lazy cache variable for type metadata for UICollectionViewLayoutAttributes)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UICollectionViewLayoutAttributes);
  }

  return result;
}

uint64_t sub_100062B2C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_100062B88(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x78);

  return v2(v3);
}

void sub_100062BEC(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((swift_isaMask & **a1) + 0x88))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_100062CA8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100062D60@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xB8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100062DBC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((swift_isaMask & **a2) + 0xC0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

id MOSuggestionSheetFilterCollectionView.__allocating_init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];

  return v7;
}

id MOSuggestionSheetGridCollectionView.init(frame:collectionViewLayout:)(void *a1, double a2, double a3, double a4, double a5)
{
  v17.receiver = v5;
  v17.super_class = type metadata accessor for MOSuggestionSheetGridCollectionView();
  v11 = objc_msgSendSuper2(&v17, "initWithFrame:collectionViewLayout:", a1, a2, a3, a4, a5);
  type metadata accessor for MOSuggestionSheetMosaicCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = v11;
  v14 = String._bridgeToObjectiveC()();
  [v13 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v14];

  [v13 setScrollEnabled:0];
  v15 = [objc_opt_self() whiteColor];
  [v13 setBackgroundColor:v15];

  return v13;
}

id MOSuggestionSheetGridCollectionView.init(coder:)(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for MOSuggestionSheetGridCollectionView();
  v3 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  if (v3)
  {
    type metadata accessor for MOSuggestionSheetMosaicCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = v3;
    v6 = String._bridgeToObjectiveC()();
    [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v6];

    [v5 setScrollEnabled:0];
    v7 = [objc_opt_self() whiteColor];
    [v5 setBackgroundColor:v7];

    a1 = v7;
  }

  return v3;
}

id MOSuggestionSheetGridCollectionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetGridCollectionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t MOSuggestionAssetTileSize.description.getter(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    if (a1 > 3u)
    {
      if (a1 == 4)
      {
        return 0xD000000000000011;
      }

      if (a1 == 5)
      {
        return 0x454752414CLL;
      }
    }

    else
    {
      if (a1 == 2)
      {
        return 0x4C4C414D53;
      }

      if (a1 == 3)
      {
        return 1414744396;
      }
    }

    return 0x524546534E415254;
  }

  if (a1 <= 7u)
  {
    if (a1 == 6)
    {
      return 0x414C5F4152545845;
    }

    if (a1 == 7)
    {
      return 0xD000000000000015;
    }

    return 0x524546534E415254;
  }

  if (a1 == 8)
  {
    return 0x455243534C4C5546;
  }

  if (a1 != 9)
  {
    if (a1 == 10)
    {
      return 0xD000000000000016;
    }

    return 0x524546534E415254;
  }

  return 0xD000000000000016;
}

void MOSuggestionAssetTileSize.hash(into:)(uint64_t a1, char a2)
{
  if ((a2 - 2) >= 9u)
  {
    Hasher._combine(_:)(7uLL);
    v2 = a2 & 1;
  }

  else
  {
    v2 = qword_1002A57E8[(a2 - 2)];
  }

  Hasher._combine(_:)(v2);
}

Swift::Int MOSuggestionAssetTileSize.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MOSuggestionAssetTileSize.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetTileSize()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MOSuggestionAssetTileSize.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetTileSize()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MOSuggestionAssetTileSize.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for tileSizesByCount(uint64_t a1)
{
  return one-time initialization function for tileSizesByCount(a1, &outlined read-only object #0 of one-time initialization function for tileSizesByCount, &unk_100309ED0, 13, &static MOSuggestionLayoutEngine.FullWidth.tileSizesByCount);
}

{
  return one-time initialization function for tileSizesByCount(a1, &outlined read-only object #0 of one-time initialization function for tileSizesByCount, &unk_10030A060, 4, &static MOSuggestionLayoutEngine.HalfWidth.tileSizesByCount);
}

uint64_t *MOSuggestionLayoutEngine.FullWidth.tileSizesByCount.unsafeMutableAddressor()
{
  if (one-time initialization token for tileSizesByCount != -1)
  {
    swift_once();
  }

  return &static MOSuggestionLayoutEngine.FullWidth.tileSizesByCount;
}

uint64_t one-time initialization function for tileSizesByCount(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say16MomentsUIService25MOSuggestionAssetTileSizeOGTt0g5Tf4g_n(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_Say16MomentsUIService25MOSuggestionAssetTileSizeOGtMd);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t *MOSuggestionLayoutEngine.HalfWidth.tileSizesByCount.unsafeMutableAddressor()
{
  if (one-time initialization token for tileSizesByCount != -1)
  {
    swift_once();
  }

  return &static MOSuggestionLayoutEngine.HalfWidth.tileSizesByCount;
}

uint64_t one-time initialization function for tileSizesByCount()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Say16MomentsUIService25MOSuggestionAssetTileSizeOGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for tileSizesByCount);
  result = outlined destroy of (Int, [MOSuggestionAssetTileSize])(&unk_10030A248);
  static MOSuggestionLayoutEngine.FullWidthCondensed.tileSizesByCount = v0;
  return result;
}

uint64_t *MOSuggestionLayoutEngine.FullWidthCondensed.tileSizesByCount.unsafeMutableAddressor()
{
  if (one-time initialization token for tileSizesByCount != -1)
  {
    swift_once();
  }

  return &static MOSuggestionLayoutEngine.FullWidthCondensed.tileSizesByCount;
}

uint64_t static MOSuggestionLayoutEngine.FullWidth.tileSizesByCount.getter(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

double static MOSuggestionLayoutEngine.viewportFromTileSize(_:)(char a1)
{
  if ((a1 - 2) > 8u)
  {
    return 300.0;
  }

  else
  {
    return dbl_1002A5830[(a1 - 2)];
  }
}

double static MOSuggestionLayoutEngine.heightToWidthRatio(_:)(char a1)
{
  result = 1.0;
  if ((a1 - 2) <= 8u)
  {
    return dbl_1002A5878[(a1 - 2)] / dbl_1002A5830[(a1 - 2)];
  }

  return result;
}

double static MOSuggestionLayoutEngine.widthToHeightRatio(_:)(char a1)
{
  v1 = 1.0;
  if ((a1 - 2) <= 8u)
  {
    v1 = dbl_1002A5878[(a1 - 2)] / dbl_1002A5830[(a1 - 2)];
  }

  return 1.0 / v1;
}

BOOL specialized static MOSuggestionAssetTileSize.__derived_enum_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 5u)
  {
    if (a1 > 3u)
    {
      if (a1 == 4)
      {
        return a2 == 4;
      }

      if (a1 == 5)
      {
        return a2 == 5;
      }
    }

    else
    {
      if (a1 == 2)
      {
        return a2 == 2;
      }

      if (a1 == 3)
      {
        return a2 == 3;
      }
    }
  }

  else if (a1 <= 7u)
  {
    if (a1 == 6)
    {
      return a2 == 6;
    }

    if (a1 == 7)
    {
      return a2 == 7;
    }
  }

  else
  {
    switch(a1)
    {
      case 8u:
        return a2 == 8;
      case 9u:
        return a2 == 9;
      case 0xAu:
        return a2 == 10;
    }
  }

  if (a2 - 2 < 9)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetTransferDelivery and conformance MOSuggestionAssetTransferDelivery()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetTransferDelivery and conformance MOSuggestionAssetTransferDelivery;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetTransferDelivery and conformance MOSuggestionAssetTransferDelivery)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetTransferDelivery and conformance MOSuggestionAssetTransferDelivery);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetTileSize and conformance MOSuggestionAssetTileSize()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetTileSize and conformance MOSuggestionAssetTileSize;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetTileSize and conformance MOSuggestionAssetTileSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetTileSize and conformance MOSuggestionAssetTileSize);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MOSuggestionAssetTileSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 10;
  if (a2 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 10;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 10;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0xA)
  {
    return v8 - 9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MOSuggestionAssetTileSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 10;
  if (a3 + 10 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF6)
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for MOSuggestionAssetTileSize(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for MOSuggestionAssetTileSize(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t outlined destroy of (Int, [MOSuggestionAssetTileSize])(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_Say16MomentsUIService25MOSuggestionAssetTileSizeOGtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for queue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInteractive.getter();
  v8 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static MOSuggestionAssetStateOfMindProvider.queue = result;
  return result;
}

{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInteractive.getter();
  v8 = _swiftEmptyArrayStorage;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static MOSuggestionAssetWorkoutProvider.queue = result;
  return result;
}

uint64_t *MOSuggestionAssetStateOfMindProvider.queue.unsafeMutableAddressor()
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  return &static MOSuggestionAssetStateOfMindProvider.queue;
}

id static MOSuggestionAssetStateOfMindProvider.queue.getter()
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  v1 = static MOSuggestionAssetStateOfMindProvider.queue;

  return v1;
}

void MOSuggestionAssetStateOfMindProvider.getStateOfMind(stateOfMindUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [v7 predicateForObjectWithUUID:isa];

  v10 = [objc_opt_self() stateOfMindType];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = objc_allocWithZone(HKSampleQuery);
  v15[4] = partial apply for closure #1 in MOSuggestionAssetStateOfMindProvider.getStateOfMind(stateOfMindUUID:completion:);
  v15[5] = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
  v15[3] = &block_descriptor_3;
  v13 = _Block_copy(v15);

  v14 = [v12 initWithSampleType:v10 predicate:v9 limit:1 sortDescriptors:0 resultsHandler:v13];

  _Block_release(v13);

  [*(v4 + 16) executeQuery:v14];
}

void closure #1 in MOSuggestionAssetStateOfMindProvider.getStateOfMind(stateOfMindUUID:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!a2)
  {
    goto LABEL_12;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v7 = a2;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v7;
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    (a4)(0);
    return;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v5 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(a2 + 32);
  }

  v9 = v6;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_12;
  }

  a4();
}

uint64_t sub_10006432C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void static MOSuggestionAssetStateOfMindProvider.getAssetFor(valence:cacheType:completion:)(uint64_t a1, void (*a2)(void))
{
  v3 = type metadata accessor for StateOfMindVisualization.ValenceImageProvider.ImageScale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StateOfMindVisualization.ValenceImageProvider();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for StateOfMindVisualization.ValenceImageProvider.ImageScale.confirmationView(_:), v3);
  StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)();
  v11 = StateOfMindVisualization.ValenceImageProvider.uiImage.getter();
  (*(v8 + 8))(v10, v7);
  v12 = MOSuggestionAssetsTypeStateOfMindAsset;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIImage);
  v13 = [objc_allocWithZone(MOSuggestionAsset) init:v11 type:v12 contentClassType:swift_getObjCClassFromMetadata()];
  a2();
}

uint64_t static MOSuggestionAssetStateOfMindProvider.getValenceClassificationAndReflectiveIntervalLocalized(valenceClassification:reflectiveInterval:)()
{
  v0 = HKUILocalizedStringForValenceClassificationAndReflectiveInterval();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

uint64_t MOSuggestionAssetStateOfMindProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MOSuggestionAssetStateOfMindProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(HKHealthStore) init];
  return v0;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKSample);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t specialized static MOSuggestionAssetStateOfMindProvider.getLabelsLocalized(labelResource:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = v1 - 1;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v2 += 8;
    v5 = HKUILocalizedStringForStateOfMindLabel();
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v10 = *(v4 + 2);
    v9 = *(v4 + 3);
    if (v10 >= v9 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
    }

    *(v4 + 2) = v10 + 1;
    v11 = &v4[16 * v10];
    *(v11 + 4) = v6;
    *(v11 + 5) = v8;
    if (!v3)
    {
      break;
    }

    --v3;
  }

  if (!v10 || (, v12 = objc_opt_self(), , v13 = [v12 mainBundle], v24._object = 0x80000001002B0ED0, v24._countAndFlagsBits = 0xD000000000000025, v14._countAndFlagsBits = 8236, v14._object = 0xE200000000000000, v15._countAndFlagsBits = 0, v15._object = 0xE000000000000000, NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v24), v13, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd), v6 = BidirectionalCollection<>.joined(separator:)(), , , *(v4 + 2) < 3uLL))
  {

    return v6;
  }

  v16 = [objc_opt_self() mainBundle];
  v25._object = 0x80000001002B0E20;
  v17._countAndFlagsBits = 0xD000000000000036;
  v17._object = 0x80000001002B0DE0;
  v18._object = 0x80000001002B0CE0;
  v25._countAndFlagsBits = 0xD0000000000000A2;
  v18._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002A4A00;
  *(v19 + 56) = &type metadata for String;
  result = lazy protocol witness table accessor for type String and conformance String();
  *(v19 + 64) = result;
  v21 = *(v4 + 2);
  if (v21)
  {
    v22 = result;
    result = *(v4 + 5);
    *(v19 + 32) = *(v4 + 4);
    *(v19 + 40) = result;
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v22;
    if (v21 != 1)
    {
      v23 = *(v4 + 7);
      *(v19 + 72) = *(v4 + 6);
      *(v19 + 80) = v23;

      static String.localizedStringWithFormat(_:_:)();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized static MOSuggestionAssetStateOfMindProvider.getDomainsLocalized(domainResource:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = v1 - 1;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v2 += 8;
    v5 = HKUILocalizedStringForStateOfMindDomain();
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    }

    v10 = *(v4 + 2);
    v9 = *(v4 + 3);
    if (v10 >= v9 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
    }

    *(v4 + 2) = v10 + 1;
    v11 = &v4[16 * v10];
    *(v11 + 4) = v6;
    *(v11 + 5) = v8;
    if (!v3)
    {
      break;
    }

    --v3;
  }

  if (!v10 || (, v12 = objc_opt_self(), , v13 = [v12 mainBundle], v24._object = 0x80000001002B0DB0, v24._countAndFlagsBits = 0xD000000000000026, v14._countAndFlagsBits = 8236, v14._object = 0xE200000000000000, v15._countAndFlagsBits = 0, v15._object = 0xE000000000000000, NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v24), v13, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd), v6 = BidirectionalCollection<>.joined(separator:)(), , , *(v4 + 2) < 3uLL))
  {

    return v6;
  }

  v16 = [objc_opt_self() mainBundle];
  v25._object = 0x80000001002B0D00;
  v17._countAndFlagsBits = 0xD000000000000038;
  v17._object = 0x80000001002B0CA0;
  v18._object = 0x80000001002B0CE0;
  v25._countAndFlagsBits = 0xD0000000000000A6;
  v18._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v25);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002A4A00;
  *(v19 + 56) = &type metadata for String;
  result = lazy protocol witness table accessor for type String and conformance String();
  *(v19 + 64) = result;
  v21 = *(v4 + 2);
  if (v21)
  {
    v22 = result;
    result = *(v4 + 5);
    *(v19 + 32) = *(v4 + 4);
    *(v19 + 40) = result;
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v22;
    if (v21 != 1)
    {
      v23 = *(v4 + 7);
      *(v19 + 72) = *(v4 + 6);
      *(v19 + 80) = v23;

      static String.localizedStringWithFormat(_:_:)();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id closure #1 in variable initialization expression of MOSuggestionCollectionViewSingleAssetCell.titleLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setLineBreakMode:4];
  [v0 setNumberOfLines:2];
  [v0 setBaselineAdjustment:2];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor:v1];

  [v0 setTextAlignment:4];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];

  return v0;
}

id closure #1 in variable initialization expression of MOSuggestionCollectionViewSingleAssetCell.subtitleLabel()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setLineBreakMode:4];
  [v0 setNumberOfLines:2];
  v1 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v1];

  [v0 setTextAlignment:4];
  [v0 setBaselineAdjustment:2];
  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];

  return v0;
}

uint64_t key path setter for MOSuggestionCollectionViewSingleAssetCell.accessoryButtonAction : MOSuggestionCollectionViewSingleAssetCell(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((swift_isaMask & **a2) + 0x90);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v5);
}

uint64_t MOSuggestionCollectionViewSingleAssetCell.accessoryButtonAction.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_accessoryButtonAction);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MOSuggestionCollectionViewSingleAssetCell.accessoryButtonAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_accessoryButtonAction);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_retain_n();

  (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_journalButton)) + 0x68))(a1, a2);
}

void (*MOSuggestionCollectionViewSingleAssetCell.accessoryButtonAction.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_accessoryButtonAction;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOSuggestionCollectionViewSingleAssetCell.accessoryButtonAction.modify;
}

void MOSuggestionCollectionViewSingleAssetCell.accessoryButtonAction.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    v6 = *v5;
    v7 = v5[1];
    v8 = *((swift_isaMask & **(v4 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_journalButton)) + 0x68);

    v8(v6, v7);
  }

  free(v3);
}

uint64_t MOSuggestionCollectionViewSingleAssetCell.cellViewModel.didset()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_titleLabel);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    (*(*Strong + 176))(Strong);

    v4 = String._bridgeToObjectiveC()();
  }

  [v2 setText:v4];

  v5 = specialized static MOSuggestionTheme.Fonts.footnoteEmphShortFont()();
  v6 = [v2 text];
  if (v6)
  {
    v7 = v6;
    v50 = v5;
    v8 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v8 setLineSpacing:0.0];
    [v8 setLineBreakMode:4];
    [v8 setLineHeightMultiple:0.95];
    LODWORD(v9) = 0.5;
    [v8 setHyphenationFactor:v9];
    v10 = [v2 attributedText];
    if (v10)
    {
      v11 = v10;

      v12 = &selRef_initWithAttributedString_;
      v7 = v11;
    }

    else
    {
      v12 = &selRef_initWithString_;
    }

    v13 = [objc_allocWithZone(NSMutableAttributedString) *v12];

    if (v50)
    {
      v14 = v50;
      [v13 addAttribute:NSFontAttributeName value:v14 range:{0, objc_msgSend(v13, "length")}];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002A4A00;
    *(inited + 32) = NSBaselineOffsetAttributeName;
    *(inited + 40) = 0;
    *(inited + 64) = &type metadata for CGFloat;
    *(inited + 72) = NSParagraphStyleAttributeName;
    *(inited + 104) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
    *(inited + 80) = v8;
    v16 = NSBaselineOffsetAttributeName;
    v17 = NSParagraphStyleAttributeName;
    v5 = v8;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
    swift_arrayDestroy();
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v13 addAttributes:isa range:{0, objc_msgSend(v13, "length")}];

    [v2 setAttributedText:v13];
  }

  v19 = *(v1 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_subtitleLabel);
  v20 = swift_weakLoadStrong();
  v21 = v20;
  if (v20)
  {
    (*(*v20 + 376))(v20);

    v21 = String._bridgeToObjectiveC()();
  }

  [v19 setText:{v21, v50}];

  v22 = specialized static MOSuggestionTheme.Fonts.footnoteShortFont()();
  v23 = [v19 text];
  if (v23)
  {
    v24 = v23;
    v25 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v25 setLineSpacing:0.0];
    [v25 setLineBreakMode:4];
    [v25 setLineHeightMultiple:0.95];
    LODWORD(v26) = 0.5;
    [v25 setHyphenationFactor:v26];
    v27 = [v19 attributedText];
    if (v27)
    {
      v28 = v27;

      v29 = &selRef_initWithAttributedString_;
      v24 = v28;
    }

    else
    {
      v29 = &selRef_initWithString_;
    }

    v31 = [objc_allocWithZone(NSMutableAttributedString) *v29];

    if (v22)
    {
      v32 = v22;
      [v31 addAttribute:NSFontAttributeName value:v32 range:{0, objc_msgSend(v31, "length")}];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_1002A4A00;
    *(v33 + 32) = NSBaselineOffsetAttributeName;
    *(v33 + 40) = 0;
    *(v33 + 64) = &type metadata for CGFloat;
    *(v33 + 72) = NSParagraphStyleAttributeName;
    *(v33 + 104) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
    *(v33 + 80) = v25;
    v34 = NSBaselineOffsetAttributeName;
    v35 = NSParagraphStyleAttributeName;
    v30 = v25;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v33);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
    swift_arrayDestroy();
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v36 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v31 addAttributes:v36 range:{0, objc_msgSend(v31, "length")}];

    [v19 setAttributedText:v31];
  }

  else
  {
    v30 = v22;
  }

  v37 = swift_weakLoadStrong();
  if (v37)
  {
    v38 = (*(*v37 + 224))(v37);

    v39 = v38 & 1;
  }

  else
  {
    v39 = 2;
  }

  v40 = swift_weakLoadStrong();
  if (v40)
  {
    v41 = (*(*v40 + 248))(v40);

    v42 = v41 & 1;
  }

  else
  {
    v42 = 2;
  }

  (*((swift_isaMask & *v1) + 0xD8))(v39, v42);
  v43 = *(v1 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_assetGridView);
  v44 = swift_weakLoadStrong();
  if (v44)
  {
    v45 = (*(*v44 + 392))();
  }

  else
  {
    v45 = 0;
  }

  (*((swift_isaMask & *v43) + 0x110))(v45);
  v46 = *(v1 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_journalButton);
  v47 = swift_weakLoadStrong();
  if (v47)
  {
    v48 = *(v47 + 80);
  }

  else
  {
    v48 = 0;
  }

  return (*((swift_isaMask & *v46) + 0x98))(v48);
}

uint64_t MOSuggestionCollectionViewSingleAssetCell.cellViewModel.setter()
{
  swift_beginAccess();
  swift_weakAssign();
  MOSuggestionCollectionViewSingleAssetCell.cellViewModel.didset();
}

void (*MOSuggestionCollectionViewSingleAssetCell.cellViewModel.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_cellViewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return MOSuggestionCollectionViewSingleAssetCell.cellViewModel.modify;
}

void MOSuggestionCollectionViewSingleAssetCell.cellViewModel.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    MOSuggestionCollectionViewSingleAssetCell.cellViewModel.didset();
  }

  free(v3);
}

char *MOSuggestionCollectionViewSingleAssetCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_assetGridView;
  type metadata accessor for MOSuggestionSheetAssetGridView();
  *&v5[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_titleLabel;
  *&v5[v11] = closure #1 in variable initialization expression of MOSuggestionCollectionViewSingleAssetCell.titleLabel();
  v12 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_subtitleLabel;
  *&v5[v12] = closure #1 in variable initialization expression of MOSuggestionCollectionViewSingleAssetCell.subtitleLabel();
  v13 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_journalButton;
  v14 = type metadata accessor for MOSuggestionSheetJournalButton();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_buttonTapped];
  *v16 = 0;
  v16[1] = 0;
  v15[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_singleCellAsset] = 1;
  v38.receiver = v15;
  v38.super_class = v14;
  v17 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  MOSuggestionSheetJournalButton.sharedInit()();

  *&v5[v13] = v17;
  v18 = &v5[OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_accessoryButtonAction];
  *v18 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
  v18[1] = 0;
  swift_weakInit();
  v19 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_platterView;
  v20 = [objc_allocWithZone(UIView) init];
  v21 = [v20 traitCollection];
  v22 = [v21 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v20, v22);
  *&v5[v19] = v20;
  v37.receiver = v5;
  v37.super_class = type metadata accessor for MOSuggestionCollectionViewSingleAssetCell();
  v23 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_assetGridView;
  v25 = *&v23[OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_assetGridView];
  v26 = *((swift_isaMask & *v25) + 0x128);
  v27 = v23;
  v28 = v25;
  v26(0);

  v29 = [v27 contentView];
  v30 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_platterView;
  [v29 addSubview:*&v27[OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_platterView]];

  [*&v27[v30] addSubview:*&v23[v24]];
  v31 = *&v27[OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_titleLabel];
  v32 = v27;
  [v32 addSubview:v31];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_subtitleLabel]];
  v33 = [v32 addSubview:*&v32[OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_journalButton]];
  (*((swift_isaMask & *v32) + 0xE0))(v33);
  v34 = [objc_opt_self() clearColor];
  [v32 setBackgroundColor:v34];

  [v32 setClipsToBounds:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1002A48B0;
  *(v35 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v35 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v32;
}

Swift::Void __swiftcall MOSuggestionCollectionViewSingleAssetCell.handleTraitChange()()
{
  v3 = *&v0[OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_platterView];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v3, v2);
}

Swift::Void __swiftcall MOSuggestionCollectionViewSingleAssetCell.setInteractionState(added:saved:)(Swift::Bool_optional added, Swift::Bool_optional saved)
{
  if (added.value != 2 && added.value)
  {
    v3 = 0;
LABEL_7:
    v4 = *(v2 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_assetGridView);
    (*((swift_isaMask & *v4) + 0x1B0))(v3, *&saved);
    (*((swift_isaMask & *v4) + 0x188))(1);
    return;
  }

  if (saved.value != 2 && saved.value)
  {
    v3 = 1;
    goto LABEL_7;
  }
}

Swift::Void __swiftcall MOSuggestionCollectionViewSingleAssetCell.setupConstraints()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_platterView;
  v3 = *&v0[OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_platterView];
  p_align = &stru_100327FE8.align;
  v5 = [v3 superview];
  v6 = &stru_100327FE8.align;
  if (v5)
  {
    v7 = v5;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v3 topAnchor];
    v9 = [v7 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];

    [v10 setConstant:4.0];
    if (v10)
    {
      [v10 setActive:1];
    }

    v6 = (&stru_100327FE8 + 24);
  }

  else
  {
    v10 = 0;
    v7 = v3;
  }

  v11 = *&v1[v2];
  v12 = [v11 superview];
  if (v12)
  {
    v13 = v12;
    [v11 *(v6 + 222)];
    v14 = [v11 leadingAnchor];
    v15 = [v13 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    [v16 setConstant:4.0];
    if (v16)
    {
      [v16 setActive:1];
    }

    p_align = (&stru_100327FE8 + 24);
  }

  else
  {
    v16 = 0;
    v13 = v11;
  }

  v17 = *&v1[v2];
  v18 = [v17 *(p_align + 271)];
  if (v18)
  {
    v19 = v18;
    [v17 *(v6 + 222)];
    v20 = [v17 trailingAnchor];
    v21 = [v19 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    [v22 setConstant:-4.0];
    if (v22)
    {
      [v22 setActive:1];
    }
  }

  else
  {
    v22 = 0;
    v19 = v17;
  }

  v23 = *&v1[OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_assetGridView];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v66 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1002A5370;
  v25 = [v23 heightAnchor];
  v26 = [v23 widthAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v24 + 32) = v27;
  v28 = *&v1[OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_titleLabel];
  v29 = [v28 topAnchor];
  v30 = [*&v1[v2] bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:8.0];

  *(v24 + 40) = v31;
  v32 = [v28 leadingAnchor];
  v33 = [v1 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:5.0];

  *(v24 + 48) = v34;
  v35 = [v28 trailingAnchor];
  v36 = *&v1[OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_journalButton];
  v37 = [v36 leadingAnchor];
  v38 = v2;
  v39 = [v35 constraintEqualToAnchor:v37 constant:-5.0];

  *(v24 + 56) = v39;
  v40 = [v36 topAnchor];
  v41 = [*&v1[v38] bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:10.0];

  *(v24 + 64) = v42;
  v43 = [v36 trailingAnchor];
  v44 = [*&v1[v38] trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-4.0];

  *(v24 + 72) = v45;
  v46 = [v36 widthAnchor];
  v47 = [v46 constraintGreaterThanOrEqualToConstant:27.0];

  *(v24 + 80) = v47;
  v48 = [v36 widthAnchor];
  v49 = [v48 constraintLessThanOrEqualToConstant:33.0];

  *(v24 + 88) = v49;
  v50 = [v36 heightAnchor];
  v51 = [v36 widthAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v24 + 96) = v52;
  v53 = *&v1[OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_subtitleLabel];
  v54 = [v53 topAnchor];
  v55 = [v28 bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:1.0];

  *(v24 + 104) = v56;
  v57 = [v53 bottomAnchor];
  v58 = [v1 bottomAnchor];
  v59 = [v57 constraintLessThanOrEqualToAnchor:v58];

  *(v24 + 112) = v59;
  v60 = [v53 leadingAnchor];
  v61 = [v28 leadingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];

  *(v24 + 120) = v62;
  v63 = [v53 trailingAnchor];
  v64 = [v28 trailingAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  *(v24 + 128) = v65;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v66 activateConstraints:isa];
}

void MOSuggestionCollectionViewSingleAssetCell.setAssetViewModels(_:)()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_assetGridView);

  v4 = _s16MomentsUIService11MOWeakArrayVyACyxGSayxGcfCAA31MOSuggestionSheetAssetViewModelC_Tt0g5(v3);
  v5 = (*((swift_isaMask & *v2) + 0x158))(v4);
  v6 = *((swift_isaMask & *v1) + 0xA0);
  v7 = v6(v5);
  if (v7)
  {
    v8 = *(*v7 + 304);

    v8(v9);
  }

  v10 = *(v1 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_subtitleLabel);
  v11 = v6(v7);
  if (v11)
  {
    (*(*v11 + 376))(v11);

    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v10 setText:v12];
}

uint64_t MOSuggestionCollectionViewSingleAssetCell.updateCell(with:index:)(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_assetGridView);
  v5 = (*((swift_isaMask & *v4) + 0x160))(v13);
  if (*v6)
  {

    specialized MOWeakArray.subscript.setter(v7, a2);
  }

  v8 = v5(v13, 0);
  v9 = *(v2 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_subtitleLabel);
  v10 = (*((swift_isaMask & *v2) + 0xA0))(v8);
  v11 = v10;
  if (v10)
  {
    (*(*v10 + 376))(v10);

    v11 = String._bridgeToObjectiveC()();
  }

  [v9 setText:v11];

  return (*((swift_isaMask & *v4) + 0x1D0))(a2);
}

id MOSuggestionCollectionViewSingleAssetCell.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = type metadata accessor for MOSuggestionCollectionViewSingleAssetCell();
  v7 = objc_msgSendSuper2(&v10, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIButton);
    if (([v7 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
    {
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for PHLivePhotoView);
      if (([v7 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
      {

        v8 = v3;
        return v3;
      }
    }
  }

  return v7;
}

Swift::Void __swiftcall MOSuggestionCollectionViewSingleAssetCell.prepareForReuse()()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MOSuggestionCollectionViewSingleAssetCell();
  objc_msgSendSuper2(&v8, "prepareForReuse");
  v2 = *(v0 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_titleLabel);
  v3 = String._bridgeToObjectiveC()();
  [v2 setText:v3];

  v4 = *(v1 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_subtitleLabel);
  v5 = String._bridgeToObjectiveC()();
  [v4 setText:v5];

  v6 = (*((swift_isaMask & *v1) + 0xA0))();
  if (v6)
  {
    (*(*v6 + 304))(0);
  }

  (*((swift_isaMask & *v1) + 0xA8))(0);
  v7 = *(v1 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_assetGridView);
  (*((swift_isaMask & *v7) + 0x158))(0, 0, 0);
  (*((swift_isaMask & *v7) + 0x188))(0);
}

id MOSuggestionCollectionViewSingleAssetCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionCollectionViewSingleAssetCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void specialized MOSuggestionCollectionViewSingleAssetCell.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_assetGridView;
  type metadata accessor for MOSuggestionSheetAssetGridView();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_titleLabel;
  *(v1 + v3) = closure #1 in variable initialization expression of MOSuggestionCollectionViewSingleAssetCell.titleLabel();
  v4 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_subtitleLabel;
  *(v1 + v4) = closure #1 in variable initialization expression of MOSuggestionCollectionViewSingleAssetCell.subtitleLabel();
  v5 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_journalButton;
  v6 = type metadata accessor for MOSuggestionSheetJournalButton();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_buttonTapped];
  *v8 = 0;
  v8[1] = 0;
  v7[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionSheetJournalButton_singleCellAsset] = 1;
  v15.receiver = v7;
  v15.super_class = v6;
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  MOSuggestionSheetJournalButton.sharedInit()();

  *(v1 + v5) = v9;
  v10 = (v1 + OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_accessoryButtonAction);
  *v10 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
  v10[1] = 0;
  swift_weakInit();
  v11 = OBJC_IVAR____TtC16MomentsUIService41MOSuggestionCollectionViewSingleAssetCell_platterView;
  v12 = [objc_allocWithZone(UIView) init];
  v13 = [v12 traitCollection];
  v14 = [v13 userInterfaceStyle];

  specialized static MOSuggestionTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v12, v14);
  *(v1 + v11) = v12;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10006788C@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((swift_isaMask & **a1) + 0x88))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_100067924@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_100067980(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xA8);

  return v2(v3);
}

uint64_t sub_1000679E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

uint64_t PrivacySettings.JournalingSuggestions.asMOSetting.getter()
{
  v1 = type metadata accessor for PrivacySettings.JournalingSuggestions();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  v6 = 0;
  if (v5 == enum case for PrivacySettings.JournalingSuggestions.topLevel(_:))
  {
    return v6;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.activity(_:))
  {
    return 1;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.media(_:))
  {
    return 2;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.communications(_:))
  {
    return 3;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.photos(_:))
  {
    return 4;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.significantLocation(_:))
  {
    return 5;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.nearbyPeople(_:))
  {
    return 6;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.stateOfMind(_:))
  {
    return 9;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.reflectionPrompts(_:))
  {
    return 10;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t PrivacySettings.JournalingSuggestions.asMOSourceType.getter()
{
  v1 = type metadata accessor for PrivacySettings.JournalingSuggestions();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  v6 = 0;
  if (v5 == enum case for PrivacySettings.JournalingSuggestions.topLevel(_:))
  {
    return v6;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.activity(_:))
  {
    v7 = &MOEventBundleSourceTypeActivity;
LABEL_18:
    v6 = *v7;
    v8 = *v7;
    return v6;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.media(_:))
  {
    v7 = &MOEventBundleSourceTypeMedia;
    goto LABEL_18;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.communications(_:))
  {
    v7 = &MOEventBundleSourceTypeContact;
    goto LABEL_18;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.photos(_:))
  {
    v7 = &MOEventBundleSourceTypePhoto;
    goto LABEL_18;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.significantLocation(_:))
  {
    v7 = &MOEventBundleSourceTypeVisitLocation;
    goto LABEL_18;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.nearbyPeople(_:))
  {
    v7 = &MOEventBundleSourceTypePeopleContext;
    goto LABEL_18;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.stateOfMind(_:))
  {
    v7 = &MOEventBundleSourceTypeStateOfMind;
    goto LABEL_18;
  }

  if (v5 == enum case for PrivacySettings.JournalingSuggestions.reflectionPrompts(_:))
  {
    v7 = &MOEventBundleSourceTypeReflectionPrompt;
    goto LABEL_18;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t NotificationAnalyticsAddress.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000039;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NotificationEventTrigger@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized NotificationEventTrigger.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NotificationActivityTrigger@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized NotificationActivityTrigger.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NotificationPromptType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized NotificationPromptType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

MomentsUIService::NotificationAnalyticsAddress_optional __swiftcall NotificationAnalyticsAddress.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NotificationAnalyticsAddress.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = MomentsUIService_NotificationAnalyticsAddress_internalTesting;
  }

  else
  {
    v4.value = MomentsUIService_NotificationAnalyticsAddress_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NotificationAnalyticsAddress(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000039;
  }

  else
  {
    v3 = 0xD00000000000001FLL;
  }

  if (v2)
  {
    v4 = "ae103846c2e27042a";
  }

  else
  {
    v4 = "com.apple.Moments.Notifications";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000039;
  }

  else
  {
    v6 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v7 = "com.apple.Moments.Notifications";
  }

  else
  {
    v7 = "ae103846c2e27042a";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NotificationAnalyticsAddress()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NotificationAnalyticsAddress()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NotificationAnalyticsAddress()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NotificationAnalyticsAddress@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NotificationAnalyticsAddress.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance NotificationAnalyticsAddress(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000039;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v1)
  {
    v3 = "com.apple.Moments.Notifications";
  }

  else
  {
    v3 = "ae103846c2e27042a";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t specialized NotificationEventTrigger.init(rawValue:)(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t specialized NotificationActivityTrigger.init(rawValue:)(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

unint64_t specialized NotificationPromptType.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationEventTrigger and conformance NotificationEventTrigger()
{
  result = lazy protocol witness table cache variable for type NotificationEventTrigger and conformance NotificationEventTrigger;
  if (!lazy protocol witness table cache variable for type NotificationEventTrigger and conformance NotificationEventTrigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationEventTrigger and conformance NotificationEventTrigger);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationActivityTrigger and conformance NotificationActivityTrigger()
{
  result = lazy protocol witness table cache variable for type NotificationActivityTrigger and conformance NotificationActivityTrigger;
  if (!lazy protocol witness table cache variable for type NotificationActivityTrigger and conformance NotificationActivityTrigger)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationActivityTrigger and conformance NotificationActivityTrigger);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationPromptType and conformance NotificationPromptType()
{
  result = lazy protocol witness table cache variable for type NotificationPromptType and conformance NotificationPromptType;
  if (!lazy protocol witness table cache variable for type NotificationPromptType and conformance NotificationPromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationPromptType and conformance NotificationPromptType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SmartNotificationTimerSource and conformance SmartNotificationTimerSource()
{
  result = lazy protocol witness table cache variable for type SmartNotificationTimerSource and conformance SmartNotificationTimerSource;
  if (!lazy protocol witness table cache variable for type SmartNotificationTimerSource and conformance SmartNotificationTimerSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SmartNotificationTimerSource and conformance SmartNotificationTimerSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationScheduledDeliverySetting and conformance NotificationScheduledDeliverySetting()
{
  result = lazy protocol witness table cache variable for type NotificationScheduledDeliverySetting and conformance NotificationScheduledDeliverySetting;
  if (!lazy protocol witness table cache variable for type NotificationScheduledDeliverySetting and conformance NotificationScheduledDeliverySetting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationScheduledDeliverySetting and conformance NotificationScheduledDeliverySetting);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NotificationAnalyticsAddress and conformance NotificationAnalyticsAddress()
{
  result = lazy protocol witness table cache variable for type NotificationAnalyticsAddress and conformance NotificationAnalyticsAddress;
  if (!lazy protocol witness table cache variable for type NotificationAnalyticsAddress and conformance NotificationAnalyticsAddress)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAnalyticsAddress and conformance NotificationAnalyticsAddress);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationEventTrigger(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationEventTrigger(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationActivityTrigger(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationActivityTrigger(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationPromptType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationPromptType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t MOSuggestionSheetOnboardingTipCell.tipModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell_tipModel;
  swift_beginAccess();
  *(v1 + v3) = a1;

  (*((swift_isaMask & *v1) + 0x70))(v4);
}

uint64_t (*MOSuggestionSheetOnboardingTipCell.tipModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return MOSuggestionSheetOnboardingTipCell.tipModel.modify;
}

uint64_t MOSuggestionSheetOnboardingTipCell.tipModel.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*((swift_isaMask & **(a1 + 24)) + 0x70))(result);
  }

  return result;
}

void MOSuggestionSheetOnboardingTipCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell_tipModel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *MOSuggestionSheetOnboardingTipCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MomentsUIService34MOSuggestionSheetOnboardingTipCell_tipModel] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for MOSuggestionSheetOnboardingTipCell();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  v10 = *((swift_isaMask & *v9) + 0x70);
  v11 = v9;
  v10();

  return v11;
}

Swift::Void __swiftcall MOSuggestionSheetOnboardingTipCell.setUpTip()()
{
  v1 = *((swift_isaMask & *v0) + 0x58);
  v2 = v1();
  if (v2)
  {
    (*(*v2 + 128))();
  }

  lazy protocol witness table accessor for type MOSuggestionOnboardingTip and conformance MOSuggestionOnboardingTip();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(type metadata accessor for TipUIView());
  v40 = TipUIView.init(_:arrowEdge:actionHandler:)();
  [v0 addSubview:v40];
  v4 = objc_opt_self();
  v5 = [v4 secondarySystemGroupedBackgroundColor];
  v6 = TipUIView.backgroundColor.setter();
  v7 = (v1)(v6);
  v8 = &selRef_systemBlueColor;
  if (v7)
  {
    v9 = *(v7 + 32);

    if (!v9)
    {
      v8 = &selRef_systemIndigoColor;
    }
  }

  v10 = [v4 *v8];
  [v40 setTintColor:v10];

  v11 = [v40 layer];
  v12 = [v4 blackColor];
  v13 = [v12 CGColor];

  [v11 setShadowColor:v13];
  v14 = [v40 layer];

  LODWORD(v15) = 1036831949;
  [v14 setShadowOpacity:v15];

  v16 = [v40 layer];
  [v16 setShadowOffset:{0.0, 5.0}];

  v17 = [v40 layer];
  [v17 setShadowRadius:8.0];

  v18 = [v40 layer];
  [v18 setCornerCurve:kCACornerCurveContinuous];

  v19 = [v40 layer];
  [v19 setShadowPathIsBounds:1];

  v20 = [v40 superview];
  if (v20)
  {
    v21 = v20;
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [v40 topAnchor];
    v23 = [v21 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    [v24 setConstant:0.0];
    [v24 setActive:1];
  }

  v25 = [v40 superview];
  if (v25)
  {
    v26 = v25;
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v40 bottomAnchor];
    v28 = [v26 bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    if (v29)
    {
      [v29 setConstant:-0.0];
      [v29 setActive:1];
    }
  }

  v30 = [v40 superview];
  if (v30)
  {
    v31 = v30;
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [v40 leadingAnchor];
    v33 = [v31 leadingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    [v34 setConstant:20.0];
    [v34 setActive:1];
  }

  v35 = [v40 superview];
  if (v35)
  {
    v36 = v35;
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [v40 trailingAnchor];
    v38 = [v36 trailingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    [v39 setConstant:-20.0];
    [v39 setActive:1];
  }

  TipUIView.imageSize.setter();
}

unint64_t lazy protocol witness table accessor for type MOSuggestionOnboardingTip and conformance MOSuggestionOnboardingTip()
{
  result = lazy protocol witness table cache variable for type MOSuggestionOnboardingTip and conformance MOSuggestionOnboardingTip;
  if (!lazy protocol witness table cache variable for type MOSuggestionOnboardingTip and conformance MOSuggestionOnboardingTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionOnboardingTip and conformance MOSuggestionOnboardingTip);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MOSuggestionOnboardingTip and conformance MOSuggestionOnboardingTip;
  if (!lazy protocol witness table cache variable for type MOSuggestionOnboardingTip and conformance MOSuggestionOnboardingTip)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionOnboardingTip and conformance MOSuggestionOnboardingTip);
  }

  return result;
}

uint64_t sub_10006A1D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void closure #1 in MOSuggestionSheetOnboardingTipCell.setUpTip()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (Tips.Action.id.getter() == 0x726174732D746567 && v2 == 0xEB00000000646574)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
LABEL_8:

        return;
      }
    }

    v5 = (*((swift_isaMask & *v1) + 0x58))(v3);
    if (v5)
    {
      v6 = (*(*v5 + 104))(v5);

      v6(v7);

      return;
    }

    goto LABEL_8;
  }
}

id MOSuggestionSheetOnboardingTipCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionSheetOnboardingTipCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t MOSuggestionOnboardingTip.image.getter()
{
  type metadata accessor for MOSuggestionSheetOnboardingTipCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return Image.init(_:bundle:)(0xD000000000000019, 0x80000001002AF3B0, v1);
}

uint64_t MOSuggestionOnboardingTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrSayxGAaHRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Qo_Md);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrSayxGAA0A6OptionRzlFZQOy__AC23IgnoresDisplayFrequencyVQo_Md);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO23IgnoresDisplayFrequencyVGMd);
  v8 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  *(swift_allocObject() + 16) = xmmword_1002A48B0;
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();

  v12 = v8;
  v13 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v12 = v4;
  v13 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v10 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t one-time initialization function for $showSuggestionsOnboarding()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_allocate_value_buffer(v0, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
  __swift_project_value_buffer(v0, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 onboardingFlowCompletionStatus];

  if (v3 != 1)
  {
    v4 = [v1 sharedInstance];
    [v4 onboardingFlowCompletionStatus];
  }

  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t MOSuggestionOnboardingTip.$showSuggestionsOnboarding.unsafeMutableAddressor()
{
  if (one-time initialization token for $showSuggestionsOnboarding != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);

  return __swift_project_value_buffer(v0, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
}

uint64_t static MOSuggestionOnboardingTip.$showSuggestionsOnboarding.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for $showSuggestionsOnboarding != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v3 = __swift_project_value_buffer(v2, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static MOSuggestionOnboardingTip.$showSuggestionsOnboarding.setter(uint64_t a1)
{
  if (one-time initialization token for $showSuggestionsOnboarding != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v3 = __swift_project_value_buffer(v2, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static MOSuggestionOnboardingTip.$showSuggestionsOnboarding.modify())()
{
  if (one-time initialization token for $showSuggestionsOnboarding != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
  swift_beginAccess();
  return MOSuggestionMapSnapshotView.platterBlurView.modify;
}

uint64_t key path setter for static MOSuggestionOnboardingTip.$showSuggestionsOnboarding : MOSuggestionOnboardingTip.Type(uint64_t a1)
{
  if (one-time initialization token for $showSuggestionsOnboarding != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v3 = __swift_project_value_buffer(v2, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static MOSuggestionOnboardingTip.showSuggestionsOnboarding.getter()
{
  if (one-time initialization token for $showSuggestionsOnboarding != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  return v2;
}

uint64_t key path getter for static MOSuggestionOnboardingTip.showSuggestionsOnboarding : MOSuggestionOnboardingTip.Type@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for $showSuggestionsOnboarding != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v2, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  result = swift_endAccess();
  *a1 = v4;
  return result;
}

uint64_t key path setter for static MOSuggestionOnboardingTip.showSuggestionsOnboarding : MOSuggestionOnboardingTip.Type()
{
  if (one-time initialization token for $showSuggestionsOnboarding != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t static MOSuggestionOnboardingTip.showSuggestionsOnboarding.setter()
{
  if (one-time initialization token for $showSuggestionsOnboarding != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  __swift_project_value_buffer(v0, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

void (*static MOSuggestionOnboardingTip.showSuggestionsOnboarding.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (one-time initialization token for $showSuggestionsOnboarding != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  *(v3 + 24) = v4;
  *(v3 + 32) = __swift_project_value_buffer(v4, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return static MOSuggestionOnboardingTip.showSuggestionsOnboarding.modify;
}

void static MOSuggestionOnboardingTip.showSuggestionsOnboarding.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 41) = *(*a1 + 40);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();

  free(v1);
}

uint64_t MOSuggestionOnboardingTip.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO9ParameterVy_SbGMd);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO4RuleVGMd);
  type metadata accessor for Tips.Rule();
  *(swift_allocObject() + 16) = xmmword_1002A48B0;
  if (one-time initialization token for $showSuggestionsOnboarding != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static MOSuggestionOnboardingTip.$showSuggestionsOnboarding);
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();

  v5 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v5;
}

uint64_t closure #2 in MOSuggestionOnboardingTip.rules.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
  static PredicateExpressions.build_Arg<A>(_:)();
  v11[15] = 1;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_SbGAC5ValueVy_SbGGMd);
  a1[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a1);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t key path setter for MOSuggestionSheetOnboardingTipCellModel.presentOnboardingController : MOSuggestionSheetOnboardingTipCellModel(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(**a2 + 112);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v5);
}

uint64_t MOSuggestionSheetOnboardingTipCellModel.presentOnboardingController.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MOSuggestionSheetOnboardingTipCellModel.presentOnboardingController.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t MOSuggestionSheetOnboardingTipCellModel.tip.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 33) = a1;
  return result;
}

uint64_t MOSuggestionSheetOnboardingTipCellModel.__allocating_init(publicUI:presentOnboardingController:tip:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 33) = 2;
  *(v8 + 32) = a1;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  swift_beginAccess();
  *(v8 + 33) = a4;
  return v8;
}

uint64_t MOSuggestionSheetOnboardingTipCellModel.init(publicUI:presentOnboardingController:tip:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 33) = 2;
  *(v4 + 32) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  swift_beginAccess();
  *(v4 + 33) = a4;
  return v4;
}

uint64_t MOSuggestionSheetOnboardingTipCellModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized MOSuggestionOnboardingTip.title.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001002B1C20;
  v1._object = 0x80000001002AFEF0;
  v4._countAndFlagsBits = 0xD000000000000036;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t specialized MOSuggestionOnboardingTip.message.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001002B1BE0;
  v1._countAndFlagsBits = 0xD0000000000000A2;
  v1._object = 0x80000001002B1B30;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000039;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

void *specialized MOSuggestionOnboardingTip.actions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy6TipKit4TipsO6ActionVGMd);
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002A48B0;
  v4 = [objc_opt_self() mainBundle];
  v9._object = 0x80000001002B1AD0;
  v5._countAndFlagsBits = 0x7261745320746547;
  v5._object = 0xEB00000000646574;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000037;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v9);

  lazy protocol witness table accessor for type String and conformance String();
  Tips.Action.init<A>(id:title:perform:)();
  v7 = specialized static Tips.ActionBuilder.buildFinalResult(_:)(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_10006BC64@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_10006BCC0(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x60);

  return v2(v3);
}

uint64_t sub_10006BD34@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*(**a1 + 104))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_10006BDBC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MOSuggestionOnboardingTip(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10006BF24()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC8VariableVy_SbGAC5ValueVy_SbGGMd);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type PredicateExpressions.Variable<Bool> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_SbGMd);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.Variable<Bool>, PredicateExpressions.Value<Bool>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

Swift::Void __swiftcall MOSuggestionRoundView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for MOSuggestionRoundView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  [v0 setClipsToBounds:1];
  [v0 bounds];
  [v0 _setCornerRadius:CGRectGetHeight(v2) * 0.5];
}

id MOSuggestionRoundView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for MOSuggestionRoundView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id MOSuggestionRoundView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MOSuggestionRoundView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

char *MOSuggestionCutoutView.init()()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService22MOSuggestionCutoutView_fillLayer;
  *&v0[v1] = [objc_allocWithZone(CAShapeLayer) init];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MOSuggestionCutoutView();
  v2 = objc_msgSendSuper2(&v5, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v3 = [v2 layer];
  [v3 addSublayer:*&v2[OBJC_IVAR____TtC16MomentsUIService22MOSuggestionCutoutView_fillLayer]];

  return v2;
}

void MOSuggestionCutoutView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService22MOSuggestionCutoutView_fillLayer;
  *(v0 + v1) = [objc_allocWithZone(CAShapeLayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MOSuggestionCutoutView.layoutSubviews()()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for MOSuggestionCutoutView();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  [v0 frame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 bezierPathWithRoundedRect:v2 cornerRadius:{v4, v6, v8, 0.0}];
  [v0 frame];
  CGRectGetWidth(v18);
  [v0 frame];
  CGRectGetHeight(v19);
  [v0 frame];
  CGRectGetWidth(v20);
  [v0 frame];
  CGRectGetHeight(v21);
  MOSuggestionInterstitialExpandableListViewCellConstants.init()();
  v11 = [v9 bezierPathWithRoundedRect:v22.origin.x cornerRadius:{v22.origin.y, v22.size.width, v22.size.height, CGRectGetWidth(v22) * 0.5}];
  [v10 appendPath:v11];
  [v10 setUsesEvenOddFillRule:1];
  v12 = *&v0[OBJC_IVAR____TtC16MomentsUIService22MOSuggestionCutoutView_fillLayer];
  v13 = [v10 CGPath];
  [v12 setPath:v13];

  [v12 setFillRule:kCAFillRuleEvenOdd];
  v14 = [objc_opt_self() blackColor];
  v15 = [v14 CGColor];

  [v12 setFillColor:v15];
  LODWORD(v16) = 1057803469;
  [v12 setOpacity:v16];
}

id MOSuggestionInterstitialListAssetView.init()()
{
  v0[OBJC_IVAR____TtC16MomentsUIService37MOSuggestionInterstitialListAssetView_shouldBeRounded] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MOSuggestionInterstitialListAssetView();
  v1 = objc_msgSendSuper2(&v3, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v1 _setCornerRadius:7.0];
  [v1 setClipsToBounds:1];

  return v1;
}

uint64_t MOSuggestionInterstitialListAssetView.update(with:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in MOSuggestionInterstitialListAssetView.update(with:);
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10006CE2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void closure #1 in MOSuggestionInterstitialListAssetView.update(with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0x78))(a2);
  }
}

uint64_t sub_10006CEF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

void MOSuggestionInterstitialListAssetView._update(with:)(unsigned __int8 *a1)
{
  v3 = (*((swift_isaMask & *v1) + 0xD8))();
  if (a1[89])
  {
    v4 = a1[65];
    if (v4 != 26)
    {

      MOSuggestionInterstitialListAssetView.addFallbackView(_:)(v4);
    }

    return;
  }

  if (a1[88])
  {

    MOSuggestionInterstitialListAssetView.addFallBackSpinner()();
    return;
  }

  v5 = (*a1 + 272);
  v6 = *v5;
  v7 = (*v5)(v3);
  if (v7)
  {
    v8 = a1[65];
    if (v8 != 26)
    {
      v9 = v7 >> 62;
      if (v7 >> 62)
      {
        v15 = v7;
        v16 = _CocoaArrayWrapper.endIndex.getter();
        v7 = v15;
        if (v16)
        {
LABEL_14:
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = v7;
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            if (v8 > 11)
            {
LABEL_17:
              if (v8 <= 18)
              {
                if ((v8 - 12) >= 3)
                {
                  if ((v8 - 17) < 2)
                  {

                    MOSuggestionInterstitialListAssetView.addGlyphWithBackground(_:)(v11);
LABEL_57:

                    return;
                  }

                  if (v8 == 15)
                  {

                    if (!(*(*a1 + 176))(v14))
                    {
                      if ((MOSuggestionInterstitialListAssetViewModel.isSingleTopLevel.getter() & 1) == 0)
                      {
                        MOSuggestionInterstitialListAssetView.addSpotlightIconView(_:)(v11);
                        goto LABEL_57;
                      }

                      goto LABEL_23;
                    }

LABEL_22:

LABEL_23:
                    v12 = v11;
                    v13 = 0;
LABEL_56:
                    MOSuggestionInterstitialListAssetView.addFillIcon(_:smartInvertOff:)(v12, v13);
                    goto LABEL_57;
                  }

                  goto LABEL_74;
                }

LABEL_55:

                v12 = v11;
                v13 = 1;
                goto LABEL_56;
              }

              if ((v8 - 20) < 3)
              {
                goto LABEL_22;
              }

              if (v8 == 19)
              {

                MOSuggestionInterstitialListAssetView.addMixedRunWalkFillIcon(_:smartInvertOff:)(v11, 0);
                goto LABEL_57;
              }

              if (v8 != 25)
              {
                goto LABEL_74;
              }

LABEL_72:

              MOSuggestionInterstitialListAssetView.addGenericRoundView(_:)(v11);
              goto LABEL_57;
            }
          }

          else
          {
            if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v10 = v7;
            v11 = *(v7 + 32);

            if (v8 > 11)
            {
              goto LABEL_17;
            }
          }

          v34 = v10;
          if (v8 > 6)
          {
            if (v8 > 9)
            {
              if (v8 == 10)
              {
                MOSuggestionInterstitialListAssetView.addWorkoutGlobeGlyph(_:)(v10);

                goto LABEL_57;
              }

              if (v9)
              {
                v35 = _CocoaArrayWrapper.endIndex.getter();
                v34 = v10;
              }

              else
              {
                v35 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v35 <= 1)
              {
                goto LABEL_72;
              }

              MOSuggestionInterstitialListAssetView.addContactsGlobeGlyph(_:)(v34);
            }

            else
            {
              if (v8 == 7)
              {

                MOSuggestionInterstitialListAssetView.addWorkoutGlyph(_:)(v11);
                goto LABEL_57;
              }

              if (v8 == 9)
              {

                MOSuggestionInterstitialListAssetView.addRouteSpotlightView(_:)(v11);
                goto LABEL_57;
              }
            }
          }

          else if (v8 < 3 || (v8 - 4) < 3)
          {
            goto LABEL_55;
          }

LABEL_74:

          return;
        }
      }

      else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }
  }

  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static MOAngelLogger.assets);

  oslog = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v19 = 136315650;
    if (v6())
    {
      type metadata accessor for MOSuggestionSheetImage();
      v20 = Array.debugDescription.getter();
      v22 = v21;
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 7104878;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v37);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    if ((*(*a1 + 248))(v24))
    {
      v25 = Array.debugDescription.getter();
      v27 = v26;
    }

    else
    {
      v27 = 0xE300000000000000;
      v25 = 7104878;
    }

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v37);

    *(v19 + 14) = v28;
    *(v19 + 22) = 2080;
    if ((v6)(v29))
    {
      type metadata accessor for MOSuggestionSheetImage();
      v30 = Array.debugDescription.getter();
      v32 = v31;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v37);

    *(v19 + 24) = v33;
    _os_log_impl(&_mh_execute_header, oslog, v18, "[MOSuggestionInterstitialListAssetView.init] Unable to render, icons=%s, title=%s, dates=%s", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void MOSuggestionInterstitialListAssetView.addFallBackSpinner()()
{
  [v0 frame];
  v5 = [objc_allocWithZone(UIActivityIndicatorView) initWithFrame:{v1, v2, v3, v4}];
  v6 = [objc_opt_self() darkGrayColor];
  [v5 setColor:v6];

  [v5 startAnimating];
  v7 = v5;
  [v0 addSubview:v7];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [v7 superview];
  if (v8)
  {
    v9 = v8;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v7 centerYAnchor];
    v11 = [v9 centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:0.0];
    if (v12)
    {
      [v12 setActive:1];
    }
  }

  v13 = [v7 superview];
  if (v13)
  {
    v18 = v13;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v7 centerXAnchor];
    v15 = [v18 centerXAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    [v16 setConstant:0.0];
    if (v16)
    {
      [v16 setActive:1];

      v7 = v16;
    }

    v17 = v18;
  }

  else
  {
    v17 = v7;
  }
}

void MOSuggestionInterstitialListAssetView.addWorkoutGlyph(_:)(uint64_t a1)
{
  v28 = (*(*a1 + 136))();
  if (one-time initialization token for exerciseGreen != -1)
  {
    swift_once();
  }

  v2 = static MOSuggestionTheme.Colors.exerciseGreen;
  v3 = [static MOSuggestionTheme.Colors.exerciseGreen colorWithAlphaComponent:0.18];
  v4 = [v2 colorWithAlphaComponent:0.18];
  v5 = type metadata accessor for MOSuggestionWorkoutIconGlyphView();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  v8 = objc_allocWithZone(UIImageView);
  v26 = v2;
  *&v6[v7] = [v8 init];
  *&v6[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor] = 0;
  *&v6[OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor] = 0;
  v29.receiver = v6;
  v29.super_class = v5;
  v9 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_iconView;
  swift_beginAccess();
  v11 = *&v9[v10];
  v12 = v9;
  v13 = v11;
  v14 = [v28 imageWithRenderingMode:2];
  [v13 setImage:v14];

  v15 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_lightBackgroundColor;
  swift_beginAccess();
  v16 = *&v12[v15];
  *&v12[v15] = v3;
  v17 = v3;

  v18 = OBJC_IVAR____TtC16MomentsUIService32MOSuggestionWorkoutIconGlyphView_darkBackgroundColor;
  swift_beginAccess();
  v19 = *&v12[v18];
  *&v12[v18] = v4;
  v20 = v4;

  [*&v9[v10] setTintColor:v26];
  [*&v9[v10] setContentMode:1];
  [v12 addSubview:*&v9[v10]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002A48B0;
  *(v21 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v21 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  (*((swift_isaMask & *v12) + 0xB8))(v22);

  [v27 addSubview:v12];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(5.0, 5.0);

  v24 = (*(*a1 + 208))(v23);
  if (v24)
  {
    v25 = v24;
    [v27 setBackgroundColor:v24];
  }

  [v27 setAccessibilityIgnoresInvertColors:1];
  [v12 setIsAccessibilityElement:1];
}

void MOSuggestionInterstitialListAssetView.addGlyphWithBackground(_:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(UIView) init];
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() colorNamed:v4];

  [v3 setBackgroundColor:v5];
  [v1 addSubview:v3];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v6 = [objc_allocWithZone(UIImageView) init];
  v7 = (*(*a1 + 136))();
  [v6 setImage:v7];

  [v6 setContentMode:2];
  [v3 addSubview:v6];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(5.0, 5.0);

  v8 = v6;
  [v8 setIsAccessibilityElement:1];
  v9 = [objc_opt_self() mainBundle];
  v14._object = 0x80000001002B1E30;
  v10._countAndFlagsBits = 0x676E696B6C6157;
  v14._countAndFlagsBits = 0xD000000000000036;
  v10._object = 0xE700000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v14);

  v12 = String._bridgeToObjectiveC()();

  [v8 setAccessibilityLabel:v12];
}

void MOSuggestionInterstitialListAssetView.addFallbackView(_:)(unsigned __int8 a1)
{
  v2 = v1;
  if (a1 > 0xBu)
  {
    if (a1 > 0xEu)
    {
      if (a1 == 15)
      {
        v4 = 0x80000001002AEBE0;
        v5 = 0xD000000000000015;
        goto LABEL_21;
      }

      if (a1 == 26)
      {
        return;
      }
    }

    else
    {
      if (a1 - 12 < 2)
      {
        v5 = 0x6F746F6870;
        v4 = 0xE500000000000000;
        goto LABEL_21;
      }

      if (a1 == 14)
      {
        v4 = 0xE500000000000000;
        v5 = 0x6F65646976;
        goto LABEL_21;
      }
    }

LABEL_20:
    v4 = 0xEC0000006B72616DLL;
    v5 = 0x6E6F697473657571;
    goto LABEL_21;
  }

  if (a1 > 6u)
  {
    if (a1 == 7)
    {
      v4 = 0xEA00000000006E75;
      v5 = 0x722E657275676966;
      goto LABEL_21;
    }

    if (a1 == 11)
    {
      v4 = 0x80000001002AEC10;
      v5 = 0xD000000000000012;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (a1 >= 2u)
  {
    if (a1 == 2)
    {
      v4 = 0xE800000000000000;
      v5 = 0x7374736163646F70;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v4 = 0xE500000000000000;
  v5 = 0x636973756DLL;
LABEL_21:
  if (one-time initialization token for assets != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static MOAngelLogger.assets);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 134218242;
    *(v9 + 4) = a1;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v20);
    _os_log_impl(&_mh_execute_header, v7, v8, "[MOSuggestionInterstitialListAssetView] using visualType=%ld, fallbackType=%s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  type metadata accessor for MOSuggestionFallbackAssetView();
  v11 = MOSuggestionFallbackAssetView.__allocating_init(with:sizeType:)(v5, v4, 3);
  [v2 addSubview:v11];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v12 = v11;
  [v12 setIsAccessibilityElement:1];
  v13 = UIAccessibilityTraitImage;
  v14 = [v12 accessibilityTraits];
  if ((v13 & ~v14) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  [v12 setAccessibilityTraits:v15 | v14];
  v16 = [objc_opt_self() mainBundle];
  v22._object = 0x80000001002B1DD0;
  v17._countAndFlagsBits = 0x6B6361626C6C6146;
  v22._countAndFlagsBits = 0xD00000000000002DLL;
  v17._object = 0xE800000000000000;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v22);

  v19 = String._bridgeToObjectiveC()();

  [v12 setAccessibilityLabel:v19];
}

void MOSuggestionInterstitialListAssetView.addFillIcon(_:smartInvertOff:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(UIImageView) init];
  v7 = (*(*a1 + 136))();
  [v6 setImage:v7];

  (*(*a1 + 256))(v14);
  if ((v15 & 1) == 0)
  {
    v9 = *&v14[2];
    v8 = *&v14[3];
    v11 = *v14;
    v10 = *&v14[1];
    v12 = [v6 layer];
    [v12 setContentsRect:{v11, v10, v9, v8}];
  }

  v13 = v6;
  [v13 setContentMode:2];
  [v3 addSubview:v13];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  [v13 setIsAccessibilityElement:1];
  if (a2)
  {
    [v13 setAccessibilityIgnoresInvertColors:1];
  }
}

void MOSuggestionInterstitialListAssetView.addMixedRunWalkFillIcon(_:smartInvertOff:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(UIImageView) init];
  v7 = (*(*a1 + 136))();
  [v6 setImage:v7];

  v10 = v6;
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() colorNamed:v8];

  [v10 setBackgroundColor:v9];
  [v10 setContentMode:2];
  [v3 addSubview:v10];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  [v10 setIsAccessibilityElement:1];
  if (a2)
  {
    [v10 setAccessibilityIgnoresInvertColors:1];
  }
}

void MOSuggestionInterstitialListAssetView.addGenericRoundView(_:)(uint64_t a1)
{
  type metadata accessor for MOSuggestionRoundView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 addSubview:v3];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v4 = [objc_allocWithZone(UIImageView) init];
  v5 = (*(*a1 + 136))();
  [v4 setImage:v5];

  v6 = v4;
  [v3 addSubview:v6];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v7 = v6;
  [v7 setIsAccessibilityElement:1];
  v8 = UIAccessibilityTraitImage;
  v9 = [v7 accessibilityTraits];
  if ((v8 & ~v9) != 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  [v7 setAccessibilityTraits:v10 | v9];
  [v7 setAccessibilityIgnoresInvertColors:1];

  v11 = [objc_opt_self() mainBundle];
  v16._object = 0x80000001002AFF30;
  v12._countAndFlagsBits = 0x746361746E6F43;
  v12._object = 0xE700000000000000;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000026;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v16);

  v14 = String._bridgeToObjectiveC()();

  [v7 setAccessibilityLabel:v14];
}

void MOSuggestionInterstitialListAssetView.addSpotlightIconView(_:)(uint64_t a1)
{
  v3 = (*(*a1 + 160))();
  if (v3)
  {
    v19 = v3;
    v4 = (*(*a1 + 184))();
    if (v4)
    {
      v5 = v4;
      type metadata accessor for MOSuggestionRoundView();
      v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v6 setBackgroundColor:v5];
      [v1 addSubview:v6];
      UIView.fillSuper(horizontalMargin:verticalMargin:)(5.0, 5.0);

      v7 = [objc_allocWithZone(UIImageView) init];
      v8 = (*(*a1 + 136))();
      [v7 setImage:v8];

      [v7 setContentMode:1];
      [v7 setTintColor:v19];
      v9 = COERCE_DOUBLE((*(*a1 + 280))([v6 addSubview:v7])) + 4.0;
      if (v10)
      {
        v9 = 4.0;
      }

      UIView.fillSuper(horizontalMargin:verticalMargin:)(v9, v9);

      v11 = v7;
      [v11 setIsAccessibilityElement:1];
      v12 = UIAccessibilityTraitImage;
      v13 = [v11 accessibilityTraits];
      if ((v12 & ~v13) != 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      [v11 setAccessibilityTraits:v14 | v13];
      v15 = [objc_opt_self() mainBundle];
      v21._object = 0x80000001002B1E70;
      v16._countAndFlagsBits = 7364941;
      v16._object = 0xE300000000000000;
      v17._countAndFlagsBits = 0;
      v17._object = 0xE000000000000000;
      v21._countAndFlagsBits = 0xD000000000000022;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v21);

      v18 = String._bridgeToObjectiveC()();

      [v11 setAccessibilityLabel:v18];
    }
  }
}

void MOSuggestionInterstitialListAssetView.addRouteSpotlightView(_:)(uint64_t a1)
{
  MOSuggestionInterstitialListAssetView.addFillIcon(_:smartInvertOff:)(a1, 1);
  v2 = [objc_allocWithZone(type metadata accessor for MOSuggestionCutoutView()) init];
  [v1 addSubview:v2];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v3 = v2;
  [v3 setIsAccessibilityElement:1];
  v4 = UIAccessibilityTraitImage;
  v5 = [v3 accessibilityTraits];
  if ((v4 & ~v5) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  [v3 setAccessibilityTraits:v6 | v5];
  [v3 setAccessibilityIgnoresInvertColors:1];

  v7 = [objc_opt_self() mainBundle];
  v12._object = 0x80000001002B1E00;
  v8._countAndFlagsBits = 0x6574756F52;
  v8._object = 0xE500000000000000;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000024;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v12);

  v10 = String._bridgeToObjectiveC()();

  [v3 setAccessibilityLabel:v10];
}

void MOSuggestionInterstitialListAssetView.addWorkoutGlobeGlyph(_:)(unint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v1;
  if (v9)
  {
    aBlock[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v9 < 0)
    {
      __break(1u);
      return;
    }

    v10 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(a1 + 8 * v10 + 32);
      }

      ++v10;
      (*(*v11 + 136))();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v9 != v10);
    v12 = aBlock[0];
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v36 = v5;
  v37 = v3;
  if (one-time initialization token for exerciseGreen != -1)
  {
    swift_once();
  }

  v13 = static MOSuggestionTheme.Colors.exerciseGreen;
  v14 = [static MOSuggestionTheme.Colors.exerciseGreen colorWithAlphaComponent:{0.18, v36, v37}];
  v15 = [v13 colorWithAlphaComponent:0.18];
  v16 = type metadata accessor for MOSuggestionWorkoutsSnowGlobeView();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC16MomentsUIService33MOSuggestionWorkoutsSnowGlobeView_iconViews] = _swiftEmptyArrayStorage;
  v43.receiver = v17;
  v43.super_class = v16;
  v18 = objc_msgSendSuper2(&v43, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v19 = v18;
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  v22[2] = v12;
  v22[3] = v14;
  v22[4] = v15;
  v22[5] = v13;
  v22[6] = v21;
  aBlock[4] = partial apply for closure #1 in MOSuggestionWorkoutsSnowGlobeView.init(icons:glyphLightBackgroundColor:glyphDarkBackgroundColor:glyphTintColor:);
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_22;
  v23 = _Block_copy(aBlock);
  v24 = v14;
  v25 = v15;
  v26 = v13;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v28 = v36;
  v27 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v40 + 8))(v28, v27);
  (*(v38 + 8))(v8, v39);
  v29 = v41;
  [v41 addSubview:v19];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v30 = v19;
  [v30 setIsAccessibilityElement:1];
  v31 = [objc_opt_self() mainBundle];
  v44._object = 0x80000001002B1EA0;
  v32._countAndFlagsBits = 0x7374756F6B726F57;
  v32._object = 0xE800000000000000;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0xD00000000000002FLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v32, 0, v31, v33, v44);

  v34 = String._bridgeToObjectiveC()();

  [v30 setAccessibilityLabel:v34];

  v35 = [objc_opt_self() blackColor];
  [v29 setBackgroundColor:v35];

  [v29 setAccessibilityIgnoresInvertColors:1];
  [v30 setIsAccessibilityElement:1];
}

void MOSuggestionInterstitialListAssetView.addContactsGlobeGlyph(_:)(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
      return;
    }

    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      ++v5;
      (*(*v6 + 136))();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v4 != v5);
  }

  v7 = objc_allocWithZone(type metadata accessor for MOSuggestionWorkoutsSnowGlobeView());
  v8 = MOSuggestionWorkoutsSnowGlobeView.init(alreadyRoundedIcons:)(_swiftEmptyArrayStorage);
  [v2 addSubview:v8];
  UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

  v9 = v8;
  [v9 setIsAccessibilityElement:1];
  v10 = UIAccessibilityTraitImage;
  v11 = [v9 accessibilityTraits];
  if ((v10 & ~v11) != 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  [v9 setAccessibilityTraits:v12 | v11];
  [v9 setAccessibilityIgnoresInvertColors:1];

  v13 = [objc_opt_self() mainBundle];
  v19._object = 0x80000001002AFF30;
  v14._countAndFlagsBits = 0x746361746E6F43;
  v14._object = 0xE700000000000000;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000026;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v19);

  v16 = String._bridgeToObjectiveC()();

  [v9 setAccessibilityLabel:v16];

  v17 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor:v17];
}

void MOSuggestionInterstitialListAssetView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService37MOSuggestionInterstitialListAssetView_shouldBeRounded) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall MOSuggestionInterstitialListAssetView.prepareForReuse()()
{
  v1 = [v0 subviews];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIView);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 removeFromSuperview];
  }

LABEL_10:

  v7 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v7];
}

id MOSuggestionRoundView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10006F938()
{

  return _swift_deallocObject(v0, 56, 7);
}

void closure #1 in variable initialization expression of MOSuggestionShowMoreFooterView.showMoreButton()
{
  type metadata accessor for MOSuggestionCapsuleButton();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() mainBundle];
  v15._object = 0x80000001002B1F70;
  v2._countAndFlagsBits = 0x726F4D20776F6853;
  v2._object = 0xE900000000000065;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD00000000000004ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A48B0;
  *(inited + 32) = NSFontAttributeName;
  v5 = objc_opt_self();
  v6 = NSFontAttributeName;
  v7 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v8 = [v7 fontDescriptor];
  v9 = [v8 fontDescriptorWithSymbolicTraits:2];

  if (v9)
  {
    v10 = [v5 fontWithDescriptor:v9 size:0.0];

    *(inited + 64) = type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIFont);
    *(inited + 40) = v10;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
    v11 = objc_allocWithZone(NSAttributedString);
    v12 = String._bridgeToObjectiveC()();

    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = [v11 initWithString:v12 attributes:isa];

    [v0 setAttributedTitle:v14 forState:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t key path setter for MOSuggestionShowMoreFooterView.showMoreAction : MOSuggestionShowMoreFooterView(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *((swift_isaMask & **a2) + 0x68);

  return v6(partial apply for thunk for @escaping @callee_guaranteed () -> (@out ()), v5);
}

uint64_t MOSuggestionShowMoreFooterView.showMoreAction.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionShowMoreFooterView_showMoreAction);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MOSuggestionShowMoreFooterView.showMoreAction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionShowMoreFooterView_showMoreAction);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return (*((swift_isaMask & **(v2 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionShowMoreFooterView_showMoreButton)) + 0x60))(a1, a2);
}

void (*MOSuggestionShowMoreFooterView.showMoreAction.modify(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionShowMoreFooterView_showMoreAction;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return MOSuggestionShowMoreFooterView.showMoreAction.modify;
}

void MOSuggestionShowMoreFooterView.showMoreAction.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    v6 = *v5;
    v7 = v5[1];
    v8 = *((swift_isaMask & **(v4 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionShowMoreFooterView_showMoreButton)) + 0x60);

    v8(v6, v7);
  }

  free(v3);
}

char *MOSuggestionShowMoreFooterView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionShowMoreFooterView_showMoreButton;
  closure #1 in variable initialization expression of MOSuggestionShowMoreFooterView.showMoreButton();
  *&v4[v9] = v10;
  v11 = &v4[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionShowMoreFooterView_showMoreAction];
  *v11 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
  v11[1] = 0;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for MOSuggestionShowMoreFooterView();
  v12 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionShowMoreFooterView_showMoreButton;
  v14 = *&v12[OBJC_IVAR____TtC16MomentsUIService30MOSuggestionShowMoreFooterView_showMoreButton];
  v15 = v12;
  [v15 addSubview:v14];
  v16 = [objc_opt_self() clearColor];
  [v15 setBackgroundColor:v16];

  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1002A6160;
  v19 = [*&v12[v13] centerXAnchor];
  v20 = [v15 centerXAnchor];

  v21 = [v19 constraintEqualToAnchor:v20];
  *(v18 + 32) = v21;
  v22 = [*&v12[v13] topAnchor];
  v23 = [v15 topAnchor];

  v24 = [v22 constraintEqualToAnchor:v23 constant:10.0];
  *(v18 + 40) = v24;
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints:isa];

  return v15;
}

void MOSuggestionShowMoreFooterView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService30MOSuggestionShowMoreFooterView_showMoreButton;
  closure #1 in variable initialization expression of MOSuggestionShowMoreFooterView.showMoreButton();
  *(v0 + v1) = v2;
  v3 = (v0 + OBJC_IVAR____TtC16MomentsUIService30MOSuggestionShowMoreFooterView_showMoreAction);
  *v3 = MOSuggestionInterstitialExpandableListViewCellConstants.init();
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id MOSuggestionShowMoreFooterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionShowMoreFooterView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000703C8@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*((swift_isaMask & **a1) + 0x60))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_1000704B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void one-time initialization function for BACKGROUND_COLOR()
{
  v0 = [objc_opt_self() systemIndigoColor];
  v1 = [v0 colorWithAlphaComponent:0.15];

  static Constants.BACKGROUND_COLOR = v1;
}

void one-time initialization function for LABEL_HEIGHT()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

  v3 = specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(0, 0xE000000000000000, isa, 0.0);
  static Constants.LABEL_HEIGHT = *&v3;
}

id MOSuggestionPhotoMemoryBanner.bannerLabel.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionPhotoMemoryBanner_bannerLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MOSuggestionPhotoMemoryBanner.bannerLabel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionPhotoMemoryBanner_bannerLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall MOSuggestionPhotoMemoryBanner.setPublicUI(_:)(Swift::Bool a1)
{
  v3 = objc_opt_self();
  v4 = &selRef_systemBlueColor;
  if (!a1)
  {
    v4 = &selRef_systemIndigoColor;
  }

  v5 = [v3 *v4];
  v6 = [v5 colorWithAlphaComponent:0.15];

  [v1 setBackgroundColor:v6];

  [v1 setNeedsDisplay];
}

id MOSuggestionPhotoMemoryBanner.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionPhotoMemoryBanner_bannerLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for MOSuggestionPhotoMemoryBanner();
  v10 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 layer];
  [v11 setCornerRadius:7.0];

  if (one-time initialization token for BACKGROUND_COLOR != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor:static Constants.BACKGROUND_COLOR];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  MOSuggestionPhotoMemoryBanner.initBannerView()();
  return v10;
}

void MOSuggestionPhotoMemoryBanner.init(coder:)()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService29MOSuggestionPhotoMemoryBanner_bannerLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MOSuggestionPhotoMemoryBanner.initBannerView()()
{
  v0 = [objc_allocWithZone(UIImageView) init];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = objc_allocWithZone(ISIcon);

  v4 = v0;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 initWithBundleIdentifier:v5];

  if (one-time initialization token for iconDescriptor != -1)
  {
    swift_once();
  }

  v7 = static MOSuggestionAssetAppIconProvider.iconDescriptor;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in MOSuggestionPhotoMemoryBanner.initBannerView();
  *(v8 + 24) = v2;
  v10[4] = partial apply for closure #1 in static MOSuggestionAssetAppIconProvider.getImageFor(bundleIdentifier:completion:);
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CGImageRef?) -> ();
  v10[3] = &block_descriptor_5;
  v9 = _Block_copy(v10);

  [v6 getCGImageForImageDescriptor:v7 completion:v9];
  _Block_release(v9);
}

uint64_t closure #1 in MOSuggestionPhotoMemoryBanner.initBannerView()(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionPhotoMemoryBanner.initBannerView();
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_12;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  v16 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v18);
}

void closure #1 in closure #1 in MOSuggestionPhotoMemoryBanner.initBannerView()(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v62 = a1;
      [a3 setImage:?];
      [a3 setContentMode:1];
      [a3 setClipsToBounds:1];
      [a3 _setCornerRadius:4.0];
      [v6 addSubview:a3];
      v7 = [a3 superview];
      if (v7)
      {
        v8 = v7;
        [a3 setTranslatesAutoresizingMaskIntoConstraints:0];
        v9 = [a3 leadingAnchor];
        v10 = [v8 leadingAnchor];
        v11 = [v9 constraintEqualToAnchor:v10];

        [v11 setConstant:6.0];
        [v11 setActive:1];
      }

      v12 = [a3 superview];
      if (v12)
      {
        v13 = v12;
        [a3 setTranslatesAutoresizingMaskIntoConstraints:0];
        v14 = [a3 centerYAnchor];
        v15 = [v13 centerYAnchor];
        v16 = [v14 constraintEqualToAnchor:v15];

        [v16 setConstant:0.0];
        [v16 setActive:1];
      }

      v17 = [a3 heightAnchor];
      if (one-time initialization token for LABEL_HEIGHT != -1)
      {
        swift_once();
      }

      v18 = *&static Constants.LABEL_HEIGHT;
      v19 = [v17 constraintEqualToConstant:*&static Constants.LABEL_HEIGHT];

      [v19 setActive:1];
      v20 = [a3 widthAnchor];
      v21 = [v20 constraintEqualToConstant:v18];

      [v21 setActive:1];
      v22 = *((swift_isaMask & *v6) + 0x58);
      v23 = v22();
      v24 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
      isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

      [v23 setFont:isa];
      v26 = v22();
      v27 = [objc_opt_self() labelColor];
      [v26 setTextColor:v27];

      v28 = v22();
      [v28 setNumberOfLines:0];

      v29 = v22();
      v30 = [objc_opt_self() mainBundle];
      v63._object = 0x80000001002B2090;
      v31._countAndFlagsBits = 0xD00000000000001ELL;
      v31._object = 0x80000001002B2070;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      v63._countAndFlagsBits = 0xD00000000000001BLL;
      v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v30, v32, v63);

      String.append(_:)(v33);

      v34 = String._bridgeToObjectiveC()();

      [v29 setText:v34];

      v35 = v22();
      [v35 setAdjustsFontSizeToFitWidth:1];

      v36 = v22();
      [v36 setAdjustsFontForContentSizeCategory:1];

      v37 = v22();
      [v37 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

      v38 = v22();
      [v6 addSubview:v38];

      v39 = v22();
      [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
      v40 = [v39 leadingAnchor];
      v41 = [a3 trailingAnchor];
      v42 = [v40 constraintEqualToAnchor:v41];

      [v42 setConstant:1.0];
      [v42 setActive:1];

      v43 = v22();
      v44 = [v43 superview];
      if (v44)
      {
        v45 = v44;
        [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
        v46 = [v43 topAnchor];
        v47 = [v45 topAnchor];
        v48 = [v46 constraintEqualToAnchor:v47];

        [v48 setConstant:6.0];
        if (v48)
        {
          [v48 setActive:1];
        }

        p_align = (&stru_100327FE8 + 24);
      }

      else
      {
        v48 = 0;
        v45 = v43;
        p_align = &stru_100327FE8.align;
      }

      v50 = v22();
      v51 = [v50 superview];
      if (v51)
      {
        v52 = v51;
        [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
        v53 = [v50 bottomAnchor];
        v54 = [v52 bottomAnchor];
        v55 = [v53 *(p_align + 278)];

        if (v55)
        {
          [v55 setConstant:-6.0];
          [v55 setActive:1];
        }
      }

      else
      {
        v55 = 0;
        v52 = v50;
      }

      v56 = v22();
      v57 = [v56 superview];
      if (v57)
      {
        v58 = v57;
        [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
        v59 = [v56 trailingAnchor];
        v60 = [v58 trailingAnchor];
        v61 = [v59 *(p_align + 278)];

        [v61 setConstant:1.0];
        [v61 setActive:1];

        v6 = v56;
        v56 = v58;
      }

      else
      {
        v61 = v62;
      }
    }
  }
}

double static MOSuggestionPhotoMemoryBanner.photoMemoryBannerHeight()()
{
  if (one-time initialization token for LABEL_HEIGHT != -1)
  {
    swift_once();
  }

  return *&static Constants.LABEL_HEIGHT + 12.0;
}

id MOSuggestionPhotoMemoryBanner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOSuggestionPhotoMemoryBanner();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double static MOSuggestionPhotoMemoryBanner.estimatedHeight.getter()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  isa = UIFont.withWeight(_:)(UIFontWeightSemibold).super.isa;

  v3 = specialized UILabel.estimatedHeight(forWidth:text:ofFont:)(0, 0xE000000000000000, isa, 100.0);
  return v3 + 12.0;
}

uint64_t sub_1000719B4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_100071A74()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100071AAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100071AF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t sub_100071B98()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t MOBundleProcessingSession.Options.customPermissions.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t one-time initialization function for defaultMaximumScreenViewport()
{
  type metadata accessor for ScreenSize();
  result = ScreenSize.__allocating_init(size:)();
  static MOBundleProcessingSession.defaultMaximumScreenViewport = result;
  return result;
}

uint64_t *MOBundleProcessingSession.defaultMaximumScreenViewport.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultMaximumScreenViewport != -1)
  {
    swift_once();
  }

  return &static MOBundleProcessingSession.defaultMaximumScreenViewport;
}

id static MOBundleProcessingSession.defaultMaximumScreenViewport.getter()
{
  if (one-time initialization token for defaultMaximumScreenViewport != -1)
  {
    swift_once();
  }

  v1 = static MOBundleProcessingSession.defaultMaximumScreenViewport;

  return v1;
}

uint64_t MOBundleProcessingSession.isRunning.setter(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  *(v2 + 120) = a1;
  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = *(v2 + 120);

    _os_log_impl(&_mh_execute_header, v8, v9, "[runFullProcessing] isRunning changed to %{BOOL}d", v10, 8u);
  }

  else
  {
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MOBundleProcessingSession.isRunning.didset()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    swift_beginAccess();
    *(v8 + 4) = *(v1 + 120);

    _os_log_impl(&_mh_execute_header, v6, v7, "[runFullProcessing] isRunning changed to %{BOOL}d", v8, 8u);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

void (*MOBundleProcessingSession.isRunning.modify(uint64_t *a1))(void **a1, char a2)
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
  *(v3 + 24) = v1;
  v5 = type metadata accessor for Logger();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[6] = v7;
  swift_beginAccess();
  return MOBundleProcessingSession.isRunning.modify;
}

void MOBundleProcessingSession.isRunning.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[6];
  if ((a2 & 1) == 0)
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v3[3];
    if (v7)
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = *(v8 + 120);

      _os_log_impl(&_mh_execute_header, v5, v6, "[runFullProcessing] isRunning changed to %{BOOL}d", v9, 8u);
    }

    else
    {
    }

    v4 = v3[6];
    (*(v3[5] + 8))(v4, v3[4]);
  }

  free(v4);

  free(v3);
}

uint64_t MOBundleProcessingSession.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t MOBundleProcessingSession.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SuggestionNotificationManager.shared;
  *(v0 + 112) = static SuggestionNotificationManager.shared;
  *(v0 + 120) = 0;
  v2 = v1;
  return v0;
}

uint64_t MOBundleProcessingSession.init()()
{
  swift_defaultActor_initialize();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SuggestionNotificationManager.shared;
  *(v0 + 112) = static SuggestionNotificationManager.shared;
  *(v0 + 120) = 0;
  v2 = v1;
  return v0;
}

uint64_t MOBundleProcessingSession.refreshBundles()()
{
  v1[8] = v0;
  v2 = type metadata accessor for ProcessingError();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostError();
  v1[22] = v5;
  v1[23] = *(v5 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v6 = type metadata accessor for OSSignpostID();
  v1[26] = v6;
  v1[27] = *(v6 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return _swift_task_switch(MOBundleProcessingSession.refreshBundles(), v0, 0);
}

{
  specialized MOBundleProcessingSession.checkOnboarding()();
  if (one-time initialization token for bundleProcessing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  v0[33] = __swift_project_value_buffer(v1, static MOAngelSignposter.bundleProcessing);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v5, "UIService_DatabaseUpgradeIfNeeded", "", v4, 2u);
  }

  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[26];
  v9 = v0[27];

  v10 = *(v9 + 16);
  v0[34] = v10;
  v0[35] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v7, v6, v8);
  v0[36] = type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[37] = OSSignpostIntervalState.init(id:isOpen:)();
  v11 = swift_task_alloc();
  v0[38] = v11;
  *v11 = v0;
  v11[1] = MOBundleProcessingSession.refreshBundles();

  return MOBundleProcessingSession.checkDatabaseStatusAndRunUpgradeIfNecessary()();
}

{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = MOBundleProcessingSession.refreshBundles();
  }

  else
  {
    v4 = MOBundleProcessingSession.refreshBundles();
  }

  return _swift_task_switch(v4, v3, 0);
}

{
  v1 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v2 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v3 = v0[25];
    v4 = v0[22];
    v5 = v0[23];

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v3, v4) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[23] + 8))(v0[25], v0[22]);
      v6 = "";
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, v2, v8, "UIService_DatabaseUpgradeIfNeeded", v6, v7, 2u);
  }

  v9 = v0[30];
  v10 = v0[26];
  v11 = v0[27];

  v12 = *(v11 + 8);
  v0[40] = v12;
  v12(v9, v10);
  v0[41] = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v20 = v19;
    (*(v16 + 8))(v15, v17);
    *(v18 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "[runFullProcessing] finished database status and upgrade, timestamp=%f", v18, 0xCu);
  }

  v21 = v0[21];
  v22 = v0[15];
  v23 = v0[16];

  v24 = *(v23 + 8);
  v0[42] = v24;
  v0[43] = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v21, v22);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v28, "UIService_SoftRefreshIfNeeded", "", v27, 2u);
  }

  v29 = v0[34];
  v30 = v0[31];
  v31 = v0[29];
  v32 = v0[26];
  v33 = v0[8];

  v29(v30, v31, v32);
  swift_allocObject();
  v0[44] = OSSignpostIntervalState.init(id:isOpen:)();
  v34 = [objc_allocWithZone(MOPromptManager) init];
  v0[45] = v34;
  v36 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v35, type metadata accessor for MOBundleProcessingSession);
  v37 = swift_task_alloc();
  v0[46] = v37;
  *(v37 + 16) = v34;
  v38 = swift_task_alloc();
  v0[47] = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd);
  *v38 = v0;
  v38[1] = MOBundleProcessingSession.refreshBundles();

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, v33, v36, 0xD00000000000001BLL, 0x80000001002B2C50, partial apply for closure #1 in MOBundleProcessingSession.runSoftRefreshIfNecessary(), v37, v39);
}

{
  v1 = *(*v0 + 64);

  return _swift_task_switch(MOBundleProcessingSession.refreshBundles(), v1, 0);
}

{
  v60 = v0;
  v1 = v0[7];
  v2 = v0[45];
  if (v1)
  {
    v3 = v0[40];
    v57 = v0[32];
    v4 = v0[29];
    v5 = v0[26];
    swift_willThrow();

    v3(v4, v5);
    v3(v57, v5);
    v0[5] = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if (swift_dynamicCast())
    {
      v6 = (*(v0[10] + 88))(v0[11], v0[9]);
      v7 = v6;
      if (v6 == enum case for ProcessingError.unhandledDatabaseState(_:))
      {
        v8 = v0 + 19;

        type metadata accessor for CommonLogger();
        static CommonLogger.processing.getter();
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          v12 = "[refreshBundles] received unhandledDatabaseState error, fatal";
LABEL_12:
          _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

          goto LABEL_13;
        }

        goto LABEL_13;
      }

      if (v6 == enum case for ProcessingError.needUpgrade(_:))
      {
        v8 = v0 + 18;

        type metadata accessor for CommonLogger();
        static CommonLogger.processing.getter();
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          v12 = "[refreshBundles] received need upgrade, progpagate";
          goto LABEL_12;
        }

LABEL_13:
        v19 = *v8;
        v20 = v0[15];
        v21 = v0[16];
        v22 = v0[9];
        v23 = v0[10];

        (*(v21 + 8))(v19, v20);
        lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError);
        swift_allocError();
        (*(v23 + 104))(v24, v7, v22);
        swift_willThrow();

        v25 = v0[1];
        goto LABEL_24;
      }

      (*(v0[10] + 8))(v0[11], v0[9]);
    }

    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    swift_errorRetain();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    v47 = os_log_type_enabled(v45, v46);
    v49 = v0[16];
    v48 = v0[17];
    v50 = v0[15];
    if (v47)
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v59 = v52;
      *v51 = 136315138;
      swift_getErrorValue();
      v53 = Error.localizedDescription.getter();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v59);

      *(v51 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "[refreshBundles] received error, non fatal=%s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);

      (*(v49 + 8))(v48, v50);
    }

    else
    {

      (*(v49 + 8))(v48, v50);
    }
  }

  else
  {

    v13 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v14 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v16 = v0[23];
      v15 = v0[24];
      v17 = v0[22];

      checkForErrorAndConsumeState(state:)();

      if ((*(v16 + 88))(v15, v17) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[23] + 8))(v0[24], v0[22]);
        v18 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v14, v27, "UIService_SoftRefreshIfNeeded", v18, v26, 2u);
    }

    v28 = v0[40];
    v29 = v0[28];
    v30 = v0[26];

    v28(v29, v30);
    static CommonLogger.processing.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v34 = v0[13];
      v33 = v0[14];
      v35 = v0[12];
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      static Date.now.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v38 = v37;
      (*(v34 + 8))(v33, v35);
      *(v36 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "[runFullProcessing] finished soft refresh, timestamp=%f", v36, 0xCu);
    }

    v39 = v0[42];
    v40 = v0[40];
    v58 = v0[32];
    v41 = v0[29];
    v42 = v0[26];
    v43 = v0[20];
    v44 = v0[15];

    v39(v43, v44);
    v40(v41, v42);
    v40(v58, v42);
  }

  v25 = v0[1];
LABEL_24:

  return v25();
}

{
  v32 = v0;
  v1 = v0[32];
  v2 = v0[26];
  v3 = v0[27];

  (*(v3 + 8))(v1, v2);
  v0[5] = v0[39];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[16];
    v21 = v0[17];
    v23 = v0[15];
    if (v20)
    {
      v30 = v0[17];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = Error.localizedDescription.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v31);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "[refreshBundles] received error, non fatal=%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);

      (*(v22 + 8))(v30, v23);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }

    v17 = v0[1];
    goto LABEL_15;
  }

  v4 = (*(v0[10] + 88))(v0[11], v0[9]);
  v5 = v4;
  if (v4 == enum case for ProcessingError.unhandledDatabaseState(_:))
  {
    v6 = v0 + 19;

    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "[refreshBundles] received unhandledDatabaseState error, fatal";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (v4 != enum case for ProcessingError.needUpgrade(_:))
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    goto LABEL_11;
  }

  v6 = v0 + 18;

  type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "[refreshBundles] received need upgrade, progpagate";
    goto LABEL_8;
  }

LABEL_9:
  v11 = *v6;
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[9];
  v15 = v0[10];

  (*(v13 + 8))(v11, v12);
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError);
  swift_allocError();
  (*(v15 + 104))(v16, v5, v14);
  swift_willThrow();

  v17 = v0[1];
LABEL_15:

  return v17();
}

uint64_t MOBundleProcessingSession.checkDatabaseStatusAndRunUpgradeIfNecessary()()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(MOBundleProcessingSession.checkDatabaseStatusAndRunUpgradeIfNecessary(), v0, 0);
}

{
  v1 = [objc_allocWithZone(MOPromptManager) init];
  v0[3] = v1;
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = 0;
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v3, type metadata accessor for MOBundleProcessingSession);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = MOBundleProcessingSession.checkDatabaseStatusAndRunUpgradeIfNecessary();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = MOBundleProcessingSession.checkDatabaseStatusAndRunUpgradeIfNecessary();
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = MOBundleProcessingSession.checkDatabaseStatusAndRunUpgradeIfNecessary();
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MOBundleProcessingSession.runFullProcessing(triggerRefresh:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in NotificationRealTimeCheckManager.shouldPostNotificationBasedOnCurrentCondition(significantLocationEnabled:);

  return specialized MOBundleProcessingSession.runFullProcessing(triggerRefresh:)();
}

uint64_t $defer #1 () in MOBundleProcessingSession.runFullProcessing(triggerRefresh:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v8, static MOAngelSignposter.processing);
  v9 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v10 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v3, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v13, "UIService_RunFullProcessing", v11, v12, 2u);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t closure #1 in MOBundleProcessingSession.runFullProcessing(triggerRefresh:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(closure #1 in MOBundleProcessingSession.runFullProcessing(triggerRefresh:), 0, 0);
}

uint64_t closure #1 in MOBundleProcessingSession.runFullProcessing(triggerRefresh:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = closure #1 in MOBundleProcessingSession.runFullProcessing(triggerRefresh:);

    return MOBundleProcessingSession._runFullProcessing(triggerRefresh:)(0);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = closure #1 in MOBundleProcessingSession.runFullProcessing(triggerRefresh:);
  }

  else
  {

    v2 = closure #1 in MOBundleProcessingSession.runFullProcessing(triggerRefresh:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  **(v0 + 40) = *(v0 + 56) == 0;
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MOBundleProcessingSession._runFullProcessing(triggerRefresh:)(char a1)
{
  *(v2 + 200) = v1;
  *(v2 + 1352) = a1;
  v3 = type metadata accessor for ProcessingError();
  *(v2 + 208) = v3;
  *(v2 + 216) = *(v3 - 8);
  *(v2 + 224) = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostError();
  *(v2 + 232) = v4;
  *(v2 + 240) = *(v4 - 8);
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  *(v2 + 304) = v5;
  *(v2 + 312) = *(v5 - 8);
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 352) = swift_task_alloc();
  *(v2 + 360) = swift_task_alloc();
  *(v2 + 368) = swift_task_alloc();
  *(v2 + 376) = swift_task_alloc();
  *(v2 + 384) = swift_task_alloc();
  *(v2 + 392) = swift_task_alloc();
  *(v2 + 400) = swift_task_alloc();
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  *(v2 + 424) = swift_task_alloc();
  *(v2 + 432) = swift_task_alloc();
  *(v2 + 440) = swift_task_alloc();
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  *(v2 + 464) = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  *(v2 + 472) = v6;
  *(v2 + 480) = *(v6 - 8);
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 496) = swift_task_alloc();
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = swift_task_alloc();
  *(v2 + 528) = swift_task_alloc();
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  *(v2 + 552) = swift_task_alloc();
  *(v2 + 560) = swift_task_alloc();
  *(v2 + 568) = swift_task_alloc();
  *(v2 + 576) = swift_task_alloc();
  *(v2 + 584) = swift_task_alloc();
  *(v2 + 592) = swift_task_alloc();
  *(v2 + 600) = swift_task_alloc();
  *(v2 + 608) = swift_task_alloc();
  *(v2 + 616) = swift_task_alloc();
  *(v2 + 624) = swift_task_alloc();
  *(v2 + 632) = swift_task_alloc();
  *(v2 + 640) = swift_task_alloc();
  *(v2 + 648) = swift_task_alloc();
  *(v2 + 656) = swift_task_alloc();
  *(v2 + 664) = swift_task_alloc();
  v7 = type metadata accessor for CloudManager.FreeSpace();
  *(v2 + 672) = v7;
  *(v2 + 680) = *(v7 - 8);
  *(v2 + 688) = swift_task_alloc();
  *(v2 + 696) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v2 + 704) = v8;
  *(v2 + 712) = *(v8 - 8);
  *(v2 + 720) = swift_task_alloc();
  *(v2 + 728) = swift_task_alloc();
  *(v2 + 736) = swift_task_alloc();
  *(v2 + 744) = swift_task_alloc();
  *(v2 + 752) = swift_task_alloc();
  *(v2 + 760) = swift_task_alloc();
  *(v2 + 768) = swift_task_alloc();
  *(v2 + 776) = swift_task_alloc();
  *(v2 + 784) = swift_task_alloc();
  *(v2 + 792) = swift_task_alloc();
  *(v2 + 800) = swift_task_alloc();
  *(v2 + 808) = swift_task_alloc();
  *(v2 + 816) = swift_task_alloc();
  *(v2 + 824) = swift_task_alloc();
  *(v2 + 832) = swift_task_alloc();
  *(v2 + 840) = swift_task_alloc();

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v1, 0);
}

uint64_t MOBundleProcessingSession._runFullProcessing(triggerRefresh:)()
{
  static Date.now.getter();
  v0[106] = type metadata accessor for MomentsUIManager();
  v1 = static MomentsUIManager.shared.getter();
  v0[107] = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v2 = swift_task_alloc();
  v0[108] = v2;
  *v2 = v0;
  v2[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  v3 = v0[87];

  return CloudManager.checkFreeSpace()(v3);
}

{
  v1 = *(*v0 + 200);

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v1, 0);
}

{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];
  v4 = v0[84];
  (*(v3 + 104))(v2, enum case for CloudManager.FreeSpace.critical(_:), v4);
  v5 = static CloudManager.FreeSpace.== infix(_:_:)();
  v6 = *(v3 + 8);
  v6(v2, v4);
  v6(v1, v4);
  if (v5)
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "[runFullProcessing] critically low disk space, aborting", v9, 2u);
    }

    v33 = v0[105];
    v10 = v0[89];
    v32 = v0[88];
    v11 = v0[83];
    v13 = v0[59];
    v12 = v0[60];
    v14 = v0[26];
    v15 = v0[27];
    v16 = v0[25];

    v17 = *(v12 + 8);
    v17(v11, v13);
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError);
    swift_allocError();
    (*(v15 + 104))(v18, enum case for ProcessingError.criticalDiskSpace(_:), v14);
    swift_willThrow();

    (*(v10 + 8))(v33, v32);
    swift_beginAccess();
    *(v16 + 120) = 0;
    static CommonLogger.processing.getter();

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = *(v16 + 120);

      _os_log_impl(&_mh_execute_header, v19, v20, "[runFullProcessing] isRunning changed to %{BOOL}d", v21, 8u);
    }

    else
    {
    }

    v23 = v0[58];
    v24 = v0[25];
    v17(v0[82], v0[59]);
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v27 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v26, type metadata accessor for MOBundleProcessingSession);
    v28 = swift_allocObject();
    v28[2] = v24;
    v28[3] = v27;
    v28[4] = v24;
    v29 = v0[58];
    swift_retain_n();
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v29, &closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)partial apply, v28);

    v30 = v0[1];

    return v30();
  }

  else
  {
    v22 = swift_task_alloc();
    v0[109] = v22;
    *v22 = v0;
    v22[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

    return CloudManager.getDBManager()();
  }
}

{
  if (v0[110])
  {
    if (static MomentsUIManager.userIsActivelyWaitingOnUI.getter())
    {
      type metadata accessor for CommonLogger();
      static CommonLogger.processing.getter();
      v1 = Logger.logObject.getter();
      v2 = static os_log_type_t.default.getter();
      v3 = os_log_type_enabled(v1, v2);
      v4 = v0[81];
      v5 = v0[59];
      v6 = v0[60];
      if (v3)
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v1, v2, "[runFullProcessing] user is waiting, shouldProceedWithoutDeferral", v7, 2u);
      }

      v8 = *(v6 + 8);
      v8(v4, v5);
      v0[124] = v8;
      type metadata accessor for DBManager();
      lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type DBManager and conformance DBManager, 255, &type metadata accessor for DBManager);
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v10;
      v0[125] = v9;
      v0[126] = v10;
      v12 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
      v13 = v9;
    }

    else
    {
      v0[111] = type metadata accessor for MainActor();
      v0[112] = static MainActor.shared.getter();
      v24 = dispatch thunk of Actor.unownedExecutor.getter();
      v26 = v25;
      v12 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
      v13 = v24;
      v11 = v26;
    }

    return _swift_task_switch(v12, v13, v11);
  }

  else
  {
    v14 = v0[105];
    v15 = v0[89];
    v16 = v0[88];
    v17 = v0[26];
    v18 = v0[27];
    v19 = v0[25];
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError);
    swift_allocError();
    (*(v18 + 104))(v20, enum case for ProcessingError.noDatabase(_:), v17);
    swift_willThrow();

    (*(v15 + 8))(v14, v16);
    swift_beginAccess();
    *(v19 + 120) = 0;
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = *(v19 + 120);

      _os_log_impl(&_mh_execute_header, v21, v22, "[runFullProcessing] isRunning changed to %{BOOL}d", v23, 8u);
    }

    else
    {
    }

    v27 = v0[58];
    v28 = v0[25];
    (*(v0[60] + 8))(v0[62], v0[59]);
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
    v31 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v30, type metadata accessor for MOBundleProcessingSession);
    v32 = swift_allocObject();
    v32[2] = v28;
    v32[3] = v31;
    v32[4] = v28;
    v33 = v0[58];
    swift_retain_n();
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v33, &async function pointer to partial apply for closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v32);

    v34 = v0[1];

    return v34();
  }
}

{

  *(v0 + 904) = dispatch thunk of DBManager.mainWriter.getter();
  v1 = swift_task_alloc();
  *(v0 + 912) = v1;
  *v1 = v0;
  v1[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

  return DBWriter.latestSnapshotSequence()();
}

{
  v210 = v0;
  v1 = v0[115];
  if (static DBWriter.Constants.draftSnapshotSequenceNumber.getter() < v1)
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.processing.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[115];
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v2, v3, "[runFullProcessing] incremental mode, shouldProceedWithoutDeferral, latestSequence=%llu", v5, 0xCu);
    }

    v6 = v0[80];
    v7 = v0[59];
    v8 = v0[60];

    v9 = *(v8 + 8);
    v9(v6, v7);
    goto LABEL_5;
  }

  v15 = v0[89];
  v16 = v0[88];
  v17 = v0[57];
  static DefaultsManager.Processing.deferredRunDate.getter();
  v18 = *(v15 + 48);
  if (v18(v17, 1, v16) == 1)
  {
    v205 = v18;
    v19 = v0[57];
LABEL_10:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v19, &_s10Foundation4DateVSgMd);
    goto LABEL_11;
  }

  v20 = v0[88];
  v21 = v0[56];
  v22 = *(v0[89] + 32);
  v22(v0[104], v0[57], v20);
  static DefaultsManager.Processing.deferredRunScheduledDate.getter();
  if (v18(v21, 1, v20) == 1)
  {
    v205 = v18;
    v23 = v0[56];
    (*(v0[89] + 8))(v0[104], v0[88]);
    v19 = v23;
    goto LABEL_10;
  }

  v22(v0[103], v0[56], v0[88]);
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    Date.timeIntervalSince(_:)();
    v75 = v74;
    static DefaultsManager.Processing.deferralReconsiderationThreshold.getter();
    if (v75 >= v76)
    {
      v205 = v18;
      v163 = v0[104];
      v164 = v0[88];
      v165 = *(v0[89] + 8);
      v165(v0[103], v164);
      v165(v163, v164);
LABEL_11:
      v24 = v0[99];
      v25 = v0[89];
      v26 = v0[88];
      v27 = [objc_allocWithZone(MOMultiDeviceEngagementManager) init];
      v0[116] = v27;
      static DefaultsManager.Processing.deferralMaximumThreshold.getter();
      static DefaultsManager.Processing.deferralEngagementLookbackThreshold.getter();
      Date.addingTimeInterval(_:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v29 = *(v25 + 8);
      v0[117] = v29;
      v0[118] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29(v24, v26);
      v30 = Date._bridgeToObjectiveC()().super.isa;
      v197 = v27;
      v31 = [v27 latestViewedEngagmentDateFrom:isa to:v30];

      if (v31)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      v199 = v29;
      v34 = v0[54];
      v33 = v0[55];
      (*(v0[89] + 56))(v34, v32, 1, v0[88]);
      outlined init with take of Date?(v34, v33);
      v0[119] = type metadata accessor for CommonLogger();
      static CommonLogger.processing.getter();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134218752;
        static DefaultsManager.Processing.deferralEngagementLookbackThreshold.getter();
        *(v37 + 4) = v38;
        *(v37 + 12) = 2048;
        static DefaultsManager.Processing.deferralMaximumThreshold.getter();
        *(v37 + 14) = v39;
        *(v37 + 22) = 2048;
        static DefaultsManager.Processing.deferralMinimumThreshold.getter();
        *(v37 + 24) = v40;
        *(v37 + 32) = 2048;
        static DefaultsManager.Processing.deferralReconsiderationThreshold.getter();
        *(v37 + 34) = v41;
        _os_log_impl(&_mh_execute_header, v35, v36, "[runFullProcessing] deferral constants, deferralEngagementLookbackThreshold=%f, deferralMaximumThreshold=%f, deferralMinimumThreshold=%f, deferralReconsiderationThreshold=%f", v37, 0x2Au);
      }

      v42 = v0[88];
      v43 = v0[76];
      v44 = v0[59];
      v45 = v0[60];
      v46 = v0[55];
      v47 = v0[53];

      v48 = *(v45 + 8);
      v0[120] = v48;
      v0[121] = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v48(v43, v44);
      v9 = v48;
      outlined init with copy of (String, Date?)(v46, v47, &_s10Foundation4DateVSgMd);
      if (v205(v47, 1, v42) == 1)
      {
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[53], &_s10Foundation4DateVSgMd);
        v0[122] = static MainActor.shared.getter();
        v49 = dispatch thunk of Actor.unownedExecutor.getter();
        v51 = v50;
        v13 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
        v14 = v49;
        v12 = v51;
LABEL_18:

        return _swift_task_switch(v13, v14, v12);
      }

      (*(v0[89] + 32))(v0[98], v0[53], v0[88]);
      Date.timeIntervalSince(_:)();
      v53 = fabs(v52);
      static DefaultsManager.Processing.deferralEngagementLookbackThreshold.getter();
      if (v53 < v54)
      {
        v55 = v0[98];
        v56 = v0[95];
        v57 = v0[89];
        v58 = v0[88];
        static CommonLogger.processing.getter();
        (*(v57 + 16))(v56, v55, v58);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();
        v61 = os_log_type_enabled(v59, v60);
        v62 = v0[98];
        v63 = v0[95];
        v64 = v0[88];
        v65 = v0[74];
        v206 = v0[59];
        v66 = v0[55];
        if (v61)
        {
          v188 = v0[55];
          v67 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v209[0] = v183;
          *v67 = 136315394;
          lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type Date and conformance Date, 255, &type metadata accessor for Date);
          v68 = dispatch thunk of CustomStringConvertible.description.getter();
          v185 = v62;
          v70 = v69;
          v199(v63, v64);
          v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v209);

          *(v67 + 4) = v71;
          *(v67 + 12) = 2048;
          static DefaultsManager.Processing.deferralEngagementLookbackThreshold.getter();
          *(v67 + 14) = v72;
          _os_log_impl(&_mh_execute_header, v59, v60, "[runFullProcessing] user has engaged within lookback window, shouldProceedWithoutDeferral, latestViewedEngagmentDate=%s, lookback=%f", v67, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v183);

          v9(v65, v206);
          v199(v185, v64);
          v73 = v188;
        }

        else
        {

          v199(v63, v64);
          v9(v65, v206);
          v199(v62, v64);
          v73 = v66;
        }

        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v73, &_s10Foundation4DateVSgMd);
LABEL_5:
        v0[124] = v9;
        type metadata accessor for DBManager();
        lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type DBManager and conformance DBManager, 255, &type metadata accessor for DBManager);
        v10 = dispatch thunk of Actor.unownedExecutor.getter();
        v12 = v11;
        v0[125] = v10;
        v0[126] = v11;
        v13 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
        v14 = v10;
        goto LABEL_18;
      }

      static DefaultsManager.Processing.deferralMinimumThreshold.getter();
      v100 = v99;
      v13 = static DefaultsManager.Processing.deferralMaximumThreshold.getter();
      if (v100 > v101)
      {
        __break(1u);
      }

      else
      {
        v102 = v101;
        v103 = v101 - v100;
        if (COERCE__INT64(fabs(v101 - v100)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v104 = v0[97];
          v105 = v0[96];
          v106 = v0[89];
          v107 = v0[88];
          v108 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
          v109 = v100 + v103 * vcvtd_n_f64_u64(v108, 0x35uLL);
          if (v108 == 0x20000000000000)
          {
            v110 = v102;
          }

          else
          {
            v110 = v109;
          }

          Date.addingTimeInterval(_:)();
          static DefaultsManager.Processing.setDeferredRunDate(_:)();
          static CommonLogger.processing.getter();
          (*(v106 + 16))(v105, v104, v107);
          v111 = Logger.logObject.getter();
          v112 = static os_log_type_t.error.getter();
          v113 = os_log_type_enabled(v111, v112);
          v114 = v0[96];
          v115 = v0[88];
          v116 = v0[75];
          v117 = v0[59];
          if (v113)
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v209[0] = v119;
            *v118 = 134218754;
            *(v118 + 4) = v53;
            *(v118 + 12) = 2048;
            *(v118 + 14) = v110;
            *(v118 + 22) = 2080;
            lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type Date and conformance Date, 255, &type metadata accessor for Date);
            v208 = v116;
            v120 = dispatch thunk of CustomStringConvertible.description.getter();
            v190 = v117;
            v122 = v121;
            v123 = v115;
            v124 = v199;
            v199(v114, v123);
            v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, v209);

            *(v118 + 24) = v125;
            *(v118 + 32) = 2048;
            static DefaultsManager.Processing.deferralReconsiderationThreshold.getter();
            *(v118 + 34) = v126;
            _os_log_impl(&_mh_execute_header, v111, v112, "[runFullProcessing] set target defer run date, timeIntervalSinceEngagement=%f, randomizedInterval=%f, targetDate=%s, reconsiderationInterval=%f", v118, 0x2Au);
            __swift_destroy_boxed_opaque_existential_0(v119);

            v127 = v208;
            v128 = v190;
          }

          else
          {

            v129 = v115;
            v124 = v199;
            v199(v114, v129);
            v127 = v116;
            v128 = v117;
          }

          v9(v127, v128);
          v130 = v0[105];
          v195 = v0[98];
          v191 = v0[97];
          v131 = v0[88];
          v132 = v0[58];
          v201 = v0[55];
          v134 = v0[26];
          v133 = v0[27];
          v135 = v0[25];
          static DefaultsManager.Processing.setDeferredRunScheduledDate(_:)();
          lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError);
          swift_allocError();
          (*(v133 + 104))(v136, enum case for ProcessingError.deferredPostUpgradeFirstRun(_:), v134);
          swift_willThrow();

          v124(v191, v131);
          v124(v195, v131);
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v201, &_s10Foundation4DateVSgMd);
          v124(v130, v131);
          swift_beginAccess();
          *(v135 + 120) = 0;
          MOBundleProcessingSession.isRunning.didset();
          v204 = &closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)partial apply;
          goto LABEL_50;
        }
      }

      __break(1u);
      return _swift_task_switch(v13, v14, v12);
    }
  }

  v77 = v0[89];
  v78 = static Date.> infix(_:_:)();
  type metadata accessor for CommonLogger();
  v79 = (v77 + 16);
  v80 = v0[104];
  if (v78)
  {
    v81 = v0[100];
    v82 = v0[88];
    static CommonLogger.processing.getter();
    (*v79)(v81, v80, v82);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    v85 = os_log_type_enabled(v83, v84);
    v86 = v0[104];
    v87 = v0[103];
    v88 = v0[100];
    v89 = v0[89];
    v90 = v0[88];
    v91 = v0[60];
    v203 = v0[59];
    v207 = v0[77];
    if (v85)
    {
      v92 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v209[0] = v198;
      *v92 = 136315138;
      lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type Date and conformance Date, 255, &type metadata accessor for Date);
      v200 = v86;
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v194 = v87;
      v95 = v94;
      v189 = v84;
      v96 = *(v89 + 8);
      v96(v88, v90);
      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v95, v209);

      *(v92 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v83, v189, "[runFullProcessing] past previuosly set deferred target, shouldProceedWithoutDeferral, deferredDate=%s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v198);

      v9 = *(v91 + 8);
      v9(v207, v203);
      v96(v194, v90);
      v98 = v200;
    }

    else
    {

      v96 = *(v89 + 8);
      v96(v88, v90);
      v9 = *(v91 + 8);
      v9(v207, v203);
      v96(v87, v90);
      v98 = v86;
    }

    v96(v98, v90);
    goto LABEL_5;
  }

  v137 = v0[103];
  v138 = v0[102];
  v139 = v0[101];
  v140 = v0[88];
  static CommonLogger.processing.getter();
  v141 = *v79;
  (*v79)(v138, v80, v140);
  v141(v139, v137, v140);
  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.info.getter();
  v144 = os_log_type_enabled(v142, v143);
  v145 = v0[102];
  v146 = v0[101];
  v147 = v0[89];
  v148 = v0[88];
  v149 = v0[79];
  v150 = v0[59];
  v151 = v0[60];
  if (v144)
  {
    v192 = v143;
    v152 = swift_slowAlloc();
    v209[0] = swift_slowAlloc();
    *v152 = 136315394;
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type Date and conformance Date, 255, &type metadata accessor for Date);
    v182 = v142;
    v184 = v151;
    v153 = dispatch thunk of CustomStringConvertible.description.getter();
    v154 = v146;
    v156 = v155;
    v186 = v149;
    v157 = *(v147 + 8);
    v157(v145, v148);
    v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v156, v209);

    *(v152 + 4) = v158;
    *(v152 + 12) = 2080;
    v159 = dispatch thunk of CustomStringConvertible.description.getter();
    v161 = v160;
    v202 = v157;
    v157(v154, v148);
    v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v159, v161, v209);

    *(v152 + 14) = v162;
    _os_log_impl(&_mh_execute_header, v182, v192, "[runFullProcessing] waiting for deferred run, deferredDate=%s, deferredScheduleDate=%s", v152, 0x16u);
    swift_arrayDestroy();

    v196 = *(v184 + 8);
    v196(v186, v150);
  }

  else
  {

    v166 = *(v147 + 8);
    v166(v146, v148);
    v202 = v166;
    v166(v145, v148);
    v196 = *(v151 + 8);
    v196(v149, v150);
  }

  v187 = v0[104];
  v193 = v0[105];
  v167 = v0[103];
  v168 = v0[88];
  v169 = v0[26];
  v170 = v0[27];
  v171 = v0[25];
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError);
  swift_allocError();
  (*(v170 + 104))(v172, enum case for ProcessingError.deferredPostUpgradeFirstRun(_:), v169);
  swift_willThrow();

  v202(v167, v168);
  v202(v187, v168);
  v202(v193, v168);
  swift_beginAccess();
  *(v171 + 120) = 0;
  static CommonLogger.processing.getter();

  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    *v175 = 67109120;
    *(v175 + 4) = *(v171 + 120);

    _os_log_impl(&_mh_execute_header, v173, v174, "[runFullProcessing] isRunning changed to %{BOOL}d", v175, 8u);
  }

  else
  {
  }

  v132 = v0[58];
  v135 = v0[25];
  v196(v0[78], v0[59]);
  v204 = &closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)partial apply;
LABEL_50:
  v176 = type metadata accessor for TaskPriority();
  (*(*(v176 - 8) + 56))(v132, 1, 1, v176);
  v178 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v177, type metadata accessor for MOBundleProcessingSession);
  v179 = swift_allocObject();
  v179[2] = v135;
  v179[3] = v178;
  v179[4] = v135;
  swift_retain_n();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v0[58], v204, v179);

  v180 = v0[1];

  return v180();
}

{
  v1 = *(v0 + 200);

  *(v0 + 984) = CloudManager.devicesDB.getter();

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v1, 0);
}

{
  v61 = v0;
  if (v0[123])
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, 255, &type metadata accessor for CloudDevicesDB);
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
    v5 = v1;
    v6 = v3;

    return _swift_task_switch(v4, v5, v6);
  }

  static DefaultsManager.Processing.deferralMinimumThreshold.getter();
  v8 = v7;
  v4 = static DefaultsManager.Processing.deferralMaximumThreshold.getter();
  if (v8 > v9)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = v9;
  v11 = v9 - v8;
  if (COERCE__INT64(fabs(v9 - v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    return _swift_task_switch(v4, v5, v6);
  }

  v12 = v0[94];
  v13 = v0[93];
  v14 = v0[89];
  v15 = v0[88];
  v16 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
  v17 = v8 + v11 * vcvtd_n_f64_u64(v16, 0x35uLL);
  if (v16 == 0x20000000000000)
  {
    v18 = v10;
  }

  else
  {
    v18 = v17;
  }

  Date.addingTimeInterval(_:)();
  static DefaultsManager.Processing.setDeferredRunDate(_:)();
  static CommonLogger.processing.getter();
  (*(v14 + 16))(v13, v12, v15);
  v19 = Logger.logObject.getter();
  v59 = static os_log_type_t.error.getter();
  v20 = os_log_type_enabled(v19, v59);
  v21 = v0[120];
  v22 = v0[117];
  v23 = v0[93];
  v24 = v0[88];
  v25 = v0[73];
  v26 = v0[59];
  if (v20)
  {
    v58 = v0[120];
    v27 = swift_slowAlloc();
    v57 = v25;
    v28 = swift_slowAlloc();
    v60[0] = v28;
    *v27 = 134218498;
    *(v27 + 4) = v18;
    *(v27 + 12) = 2080;
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type Date and conformance Date, 255, &type metadata accessor for Date);
    v54 = v26;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v22(v23, v24);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v60);

    *(v27 + 14) = v32;
    *(v27 + 22) = 2048;
    static DefaultsManager.Processing.deferralReconsiderationThreshold.getter();
    *(v27 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v19, v59, "[runFullProcessing] set target defer run date, randomizedInterval=%f, targetDate=%s, reconsiderationInterval=%f", v27, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v28);

    v58(v57, v54);
  }

  else
  {

    v22(v23, v24);
    v21(v25, v26);
  }

  v34 = v0[117];
  v35 = v0[105];
  v53 = v0[94];
  v55 = v0[116];
  v36 = v0[88];
  v56 = v0[55];
  v37 = v0[26];
  v38 = v0[27];
  v39 = v0[25];
  static DefaultsManager.Processing.setDeferredRunScheduledDate(_:)();
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError);
  swift_allocError();
  (*(v38 + 104))(v40, enum case for ProcessingError.deferredPostUpgradeFirstRun(_:), v37);
  swift_willThrow();

  v34(v53, v36);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v56, &_s10Foundation4DateVSgMd);
  v34(v35, v36);
  swift_beginAccess();
  *(v39 + 120) = 0;
  static CommonLogger.processing.getter();

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 67109120;
    *(v43 + 4) = *(v39 + 120);

    _os_log_impl(&_mh_execute_header, v41, v42, "[runFullProcessing] isRunning changed to %{BOOL}d", v43, 8u);
  }

  else
  {
  }

  v44 = v0[58];
  v45 = v0[25];
  (v0[120])(v0[72], v0[59]);
  v46 = type metadata accessor for TaskPriority();
  (*(*(v46 - 8) + 56))(v44, 1, 1, v46);
  v48 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v47, type metadata accessor for MOBundleProcessingSession);
  v49 = swift_allocObject();
  v49[2] = v45;
  v49[3] = v48;
  v49[4] = v45;
  v50 = v0[58];
  swift_retain_n();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v50, &closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)partial apply, v49);

  v51 = v0[1];

  return v51();
}

{
  v1 = *(v0 + 200);
  *(v0 + 1353) = CloudDevicesDB.userHasAtLeastOneiPad.getter() & 1;

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v1, 0);
}

{
  v69 = v0;
  if (*(v0 + 1353))
  {
    static CommonLogger.processing.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 960);
    v5 = *(v0 + 928);
    v6 = *(v0 + 568);
    v7 = *(v0 + 472);
    v8 = *(v0 + 440);
    if (v3)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "[runFullProcessing] user has iPad, shouldProceedWithoutDeferral", v9, 2u);
    }

    v4(v6, v7);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v8, &_s10Foundation4DateVSgMd);
    *(v0 + 992) = *(v0 + 960);
    type metadata accessor for DBManager();
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type DBManager and conformance DBManager, 255, &type metadata accessor for DBManager);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
    *(v0 + 1000) = v10;
    *(v0 + 1008) = v11;
    v13 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
    v14 = v10;

    return _swift_task_switch(v13, v14, v12);
  }

  static DefaultsManager.Processing.deferralMinimumThreshold.getter();
  v16 = v15;
  v13 = static DefaultsManager.Processing.deferralMaximumThreshold.getter();
  if (v16 > v17)
  {
    __break(1u);
    goto LABEL_22;
  }

  v18 = v17;
  v19 = v17 - v16;
  if (COERCE__INT64(fabs(v17 - v16)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    return _swift_task_switch(v13, v14, v12);
  }

  v20 = *(v0 + 752);
  v21 = *(v0 + 744);
  v22 = *(v0 + 712);
  v23 = *(v0 + 704);
  v24 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
  v25 = v16 + v19 * vcvtd_n_f64_u64(v24, 0x35uLL);
  if (v24 == 0x20000000000000)
  {
    v26 = v18;
  }

  else
  {
    v26 = v25;
  }

  Date.addingTimeInterval(_:)();
  static DefaultsManager.Processing.setDeferredRunDate(_:)();
  static CommonLogger.processing.getter();
  (*(v22 + 16))(v21, v20, v23);
  v27 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  v28 = os_log_type_enabled(v27, v67);
  v29 = *(v0 + 960);
  v30 = *(v0 + 936);
  v31 = *(v0 + 744);
  v32 = *(v0 + 704);
  v33 = *(v0 + 584);
  v34 = *(v0 + 472);
  if (v28)
  {
    v66 = *(v0 + 960);
    v35 = swift_slowAlloc();
    v65 = v33;
    v36 = swift_slowAlloc();
    v68[0] = v36;
    *v35 = 134218498;
    *(v35 + 4) = v26;
    *(v35 + 12) = 2080;
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type Date and conformance Date, 255, &type metadata accessor for Date);
    v62 = v34;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v38;
    v30(v31, v32);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v68);

    *(v35 + 14) = v40;
    *(v35 + 22) = 2048;
    static DefaultsManager.Processing.deferralReconsiderationThreshold.getter();
    *(v35 + 24) = v41;
    _os_log_impl(&_mh_execute_header, v27, v67, "[runFullProcessing] set target defer run date, randomizedInterval=%f, targetDate=%s, reconsiderationInterval=%f", v35, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v36);

    v66(v65, v62);
  }

  else
  {

    v30(v31, v32);
    v29(v33, v34);
  }

  v42 = *(v0 + 936);
  v43 = *(v0 + 840);
  v61 = *(v0 + 752);
  v63 = *(v0 + 928);
  v44 = *(v0 + 704);
  v64 = *(v0 + 440);
  v45 = *(v0 + 208);
  v46 = *(v0 + 216);
  v47 = *(v0 + 200);
  static DefaultsManager.Processing.setDeferredRunScheduledDate(_:)();
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError);
  swift_allocError();
  (*(v46 + 104))(v48, enum case for ProcessingError.deferredPostUpgradeFirstRun(_:), v45);
  swift_willThrow();

  v42(v61, v44);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v64, &_s10Foundation4DateVSgMd);
  v42(v43, v44);
  swift_beginAccess();
  *(v47 + 120) = 0;
  static CommonLogger.processing.getter();

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 67109120;
    *(v51 + 4) = *(v47 + 120);

    _os_log_impl(&_mh_execute_header, v49, v50, "[runFullProcessing] isRunning changed to %{BOOL}d", v51, 8u);
  }

  else
  {
  }

  v52 = *(v0 + 464);
  v53 = *(v0 + 200);
  (*(v0 + 960))(*(v0 + 576), *(v0 + 472));
  v54 = type metadata accessor for TaskPriority();
  (*(*(v54 - 8) + 56))(v52, 1, 1, v54);
  v56 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v55, type metadata accessor for MOBundleProcessingSession);
  v57 = swift_allocObject();
  v57[2] = v53;
  v57[3] = v56;
  v57[4] = v53;
  v58 = *(v0 + 464);
  swift_retain_n();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v58, &closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)partial apply, v57);

  v59 = *(v0 + 8);

  return v59();
}

{
  v1 = *(v0 + 200);
  dispatch thunk of DBManager.runFullProcessingStart()();

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v1, 0);
}

{
  v1 = *(v0 + 840);
  v2 = *(v0 + 736);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  *(v0 + 1016) = type metadata accessor for CommonLogger();
  static CommonLogger.processing.getter();
  v52 = *(v3 + 16);
  v52(v2, v1, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 736);
  v9 = *(v0 + 712);
  v10 = *(v0 + 704);
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    Date.timeIntervalSinceReferenceDate.getter();
    v13 = v12;
    v14 = *(v9 + 8);
    v14(v8, v10);
    *(v11 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "[runFullProcessing] started, timestamp=%f", v11, 0xCu);
  }

  else
  {

    v14 = *(v9 + 8);
    v14(v8, v10);
  }

  *(v0 + 1024) = v14;
  v15 = *(v0 + 1352);
  (*(v0 + 992))(*(v0 + 560), *(v0 + 472));
  if (v15 == 1)
  {
    if (one-time initialization token for bundleProcessing != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for OSSignposter();
    *(v0 + 1032) = __swift_project_value_buffer(v16, static MOAngelSignposter.bundleProcessing);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v17 = OSSignposter.logHandle.getter();
    v18 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v20, "UIService_RefreshBundles", "", v19, 2u);
    }

    v22 = *(v0 + 408);
    v21 = *(v0 + 416);
    v23 = *(v0 + 304);
    v24 = *(v0 + 312);

    (*(v24 + 16))(v22, v21, v23);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    *(v0 + 1040) = OSSignpostIntervalState.init(id:isOpen:)();
    v25 = swift_task_alloc();
    *(v0 + 1048) = v25;
    *v25 = v0;
    v25[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

    return MOBundleProcessingSession.refreshBundles()();
  }

  else
  {
    v27 = *(v0 + 840);
    v28 = *(v0 + 728);
    v29 = *(v0 + 704);
    static CommonLogger.processing.getter();
    v52(v28, v27, v29);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 992);
    v34 = *(v0 + 728);
    v35 = *(v0 + 704);
    v53 = *(v0 + 552);
    v36 = *(v0 + 472);
    if (v32)
    {
      v51 = *(v0 + 992);
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      Date.timeIntervalSinceReferenceDate.getter();
      v39 = v38;
      v14(v34, v35);
      *(v37 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "[runFullProcessing] skipping refreshBundles, timestamp=%f", v37, 0xCu);
      v33 = v51;
    }

    else
    {

      v14(v34, v35);
    }

    v33(v53, v36);
    if (one-time initialization token for bundleProcessing != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for OSSignposter();
    *(v0 + 1064) = v40;
    *(v0 + 1072) = __swift_project_value_buffer(v40, static MOAngelSignposter.bundleProcessing);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v41 = OSSignposter.logHandle.getter();
    v42 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, v42, v44, "UIService_FetchBundles", "", v43, 2u);
    }

    v45 = *(v0 + 408);
    v46 = *(v0 + 392);
    v47 = *(v0 + 304);
    v48 = *(v0 + 312);

    v49 = *(v48 + 16);
    *(v0 + 1080) = v49;
    *(v0 + 1088) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v49(v45, v46, v47);
    *(v0 + 1096) = type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    *(v0 + 1104) = OSSignpostIntervalState.init(id:isOpen:)();
    v50 = swift_task_alloc();
    *(v0 + 1112) = v50;
    *v50 = v0;
    v50[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

    return MOBundleProcessingSession.fetchBundles(options:)(0, 0);
  }
}

{
  v2 = *v1;
  *(*v1 + 1056) = v0;

  v3 = *(v2 + 200);
  if (v0)
  {
    v4 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  else
  {
    v4 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  return _swift_task_switch(v4, v3, 0);
}

{
  v1 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v2 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v3 = v0[37];
    v4 = v0[29];
    v5 = v0[30];

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v3, v4) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[30] + 8))(v0[37], v0[29]);
      v6 = "";
    }

    v12 = v0[52];
    v13 = v0[50];
    v14 = v0[38];
    v15 = v0[39];
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, v2, v17, "UIService_RefreshBundles", v6, v16, 2u);

    v18 = *(v15 + 8);
    v18(v13, v14);
    v18(v12, v14);
  }

  else
  {
    v7 = v0[52];
    v8 = v0[50];
    v9 = v0[38];
    v10 = v0[39];

    v11 = *(v10 + 8);
    v11(v8, v9);
    v11(v7, v9);
  }

  if (one-time initialization token for bundleProcessing != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for OSSignposter();
  v0[133] = v19;
  v0[134] = __swift_project_value_buffer(v19, static MOAngelSignposter.bundleProcessing);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v20 = OSSignposter.logHandle.getter();
  v21 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v21, v23, "UIService_FetchBundles", "", v22, 2u);
  }

  v24 = v0[51];
  v25 = v0[49];
  v26 = v0[38];
  v27 = v0[39];

  v28 = *(v27 + 16);
  v0[135] = v28;
  v0[136] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28(v24, v25, v26);
  v0[137] = type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[138] = OSSignpostIntervalState.init(id:isOpen:)();
  v29 = swift_task_alloc();
  v0[139] = v29;
  *v29 = v0;
  v29[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

  return MOBundleProcessingSession.fetchBundles(options:)(0, 0);
}

{
  v1 = v0[140];
  if (v1)
  {
    v2 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v3 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v4 = v0[36];
      v5 = v0[29];
      v6 = v0[30];

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v4, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v7 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[30] + 8))(v0[36], v0[29]);
        v7 = "";
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v15, "UIService_FetchBundles", v7, v14, 2u);
    }

    v16 = v0[48];
    v17 = v0[38];
    v18 = v0[39];

    v19 = *(v18 + 8);
    v0[142] = v19;
    v19(v16, v17);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v20 = OSSignposter.logHandle.getter();
    v21 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v21, v23, "UIService_MapSuggestions", "", v22, 2u);
    }

    v24 = v0[135];
    v25 = v0[51];
    v26 = v0[47];
    v27 = v0[38];

    v24(v25, v26, v27);
    swift_allocObject();
    v0[143] = OSSignpostIntervalState.init(id:isOpen:)();
    v28 = swift_task_alloc();
    v0[144] = v28;
    *v28 = v0;
    v28[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

    return MOBundleProcessingSession.generatedSuggestions(bundles:)(v1);
  }

  v8 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v9 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];

    checkForErrorAndConsumeState(state:)();

    if ((*(v11 + 88))(v10, v12) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[30] + 8))(v0[31], v0[29]);
      v13 = "";
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, v31, "UIService_FetchBundles", v13, v30, 2u);
  }

  v32 = v0[49];
  v34 = v0[39];
  v33 = v0[40];
  v35 = v0[38];
  v36 = v0[26];
  v37 = v0[27];

  v38 = *(v34 + 8);
  v38(v33, v35);
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError);
  v39 = swift_allocError();
  (*(v37 + 104))(v40, enum case for ProcessingError.cannotMapBundlesToSuggestions(_:), v36);
  swift_willThrow();

  v38(v32, v35);
  v0[168] = v39;
  v0[23] = v39;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (!swift_dynamicCast())
  {
    goto LABEL_21;
  }

  if ((*(v0[27] + 88))(v0[28], v0[26]) != enum case for ProcessingError.noChangesSinceLastSnapshot(_:))
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
LABEL_21:

    v41 = v0[126];
    v42 = v0[125];
    v43 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
    goto LABEL_22;
  }

  v41 = v0[126];
  v42 = v0[125];
  v43 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
LABEL_22:

  return _swift_task_switch(v43, v42, v41);
}

{
  v1 = v0[145];
  if (v1)
  {
    v2 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v3 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v4 = v0[35];
      v5 = v0[29];
      v6 = v0[30];

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v4, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v7 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[30] + 8))(v0[35], v0[29]);
        v7 = "";
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v15, "UIService_MapSuggestions", v7, v14, 2u);
    }

    v16 = v0[142];
    v17 = v0[46];
    v18 = v0[38];

    v16(v17, v18);
    static CommonLogger.processing.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[128];
      v22 = v0[99];
      v23 = v0[88];
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      static Date.now.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v26 = v25;
      v21(v22, v23);
      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "[runFullProcessing] fetched and mapped suggestions, timestamp=%f", v24, 0xCu);
    }

    v27 = v0[124];
    v28 = v0[68];
    v29 = v0[59];
    v30 = v0[60];

    v0[146] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v28, v29);
    if (static DefaultsManager.Processing.shouldUseIncremental.getter())
    {
      v31 = static MomentsUIManager.shared.getter();
      v0[150] = dispatch thunk of MomentsUIManager.cloudManager.getter();

      v32 = swift_task_alloc();
      v0[151] = v32;
      *v32 = v0;
      v32[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

      return CloudManager.getDeviceDB()();
    }

    else
    {
      if (one-time initialization token for assetRendering != -1)
      {
        swift_once();
      }

      v0[147] = __swift_project_value_buffer(v0[133], static MOAngelSignposter.assetRendering);
      OSSignposter.logHandle.getter();
      OSSignpostID.init(log:)();
      v33 = OSSignposter.logHandle.getter();
      v34 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, v34, v36, "UIService_RenderAssets", "", v35, 2u);
      }

      v37 = v0[135];
      v38 = v0[51];
      v39 = v0[45];
      v40 = v0[38];

      v37(v38, v39, v40);
      swift_allocObject();
      v0[148] = OSSignpostIntervalState.init(id:isOpen:)();
      v41 = swift_task_alloc();
      v0[149] = v41;
      *v41 = v0;
      v41[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

      return MOBundleProcessingSession.renderSuggestions(suggestions:)(v1);
    }
  }

  v8 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v9 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v10 = v0[32];
    v11 = v0[29];
    v12 = v0[30];

    checkForErrorAndConsumeState(state:)();

    if ((*(v12 + 88))(v10, v11) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[30] + 8))(v0[32], v0[29]);
      v13 = "";
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, v9, v43, "UIService_MapSuggestions", v13, v42, 2u);
  }

  v44 = v0[142];
  v55 = v0[47];
  v56 = v0[49];
  v45 = v0[41];
  v46 = v0[38];
  v47 = v0[26];
  v48 = v0[27];

  v44(v45, v46);
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError);
  v49 = swift_allocError();
  (*(v48 + 104))(v50, enum case for ProcessingError.cannotMapBundlesToSuggestions(_:), v47);
  swift_willThrow();

  v44(v55, v46);
  v44(v56, v46);
  v0[168] = v49;
  v0[23] = v49;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (!swift_dynamicCast())
  {
    goto LABEL_29;
  }

  if ((*(v0[27] + 88))(v0[28], v0[26]) != enum case for ProcessingError.noChangesSinceLastSnapshot(_:))
  {
    (*(v0[27] + 8))(v0[28], v0[26]);
LABEL_29:

    v51 = v0[126];
    v52 = v0[125];
    v53 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
    goto LABEL_30;
  }

  v51 = v0[126];
  v52 = v0[125];
  v53 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
LABEL_30:

  return _swift_task_switch(v53, v52, v51);
}

{
  v1 = *(*v0 + 200);

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v1, 0);
}

{
  v1 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v2 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v3 = v0[34];
    v4 = v0[29];
    v5 = v0[30];

    checkForErrorAndConsumeState(state:)();

    if ((*(v5 + 88))(v3, v4) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[30] + 8))(v0[34], v0[29]);
      v6 = "";
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, v2, v8, "UIService_RenderAssets", v6, v7, 2u);
  }

  v9 = v0[142];
  v10 = v0[44];
  v11 = v0[38];

  v9(v10, v11);
  static CommonLogger.processing.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[128];
    v15 = v0[99];
    v16 = v0[88];
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v19 = v18;
    v14(v15, v16);
    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "[runFullProcessing] rendered suggestions, timestamp=%f", v17, 0xCu);
  }

  v20 = v0[142];
  v21 = v0[124];
  v22 = v0[67];
  v23 = v0[59];
  v24 = v0[45];
  v25 = v0[38];

  v21(v22, v23);
  v20(v24, v25);
  v26 = static MomentsUIManager.shared.getter();
  v0[150] = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v27 = swift_task_alloc();
  v0[151] = v27;
  *v27 = v0;
  v27[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

  return CloudManager.getDeviceDB()();
}

{
  if (v0[152])
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, 255, &type metadata accessor for CloudDevicesDB);
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v2, v1);
  }

  else
  {
    v0[154] = 0;
    v3 = v0[145];
    v4 = v0[105];
    v5 = v0[25];
    type metadata accessor for CloudDevicesDB();
    v0[155] = static CloudDevicesDB.$commonSecondaryCapabilities.getter();
    v0[24] = 0;
    v6 = swift_task_alloc();
    v0[156] = v6;
    v6[2] = v5;
    v6[3] = v3;
    v6[4] = v4;
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v7, type metadata accessor for MOBundleProcessingSession);
    v8 = swift_task_alloc();
    v0[157] = v8;
    *v8 = v0;
    v8[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

    return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
  }
}

{
  v1 = *(v0 + 200);
  *(v0 + 1224) = CloudDevicesDB.commonSecondaryCapabilities()();

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v1, 0);
}

{
  v1 = v0[153];

  v0[154] = v1;
  v2 = v0[145];
  v3 = v0[105];
  v4 = v0[25];
  type metadata accessor for CloudDevicesDB();
  v0[155] = static CloudDevicesDB.$commonSecondaryCapabilities.getter();
  v0[24] = v1;
  v5 = swift_task_alloc();
  v0[156] = v5;
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v3;
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v6, type metadata accessor for MOBundleProcessingSession);
  v7 = swift_task_alloc();
  v0[157] = v7;
  *v7 = v0;
  v7[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

{
  v2 = *v1;
  *(*v1 + 1264) = v0;

  v3 = *(v2 + 200);

  if (v0)
  {

    v4 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  else
  {

    v4 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  return _swift_task_switch(v4, v3, 0);
}

{
  if (static DefaultsManager.Processing.shouldPruneSnapshotsEverytime.getter())
  {
    v0[159] = type metadata accessor for MainActor();
    v0[160] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v2, v1);
  }

  else
  {
    if (one-time initialization token for databaseOps != -1)
    {
      swift_once();
    }

    v0[165] = __swift_project_value_buffer(v0[133], static MOAngelSignposter.databaseOps);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v3 = OSSignposter.logHandle.getter();
    v4 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, v4, v6, "UIService_CloudSync", "", v5, 2u);
    }

    v7 = v0[135];
    v8 = v0[51];
    v9 = v0[43];
    v10 = v0[38];

    v7(v8, v9, v10);
    swift_allocObject();
    v0[166] = OSSignpostIntervalState.init(id:isOpen:)();
    static CommonLogger.processing.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "[writeDBSuggestions] triggering a cloud refresh", v13, 2u);
    }

    v14 = v0[124];
    v15 = v0[66];
    v16 = v0[59];

    v14(v15, v16);
    v17 = swift_task_alloc();
    v0[167] = v17;
    v18 = type metadata accessor for CloudManager();
    v19 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, 255, &type metadata accessor for CloudManager);
    *v17 = v0;
    v17[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

    return CloudManagerProtocol.refresh(force:wait:_:_:)(0, 0, 0xD000000000000023, 0x80000001002B2CD0, 541, v18, v19);
  }
}

{
  v1 = *(v0 + 200);

  *(v0 + 1288) = dispatch thunk of DBManager.mainWriter.getter();

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v1, 0);
}

{
  *(v0 + 1296) = static DefaultsManager.Processing.pruneSnapshotsCount.getter();
  *(v0 + 1304) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v2, v1);
}

{
  v1 = v0[162];

  DBWriter.pruneSnapshotsTo(_:)(v1);
  v0[164] = v2;
  if (v2)
  {
    v3 = v0[25];

    v4 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
    v5 = v3;
  }

  else
  {
    v6 = v0[25];

    v4 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
    v5 = v6;
  }

  return _swift_task_switch(v4, v5, 0);
}

{
  if (one-time initialization token for databaseOps != -1)
  {
    swift_once();
  }

  v0[165] = __swift_project_value_buffer(v0[133], static MOAngelSignposter.databaseOps);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v1 = OSSignposter.logHandle.getter();
  v2 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, v2, v4, "UIService_CloudSync", "", v3, 2u);
  }

  v5 = v0[135];
  v6 = v0[51];
  v7 = v0[43];
  v8 = v0[38];

  v5(v6, v7, v8);
  swift_allocObject();
  v0[166] = OSSignpostIntervalState.init(id:isOpen:)();
  static CommonLogger.processing.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "[writeDBSuggestions] triggering a cloud refresh", v11, 2u);
  }

  v12 = v0[124];
  v13 = v0[66];
  v14 = v0[59];

  v12(v13, v14);
  v15 = swift_task_alloc();
  v0[167] = v15;
  v16 = type metadata accessor for CloudManager();
  v17 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type CloudManager and conformance CloudManager, 255, &type metadata accessor for CloudManager);
  *v15 = v0;
  v15[1] = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);

  return CloudManagerProtocol.refresh(force:wait:_:_:)(0, 0, 0xD000000000000023, 0x80000001002B2CD0, 541, v16, v17);
}

{
  v1 = *(*v0 + 200);

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v1, 0);
}

{
  static CommonLogger.processing.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[writeDBSuggestions] triggered a cloud refresh", v3, 2u);
  }

  v4 = v0[124];
  v5 = v0[65];
  v6 = v0[59];

  v4(v5, v6);
  v7 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v8 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v9 = v0[33];
    v10 = v0[29];
    v11 = v0[30];

    checkForErrorAndConsumeState(state:)();

    if ((*(v11 + 88))(v9, v10) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[30] + 8))(v0[33], v0[29]);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, v8, v14, "UIService_CloudSync", v12, v13, 2u);
  }

  v15 = v0[145];
  v16 = v0[142];
  v17 = v0[42];
  v18 = v0[38];

  v16(v17, v18);
  static Date.now.getter();
  static DefaultsManager.Processing.setLastSuccessfulRun(_:)();
  if (v15 >> 62)
  {
    goto LABEL_30;
  }

  v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v19; i = v0)
  {
    v20 = 0;
    v21 = v0[145];
    v0 = (v21 & 0xC000000000000001);
    v22 = v21 & 0xFFFFFFFFFFFFFF8;
    v23 = v21 + 32;
    v24 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v22 + 16))
        {
          goto LABEL_29;
        }

        v25 = *(v23 + 8 * v20);
      }

      v26 = v25;
      v27 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v28 = Suggestion.assets.getter();
      if (v28)
      {
        if (v28 >> 62)
        {
          v29 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v29 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
      }

      v31 = *(v24 + 2);
      v30 = *(v24 + 3);
      if (v31 >= v30 >> 1)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v24);
      }

      *(v24 + 2) = v31 + 1;
      *&v24[8 * v31 + 32] = v29;
      ++v20;
      if (v27 == v19)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_32:

  v35 = *(v24 + 2);
  if (v35)
  {
    v36 = 0;
    v37 = (v24 + 32);
    while (1)
    {
      v38 = *v37++;
      v39 = __OFADD__(v36, v38);
      v36 += v38;
      if (v39)
      {
        break;
      }

      if (!--v35)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = 0;
LABEL_38:

    static CommonLogger.processing.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v40, v41, "[runFullProcessing] total assets processed, n=%ld", v42, 0xCu);
    }

    v43 = i[124];
    v44 = i[64];
    v45 = i[59];

    v43(v44, v45);
    v34 = i[126];
    v33 = i[125];
    v32 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
  }

  return _swift_task_switch(v32, v33, v34);
}

{
  v1 = *(v0 + 200);
  dispatch thunk of DBManager.runFullProcessingEnd()();

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v1, 0);
}

{
  v1 = *(v0 + 1136);
  v15 = *(v0 + 704);
  v16 = *(v0 + 720);
  v20 = *(v0 + 392);
  v18 = *(v0 + 1024);
  v19 = *(v0 + 376);
  v17 = *(v0 + 344);
  v2 = *(v0 + 304);

  v18(v16, v15);
  v1(v17, v2);
  v1(v19, v2);
  v1(v20, v2);
  v3 = *(v0 + 200);
  (*(v0 + 1024))(*(v0 + 840), *(v0 + 704));
  swift_beginAccess();
  *(v3 + 120) = 0;
  static CommonLogger.processing.getter();

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = *(v3 + 120);

    _os_log_impl(&_mh_execute_header, v4, v5, "[runFullProcessing] isRunning changed to %{BOOL}d", v6, 8u);
  }

  else
  {
  }

  v7 = *(v0 + 464);
  v8 = *(v0 + 200);
  (*(v0 + 992))(*(v0 + 504), *(v0 + 472));
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v11 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v10, type metadata accessor for MOBundleProcessingSession);
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v11;
  v12[4] = v8;
  swift_retain_n();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)partial apply, v12);

  v13 = *(v0 + 8);

  return v13();
}

{
  v203 = v0;
  v1 = v0[89];
  v2 = v0[88];
  v3 = v0[57];
  static DefaultsManager.Processing.deferredRunDate.getter();
  v4 = *(v1 + 48);
  if (v4(v3, 1, v2) == 1)
  {
    v199 = v4;
    v5 = v0[57];
LABEL_5:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v5, &_s10Foundation4DateVSgMd);
    goto LABEL_6;
  }

  v6 = v0[88];
  v7 = v0[56];
  v8 = *(v0[89] + 32);
  v8(v0[104], v0[57], v6);
  static DefaultsManager.Processing.deferredRunScheduledDate.getter();
  if (v4(v7, 1, v6) == 1)
  {
    v199 = v4;
    v9 = v0[56];
    (*(v0[89] + 8))(v0[104], v0[88]);
    v5 = v9;
    goto LABEL_5;
  }

  v8(v0[103], v0[56], v0[88]);
  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    Date.timeIntervalSince(_:)();
    v65 = v64;
    static DefaultsManager.Processing.deferralReconsiderationThreshold.getter();
    if (v65 >= v66)
    {
      v199 = v4;
      v153 = v0[104];
      v154 = v0[88];
      v155 = *(v0[89] + 8);
      v155(v0[103], v154);
      v155(v153, v154);
LABEL_6:
      v10 = v0[99];
      v11 = v0[89];
      v12 = v0[88];
      v13 = [objc_allocWithZone(MOMultiDeviceEngagementManager) init];
      v0[116] = v13;
      static DefaultsManager.Processing.deferralMaximumThreshold.getter();
      static DefaultsManager.Processing.deferralEngagementLookbackThreshold.getter();
      Date.addingTimeInterval(_:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      v15 = *(v11 + 8);
      v0[117] = v15;
      v0[118] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v15(v10, v12);
      v16 = Date._bridgeToObjectiveC()().super.isa;
      v191 = v13;
      v17 = [v13 latestViewedEngagmentDateFrom:isa to:v16];

      if (v17)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      v193 = v15;
      v20 = v0[54];
      v19 = v0[55];
      (*(v0[89] + 56))(v20, v18, 1, v0[88]);
      outlined init with take of Date?(v20, v19);
      v0[119] = type metadata accessor for CommonLogger();
      static CommonLogger.processing.getter();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134218752;
        static DefaultsManager.Processing.deferralEngagementLookbackThreshold.getter();
        *(v23 + 4) = v24;
        *(v23 + 12) = 2048;
        static DefaultsManager.Processing.deferralMaximumThreshold.getter();
        *(v23 + 14) = v25;
        *(v23 + 22) = 2048;
        static DefaultsManager.Processing.deferralMinimumThreshold.getter();
        *(v23 + 24) = v26;
        *(v23 + 32) = 2048;
        static DefaultsManager.Processing.deferralReconsiderationThreshold.getter();
        *(v23 + 34) = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "[runFullProcessing] deferral constants, deferralEngagementLookbackThreshold=%f, deferralMaximumThreshold=%f, deferralMinimumThreshold=%f, deferralReconsiderationThreshold=%f", v23, 0x2Au);
      }

      v28 = v0[88];
      v29 = v0[76];
      v30 = v0[59];
      v31 = v0[60];
      v32 = v0[55];
      v33 = v0[53];

      v34 = *(v31 + 8);
      v0[120] = v34;
      v0[121] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v34(v29, v30);
      outlined init with copy of (String, Date?)(v32, v33, &_s10Foundation4DateVSgMd);
      if (v199(v33, 1, v28) == 1)
      {
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[53], &_s10Foundation4DateVSgMd);
        v0[122] = static MainActor.shared.getter();
        v35 = dispatch thunk of Actor.unownedExecutor.getter();
        v37 = v36;
        v38 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
        v39 = v35;
        v40 = v37;
        goto LABEL_38;
      }

      v200 = v34;
      (*(v0[89] + 32))(v0[98], v0[53], v0[88]);
      Date.timeIntervalSince(_:)();
      v42 = fabs(v41);
      static DefaultsManager.Processing.deferralEngagementLookbackThreshold.getter();
      if (v42 < v43)
      {
        v44 = v0[98];
        v45 = v0[95];
        v46 = v0[89];
        v47 = v0[88];
        static CommonLogger.processing.getter();
        (*(v46 + 16))(v45, v44, v47);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.error.getter();
        v50 = os_log_type_enabled(v48, v49);
        v51 = v0[98];
        v52 = v0[95];
        v53 = v0[88];
        v54 = v0[74];
        v186 = v0[59];
        v55 = v0[55];
        if (v50)
        {
          v181 = v0[74];
          v56 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v202[0] = v176;
          *v56 = 136315394;
          lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type Date and conformance Date, 255, &type metadata accessor for Date);
          v57 = dispatch thunk of CustomStringConvertible.description.getter();
          v178 = v55;
          v59 = v58;
          v193(v52, v53);
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v202);

          *(v56 + 4) = v60;
          *(v56 + 12) = 2048;
          static DefaultsManager.Processing.deferralEngagementLookbackThreshold.getter();
          *(v56 + 14) = v61;
          _os_log_impl(&_mh_execute_header, v48, v49, "[runFullProcessing] user has engaged within lookback window, shouldProceedWithoutDeferral, latestViewedEngagmentDate=%s, lookback=%f", v56, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v176);

          v62 = v200;
          v200(v181, v186);
          v193(v51, v53);
          v63 = v178;
        }

        else
        {

          v193(v52, v53);
          v200(v54, v186);
          v193(v51, v53);
          v62 = v200;
          v63 = v55;
        }

        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v63, &_s10Foundation4DateVSgMd);
        goto LABEL_37;
      }

      static DefaultsManager.Processing.deferralMinimumThreshold.getter();
      v90 = v89;
      v38 = static DefaultsManager.Processing.deferralMaximumThreshold.getter();
      if (v90 > v91)
      {
        __break(1u);
      }

      else
      {
        v92 = v91;
        v93 = v91 - v90;
        if (COERCE__INT64(fabs(v91 - v90)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v94 = v0[97];
          v95 = v0[96];
          v96 = v0[89];
          v97 = v0[88];
          v98 = specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
          v99 = v90 + v93 * vcvtd_n_f64_u64(v98, 0x35uLL);
          if (v98 == 0x20000000000000)
          {
            v100 = v92;
          }

          else
          {
            v100 = v99;
          }

          Date.addingTimeInterval(_:)();
          static DefaultsManager.Processing.setDeferredRunDate(_:)();
          static CommonLogger.processing.getter();
          (*(v96 + 16))(v95, v94, v97);
          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.error.getter();
          v103 = os_log_type_enabled(v101, v102);
          v104 = v0[96];
          v105 = v0[88];
          v106 = v0[75];
          v107 = v0[59];
          if (v103)
          {
            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v202[0] = v109;
            *v108 = 134218754;
            *(v108 + 4) = v42;
            *(v108 + 12) = 2048;
            *(v108 + 14) = v100;
            *(v108 + 22) = 2080;
            lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type Date and conformance Date, 255, &type metadata accessor for Date);
            v182 = v107;
            v188 = v106;
            v110 = dispatch thunk of CustomStringConvertible.description.getter();
            v112 = v111;
            v113 = v105;
            v114 = v193;
            v193(v104, v113);
            v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, v202);

            *(v108 + 24) = v115;
            *(v108 + 32) = 2048;
            static DefaultsManager.Processing.deferralReconsiderationThreshold.getter();
            *(v108 + 34) = v116;
            _os_log_impl(&_mh_execute_header, v101, v102, "[runFullProcessing] set target defer run date, timeIntervalSinceEngagement=%f, randomizedInterval=%f, targetDate=%s, reconsiderationInterval=%f", v108, 0x2Au);
            __swift_destroy_boxed_opaque_existential_0(v109);

            v118 = v182;
            v117 = v188;
          }

          else
          {

            v119 = v105;
            v114 = v193;
            v193(v104, v119);
            v117 = v106;
            v118 = v107;
          }

          v200(v117, v118);
          v120 = v0[105];
          v189 = v0[98];
          v183 = v0[97];
          v121 = v0[88];
          v122 = v0[58];
          v195 = v0[55];
          v124 = v0[26];
          v123 = v0[27];
          v125 = v0[25];
          static DefaultsManager.Processing.setDeferredRunScheduledDate(_:)();
          lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError);
          swift_allocError();
          (*(v123 + 104))(v126, enum case for ProcessingError.deferredPostUpgradeFirstRun(_:), v124);
          swift_willThrow();

          v114(v183, v121);
          v114(v189, v121);
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v195, &_s10Foundation4DateVSgMd);
          v114(v120, v121);
          swift_beginAccess();
          *(v125 + 120) = 0;
          MOBundleProcessingSession.isRunning.didset();
          v198 = &closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)partial apply;
          goto LABEL_46;
        }
      }

      __break(1u);
      return _swift_task_switch(v38, v39, v40);
    }
  }

  v67 = v0[89];
  v68 = static Date.> infix(_:_:)();
  type metadata accessor for CommonLogger();
  v69 = (v67 + 16);
  v70 = v0[104];
  if (v68)
  {
    v71 = v0[100];
    v72 = v0[88];
    static CommonLogger.processing.getter();
    (*v69)(v71, v70, v72);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    v75 = os_log_type_enabled(v73, v74);
    v76 = v0[104];
    v77 = v0[103];
    v78 = v0[100];
    v79 = v0[89];
    v80 = v0[88];
    v81 = v0[77];
    v82 = v0[60];
    v201 = v0[59];
    if (v75)
    {
      v197 = v0[77];
      v83 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v202[0] = v192;
      *v83 = 136315138;
      lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type Date and conformance Date, 255, &type metadata accessor for Date);
      v194 = v76;
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v187 = v77;
      v86 = v85;
      v87 = *(v79 + 8);
      v87(v78, v80);
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, v202);

      *(v83 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v73, v74, "[runFullProcessing] past previuosly set deferred target, shouldProceedWithoutDeferral, deferredDate=%s", v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v192);

      v62 = *(v82 + 8);
      v62(v197, v201);
      v87(v187, v80);
      v87(v194, v80);
    }

    else
    {

      v156 = *(v79 + 8);
      v156(v78, v80);
      v62 = *(v82 + 8);
      v62(v81, v201);
      v156(v77, v80);
      v156(v76, v80);
    }

LABEL_37:
    v0[124] = v62;
    type metadata accessor for DBManager();
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type DBManager and conformance DBManager, 255, &type metadata accessor for DBManager);
    v157 = dispatch thunk of Actor.unownedExecutor.getter();
    v40 = v158;
    v0[125] = v157;
    v0[126] = v158;
    v38 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
    v39 = v157;
LABEL_38:

    return _swift_task_switch(v38, v39, v40);
  }

  v127 = v0[103];
  v128 = v0[102];
  v129 = v0[101];
  v130 = v0[88];
  static CommonLogger.processing.getter();
  v131 = *v69;
  (*v69)(v128, v70, v130);
  v131(v129, v127, v130);
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.info.getter();
  v134 = os_log_type_enabled(v132, v133);
  v135 = v0[102];
  v136 = v0[101];
  v137 = v0[89];
  v138 = v0[88];
  v139 = v0[79];
  v140 = v0[59];
  v141 = v0[60];
  if (v134)
  {
    v184 = v133;
    v142 = swift_slowAlloc();
    v202[0] = swift_slowAlloc();
    *v142 = 136315394;
    lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type Date and conformance Date, 255, &type metadata accessor for Date);
    v175 = v132;
    v177 = v141;
    v143 = dispatch thunk of CustomStringConvertible.description.getter();
    v144 = v136;
    v146 = v145;
    v179 = v139;
    v147 = *(v137 + 8);
    v147(v135, v138);
    v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v146, v202);

    *(v142 + 4) = v148;
    *(v142 + 12) = 2080;
    v149 = dispatch thunk of CustomStringConvertible.description.getter();
    v151 = v150;
    v196 = v147;
    v147(v144, v138);
    v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v151, v202);

    *(v142 + 14) = v152;
    _os_log_impl(&_mh_execute_header, v175, v184, "[runFullProcessing] waiting for deferred run, deferredDate=%s, deferredScheduleDate=%s", v142, 0x16u);
    swift_arrayDestroy();

    v190 = *(v177 + 8);
    v190(v179, v140);
  }

  else
  {

    v159 = *(v137 + 8);
    v159(v136, v138);
    v196 = v159;
    v159(v135, v138);
    v190 = *(v141 + 8);
    v190(v139, v140);
  }

  v180 = v0[104];
  v185 = v0[105];
  v160 = v0[103];
  v161 = v0[88];
  v162 = v0[26];
  v163 = v0[27];
  v164 = v0[25];
  lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type ProcessingError and conformance ProcessingError, 255, &type metadata accessor for ProcessingError);
  swift_allocError();
  (*(v163 + 104))(v165, enum case for ProcessingError.deferredPostUpgradeFirstRun(_:), v162);
  swift_willThrow();

  v196(v160, v161);
  v196(v180, v161);
  v196(v185, v161);
  swift_beginAccess();
  *(v164 + 120) = 0;
  static CommonLogger.processing.getter();

  v166 = Logger.logObject.getter();
  v167 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v166, v167))
  {
    v168 = swift_slowAlloc();
    *v168 = 67109120;
    *(v168 + 4) = *(v164 + 120);

    _os_log_impl(&_mh_execute_header, v166, v167, "[runFullProcessing] isRunning changed to %{BOOL}d", v168, 8u);
  }

  else
  {
  }

  v122 = v0[58];
  v125 = v0[25];
  v190(v0[78], v0[59]);
  v198 = &closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)partial apply;
LABEL_46:
  v169 = type metadata accessor for TaskPriority();
  (*(*(v169 - 8) + 56))(v122, 1, 1, v169);
  v171 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v170, type metadata accessor for MOBundleProcessingSession);
  v172 = swift_allocObject();
  v172[2] = v125;
  v172[3] = v171;
  v172[4] = v125;
  swift_retain_n();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v0[58], v198, v172);

  v173 = v0[1];

  return v173();
}

{
  v1 = *(v0 + 200);
  dispatch thunk of DBManager.runFullProcessingEnd()();

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v1, 0);
}

{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 792);
  v3 = *(v0 + 704);
  static Date.now.getter();
  static DefaultsManager.Processing.setLastSuccessfulRun(_:)();

  v1(v2, v3);

  v4 = *(v0 + 200);
  (*(v0 + 1024))(*(v0 + 840), *(v0 + 704));
  swift_beginAccess();
  *(v4 + 120) = 0;
  static CommonLogger.processing.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v4 + 120);

    _os_log_impl(&_mh_execute_header, v5, v6, "[runFullProcessing] isRunning changed to %{BOOL}d", v7, 8u);
  }

  else
  {
  }

  v8 = *(v0 + 464);
  v9 = *(v0 + 200);
  (*(v0 + 992))(*(v0 + 504), *(v0 + 472));
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v12 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v11, type metadata accessor for MOBundleProcessingSession);
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v12;
  v13[4] = v9;
  swift_retain_n();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)partial apply, v13);

  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = *(v0 + 200);
  dispatch thunk of DBManager.runFullProcessingEnd()();

  return _swift_task_switch(MOBundleProcessingSession._runFullProcessing(triggerRefresh:), v1, 0);
}

{
  v1 = *(v0 + 1024);
  v2 = *(v0 + 840);
  v3 = *(v0 + 704);
  v4 = *(v0 + 200);
  swift_willThrow();

  v1(v2, v3);
  swift_beginAccess();
  *(v4 + 120) = 0;
  static CommonLogger.processing.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = *(v4 + 120);

    _os_log_impl(&_mh_execute_header, v5, v6, "[runFullProcessing] isRunning changed to %{BOOL}d", v7, 8u);
  }

  else
  {
  }

  v8 = *(v0 + 464);
  v9 = *(v0 + 200);
  (*(v0 + 992))(*(v0 + 488), *(v0 + 472));
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v12 = lazy protocol witness table accessor for type ProcessingError and conformance ProcessingError(&lazy protocol witness table cache variable for type MOBundleProcessingSession and conformance MOBundleProcessingSession, v11, type metadata accessor for MOBundleProcessingSession);
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v12;
  v13[4] = v9;
  v14 = *(v0 + 464);
  swift_retain_n();
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v14, &closure #1 in $defer #1 () in MOBundleProcessingSession._runFullProcessing(triggerRefresh:)partial apply, v13);

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = v0[52];
  v2 = v0[38];
  v3 = v0[39];

  (*(v3 + 8))(v1, v2);
  v4 = v0[132];
  v0[23] = v4;
  v0[168] = v4;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    if ((*(v0[27] + 88))(v0[28], v0[26]) == enum case for ProcessingError.noChangesSinceLastSnapshot(_:))
    {

      v5 = v0[126];
      v6 = v0[125];
      v7 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
      goto LABEL_6;
    }

    (*(v0[27] + 8))(v0[28], v0[26]);
  }

  v5 = v0[126];
  v6 = v0[125];
  v7 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
LABEL_6:

  return _swift_task_switch(v7, v6, v5);
}

{
  v1 = v0[49];
  v2 = v0[38];
  v3 = v0[39];

  (*(v3 + 8))(v1, v2);
  v4 = v0[141];
  v0[23] = v4;
  v0[168] = v4;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    if ((*(v0[27] + 88))(v0[28], v0[26]) == enum case for ProcessingError.noChangesSinceLastSnapshot(_:))
    {

      v5 = v0[126];
      v6 = v0[125];
      v7 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
      goto LABEL_6;
    }

    (*(v0[27] + 8))(v0[28], v0[26]);
  }

  v5 = v0[126];
  v6 = v0[125];
  v7 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
LABEL_6:

  return _swift_task_switch(v7, v6, v5);
}

{
  v1 = v0[142];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[38];

  v1(v3, v4);
  v1(v2, v4);
  v5 = v0[158];
  v0[23] = v5;
  v0[168] = v5;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    if ((*(v0[27] + 88))(v0[28], v0[26]) == enum case for ProcessingError.noChangesSinceLastSnapshot(_:))
    {

      v6 = v0[126];
      v7 = v0[125];
      v8 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
      goto LABEL_6;
    }

    (*(v0[27] + 8))(v0[28], v0[26]);
  }

  v6 = v0[126];
  v7 = v0[125];
  v8 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
LABEL_6:

  return _swift_task_switch(v8, v7, v6);
}

{
  v1 = v0[142];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[38];

  v1(v3, v4);
  v1(v2, v4);
  v5 = v0[164];
  v0[23] = v5;
  v0[168] = v5;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    if ((*(v0[27] + 88))(v0[28], v0[26]) == enum case for ProcessingError.noChangesSinceLastSnapshot(_:))
    {

      v6 = v0[126];
      v7 = v0[125];
      v8 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
      goto LABEL_6;
    }

    (*(v0[27] + 8))(v0[28], v0[26]);
  }

  v6 = v0[126];
  v7 = v0[125];
  v8 = MOBundleProcessingSession._runFullProcessing(triggerRefresh:);
LABEL_6:

  return _swift_task_switch(v8, v7, v6);
}