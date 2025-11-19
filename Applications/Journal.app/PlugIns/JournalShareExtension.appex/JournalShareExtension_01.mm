uint64_t sub_10002205C(char a1, char a2, uint64_t a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v57 = a14;
  v58 = a10;
  v29 = sub_1000FFA44();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MosaicLayout.Attributes();
  sub_100007210(&qword_10014CA78);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10010C1F0;
  *(v33 + 32) = 0;
  swift_beginAccess();
  *(v33 + 40) = *(a3 + 16);
  sub_1000FFA04();
  isa = sub_1000FFA14().super.isa;
  v35 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath:isa];

  (*(v30 + 8))(v32, v29);
  v36 = v35;
  v59 = a5;
  v60 = a6;
  v61 = a7;
  [v36 setFrame:{a5, a6, a7, a8}];
  v36[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_sizeType] = a1;
  if ((a2 & 4) != 0)
  {
    v37 = a9;
  }

  else
  {
    v37 = a11;
  }

  v39 = v57;
  v38 = v58;
  if ((a2 & 4) != 0)
  {
    v40 = v58;
  }

  else
  {
    v40 = a12;
  }

  if ((a2 & 8) != 0)
  {
    v41 = a9;
  }

  else
  {
    v41 = a11;
  }

  if ((a2 & 8) == 0)
  {
    v38 = a12;
  }

  if ((a2 & 2) != 0)
  {
    v42 = a13;
  }

  else
  {
    v42 = a11;
  }

  if ((a2 & 2) != 0)
  {
    v43 = v57;
  }

  else
  {
    v43 = a12;
  }

  if (a2)
  {
    v44 = a13;
  }

  else
  {
    v44 = a11;
  }

  if ((a2 & 1) == 0)
  {
    v39 = a12;
  }

  v45 = &v36[OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii];
  *v45 = v37;
  v45[1] = v40;
  v45[2] = v41;
  v45[3] = v38;
  v45[4] = v42;
  v45[5] = v43;
  v45[6] = v44;
  v45[7] = v39;
  v46 = OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_cachedAttributes;
  swift_beginAccess();
  sub_1001011B4();
  if (*((*(a4 + v46) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + v46) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100101204();
  }

  sub_100101234();
  swift_endAccess();
  v47 = (a4 + OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_contentBounds);
  v63.origin.x = v59;
  v63.origin.y = v60;
  v63.size.width = v61;
  v63.size.height = a8;
  v62 = CGRectUnion(*(a4 + OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_contentBounds), v63);
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;

  *v47 = x;
  v47[1] = y;
  v47[2] = width;
  v47[3] = height;
  result = swift_beginAccess();
  v53 = *(a3 + 16);
  v54 = __OFADD__(v53, 1);
  v55 = v53 + 1;
  if (v54)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v55;
  }

  return result;
}

uint64_t sub_100022384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000FFA44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    sub_100007210(&qword_10014CA78);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10010C1F0;
    *(v15 + 32) = 0;
    *(v15 + 40) = a1;
    sub_1000FFA04();
    v16 = (*(a3 + 16))(a4, a5, v13, ObjectType, a3);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t sub_1000225D4()
{
  v1 = OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_cachedAttributes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_100101DA4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (sub_1000FFA34() >= v3)
  {
    return 0;
  }

  result = sub_1000FFA34();
  v5 = *(v0 + v1);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_100101CA4();

    return v6;
  }

  else
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(v5 + 8 * result + 32);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000227C8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = v5;
  v14 = OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_cachedAttributes;
  swift_beginAccess();
  v15 = *(v14 + v5);
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v16 = sub_100101DA4();
    if (v16 < 0)
    {
      break;
    }

LABEL_3:
    if (!v16)
    {
      return _swiftEmptyArrayStorage;
    }

    v5 = v9;
    v17 = sub_100022D4C(0, v16 - 1, a1, a2, a3, a4);
    if (v18)
    {
      return _swiftEmptyArrayStorage;
    }

    v8 = v17;
    if (v17 < 0)
    {
      goto LABEL_61;
    }

    v5 = *(v14 + v9);
    v4 = (v5 >> 62);
    if (v5 >> 62)
    {
      goto LABEL_62;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < v17)
    {
      goto LABEL_64;
    }

LABEL_9:
    if ((v5 & 0xC000000000000001) == 0 || v8 == 0)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      sub_100023374();
      swift_bridgeObjectRetain_n();
      v20 = 0;
      do
      {
        v21 = v20 + 1;
        sub_100101C84(v20);
        v20 = v21;
      }

      while (v8 != v21);
    }

    v44 = v14;
    if (v4)
    {
      sub_100101DB4();
      v14 = v22;
      v6 = v23;
      v25 = v24;

      v4 = (v25 >> 1);
    }

    else
    {
      v6 = 0;
      v14 = ((v5 & 0xFFFFFFFFFFFFFF8) + 32);
      v4 = v8;
    }

    v7 = &selRef_cancel;
    v5 = _swiftEmptyArrayStorage;
    if (v4 == v6)
    {
LABEL_30:
      result = swift_unknownObjectRelease();
      v6 = *(v44 + v9);
      v4 = (v6 >> 62);
      if (v6 >> 62)
      {
        goto LABEL_65;
      }

      v32 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32 < v8)
      {
        goto LABEL_69;
      }

      goto LABEL_32;
    }

    v26 = v4;
    while (!__OFSUB__(v26--, 1))
    {
      if (v26 < v6 || v26 >= v4)
      {
        goto LABEL_57;
      }

      v28 = v14[v26];
      [v28 frame];
      MaxY = CGRectGetMaxY(v45);
      v46.origin.x = a1;
      v46.origin.y = a2;
      v46.size.width = a3;
      v46.size.height = a4;
      if (CGRectGetMinY(v46) > MaxY)
      {

        goto LABEL_30;
      }

      v30 = v28;
      sub_1001011B4();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100101204();
      }

      sub_100101234();

      v5 = _swiftEmptyArrayStorage;
      if (v26 == v6)
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
  result = sub_100101DA4();
  if (result < 0)
  {
    goto LABEL_71;
  }

  if (sub_100101DA4() >= v8)
  {
    goto LABEL_9;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  result = sub_100101DA4();
  if (result < v8)
  {
    goto LABEL_72;
  }

  v32 = result;
  result = sub_100101DA4();
  if (result < v8)
  {
    goto LABEL_73;
  }

  result = sub_100101DA4();
  if (result >= v32)
  {
LABEL_32:
    if ((v6 & 0xC000000000000001) == 0 || v8 == v32)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      if (v8 >= v32)
      {
        goto LABEL_70;
      }

      sub_100023374();
      swift_bridgeObjectRetain_n();
      v33 = v8;
      do
      {
        v34 = v33 + 1;
        sub_100101C84(v33);
        v33 = v34;
      }

      while (v32 != v34);
    }

    if (v4)
    {
      v9 = sub_100101DB4();
      v35 = v36;
      v8 = v37;
      v39 = v38;

      v32 = (v39 >> 1);
    }

    else
    {
      v9 = v6 & 0xFFFFFFFFFFFFFF8;
      v35 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    swift_unknownObjectRetain();
    v6 = v32 - v8;
    if (v32 != v8)
    {
      if (v8 <= v32)
      {
        v40 = v32;
      }

      else
      {
        v40 = v8;
      }

      v41 = v40 - v8;
      v14 = (v35 + 8 * v8);
      while (v41)
      {
        v42 = *v14;
        [v42 v7[45]];
        MinY = CGRectGetMinY(v47);
        v48.origin.x = a1;
        v48.origin.y = a2;
        v48.size.width = a3;
        v48.size.height = a4;
        if (MinY > CGRectGetMaxY(v48))
        {

          goto LABEL_54;
        }

        v4 = v42;
        sub_1001011B4();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100101204();
        }

        sub_100101234();

        v5 = _swiftEmptyArrayStorage;
        --v41;
        ++v14;
        if (!--v6)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_58;
    }

LABEL_54:
    swift_unknownObjectRelease_n();
    return v5;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_100022D4C(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2 < a1)
  {
    return 0;
  }

  v14 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v9 = a1;
  v8 = a2;
  v6 = v14 / 2;
  v15 = OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_cachedAttributes;
  result = swift_beginAccess();
  v17 = *(v7 + v15);
  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_16:

    v18 = sub_100101CA4();

LABEL_8:
    [v18 frame];
    v29.origin.x = v13;
    v29.origin.y = v12;
    v29.size.width = v11;
    v29.size.height = v10;
    if (CGRectIntersectsRect(v26, v29))
    {
    }

    else
    {
      [v18 frame];
      MaxY = CGRectGetMaxY(v27);
      v28.origin.x = v13;
      v28.origin.y = v12;
      v28.size.width = v11;
      v28.size.height = v10;
      if (MaxY >= CGRectGetMinY(v28))
      {
        v25 = v6 - 1;
        v20.n128_f64[0] = v13;
        v21.n128_f64[0] = v12;
        v22.n128_f64[0] = v11;
        v23.n128_f64[0] = v10;
        v24 = v9;
      }

      else
      {
        v24 = v6 + 1;
        v20.n128_f64[0] = v13;
        v21.n128_f64[0] = v12;
        v22.n128_f64[0] = v11;
        v25 = v8;
        v23.n128_f64[0] = v10;
      }

      v6 = sub_100022D4C(v24, v25, v20, v21, v22, v23);
    }

    return v6;
  }

  if (v14 < -1)
  {
    __break(1u);
  }

  else if (v6 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 8 * v6 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_100022FC0(void *a1)
{
  *&v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_cachedAttributes] = _swiftEmptyArrayStorage;
  v3 = &v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_contentBounds];
  *v3 = 0u;
  v3[1] = 0u;
  v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_sizeType] = 2;
  v4 = &v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerTopCornerRadius];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = &v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerBottomCornerRadius];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_isExpanded] = 0;
  v1[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_enforceShowCompressedAssetGrid] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MosaicLayout();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1000230DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002316C(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_100101204();
  }

  return result;
}

uint64_t sub_100023198(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1000231D0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_100101084();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1001010A4();

  return sub_100101154();
}

uint64_t sub_10002329C(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014CA68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100023304(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014CA68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100023374()
{
  result = qword_10014CA70;
  if (!qword_10014CA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014CA70);
  }

  return result;
}

double sub_1000233D0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  memset(&slice, 0, sizeof(slice));
  v8 = a3 * 0.5;
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(*&a1, &slice, &remainder, a3 * 0.5, CGRectMinXEdge);
  x = slice.origin.x;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectDivide(v13, &slice, &remainder, v8, CGRectMaxXEdge);
  return x;
}

void sub_1000234C4(CGPoint *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  memset(&slice, 0, sizeof(slice));
  v10 = a4 * 0.5;
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(*&a2, &slice, &remainder, a4 * 0.5, CGRectMinXEdge);
  y = slice.origin.y;
  x = slice.origin.x;
  width = slice.size.width;
  height = slice.size.height;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectDivide(v29, &slice, &remainder, v10, CGRectMaxXEdge);
  v23 = slice.origin.y;
  v24 = slice.origin.x;
  v14 = slice.size.width;
  v15 = slice.size.height;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  CGRectDivide(v30, &slice, &remainder, height * 0.5, CGRectMinYEdge);
  size = slice.size;
  origin = slice.origin;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  CGRectDivide(v31, &slice, &remainder, height * 0.5, CGRectMaxYEdge);
  v20 = slice.size;
  v22 = slice.origin;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v32.origin.x = v24;
  v32.origin.y = v23;
  v32.size.width = v14;
  v32.size.height = v15;
  CGRectDivide(v32, &slice, &remainder, v15 * 0.5, CGRectMinYEdge);
  v18 = slice.size;
  v19 = slice.origin;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v33.origin.x = v24;
  v33.origin.y = v23;
  v33.size.width = v14;
  v33.size.height = v15;
  CGRectDivide(v33, &slice, &remainder, v15 * 0.5, CGRectMaxYEdge);
  v16 = slice.origin;
  v17 = slice.size;
  *a1 = origin;
  a1[1] = size;
  a1[2] = v22;
  a1[3] = v20;
  a1[4] = v19;
  a1[5] = v18;
  a1[6] = v16;
  a1[7] = v17;
}

void sub_1000236CC(CGPoint *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  memset(&slice, 0, sizeof(slice));
  v10 = a4 * 0.5;
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(*&a2, &slice, &remainder, a4 * 0.5, CGRectMinXEdge);
  size = slice.size;
  origin = slice.origin;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectDivide(v29, &slice, &remainder, v10, CGRectMaxXEdge);
  sub_1000234C4(&slice.origin, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
  v11 = slice.origin;
  v12 = slice.size;
  v13 = v22;
  v14 = v23;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  *a1 = origin;
  a1[1] = size;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
  a1[5] = v14;
  a1[6] = v15;
  a1[7] = v16;
  a1[8] = v17;
  a1[9] = v18;
}

unint64_t sub_1000237E8()
{
  result = qword_10014CA80;
  if (!qword_10014CA80)
  {
    sub_1001007D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014CA80);
  }

  return result;
}

id sub_100023880()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommonTransitions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000238D8()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014CB18);
  v1 = sub_100003D38(v0, qword_10014CB18);
  if (qword_10014B8A0 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158870);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000239A0()
{
  v0 = sub_1000FF874();
  sub_100003CD4(v0, qword_10014CB30);
  sub_100003D38(v0, qword_10014CB30);
  return sub_1000FF864();
}

void sub_100023A04(void *a1)
{
  v3 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v3 - 8);
  v5 = &v57 - v4;
  v6 = sub_1000FF5D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v73 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000FF604();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100102054();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100102064();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v65 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100100F64();
  __chkstk_darwin(v12 - 8);
  v70 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007210(&unk_10014D640);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - v15;
  v77 = sub_1000FF804();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100007210(&qword_10014C250);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v57 - v22;
  v24 = sub_1000FF8B4();
  __chkstk_darwin(v24 - 8);
  v78 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100100F84();
  __chkstk_darwin(v26 - 8);
  if (!a1)
  {
LABEL_7:
    *v86 = 1;
    memset(&v86[8], 0, 73);
    sub_10002569C(v86);
    return;
  }

  v60 = v7;
  type metadata accessor for AudioAsset();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for LinkAsset();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = v31;
      v33 = sub_100101324();
      (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
      v34 = swift_allocObject();
      *(v34 + 16) = v32;
      *(v34 + 24) = v1;
      v35 = a1;
      v36 = v1;
      sub_100101354();

      sub_10000FFB4(v5, &qword_10014CBD8);
      return;
    }

    goto LABEL_7;
  }

  v59 = v6;
  v63 = v1;
  sub_100100F14();
  sub_1000FF8A4();
  v62 = sub_100101004();
  v61 = v27;
  sub_10000C4EC(v23);
  v28 = sub_1000FFED4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v23, 1, v28) == 1)
  {
    sub_10000FFB4(v23, &qword_10014C250);
LABEL_9:
    v41 = 0;
    v42 = 0;
    goto LABEL_18;
  }

  v58 = sub_1000FFEC4();
  v38 = v37;
  v39 = v23;
  v40 = *(v29 + 8);
  v40(v39, v28);
  if (v38)
  {
    goto LABEL_9;
  }

  sub_10000C4EC(v21);
  if (v30(v21, 1, v28) == 1)
  {
    sub_10000FFB4(v21, &qword_10014C250);
    (*(v76 + 56))(v16, 1, 1, v77);
  }

  else
  {
    sub_1000FFE94();
    v40(v21, v28);
    v43 = v76;
    v44 = v77;
    if ((*(v76 + 48))(v16, 1, v77) != 1)
    {
      v45 = *&v58;
      (*(v43 + 32))(v75, v16, v44);
      sub_100100F54();
      v87._countAndFlagsBits = 0;
      v87._object = 0xE000000000000000;
      sub_100100F44(v87);
      sub_1001020A4();
      v46 = v64;
      if (v45 >= 3600.0)
      {
        sub_100102044();
      }

      else
      {
        sub_100102034();
      }

      v47 = v59;
      v48 = v65;
      sub_1000FF184();
      (*(v66 + 8))(v46, v67);
      sub_100029FB8(&qword_10014CBE0, &type metadata accessor for Duration.TimeFormatStyle);
      v49 = v69;
      sub_100102084();
      (*(v68 + 8))(v48, v49);
      sub_100100F34(*v86);

      v88._countAndFlagsBits = 548913696;
      v88._object = 0xA400000000000000;
      sub_100100F44(v88);
      v50 = v75;
      v89._countAndFlagsBits = sub_10006DA7C();
      sub_100100F34(v89);

      v90._countAndFlagsBits = 8236;
      v90._object = 0xE200000000000000;
      sub_100100F44(v90);
      v51 = v71;
      sub_1000FF5E4();
      v52 = v73;
      sub_1000FF5C4();
      v53 = sub_1000FF7D4();
      v55 = v54;
      (*(v60 + 8))(v52, v47);
      (*(v72 + 8))(v51, v74);
      v91._countAndFlagsBits = v53;
      v91._object = v55;
      sub_100100F34(v91);

      v92._countAndFlagsBits = 0;
      v92._object = 0xE000000000000000;
      sub_100100F44(v92);
      sub_100100F74();
      sub_1000FF8A4();
      v41 = sub_100101004();
      v42 = v56;
      (*(v43 + 8))(v50, v77);
      goto LABEL_18;
    }
  }

  sub_10000FFB4(v16, &unk_10014D640);
  v41 = 0;
  v42 = 0;
LABEL_18:
  *&v79 = 0;
  *(&v79 + 1) = v62;
  *&v80 = v61;
  *(&v80 + 1) = v41;
  v81 = v42;
  v82 = 0;
  *v83 = 0;
  *&v83[8] = xmmword_10010C640;
  v84 = 0;
  v85 = 1;
  v86[80] = 1;
  *v86 = v79;
  *&v86[16] = v80;
  *&v86[32] = v42;
  *&v86[48] = *v83;
  *&v86[64] = 0xE800000000000000;
  sub_10002569C(v86);
  sub_1000267D4(&v79);
}

id sub_10002458C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_assetImageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_blurImageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_labelStack;
  *&v4[v11] = [objc_allocWithZone(UIStackView) init];
  v12 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_titleLabel;
  *&v4[v12] = [objc_allocWithZone(UILabel) init];
  v13 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_subtitleLabel;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_linkLabel;
  *&v4[v14] = [objc_allocWithZone(UILabel) init];
  v15 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteBlurView;
  v16 = objc_opt_self();
  v17 = [v16 effectWithStyle:6];
  v18 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v17];

  *&v4[v15] = v18;
  v19 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteLabel;
  *&v4[v19] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_linkFallbackView] = 0;
  v20 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_blurredEffectView;
  v21 = [v16 effectWithStyle:6];
  v22 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v21];

  *&v4[v20] = v22;
  *&v4[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_sizeConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_asset] = 0;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for LinkAssetGridView();
  v23 = objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
  sub_1000247D0();

  return v23;
}

void sub_1000247D0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_blurImageView];
  [v0 addSubview:v2];
  sub_100095E58(0.0);

  v3 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_blurredEffectView;
  [v2 addSubview:*&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_blurredEffectView]];
  v26 = v3;
  v4 = *&v1[v3];
  sub_100095E58(0.0);

  v5 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_assetImageView;
  [*&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_assetImageView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:*&v1[v5]];
  [v2 setAlpha:0.0];
  [v2 setContentMode:2];
  [*&v1[v5] setAlpha:0.0];
  [*&v1[v5] setContentMode:2];
  [*&v1[v5] setClipsToBounds:1];
  [*&v1[v5] setAccessibilityIgnoresInvertColors:1];
  [*&v1[v5] setIsAccessibilityElement:1];
  v6 = qword_10014B688;
  v7 = *&v1[v5];
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_100100F94();
  [v7 setAccessibilityLabel:v8];

  v9 = *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_titleLabel];
  v10 = objc_opt_self();
  v11 = [v10 secondaryLabelColor];
  [v9 setTextColor:v11];

  [v9 setPreferredVibrancy:1];
  v12 = sub_10004D9E8(UIFontTextStyleFootnote, &off_100134428, 0);
  swift_arrayDestroy();
  [v9 setFont:v12];

  [v9 setNumberOfLines:1];
  [v9 setLineBreakMode:0];
  [v9 setAdjustsFontForContentSizeCategory:1];
  if (qword_10014B5C0 != -1)
  {
    swift_once();
  }

  v13 = qword_10014CB48;
  [v9 setMaximumContentSizeCategory:qword_10014CB48];
  v14 = *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_subtitleLabel];
  v15 = [v10 secondaryLabelColor];
  [v14 setTextColor:v15];

  [v14 setPreferredVibrancy:1];
  v16 = sub_10004D9E8(UIFontTextStyleFootnote, &off_100134478, 0);
  sub_10002A08C(&unk_100134498);
  [v14 setFont:v16];

  [v14 setAdjustsFontForContentSizeCategory:1];
  [v14 setMaximumContentSizeCategory:v13];
  v17 = *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_labelStack];
  [v17 setAxis:1];
  [v17 setAlignment:1];
  [v17 setDistribution:4];
  [v17 setSpacing:5.0];
  [v17 setMaximumContentSizeCategory:v13];
  v18 = *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_linkLabel];
  v19 = [v10 tertiaryLabelColor];
  [v18 setTextColor:v19];

  [v18 setPreferredVibrancy:1];
  v20 = sub_10004D9E8(UIFontTextStyleFootnote, &off_1001344B0, 0);
  sub_10002A08C(&unk_1001344D0);
  [v18 setFont:v20];

  [v18 setAdjustsFontForContentSizeCategory:1];
  [v18 setMaximumContentSizeCategory:v13];
  v27 = [objc_allocWithZone(UIStackView) init];
  [v27 setAxis:1];
  [v27 setDistribution:4];
  [v27 setAlignment:1];
  [v27 addArrangedSubview:v9];
  [v27 addArrangedSubview:v14];
  [v27 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [v17 addArrangedSubview:v27];
  [v17 addArrangedSubview:v18];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [*&v1[v26] contentView];
  [v21 addSubview:v17];

  v22 = *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteLabel];
  v23 = [v10 secondaryLabelColor];
  [v22 setTextColor:v23];

  [v22 setPreferredVibrancy:1];
  [v22 setTextAlignment:1];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteBlurView];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v24];
  v25 = [v24 contentView];
  [v25 addSubview:v22];

  v28 = 1;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  sub_10002569C(&v28);
}

