uint64_t sub_1000010D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_10000304C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v5 = sub_10000302C();
  v2[8] = v5;
  v6 = *(v5 - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = *(*(sub_100002F6C() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = sub_100002F7C();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v12 = async function pointer to ThumbnailRequest.data.getter[1];
  v13 = swift_task_alloc();
  v2[15] = v13;
  *v13 = v2;
  v13[1] = sub_1000012B8;

  return ThumbnailRequest.data.getter();
}

uint64_t sub_1000012B8(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 120);
  v5 = *v3;
  v5[16] = a1;
  v5[17] = a2;

  if (v2)
  {
    v6 = v5[14];
    v8 = v5[10];
    v7 = v5[11];
    v9 = v5[7];

    v10 = v5[1];

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_100001420, 0, 0);
  }
}

uint64_t sub_100001420()
{
  v1 = v0[16];
  v2 = v0[17];
  isa = sub_100002F9C().super.isa;
  FontDescriptorsFromData = CTFontManagerCreateFontDescriptorsFromData(isa);

  MutableCopy = CFArrayCreateMutableCopy(0, 0, FontDescriptorsFromData);
  if (MutableCopy)
  {
    v6 = MutableCopy;
    v27.length = CFArrayGetCount(v6);
    v27.location = 0;
    CFArraySortValues(v6, v27, &CTFontManagerCompareFontDescriptors, 0);

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for CTFontDescriptor(0);
      v7 = v6;
      sub_1000030CC();
    }

    v15 = v0[16];
    v14 = v0[17];
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[11];
    v19 = v0[12];
    sub_100002F5C();
    sub_100002594(&_swiftEmptyArrayStorage);
    sub_1000020E4(&qword_100008090, &type metadata accessor for CocoaError);
    sub_100002F8C();
    sub_100002F4C();
    (*(v17 + 8))(v16, v19);
    swift_willThrow();
    sub_1000026A4(v15, v14);
  }

  else
  {
    v9 = v0[16];
    v8 = v0[17];
    v11 = v0[13];
    v10 = v0[14];
    v12 = v0[11];
    v13 = v0[12];
    sub_100002F5C();
    sub_100002594(&_swiftEmptyArrayStorage);
    sub_1000020E4(&qword_100008090, &type metadata accessor for CocoaError);
    sub_100002F8C();
    sub_100002F4C();
    (*(v11 + 8))(v10, v13);
    swift_willThrow();
    sub_1000026A4(v9, v8);
  }

  v20 = v0[14];
  v22 = v0[10];
  v21 = v0[11];
  v23 = v0[7];

  v24 = v0[1];

  return v24();
}

void sub_100001984(CGContext *a1, CGFloat a2, double a3, double a4, double a5, double a6, uint64_t a7, const __CTLine *a8)
{
  v15 = sub_10000302C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = (__chkstk_darwin)();
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v34 - v21;
  sub_10000303C();
  sub_10000301C();
  v24 = v23;
  v25 = *(v16 + 8);
  v25(v22, v15);
  sub_10000303C();
  sub_10000301C();
  v27 = v26;
  v25(v20, v15);
  CGContextScaleCTM(a1, v24, v27);
  CGContextSetGrayFillColor(a1, 1.0, 1.0);
  sub_100002C08(&qword_100008098, &qword_100003610);
  v28._rawValue = swift_allocObject();
  origin = CGRectInfinite.origin;
  size = CGRectInfinite.size;
  *(v28._rawValue + 1) = xmmword_100003550;
  *(v28._rawValue + 2) = origin;
  *(v28._rawValue + 3) = size;
  sub_1000030EC(v28);

  CGContextTranslateCTM(a1, a2, a2);
  CGContextSetGrayStrokeColor(a1, 0.4, 1.0);
  sub_10000303C();
  sub_10000301C();
  v32 = v31;
  v25(v22, v15);
  CGContextSetLineWidth(a1, 1.0 / v32);
  CGContextSetShouldAntialias(a1, 0);
  sub_100002C08(&qword_1000080A0, &qword_100003618);
  v33._rawValue = swift_allocObject();
  *(v33._rawValue + 1) = xmmword_100003560;
  *(v33._rawValue + 4) = -a2;
  *(v33._rawValue + 5) = -a4;
  *(v33._rawValue + 6) = a5;
  *(v33._rawValue + 7) = -a4;
  *(v33._rawValue + 8) = -a2;
  *(v33._rawValue + 9) = a6 - a4;
  *(v33._rawValue + 10) = a5;
  *(v33._rawValue + 11) = a6 - a4;
  sub_1000030DC(v33);

  CGContextSetShouldAntialias(a1, 1);
  CGContextTranslateCTM(a1, -a3, -a4);
  CTLineDraw(a8, a1);
}