id sub_100024ED0(void *a1)
{
  v2 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_assetImageView;
  *&v1[v2] = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_blurImageView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_labelStack;
  *&v1[v4] = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_titleLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_subtitleLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_linkLabel;
  *&v1[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteBlurView;
  v9 = objc_opt_self();
  v10 = [v9 effectWithStyle:6];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *&v1[v8] = v11;
  v12 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteLabel;
  *&v1[v12] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_linkFallbackView] = 0;
  v13 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_blurredEffectView;
  v14 = [v9 effectWithStyle:6];
  v15 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v14];

  *&v1[v13] = v15;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_sizeConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_asset] = 0;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for LinkAssetGridView();
  v16 = objc_msgSendSuper2(&v19, "initWithCoder:", a1);

  if (v16)
  {
  }

  return v16;
}

void sub_10002511C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_linkFallbackView];
  if (!v2)
  {
    v4 = objc_opt_self();
    v5 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_sizeConstraints;
    swift_beginAccess();
    sub_100010F50(0, &qword_10014CC08);

    isa = sub_1001011C4().super.isa;

    [v4 deactivateConstraints:isa];

    *&v1[v5] = _swiftEmptyArrayStorage;

    sub_100027EAC();
    v7 = v1[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType];
    if (((1 << v7) & 0x79) != 0)
    {
      [*&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_blurImageView] setHidden:1];
      [*&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteBlurView] setHidden:0];
      sub_100007210(&unk_10014D0F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10010C650;
      v9 = [*&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_assetImageView] trailingAnchor];
      v10 = [v1 trailingAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
    }

    else
    {
      if (((1 << v7) & 6) == 0)
      {
LABEL_10:

        v13 = sub_1001011C4().super.isa;

        [v4 activateConstraints:v13];

        return;
      }

      [*&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_blurImageView] setHidden:0];
      [*&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteBlurView] setHidden:1];
      sub_100007210(&unk_10014D0F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10010C650;
      v9 = [*&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_assetImageView] widthAnchor];
      v10 = [v1 heightAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
    }

    v12 = v11;

    *(inited + 32) = v12;
    swift_beginAccess();
    sub_10006FCCC(inited);
    swift_endAccess();
    goto LABEL_10;
  }

  v3 = v0[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType];
  v14 = v2;
  sub_10007B2B0(v3);
}

void sub_100025478()
{

  v1 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_asset);
}

id sub_100025558()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkAssetGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002569C(uint64_t *a1)
{
  v2 = v1;
  v4 = a1[2];
  v34 = a1[4];
  v5 = a1[5];
  v35 = a1[6];
  v6 = sub_1000FF8B4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100100F84();
  __chkstk_darwin(v7 - 8);
  v8 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_linkFallbackView;
  v9 = *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_linkFallbackView];
  if (v9)
  {
    [v9 removeFromSuperview];
  }

  v10 = *a1;
  v11 = *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_blurImageView];
  if (*a1 >= 2)
  {
    [v11 setHidden:0];
    [*&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteBlurView] setHidden:0];
    v14 = *&v1[v8];
    *&v1[v8] = 0;

    sub_100027820(a1);
LABEL_25:
    sub_10002511C();
    return;
  }

  v12 = 1802398060;
  [v11 setHidden:1];
  [*&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteBlurView] setHidden:1];
  v13 = 0xE400000000000000;
  if (v10 == 1)
  {
    v32 = 0xE400000000000000;
    v33 = 1802398060;
  }

  else
  {
    if (a1[8])
    {
      v12 = a1[7];
      v13 = a1[8];
    }

    v32 = v13;
    v33 = v12;
    if (v4)
    {
      v31 = v5;

      v15 = v34;
      goto LABEL_19;
    }
  }

  sub_100100F14();
  sub_1000FF8A4();
  sub_100101004();

  if (v10 == 1)
  {
    v5 = 0;
  }

  v31 = v5;
  if (v10 == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = v35;
  }

  v15 = v34;
  v35 = v16;
  if (v10 == 1)
  {
    v15 = 0;
  }

LABEL_19:
  v17 = [objc_allocWithZone(type metadata accessor for SymbolAndTextFallbackView()) initWithFrame:{0.0, 0.0, 0.0, 0.0, v31}];
  v18 = &v17[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_symbolName];
  *v18 = v33;
  v18[1] = v32;
  v19 = v17;

  v20 = *&v19[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleLabel];
  v21 = sub_100100F94();

  [v20 setText:v21];

  v22 = *&v19[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_subtitleLabel];
  v23 = v22;
  if (v15)
  {
    v24 = sub_100100F94();
  }

  else
  {
    v24 = 0;
  }

  v25 = v35;
  [v22 setText:v24];

  v26 = *&v19[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_captionLabel];
  v27 = v26;
  if (v35)
  {
    v25 = sub_100100F94();
  }

  [v26 setText:v25];

  v28 = OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleStack;
  [*&v19[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleStack] setAxis:1];
  [*&v19[v28] setDistribution:4];
  v29 = *&v19[v28];

  [v29 setAlignment:1];
  [v2 addSubview:v19];
  sub_100095E58(0.0);

  sub_10007B2B0(v2[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType]);
  v30 = *&v2[v8];
  *&v2[v8] = v19;

  if (*a1 != 1)
  {
    goto LABEL_25;
  }
}

uint64_t sub_100025AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v4 = sub_1000FFE34();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  sub_100007210(&qword_10014C358);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_100007210(&qword_10014EBD0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  sub_100101304();
  v3[22] = sub_1001012F4();
  v6 = sub_100101284();
  v3[23] = v6;
  v3[24] = v5;

  return _swift_task_switch(sub_100025C40, v6, v5);
}

uint64_t sub_100025C40()
{
  v1 = sub_10009968C();
  v0[25] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[26] = v3;
    *v3 = v0;
    v3[1] = sub_100025E9C;

    return sub_100028A18((v0 + 2), v2);
  }

  if (*(v0[13] + OBJC_IVAR____TtC21JournalShareExtension9LinkAsset_metadata))
  {
    v5 = v0[19];
    v6 = v0[15];
    v7 = v0[16];

    sub_10000935C(v5);

    if (!(*(v7 + 48))(v5, 1, v6))
    {
      v10 = v0[19];
      v12 = v0[16];
      v11 = v0[17];
      v13 = v0[15];
      (*(v12 + 16))(v11, v10, v13);
      sub_10000FFB4(v10, &qword_10014C358);
      sub_1000FFDF4();
      (*(v12 + 8))(v11, v13);
      goto LABEL_10;
    }

    sub_10000FFB4(v0[19], &qword_10014C358);
  }

  v8 = v0[21];
  v9 = sub_1000FF514();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
LABEL_10:
  v14 = swift_task_alloc();
  v0[32] = v14;
  *v14 = v0;
  v14[1] = sub_100026308;
  v15 = v0[21];

  return sub_100026804(v15, 0);
}

uint64_t sub_100025E9C()
{
  v1 = *v0;

  v1[27] = v1[2];
  v1[28] = v1[4];
  v1[29] = v1[6];
  v1[30] = v1[8];
  v1[31] = v1[10];
  v2 = v1[24];
  v3 = v1[23];

  return _swift_task_switch(sub_100026038, v3, v2);
}

uint64_t sub_100026038()
{
  if (v0[2] == 1)
  {
    if (*(v0[13] + OBJC_IVAR____TtC21JournalShareExtension9LinkAsset_metadata))
    {
      v1 = v0[18];
      v2 = v0[15];
      v3 = v0[16];

      sub_10000935C(v1);

      if (!(*(v3 + 48))(v1, 1, v2))
      {
        v12 = v0[17];
        v11 = v0[18];
        v13 = v0[15];
        v14 = v0[16];
        (*(v14 + 16))(v12, v11, v13);
        sub_10000FFB4(v11, &qword_10014C358);
        sub_1000FFDF4();
        (*(v14 + 8))(v12, v13);
        goto LABEL_10;
      }

      sub_10000FFB4(v0[18], &qword_10014C358);
    }

    v4 = v0[20];
    v5 = sub_1000FF514();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
LABEL_10:
    v15 = v0[13];
    v16 = swift_task_alloc();
    v0[33] = v16;
    *v16 = v0;
    v16[1] = sub_1000264F4;
    v17 = v0[20];

    return sub_100026804(v17, v15);
  }

  v6 = v0[27];
  v7 = v0[25];

  v8 = v6;

  sub_10002569C(v0 + 2);

  sub_10000FFB4((v0 + 2), &qword_10014CBE8);
  sub_10000FFB4((v0 + 2), &qword_10014CBE8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100026308()
{
  v1 = *v0;
  v2 = *(*v0 + 168);

  sub_10000FFB4(v2, &qword_10014EBD0);
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return _swift_task_switch(sub_10002645C, v4, v3);
}

uint64_t sub_10002645C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000264F4()
{
  v1 = *v0;
  v2 = *(*v0 + 160);

  sub_10000FFB4(v2, &qword_10014EBD0);
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);

  return _swift_task_switch(sub_100026648, v4, v3);
}

uint64_t sub_100026648()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000266E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100026728(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008030;

  return sub_100025AC4(a1, v5, v4);
}

uint64_t sub_100026804(uint64_t a1, uint64_t a2)
{
  v3[42] = a2;
  v3[43] = v2;
  v3[41] = a1;
  sub_1000FF8B4();
  v3[44] = swift_task_alloc();
  sub_100100F84();
  v3[45] = swift_task_alloc();
  sub_100007210(&qword_10014EBD0);
  v3[46] = swift_task_alloc();
  v4 = sub_1000FF514();
  v3[47] = v4;
  v3[48] = *(v4 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = sub_100101304();
  v3[51] = sub_1001012F4();
  v6 = sub_100101284();
  v3[52] = v6;
  v3[53] = v5;

  return _swift_task_switch(sub_100026990, v6, v5);
}

uint64_t sub_100026990()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];
  sub_100010014(v0[41], v3, &qword_10014EBD0);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[46];
  if (v4 == 1)
  {

    sub_10000FFB4(v5, &qword_10014EBD0);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[43];
    (*(v0[48] + 32))(v0[49], v0[46], v0[47]);
    v9 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_linkFallbackView;
    v10 = *(v8 + OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_linkFallbackView);
    if (v10)
    {
      [v10 removeFromSuperview];
    }

    v11 = v0[43];
    sub_100100F14();
    sub_1000FF8A4();
    sub_100101004();
    v12 = [objc_allocWithZone(type metadata accessor for SymbolAndTextFallbackView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v0[54] = v12;
    *&v12[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_symbolName] = xmmword_10010C660;
    v13 = v12;

    v14 = *&v13[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleLabel];
    v15 = sub_100100F94();

    [v14 setText:v15];

    [*&v13[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_subtitleLabel] setText:0];
    [*&v13[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_captionLabel] setText:0];
    v16 = OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleStack;
    [*&v13[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleStack] setAxis:1];
    [*&v13[v16] setDistribution:4];
    v17 = *&v13[v16];

    [v17 setAlignment:1];
    [v11 addSubview:v13];
    sub_100095E58(0.0);

    sub_10007B2B0(v11[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType]);
    v18 = *(v8 + v9);
    *(v8 + v9) = v13;
    v19 = v13;

    v20 = [objc_allocWithZone(LPMetadataProvider) init];
    v0[55] = v20;
    sub_1000FF474(v21);
    v23 = v22;
    v0[56] = v22;
    v0[2] = v0;
    v0[7] = v0 + 40;
    v0[3] = sub_100026DC8;
    v24 = swift_continuation_init();
    v0[39] = sub_100007210(&qword_10014CBF8);
    v0[32] = _NSConcreteStackBlock;
    v0[33] = 1107296256;
    v0[34] = sub_1000994EC;
    v0[35] = &unk_1001357D0;
    v0[36] = v24;
    [v20 startFetchingMetadataForURL:v23 completionHandler:v0 + 32];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100026DC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  v3 = *(v1 + 424);
  v4 = *(v1 + 416);
  if (v2)
  {
    v5 = sub_1000274D4;
  }

  else
  {
    v5 = sub_100026EF8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100026EF8()
{
  v1 = v0[56];
  v2 = v0[40];
  v0[58] = v2;

  v3 = swift_task_alloc();
  v0[59] = v3;
  *v3 = v0;
  v3[1] = sub_100026FA0;

  return sub_100028A18((v0 + 21), v2);
}

uint64_t sub_100026FA0()
{
  v1 = *v0;

  v2 = *(v1 + 424);
  v3 = *(v1 + 416);

  return _swift_task_switch(sub_1000270C0, v3, v2);
}

uint64_t sub_1000270C0()
{
  v1 = v0[42];
  sub_10002569C(v0 + 21);
  if (v1)
  {
    v2 = v0[58];
    v3 = v0[51];
    v4 = v2;
    v0[60] = sub_1001012F4();

    v5 = swift_task_alloc();
    v0[61] = v5;
    *v5 = v0;
    v5[1] = sub_100027264;

    return (sub_10009B498)(v3, &protocol witness table for MainActor, v2);
  }

  else
  {
    v7 = v0[58];
    v9 = v0[54];
    v8 = v0[55];
    (*(v0[48] + 8))(v0[49], v0[47]);

    sub_10000FFB4((v0 + 21), &qword_10014CBE8);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100027264()
{
  v1 = *v0;
  v2 = *(*v0 + 464);

  v3 = *(v1 + 424);
  v4 = *(v1 + 416);

  return _swift_task_switch(sub_1000273E4, v4, v3);
}

uint64_t sub_1000273E4()
{
  v1 = v0[58];
  v3 = v0[54];
  v2 = v0[55];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];
  sub_10000FFB4((v0 + 21), &qword_10014CBE8);

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000274D4()
{
  v25 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 440);

  swift_willThrow();

  if (qword_10014B5B0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 344);
  v4 = sub_100100AE4();
  sub_100003D38(v4, qword_10014CB18);
  v5 = v3;
  swift_errorRetain();
  v6 = sub_100100AC4();
  v7 = sub_1001015B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v8 = 136315650;
    if (qword_10014B5B8 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 344);
    v12 = sub_1000FF874();
    sub_100003D38(v12, qword_10014CB30);
    sub_100029FB8(&qword_10014C018, &type metadata accessor for UUID);
    v13 = sub_100101E44();
    v15 = sub_10007A774(v13, v14, &v24);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v11;
    *v9 = v11;
    *(v8 + 22) = 2112;
    v16 = v11;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v17;
    v9[1] = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s %@ error while fetching the metadata: %@", v8, 0x20u);
    sub_100007210(&unk_10014D660);
    swift_arrayDestroy();

    sub_10001100C(v10);
  }

  v18 = *(v0 + 432);
  v20 = *(v0 + 384);
  v19 = *(v0 + 392);
  v21 = *(v0 + 376);
  *(v0 + 80) = 1;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 145) = 0u;
  sub_10002569C((v0 + 80));

  (*(v20 + 8))(v19, v21);

  v22 = *(v0 + 8);

  return v22();
}

void sub_100027820(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 32);
  v37 = *(a1 + 24);
  v5 = *(a1 + 48);
  v36 = *(a1 + 40);
  v6 = sub_1000FF8B4();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100100F84();
  __chkstk_darwin(v7 - 8);
  v8 = *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_titleLabel];
  v35 = v3;
  if (v3 == 1 || !*(a1 + 16))
  {
    sub_100100F14();
    sub_1000FF8A4();
    sub_100101004();
  }

  else
  {
  }

  v9 = sub_100100F94();

  [v8 setText:v9];

  v10 = 0;
  v11 = *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_subtitleLabel];
  v12 = *a1;
  v13 = *(a1 + 32);
  v38 = v8;
  if (*a1 != 1 && v13)
  {
    v10 = sub_100100F94();
  }

  [v11 setText:v10];

  v14 = 0;
  v15 = *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_linkLabel];
  v16 = *(a1 + 48);
  if (v12 != 1 && v16)
  {
    v14 = sub_100100F94();
  }

  [v15 setText:v14];

  v17 = *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteLabel];
  if (v12 == 1)
  {
    [*&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteLabel] setText:0];
    [v38 setNumberOfLines:2];
    goto LABEL_23;
  }

  if (v16)
  {
    v34 = v5;
    v18 = v4;
LABEL_17:

    v19 = sub_100100F94();

    v4 = v18;
    v5 = v34;
    goto LABEL_18;
  }

  if (v4)
  {
    v34 = v5;

    v18 = v4;
    goto LABEL_17;
  }

  v19 = 0;
LABEL_18:
  [v17 setText:v19];

  v20 = v35;
  if (!v13 || !v5)
  {
    [v38 setNumberOfLines:2];
    v20 = v12;
  }

  if (v20)
  {
    v21 = *&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_blurImageView];
    v22 = v20;
    [v21 setImage:v22];
    [*&v1[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_assetImageView] setImage:v22];
  }

LABEL_23:
  sub_100007210(&qword_10014CC00);
  v23 = swift_allocObject();
  v24 = v23;
  *(v23 + 16) = xmmword_10010C670;
  if (v12 == 1)
  {
    *(v23 + 48) = 0u;
    *(v23 + 64) = 0u;
    *(v23 + 32) = 0u;
  }

  else
  {
    v41 = *(a1 + 8);
    *(v23 + 32) = v41;
    *(v23 + 48) = v37;
    *(v23 + 56) = v4;
    *(v23 + 64) = v36;
    *(v23 + 72) = v5;
    sub_100010014(&v41, v39, &qword_10014C210);
  }

  sub_10004B0BC(2570, 0xE200000000000000, v24);
  v26 = v25;
  swift_setDeallocating();
  sub_100007210(&qword_10014C210);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v26)
  {
    v27 = sub_100100F94();
  }

  else
  {
    v27 = 0;
  }

  [v1 setAccessibilityValue:v27];

  v28 = objc_opt_self();
  v29 = swift_allocObject();
  v30 = *(a1 + 48);
  *(v29 + 56) = *(a1 + 32);
  *(v29 + 72) = v30;
  *(v29 + 88) = *(a1 + 64);
  v31 = *(a1 + 16);
  *(v29 + 24) = *a1;
  *(v29 + 16) = v1;
  *(v29 + 104) = *(a1 + 80);
  *(v29 + 40) = v31;
  aBlock[4] = sub_10002A068;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2F3C;
  aBlock[3] = &unk_100135820;
  v32 = _Block_copy(aBlock);
  v33 = v1;
  sub_100010014(a1, v39, &qword_10014CBE8);

  [v28 animateWithDuration:65568 delay:v32 options:0 animations:0.1 completion:0.0];
  _Block_release(v32);
}

id sub_100027DD8(uint64_t a1, uint64_t *a2)
{
  [*(a1 + OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_blurImageView) setAlpha:1.0];
  [*(a1 + OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_assetImageView) setAlpha:1.0];
  v4 = *a2;
  if (*a2 == 1 || (a2[10] & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2[9];
  }

  [*(a1 + OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_blurredEffectView) setOverrideUserInterfaceStyle:v5];
  v6 = *(a1 + OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteLabel);
  if (v4 == 1 || (a2[10] & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2[9];
  }

  return [v6 setOverrideUserInterfaceStyle:v7];
}

void sub_100027EAC()
{
  sub_100007210(&unk_10014D0F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10010C680;
  v2 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_assetImageView;
  v3 = [*&v0[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_assetImageView] leadingAnchor];
  v4 = [v0 leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  *(v1 + 32) = v5;
  v6 = [*&v0[v2] topAnchor];
  v7 = [v0 topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v1 + 40) = v8;
  v9 = [*&v0[v2] bottomAnchor];
  v10 = [v0 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v1 + 48) = v11;
  v12 = *&v0[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_labelStack];
  v13 = [v12 leadingAnchor];
  v14 = [*&v0[v2] trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:12.0];

  *(v1 + 56) = v15;
  v16 = [v12 trailingAnchor];
  v17 = [v0 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-12.0];

  *(v1 + 64) = v18;
  v19 = [v12 centerYAnchor];
  v20 = [v0 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v1 + 72) = v21;
  v22 = [v12 topAnchor];
  v23 = [v0 topAnchor];
  v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23 constant:8.0];

  *(v1 + 80) = v24;
  v25 = [v12 bottomAnchor];
  v26 = [v0 bottomAnchor];
  v27 = [v25 constraintLessThanOrEqualToAnchor:v26 constant:8.0];

  *(v1 + 88) = v27;
  v28 = OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_sizeConstraints;
  swift_beginAccess();
  *&v0[v28] = v1;

  sub_10002825C();
}

void sub_10002825C()
{
  v1 = OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType;
  if (v0[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType] == 6)
  {

LABEL_4:
    sub_100007210(&qword_10014CC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010BC80;
    *(inited + 32) = UIFontWeightMedium;
    v4 = inited + 32;
    *(inited + 40) = 0;
    *(inited + 48) = 3;
    v5 = sub_10004D9E8(UIFontTextStyleCaption2, inited, 0);
    swift_setDeallocating();
    sub_10002A08C(v4);
    goto LABEL_6;
  }

  v2 = sub_100101E84();

  if (v2)
  {
    goto LABEL_4;
  }

  v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
LABEL_6:
  [*&v0[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteLabel] setFont:{v5, *&v0[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteLabel]}];
  if (v0[v1] == 6)
  {

    v6 = 0.0;
  }

  else
  {
    v7 = sub_100101E84();

    if (v7)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 4.0;
    }
  }

  v8 = *&v0[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_footnoteBlurView];
  v9 = [v8 layer];
  [v9 setCornerRadius:v6];

  v10 = [v8 layer];
  [v10 setMasksToBounds:v6 != 0.0];

  if (v0[v1] == 6)
  {

    v11 = 0.0;
  }

  else
  {
    v12 = sub_100101E84();

    if (v12)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 4.0;
    }
  }

  sub_100007210(&unk_10014D0F0);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_10010C690;
  v14 = [v8 leadingAnchor];
  v15 = [v0 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:v11];

  *(v13 + 32) = v16;
  v17 = [v8 trailingAnchor];
  v18 = [v0 trailingAnchor];
  v19 = -v11;
  v20 = [v17 constraintEqualToAnchor:v18 constant:v19];

  *(v13 + 40) = v20;
  v21 = [v8 bottomAnchor];
  v22 = [v0 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:v19];

  *(v13 + 48) = v23;
  v24 = [v36 leadingAnchor];
  v25 = [v8 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:8.0];

  *(v13 + 56) = v26;
  v27 = [v36 trailingAnchor];
  v28 = [v8 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-8.0];

  *(v13 + 64) = v29;
  v30 = [v36 topAnchor];
  v31 = [v8 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:8.0];

  *(v13 + 72) = v32;
  v33 = [v36 bottomAnchor];
  v34 = [v8 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:-8.0];

  *(v13 + 80) = v35;
  swift_beginAccess();
  sub_10006FCCC(v13);
  swift_endAccess();
}

uint64_t sub_100028A18(uint64_t a1, uint64_t a2)
{
  v2[37] = a1;
  v2[38] = a2;
  sub_100101304();
  v2[39] = sub_1001012F4();
  v4 = sub_100101284();
  v2[40] = v4;
  v2[41] = v3;

  return _swift_task_switch(sub_100028AB0, v4, v3);
}

uint64_t sub_100028AB0()
{
  v1 = *(v0 + 304);
  v2 = [objc_allocWithZone(LPLinkMetadataPresentationTransformer) init];
  *(v0 + 336) = v2;
  [v2 setMetadata:v1];
  v3 = [v2 presentationProperties];
  *(v0 + 344) = v3;
  if (([v3 respondsToSelector:"captionBar"] & 1) == 0)
  {
    *(v0 + 504) = 1;
    goto LABEL_6;
  }

  v4 = [v3 captionBar];
  *(v0 + 504) = 1;
  if (!v4)
  {
LABEL_6:
    swift_bridgeObjectRelease_n();
    v5 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v9 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [v4 top];
  v7 = [v6 leading];

  v8 = [v7 text];
  if (v8)
  {
    v9 = sub_100100FD4();
    v11 = v10;
  }

  else
  {

    v9 = 0;
    v11 = 0;
  }

  v16 = [v5 bottom];
  v17 = [v16 leading];

  v18 = [v17 text];
  if (v18)
  {
    v14 = sub_100100FD4();
    v15 = v19;
  }

  else
  {

    v14 = 0;
    v15 = 0;
  }

  v20 = [v5 belowBottom];
  v21 = [v20 leading];

  v22 = [v21 text];
  if (v22)
  {
    v12 = sub_100100FD4();
    v13 = v23;
  }

  else
  {

    v12 = 0;
    v13 = 0;
  }

LABEL_14:
  *(v0 + 392) = v9;
  *(v0 + 400) = v11;
  *(v0 + 376) = v14;
  *(v0 + 384) = v15;
  *(v0 + 360) = v12;
  *(v0 + 368) = v13;
  *(v0 + 352) = v5;
  v24 = [*(v0 + 304) imageProvider];
  *(v0 + 408) = v24;
  if (v24)
  {
    v25 = *(v0 + 312);

    if (v25)
    {
      swift_getObjectType();
      v26 = sub_100101284();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    *(v0 + 416) = v26;
    *(v0 + 424) = v28;
    v32 = sub_100028FF0;
LABEL_40:

    return _swift_task_switch(v32, v26, v28);
  }

  v29 = [*(v0 + 304) iconProvider];
  *(v0 + 456) = v29;
  v30 = *(v0 + 312);
  if (v29)
  {

    if (v30)
    {
      swift_getObjectType();
      v26 = sub_100101284();
      v28 = v31;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    *(v0 + 464) = v26;
    *(v0 + 472) = v28;
    v32 = sub_100029768;
    goto LABEL_40;
  }

  v33 = (v0 + 360);

  v34 = *(v0 + 400);
  if (v34 && ((v34 & 0x2000000000000000) != 0 ? (v35 = HIBYTE(v34) & 0xF) : (v35 = *(v0 + 392) & 0xFFFFFFFFFFFFLL), v35) || (v36 = *(v0 + 384)) != 0 && ((v36 & 0x2000000000000000) != 0 ? (v37 = HIBYTE(v36) & 0xF) : (v37 = *(v0 + 376) & 0xFFFFFFFFFFFFLL), v37) || (v38 = *(v0 + 368)) != 0 && ((v38 & 0x2000000000000000) != 0 ? (v39 = HIBYTE(v38) & 0xF) : (v39 = *v33 & 0xFFFFFFFFFFFFLL), v39))
  {
    v40 = *(v0 + 336);

    swift_unknownObjectRelease();
    *(v0 + 16) = 0;
    v41 = *(v0 + 376);
    *(v0 + 24) = *(v0 + 392);
    v42 = *v33;
    *(v0 + 40) = v41;
    *(v0 + 56) = v42;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 72) = 0;
    v43 = *(v0 + 504);
    *(v0 + 96) = v43;
    sub_100029F68(v0 + 16, v0 + 104);
    v44 = 0;
    v46 = *(v0 + 376);
    v45 = *(v0 + 392);
    v47 = *v33;
    v48 = v43;
    v54 = v46;
    v55 = v45;
    v53 = *v33;
  }

  else
  {
    v49 = *(v0 + 336);

    swift_unknownObjectRelease();
    v48 = 0;
    v43 = *(v0 + 504);
    v54 = 0u;
    v55 = 0u;
    v44 = 1;
    v53 = 0u;
    v46 = *(v0 + 376);
    v45 = *(v0 + 392);
    v47 = *v33;
  }

  v50 = *(v0 + 296);
  *(v0 + 192) = 0;
  *(v0 + 200) = v45;
  *(v0 + 216) = v46;
  *(v0 + 232) = v47;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  *(v0 + 248) = 0;
  *(v0 + 272) = v43;
  sub_1000267D4(v0 + 192);
  *v50 = v44;
  *(v50 + 8) = v55;
  *(v50 + 24) = v54;
  *(v50 + 40) = v53;
  *(v50 + 64) = 0;
  *(v50 + 72) = 0;
  *(v50 + 56) = 0;
  *(v50 + 80) = v48;
  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_100028FF0()
{
  v1 = v0[51];
  v2 = v0[39];
  v3 = swift_task_alloc();
  v0[54] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[55] = v4;
  v5 = sub_100010F50(0, &qword_10014CBF0);
  *v4 = v0;
  v4[1] = sub_10002910C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 35, v2, &protocol witness table for MainActor, 0x656A624F64616F6CLL, 0xEF293A666F287463, sub_100029F60, v3, v5);
}

uint64_t sub_10002910C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 416);
    v4 = *(v2 + 424);
    v5 = sub_1000294A4;
  }

  else
  {

    v3 = *(v2 + 416);
    v4 = *(v2 + 424);
    v5 = sub_100029250;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100029250()
{

  *(v0 + 448) = *(v0 + 280);
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_1000292C8, v1, v2);
}

uint64_t sub_1000292C8()
{

  v1 = *(v0 + 448);
  if ([*(v0 + 344) respondsToSelector:"dominantImageBackgroundColor"])
  {
    v2 = [*(v0 + 344) dominantImageBackgroundColor];
    v3 = *(v0 + 352);
    v4 = *(v0 + 336);
    if (v2)
    {
      v5 = v2;
      v6 = [v2 CGColor];
      UISColorLuminance();
      v8 = v7;

      swift_unknownObjectRelease();
      if (v8 > 0.5)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      *(v0 + 504) = 0;
      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = *(v0 + 352);

    swift_unknownObjectRelease();
  }

  v9 = 0;
LABEL_10:
  *(v0 + 16) = v1;
  v11 = *(v0 + 376);
  *(v0 + 24) = *(v0 + 392);
  v12 = *(v0 + 360);
  *(v0 + 40) = v11;
  *(v0 + 56) = v12;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = v9;
  v13 = *(v0 + 504);
  *(v0 + 96) = v13;
  sub_100029F68(v0 + 16, v0 + 104);
  v14 = *(v0 + 392);
  v23 = *(v0 + 400);
  v16 = *(v0 + 376);
  v15 = *(v0 + 384);
  v18 = *(v0 + 360);
  v17 = *(v0 + 368);
  v19 = v1;
  v20 = *(v0 + 296);
  *(v0 + 192) = v19;
  *(v0 + 200) = v14;
  *(v0 + 208) = v23;
  *(v0 + 216) = v16;
  *(v0 + 224) = v15;
  *(v0 + 232) = v18;
  *(v0 + 240) = v17;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  *(v0 + 264) = v9;
  *(v0 + 272) = v13;
  sub_1000267D4(v0 + 192);
  *v20 = v19;
  *(v20 + 8) = v14;
  *(v20 + 16) = v23;
  *(v20 + 24) = v16;
  *(v20 + 32) = v15;
  *(v20 + 40) = v18;
  *(v20 + 48) = v17;
  *(v20 + 56) = 0;
  *(v20 + 64) = 0;
  *(v20 + 72) = v9;
  *(v20 + 80) = v13;
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000294A4()
{
  v1 = v0[51];

  v2 = v0[40];
  v3 = v0[41];

  return _swift_task_switch(sub_100029510, v2, v3);
}

uint64_t sub_100029510()
{
  v1 = [*(v0 + 304) iconProvider];
  *(v0 + 456) = v1;
  v2 = *(v0 + 312);
  if (v1)
  {

    if (v2)
    {
      swift_getObjectType();
      v3 = sub_100101284();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    *(v0 + 464) = v3;
    *(v0 + 472) = v5;

    return _swift_task_switch(sub_100029768, v3, v5);
  }

  else
  {
    v6 = (v0 + 360);

    v7 = *(v0 + 400);
    if (v7 && ((v7 & 0x2000000000000000) != 0 ? (v8 = HIBYTE(v7) & 0xF) : (v8 = *(v0 + 392) & 0xFFFFFFFFFFFFLL), v8) || (v9 = *(v0 + 384)) != 0 && ((v9 & 0x2000000000000000) != 0 ? (v10 = HIBYTE(v9) & 0xF) : (v10 = *(v0 + 376) & 0xFFFFFFFFFFFFLL), v10) || (v11 = *(v0 + 368)) != 0 && ((v11 & 0x2000000000000000) != 0 ? (v12 = HIBYTE(v11) & 0xF) : (v12 = *(v0 + 360) & 0xFFFFFFFFFFFFLL), v12))
    {
      v13 = *(v0 + 336);

      swift_unknownObjectRelease();
      *(v0 + 16) = 0;
      v14 = *(v0 + 376);
      *(v0 + 24) = *(v0 + 392);
      v15 = *v6;
      *(v0 + 40) = v14;
      *(v0 + 56) = v15;
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 72) = 0;
      v16 = *(v0 + 504);
      *(v0 + 96) = v16;
      sub_100029F68(v0 + 16, v0 + 104);
      v17 = 0;
      v19 = *(v0 + 376);
      v18 = *(v0 + 392);
      v20 = *v6;
      v21 = v16;
      v27 = v19;
      v28 = v18;
      v26 = *v6;
    }

    else
    {
      v22 = *(v0 + 336);

      swift_unknownObjectRelease();
      v21 = 0;
      v16 = *(v0 + 504);
      v27 = 0u;
      v28 = 0u;
      v17 = 1;
      v26 = 0u;
      v19 = *(v0 + 376);
      v18 = *(v0 + 392);
      v20 = *v6;
    }

    v23 = *(v0 + 296);
    *(v0 + 192) = 0;
    *(v0 + 200) = v18;
    *(v0 + 216) = v19;
    *(v0 + 232) = v20;
    *(v0 + 256) = 0;
    *(v0 + 264) = 0;
    *(v0 + 248) = 0;
    *(v0 + 272) = v16;
    sub_1000267D4(v0 + 192);
    *v23 = v17;
    *(v23 + 8) = v28;
    *(v23 + 24) = v27;
    *(v23 + 40) = v26;
    *(v23 + 64) = 0;
    *(v23 + 72) = 0;
    *(v23 + 56) = 0;
    *(v23 + 80) = v21;
    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_100029768()
{
  v1 = v0[57];
  v2 = v0[39];
  v3 = swift_task_alloc();
  v0[60] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[61] = v4;
  v5 = sub_100010F50(0, &qword_10014CBF0);
  *v4 = v0;
  v4[1] = sub_100029884;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 36, v2, &protocol witness table for MainActor, 0x656A624F64616F6CLL, 0xEF293A666F287463, sub_10002A1DC, v3, v5);
}

uint64_t sub_100029884()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_100029D34;
  }

  else
  {

    v3 = *(v2 + 464);
    v4 = *(v2 + 472);
    v5 = sub_1000299C8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000299C8()
{

  *(v0 + 496) = *(v0 + 288);
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  return _swift_task_switch(sub_100029A40, v1, v2);
}

uint64_t sub_100029A40()
{
  v1 = (v0 + 360);
  v2 = *(v0 + 496);

  [v2 size];
  v3 = *(v0 + 496);
  if (v4 >= 300.0)
  {
    [*(v0 + 496) size];
    v3 = *(v0 + 496);
    if (v5 >= 300.0)
    {
      if ([*(v0 + 344) respondsToSelector:"dominantImageBackgroundColor"])
      {
        v25 = [*(v0 + 344) dominantImageBackgroundColor];
        v26 = *(v0 + 352);
        v27 = *(v0 + 336);
        if (v25)
        {
          v28 = v25;
          v29 = [v25 CGColor];
          UISColorLuminance();
          v31 = v30;

          swift_unknownObjectRelease();
          if (v31 > 0.5)
          {
            v13 = 1;
          }

          else
          {
            v13 = 2;
          }

          *(v0 + 504) = 0;
          goto LABEL_20;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v33 = *(v0 + 352);

        swift_unknownObjectRelease();
      }

LABEL_19:
      v13 = 0;
LABEL_20:
      *(v0 + 16) = v3;
      v14 = *(v0 + 376);
      *(v0 + 24) = *(v0 + 392);
      v15 = *v1;
      *(v0 + 40) = v14;
      *(v0 + 56) = v15;
      *(v0 + 72) = 0;
      *(v0 + 80) = 0;
      *(v0 + 88) = v13;
      v16 = *(v0 + 504);
      *(v0 + 96) = v16;
      sub_100029F68(v0 + 16, v0 + 104);
      v18 = *(v0 + 376);
      v17 = *(v0 + 392);
      v19 = v16;
      v20 = *v1;
      v21 = v3;
      v35 = v18;
      v36 = v17;
      v34 = *v1;
      goto LABEL_21;
    }
  }

  v6 = *(v0 + 400);
  if (v6 && ((v6 & 0x2000000000000000) != 0 ? (v7 = HIBYTE(v6) & 0xF) : (v7 = *(v0 + 392) & 0xFFFFFFFFFFFFLL), v7) || (v8 = *(v0 + 384)) != 0 && ((v8 & 0x2000000000000000) != 0 ? (v9 = HIBYTE(v8) & 0xF) : (v9 = *(v0 + 376) & 0xFFFFFFFFFFFFLL), v9) || (v10 = *(v0 + 368)) != 0 && ((v10 & 0x2000000000000000) != 0 ? (v11 = HIBYTE(v10) & 0xF) : (v11 = *(v0 + 360) & 0xFFFFFFFFFFFFLL), v11))
  {
    v12 = *(v0 + 336);

    swift_unknownObjectRelease();
    v3 = 0;
    goto LABEL_19;
  }

  v32 = *(v0 + 336);

  swift_unknownObjectRelease();
  v13 = 0;
  v19 = 0;
  v21 = 0;
  v16 = *(v0 + 504);
  v35 = 0u;
  v36 = 0u;
  v3 = 1;
  v34 = 0u;
  v18 = *(v0 + 376);
  v17 = *(v0 + 392);
  v20 = *v1;
LABEL_21:
  v22 = *(v0 + 296);
  *(v0 + 192) = v21;
  *(v0 + 200) = v17;
  *(v0 + 216) = v18;
  *(v0 + 232) = v20;
  *(v0 + 248) = 0;
  *(v0 + 256) = 0;
  *(v0 + 264) = v13;
  *(v0 + 272) = v16;
  sub_1000267D4(v0 + 192);
  *v22 = v3;
  *(v22 + 8) = v36;
  *(v22 + 24) = v35;
  *(v22 + 40) = v34;
  *(v22 + 56) = 0;
  *(v22 + 64) = 0;
  *(v22 + 72) = v13;
  *(v22 + 80) = v19;
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_100029D34()
{
  v1 = v0[57];

  v2 = v0[40];
  v3 = v0[41];

  return _swift_task_switch(sub_100029DA0, v2, v3);
}

uint64_t sub_100029DA0()
{
  v1 = (v0 + 360);

  v2 = *(v0 + 400);
  if (v2 && ((v2 & 0x2000000000000000) != 0 ? (v3 = HIBYTE(v2) & 0xF) : (v3 = *(v0 + 392) & 0xFFFFFFFFFFFFLL), v3) || (v4 = *(v0 + 384)) != 0 && ((v4 & 0x2000000000000000) != 0 ? (v5 = HIBYTE(v4) & 0xF) : (v5 = *(v0 + 376) & 0xFFFFFFFFFFFFLL), v5) || (v6 = *(v0 + 368)) != 0 && ((v6 & 0x2000000000000000) != 0 ? (v7 = HIBYTE(v6) & 0xF) : (v7 = *(v0 + 360) & 0xFFFFFFFFFFFFLL), v7))
  {
    v8 = *(v0 + 336);

    swift_unknownObjectRelease();
    *(v0 + 16) = 0;
    v9 = *(v0 + 376);
    *(v0 + 24) = *(v0 + 392);
    v10 = *v1;
    *(v0 + 40) = v9;
    *(v0 + 56) = v10;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 72) = 0;
    v11 = *(v0 + 504);
    *(v0 + 96) = v11;
    sub_100029F68(v0 + 16, v0 + 104);
    v12 = 0;
    v14 = *(v0 + 376);
    v13 = *(v0 + 392);
    v15 = *v1;
    v16 = v11;
    v22 = v14;
    v23 = v13;
    v21 = *v1;
  }

  else
  {
    v17 = *(v0 + 336);

    swift_unknownObjectRelease();
    v16 = 0;
    v11 = *(v0 + 504);
    v22 = 0u;
    v23 = 0u;
    v12 = 1;
    v21 = 0u;
    v14 = *(v0 + 376);
    v13 = *(v0 + 392);
    v15 = *v1;
  }

  v18 = *(v0 + 296);
  *(v0 + 192) = 0;
  *(v0 + 200) = v13;
  *(v0 + 216) = v14;
  *(v0 + 232) = v15;
  *(v0 + 256) = 0;
  *(v0 + 264) = 0;
  *(v0 + 248) = 0;
  *(v0 + 272) = v11;
  sub_1000267D4(v0 + 192);
  *v18 = v12;
  *(v18 + 8) = v23;
  *(v18 + 24) = v22;
  *(v18 + 40) = v21;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  *(v18 + 56) = 0;
  *(v18 + 80) = v16;
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100029FB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002A000()
{
  v1 = *(v0 + 24);
  if (v1 != 1)
  {
  }

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_10002A074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10002A0E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10002A104(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10002A160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10002A1E0()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014CC18);
  v1 = sub_100003D38(v0, qword_10014CC18);
  if (qword_10014B888 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158828);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10002A2B8(void *a1)
{
  v2 = v1;
  v4 = sub_1001007D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_videoAsset;
  v9 = *(v2 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_videoAsset);
  if (a1)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    type metadata accessor for VideoAsset();
    v10 = v9;
    v11 = a1;
    v12 = sub_100101A34();

    if (v12)
    {
      return;
    }

    v9 = *(v2 + v8);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else if (!v9)
  {
    return;
  }

  (*(v5 + 16))(v7, v9 + OBJC_IVAR____TtC21JournalShareExtension5Asset_type, v4);
  sub_1000801E4();
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  if (!v14)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v15 = sub_100100F94();

LABEL_10:
  [v2 setAccessibilityLabel:v15];

  sub_10002B268();
  v16 = *(v2 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView);
  if (v16)
  {
    v16 = [v16 setAlpha:0.0];
  }

  (*((swift_isaMask & *v2) + 0x2C0))(v16);
  v17 = *(v2 + v8);
  if (v17)
  {
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = &v17[OBJC_IVAR____TtC21JournalShareExtension5Asset_didUpdate];
    v20 = *&v17[OBJC_IVAR____TtC21JournalShareExtension5Asset_didUpdate];
    *v19 = sub_10002FB78;
    v19[1] = v18;
    v21 = v17;

    sub_10002FB80(v20);

    v22 = *(v2 + v8);
    if (v22)
    {
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = &v22[OBJC_IVAR____TtC21JournalShareExtension5Asset_didUpdateMediaFile];
      v25 = *&v22[OBJC_IVAR____TtC21JournalShareExtension5Asset_didUpdateMediaFile];
      *v24 = sub_10002FB90;
      v24[1] = v23;
      v26 = v22;

      sub_10002FB80(v25);
    }
  }
}

void sub_10002A5C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10002B268();
  }
}

void sub_10002A618()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x2C0))();
  }
}

void *sub_10002A6A4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_timeObserver];
  *v9 = 0u;
  v9[1] = 0u;
  *&v4[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerStatusObserver] = 0;
  *&v4[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerTimeControlStatusObserver] = 0;
  v10 = OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_thumbnailView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView] = 0;
  v11 = &v4[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_finishPlayingAction];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_isLoaded] = 0;
  v4[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_didThumbnailFinishLoading] = 0;
  *&v4[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_videoAsset] = 0;
  *&v4[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_thumbnailOverride] = 0;
  v12 = OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_latestImageRequestID;
  v13 = sub_1000FF874();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v4[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_isAutoPlaying] = 0;
  v14 = CADynamicRangeHigh;
  *&v4[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_preferredVideoDynamicRange] = CADynamicRangeHigh;
  *&v4[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_resourceConservationLevelWhilePaused] = 0;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for VideoAssetView();
  v15 = v14;
  v16 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v17 = *((swift_isaMask & *v16) + 0x290);
  v18 = v16;
  v17(v18, v19);

  return v18;
}