uint64_t sub_100001C58@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000306C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100001CC0(uint64_t a1)
{
  v2 = sub_1000020E4(&qword_100008088, type metadata accessor for FontThumbnailExtension);

  return ThumbnailExtension.configuration.getter(a1, v2);
}

uint64_t sub_100001D3C()
{
  v0 = sub_10000309C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_10000308C();
  return sub_10000305C();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for FontThumbnailExtension();
  sub_1000020E4(&qword_100008000, type metadata accessor for FontThumbnailExtension);
  sub_100002FDC();
  return 0;
}

uint64_t type metadata accessor for FontThumbnailExtension()
{
  result = qword_100008120;
  if (!qword_100008120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001EC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000306C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100001F40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000306C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100001FB0()
{
  result = sub_10000306C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000020E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000212C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_100002FCC();
}

uint64_t sub_100002178()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_100002FBC();
}

Swift::Int sub_1000021D0()
{
  sub_10000313C();
  v1 = *v0;
  swift_getWitnessTable();
  sub_100002FBC();
  return sub_10000314C();
}

uint64_t sub_100002238(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_100002FAC();
}

unint64_t sub_1000022A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000313C();
  sub_1000030BC();
  v6 = sub_10000314C();

  return sub_10000231C(a1, a2, v6);
}

unint64_t sub_10000231C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10000312C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000023D4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10000313C();
  type metadata accessor for CFString(0);
  sub_1000020E4(&qword_1000080C8, type metadata accessor for CFString);
  sub_100002FBC();
  v4 = sub_10000314C();

  return sub_100002488(a1, v4);
}

unint64_t sub_100002488(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1000020E4(&qword_1000080C8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100002FAC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100002594(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002C08(&qword_1000080D0, &qword_100003638);
    v3 = sub_10000311C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100002CE8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000022A4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100002D58(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1000026A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10000270C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002C08(&qword_1000080C0, &qword_100003630);
    v3 = sub_10000311C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1000023D4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_100002804(const __CTFontDescriptor *a1, double a2, double a3)
{
  v6 = sub_100002C50(a1, 100.0);
  v7 = CTFontCopySampleString();
  sub_100002C08(&qword_1000080A8, &qword_100003620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100003550;
  *(inited + 32) = kCTFontAttributeName;
  *(inited + 40) = v6;
  v9 = kCTFontAttributeName;
  v10 = v6;
  sub_10000270C(inited);
  swift_setDeallocating();
  sub_100002C58(inited + 32);
  type metadata accessor for CFString(0);
  type metadata accessor for CTFont(0);
  sub_1000020E4(&qword_1000080B8, type metadata accessor for CFString);
  isa = sub_1000030AC().super.isa;

  v12 = CTLineCreateWithString();

  BoundsWithOptions = CTLineGetBoundsWithOptions(v12, 8uLL);
  x = BoundsWithOptions.origin.x;
  y = BoundsWithOptions.origin.y;
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  v17 = CGRectGetWidth(BoundsWithOptions);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v18 = CGRectGetHeight(v26);
  if (v17 > v18)
  {
    v18 = v17;
  }

  if (a3 >= a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = a3;
  }

  v20 = sub_100002C50(a1, v19 * (100.0 / v18));
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_100003550;
  *(v21 + 32) = v9;
  *(v21 + 40) = v20;
  v20;
  sub_10000270C(v21);
  swift_setDeallocating();
  sub_100002C58(v21 + 32);
  v22 = sub_1000030AC().super.isa;

  v23 = CTLineCreateWithString();

  return v23;
}

uint64_t sub_100002A80()
{
  v1 = sub_10000304C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100002B3C(CGContext *a1)
{
  v3 = *(sub_10000304C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_100001984(a1, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), v1 + v4, *(v1 + ((((((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100002C08(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002C58(uint64_t a1)
{
  v2 = sub_100002C08(&qword_1000080B0, &qword_100003628);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002C08(&qword_1000080D8, &qword_100003640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100002D58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 sub_100002D68(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002DA0(uint64_t a1, int a2)
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

uint64_t sub_100002DC0(uint64_t result, int a2, int a3)
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

__n128 sub_100002DFC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002E08(uint64_t a1, int a2)
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

uint64_t sub_100002E28(uint64_t result, int a2, int a3)
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

void sub_100002E68(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}