void *sub_10002A8CC(void *a1)
{
  *&v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_timeObserver];
  *v3 = 0u;
  v3[1] = 0u;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerStatusObserver] = 0;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerTimeControlStatusObserver] = 0;
  v4 = OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_thumbnailView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView] = 0;
  v5 = &v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_finishPlayingAction];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_isLoaded] = 0;
  v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_didThumbnailFinishLoading] = 0;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_videoAsset] = 0;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_thumbnailOverride] = 0;
  v6 = OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_latestImageRequestID;
  v7 = sub_1000FF874();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_isAutoPlaying] = 0;
  v8 = CADynamicRangeHigh;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_preferredVideoDynamicRange] = CADynamicRangeHigh;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_resourceConservationLevelWhilePaused] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for VideoAssetView();
  v9 = v8;
  v10 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);
  v11 = v10;
  if (v10)
  {
    v12 = *((swift_isaMask & *v10) + 0x290);
    v13 = v10;
    v12(v13, v14);
  }

  return v11;
}

void sub_10002AAD8()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_fallbackView]];
  v1 = *&v0[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_thumbnailView];
  [v0 addSubview:v1];
  [v1 setContentMode:2];
  [v1 setAlpha:0.0];
  [v0 setIsAccessibilityElement:1];
  v2 = sub_100100F94();
  [v0 setAccessibilityIdentifier:v2];

  [v0 setAccessibilityIgnoresInvertColors:1];
  [v0 setClipsToBounds:0];
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  [v4 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:UIAccessibilityVideoAutoplayStatusDidChangeNotification object:0];

  v5 = [v3 defaultCenter];
  [v5 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 5)
  {
    v8 = [v3 defaultCenter];
    v9 = sub_1001017D4();
    [v8 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:v9 object:0];
  }
}

void sub_10002AD20()
{
  sub_10002FC00(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_delegate);
  sub_10000FFB4(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_timeObserver, &qword_10014CA68);

  sub_10002FB80(*(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_finishPlayingAction));
  sub_10000FFB4(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_latestImageRequestID, &qword_10014CD08);
  v1 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_preferredVideoDynamicRange);
}

id sub_10002AE14()
{
  sub_10002B098();
  sub_10002F1B4();
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = *&v0[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView];
  *&v0[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView] = 0;

  v4.receiver = v0;
  v4.super_class = type metadata accessor for VideoAssetView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for VideoAssetView()
{
  result = qword_10014CCC0;
  if (!qword_10014CCC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002B098()
{
  v1 = (v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_finishPlayingAction);
  v2 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_finishPlayingAction);
  *v1 = 0;
  v1[1] = 0;
  sub_10002FB80(v2);
  v3 = OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView;
  v4 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 layer];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    v8 = [v7 player];

    [v8 pause];
    v9 = *(v0 + v3);
    if (v9)
    {
      v10 = v9;
      v11 = [v10 layer];
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
      }

      v13 = [v12 player];

      if (v13)
      {
        [v13 replaceCurrentItemWithPlayerItem:0];
      }

      v14 = *(v0 + v3);
      if (v14)
      {
        v15 = v14;
        v16 = [v15 layer];
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (!v17)
        {
        }

        [v17 setPlayer:0];
      }
    }
  }

  *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_isLoaded) = 0;
  *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_isAutoPlaying) = 0;
}

uint64_t sub_10002B268()
{
  v1 = v0;
  v2 = sub_100007210(&qword_10014CD08);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - v3;
  v5 = sub_1000FF874();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  v7 = __chkstk_darwin(v5);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = sub_1000FF804();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  v12 = __chkstk_darwin(v10);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v52 - v13;
  v14 = sub_1000FFB34();
  v15 = *(v14 - 8);
  result = __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_videoAsset];
  if (v19 && !*&v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_thumbnailOverride])
  {
    (*(v15 + 104))(v18, enum case for JournalFeatureFlags.debug(_:), v14);
    v20 = v19;
    v21 = v1;
    v22 = sub_1000FFB24();
    (*(v15 + 8))(v18, v14);
    if (v22)
    {
      v23 = *&v20[OBJC_IVAR____TtC21JournalShareExtension10VideoAsset_metadata];
      v24 = [v21 layer];
      v25 = v24;
      if (v23)
      {
        [v24 setBorderColor:0];
        v26 = 0.0;
      }

      else
      {
        v27 = [objc_opt_self() redColor];
        v28 = [v27 CGColor];

        [v25 setBorderColor:v28];
        v26 = 5.0;
        v25 = v28;
      }

      v29 = [v21 layer];
      [v29 setBorderWidth:v26];
    }

    sub_1000FF7F4();
    v52 = OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType;
    v30 = v21[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType];
    v55 = v20;
    if (v30 > 6)
    {
    }

    else
    {
      v31 = sub_100101E84();

      if ((v31 & 1) == 0)
      {
        v32 = v21;
        if (qword_10014B5E0 != -1)
        {
          swift_once();
        }

        v33 = &qword_100158470;
LABEL_17:
        v34 = *v33;
        v53 = v9;
        v54 = v34;
        sub_1000FF864();
        v36 = v60;
        v35 = v61;
        v37 = *(v60 + 16);
        v37(v4, v9, v61);
        (*(v36 + 56))(v4, 0, 1, v35);
        v38 = OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_latestImageRequestID;
        swift_beginAccess();
        sub_10001007C(v4, &v32[v38], &qword_10014CD08);
        swift_endAccess();
        LODWORD(v52) = v32[v52];
        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = v57;
        v37(v57, v9, v35);
        v41 = v58;
        v42 = v59;
        v43 = v56;
        (*(v58 + 16))(v56, v62, v59);
        v44 = (*(v36 + 80) + 24) & ~*(v36 + 80);
        v45 = (v6 + *(v41 + 80) + v44) & ~*(v41 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = v39;
        v47 = v61;
        (*(v36 + 32))(v46 + v44, v40, v61);
        (*(v41 + 32))(v46 + v45, v43, v42);
        v48 = objc_opt_self();

        v49 = [v48 currentTraitCollection];
        v50 = v54;
        v51 = v55;
        sub_10003FB24(v52, 0, 1, v54, v49, sub_10002FFF0, v46);

        (*(v36 + 8))(v53, v47);
        (*(v41 + 8))(v62, v42);
      }
    }

    v32 = v21;
    if (qword_10014B5E8 != -1)
    {
      swift_once();
    }

    v33 = &qword_100158478;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_10002B9F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v34 = a1;
  v37 = sub_100100C44();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100100CB4();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000FF804();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v30);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000FF874();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010F50(0, &qword_10014E300);
  v33 = sub_100101704();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v10 + 16))(v12, v31, v9);
  v15 = v29;
  v16 = v30;
  (*(v7 + 16))(v29, v32, v30);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v34;
  *(v19 + 16) = v13;
  *(v19 + 24) = v20;
  (*(v10 + 32))(v19 + v17, v12, v28);
  (*(v7 + 32))(v19 + v18, v15, v16);
  aBlock[4] = sub_100030220;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2F3C;
  aBlock[3] = &unk_100135BA8;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  v23 = v35;
  sub_100100C64();
  v41 = _swiftEmptyArrayStorage;
  sub_1000302F8(&qword_10014D090, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007210(&qword_10014E310);
  sub_10002FCF8();
  v25 = v36;
  v24 = v37;
  sub_100101B64();
  v26 = v33;
  sub_100101714();
  _Block_release(v21);

  (*(v40 + 8))(v25, v24);
  (*(v38 + 8))(v23, v39);
}

void sub_10002BED4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v6 = sub_1000FF804();
  v69 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v60 - v9;
  v10 = sub_100007210(&unk_10014D640);
  v11 = __chkstk_darwin(v10 - 8);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v60 - v13;
  v14 = sub_1000FF874();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v67 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007210(&qword_10014CD10);
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  v20 = sub_100007210(&qword_10014CD08);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v60 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v61 = v6;
      v62 = a2;
      v27 = Strong;
      (*(v15 + 16))(v25, a3, v14);
      (*(v15 + 56))(v25, 0, 1, v14);
      v28 = OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_latestImageRequestID;
      swift_beginAccess();
      v29 = *(v17 + 48);
      sub_100010014(v25, v19, &qword_10014CD08);
      v63 = v27;
      sub_100010014(&v27[v28], &v19[v29], &qword_10014CD08);
      v30 = *(v15 + 48);
      if (v30(v19, 1, v14) == 1)
      {
        v31 = v62;
        v32 = v62;
        sub_10000FFB4(v25, &qword_10014CD08);
        if (v30(&v19[v29], 1, v14) == 1)
        {
          sub_10000FFB4(v19, &qword_10014CD08);
          goto LABEL_15;
        }
      }

      else
      {
        sub_100010014(v19, v23, &qword_10014CD08);
        v36 = v30(&v19[v29], 1, v14);
        v31 = v62;
        if (v36 != 1)
        {
          v38 = &v19[v29];
          v39 = v67;
          (*(v15 + 32))(v67, v38, v14);
          sub_1000302F8(&qword_10014CD18, &type metadata accessor for UUID);
          v40 = v31;
          v41 = sub_100100F04();
          v42 = *(v15 + 8);
          v42(v39, v14);
          sub_10000FFB4(v25, &qword_10014CD08);
          v42(v23, v14);
          v31 = v62;
          sub_10000FFB4(v19, &qword_10014CD08);
          if ((v41 & 1) == 0)
          {

            return;
          }

LABEL_15:
          v43 = v63;
          [*&v63[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_thumbnailView] setImage:v31];
          v44 = 1;
          (*((swift_isaMask & *v43) + 0x250))(1);
          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          if (*(v43 + OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType) > 3u)
          {
            v47 = v69;
            v46 = v70;
            v48 = v61;
            if (*(v43 + OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType) > 5u && *(v43 + OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType) != 6)
            {
LABEL_22:

              (*(v47 + 16))(v46, v68, v48);
              (*(v47 + 56))(v46, 0, 1, v48);
              if (v44)
              {
                goto LABEL_23;
              }

              v52 = v66;
              sub_100010014(v46, v66, &unk_10014D640);
              if ((*(v47 + 48))(v52, 1, v48) == 1)
              {
                sub_10000FFB4(v52, &unk_10014D640);
              }

              else
              {
                v53 = v64;
                (*(v47 + 32))(v64, v52, v48);
                v54 = v65;
                sub_1000FF7C4();
                sub_1000FF734();
                v56 = v55;
                v57 = *(v47 + 8);
                v57(v54, v48);
                v57(v53, v48);
                if (v56 < 0.1)
                {
LABEL_23:
                  swift_beginAccess();
                  v49 = swift_unknownObjectWeakLoadStrong();
                  if (v49)
                  {
                    v50 = v49;
                    v51 = *(v49 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_thumbnailView);

                    [v51 setAlpha:1.0];

LABEL_30:
                    sub_10000FFB4(v46, &unk_10014D640);

                    return;
                  }

LABEL_29:

                  goto LABEL_30;
                }
              }

              v58 = objc_opt_self();
              aBlock[4] = sub_1000302F0;
              aBlock[5] = v45;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1000D2F3C;
              aBlock[3] = &unk_100135BD0;
              v59 = _Block_copy(aBlock);

              [v58 animateWithDuration:0x10000 delay:v59 options:0 animations:0.1 completion:0.0];
              _Block_release(v59);
              goto LABEL_29;
            }
          }

          else
          {
            v47 = v69;
            v46 = v70;
            v48 = v61;
          }

          v44 = sub_100101E84();
          goto LABEL_22;
        }

        v37 = v62;
        sub_10000FFB4(v25, &qword_10014CD08);
        (*(v15 + 8))(v23, v14);
      }

      sub_10000FFB4(v19, &qword_10014CD10);

      return;
    }
  }

  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v33[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_isAssetFinishedLoading] = 1;
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    (*((swift_isaMask & *v34) + 0x250))(0);
  }
}

void sub_10002C974()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_thumbnailView);

    [v2 setAlpha:1.0];
  }
}

id sub_10002C9F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
  }

  v5 = [v4 player];

  return v5;
}

uint64_t sub_10002CA98()
{
  v1 = sub_100100C44();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100100CB4();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_isLoaded) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_isLoaded) = 1;
    v10 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_videoAsset);
    if (v10)
    {
      v25 = v2;
      v26 = result;
      v11 = qword_10014B5E0;
      v12 = v10;
      if (v11 != -1)
      {
        swift_once();
      }

      v24 = qword_100158470;
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView);
      if (v14)
      {
        v15 = v14;
        v16 = [v15 layer];
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (!v17)
        {
        }

        v18 = [v17 player];
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_resourceConservationLevelWhilePaused);
      v20 = swift_allocObject();
      v20[2] = v13;
      v20[3] = v12;
      v20[4] = v18;
      v20[5] = v19;
      aBlock[4] = sub_10002FE30;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D2F3C;
      aBlock[3] = &unk_100135AB8;
      v21 = _Block_copy(aBlock);
      v22 = v18;
      v23 = v12;

      sub_100100C64();
      v27 = _swiftEmptyArrayStorage;
      sub_1000302F8(&qword_10014D090, &type metadata accessor for DispatchWorkItemFlags);
      sub_100007210(&qword_10014E310);
      sub_10002FCF8();
      sub_100101B64();
      sub_100101714();
      _Block_release(v21);

      (*(v25 + 8))(v4, v1);
      (*(v6 + 8))(v9, v26);
    }
  }

  return result;
}

void sub_10002CE78(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v64 = a3;
  v65 = a4;
  v5 = sub_100100C44();
  v68 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100100CB4();
  v66 = *(v8 - 8);
  v67 = v8;
  __chkstk_darwin(v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007210(&qword_10014EBD0);
  __chkstk_darwin(v11 - 8);
  v13 = &v59 - v12;
  v14 = sub_1000FF514();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v63 = v5;
    sub_1000C8CD0(0, 1);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_10000FFB4(v13, &qword_10014EBD0);
      v19[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_isAssetFinishedLoading] = 1;
      sub_100010F50(0, &qword_10014E300);
      v20 = sub_100101704();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v73 = sub_10002FE3C;
      v74 = v21;
      aBlock = _NSConcreteStackBlock;
      v70 = 1107296256;
      v71 = sub_1000D2F3C;
      v72 = &unk_100135AE0;
      v22 = _Block_copy(&aBlock);

      sub_100100C64();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000302F8(&qword_10014D090, &type metadata accessor for DispatchWorkItemFlags);
      sub_100007210(&qword_10014E310);
      sub_10002FCF8();
      v23 = v63;
      sub_100101B64();
      sub_100101714();
      _Block_release(v22);

      (*(v68 + 8))(v7, v23);
      (*(v66 + 8))(v10, v67);
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      v24 = v19[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType];
      v25 = v19;
      if (sub_100079300(v24))
      {

        v26 = [objc_opt_self() sharedInstance];
        aBlock = 0;
        v27 = [v26 setCategory:AVAudioSessionCategoryPlayback withOptions:1 error:&aBlock];

        if (v27)
        {
          v28 = aBlock;
        }

        else
        {
          v29 = aBlock;
          v30 = sub_1000FF334();

          swift_willThrow();
          if (qword_10014B5C8 != -1)
          {
            swift_once();
          }

          v31 = sub_100100AE4();
          sub_100003D38(v31, qword_10014CC18);
          swift_errorRetain();
          v32 = sub_100100AC4();
          v33 = sub_1001015B4();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            LODWORD(v61) = v33;
            v62 = v30;
            v35 = v34;
            v60 = swift_slowAlloc();
            aBlock = v60;
            *v35 = 136315138;
            swift_getErrorValue();
            v59 = v32;
            v36 = sub_100101F14();
            v38 = v25;
            v39 = sub_10007A774(v36, v37, &aBlock);

            *(v35 + 4) = v39;
            v25 = v38;
            v40 = v59;
            _os_log_impl(&_mh_execute_header, v59, v61, "Failed to set video player audio: %s", v35, 0xCu);
            sub_10001100C(v60);
          }

          else
          {
          }
        }

        v41 = objc_allocWithZone(AVURLAsset);
        sub_1000FF474(v42);
        v44 = v43;
        v45 = [v41 initWithURL:v43 options:0];

        v46 = objc_allocWithZone(AVPlayerItem);
        v62 = v45;
        v47 = [v46 initWithAsset:v45];
        v48 = v64;
        if (v64)
        {
          v49 = v64;
        }

        else
        {
          v49 = [objc_allocWithZone(AVPlayer) init];
        }

        v50 = v48;
        [v49 setResourceConservationLevelWhilePaused:v65];
        [v49 replaceCurrentItemWithPlayerItem:v47];
        sub_100010F50(0, &qword_10014E300);
        v65 = sub_100101704();
        v51 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v52 = swift_allocObject();
        v52[2] = v51;
        v52[3] = v49;
        v52[4] = a2;
        v52[5] = v47;
        v73 = sub_10002FE94;
        v74 = v52;
        aBlock = _NSConcreteStackBlock;
        v70 = 1107296256;
        v71 = sub_1000D2F3C;
        v72 = &unk_100135B30;
        v53 = _Block_copy(&aBlock);
        v61 = v25;
        v54 = v53;
        v64 = v49;
        v55 = a2;
        v56 = v47;

        sub_100100C64();
        aBlock = _swiftEmptyArrayStorage;
        sub_1000302F8(&qword_10014D090, &type metadata accessor for DispatchWorkItemFlags);
        sub_100007210(&qword_10014E310);
        sub_10002FCF8();
        v57 = v63;
        sub_100101B64();
        v58 = v65;
        sub_100101714();
        _Block_release(v54);

        (*(v68 + 8))(v7, v57);
        (*(v66 + 8))(v10, v67);
        (*(v15 + 8))(v17, v14);
      }

      else
      {
        (*(v15 + 8))(v17, v14);

        v25[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_isAssetFinishedLoading] = 1;
      }
    }
  }
}

void sub_10002D82C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v51 = a3;
    v9 = OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView;
    v10 = *(Strong + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView);
    if (v10)
    {
      goto LABEL_8;
    }

    type metadata accessor for VideoPlayerView();
    v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v12 = [v11 layer];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      [v13 setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    }

    v14 = [v11 layer];
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = *&v8[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_preferredVideoDynamicRange];
      [v16 setPreferredDynamicRange:v17];
    }

    v18 = *&v8[v9];
    *&v8[v9] = v11;
    v19 = v11;

    [v8 addSubview:v19];
    v10 = *&v8[v9];
    if (v10)
    {
LABEL_8:
      v20 = [v10 layer];
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        [v21 setPlayer:a2];
      }

      v22 = *&v8[v9];
      if (v22)
      {
        v23 = v22;
        v24 = [v23 layer];
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (!v25)
        {
        }

        v26 = [v25 player];

        if (v26)
        {
          v27 = [v26 currentItem];

          if (v27)
          {

            sub_10002E020(1);
            if ((sub_100079300(v8[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType]) & 1) != 0 && UIAccessibilityIsVideoAutoplayEnabled() && !UIAccessibilityIsReduceMotionEnabled())
            {
              v28 = [v8 traitCollection];
              v29 = [v28 userInterfaceIdiom];

              if (v29 != 5 || (sub_1001017C4() & 1) != 0)
              {
                v30 = *&v8[v9];
                if (v30)
                {
                  v31 = v30;
                  v32 = [v31 layer];
                  objc_opt_self();
                  v33 = swift_dynamicCastObjCClass();
                  if (!v33)
                  {
                  }

                  v34 = [v33 player];

                  [v34 setMuted:1];
                  v35 = *&v8[v9];
                  if (v35)
                  {
                    v36 = v35;
                    v37 = [v36 layer];
                    objc_opt_self();
                    v38 = swift_dynamicCastObjCClass();
                    if (!v38)
                    {
                    }

                    v39 = [v38 player];

                    [v39 play];
                  }
                }

                v8[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_isAutoPlaying] = 1;
                v40 = [objc_opt_self() defaultCenter];
                if (qword_10014B788 != -1)
                {
                  swift_once();
                }

                v41 = qword_100158718;
                sub_100007210(&qword_10014C028);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_10010BC80;
                v52 = 0xD000000000000015;
                v53 = 0x8000000100105410;
                sub_100101BF4();
                v43 = sub_1000FF814();
                *(inited + 96) = &type metadata for String;
                *(inited + 72) = v43;
                *(inited + 80) = v44;
                sub_10004D288(inited);
                swift_setDeallocating();
                sub_10000FFB4(inited + 32, &qword_10014C030);
                isa = sub_100100E44().super.isa;

                [v40 postNotificationName:v41 object:0 userInfo:isa];
              }
            }
          }
        }
      }
    }

    [*&v8[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_fallbackView] setHidden:{1, v51, v52, v53}];
    [*&v8[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_thumbnailView] setAlpha:1.0];
    v46 = objc_opt_self();
    v47 = [v46 defaultCenter];
    [v47 removeObserver:v8 name:AVPlayerItemDidPlayToEndTimeNotification object:0];

    v48 = [v46 defaultCenter];
    v49 = v8;
    v50 = [a2 currentItem];
    [v48 addObserver:v49 selector:"finishedPlayingWithNotification:" name:AVPlayerItemDidPlayToEndTimeNotification object:v50];

    sub_10002E48C(a4);
  }
}

void sub_10002DE88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_fallbackView) setAlpha:1.0];
  }
}

void sub_10002DEFC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for VideoAssetView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_fallbackView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_thumbnailView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }
}

void sub_10002E020(char a1)
{
  if (a1)
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = *&v1[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
    }

    v7 = [v6 player];

    if (v7)
    {
      v8 = [v7 currentItem];

      if (v8)
      {

        if ((sub_100079300(v1[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType]) & 1) != 0 && UIAccessibilityIsVideoAutoplayEnabled() && !UIAccessibilityIsReduceMotionEnabled())
        {
          v9 = [v1 traitCollection];
          v10 = [v9 userInterfaceIdiom];

          if (v10 != 5 || (sub_1001017C4() & 1) != 0)
          {
            v11 = objc_opt_self();
            v12 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v13 = swift_allocObject();
            *(v13 + 16) = v12;
            *(v13 + 24) = v2;
            v15[4] = sub_10002FDDC;
            v15[5] = v13;
            v15[0] = _NSConcreteStackBlock;
            v15[1] = 1107296256;
            v15[2] = sub_1000D2F3C;
            v15[3] = &unk_100135A68;
            v14 = _Block_copy(v15);

            [v11 animateWithDuration:0 delay:v14 options:0 animations:0.3 completion:0.0];
            _Block_release(v14);
          }
        }
      }
    }
  }
}

void sub_10002E260(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView);
    if (v4)
    {
      v5 = v4;
      [v5 setAlpha:a1];
    }
  }
}

void sub_10002E2E8()
{
  v1 = OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_isAutoPlaying;
  if (v0[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_isAutoPlaying] == 1)
  {
    if ((sub_100079300(v0[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType]) & 1) == 0 || !UIAccessibilityIsVideoAutoplayEnabled() || UIAccessibilityIsReduceMotionEnabled() || (v6 = [v0 traitCollection], v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, v7 == 5) && (sub_1001017C4() & 1) == 0)
    {
      v0[v1] = 0;
      v2 = *&v0[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView];
      if (v2)
      {
        v3 = v2;
        v4 = [v3 layer];
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (!v5)
        {
        }

        v8 = [v5 player];

        [v8 pause];
      }
    }
  }
}

void sub_10002E48C(uint64_t a1)
{
  v2 = v1;
  v29 = 0u;
  v30 = 0u;
  v4 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v5 layer];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
  }

  v8 = [v7 player];

  if (v8)
  {
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = sub_1000FF384();

    v10 = sub_100101924(1, 40);
    v12 = v11;
    v14 = v13;
    v15 = HIDWORD(v11);
    sub_100010F50(0, &qword_10014E300);
    v16 = sub_100101704();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = sub_10002FCC8;
    v28 = v17;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v26 = sub_10002ED04;
    *(&v26 + 1) = &unk_1001359A0;
    v18 = _Block_copy(&aBlock);

    *&aBlock = v10;
    *(&aBlock + 1) = __PAIR64__(v15, v12);
    *&v26 = v14;
    v19 = [v8 addPeriodicTimeObserverForInterval:&aBlock queue:v16 usingBlock:v18];
    _Block_release(v18);

    sub_100101B14();
    swift_unknownObjectRelease();
    sub_10000FFB4(&v29, &qword_10014CA68);
    v29 = aBlock;
    v30 = v26;
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

  v20 = *(v2 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerTimeControlStatusObserver);
  *(v2 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerTimeControlStatusObserver) = v9;
  v21 = v9;

  sub_100010014(&v29, &aBlock, &qword_10014CA68);
  v22 = OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_timeObserver;
  swift_beginAccess();
  sub_10001007C(&aBlock, v2 + v22, &qword_10014CA68);
  swift_endAccess();
  *&aBlock = a1;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_1000FF384();

  sub_10000FFB4(&v29, &qword_10014CA68);
  v24 = *(v2 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerStatusObserver);
  *(v2 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerStatusObserver) = v23;
}

uint64_t sub_10002E844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100100C44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100100CB4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010F50(0, &qword_10014E300);
  v12 = sub_100101704();
  aBlock[4] = sub_10002FCF0;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2F3C;
  aBlock[3] = &unk_1001359C8;
  v13 = _Block_copy(aBlock);

  sub_100100C64();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000302F8(&qword_10014D090, &type metadata accessor for DispatchWorkItemFlags);
  sub_100007210(&qword_10014E310);
  sub_10002FCF8();
  sub_100101B64();
  sub_100101714();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_10002EAF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_delegate;
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v1 + 8);

    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10002EB94(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = HIDWORD(a2);
  sub_100101304();
  v10[2] = a4;
  v10[3] = a1;
  v11 = v6;
  v12 = v8;
  v13 = a3;
  return sub_1000E30BC(sub_10002FCD0, v10);
}

void sub_10002EC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_delegate;
    v9 = Strong;
    v10 = swift_unknownObjectWeakLoadStrong();
    v11 = *(v8 + 8);

    if (v10)
    {
      ObjectType = swift_getObjectType();
      (*(v11 + 16))(a2, a3, a4, ObjectType, v11);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10002ED04(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);
}

uint64_t sub_10002ED70(void **a1)
{
  v2 = sub_100100C44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100100CB4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_100010F50(0, &qword_10014E300);
    v13 = sub_100101704();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v10;
    aBlock[4] = sub_10002FD9C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D2F3C;
    aBlock[3] = &unk_100135A18;
    v15 = _Block_copy(aBlock);
    v19 = v6;
    v16 = v15;
    v17 = v12;
    v18 = v10;

    sub_100100C64();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000302F8(&qword_10014D090, &type metadata accessor for DispatchWorkItemFlags);
    sub_100007210(&qword_10014E310);
    sub_10002FCF8();
    sub_100101B64();
    sub_100101714();
    _Block_release(v16);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v19);
  }

  return result;
}

void sub_10002F070(uint64_t a1, void *a2)
{
  v4 = a1 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  if ([a2 status] == 1)
  {
    *(a1 + OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_isAssetFinishedLoading) = 1;
    v7 = a1 + OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_loadingDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      v9 = swift_getObjectType();
      v13 = (*(v8 + 16))(v9, v8);
      swift_unknownObjectRelease();
      v10 = v13;
      if (v13)
      {
        v11 = *(a1 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView);
        if (v11)
        {
          v12 = v11;
          sub_10002F58C(v13);

          v10 = v13;
        }
      }
    }
  }
}

uint64_t sub_10002F1B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerStatusObserver);
  *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerStatusObserver) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerTimeControlStatusObserver);
  *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerTimeControlStatusObserver) = 0;

  v3 = OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_timeObserver;
  swift_beginAccess();
  sub_100010014(v0 + v3, &v10, &qword_10014CA68);
  if (!*(&v11 + 1))
  {
    return sub_10000FFB4(&v10, &qword_10014CA68);
  }

  sub_10002FC28(&v10, &v12);
  v4 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_playerView);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 layer];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    v8 = [v7 player];

    if (v8)
    {
      sub_1000110C0(&v12, v13);
      [v8 removeTimeObserver:sub_100101E64()];

      swift_unknownObjectRelease();
    }
  }

  v10 = 0u;
  v11 = 0u;
  swift_beginAccess();
  sub_10001007C(&v10, v0 + v3, &qword_10014CA68);
  swift_endAccess();
  return sub_10001100C(&v12);
}

void sub_10002F408()
{
  sub_10002F4F8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10002F4F8()
{
  if (!qword_10014CCD0)
  {
    sub_1000FF874();
    v0 = sub_100101A94();
    if (!v1)
    {
      atomic_store(v0, &qword_10014CCD0);
    }
  }
}

void sub_10002F58C(void *a1)
{
  v3 = [v1 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
  }

  v21 = [v4 player];

  if (v21)
  {
    v5 = [v21 currentItem];
    if (v5 && (v6 = v5, v7 = [v5 status], v6, v7 == 1))
    {
      [a1 currentTime];
      value = aBlock;
      timescale = v23;
      flags = HIDWORD(v23);
      epoch = v24;
      [a1 rate];
      v13 = v12;
      v14 = [v21 currentItem];
      if (v14)
      {
        v15 = v14;
        [v14 duration];

        if (sub_100101914())
        {
          value = kCMTimeZero.value;
          timescale = kCMTimeZero.timescale;
          flags = kCMTimeZero.flags;
          epoch = kCMTimeZero.epoch;
        }
      }

      [v21 rate];
      if (v16 <= 0.0)
      {
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        *(v18 + 24) = v13;
        *(v18 + 28) = value;
        *(v18 + 36) = timescale;
        *(v18 + 40) = flags;
        *(v18 + 44) = epoch;
        v26 = sub_10002FBD0;
        v27 = v18;
        aBlock = _NSConcreteStackBlock;
        v23 = 1107296256;
        v24 = sub_1000D7A0C;
        v25 = &unk_100135978;
        v19 = _Block_copy(&aBlock);

        LODWORD(v20) = v13;
        [v21 prerollAtRate:v19 completionHandler:v20];

        _Block_release(v19);
      }

      else
      {
        aBlock = value;
        v23 = __PAIR64__(flags, timescale);
        v24 = epoch;
        [v21 seekToTime:&aBlock];
      }
    }

    else
    {
    }
  }
}

void sub_10002F874(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a1 > 0.0)
    {
      v12 = [Strong layer];
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
      }

      v14 = [v13 player];

      v18[0] = a4;
      v18[1] = a5;
      v18[2] = a6;
      [v14 seekToTime:v18];

      v15 = [v11 layer];
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {
      }

      v17 = [v16 player];

      [v17 play];
    }
  }
}

id sub_10002FAE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlayerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002FB40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002FB80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002FB98()
{

  return _swift_deallocObject(v0, 52, 7);
}

uint64_t sub_10002FBE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_10002FC28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_10002FC44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

id sub_10002FC8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timeControlStatus];
  *a2 = result;
  return result;
}

unint64_t sub_10002FCF8()
{
  result = qword_10014D0A0;
  if (!qword_10014D0A0)
  {
    sub_10000F19C(&qword_10014E310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014D0A0);
  }

  return result;
}

uint64_t sub_10002FD5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002FDA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002FDE8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002FE44()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002FEA0()
{
  v1 = sub_1000FF874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1000FF804();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10002FFF0(void *a1)
{
  v3 = *(sub_1000FF874() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1000FF804() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10002B9F0(a1, v7, v1 + v4, v8);
}

uint64_t sub_1000300C8()
{
  v1 = sub_1000FF874();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1000FF804();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_100030220()
{
  v1 = *(sub_1000FF874() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1000FF804() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_10002BED4(v5, v6, v0 + v2, v7);
}

uint64_t sub_1000302F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100030340(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1000303D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutIconAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutIconAsset()
{
  result = qword_10014CDE0;
  if (!qword_10014CDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000304D8()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v3 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100100F84();
  __chkstk_darwin(v4 - 8);
  v131 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&qword_10014EBD0);
  __chkstk_darwin(v6 - 8);
  v132 = &v117 - v7;
  v8 = sub_100100604();
  v127 = *(v8 - 8);
  v128 = v8;
  __chkstk_darwin(v8);
  v126 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007210(&unk_10014D640);
  v11 = __chkstk_darwin(v10 - 8);
  v133 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v130 = &v117 - v14;
  __chkstk_darwin(v13);
  v16 = &v117 - v15;
  v17 = sub_100100A04();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100007210(&qword_10014C278);
  __chkstk_darwin(v21 - 8);
  v23 = &v117 - v22;
  v24 = sub_100100464();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v0;
  if (!*(v0 + OBJC_IVAR____TtC21JournalShareExtension16WorkoutIconAsset_metadata))
  {
    (*(v25 + 56))(v23, 1, 1, v24);
    goto LABEL_6;
  }

  sub_100009700(v23);

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
LABEL_6:
    sub_10000FFB4(v23, &qword_10014C278);
    return 0;
  }

  v122 = v24;
  v123 = v3;
  v121 = v25;
  v28 = *(v25 + 32);
  v29 = v27;
  v28(v27, v23);
  sub_100100974();
  v30 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_100100944().super.isa;
  v32 = [v30 initWithContentType:isa];

  (*(v18 + 8))(v20, v17);
  v33 = sub_100100414();
  if (!v34)
  {
    v35 = v33;
    v36 = [objc_opt_self() mainBundle];
    v116._countAndFlagsBits = 0x80000001001054A0;
    v137._countAndFlagsBits = 0x74756F6B726F57;
    v137._object = 0xE700000000000000;
    v138.value._countAndFlagsBits = v35;
    v138.value._object = 0;
    v37.super.isa = v36;
    v139._countAndFlagsBits = 0;
    v139._object = 0xE000000000000000;
    sub_1000FF2E4(v137, v138, v37, v139, v116);
  }

  v38 = v132;
  v39 = v133;
  v40 = sub_100100F94();

  [v32 setDisplayName:v40];

  sub_100100454();
  v41 = sub_1000FF804();
  v42 = *(v41 - 8);
  v124 = *(v42 + 48);
  v125 = v41;
  v119 = v42 + 48;
  v43 = 0;
  if (v124(v16, 1) != 1)
  {
    v43 = sub_1000FF754().super.isa;
    (*(v42 + 8))(v16, v125);
  }

  [v32 setTimestamp:v43];

  v44 = sub_1001003E4();
  v120 = v42;
  if ((v45 & 1) == 0)
  {
    v52 = v44;
    if (qword_10014B658 != -1)
    {
      swift_once();
    }

    sub_100007210(&qword_10014CE40);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_10010BC80;
    *(v53 + 56) = &type metadata for Int;
    *(v53 + 64) = &protocol witness table for Int;
    *(v53 + 32) = v52;
    sub_100100FA4();

    v54 = sub_100100F94();

    [v32 setDisplayName:v54];

    v46 = sub_10003130C(v29, &WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurntWithUnit.getter, &WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurnt.getter);
    v118 = v55;
    v50 = sub_1001003D4();
    goto LABEL_16;
  }

  v46 = sub_10003130C(v29, &WorkoutIconAssetMetadata.calories.getter, &WorkoutIconAssetMetadata.caloriesBurnt.getter);
  v118 = v47;
  v48 = sub_100100444();
  if (v49)
  {
    sub_100031810();
LABEL_16:
    v56 = *&v50;
    v57 = v51;
    goto LABEL_18;
  }

  v56 = *&v48;
  v57 = 0;
LABEL_18:
  v58 = sub_100100434();
  if (v59)
  {
    v60 = v58;
    v61 = v59;
    v62 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v62 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {
      v117 = v32;
      v63 = v29;
      v64 = v38;
      v65 = v46;
      v66 = sub_10000F02C(0, 1, 1, _swiftEmptyArrayStorage);
      v68 = *(v66 + 2);
      v67 = *(v66 + 3);
      if (v68 >= v67 >> 1)
      {
        v66 = sub_10000F02C((v67 > 1), v68 + 1, 1, v66);
      }

      *(v66 + 2) = v68 + 1;
      v69 = &v66[16 * v68];
      *(v69 + 4) = v60;
      *(v69 + 5) = v61;
      v39 = v133;
      v46 = v65;
      v38 = v64;
      v29 = v63;
      v32 = v117;
      if (v57)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }
  }

  v66 = _swiftEmptyArrayStorage;
  if (v57)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (v56 > 0.0)
  {
    v70 = v39;
    sub_1001020A4();
    v71 = sub_100102074();
    v73 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v129;
    v76 = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v66 = sub_10000F02C(0, *(v66 + 2) + 1, 1, v66);
    }

    v78 = *(v66 + 2);
    v77 = *(v66 + 3);
    if (v78 >= v77 >> 1)
    {
      v66 = sub_10000F02C((v77 > 1), v78 + 1, 1, v66);
    }

    *(v66 + 2) = v78 + 1;
    v79 = &v66[16 * v78];
    *(v79 + 4) = v71;
    *(v79 + 5) = v73;
    v46 = v76;
    v39 = v70;
    v38 = v132;
    v80 = v118;
    if (!v118)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_35:
  v75 = v129;
  v80 = v118;
  if (v118)
  {
LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_10000F02C(0, *(v66 + 2) + 1, 1, v66);
    }

    v82 = *(v66 + 2);
    v81 = *(v66 + 3);
    if (v82 >= v81 >> 1)
    {
      v66 = sub_10000F02C((v81 > 1), v82 + 1, 1, v66);
    }

    *(v66 + 2) = v82 + 1;
    v83 = &v66[16 * v82];
    *(v83 + 4) = v46;
    *(v83 + 5) = v80;
  }

LABEL_41:
  v84 = sub_1001003F4();
  if ((v85 & 1) == 0 || (v84 = sub_100100404(), (v86 & 1) == 0))
  {
    v134 = v84;
    v87 = v126;
    sub_1000FF144();
    sub_1000327F4();
    sub_1000337AC(&qword_10014CE38, &type metadata accessor for WorkoutHeartRateFormatStyle);
    v88 = v128;
    sub_100100E34();
    (*(v127 + 8))(v87, v88);
    v89 = v135;
    v90 = v136;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_10000F02C(0, *(v66 + 2) + 1, 1, v66);
    }

    v92 = *(v66 + 2);
    v91 = *(v66 + 3);
    if (v92 >= v91 >> 1)
    {
      v66 = sub_10000F02C((v91 > 1), v92 + 1, 1, v66);
    }

    *(v66 + 2) = v92 + 1;
    v93 = &v66[16 * v92];
    *(v93 + 4) = v89;
    *(v93 + 5) = v90;
  }

  sub_100031D18(0, 1, v38);
  v94 = sub_1000FF514();
  v95 = *(v94 - 8);
  v97 = 0;
  if ((*(v95 + 48))(v38, 1, v94) != 1)
  {
    sub_1000FF474(v96);
    v97 = v98;
    (*(v95 + 8))(v38, v94);
  }

  [v32 setThumbnailURL:v97];

  v135 = v66;
  sub_100007210(&unk_10014D670);
  sub_100032894(&qword_10014C218, &unk_10014D670);
  sub_100100EA4();

  v99 = sub_100100F94();

  [v32 setContentDescription:v99];

  sub_100100454();
  v100 = v125;
  if ((v124)(v39, 1, v125) == 1)
  {
    v101 = *(v75 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
    v102 = v130;
    if (v101 && (v103 = [v101 entry]) != 0)
    {
      v104 = v103;
      sub_1000FFBA4();

      v105 = 0;
    }

    else
    {
      v105 = 1;
    }

    (*(v120 + 56))(v102, v105, 1, v100);
    if ((v124)(v39, 1, v100) != 1)
    {
      sub_10000FFB4(v39, &unk_10014D640);
    }
  }

  else
  {
    v106 = v120;
    v102 = v130;
    (*(v120 + 32))(v130, v39, v100);
    (*(v106 + 56))(v102, 0, 1, v100);
  }

  sub_100100F14();
  sub_1000FF8A4();
  v107 = sub_100101004();
  v109 = v108;
  sub_100007210(&qword_10014C220);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_10010BC80;
  v111 = sub_100081080(v107, v109, v102);
  v113 = v112;

  *(v110 + 32) = v111;
  *(v110 + 40) = v113;
  v114 = sub_1001011C4().super.isa;

  [v32 setAlternateNames:v114];

  sub_10000FFB4(v102, &unk_10014D640);
  (*(v121 + 8))(v29, v122);
  return v32;
}

uint64_t sub_10003130C(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v41 = a3;
  v42 = a2;
  v3 = sub_1000FF8B4();
  __chkstk_darwin(v3 - 8);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&qword_10014CE48);
  __chkstk_darwin(v5 - 8);
  v39 = &v31 - v6;
  v7 = sub_100007210(&qword_10014CE50);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_100007210(&qword_10014CE58);
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_100007210(&qword_10014CE60);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  v17 = sub_100007210(&qword_10014CE68);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v31 - v20;
  result = v42(v19);
  if (!v23)
  {
    v32 = v21;
    v33 = v16;
    v34 = v18;
    v35 = v14;
    v42 = v10;
    v24 = v39;
    v41(result);
    if (v25)
    {
      return 0;
    }

    else
    {
      v26 = [objc_opt_self() kilocalories];
      sub_100032848();
      v27 = v32;
      sub_1000FF194();
      sub_1000FF1A4();
      sub_1000FF374();
      sub_1000FF884();
      sub_1000327F4();
      sub_1000FF344();
      v28 = sub_100007210(&qword_10014CE78);
      (*(*(v28 - 8) + 56))(v24, 0, 1, v28);
      v29 = v33;
      sub_1000FF164();
      sub_10000FFB4(v24, &qword_10014CE48);
      (*(v37 + 8))(v9, v38);
      (*(v36 + 8))(v12, v42);
      sub_100032894(&qword_10014CE80, &qword_10014CE60);
      sub_1000FF1B4();
      (*(v35 + 8))(v29, v13);
      v30 = sub_100101034();

      (*(v34 + 8))(v27, v17);
      return v30;
    }
  }

  return result;
}

double sub_100031810()
{
  v0 = sub_1000FF9C4();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000FF264();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007210(&unk_10014D640);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_1000FF804();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  sub_100100454();
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_1000FF7F4();
    if (v18(v10, 1, v11) != 1)
    {
      sub_10000FFB4(v10, &unk_10014D640);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  sub_100100424();
  if (v18(v8, 1, v11) == 1)
  {
    sub_1000FF7F4();
    if (v18(v8, 1, v11) != 1)
    {
      sub_10000FFB4(v8, &unk_10014D640);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v8, v11);
  }

  sub_1000FF9A4();
  sub_100007210(&qword_10014CE90);
  v19 = sub_1000FF9B4();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10010BC80;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.second(_:), v19);
  sub_100032A08(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v23 = v28;
  sub_1000FF904();

  (*(v31 + 8))(v2, v32);
  v24 = sub_1000FF244();
  (*(v29 + 8))(v23, v30);
  v25 = *(v12 + 8);
  v25(v15, v11);
  v25(v17, v11);
  return v24;
}

uint64_t sub_100031D18@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v66 = a3;
  v5 = sub_100007210(&qword_10014EEF0);
  __chkstk_darwin(v5 - 8);
  v70 = &v56[-v6];
  v69 = sub_100100A04();
  v7 = *(v69 - 8);
  v8 = __chkstk_darwin(v69);
  v68 = &v56[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v61 = &v56[-v10];
  v65 = sub_1001001E4();
  v11 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v13 = __chkstk_darwin(v75);
  v15 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v80 = &v56[-v16];
  v17 = sub_100007210(&qword_10014EBD0);
  __chkstk_darwin(v17 - 8);
  v79 = &v56[-v18];
  v81 = sub_1000FF514();
  v72 = *(v81 - 8);
  __chkstk_darwin(v81);
  v20 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for AssetAttachment.AssetType(0);
  v22 = __chkstk_darwin(v21);
  v82 = &v56[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v25 = &v56[-v24];
  v26 = *(v3 + OBJC_IVAR____TtC21JournalShareExtension5Asset_attachments);
  if (v26 >> 62)
  {
LABEL_47:
    v27 = sub_100101DA4();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v81;
  if (v27)
  {
    v29 = v11;
    v11 = 0;
    v87 = v26 & 0xFFFFFFFFFFFFFF8;
    v88 = v26 & 0xC000000000000001;
    v77 = (v72 + 56);
    v60 = (v29 + 8);
    v73 = (v72 + 32);
    v76 = (v72 + 48);
    v63 = (v7 + 48);
    v59 = (v7 + 32);
    v58 = (v7 + 8);
    v62 = (v72 + 8);
    v78 = a2;
    v74 = v15;
    v67 = v20;
    v84 = v21;
    v85 = v27;
    v86 = v26;
    while (1)
    {
      if (v88)
      {
        v7 = sub_100101CA4();
        v30 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      else
      {
        if (v11 >= *(v87 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v7 = *(v26 + 8 * v11 + 32);

        v30 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_40;
        }
      }

      v31 = OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType;
      sub_1000329A0(v7 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, v25, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        v33 = type metadata accessor for AssetAttachment.AssetType;
      }

      sub_1000328DC(v25, v33);
      if (a2)
      {
LABEL_42:

LABEL_43:
        sub_1000C1180(v66);
      }

      v41 = *(v7 + 16);
LABEL_20:
      if (v41 == v83)
      {
        goto LABEL_42;
      }

      v21 = v84;
LABEL_6:
      v26 = v86;
      ++v11;
      if (v30 == v85)
      {
        goto LABEL_41;
      }
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {

      sub_1000328DC(v25, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      goto LABEL_6;
    }

    v34 = v82;
    sub_1000329A0(v7 + v31, v82, type metadata accessor for AssetAttachment.AssetType);
    v35 = swift_getEnumCaseMultiPayload();
    v36 = v35;
    if (v35 <= 1)
    {
      v38 = v34;
      v39 = v80;
      if (v36)
      {
        sub_1000328DC(v82, type metadata accessor for AssetAttachment.AssetType);
        v46 = 1;
        v42 = v79;
LABEL_27:
        (*v77)(v42, v46, 1, v28);
        v47 = *(sub_100007210(&qword_10014CE88) + 48);
        if ((*v76)(v42, 1, v28) == 1)
        {

          sub_10000FFB4(v42, &qword_10014EBD0);
          v21 = v84;
          goto LABEL_37;
        }

        v71 = v47;
        (*v73)(v20, v42, v28);
        sub_1000FF424();
        v48 = v68;
        sub_100100964();
        v49 = v70;
        sub_100100924();
        v50 = v69;
        if ((*v63)(v49, 1, v69) == 1)
        {

          v28 = v81;
          (*v62)(v20, v81);
          sub_10000FFB4(v49, &qword_10014EEF0);
          goto LABEL_36;
        }

        v51 = v61;
        (*v59)(v61, v49, v50);
        sub_1001009A4();
        v57 = sub_1001009E4();
        v52 = *v58;
        (*v58)(v48, v50);
        v53 = v51;
        v20 = v67;
        v52(v53, v50);
        v28 = v81;
        (*v62)(v20, v81);
        if ((v57 & 1) == 0)
        {

LABEL_36:
          v15 = v74;
          v21 = v84;
          v47 = v71;
LABEL_37:
          sub_1000328DC(&v25[v47], type metadata accessor for AssetAttachment.AssetType.FilePathType);
          a2 = v78;
          goto LABEL_6;
        }

        v15 = v74;
        v54 = v71;
        if (v78)
        {

          sub_1000328DC(&v25[v54], type metadata accessor for AssetAttachment.AssetType.FilePathType);
          goto LABEL_43;
        }

        v41 = *(v7 + 16);
        sub_1000328DC(&v25[v71], type metadata accessor for AssetAttachment.AssetType.FilePathType);
        a2 = v78;
        goto LABEL_20;
      }
    }

    else
    {
      v37 = v35 - 2;
      v38 = v34;
      v39 = v80;
      if (v37 >= 2)
      {
        v40 = v82;

        v38 = &v40[*(sub_100007210(&qword_10014CE88) + 48)];
      }
    }

    sub_10003293C(v38, v39);
    sub_1000329A0(v39, v15, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000328DC(v39, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v42 = v79;
      (*v73)(v79, v15, v28);
    }

    else
    {
      v43 = v64;
      sub_1001001D4();
      v44 = v79;
      sub_100100184();
      v28 = v81;

      v45 = v43;
      v15 = v74;
      (*v60)(v45, v65);
      v42 = v44;
      v20 = v67;
      sub_1000328DC(v39, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v46 = 0;
    goto LABEL_27;
  }

LABEL_41:

  return (*(v72 + 56))(v66, 1, 1, v28);
}

unint64_t sub_1000327F4()
{
  result = qword_10014CE30;
  if (!qword_10014CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014CE30);
  }

  return result;
}

unint64_t sub_100032848()
{
  result = qword_10014CE70;
  if (!qword_10014CE70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014CE70);
  }

  return result;
}

uint64_t sub_100032894(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000F19C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000328DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003293C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000329A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_100032A08(uint64_t a1)
{
  v2 = sub_1000FF9B4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100007210(&qword_10014CE98);
    v9 = sub_100101C24();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1000337AC(&qword_10014CEA0, &type metadata accessor for Calendar.Component);
      v16 = sub_100100E84();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1000337AC(&qword_10014CEA8, &type metadata accessor for Calendar.Component);
          v23 = sub_100100F04();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100032D28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007210(&qword_10014CEB8);
    v3 = sub_100101C24();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_100100FD4();
      sub_100101F84();
      v27 = v7;
      sub_100101074();
      v8 = sub_100101FE4();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_100100FD4();
        v18 = v17;
        if (v16 == sub_100100FD4() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_100101E84();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_100032F1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007210(&qword_10014CEB0);
    v3 = sub_100101C24();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_100101F84();
      sub_100101F94(v10);
      result = sub_100101FE4();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100033058(uint64_t a1)
{
  v2 = sub_1001007D4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100007210(&qword_10014CED0);
    v9 = sub_100101C24();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1000337AC(&qword_10014CED8, &type metadata accessor for AssetType);
      v16 = sub_100100E84();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1000337AC(&unk_10014CEE0, &type metadata accessor for AssetType);
          v23 = sub_100100F04();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_100033378(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_100101DA4())
    {
LABEL_3:
      sub_100007210(&qword_10014CEC8);
      v3 = sub_100101C24();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_100101DA4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_100101CA4();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_100101A24(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000FFB84();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_100101A34();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_100101A24(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000FFB84();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_100101A34();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::Int sub_100033644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007210(&qword_10014CEC0);
    v3 = sub_100101C24();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_100101F84();

      sub_100101074();
      result = sub_100101FE4();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_100101E84();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1000337AC(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100033808()
{
  v1 = (v0 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController____lazy_storage___contentMargin);
  if ((*(v0 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController____lazy_storage___contentMargin + 8) & 1) == 0)
  {
    return *v1;
  }

  *v1 = 0x4020000000000000;
  v1[8] = 0;
  return 8.0;
}

uint64_t sub_10003384C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  return v1;
}

id sub_1000338B8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for JurassicShareViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for JurassicShareViewController()
{
  result = qword_10014CF98;
  if (!qword_10014CF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100033B64()
{
  v1 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for JurassicShareViewController();
  v10.receiver = v0;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, "viewDidLoad");
  [v0 setModalInPresentation:1];
  sub_100033D14();
  sub_1000340A4();
  v5 = sub_100101324();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_100101304();
  v6 = v0;
  v7 = sub_1001012F4();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_1000D73F8(0, 0, v3, &unk_10010CC60, v8);

  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v6 selector:"extensionWillEnterForeground" name:NSExtensionHostWillEnterForegroundNotification object:0];
}

void sub_100033D14()
{
  v1 = v0;
  v2 = sub_1000FF804();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = [v1 navigationItem];
  sub_1000FF7F4();
  sub_1000FF7C4();
  sub_10006DB58(2, 0, v6);
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  v11 = sub_100100F94();

  [v9 setTitle:v11];

  v12 = objc_allocWithZone(UIBarButtonItem);
  v13 = v1;
  v14 = [v12 initWithBarButtonSystemItem:1 target:v13 action:"cancelTapped:"];
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v14;
  v15 = v13;
  sub_100101654();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  v16 = v25;
  v17 = objc_opt_self();
  v18 = [v17 systemIndigoColor];
  [v16 setTintColor:v18];

  v19 = [v15 navigationItem];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  v20 = v25;
  [v19 setLeftBarButtonItem:v25];

  v21 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v15 action:"doneTapped:"];
  v22 = [v17 systemIndigoColor];
  [v21 setTintColor:v22];

  v23 = [v15 navigationItem];
  [v23 setRightBarButtonItem:v21];
}

void sub_1000340A4()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_textView];
  [v5 setKeyboardDismissMode:2];
  [v5 setAlwaysBounceVertical:1];
  [v5 setDelegate:v1];
  v6 = *&v1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_containerView];
  v7 = *&v5[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryView];
  *&v5[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryView] = v6;
  v8 = v6;
  sub_10005DFE8(v7);

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v9 insertSubview:v5 atIndex:0];

  v11 = [objc_allocWithZone(UIView) init];
  swift_getKeyPath();
  swift_getKeyPath();
  v59 = v11;
  v12 = v1;
  sub_100101654();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  [v11 setUserInteractionEnabled:0];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [v12 view];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  [v14 addSubview:v11];

  sub_100007210(&unk_10014D0F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10010C680;
  v16 = [v5 leadingAnchor];
  v17 = [v12 view];
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor:v19];
  *(v15 + 32) = v20;
  v21 = [v5 topAnchor];
  v22 = [v12 view];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v15 + 40) = v25;
  v26 = [v5 trailingAnchor];
  v27 = [v12 view];
  if (!v27)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v15 + 48) = v30;
  v31 = [v5 bottomAnchor];
  v32 = [v12 view];
  if (!v32)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = v32;
  v34 = [v32 bottomAnchor];

  v35 = [v31 constraintEqualToAnchor:v34];
  *(v15 + 56) = v35;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  v36 = [v59 topAnchor];

  v37 = [v12 view];
  if (!v37)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = v37;
  v39 = [v37 keyboardLayoutGuide];

  v40 = [v39 topAnchor];
  v41 = [v36 constraintEqualToAnchor:v40];

  *(v15 + 64) = v41;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  v42 = [v59 heightAnchor];

  v43 = [v42 constraintEqualToConstant:0.0];
  *(v15 + 72) = v43;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  v44 = [v59 leadingAnchor];

  v45 = [v12 view];
  if (!v45)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v46 = v45;
  v47 = [v45 leadingAnchor];

  v48 = [v44 constraintEqualToAnchor:v47];
  *(v15 + 80) = v48;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  v49 = [v59 trailingAnchor];

  v50 = [v12 view];
  if (!v50)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v51 = v50;
  v52 = objc_opt_self();
  v53 = [v51 trailingAnchor];

  v54 = [v49 constraintEqualToAnchor:v53];
  *(v15 + 88) = v54;
  sub_100010F50(0, &qword_10014CC08);
  isa = sub_1001011C4().super.isa;

  [v52 activateConstraints:isa];

  v56 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v12 action:"presentKeyboard"];
  v57 = [v12 view];
  if (v57)
  {
    v58 = v57;
    [v57 addGestureRecognizer:v56];

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_10003499C()
{
  v0[2] = sub_100101304();
  v0[3] = sub_1001012F4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100034A48;

  return sub_100034BE4();
}

uint64_t sub_100034A48()
{

  v1 = sub_100101284();

  return _swift_task_switch(sub_100034B84, v1, v0);
}

uint64_t sub_100034B84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100034BE4()
{
  v1[2] = v0;
  v2 = sub_1000FF804();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_100101304();
  v1[6] = sub_1001012F4();
  v4 = sub_100101284();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_100034CD8, v4, v3);
}

uint64_t sub_100034CD8()
{
  v24 = v0;
  if (qword_10014B588 != -1)
  {
    swift_once();
  }

  v1 = qword_100158438;
  v2 = sub_1000103FC(1);
  if ((v3 & 1) == 0 && !v2)
  {

    if (qword_10014B8D8 != -1)
    {
      swift_once();
    }

    v4 = sub_100100AE4();
    sub_100003D38(v4, qword_100158900);
    v5 = sub_100100AC4();
    v6 = sub_1001015A4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "The mindful minutes flag is turned off, or the user hasn't seen the mindfulMinutes TCC yet so no mindfulness sessions will be recorded", v7, 2u);
    }

    v8 = v0[2];

    *(v8 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_mindfulnessManager) = 0;

    v9 = 0;
    v10 = (v8 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_canvasIdleTracker);
    goto LABEL_10;
  }

  v13 = sub_1000103FC(1);
  if ((v14 & 1) == 0 && v13 == 2)
  {
    v15 = v0[2];

    v16 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_mindfulnessManager;
    if (!*(v15 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_mindfulnessManager))
    {
      v23[3] = type metadata accessor for HealthManager();
      v23[4] = &off_1001355A0;
      v23[0] = v1;
      type metadata accessor for MindfulnessManager();
      swift_allocObject();

      *(v15 + v16) = sub_1000D7F04(v23, 1);
    }

    v10 = (v0[2] + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_canvasIdleTracker);
    if (*v10)
    {
      goto LABEL_11;
    }

    type metadata accessor for CanvasIdleTracker();
    swift_allocObject();
    v9 = sub_100094298();
LABEL_10:
    *v10 = v9;

LABEL_11:

    v11 = v0[1];

    return v11();
  }

  v17 = v0[2];
  v18 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_mindfulnessManager;
  v0[9] = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_mindfulnessManager;
  v19 = *(v17 + v18);
  v0[10] = v19;
  if (!v19)
  {

    v22 = v0[2];
    v10 = (v22 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_canvasIdleTracker);
    if (*(v22 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_canvasIdleTracker))
    {

      sub_100095228();

      v22 = v0[2];
    }

    *(v22 + v0[9]) = 0;

    v9 = 0;
    goto LABEL_10;
  }

  sub_1000FF7C4();
  v20 = swift_task_alloc();
  v0[11] = v20;
  *v20 = v0;
  v20[1] = sub_10003503C;
  v21 = v0[5];

  return sub_1000DB114(v21, 0);
}

uint64_t sub_10003503C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return _swift_task_switch(sub_1000351DC, v6, v5);
}

uint64_t sub_1000351DC()
{

  v1 = v0[2];
  v2 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_canvasIdleTracker;
  v3 = v1;
  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_canvasIdleTracker))
  {

    sub_100095228();

    v3 = v0[2];
  }

  *(v3 + v0[9]) = 0;

  *(v1 + v2) = 0;

  v4 = v0[1];

  return v4();
}

void sub_1000352E0()
{
  v1 = v0;
  v2 = sub_1000FF804();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v6 - 8);
  v68 = &v64 - v7;
  v77 = sub_100100A04();
  isa = v77[-1].isa;
  __chkstk_darwin(v77);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 extensionContext];
  if (!v11)
  {
    if (qword_10014B8D8 != -1)
    {
      swift_once();
    }

    v46 = sub_100100AE4();
    sub_100003D38(v46, qword_100158900);
    v77 = sub_100100AC4();
    v47 = sub_1001015A4();
    if (os_log_type_enabled(v77, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v77, v47, "Empty NSExtensionContext", v48, 2u);
    }

    v49 = v77;

    return;
  }

  v66 = v3;
  v67 = v5;
  v12 = v11;
  v13 = [v11 inputItems];

  v14 = sub_1001011D4();
  v80 = _swiftEmptyArrayStorage;
  v15 = v14[2];
  if (!v15)
  {

    v14 = 0;
    v10 = 0;
    *(&v75 + 1) = 0;
    v18 = _swiftEmptyArrayStorage;
LABEL_43:
    if (!(v18 >> 62))
    {
LABEL_44:
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_50:

        goto LABEL_51;
      }

LABEL_45:
      if (v18 >> 62)
      {
        sub_100101DA4();
      }

      sub_10003C85C();
      *(v1 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_hasGridViewDisplayed) = 1;

      v50 = sub_100101324();
      v51 = v68;
      (*(*(v50 - 8) + 56))(v68, 1, 1, v50);
      sub_100101304();
      v52 = v1;
      v53 = sub_1001012F4();
      v54 = swift_allocObject();
      v54[2] = v53;
      v54[3] = &protocol witness table for MainActor;
      v54[4] = v52;
      v54[5] = v18;
      sub_1000D73F8(0, 0, v51, &unk_10010CBE8, v54);

      goto LABEL_51;
    }

LABEL_49:
    if (!sub_100101DA4())
    {
      goto LABEL_50;
    }

    goto LABEL_45;
  }

  v64 = v2;
  v65 = v1;
  v74 = 0;
  v75 = 0uLL;
  v16 = 0;
  v17 = v14 + 4;
  v18 = _swiftEmptyArrayStorage;
  v2 = (isa + 8);
  v19 = &qword_10014D0D8;
  v1 = NSExtensionItem_ptr;
  v70 = v15;
  v71 = v14;
  v69 = v14 + 4;
  do
  {
    if (v16 >= v14[2])
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    sub_100010FA8(&v17[4 * v16], v79);
    sub_100010F50(0, &qword_10014D0D8);
    if (swift_dynamicCast())
    {
      v73 = v78;
      v20 = [v78 attachments];
      if (v20)
      {
        v21 = v20;
        sub_100010F50(0, &unk_10014D0E0);
        v1 = sub_1001011D4();

        if (!(v1 >> 62))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v1 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_11:
          v19 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
LABEL_12:
            if (v19 < 1)
            {
              goto LABEL_61;
            }

            v72 = v16;
            v76 = v18;
            for (i = 0; i != v19; ++i)
            {
              if ((v1 & 0xC000000000000001) != 0)
              {
                v23 = sub_100101CA4();
              }

              else
              {
                v23 = *(v1 + 8 * i + 32);
              }

              v24 = v23;
              sub_1001009A4();
              sub_100100904();
              v25 = sub_100100F94();

              v26 = [v24 hasItemConformingToTypeIdentifier:v25];

              v27 = *v2;
              (*v2)(v10, v77);
              if ((v26 & 1) != 0 || (sub_1001009B4(), sub_100100904(), v28 = sub_100100F94(), , v29 = [v24 hasItemConformingToTypeIdentifier:v28], v28, v27(v10, v77), v29))
              {
                v30 = v24;
                sub_1001011B4();
                if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100101204();
                }

                sub_100101234();

                v76 = v80;
              }

              else if (v75 == 0 && (sub_100100954(), sub_100100904(), v31 = sub_100100F94(), , v32 = [v24 hasItemConformingToTypeIdentifier:v31], v31, v27(v10, v77), v32))
              {
                v33 = v73;
                v34 = v73;
                *&v75 = v33;
                *(&v75 + 1) = v24;
              }

              else
              {
                sub_100100984();
                sub_100100904();
                v35 = sub_100100F94();

                v36 = [v24 hasItemConformingToTypeIdentifier:v35];

                v27(v10, v77);
                if (v36)
                {

                  v74 = v24;
                }

                else
                {
                }
              }
            }

            v18 = v76;
            v15 = v70;
            v14 = v71;
            v16 = v72;
            v17 = v69;
            goto LABEL_5;
          }

LABEL_31:

LABEL_5:
          v19 = &qword_10014D0D8;
          v1 = NSExtensionItem_ptr;
          goto LABEL_6;
        }
      }

      v19 = sub_100101DA4();
      if (v19)
      {
        goto LABEL_12;
      }

      goto LABEL_31;
    }

LABEL_6:
    ++v16;
  }

  while (v16 != v15);

  v1 = v65;
  if (!*(&v75 + 1))
  {
    *(&v75 + 1) = 0;
    v2 = v64;
    v14 = v74;
    v10 = v75;
    if (!(v18 >> 62))
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

  v2 = v64;
  v14 = v74;
  v10 = v75;
  if (!v75)
  {
    goto LABEL_43;
  }

  v37 = *(&v75 + 1);
  v38 = v10;

  sub_100037E38();
  *(v1 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_hasLinkViewDisplayed) = 1;
  v39 = sub_100101324();
  v40 = v68;
  (*(*(v39 - 8) + 56))(v68, 1, 1, v39);
  sub_100101304();
  v41 = v37;
  v42 = v38;
  v43 = v1;
  v44 = sub_1001012F4();
  v45 = swift_allocObject();
  v45[2] = v44;
  v45[3] = &protocol witness table for MainActor;
  v45[4] = v43;
  v45[5] = v41;
  v45[6] = v42;
  sub_1000D73F8(0, 0, v40, &unk_10010CBF8, v45);

  [v43 presentKeyboard];

LABEL_51:
  v19 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_textView);
  if (qword_10014B660 != -1)
  {
LABEL_62:
    swift_once();
  }

  v55 = objc_allocWithZone(NSAttributedString);
  v56 = sub_100100F94();
  v57 = [v55 initWithString:v56 attributes:0];

  [v19 setAttributedPlaceholder:v57];
  v58 = [v19 _placeholderLabel];
  if (v58)
  {
    v59 = v58;
    [v58 setNumberOfLines:0];

    v60 = v67;
    if (v14)
    {
      v61 = swift_allocObject();
      *(v61 + 16) = v1;
      v62 = v1;
      v63 = v14;
      sub_10008BD2C(v63, sub_10003D6F4, v61);
    }

    if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_mindfulnessManager))
    {

      sub_1000FF7C4();
      sub_1000D962C(v60);

      (*(v66 + 8))(v60, v2);
    }

    if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_canvasIdleTracker))
    {

      sub_100094F84();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100035EA8()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for JurassicShareViewController();
  objc_msgSendSuper2(&v29, "viewDidLayoutSubviews");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  [result bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  CGRectGetMaxY(v30);
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  v12 = [result keyboardLayoutGuide];

  [v12 layoutFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v31.origin.x = v14;
  v31.origin.y = v16;
  v31.size.width = v18;
  v31.size.height = v20;
  CGRectGetMinY(v31);
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = result;
  [result safeAreaInsets];

  v22 = *&v0[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_textView];
  [v22 contentInset];
  [v22 setContentInset:?];
  [v22 verticalScrollIndicatorInsets];
  [v22 setVerticalScrollIndicatorInsets:?];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = result;
  [result safeAreaInsets];
  v25 = v24;

  result = [v0 view];
  if (result)
  {
    v26 = result;
    [result safeAreaInsets];
    v28 = v27;

    return [v22 setTextContainerInset:{16.0, v25 + 4.0 + 16.0, 16.0, v28 + 4.0 + 16.0}];
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10003616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_100101304();
  v4[4] = sub_1001012F4();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_10003621C;

  return sub_100034BE4();
}

uint64_t sub_10003621C()
{

  v1 = sub_100101284();

  return _swift_task_switch(sub_100036358, v1, v0);
}

uint64_t sub_100036358()
{
  v1 = *(v0 + 16);

  if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_mindfulnessManager) && *(*(v0 + 16) + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_canvasIdleTracker))
  {

    sub_100094F84();
    sub_1000DAE68();
  }

  v2 = *(v0 + 8);

  return v2();
}

id sub_100036548(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_photoAssets] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_linkAsset] = 0;
  v6 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_containerView;
  *&v3[v6] = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_gridCollectionView] = 0;
  v7 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_linkView;
  type metadata accessor for LinkAssetGridView();
  *&v3[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_textView;
  type metadata accessor for JournalTextView();
  *&v3[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100010F50(0, &qword_10014CFB0);
  sub_100101664();
  v3[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_hasAppeared] = 0;
  v3[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_presentsKeyboardAutomatically] = 0;
  v3[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_hasLinkViewDisplayed] = 0;
  v3[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_hasGridViewDisplayed] = 0;
  v9 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_dataManager;
  type metadata accessor for ShareSheetDataManager();
  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyArrayStorage;
  *&v3[v9] = v10;
  *&v3[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_mindfulnessManager] = 0;
  *(v10 + 24) = 0;
  *&v3[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_canvasIdleTracker] = 0;
  __asm { FMOV            V0.2D, #12.0 }

  *&v3[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_outerCornerRadius] = _Q0;
  v16 = &v3[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController____lazy_storage___contentMargin];
  *v16 = 0;
  v16[8] = 1;
  sub_100010F50(0, &qword_10014CFC0);
  sub_100101664();
  if (a2)
  {
    v17 = sub_100100F94();
  }

  else
  {
    v17 = 0;
  }

  v20.receiver = v3;
  v20.super_class = type metadata accessor for JurassicShareViewController();
  v18 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", v17, a3);

  return v18;
}

id sub_1000367C8(void *a1)
{
  *&v1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_photoAssets] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_linkAsset] = 0;
  v3 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_containerView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_gridCollectionView] = 0;
  v4 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_linkView;
  type metadata accessor for LinkAssetGridView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_textView;
  type metadata accessor for JournalTextView();
  *&v1[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100010F50(0, &qword_10014CFB0);
  sub_100101664();
  v1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_hasAppeared] = 0;
  v1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_presentsKeyboardAutomatically] = 0;
  v1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_hasLinkViewDisplayed] = 0;
  v1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_hasGridViewDisplayed] = 0;
  v6 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_dataManager;
  type metadata accessor for ShareSheetDataManager();
  v7 = swift_allocObject();
  *(v7 + 16) = _swiftEmptyArrayStorage;
  *&v1[v6] = v7;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_mindfulnessManager] = 0;
  *(v7 + 24) = 0;
  *&v1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_canvasIdleTracker] = 0;
  __asm { FMOV            V0.2D, #12.0 }

  *&v1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_outerCornerRadius] = _Q0;
  v13 = &v1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController____lazy_storage___contentMargin];
  *v13 = 0;
  v13[8] = 1;
  sub_100010F50(0, &qword_10014CFC0);
  sub_100101664();
  v16.receiver = v1;
  v16.super_class = type metadata accessor for JurassicShareViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v14)
  {
  }

  return v14;
}

void sub_1000369E4()
{
  sub_100036B3C(319, &qword_10014CFA8, &qword_10014CFB0);
  if (v0 <= 0x3F)
  {
    sub_100036B3C(319, &qword_10014CFB8, &qword_10014CFC0);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100036B3C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100010F50(255, a3);
    v4 = sub_100101674();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100036B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_100101304();
  v4[4] = sub_1001012F4();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_100036C44;

  return sub_100036E1C();
}

uint64_t sub_100036C44()
{

  v1 = sub_100101284();

  return _swift_task_switch(sub_100036D80, v1, v0);
}

uint64_t sub_100036D80()
{
  v1 = *(v0 + 16);

  v2 = [v1 extensionContext];
  if (v2)
  {
    v3 = v2;
    [v2 completeRequestReturningItems:0 completionHandler:0];
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100036E1C()
{
  v1[2] = v0;
  v2 = sub_1000FF804();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_100101304();
  v1[7] = sub_1001012F4();
  v4 = sub_100101284();
  v1[8] = v4;
  v1[9] = v3;

  return _swift_task_switch(sub_100036F14, v4, v3);
}

uint64_t sub_100036F14()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_mindfulnessManager);
  v0[10] = v2;
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_canvasIdleTracker), (v0[11] = v3) != 0))
  {

    sub_1000FF7C4();
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_100037040;
    v5 = v0[5];

    return sub_1000DB114(v5, 0);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100037040()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  return _swift_task_switch(sub_1000371C4, v6, v5);
}

uint64_t sub_1000371C4()
{
  v1 = v0[10];
  sub_100095228();
  v2 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_shouldShowTTRAlert);
  v3 = v0[10];
  if (v2 == 1)
  {
    v4 = v0[2];
    v0[13] = sub_1001012F4();
    v5 = swift_task_alloc();
    v0[14] = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_100037354;

    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100037354()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1000374B4, v3, v2);
}

uint64_t sub_1000374B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100037590(char a1)
{
  v2 = sub_100100C44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100100CB4();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100010F50(0, &qword_10014E300);
    v11 = sub_100101704();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10003D080;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D2F3C;
    aBlock[3] = &unk_100135C48;
    v13 = _Block_copy(aBlock);

    sub_100100C64();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003D0A0();
    sub_100007210(&qword_10014E310);
    sub_10002FCF8();
    sub_100101B64();
    sub_100101714();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_100037830(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong extensionContext];

    if (v7)
    {
      v8 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      v9 = sub_1000FF324();

      [v7 cancelRequestWithError:v9];
    }
  }

  v10 = sub_100101324();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_100101304();

  v11 = sub_1001012F4();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a1;
  sub_1000D76F8(0, 0, v4, &unk_10010CAE8, v12);
}

uint64_t sub_100037A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_100101304();
  v4[7] = sub_1001012F4();
  v6 = sub_100101284();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_100037A98, v6, v5);
}

uint64_t sub_100037A98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_100037B9C;

    return sub_100036E1C();
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100037B9C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100037CDC, v4, v3);
}

uint64_t sub_100037CDC()
{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_100037E38()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_linkView;
  v3 = *(v0 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_linkView);
  v4 = v3[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType];
  v3[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType] = 2;
  v5 = OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v3[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_hasCalledSizeTypeUpdated] == 1)
  {
    if (v4 == 2)
    {

      goto LABEL_9;
    }

    v7 = sub_100101E84();
    v8 = v3;

    if (v7)
    {

      goto LABEL_9;
    }
  }

  else
  {
    v6 = v3;
  }

  sub_10002511C();
  v3[v5] = 1;

LABEL_9:
  v9 = [*(v1 + v2) layer];
  [v9 setCornerRadius:12.0];

  v10 = [*(v1 + v2) layer];
  [v10 setMasksToBounds:1];

  [*(v1 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_containerView) addSubview:*(v1 + v2)];
  v11 = *(v1 + v2);
  v12 = [v11 superview];
  v13 = &selRef_cancel;
  if (v12)
  {
    v14 = v12;
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v11 topAnchor];
    v16 = [v14 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:0.0];
    if (v17)
    {
      [v17 setActive:1];
    }

    v13 = &selRef_cancel;
  }

  else
  {
    v17 = 0;
    v14 = v11;
  }

  v18 = *(v1 + v2);
  v19 = sub_100033808();
  v20 = v18;
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    v23 = v13;
    [v20 v13[97]];
    v24 = [v20 leadingAnchor];
    v25 = [v22 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    [v26 setConstant:v19];
    if (v26)
    {
      [v26 setActive:1];
    }

    v13 = v23;
  }

  else
  {
    v26 = 0;
    v22 = v20;
  }

  v27 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController____lazy_storage___contentMargin);
  v28 = *(v1 + v2);
  v29 = [v28 superview];
  if (v29)
  {
    v30 = v29;
    [v28 v13[97]];
    v31 = [v28 trailingAnchor];
    v32 = [v30 trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    [v33 setConstant:-v27];
    if (v33)
    {
      [v33 setActive:1];
    }
  }

  else
  {
    v33 = 0;
    v30 = v28;
  }

  v34 = *(v1 + v2);
  v35 = sub_100096328(0, 1, 16.0);

  v36 = [*(v1 + v2) heightAnchor];
  v37 = [*(v1 + v2) widthAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 multiplier:0.25];

  [v38 setActive:1];
}

uint64_t sub_1000383E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100100C44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100100CB4();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010F50(0, &qword_10014E300);
  v11 = sub_100101704();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_10003D898;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D2F3C;
  aBlock[3] = &unk_100135E28;
  v14 = _Block_copy(aBlock);

  sub_100100C64();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003D0A0();
  sub_100007210(&qword_10014E310);
  sub_10002FCF8();
  sub_100101B64();
  sub_100101714();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

void sub_1000386B0(uint64_t a1, uint64_t a2, NSString a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_textView);

    if (a3)
    {
      a3 = sub_100100F94();
    }

    [v6 setText:a3];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 presentKeyboard];
  }
}

uint64_t sub_100038790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = sub_100101304();
  v5[8] = sub_1001012F4();
  v7 = sub_100101284();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_10003882C, v7, v6);
}

uint64_t sub_10003882C()
{
  v0[11] = *(v0[5] + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_dataManager);
  v0[12] = sub_1001012F4();
  v2 = sub_100101284();
  v0[13] = v2;
  v0[14] = v1;

  return _swift_task_switch(sub_1000388CC, v2, v1);
}

uint64_t sub_1000388CC()
{
  v1 = v0[11];
  v2 = v0[6];
  v0[15] = sub_1001012F4();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_1000389CC;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1000389CC()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_100038B2C, v3, v2);
}

uint64_t sub_100038B2C()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(sub_100038B90, v1, v2);
}

uint64_t sub_100038B90()
{
  v1 = v0[11];

  if (*(v1 + 24) == 1)
  {
    v2 = v0[5];
    sub_10003D958();
    v3 = swift_allocError();
    *v4 = 0;
    sub_1000D29E8(v3, v2);
  }

  else
  {
    v5 = v0[11];
    swift_beginAccess();
    v6 = *(v5 + 16);
    if (v6 >> 62)
    {
      v7 = sub_100101DA4();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {

      result = sub_100101D24();
      if (v7 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          sub_100101CA4();
        }

        else
        {
          v10 = *(v6 + 8 * v9 + 32);
        }

        ++v9;
        sub_100101D04();
        sub_100101D34();
        sub_100101D44();
        sub_100101D14();
      }

      while (v7 != v9);
    }

    v11 = v0[5];
    *(v11 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_photoAssets) = _swiftEmptyArrayStorage;

    v12 = *(v11 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_gridCollectionView);
    if (v12)
    {
      [v12 reloadData];
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100038D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100101304();
  v6[5] = sub_1001012F4();
  v8 = sub_100101284();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_100038E10, v8, v7);
}

uint64_t sub_100038E10()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100038EB4;
  v3 = v0[3];
  v2 = v0[4];

  return sub_10008823C(v3, v2);
}

uint64_t sub_100038EB4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_1000390B0;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_100038FDC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100038FDC()
{
  v1 = v0[10];
  v2 = v0[2];

  v3 = *(v2 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_linkView);
  v4 = *&v3[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_asset];
  *&v3[OBJC_IVAR____TtC21JournalShareExtension17LinkAssetGridView_asset] = v1;
  v5 = v1;
  v6 = v3;

  sub_100023A04(v1);
  v7 = *(v2 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_linkAsset);
  *(v2 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_linkAsset) = v1;

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000390B0()
{
  v1 = v0[9];
  v2 = v0[2];

  sub_1000D29E8(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10003912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = sub_1000FF874();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  sub_100007210(&qword_10014CD08);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = sub_1000FFB34();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_1000FFD44();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v9 = sub_100101824();
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  sub_100101304();
  v5[26] = sub_1001012F4();
  v11 = sub_100101284();
  v5[27] = v11;
  v5[28] = v10;

  return _swift_task_switch(sub_1000393C0, v11, v10);
}

uint64_t sub_1000393C0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 32);
  v4 = swift_allocObject();
  *(v0 + 232) = v4;
  *(v4 + 16) = v3;
  *(v0 + 480) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v5 = *(v2 + 104);
  *(v0 + 240) = v5;
  *(v0 + 248) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1);
  v6 = v3;
  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  v8 = type metadata accessor for EntryViewModel();
  *v7 = v0;
  v7[1] = sub_100039508;
  v9 = *(v0 + 200);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v9, sub_10003D49C, v4, v8);
}

uint64_t sub_100039508()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[25];
    v5 = v2[19];
    v6 = v2[20];
    v7 = *(v6 + 8);
    v2[33] = v7;
    v2[34] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[27];
    v9 = v2[28];

    return _swift_task_switch(sub_100039658, v8, v9);
  }
}

uint64_t sub_100039658()
{
  v1 = *(v0 + 40);
  *(v0 + 280) = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_photoAssets);
  *(v0 + 288) = v2;
  if (v2 >> 62)
  {
    v17 = sub_100101DA4();
    *(v0 + 296) = v17;
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 296) = v3;
    if (v3)
    {
LABEL_3:
      *(v0 + 304) = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_changeEventPublisher;
      v4 = enum case for AssetPlacement.grid(_:);
      *(v0 + 484) = enum case for AssetPlacement.grid(_:);
      *(v0 + 488) = enum case for JournalFeatureFlags.enhancedSync(_:);
      v5 = *(v0 + 288);

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_100101CA4();
        v4 = *(v0 + 484);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return _swift_task_switch(v6, v7, v8);
        }

        v9 = *(v5 + 32);
      }

      *(v0 + 320) = v9;
      *(v0 + 328) = 1;
      v10 = *(v0 + 208);
      v11 = *(v0 + 144);
      v12 = *(v0 + 120);
      v13 = *(v0 + 128);

      *v11 = sub_1000FFD24();
      (*(v13 + 104))(v11, v4, v12);
      if (v10)
      {
        swift_getObjectType();
        v14 = sub_100101284();
        v8 = v15;
      }

      else
      {
        v14 = 0;
        v8 = 0;
      }

      *(v0 + 336) = v14;
      *(v0 + 344) = v8;
      v16 = sub_100039A40;
LABEL_19:
      v6 = v16;
      v7 = v14;

      return _swift_task_switch(v6, v7, v8);
    }
  }

  v18 = *(v0 + 40);
  v19 = *(v18 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_linkAsset);
  *(v0 + 312) = v19;
  if (v19)
  {
    v20 = *(v0 + 208);
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    v23 = *(v0 + 120);

    v24 = v19;
    *v21 = sub_1000FFD24();
    (*(v22 + 104))(v21, enum case for AssetPlacement.grid(_:), v23);
    if (v20)
    {
      swift_getObjectType();
      v14 = sub_100101284();
      v8 = v25;
    }

    else
    {
      v14 = 0;
      v8 = 0;
    }

    *(v0 + 408) = v14;
    *(v0 + 416) = v8;
    v16 = sub_10003AC08;
    goto LABEL_19;
  }

  v26 = enum case for JournalFeatureFlags.enhancedSync(_:);
  v28 = *(v0 + 104);
  v27 = *(v0 + 112);
  v29 = *(v0 + 96);
  v30 = [*(v18 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_textView) textStorage];
  (*(v28 + 104))(v27, v26, v29);
  LOBYTE(v26) = sub_1000FFB24();
  (*(v28 + 8))(v27, v29);
  v31 = *(v0 + 280);
  if ((v26 & 1) == 0)
  {
    v32 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText;
    v33 = *(v31 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText);
    v34 = *(v0 + 280);
    if (v33)
    {
      sub_100010F50(0, &qword_10014D0C0);
      v35 = v33;
      v36 = v30;
      v37 = sub_100101A34();

      if (v37)
      {
LABEL_26:
        v38 = *(v31 + v32);
        *(v31 + v32) = v30;
        v30 = v38;
        goto LABEL_27;
      }

      v34 = *(v0 + 280);
    }

    *(v34 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_textChanged) = 1;
    goto LABEL_26;
  }

  sub_1000E8F9C(v30);
LABEL_27:
  v39 = *(v0 + 208);

  v40 = swift_task_alloc();
  *(v0 + 456) = v40;
  *v40 = v0;
  v40[1] = sub_10003B594;

  return sub_1000E6EC8(v39, &protocol witness table for MainActor);
}

uint64_t sub_100039A40()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  (*(v2 + 104))(v1, *(v0 + 488), v3);
  v4 = sub_1000FFB24();
  (*(v2 + 8))(v1, v3);
  *(v0 + 352) = CFAbsoluteTimeGetCurrent();
  if (v4)
  {
    v5 = *(v0 + 208);
    v6 = swift_task_alloc();
    *(v0 + 360) = v6;
    *v6 = v0;
    v6[1] = sub_100039BDC;
    v7 = *(v0 + 320);
    v8 = *(v0 + 144);

    return sub_1000B51FC(v5, &protocol witness table for MainActor, v7, v8, 1);
  }

  else
  {
    v10 = *(v0 + 208);
    v11 = sub_1000FFD34();
    v12 = swift_task_alloc();
    *(v0 + 376) = v12;
    *v12 = v0;
    v12[1] = sub_100039F30;
    v13 = *(v0 + 320);

    return sub_1000B9AF4(v10, &protocol witness table for MainActor, v13, v11, 0);
  }
}

uint64_t sub_100039BDC()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return _swift_task_switch(sub_100039CFC, v3, v2);
}

uint64_t sub_100039CFC()
{
  (*(v0 + 240))(*(v0 + 192), *(v0 + 480), *(v0 + 152));

  v1 = swift_task_alloc();
  *(v0 + 368) = v1;
  *v1 = v0;
  v1[1] = sub_100039DE4;

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_100039DE4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 264))(*(v2 + 192), *(v2 + 152));

    v4 = *(v2 + 336);
    v5 = *(v2 + 344);

    return _swift_task_switch(sub_10003A610, v4, v5);
  }
}

uint64_t sub_100039F30()
{
  v1 = *v0;

  v2 = *(v1 + 344);
  v3 = *(v1 + 336);

  return _swift_task_switch(sub_10003A050, v3, v2);
}

uint64_t sub_10003A050()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 480);
  v3 = *(v0 + 184);
  v4 = *(v0 + 152);
  *(v0 + 384) = swift_allocObject();
  swift_weakInit();
  v1(v3, v2, v4);
  v5 = swift_task_alloc();
  *(v0 + 392) = v5;
  *v5 = v0;
  v5[1] = sub_10003A170;

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_10003A170()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 264))(*(v2 + 184), *(v2 + 152));

    v4 = *(v2 + 336);
    v5 = *(v2 + 344);

    return _swift_task_switch(sub_10003A2BC, v4, v5);
  }
}

uint64_t sub_10003A2BC()
{
  (*(v0 + 240))(*(v0 + 176), *(v0 + 480), *(v0 + 152));

  v1 = swift_task_alloc();
  *(v0 + 400) = v1;
  *v1 = v0;
  v1[1] = sub_10003A3A4;

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_10003A3A4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 264))(*(v2 + 176), *(v2 + 152));

    v4 = *(v2 + 336);
    v5 = *(v2 + 344);

    return _swift_task_switch(sub_10003A4F0, v4, v5);
  }
}

uint64_t sub_10003A4F0()
{
  v1 = v0[44];
  v2 = *(v0 + 40);
  v3 = *(v0 + 11);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  (*(v5 + 16))(v3, v2 + OBJC_IVAR____TtC21JournalShareExtension5Asset_id, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_1000B8D5C(v3);
  sub_10000FFB4(v3, &qword_10014CD08);
  sub_1000B98C8(v2, v1);
  v6 = *(v0 + 18);
  v7 = *(v0 + 15);
  v8 = *(v0 + 16);

  (*(v8 + 8))(v6, v7);
  v9 = *(v0 + 27);
  v10 = *(v0 + 28);

  return _swift_task_switch(sub_10003A884, v9, v10);
}

uint64_t sub_10003A610()
{
  v2 = *(v0 + 9);
  v1 = *(v0 + 10);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  (*(v4 + 16))(v1, *(v0 + 40) + OBJC_IVAR____TtC21JournalShareExtension5Asset_id, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  *(v0 + 3) = sub_100032F1C(&off_1001344E8);
  sub_100100BE4();

  sub_100010014(v1, v2, &qword_10014CD08);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10000FFB4(*(v0 + 9), &qword_10014CD08);
  }

  else
  {
    (*(*(v0 + 7) + 32))(*(v0 + 8), *(v0 + 9), *(v0 + 6));
    v5 = [objc_opt_self() defaultCenter];
    if (qword_10014B778 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 7);
    v6 = *(v0 + 8);
    v8 = *(v0 + 6);
    v9 = qword_100158708;
    isa = sub_1000FF824().super.isa;
    [v5 postNotificationName:v9 object:isa];

    (*(v7 + 8))(v6, v8);
  }

  v11 = v0[44];
  v12 = *(v0 + 40);
  sub_10000FFB4(*(v0 + 10), &qword_10014CD08);
  sub_1000B4FD0(v12, v11);
  v13 = *(v0 + 18);
  v14 = *(v0 + 15);
  v15 = *(v0 + 16);

  (*(v15 + 8))(v13, v14);
  v16 = *(v0 + 27);
  v17 = *(v0 + 28);

  return _swift_task_switch(sub_10003A884, v16, v17);
}

uint64_t sub_10003A884()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);

  if (v1 != v2)
  {
    v14 = *(v0 + 328);
    v15 = *(v0 + 288);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v3 = sub_100101CA4();
    }

    else
    {
      if (v14 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v3 = *(v15 + 8 * v14 + 32);
    }

    *(v0 + 320) = v3;
    *(v0 + 328) = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      v22 = *(v0 + 484);
      v23 = *(v0 + 208);
      v24 = *(v0 + 144);
      v25 = *(v0 + 120);
      v26 = *(v0 + 128);

      *v24 = sub_1000FFD24();
      (*(v26 + 104))(v24, v22, v25);
      if (v23)
      {
        swift_getObjectType();
        v12 = sub_100101284();
        v4 = v27;
      }

      else
      {
        v12 = 0;
        v4 = 0;
      }

      *(v0 + 336) = v12;
      *(v0 + 344) = v4;
      v28 = sub_100039A40;
      goto LABEL_18;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return _swift_task_switch(v3, v15, v4);
  }

  v5 = *(v0 + 40);
  v6 = *(v5 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_linkAsset);
  *(v0 + 312) = v6;
  if (v6)
  {
    v7 = *(v0 + 208);
    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v10 = *(v0 + 120);

    v11 = v6;
    *v8 = sub_1000FFD24();
    (*(v9 + 104))(v8, enum case for AssetPlacement.grid(_:), v10);
    if (v7)
    {
      swift_getObjectType();
      v12 = sub_100101284();
      v4 = v13;
    }

    else
    {
      v12 = 0;
      v4 = 0;
    }

    *(v0 + 408) = v12;
    *(v0 + 416) = v4;
    v28 = sub_10003AC08;
LABEL_18:
    v3 = v28;
    v15 = v12;

    return _swift_task_switch(v3, v15, v4);
  }

  v16 = enum case for JournalFeatureFlags.enhancedSync(_:);
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  v19 = *(v0 + 96);
  v20 = [*(v5 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_textView) textStorage];
  (*(v18 + 104))(v17, v16, v19);
  LOBYTE(v16) = sub_1000FFB24();
  (*(v18 + 8))(v17, v19);
  v21 = *(v0 + 280);
  if ((v16 & 1) == 0)
  {
    v29 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText;
    v30 = *(v21 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText);
    v31 = *(v0 + 280);
    if (v30)
    {
      sub_100010F50(0, &qword_10014D0C0);
      v32 = v30;
      v33 = v20;
      v34 = sub_100101A34();

      if (v34)
      {
LABEL_25:
        v35 = *(v21 + v29);
        *(v21 + v29) = v20;
        v20 = v35;
        goto LABEL_26;
      }

      v31 = *(v0 + 280);
    }

    *(v31 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_textChanged) = 1;
    goto LABEL_25;
  }

  sub_1000E8F9C(v20);
LABEL_26:
  v36 = *(v0 + 208);

  v37 = swift_task_alloc();
  *(v0 + 456) = v37;
  *v37 = v0;
  v37[1] = sub_10003B594;

  return sub_1000E6EC8(v36, &protocol witness table for MainActor);
}

uint64_t sub_10003AC08()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  *(v0 + 492) = enum case for JournalFeatureFlags.enhancedSync(_:);
  (*(v2 + 104))(v1);
  v4 = sub_1000FFB24();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 312);
  v6 = *(v0 + 208);
  if (v4)
  {
    *(v0 + 424) = CFAbsoluteTimeGetCurrent();
    v7 = swift_task_alloc();
    *(v0 + 432) = v7;
    *v7 = v0;
    v7[1] = sub_10003ADA0;
    v8 = *(v0 + 136);

    return sub_1000B51FC(v6, &protocol witness table for MainActor, v5, v8, 1);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 448) = v10;
    *v10 = v0;
    v10[1] = sub_10003B0F4;
    v11 = *(v0 + 136);

    return sub_1000B843C(v6, &protocol witness table for MainActor, v5, v11);
  }
}

uint64_t sub_10003ADA0()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_10003AEC0, v3, v2);
}

uint64_t sub_10003AEC0()
{
  (*(v0 + 240))(*(v0 + 168), *(v0 + 480), *(v0 + 152));

  v1 = swift_task_alloc();
  *(v0 + 440) = v1;
  *v1 = v0;
  v1[1] = sub_10003AFA8;

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_10003AFA8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 264))(*(v2 + 168), *(v2 + 152));

    v4 = *(v2 + 408);
    v5 = *(v2 + 416);

    return _swift_task_switch(sub_10003B2A0, v4, v5);
  }
}

uint64_t sub_10003B0F4()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_10003B214, v3, v2);
}

uint64_t sub_10003B214()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];

  (*(v2 + 8))(v1, v3);
  v4 = v0[27];
  v5 = v0[28];

  return _swift_task_switch(sub_10003B3C0, v4, v5);
}

uint64_t sub_10003B2A0()
{
  v1 = v0[53];
  v2 = *(v0 + 39);
  v3 = *(v0 + 11);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  (*(v5 + 16))(v3, v2 + OBJC_IVAR____TtC21JournalShareExtension5Asset_id, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_1000B8D5C(v3);
  sub_10000FFB4(v3, &qword_10014CD08);
  sub_1000B4FD0(v2, v1);
  v7 = *(v0 + 16);
  v6 = *(v0 + 17);
  v8 = *(v0 + 15);

  (*(v7 + 8))(v6, v8);
  v9 = *(v0 + 27);
  v10 = *(v0 + 28);

  return _swift_task_switch(sub_10003B3C0, v9, v10);
}

uint64_t sub_10003B3C0()
{
  v1 = *(v0 + 492);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = [*(*(v0 + 40) + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_textView) textStorage];
  (*(v3 + 104))(v2, v1, v4);
  LOBYTE(v1) = sub_1000FFB24();
  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 280);
  if (v1)
  {
    sub_1000E8F9C(v5);
    goto LABEL_8;
  }

  v7 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText;
  v8 = *(v6 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_attributedText);
  v9 = *(v0 + 280);
  if (!v8)
  {
    goto LABEL_6;
  }

  sub_100010F50(0, &qword_10014D0C0);
  v10 = v8;
  v11 = v5;
  v12 = sub_100101A34();

  if ((v12 & 1) == 0)
  {
    v9 = *(v0 + 280);
LABEL_6:
    *(v9 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_textChanged) = 1;
  }

  v13 = *(v6 + v7);
  *(v6 + v7) = v5;
  v5 = v13;
LABEL_8:
  v14 = *(v0 + 208);

  v15 = swift_task_alloc();
  *(v0 + 456) = v15;
  *v15 = v0;
  v15[1] = sub_10003B594;

  return sub_1000E6EC8(v14, &protocol witness table for MainActor);
}

uint64_t sub_10003B594()
{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return _swift_task_switch(sub_10003B6D8, v3, v2);
}

uint64_t sub_10003B6D8()
{
  v1 = v0[26];

  v2 = swift_task_alloc();
  v0[58] = v2;
  *v2 = v0;
  v2[1] = sub_10003B79C;
  v3 = v0[35];

  return (sub_10008EEA4)(v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_10003B79C()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_10003B9C8;
  }

  else
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_10003B8B8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10003B8B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003B9C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003BADC@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v46 = a2;
  v3 = sub_1000FF874();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&qword_10014CD08);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_100007210(&qword_10014D0C8);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  v15 = sub_1000FFC64();
  __chkstk_darwin(v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v19;
  v45 = v18;
  (*(v19 + 104))(v17, enum case for EntrySource.blankEntry(_:));
  v20 = type metadata accessor for EntryListType();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v14, 1, 1, v20);
  v22 = *(a1 + OBJC_IVAR____TtC21JournalShareExtension19CoreDataStackShared_context);
  sub_1000FF864();
  v42 = v4;
  v43 = v3;
  (*(v4 + 56))(v8, 0, 1, v3);
  sub_1000FFC24();
  v23 = sub_1000FFC14();
  type metadata accessor for EntryViewModel();
  swift_allocObject();
  v24 = v23;
  v25 = sub_1000E4878(v24, 1, 1, v22);
  sub_100010014(v14, v12, &qword_10014D0C8);
  v26 = v12;
  if ((*(v21 + 48))(v12, 1, v20) == 1)
  {

    sub_10000FFB4(v8, &qword_10014CD08);
    sub_10000FFB4(v14, &qword_10014D0C8);
    (*(v44 + 8))(v17, v45);
    result = sub_10000FFB4(v12, &qword_10014D0C8);
  }

  else
  {
    v28 = v8;
    v30 = v44;
    v29 = v45;
    v31 = sub_100007210(&qword_10014D0D0);
    if ((*(*(v31 - 8) + 48))(v26, 2, v31))
    {

      sub_10000FFB4(v28, &qword_10014CD08);
      sub_10000FFB4(v14, &qword_10014D0C8);
      (*(v30 + 8))(v17, v29);
      result = sub_100019944(v26);
    }

    else
    {
      v32 = v26;
      v33 = v42;
      v34 = *(v42 + 32);
      v40 = v14;
      v35 = v25;
      v36 = v41;
      v37 = v43;
      v34(v41, v32, v43);

      sub_1000E60B0(v36);

      v38 = v36;
      v25 = v35;
      (*(v33 + 8))(v38, v37);
      sub_10000FFB4(v28, &qword_10014CD08);
      sub_10000FFB4(v40, &qword_10014D0C8);
      result = (*(v30 + 8))(v17, v29);
    }
  }

  *v46 = v25;
  return result;
}

uint64_t sub_10003C014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = sub_100007210(&unk_10014D0B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v9 = sub_100100034();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = "Long Mindfulness Session";
  v22 = "endMindfulnessSession()";
  v20 = " a radar if that is an error";
  v13 = *(a3 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_ttrErrorDescription);
  v14 = *(a3 + OBJC_IVAR____TtC21JournalShareExtension18MindfulnessManager_ttrErrorDescription + 8);
  v19 = v13;
  (*(v10 + 104))(v12, enum case for TapToRadarUtilities.RadarClassification.otherBug(_:), v9);
  (*(v6 + 16))(v8, a1, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v8, v5);

  sub_10007ED20(0xD000000000000018, v22 | 0x8000000000000000, 0xD00000000000005CLL, v21 | 0x8000000000000000, 0xD00000000000002ELL, v20 | 0x8000000000000000, v19, v14, v12, sub_10003D274, v16);

  return (*(v10 + 8))(v12, v9);
}

void sub_10003C368(void *a1)
{
  v2 = v1;
  v4 = sub_100100F94();
  isa = sub_1000FFA14().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  type metadata accessor for MosaicCell();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
LABEL_25:

    __break(1u);
    return;
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_photoAssets;
  v10 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_photoAssets);
  if (v10 >> 62)
  {
    if (sub_100101DA4() != 1)
    {
      goto LABEL_11;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    goto LABEL_11;
  }

  v6 = *(v1 + v9);
  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    if ((v6 & 0xC000000000000001) != 0)
    {

      v11 = sub_100101CA4();

LABEL_9:
      type metadata accessor for PhotoAsset();
      v6 = swift_dynamicCastClass();

      if (v6)
      {
        *(v8 + OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_hasOnlyOneImage) = 1;
      }

      goto LABEL_11;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v6 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_11:
  while (1)
  {
    v12 = sub_1000FFA34();
    v13 = *(v2 + v9);
    if ((v13 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v13 + 8 * v12 + 32);
      goto LABEL_15;
    }

    __break(1u);
LABEL_21:
    if (sub_100101DA4())
    {
      goto LABEL_6;
    }
  }

  v17 = sub_100101CA4();

  v14 = v17;
LABEL_15:
  v15 = *(v8 + OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_journalAsset);
  *(v8 + OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_journalAsset) = v14;
  v16 = v14;

  sub_100072EF8();
}

void sub_10003C6B0(char *a1)
{
  if (*&a1[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_canvasIdleTracker])
  {
    v1 = a1;

    sub_100094F84();
  }
}

uint64_t sub_10003C724@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  *a1 = v3;
  return result;
}

uint64_t sub_10003C7A4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_100101654();
}

uint64_t sub_10003C81C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10003C85C()
{
  v40 = [objc_allocWithZone(type metadata accessor for MosaicLayout()) init];
  v1 = v40[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_sizeType];
  v40[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_sizeType] = 1;
  if (v1 <= 1 && v1)
  {
  }

  else
  {
    v2 = sub_100101E84();

    if ((v2 & 1) == 0)
    {
      [v40 invalidateLayout];
    }
  }

  v3 = *&v0[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_outerCornerRadius];
  v4 = *&v0[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_outerCornerRadius + 8];
  v5 = v40;
  v6 = &v40[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerTopCornerRadius];
  v7 = *&v40[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerTopCornerRadius];
  v8 = *&v40[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerTopCornerRadius + 8];
  v9 = v40[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerTopCornerRadius + 16];
  *v6 = v3;
  v6[1] = v4;
  *(v6 + 16) = 0;
  if ((v9 & 1) != 0 || (v3 == v7 ? (v10 = v4 == v8) : (v10 = 0), !v10))
  {
    [v40 invalidateLayout];
    v5 = v40;
  }

  v11 = &v5[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerBottomCornerRadius];
  v12 = *&v5[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerBottomCornerRadius];
  v13 = *&v5[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerBottomCornerRadius + 8];
  v14 = v5[OBJC_IVAR____TtC21JournalShareExtension12MosaicLayout_outerBottomCornerRadius + 16];
  *v11 = v3;
  v11[1] = v4;
  *(v11 + 16) = 0;
  if ((v14 & 1) != 0 || (v3 == v12 ? (v15 = v4 == v13) : (v15 = 0), !v15))
  {
    [v40 invalidateLayout];
  }

  v16 = [objc_allocWithZone(type metadata accessor for CanvasGridCollectionView()) initWithFrame:v40 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v17 = *&v0[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_gridCollectionView];
  *&v0[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_gridCollectionView] = v16;
  v18 = v16;

  if (v18)
  {
    v19 = v18;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    type metadata accessor for MosaicCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = v19;
    v22 = sub_100100F94();
    [v21 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v22];

    [v21 setDataSource:v0];
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v21;
    sub_100101984();
    sub_100056080(v23);
    v24 = *&v0[OBJC_IVAR____TtC21JournalShareExtension27JurassicShareViewController_containerView];
    [v24 addSubview:v23];
    v25 = objc_opt_self();
    sub_100007210(&unk_10014D0F0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10010CA30;
    v27 = [v23 topAnchor];
    v28 = [v24 topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v26 + 32) = v29;
    v30 = [v23 leadingAnchor];
    v31 = [v24 leadingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v26 + 40) = v32;
    v33 = [v23 bottomAnchor];
    v34 = [v24 bottomAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:-16.0];

    *(v26 + 48) = v35;
    v36 = [v23 trailingAnchor];

    v37 = [v24 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(v26 + 56) = v38;
    sub_100010F50(0, &qword_10014CC08);
    isa = sub_1001011C4().super.isa;

    [v25 activateConstraints:isa];

    [v0 presentKeyboard];
  }

  else
  {
  }
}

uint64_t sub_10003CE18()
{
  v1 = v0;
  v2 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  if (qword_10014B6E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for DataStackConfiguration();
  v6 = sub_100003D38(v5, qword_100158648);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = objc_allocWithZone(type metadata accessor for CoreDataStackShared());
  v10 = sub_10005C1CC(v7, v8);
  v11 = sub_100101324();
  v12 = *(*(v11 - 8) + 56);
  v12(v4, 1, 1, v11);
  sub_100101304();
  v13 = v10;
  v14 = v1;
  v15 = sub_1001012F4();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v13;
  v16[5] = v14;
  sub_1000D7A60(0, 0, v4, &unk_10010CB08, v16);

  v12(v4, 1, 1, v11);
  v17 = v14;
  v18 = sub_1001012F4();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  sub_1000D73F8(0, 0, v4, &unk_10010CB18, v19);
}

uint64_t sub_10003D048()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D088(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10003D0A0()
{
  result = qword_10014D090;
  if (!qword_10014D090)
  {
    sub_100100C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014D090);
  }

  return result;
}