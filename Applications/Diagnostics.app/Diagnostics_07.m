uint64_t AppleQRCodeConfiguration.deinit()
{

  return v0;
}

uint64_t AppleQRCodeConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall AppleQRCodeConfiguration.update(text:errorCorrection:)(Swift::String text, Diagnostics::ErrorCorrection errorCorrection)
{
  v3 = *(v2 + 56);
  *(v3 + 32) = errorCorrection;

  sub_1000D6724();
  v5 = v4;

  if (v5)
  {
    *(v3 + 24) = v5;
  }
}

Swift::Void __swiftcall AppleQRCodeConfiguration.setHasChanged()()
{
  type metadata accessor for AppleQRCodeConfiguration();
  sub_1000D1760();
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();
}

uint64_t sub_1000D3784@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppleQRCodeConfiguration();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

UIImage __swiftcall UIImage.tinted(_:)(UIColor a1)
{
  v2 = v1;
  [(objc_class *)v1 size];
  v5 = v4;
  v7 = v6;
  [(objc_class *)v1 size];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v8, v9}];
  v11 = swift_allocObject();
  v11[3].super.isa = 0;
  v11[4].super.isa = 0;
  v11[2].super.isa = v2;
  v11[5].super.isa = v5;
  v11[6].super.isa = v7;
  v11[7].super.isa = a1.super.isa;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1000D3F2C;
  *(v12 + 24) = v11;
  v18[4] = sub_1000D3F40;
  v18[5] = v12;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1000D3BAC;
  v18[3] = &unk_1001C4C70;
  v13 = _Block_copy(v18);
  v14 = v2;
  v15 = a1.super.isa;

  v16 = [v10 imageWithActions:v13];

  _Block_release(v13);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    return v16;
  }

  __break(1u);
  return result;
}

double UIImage.aspectRatio.getter()
{
  [v0 size];
  v2 = v1;
  [v0 size];
  return v2 / v3;
}

uint64_t UIImage.resize(to:)(double a1, double a2)
{
  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a1, a2}];
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000D639C;
  *(v7 + 24) = v6;
  v12[4] = sub_1000D63A0;
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000D3BAC;
  v12[3] = &unk_1001C4CE8;
  v8 = _Block_copy(v12);
  v9 = v2;

  v10 = [v5 imageWithActions:v8];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void sub_1000D3BAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t UIImage.resizePreservingAspectRatio(targetSize:)(double a1, double a2)
{
  [v2 size];
  v6 = a1 / v5;
  [v2 size];
  if (a2 / v7 < v6)
  {
    v6 = a2 / v7;
  }

  [v2 size];
  v9 = v8 * v6;
  [v2 size];
  v11 = v6 * v10;
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v9, v11}];
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000D3FB8;
  *(v14 + 24) = v13;
  v19[4] = sub_1000D63A0;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_1000D3BAC;
  v19[3] = &unk_1001C4D60;
  v15 = _Block_copy(v19);
  v16 = v2;

  v17 = [v12 imageWithActions:v15];

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if ((v12 & 1) == 0)
  {
    return v17;
  }

  __break(1u);
  return result;
}

void sub_1000D3DE0(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  c = [a1 CGContext];
  [a2 size];
  CGContextTranslateCTM(c, 0.0, v13);
  CGContextScaleCTM(c, 1.0, -1.0);
  v14 = [a2 CGImage];
  if (v14)
  {
    v15 = v14;
    v18.origin.x = a4;
    v18.origin.y = a5;
    v18.size.width = a6;
    v18.size.height = a7;
    CGContextClipToMask(c, v18, v14);
  }

  [a3 setFill];
  v19.origin.x = a4;
  v19.origin.y = a5;
  v19.size.width = a6;
  v19.size.height = a7;
  CGContextFillRect(c, v19);
}

uint64_t sub_1000D3EEC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000D3F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D3F80()
{

  return _swift_deallocObject(v0, 40, 7);
}

UIImage_optional __swiftcall UIImage.scaled(to:)(Swift::Int to)
{
  v3 = UIImagePNGRepresentation(v1);
  if (v3)
  {
    v5 = v3;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v10 = CGImageSourceCreateWithData(isa, 0);

    if (v10)
    {
      sub_10003C49C(&qword_1002006C8);
      inited = swift_initStackObject();
      *(inited + 32) = kCGImageSourceCreateThumbnailWithTransform;
      *(inited + 16) = xmmword_10017EF10;
      *(inited + 40) = 1;
      *(inited + 64) = &type metadata for Bool;
      *(inited + 72) = kCGImageSourceCreateThumbnailFromImageIfAbsent;
      *(inited + 80) = 1;
      *(inited + 104) = &type metadata for Bool;
      *(inited + 112) = kCGImageSourceThumbnailMaxPixelSize;
      *(inited + 144) = &type metadata for Int;
      *(inited + 120) = to;
      v12 = kCGImageSourceCreateThumbnailWithTransform;
      v13 = kCGImageSourceCreateThumbnailFromImageIfAbsent;
      v14 = kCGImageSourceThumbnailMaxPixelSize;
      sub_1000D5D20(inited);
      swift_setDeallocating();
      sub_10003C49C(&qword_1002006D0);
      swift_arrayDestroy();
      type metadata accessor for CFString(0);
      sub_1000D5FD8(&qword_1001FCA78, type metadata accessor for CFString);
      v15 = Dictionary._bridgeToObjectiveC()().super.isa;

      ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v10, 0, v15);

      if (ThumbnailAtIndex)
      {
        v17 = [objc_allocWithZone(UIImage) initWithCGImage:ThumbnailAtIndex];

        sub_10005F18C(v6, v8);
        v3 = v17;
        goto LABEL_7;
      }
    }

    sub_10005F18C(v6, v8);
    v3 = 0;
  }

LABEL_7:
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t UIImage.scale(by:)(double a1)
{
  [v1 size];
  v4 = v3 * a1;
  v6 = v5 * a1;

  return UIImage.resize(to:)(v4, v6);
}

id UIImage.averageColor(inImageView:areaRect:)(void *a1, double a2, double a3, double a4, double a5)
{
  [v5 size];
  v12 = v11;
  [a1 frame];
  Width = CGRectGetWidth(v54);
  [v5 size];
  v15 = v14;
  [a1 frame];
  Height = CGRectGetHeight(v55);
  result = [v5 CGImage];
  if (result)
  {
    v18 = v12 / Width;
    if (v12 / Width <= v15 / Height)
    {
      v18 = v15 / Height;
    }

    v56.size.height = v18 * a5;
    v56.size.width = v18 * a4;
    v56.origin.y = v18 * a3;
    v56.origin.x = v18 * a2;
    v19 = result;
    v20 = CGImageCreateWithImageInRect(result, v56);

    if (v20)
    {
      v21 = [objc_allocWithZone(CIImage) initWithCGImage:v20];
      [v21 extent];
      v22 = CGRectGetWidth(v57);
      [v21 extent];
      v23 = [objc_allocWithZone(CIVector) initWithX:0.0 Y:0.0 Z:v22 W:CGRectGetHeight(v58)];
      sub_10003C49C(&qword_1001FDF48);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10017EC10;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v25;
      *(inited + 72) = sub_10003E110(0, &qword_1002006D8);
      *(inited + 48) = v21;
      *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 88) = v26;
      *(inited + 120) = sub_10003E110(0, &qword_1002006E0);
      *(inited + 96) = v23;
      v27 = v21;
      v28 = v23;
      sub_1000D59EC(inited);
      swift_setDeallocating();
      sub_10003C49C(&qword_1001FDF58);
      swift_arrayDestroy();
      v29 = String._bridgeToObjectiveC()();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v31 = [objc_opt_self() filterWithName:v29 withInputParameters:isa];

      if (v31)
      {
        v32 = [v31 outputImage];
        if (v32)
        {
          v33 = v32;
          v53 = v28;
          v34 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v34 + 16) = 4;
          *(v34 + 32) = 0;
          v35 = (v34 + 32);
          sub_10003C49C(&qword_1002006E8);
          result = swift_initStackObject();
          *(result + 1) = xmmword_10017EC00;
          *(result + 4) = kCIContextWorkingColorSpace;
          v36 = result + 32;
          if (!kCFNull)
          {
LABEL_21:
            __break(1u);
            return result;
          }

          v37 = result;
          type metadata accessor for CFNull(0);
          *(v37 + 64) = v38;
          *(v37 + 40) = kCFNull;
          v39 = kCIContextWorkingColorSpace;
          v40 = kCFNull;
          sub_1000D5E48(v37);
          swift_setDeallocating();
          sub_1000D5F70(v36);
          v41 = objc_allocWithZone(CIContext);
          type metadata accessor for CIContextOption(0);
          sub_1000D5FD8(&qword_1001FCB00, type metadata accessor for CIContextOption);
          v42 = Dictionary._bridgeToObjectiveC()().super.isa;

          v43 = [v41 initWithOptions:v42];

          result = [v43 render:v33 toBitmap:v35 rowBytes:4 bounds:kCIFormatRGBA8 format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}];
          v45 = *(v34 + 16);
          if (v45)
          {
            if (v45 != 1)
            {
              if (v45 >= 3)
              {
                if (v45 != 3)
                {
                  LOBYTE(v44) = *v35;
                  *&v46 = v44;
                  v47 = *&v46 / 255.0;
                  LOBYTE(v46) = *(v34 + 33);
                  *&v48 = v46;
                  v49 = *&v48 / 255.0;
                  LOBYTE(v48) = *(v34 + 34);
                  *&v50 = v48;
                  v51 = *&v50 / 255.0;
                  LOBYTE(v50) = *(v34 + 35);
                  v52 = [objc_allocWithZone(UIColor) initWithRed:v47 green:v49 blue:v51 alpha:v50 / 255.0];

                  return v52;
                }

                goto LABEL_20;
              }

LABEL_19:
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_19;
        }
      }
    }

    return 0;
  }

  return result;
}

UIImage *UIImage.imageWithBorder(width:color:cornerRadius:)(void *a1, double a2, double a3)
{
  [v3 size];
  v8 = v7;
  [v3 size];
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  [v3 size];
  v12 = v11;
  [v3 size];
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, a2 + a2 + v10, a2 + a2 + v14}];
  [v15 setContentMode:4];
  [v15 setImage:v3];
  v16 = [v15 layer];
  [v16 setBorderWidth:a2];

  v17 = [v15 layer];
  [v17 setCornerRadius:a3];

  v18 = [v15 layer];
  v19 = [a1 CGColor];
  [v18 setBorderColor:v19];

  [v15 bounds];
  v21 = v20;
  v23 = v22;
  [v3 scale];
  v25 = v24;
  v31.width = v21;
  v31.height = v23;
  UIGraphicsBeginImageContextWithOptions(v31, 0, v25);
  v26 = UIGraphicsGetCurrentContext();
  if (v26)
  {
    v27 = v26;
    v28 = [v15 layer];

    [v28 renderInContext:v27];
    v29 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return v29;
  }

  else
  {

    return v3;
  }
}

void UIImage.stroked(with:thickness:quality:)(UIColor a1, long double a2, double a3)
{
  v7 = [v3 CGImage];
  if (v7)
  {
    v8 = v7;
    v9.super.isa = UIImage.tinted(_:)(a1).super.isa;
    v10 = [(objc_class *)v9.super.isa CGImage];
    if (!v10)
    {
      v35;

      return;
    }

    v11 = v10;
    v12 = fabs(a3);
    if (a3 == 0.0)
    {
      v13 = 10.0;
    }

    else
    {
      v13 = v12;
    }

    [v35 size];
    v15 = v14;
    [v35 size];
    v39.size.height = v16;
    v39.origin.x = a2;
    v39.origin.y = a2;
    v39.size.width = v15;
    CGRectIntegral(v39);
    [v35 size];
    v18 = a2 + a2 + v17;
    [v35 size];
    v20 = a2 + a2 + v19;
    [v35 scale];
    v22 = v21;
    v38.width = v18;
    v38.height = v20;
    UIGraphicsBeginImageContextWithOptions(v38, 0, v22);
    v23 = UIGraphicsGetCurrentContext();
    if (!v23)
    {
      v35;

      return;
    }

    v24 = v23;
    CGContextTranslateCTM(v23, 0.0, v20);
    CGContextScaleCTM(v24, 1.0, -1.0);
    CGContextSetInterpolationQuality(v24, kCGInterpolationHigh);
    if (v13 == 0.0)
    {
      goto LABEL_21;
    }

    if (v13 > 0.0)
    {
      v25 = 0;
      v26 = 0.0;
      v27 = sqrt(a2 * a2);
      while (!__OFADD__(v25, 1))
      {
        v28 = (v25 + 1) * v13 + 0.0;
        v29 = atan2(0.0, a2);
        v30 = __sincos_stret(v26 * 3.14159265 / 180.0 + v29);
        v31 = v27 * v30.__cosval + 0.0;
        v32 = v27 * v30.__sinval + 0.0;
        CGAffineTransformMakeTranslation(&transform, v31, v32);
        CGContextConcatCTM(v24, &transform);
        CGContextRef.draw(_:in:byTiling:)();
        CGAffineTransformMakeTranslation(&transform, -v31, -v32);
        CGContextConcatCTM(v24, &transform);
        ++v25;
        v26 = v28;
        if (v28 >= 360.0)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

LABEL_12:
    CGContextRef.draw(_:in:byTiling:)();
    if (!UIGraphicsGetImageFromCurrentImageContext())
    {
      v33 = v35;
    }

    UIGraphicsEndImageContext();
  }

  else
  {

    v34 = v35;
  }
}

char *sub_1000D4D64(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003C49C(&qword_100200738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1000D4ECC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003C49C(&qword_100201290);
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

char *sub_1000D4FD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003C49C(&qword_1001FE6C8);
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

char *sub_1000D5134(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003C49C(&qword_1001FFB30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1000D5228(char *result, int64_t a2, char a3, char *a4)
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
    sub_100105A70();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1000D5350(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10003C49C(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1000D5550(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10003C49C(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10003C49C(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

unint64_t sub_1000D5698(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_1002025A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100064AFC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1000D57AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200700);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100044704(v4, v13, &qword_1001FE6C0);
      result = sub_100064B74(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100049EFC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1000D58E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200730);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100064AFC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D59EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100201F00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100044704(v4, &v13, &qword_1001FDF58);
      v5 = v13;
      v6 = v14;
      result = sub_100064AFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100049EFC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000D5B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_1002025D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100064AFC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D5C20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200728);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *i;

      result = sub_100064AFC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D5D20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200748);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100044704(v4, &v11, &qword_1002006D0);
      v5 = v11;
      result = sub_100064E14(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100049EFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D5E48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200740);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100044704(v4, &v11, &qword_1002006F0);
      v5 = v11;
      result = sub_100068EBC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100049EFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000D5F70(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1002006F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D5FD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000D6020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200710);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100044704(v4, &v11, &qword_100200718);
      v5 = v11;
      result = sub_100068EBC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100049EFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D6148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003C49C(&qword_100200750);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100044704(v4, &v11, &qword_100200758);
      v5 = v11;
      result = sub_100068EBC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100049EFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1000D6270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10003C49C(&qword_100200708);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100068EB8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_100068EB8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1000D63A4(double a1)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  type metadata accessor for BoolMatrix();
  v5 = swift_allocObject();
  if ((v4 * v4) >> 64 != (v4 * v4) >> 63)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v4 * v4 != *(v3 + 2))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v6 = v5;
  v5[2] = v4;
  v5[3] = v4;
  v5[4] = v3;

  if (v4 < 0)
  {
LABEL_31:
    __break(1u);
    return;
  }

  if (v4)
  {
    v7 = 0;
    v8 = v4 * a1;
    while (1)
    {
      v9 = v7 - v4 / 2;
      v10 = v9 * v9;
      if ((v9 * v9) >> 64 != (v9 * v9) >> 63)
      {
        break;
      }

      v11 = 0;
      v12 = v7 + 1;
      v13 = v7 * v4;
      v14 = (v7 * v4) >> 64 != (v7 * v4) >> 63;
      v15 = v4 / -2;
      do
      {
        v16 = v15 * v15;
        if ((v15 * v15) >> 64 != (v15 * v15) >> 63)
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v17 = __OFADD__(v10, v16);
        v18 = v10 + v16;
        if (v17)
        {
          goto LABEL_24;
        }

        if (sqrt(v18) <= v8)
        {
          if (v14)
          {
            goto LABEL_25;
          }

          v19 = v13 + v11;
          if (__OFADD__(v13, v11))
          {
            goto LABEL_26;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if ((v19 & 0x8000000000000000) != 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v3 = sub_10003B9AC(v3);
            if ((v19 & 0x8000000000000000) != 0)
            {
LABEL_21:
              __break(1u);
              return;
            }
          }

          if (v19 >= *(v3 + 2))
          {
            goto LABEL_27;
          }

          v3[v19 + 32] = 0;
          v6[4] = v3;
        }

        ++v11;
        ++v15;
      }

      while (v4 != v11);
      v7 = v12;
      if (v12 == v4)
      {
        return;
      }
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }
}

uint64_t sub_1000D6560()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_1000D65E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D6640()
{
  String.hash(into:)();
}

Swift::Int sub_1000D6680()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000D66D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11Diagnostics15ErrorCorrectionO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1000D6724()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  if (v7 >> 60 != 15)
  {
    v8 = *(v0 + 24);
    if (!v8 || (isa = Data._bridgeToObjectiveC()().super.isa, v10 = String._bridgeToObjectiveC()(), [v8 setValue:isa forKey:v10], isa, v10, v11 = String._bridgeToObjectiveC()(), , v12 = String._bridgeToObjectiveC()(), objc_msgSend(v8, "setValue:forKey:", v11, v12), v11, v12, (v13 = objc_msgSend(v8, "outputImage")) == 0))
    {
      sub_1000882D4(v5, v7);
      return;
    }

    v14 = v13;
    v15 = *(v0 + 16);
    [v13 extent];
    v16 = [v15 createCGImage:v14 fromRect:?];
    if (!v16)
    {
      sub_1000882D4(v5, v7);

      return;
    }

    v17 = v16;
    Width = CGImageGetWidth(v16);
    Height = CGImageGetHeight(v17);
    DeviceGray = CGColorSpaceCreateDeviceGray();
    v21 = Width * Height;
    if ((Width * Height) >> 64 == (Width * Height) >> 63)
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        v22 = DeviceGray;
        v23 = _swiftEmptyArrayStorage;
        if (v21)
        {
          v24 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v24[2] = v21;
          bzero(v24 + 4, Width * Height);
        }

        else
        {
          v24 = _swiftEmptyArrayStorage;
        }

        v25 = sub_1000D6C60(v24 + 4, Width, Height, Width, v22);
        if (v25)
        {
          v26 = v25;
          CGContextRef.draw(_:in:byTiling:)();
        }

        v27 = v24[2];
        if (v27)
        {
          v34 = v22;
          v35 = v17;
          v36 = Width;
          v37 = v14;
          v38 = _swiftEmptyArrayStorage;
          sub_1000B7C5C(0, v27, 0);
          v23 = v38;
          v28 = v38[2];
          v29 = 32;
          do
          {
            v30 = *(v24 + v29);
            v38 = v23;
            v31 = v23[3];
            if (v28 >= v31 >> 1)
            {
              sub_1000B7C5C((v31 > 1), v28 + 1, 1);
              v23 = v38;
            }

            v23[2] = v28 + 1;
            *(v23 + v28 + 32) = v30 == 0;
            ++v29;
            ++v28;
            --v27;
          }

          while (v27);

          Width = v36;
          v14 = v37;
          v22 = v34;
          v17 = v35;
        }

        else
        {
        }

        type metadata accessor for BoolMatrix();
        v32 = swift_allocObject();
        sub_1000882D4(v5, v7);

        v32[2] = 0;
        v32[3] = 0;
        v32[4] = _swiftEmptyArrayStorage;
        if ((Width * Width) >> 64 == (Width * Width) >> 63)
        {
          if (Width * Width == v23[2])
          {
            v32[2] = Width;
            v32[3] = Width;
            v32[4] = v23;

            return;
          }

LABEL_28:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }
}

uint64_t sub_1000D6B48()
{

  return swift_deallocClassInstance();
}

unint64_t _s11Diagnostics15ErrorCorrectionO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001BDD48, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000D6BD8()
{
  result = qword_100200858;
  if (!qword_100200858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200858);
  }

  return result;
}

uint64_t sub_1000D6CB8(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 sub_1000D6CD4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000D6CE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000D6D30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000D6D78(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

id sub_1000D6DA4(unint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if (!a4)
  {
    v10 = objc_opt_self();
    a1;
    a2;
    return [v10 whiteColor];
  }

  if (a4 == 1)
  {
    v6 = a1;
    a2;
    v7 = a3;
    return v6;
  }

  v11 = a3 | a2;
  if (!(a3 | a2 | a1))
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  if (a1 == 1 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.992156863 green:0.57254902 blue:0.117647059 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
LABEL_28:
    v14 = v13;
    v12;
    return v14;
  }

  if (a1 == 2 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.988235294 green:0.223529412 blue:0.207843137 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  if (a1 == 3 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.674509804 green:0.11372549 blue:0.184313725 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  if (a1 == 4 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.788235294 blue:0.152941176 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  if (a1 == 5 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.321568627 green:0.839215686 blue:0.411764706 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  if (a1 == 6 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.0352941176 green:0.501960784 blue:0.984313725 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  if (a1 == 7 && !v11)
  {
    v12 = [objc_allocWithZone(UIColor) initWithRed:0.360784314 green:0.788235294 blue:0.968627451 alpha:1.0];
    v13 = [objc_opt_self() whiteColor];
    goto LABEL_28;
  }

  [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  [objc_allocWithZone(UIColor) initWithRed:0.333333333 green:0.333333333 blue:0.333333333 alpha:1.0];
  return [objc_opt_self() whiteColor];
}

uint64_t sub_1000D71E8()
{

  sub_10003C52C(*(v0 + 40));

  return swift_deallocClassInstance();
}

void *sub_1000D724C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 48);
  if (!*(a1 + 48))
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    *(v17 + 24) = v4;
    *(v17 + 32) = v2;
    type metadata accessor for AlertAction();
    v18 = swift_allocObject();
    v18[2] = 0xD000000000000017;
    v18[3] = 0x800000010018C890;
    v18[4] = 2;
    v18[5] = sub_1000D7818;
    v18[6] = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v3;
    *(v19 + 24) = v5;
    v20 = swift_allocObject();
    v20[2] = 0x4C45434E4143;
    v20[3] = 0xE600000000000000;
    v20[4] = 1;
    v20[5] = sub_1000BA268;
    v20[6] = v19;
    sub_10003C49C(&unk_1001FD020);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10017ED90;
    *(v21 + 32) = v18;
    *(v21 + 40) = v20;
    sub_10003E418(v1, v4);
    sub_10003E418(v3, v5);
    return v21;
  }

  v7 = a1[5];
  if (v6 != 1)
  {
    if (v6 == 2)
    {
      if (!(v4 | v1 | v2 | v3 | v5 | v7))
      {
        sub_10003C49C(&unk_1001FD020);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_10017EBF0;
        type metadata accessor for AlertAction();
        v9 = swift_allocObject();
        result = v8;
        *(v9 + 16) = 0xD000000000000026;
        *(v9 + 24) = 0x8000000100189150;
        v11 = sub_1000D71D8;
        goto LABEL_22;
      }

      if (v2 == 1 && !(v4 | v1 | v3 | v5 | v7))
      {
        sub_10003C49C(&unk_1001FD020);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_10017EBF0;
        type metadata accessor for AlertAction();
        v9 = swift_allocObject();
        result = v8;
        strcpy((v9 + 16), "OPEN_SETTINGS");
        *(v9 + 30) = -4864;
        v11 = sub_1000D71E0;
LABEL_22:
        *(v9 + 32) = 0;
        *(v9 + 40) = v11;
        goto LABEL_23;
      }
    }

    sub_10003C49C(&unk_1001FD020);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10017EBF0;
    type metadata accessor for AlertAction();
    v9 = swift_allocObject();
    result = v8;
    *(v9 + 16) = 19279;
    *(v9 + 24) = 0xE200000000000000;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
LABEL_23:
    *(v9 + 48) = 0;
    *(v8 + 32) = v9;
    return result;
  }

  if (v4)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v3;
    type metadata accessor for AlertAction();
    v13 = swift_allocObject();
    v13[2] = 0x545345545F444E45;
    v13[3] = 0xEB00000000474E49;
    v13[4] = 2;
    v13[5] = sub_10003D960;
    v13[6] = v12;
    sub_10003E418(v4, v3);
    sub_10003E418(v4, v3);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_10003C52C(v4);
  }

  if (v5)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    *(v14 + 24) = v7;
    type metadata accessor for AlertAction();
    v15 = swift_allocObject();
    v15[2] = 0x59524F54534948;
    v15[3] = 0xE700000000000000;
    v15[4] = 0;
    v15[5] = sub_1000D78B8;
    v15[6] = v14;
    sub_10003E418(v5, v7);
    sub_10003E418(v5, v7);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_10003C52C(v5);
  }

  type metadata accessor for AlertAction();
  v16 = swift_allocObject();
  v16[2] = 0x4C45434E4143;
  v16[3] = 0xE600000000000000;
  v16[4] = 1;
  v16[5] = 0;
  v16[6] = 0;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000D77D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000D7818()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1)
  {
    v1();
  }

  sub_1000F6FF8(v2);
}

uint64_t sub_1000D7868(uint64_t a1)
{
  if (*(v1 + 16))
  {
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000D78BC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_10003C49C(&qword_100200AA8);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7A40, 0, 0);
}

uint64_t sub_1000D7A40()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[3];
    NWActorSystem.makeInvocationEncoder()();
    v0[2] = v1;
    type metadata accessor for TargetDevicePeerConnection();

    RemoteCallArgument.init(label:name:value:)();
    sub_1000DBFA0(&qword_100200AB0, type metadata accessor for TargetDevicePeerConnection);
    sub_1000DBFA0(&qword_100200AB8, type metadata accessor for TargetDevicePeerConnection);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v2 = sub_10003C49C(&qword_100201C30);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v3)
    {
      v4 = v0[13];
      v5 = v0[11];
      v6 = v0[12];
      (*(v0[9] + 8))(v0[10], v0[8]);
      (*(v6 + 8))(v4, v5);

      v7 = v0[1];

      return v7();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v11 = swift_task_alloc();
      v0[14] = v11;
      v12 = type metadata accessor for AssessorDevicePeerConnection();
      v13 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);
      *v11 = v0;
      v11[1] = sub_1000D7DD4;
      v14 = v0[13];
      v15 = v0[7];
      v16 = v0[4];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v16, v15, v14, v2, v12, v2, v13, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = sub_1000D7EE8;
    v10 = v0[3];

    return sub_1000D82B4(v10);
  }
}

uint64_t sub_1000D7DD4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000D8038;
  }

  else
  {
    v2 = sub_1000DC0D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D7EE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000D8038()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D8118(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[4] = v4;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v6 = *v4;
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_1000DC0D0;

  return sub_1000D78BC(v6);
}

uint64_t sub_1000D82B4(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_1000D82D4, v1, 0);
}

uint64_t sub_1000D82D4()
{
  v9 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001ELL, 0x8000000100190B70, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Assessor] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  type metadata accessor for AssessorDevicePeerConnection();
  sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);
  DistributedActor<>.peer.getter();
  if (v0[5])
  {
    sub_1000442A0(v0 + 2, v0[5]);
    dispatch thunk of NWActorPeer.addInterruptionHandler(_:)();
    sub_100044554((v0 + 2));
  }

  else
  {
    sub_10003DD84((v0 + 2), &qword_100200C18);
  }

  if (qword_1001FC6C0 != -1)
  {
    swift_once();
  }

  sub_100053678(v0[7]);
  v6 = v0[1];

  return v6();
}

uint64_t type metadata accessor for AssessorDevicePeerConnection()
{
  result = qword_100200B08;
  if (!qword_100200B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D8590(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  if (byte_10020A378)
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10003DAAC(v5, qword_10020A510);
    v19 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v19, v6, "[Assessor] target device has completed the flow, ignoring connection loss", v7, 2u);
    }

    v8 = v19;
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10003DAAC(v9, qword_10020A510);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      if (a1)
      {
        swift_errorRetain();
        v14 = _swift_stdlib_bridgeErrorToNSError();
        v15 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      *(v12 + 4) = v14;
      *v13 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "[Assessor] connection has been interrupted: %@", v12, 0xCu);
      sub_10003DD84(v13, &qword_1001FF0C0);
    }

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    sub_1000539D8(0, 0, v4, &unk_1001835B8, v17);
  }
}

uint64_t sub_1000D88C0()
{
  *(v0 + 16) = type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D8958, v2, v1);
}

uint64_t sub_1000D8958()
{

  *(v0 + 32) = sub_1000B95A8(sub_100070534, 0);

  return _swift_task_switch(sub_100070428, 0, 0);
}

uint64_t sub_1000D89E0()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000D8AFC, 0, 0);
}

uint64_t sub_1000D8AFC()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for AssessorDevicePeerConnection();
      v7 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = v0[2];

    return _swift_task_switch(sub_1000D8E14, v4, 0);
  }
}

uint64_t sub_1000D8D00()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1000DC0D4;
  }

  else
  {
    v2 = sub_1000DC0CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D8E14()
{
  sub_1000DB3B8(0x29286E69676562, 0xE700000000000000, &DeviceAssessmentPeerDeviceSession.beginSession());

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D8EB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000D89E0();
}

uint64_t sub_1000D8F84()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000D90A0, 0, 0);
}

uint64_t sub_1000D90A0()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for AssessorDevicePeerConnection();
      v7 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = v0[2];

    return _swift_task_switch(sub_1000D92A4, v4, 0);
  }
}

uint64_t sub_1000D92A4()
{
  sub_1000DB3B8(0x29287972746572, 0xE700000000000000, &DeviceAssessmentPeerDeviceSession.retrySession());

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D9380()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000D949C, 0, 0);
}

uint64_t sub_1000D949C()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for AssessorDevicePeerConnection();
      v7 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = v0[2];

    return _swift_task_switch(sub_1000D96A0, v4, 0);
  }
}

uint64_t sub_1000D96A0()
{
  sub_1000DB3B8(0x29286C65636E6163, 0xE800000000000000, &DeviceAssessmentPeerDeviceSession.terminateSession());

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D977C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_10003C49C(&qword_100200AC0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000D9900, 0, 0);
}

uint64_t sub_1000D9900()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[3];
    NWActorSystem.makeInvocationEncoder()();
    v0[2] = v1;

    sub_10003C49C(&qword_100200AC8);
    RemoteCallArgument.init(label:name:value:)();
    sub_1000DBBA8(&qword_100200AD0);
    sub_1000DBBA8(&qword_100200AD8);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v2)
    {
      v4 = v0[12];
      v3 = v0[13];
      v5 = v0[11];
      (*(v0[9] + 8))(v0[10], v0[8]);
      (*(v4 + 8))(v3, v5);

      v6 = v0[1];

      return v6();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v9 = swift_task_alloc();
      v0[14] = v9;
      v10 = type metadata accessor for AssessorDevicePeerConnection();
      v11 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);
      *v9 = v0;
      v9[1] = sub_1000D9C24;
      v12 = v0[13];
      v13 = v0[7];
      v14 = v0[4];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v14, v13, v12, &type metadata for Never, v10, &type metadata for Never, v11, &protocol witness table for Never);
    }
  }

  else
  {
    v8 = v0[4];

    return _swift_task_switch(sub_1000D9E18, v8, 0);
  }
}

uint64_t sub_1000D9C24()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000D9E9C;
  }

  else
  {
    v2 = sub_1000D9D38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D9D38()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000D9E18()
{
  v1._rawValue = *(v0 + 24);
  sub_1000DB998(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000D9E9C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000D9F78()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA094, 0, 0);
}

uint64_t sub_1000DA094()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for AssessorDevicePeerConnection();
      v7 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);
      *v5 = v0;
      v5[1] = sub_1000DA298;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = v0[2];

    return _swift_task_switch(sub_1000DA458, v4, 0);
  }
}

uint64_t sub_1000DA298()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1000DA500;
  }

  else
  {
    v2 = sub_1000DA3AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DA3AC()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000DA458()
{
  sub_1000DB3B8(0x4365726170657270, 0xEF29286172656D61, &DeviceAssessmentPeerDeviceSession.prepareCamera());

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DA500()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000DA5F4()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA710, 0, 0);
}

uint64_t sub_1000DA710()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for AssessorDevicePeerConnection();
      v7 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = v0[2];

    return _swift_task_switch(sub_1000DA914, v4, 0);
  }
}

uint64_t sub_1000DA914()
{
  sub_1000DB224();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DA98C()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_id;
  if ((is_remote & 1) == 0)
  {
    type metadata accessor for NWActorSystem();
    sub_1000DBFA0(&qword_100200C00, &type metadata accessor for NWActorSystem);
    dispatch thunk of DistributedActorSystem.resignID(_:)();
  }

  v3 = type metadata accessor for NWActorID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000DAAC8(uint64_t a1)
{
  v8 = type metadata accessor for NWActorID();
  v3 = *(v8 - 8);
  __chkstk_darwin(v8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_actorSystem;
  *(v1 + OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_actorSystem) = a1;
  type metadata accessor for AssessorDevicePeerConnection();
  v9 = a1;
  type metadata accessor for NWActorSystem();
  sub_1000DBFA0(&qword_100200C00, &type metadata accessor for NWActorSystem);
  sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);

  dispatch thunk of DistributedActorSystem.assignID<A>(_:)();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_id, v5, v8);
  v9 = *(v1 + v6);

  dispatch thunk of DistributedActorSystem.actorReady<A>(_:)();

  return v1;
}

uint64_t sub_1000DACC8()
{
  if ((__isLocalActor(_:)() & 1) == 0)
  {
    type metadata accessor for AssessorDevicePeerConnection();
    return buildDefaultDistributedRemoteActorExecutor<A>(_:)();
  }

  return v0;
}

uint64_t sub_1000DAD1C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for AssessorDevicePeerConnection();
  type metadata accessor for NWActorSystem();
  sub_1000DBFA0(&qword_100200C00, &type metadata accessor for NWActorSystem);
  result = dispatch thunk of DistributedActorSystem.resolve<A>(id:as:)();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_id;
    v8 = type metadata accessor for NWActorID();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_actorSystem) = v4;

    return v6;
  }

  return result;
}

Swift::Int sub_1000DAE4C()
{
  Hasher.init(_seed:)();
  type metadata accessor for AssessorDevicePeerConnection();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DAEAC()
{
  type metadata accessor for AssessorDevicePeerConnection();
  sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);
  return DistributedActor.hash(into:)();
}

Swift::Int sub_1000DAF28()
{
  Hasher.init(_seed:)();
  type metadata accessor for AssessorDevicePeerConnection();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DAF84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11Diagnostics28AssessorDevicePeerConnection_id;
  v5 = type metadata accessor for NWActorID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000DB000(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for AssessorDevicePeerConnection();
  v5 = sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);

  return static DistributedActor.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t sub_1000DB08C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AssessorDevicePeerConnection();
  sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);
  sub_1000DBFA0(&qword_100200C08, &type metadata accessor for NWActorID);
  result = DistributedActor<>.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000DB15C()
{
  type metadata accessor for AssessorDevicePeerConnection();
  sub_1000DBFA0(&qword_1001FE3A8, type metadata accessor for AssessorDevicePeerConnection);
  sub_1000DBFA0(&qword_100200C10, &type metadata accessor for NWActorID);
  return DistributedActor<>.encode(to:)();
}

uint64_t sub_1000DB224()
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10003DAAC(v0, qword_10020A510);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100056B7C(0xD000000000000015, 0x8000000100190B30, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "[Assessor] %s", v3, 0xCu);
    sub_100044554(v4);
  }

  if (qword_1001FC6C0 != -1)
  {
    swift_once();
  }

  DeviceAssessmentPeerDeviceSession.assessmentCompleted()();
}

uint64_t sub_1000DB3B8(uint64_t a1, unint64_t a2, void (*a3)(uint64_t))
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10003DAAC(v6, qword_10020A510);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100056B7C(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "[Assessor] %s", v9, 0xCu);
    sub_100044554(v10);
  }

  if (qword_1001FC6C0 != -1)
  {
    swift_once();
  }

  a3(v11);
}

uint64_t sub_1000DB55C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000D8F84();
}

uint64_t sub_1000DB5F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000D9380();
}

uint64_t sub_1000DB684(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[4] = v4;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v6 = *v4;
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_1000DB820;

  return sub_1000D977C(v6);
}

uint64_t sub_1000DB820()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000DB998(Swift::OpaquePointer a1)
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10003DAAC(v2, qword_10020A510);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100056B7C(0xD000000000000012, 0x8000000100190B50, &v10);
    *(v5 + 12) = 2080;
    v6 = Dictionary.description.getter();
    v8 = sub_100056B7C(v6, v7, &v10);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Assessor] %s: %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_1001FC6C0 != -1)
  {
    swift_once();
  }

  DeviceAssessmentPeerDeviceSession.deviceAttitude(_:)(a1);
}

uint64_t sub_1000DBBA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10003C4E4(&qword_100200AC8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000DBC18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_1000D9F78();
}

uint64_t sub_1000DBCAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DA5F4();
}

uint64_t sub_1000DBD48()
{
  result = type metadata accessor for NWActorID();
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

uint64_t sub_1000DBFA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DBFE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000DC020()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_1000D88A4();
}

uint64_t sub_1000DC0DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = sub_10003C49C(&qword_1001FCE98);
  v2[8] = swift_task_alloc();
  v4 = sub_10003C49C(&qword_100200C20);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000DC29C, 0, 0);
}

uint64_t sub_1000DC29C()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[8];
    v2 = v0[2];
    NWActorSystem.makeInvocationEncoder()();
    sub_10003DD14(v2, v1);
    RemoteCallArgument.init(label:name:value:)();
    sub_1000E26C4(&qword_100200C28, &qword_100200C30);
    sub_1000E26C4(&qword_100200C38, &qword_100200C40);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v3)
    {
      v5 = v0[13];
      v4 = v0[14];
      v6 = v0[12];
      (*(v0[10] + 8))(v0[11], v0[9]);
      (*(v5 + 8))(v4, v6);

      v7 = v0[1];

      return v7();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v10 = swift_task_alloc();
      v0[15] = v10;
      v11 = type metadata accessor for TargetDevicePeerConnection();
      v12 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
      *v10 = v0;
      v10[1] = sub_1000DC5C8;
      v13 = v0[14];
      v14 = v0[6];
      v15 = v0[3];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v15, v14, v13, &type metadata for Never, v11, &type metadata for Never, v12, &protocol witness table for Never);
    }
  }

  else
  {
    v9 = v0[3];

    return _swift_task_switch(sub_1000DC7C8, v9, 0);
  }
}

uint64_t sub_1000DC5C8()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1000DC860;
  }

  else
  {
    v2 = sub_1000DC6DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DC6DC()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000DC7C8()
{
  sub_1000E2310(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DC860()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000DC94C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[4] = v4;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_1000DC0D0;

  return sub_1000DC0DC(v4);
}

uint64_t sub_1000DCAE4()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DCC00, 0, 0);
}

uint64_t sub_1000DCC00()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection();
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000E34A4;

    return sub_1000DF8F0();
  }
}

uint64_t sub_1000DCE34()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DCF50, 0, 0);
}

uint64_t sub_1000DCF50()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection();
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000E34A4;

    return sub_1000DFBB8();
  }
}

uint64_t sub_1000DD184()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD2A0, 0, 0);
}

uint64_t sub_1000DD2A0()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection();
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000E34A4;

    return sub_1000DFE80();
  }
}

uint64_t sub_1000DD4D4()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD5F0, 0, 0);
}

uint64_t sub_1000DD5F0()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection();
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
      *v5 = v0;
      v5[1] = sub_1000DA298;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000DD824;

    return sub_1000E05E4();
  }
}

uint64_t sub_1000DD824()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000DD954()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DDA70, 0, 0);
}

uint64_t sub_1000DDA70()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection();
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000E34A4;

    return sub_1000E08AC();
  }
}

uint64_t sub_1000DDCA4()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DDDC0, 0, 0);
}

uint64_t sub_1000DDDC0()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection();
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000E34A4;

    return sub_1000E0F14();
  }
}

uint64_t sub_1000DDFF4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = sub_10003C49C(&qword_1001FCE98);
  v2[8] = swift_task_alloc();
  v4 = sub_10003C49C(&qword_100200C20);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000DE1B4, 0, 0);
}

uint64_t sub_1000DE1B4()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[8];
    v2 = v0[2];
    NWActorSystem.makeInvocationEncoder()();
    sub_10003DD14(v2, v1);
    RemoteCallArgument.init(label:name:value:)();
    sub_1000E26C4(&qword_100200C28, &qword_100200C30);
    sub_1000E26C4(&qword_100200C38, &qword_100200C40);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v3)
    {
      v4 = v0[13];
      (*(v0[10] + 8))(v0[11], v0[9]);
      (*(v4 + 8))(v0[14], v0[12]);

      v5 = v0[1];

      return v5();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v9 = swift_task_alloc();
      v0[15] = v9;
      v10 = type metadata accessor for TargetDevicePeerConnection();
      v11 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
      *v9 = v0;
      v9[1] = sub_1000DE514;
      v12 = v0[14];
      v13 = v0[6];
      v14 = v0[3];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v14, v13, v12, &type metadata for Never, v10, &type metadata for Never, v11, &protocol witness table for Never);
    }
  }

  else
  {
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_1000DE628;
    v8 = v0[2];

    return sub_1000E12B8(v8);
  }
}

uint64_t sub_1000DE514()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1000DE798;
  }

  else
  {
    v2 = sub_1000DC6DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DE628()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000DE798()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v2 + 8))(v1, v3);
  (*(v0[13] + 8))(v0[14], v0[12]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000DE880()
{
  v1[2] = v0;
  v2 = type metadata accessor for RemoteCallTarget();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for NWActorSystemInvocationEncoder();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000DE99C, 0, 0);
}

uint64_t sub_1000DE99C()
{
  if (swift_distributed_actor_is_remote())
  {
    NWActorSystem.makeInvocationEncoder()();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v1)
    {
      (*(v0[7] + 8))(v0[8], v0[6]);

      v2 = v0[1];

      return v2();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v5 = swift_task_alloc();
      v0[9] = v5;
      v6 = type metadata accessor for TargetDevicePeerConnection();
      v7 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
      *v5 = v0;
      v5[1] = sub_1000D8D00;
      v8 = v0[8];
      v9 = v0[5];
      v10 = v0[2];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v8, &type metadata for Never, v6, &type metadata for Never, v7, &protocol witness table for Never);
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1000E34A4;

    return sub_1000E1710();
  }
}

uint64_t sub_1000DEBD0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for RemoteCallTarget();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_10003C49C(&qword_100200C48);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for NWActorSystemInvocationEncoder();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000DED54, 0, 0);
}

uint64_t sub_1000DED54()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[3];
    NWActorSystem.makeInvocationEncoder()();
    v0[2] = v1;
    type metadata accessor for AssessorDevicePeerConnection();

    RemoteCallArgument.init(label:name:value:)();
    sub_1000E3458(&qword_100200C50, type metadata accessor for AssessorDevicePeerConnection);
    sub_1000E3458(&qword_100200C58, type metadata accessor for AssessorDevicePeerConnection);
    NWActorSystemInvocationEncoder.recordArgument<A>(_:)();
    v2 = sub_10003C49C(&qword_100201C30);
    NWActorSystemInvocationEncoder.recordErrorType<A>(_:)();
    NWActorSystemInvocationEncoder.doneRecording()();
    if (v3)
    {
      v4 = v0[13];
      v5 = v0[11];
      v6 = v0[12];
      (*(v0[9] + 8))(v0[10], v0[8]);
      (*(v6 + 8))(v4, v5);

      v7 = v0[1];

      return v7();
    }

    else
    {
      RemoteCallTarget.init(_:)();
      v11 = swift_task_alloc();
      v0[14] = v11;
      v12 = type metadata accessor for TargetDevicePeerConnection();
      v13 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
      *v11 = v0;
      v11[1] = sub_1000DF0E8;
      v14 = v0[13];
      v15 = v0[7];
      v16 = v0[4];

      return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v16, v15, v14, v2, v12, v2, v13, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = sub_1000D7EE8;
    v10 = v0[3];

    return sub_1000DF1FC(v10);
  }
}

uint64_t sub_1000DF0E8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000D8038;
  }

  else
  {
    v2 = sub_1000D9D38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DF1FC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_10003C49C(&unk_1001FFE20);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000DF298, v1, 0);
}

uint64_t sub_1000DF298()
{
  v15 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD000000000000020, 0x8000000100190BF0, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  type metadata accessor for TargetDevicePeerConnection();
  sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
  DistributedActor<>.peer.getter();
  if (v0[5])
  {
    sub_1000442A0(v0 + 2, v0[5]);
    dispatch thunk of NWActorPeer.addInterruptionHandler(_:)();
    sub_100044554((v0 + 2));
  }

  else
  {
    sub_10003DD84((v0 + 2), &qword_100200C18);
  }

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v6 = v0[9];
  v7 = qword_10020A5F8;
  *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection) = v0[7];

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = v7;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_1000539D8(0, 0, v6, &unk_100183C20, v11);

  v12 = v0[1];

  return v12();
}

void sub_1000DF5DC(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  if (byte_10020A618)
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10003DAAC(v5, qword_10020A510);
    v19 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v19, v6, "[Target] helper device has completed the flow, ignoring connection loss", v7, 2u);
    }

    v8 = v19;
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10003DAAC(v9, qword_10020A510);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      if (a1)
      {
        swift_errorRetain();
        v14 = _swift_stdlib_bridgeErrorToNSError();
        v15 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      *(v12 + 4) = v14;
      *v13 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "[Target] connection has been interrupted: %@", v12, 0xCu);
      sub_10003DD84(v13, &qword_1001FF0C0);
    }

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    sub_1000539D8(0, 0, v4, &unk_100183C30, v17);
  }
}

uint64_t sub_1000DF90C()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001ALL, 0x8000000100190D20, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000DFA88, 0, 0);
}

uint64_t sub_1000DFA88()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DFB1C, v2, v1);
}

uint64_t sub_1000DFB1C()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  sub_100139118();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DFBD4()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001BLL, 0x8000000100190D00, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000DFD50, 0, 0);
}

uint64_t sub_1000DFD50()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000DFDE4, v2, v1);
}

uint64_t sub_1000DFDE4()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  sub_100139120();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DFE80()
{
  *(v1 + 16) = v0;
  sub_10003C49C(&unk_1001FFE20);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000DFF1C, v0, 0);
}

uint64_t sub_1000DFF1C()
{
  v13 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001ALL, 0x8000000100190CE0, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = v0[3];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  v0[4] = sub_1000539D8(0, 0, v6, &unk_100183C40, v9);
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_1000E0180;

  return Task<>.value.getter();
}

uint64_t sub_1000E0180()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000E02AC, v1, 0);
}

uint64_t sub_1000E02AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E030C()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1000E03A0, v2, v1);
}

uint64_t sub_1000E03A0()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000E0464;

  return sub_100139344();
}

uint64_t sub_1000E0464()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return _swift_task_switch(sub_1000E0584, v3, v2);
}

uint64_t sub_1000E0584()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E0600()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD000000000000022, 0x8000000100190CB0, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000E077C, 0, 0);
}

uint64_t sub_1000E077C()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E0810, v2, v1);
}

uint64_t sub_1000E0810()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  sub_1001396D0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E08AC()
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for DispatchQoS();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000E09C4, v0, 0);
}

uint64_t sub_1000E09C4()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001ALL, 0x8000000100190C90, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000E0B40, 0, 0);
}

uint64_t sub_1000E0B40()
{
  type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E0BD4, v2, v1);
}

uint64_t sub_1000E0BD4()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v16 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  byte_10020A540 = 0;
  sub_100057B68();
  v6 = static OS_dispatch_queue.main.getter();
  v0[6] = sub_1000F2784;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100031FA8;
  v0[5] = &unk_1001C5010;
  v7 = _Block_copy(v0 + 2);
  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_1000E3458(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v16);
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v8 = qword_10020A368;
  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting) != 2)
  {
    _AXSClassicInvertColorsSetEnabled();
  }

  v9 = *(v8 + OBJC_IVAR____TtC11Diagnostics10Assertions_voiceOverCaptionsUserSetting);
  if (v9 != 2)
  {
    v10 = [objc_opt_self() sharedInstance];
    [v10 setEnableVoiceOverCaptions:v9 & 1];
  }

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v11 = qword_10020A388;
  v12 = objc_allocWithZone(type metadata accessor for CosmeticAssessmentBackCaptureViewController());
  v13 = sub_100081C5C();
  [v11 pushViewController:v13 animated:1];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000E0F30()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001DLL, 0x8000000100190C70, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000E10AC, 0, 0);
}

uint64_t sub_1000E10AC()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E1140, v2, v1);
}

uint64_t sub_1000E1140()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A388;
  v2 = type metadata accessor for CosmeticAssessmentCheckingDamageViewController();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC11Diagnostics46CosmeticAssessmentCheckingDamageViewController_barButton] = 0;
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000020, 0x8000000100190C40);
  v4 = String._bridgeToObjectiveC()();

  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v5 = objc_msgSendSuper2(v0 + 1, "initWithSpinnerText:", v4);

  [v1 pushViewController:v5 animated:1];
  super_class = v0->super_class;

  return super_class();
}

uint64_t sub_1000E12B8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = sub_10003C49C(&qword_1001FCE98);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1358, v1, 0);
}

uint64_t sub_1000E1358()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000001FLL, 0x8000000100190C20, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000E14D4, 0, 0);
}

uint64_t sub_1000E14D4()
{
  type metadata accessor for MainActor();
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E1568, v2, v1);
}

uint64_t sub_1000E1568()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A5F8;
  if (qword_1001FC848 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_10003DAAC(v0[6], qword_10020A600);
  swift_beginAccess();
  sub_1000E3324(v2, v3);
  swift_endAccess();
  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v4 = v0[7];
  v5 = qword_10020A388;
  sub_10003DD14(v0[5], v4);
  v6 = *(v1 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isSourceDevice);
  v7 = objc_allocWithZone(type metadata accessor for AssessmentIssueFoundViewController());
  v8 = sub_1000468A8(v4, v6);
  [v5 pushViewController:v8 animated:1];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000E172C()
{
  v8 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0x5274736575716572, 0xEE00292879727465, &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  return _swift_task_switch(sub_1000E18B0, 0, 0);
}

uint64_t sub_1000E18B0()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E1944, v2, v1);
}

uint64_t sub_1000E1944()
{

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v1)
  {
    [v1 setResultCode:-3];
  }

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A388;
  type metadata accessor for LoadingViewController();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 pushViewController:v3 animated:1];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000E1A78()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_id;
  if ((is_remote & 1) == 0)
  {
    type metadata accessor for NWActorSystem();
    sub_1000E3458(&qword_100200C00, &type metadata accessor for NWActorSystem);
    dispatch thunk of DistributedActorSystem.resignID(_:)();
  }

  v3 = type metadata accessor for NWActorID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000E1BB4(uint64_t a1)
{
  v8 = type metadata accessor for NWActorID();
  v3 = *(v8 - 8);
  __chkstk_darwin(v8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_actorSystem;
  *(v1 + OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_actorSystem) = a1;
  type metadata accessor for TargetDevicePeerConnection();
  v9 = a1;
  type metadata accessor for NWActorSystem();
  sub_1000E3458(&qword_100200C00, &type metadata accessor for NWActorSystem);
  sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);

  dispatch thunk of DistributedActorSystem.assignID<A>(_:)();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_id, v5, v8);
  v9 = *(v1 + v6);

  dispatch thunk of DistributedActorSystem.actorReady<A>(_:)();

  return v1;
}

uint64_t sub_1000E1DB4()
{
  if ((__isLocalActor(_:)() & 1) == 0)
  {
    type metadata accessor for TargetDevicePeerConnection();
    return buildDefaultDistributedRemoteActorExecutor<A>(_:)();
  }

  return v0;
}

uint64_t sub_1000E1E08(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  type metadata accessor for TargetDevicePeerConnection();
  type metadata accessor for NWActorSystem();
  sub_1000E3458(&qword_100200C00, &type metadata accessor for NWActorSystem);
  result = dispatch thunk of DistributedActorSystem.resolve<A>(id:as:)();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_id;
    v8 = type metadata accessor for NWActorID();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_actorSystem) = v4;

    return v6;
  }

  return result;
}

Swift::Int sub_1000E1F38()
{
  Hasher.init(_seed:)();
  type metadata accessor for TargetDevicePeerConnection();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000E1F98()
{
  type metadata accessor for TargetDevicePeerConnection();
  sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
  return DistributedActor.hash(into:)();
}

Swift::Int sub_1000E2014()
{
  Hasher.init(_seed:)();
  type metadata accessor for TargetDevicePeerConnection();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000E2070@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11Diagnostics26TargetDevicePeerConnection_id;
  v5 = type metadata accessor for NWActorID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000E20EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for TargetDevicePeerConnection();
  v5 = sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);

  return static DistributedActor.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t sub_1000E2178@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TargetDevicePeerConnection();
  sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
  sub_1000E3458(&qword_100200C08, &type metadata accessor for NWActorID);
  result = DistributedActor<>.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000E2248()
{
  type metadata accessor for TargetDevicePeerConnection();
  sub_1000E3458(&qword_1001FE390, type metadata accessor for TargetDevicePeerConnection);
  sub_1000E3458(&qword_100200C10, &type metadata accessor for NWActorID);
  return DistributedActor<>.encode(to:)();
}

char *sub_1000E2310(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FCE98);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10003DAAC(v8, qword_10020A510);
  sub_10003DD14(a1, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v19 = a1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_100056B7C(0x65286873696E6966, 0xEE00293A726F7272, &v20);
    *(v11 + 12) = 2112;
    sub_10003DD14(v7, v5);
    v14 = type metadata accessor for AssessmentError();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v5, 1, v14) == 1)
    {
      sub_10003DD84(v5, &qword_1001FCE98);
      sub_10003DD84(v7, &qword_1001FCE98);
      v16 = 0;
    }

    else
    {
      sub_1000E3458(&qword_1001FD870, &type metadata accessor for AssessmentError);
      swift_allocError();
      (*(v15 + 32))(v17, v5, v14);
      v16 = _swift_stdlib_bridgeErrorToNSError();
      sub_10003DD84(v7, &qword_1001FCE98);
    }

    *(v11 + 14) = v16;
    *v12 = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "[Target] %s error: %@", v11, 0x16u);
    sub_10003DD84(v12, &qword_1001FF0C0);

    sub_100044554(v13);

    a1 = v19;
  }

  else
  {

    sub_10003DD84(v7, &qword_1001FCE98);
  }

  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  return sub_10013752C(a1);
}

uint64_t sub_1000E26C4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003C4E4(&qword_1001FCE98);
    sub_1000E3458(a2, &type metadata accessor for AssessmentError);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for TargetDevicePeerConnection()
{
  result = qword_100200C88;
  if (!qword_100200C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E27AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DCAE4();
}

uint64_t sub_1000E2840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DCE34();
}

uint64_t sub_1000E28D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DD184();
}

uint64_t sub_1000E2968()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_1000DD4D4();
}

uint64_t sub_1000E29FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DD954();
}

uint64_t sub_1000E2A90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DDCA4();
}

uint64_t sub_1000E2B24(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[4] = v4;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_1000DB820;

  return sub_1000DDFF4(v4);
}

uint64_t sub_1000E2CBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000DE880();
}

uint64_t sub_1000E2D50(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[4] = v4;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  NWActorSystemInvocationDecoder.decodeNextArgument<A>()();
  v6 = *v4;
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_1000DB820;

  return sub_1000DEBD0(v6);
}

uint64_t sub_1000E2EF4()
{
  result = type metadata accessor for NWActorID();
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

uint64_t sub_1000E314C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E318C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_10013A9D0();
}

uint64_t sub_1000E3240()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E3278()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000D88A4();
}

uint64_t sub_1000E3324(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FCE98);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E33AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_1000E030C();
}

uint64_t sub_1000E3458(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000E34B8()
{
  v1 = OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView);
LABEL_6:
    v13 = v2;
    return v3;
  }

  v4 = v0;
  v5 = *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v7 = result;
    LOBYTE(v14) = v5;
    v15 = result;
    v8 = objc_allocWithZone(sub_10003C49C(&qword_100200E10));
    v9 = v7;
    v10 = UIHostingController.init(rootView:)();
    result = [v10 view];
    if (result)
    {
      v11 = result;

      v12 = *(v4 + v1);
      *(v4 + v1) = v11;
      v3 = v11;

      v2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000E35AC(uint64_t a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(VPPresenterView) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1001FC6E8 != -1)
  {
    swift_once();
  }

  if (!os_variant_has_internal_content() || (v9 = [objc_opt_self() standardUserDefaults], v10 = String._bridgeToObjectiveC()(), v11 = objc_msgSend(v9, "BOOLForKey:", v10), v9, v10, v12 = v8, (v11 & 1) == 0))
  {
    v12 = [v8 layer];

    [v12 setDisableUpdateMask:272];
  }

  *&v3[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkPresenterView] = v8;
  *&v3[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshInterval] = 0x4010000000000000;
  v13 = OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_targetManager;
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v14 = qword_10020A5F8;
  *&v3[v13] = qword_10020A5F8;
  *&v3[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshTimer] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarStandardAppearance] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarScrollEdgeAppearance] = 0;
  v15 = &v3[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_sessionID];
  *v15 = a1;
  v15[1] = a2;
  v3[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle] = a3 & 1;
  v33.receiver = v3;
  v33.super_class = ObjectType;
  v16 = v14;

  v17 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", 0, 0);
  v18 = [v17 navigationController];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 navigationBar];

    v21 = [v20 standardAppearance];
    v22 = [v21 copy];
  }

  else
  {
    v22 = 0;
  }

  v23 = *&v17[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarStandardAppearance];
  *&v17[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarStandardAppearance] = v22;

  v24 = [v17 navigationController];
  if (v24 && (v25 = v24, v26 = [v24 navigationBar], v25, v27 = objc_msgSend(v26, "scrollEdgeAppearance"), v26, v27))
  {
    v28 = [v27 copy];
  }

  else
  {
    v28 = 0;
  }

  v29 = *&v17[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarScrollEdgeAppearance];
  *&v17[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarScrollEdgeAppearance] = v28;

  v30 = [v17 view];
  if (v30)
  {
    v31 = v30;
    [v30 setAccessibilityIgnoresInvertColors:1];

    v32 = [v17 view];
    if (v32)
    {

      [v32 setAccessibilityElementsHidden:1];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000E39C4()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v0 setView:v1];

  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle);
    v5 = objc_allocWithZone(UIColor);
    if (v4)
    {
      v6 = 0.117647059;
    }

    else
    {
      v6 = 0.960784314;
    }

    v7 = [v5 initWithRed:v6 green:v6 blue:v6 alpha:1.0];
    [v3 setBackgroundColor:?];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E3B04()
{
  v45.receiver = v0;
  v45.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v45, "viewDidLoad");
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton:1];

  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setNavigationBarHidden:1 animated:0];
  }

  v4 = sub_1000E34B8();
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  v6 = OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView;
  [*&v0[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkPresenterView];
  [v7 addSubview:v9];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  [v10 addSubview:*&v0[v6]];

  sub_10003C49C(&unk_1001FD020);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10017EDB0;
  v13 = [v9 topAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v14 topAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v12 + 32) = v17;
  v18 = [v9 leadingAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = [v18 constraintEqualToAnchor:v21];
  *(v12 + 40) = v22;
  v23 = [v0 view];
  if (!v23)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v23;
  v25 = [v23 bottomAnchor];

  v26 = [v9 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v12 + 48) = v27;
  v28 = [v0 view];
  if (!v28)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = v28;
  v30 = [v28 trailingAnchor];

  v31 = [v9 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v12 + 56) = v32;
  v33 = [*&v0[v6] centerXAnchor];
  v34 = [v0 view];
  if (!v34)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v35 = v34;
  v36 = [v34 centerXAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v12 + 64) = v37;
  v38 = [*&v0[v6] centerYAnchor];
  v39 = [v0 view];
  if (v39)
  {
    v40 = v39;
    v41 = objc_opt_self();
    v42 = [v40 centerYAnchor];

    v43 = [v38 constraintEqualToAnchor:v42];
    *(v12 + 72) = v43;
    sub_10003E110(0, &qword_1001FD550);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v41 activateConstraints:isa];

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_1000E4064(char a1)
{
  v2 = v1;
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v4 = qword_10020A368;
  v5 = OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState;
  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState) == 2)
  {
    *(v4 + v5) = SBSIsReachabilityEnabled() != 0;
  }

  sub_10003C49C(&unk_1001FEAD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v7 = qword_10020A4F8;
  *(v6 + 56) = sub_10003E110(0, &qword_1001FD6F0);
  *(v6 + 64) = sub_1000516BC();
  *(v6 + 32) = v7;
  v8 = v7;
  v9 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  SBSSetReachabilityEnabled();
  sub_1000E4560();
  sub_1000E46A8();
  if (*(v2 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle))
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      v11 = 6;
    }

    else
    {
      v11 = 5;
    }
  }

  else
  {

    v11 = 6;
  }

  sub_1000EBDFC(v11);
}

void sub_1000E42B4(char a1)
{
  v16.receiver = v1;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillDisappear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarStandardAppearance];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationBar];

      [v7 setStandardAppearance:v4];
    }
  }

  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];

    v11 = *&v1[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarScrollEdgeAppearance];
    [v10 setScrollEdgeAppearance:v11];
  }

  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState) != 2)
  {
    sub_10003C49C(&unk_1001FEAD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v13 = qword_10020A4F8;
    *(v12 + 56) = sub_10003E110(0, &qword_1001FD6F0);
    *(v12 + 64) = sub_1000516BC();
    *(v12 + 32) = v13;
    v14 = v13;
    v15 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    SBSSetReachabilityEnabled();
  }
}

id sub_1000E4560()
{
  v1 = sub_1000E34B8();
  v2 = [v1 isHidden];

  if (v2)
  {
    result = [v0 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = v0[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle];
    v6 = objc_allocWithZone(UIColor);
    if (v5)
    {
      v7 = 0.117647059;
    }

    else
    {
      v7 = 0.960784314;
    }

    v8 = [v6 initWithRed:v7 green:v7 blue:v7 alpha:1.0];
    [v4 setBackgroundColor:v8];

    [*&v0[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView] setHidden:0];
  }

  sub_1000E48C4();
  v9 = *&v0[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkPresenterView];
  v10 = String._bridgeToObjectiveC()();

  [v9 setVerificationCode:v10];

  return [v9 start];
}

void sub_1000E46A8()
{
  v1 = OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshTimer;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshTimer);
  if (v2)
  {
    v3 = v2;
    if ([v3 isValid])
    {
      v4 = *(v0 + v1);
      if (v4)
      {
        v5 = v4;
        [v5 invalidate];
      }

      v3 = *(v0 + v1);
      *(v0 + v1) = 0;
    }
  }

  v6 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:"updateWatermarkPayload" selector:0 userInfo:1 repeats:4.0];
  v7 = *(v0 + v1);
  *(v0 + v1) = v6;
}

void sub_1000E4774()
{
  v1 = OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshTimer;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  [*(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkPresenterView) stop];

  sub_1000E47E8();
}

void sub_1000E47E8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = v0[OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle];
    v4 = objc_opt_self();
    v5 = &selRef_blackColor;
    if (!v3)
    {
      v5 = &selRef_whiteColor;
    }

    v6 = [v4 *v5];
    [v2 setBackgroundColor:v6];

    v7 = sub_1000E34B8();
    [v7 setHidden:1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000E48C4()
{
  v1 = v0;
  v2 = type metadata accessor for SHA256();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256Digest();
  v36 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  round(fmod(v15, 1000.0));
  (*(v12 + 8))(v14, v11);
  v16 = *(v1 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_sessionID + 8);
  v39[0] = *(v1 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_sessionID);
  v39[1] = v16;

  v17._countAndFlagsBits = 95;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  if (*(v1 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle))
  {
    v18 = 1802658148;
  }

  else
  {
    v18 = 0x746867696CLL;
  }

  if (*(v1 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_backgroundStyle))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v20 = v19;
  String.append(_:)(*&v18);

  v21._countAndFlagsBits = 95;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v22);

  static String.Encoding.utf8.getter();
  v23 = String.data(using:allowLossyConversion:)();
  v25 = v24;
  result = (*(v8 + 8))(v10, v7);
  if (v25 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_1000E5158(&qword_100200E00, &type metadata accessor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_10005FC70(v23, v25);
    sub_1000E4F78(v23, v25);
    sub_1000882D4(v23, v25);
    v27 = v35;
    dispatch thunk of HashFunction.finalize()();
    (*(v34 + 8))(v4, v2);
    v40 = v5;
    v41 = sub_1000E5158(&qword_100200E08, &type metadata accessor for SHA256Digest);
    v28 = sub_10005BAD0(v39);
    v29 = v36;
    (*(v36 + 16))(v28, v27, v5);
    sub_1000442A0(v39, v40);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v30 = v37;
    v31 = v38;
    sub_100044554(v39);
    countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
    sub_10005F18C(v30, v31);
    sub_1000882D4(v23, v25);
    (*(v29 + 8))(v27, v5);
    return countAndFlagsBits;
  }

  return result;
}

id sub_1000E4E7C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E4F78(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_1000E5158(&qword_100200E00, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000E51A0(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1000E51A0(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_1000E5158(&qword_100200E00, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1000E5158(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E51A0(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1000E5158(&qword_100200E00, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

_BYTE *sub_1000E5280@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1000E5520(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1000E55D8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1000E5654(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1000E5314()
{
  v1 = [objc_allocWithZone(VPPresenterView) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_1001FC6E8 != -1)
  {
    swift_once();
  }

  if (!os_variant_has_internal_content() || (v2 = [objc_opt_self() standardUserDefaults], v3 = String._bridgeToObjectiveC()(), v4 = objc_msgSend(v2, "BOOLForKey:", v3), v2, v3, v5 = v1, (v4 & 1) == 0))
  {
    v5 = [v1 layer];

    [v5 setDisableUpdateMask:272];
  }

  *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkPresenterView) = v1;
  *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController____lazy_storage___deviceInfoView) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshInterval) = 0x4010000000000000;
  v6 = OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_targetManager;
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  *(v0 + v6) = qword_10020A5F8;
  *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkRefreshTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarStandardAppearance) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_navigationBarScrollEdgeAppearance) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E5520(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000E55D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1000E5654(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1000E572C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1000AF424();
  v5 = static OS_os_log.disabled.getter();
  if (qword_1001FC7B8 != -1)
  {
    swift_once();
  }

  if (byte_100200E18 == 1)
  {
    v6 = OS_os_log.init(subsystem:category:)();

    v5 = v6;
  }

  *a4 = v5;
}

uint64_t sub_1000E57EC()
{
  result = sub_1000E5810();
  byte_100200E18 = result & 1;
  return result;
}

uint64_t sub_1000E5810()
{
  has_internal_content = os_variant_has_internal_content();
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  keyExistsAndHasValidFormat = 0;
  CFPreferencesAppSynchronize(v1);
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v2, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    return AppBooleanValue != 0;
  }

  else
  {
    return has_internal_content;
  }
}

id sub_1000E59C0()
{
  v0[OBJC_IVAR____TtC11Diagnostics23NoSessionViewController__showingDeviceInformation] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics23NoSessionViewController__deviceInformationView] = 0;
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100191030);
  v1 = String._bridgeToObjectiveC()();

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000017, 0x8000000100191050);
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for NoSessionViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithTitle:detailText:symbolName:contentLayout:", v1, v2, v3, 2);

  return v4;
}

void sub_1000E5AE8()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for NoSessionViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  [v0 setModalPresentationStyle:2];
  v2 = [objc_opt_self() boldButton];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000017, 0x800000010018C890);
  v3 = String._bridgeToObjectiveC()();

  [v2 setTitle:v3 forState:0];

  sub_10003E110(0, &qword_1002023B0);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = v2;
  v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v5 addAction:v6 forControlEvents:{64, 0, 0, 0, sub_1000E6378, v4}];

  v7 = [v1 buttonTray];
  [v7 addButton:v5];

  if ([objc_opt_self() isCheckerBoardActive])
  {
    [v1 setupInfoButton];
  }
}

void sub_1000E5CD0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v3)
  {
    sub_100088E48(0, a2);
  }

  else
  {

    sub_1000F6FF8(9);
  }
}

uint64_t sub_1000E5DD4(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v30 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for NoSessionViewController();
  v32.receiver = v1;
  v32.super_class = v15;
  objc_msgSendSuper2(&v32, "viewDidAppear:", a1 & 1);
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 BOOLForKey:v17];

  if ((v18 & 1) != 0 || (v19 = [objc_msgSend(objc_opt_self() "currentPlatform")], result = swift_unknownObjectRelease(), v19))
  {
    sub_10003E110(0, &qword_1001FD040);
    v21 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v25 = v6;
    v26 = v8;
    v27 = *(v9 + 8);
    v27(v11, v8);
    aBlock[4] = sub_1000E6204;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C5098;
    v22 = _Block_copy(aBlock);
    v23 = v28;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050);
    sub_1000446A0();
    v24 = v29;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v22);

    (*(v4 + 8))(v24, v3);
    (*(v30 + 8))(v23, v25);
    return (v27)(v14, v26);
  }

  return result;
}

id sub_1000E62C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoSessionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E6328(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E6340()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E6380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v21 = a1;
  v22 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057B68();
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v16 = swift_allocObject();
  v17 = v22;
  v16[2] = v21;
  v16[3] = v17;
  v18 = v24;
  v16[4] = v23;
  v16[5] = v18;
  aBlock[4] = sub_1000E9380;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C5250;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v25);
}

void sub_1000E66D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  if ([objc_opt_self() isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v7 = a1;
    }

    else
    {
      v7 = 0x6C6172656E6567;
    }

    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, v7, v8, isUniquelyReferenced_nonNull_native);

    off_100200F00 = v19;
    swift_endAccess();
    sub_100036678(2);
  }

  else
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v10 = qword_10020A508;
    if (qword_10020A508)
    {
      v11 = qword_10020A500;

      if (sub_1000E6AB8())
      {
        v12 = type metadata accessor for TaskPriority();
        (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
        v13 = swift_allocObject();
        v13[2] = 0;
        v13[3] = 0;
        v13[4] = v11;
        v13[5] = v10;
        v13[6] = sub_100036678;
        v13[7] = 0;
        sub_1000539D8(0, 0, v6, &unk_100183D40, v13);

        return;
      }
    }

    v14 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
    if (qword_10020A508)
    {

      v15 = String._bridgeToObjectiveC()();
    }

    else
    {
      v15 = 0;
    }

    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = sub_100036678;
    v16[5] = 0;
    aBlock[4] = sub_1000E961C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000E73D8;
    aBlock[3] = &unk_1001C5480;
    v17 = _Block_copy(aBlock);

    [v14 checkAvailabilityWithTicketNumber:v15 timeout:0 exitWhenDone:v17 completion:30.0];
    _Block_release(v17);
  }
}

uint64_t sub_1000E6AB8()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1000E6C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_1000E851C(a1, a2, a1, a2, a3, a4);
}

uint64_t sub_1000E6D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000E6D38, 0, 0);
}

uint64_t sub_1000E6D38()
{
  type metadata accessor for TimberLorryDevelopmentConnection();
  swift_allocObject();
  v0[6] = sub_10005EEA4();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1000E6DF0;
  v3 = v0[2];
  v2 = v0[3];

  return sub_10005D144(v3, v2);
}

uint64_t sub_1000E6DF0(char a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_1000E6F8C;
  }

  else
  {

    *(v4 + 72) = a1 & 1;
    v5 = sub_1000E6F24;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E6F24()
{
  (*(v0 + 32))(*(v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E6F8C()
{

  v1 = static os_log_type_t.error.getter();
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A4F8;
  if (os_log_type_enabled(qword_10020A4F8, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v2, v1, "Failed to get TimberLorry development case status: %@", v3, 0xCu);
    sub_100082D10(v4);
  }

  (*(v0 + 32))(0);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000E70FC(char a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(unint64_t))
{
  if (a5 && !qword_10020A508 && (v13 = a1, v14 = [a2 deviceSerialNumber], static String._unconditionallyBridgeFromObjectiveC(_:)(), v14, sub_100079A64(), v15 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , a1 = v13, v15))
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(0, a4, a5, isUniquelyReferenced_nonNull_native);
    off_100200F00 = v18;
    swift_endAccess();
    v9 = 0;
  }

  else
  {
    if (a1)
    {
      v9 = sub_1000E7354();
    }

    else
    {
      v9 = 0;
    }

    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a5)
    {
      v10 = a5;
    }

    else
    {
      a4 = 0x6C6172656E6567;
      v10 = 0xE700000000000000;
    }

    swift_beginAccess();

    v11 = swift_isUniquelyReferenced_nonNull_native();
    v17 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(v9, a4, v10, v11);

    off_100200F00 = v17;
    swift_endAccess();
  }

  return a6(v9);
}

unint64_t sub_1000E7354()
{
  if ([v0 sessionType])
  {
    v1 = [v0 sessionType];
    if (v1 >= 7)
    {
      return 0;
    }

    else
    {
      return 0x1010101020300uLL >> (8 * v1);
    }
  }

  else if ([v0 isGuidedSessionType])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_1000E73D8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a3;
  v8 = a4;
  v7(a2, v9, a4);
}

void sub_1000E746C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = objc_opt_self();
  a3;
  if ([v10 isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v11 = a2;
    }

    else
    {
      a1 = 0x6C6172656E6567;
      v11 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, a1, v11, isUniquelyReferenced_nonNull_native);

    off_100200F00 = v22;
    swift_endAccess();
    sub_1000371BC(2u);
    goto LABEL_13;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v13 = qword_10020A508;
  if (qword_10020A508)
  {
    v14 = qword_10020A500;

    if (sub_1000E6AB8())
    {
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v14;
      v16[5] = v13;
      v16[6] = sub_1000E93E0;
      v16[7] = v9;

      sub_1000539D8(0, 0, v8, &unk_100183D48, v16);

LABEL_13:

      return;
    }
  }

  v17 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
  if (qword_10020A508)
  {

    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = sub_1000E93E0;
  v19[5] = v9;
  aBlock[4] = sub_1000E961C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E73D8;
  aBlock[3] = &unk_1001C5520;
  v20 = _Block_copy(aBlock);

  [v17 checkAvailabilityWithTicketNumber:v18 timeout:0 exitWhenDone:v20 completion:30.0];
  _Block_release(v20);
}

void sub_1000E78B0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = objc_opt_self();
  swift_unknownObjectRetain();
  if ([v12 isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v13 = a2;
    }

    else
    {
      a1 = 0x6C6172656E6567;
      v13 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, a1, v13, isUniquelyReferenced_nonNull_native);

    off_100200F00 = v24;
    swift_endAccess();
    sub_10010523C(2u, a3, a4);
    goto LABEL_13;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v15 = qword_10020A508;
  if (qword_10020A508)
  {
    v16 = qword_10020A500;

    if (sub_1000E6AB8())
    {
      v17 = type metadata accessor for TaskPriority();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v16;
      v18[5] = v15;
      v18[6] = sub_1000E93D0;
      v18[7] = v11;

      sub_1000539D8(0, 0, v10, &unk_100183D30, v18);

LABEL_13:

      return;
    }
  }

  v19 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
  if (qword_10020A508)
  {

    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = sub_1000E93D0;
  v21[5] = v11;
  aBlock[4] = sub_1000E961C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E73D8;
  aBlock[3] = &unk_1001C5368;
  v22 = _Block_copy(aBlock);

  [v19 checkAvailabilityWithTicketNumber:v20 timeout:0 exitWhenDone:v22 completion:30.0];
  _Block_release(v22);
}

void sub_1000E7D04(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = objc_opt_self();
  v11 = a3;
  if ([v10 isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      a1 = 0x6C6172656E6567;
      v12 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, a1, v12, isUniquelyReferenced_nonNull_native);

    off_100200F00 = v23;
    swift_endAccess();
    goto LABEL_13;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v14 = qword_10020A508;
  if (qword_10020A508)
  {
    v15 = qword_10020A500;

    if (sub_1000E6AB8())
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v15;
      v17[5] = v14;
      v17[6] = sub_1000E93D8;
      v17[7] = v9;

      sub_1000539D8(0, 0, v8, &unk_100183D38, v17);

LABEL_13:

      return;
    }
  }

  v18 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
  if (qword_10020A508)
  {

    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = sub_1000E93D8;
  v20[5] = v9;
  aBlock[4] = sub_1000E961C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E73D8;
  aBlock[3] = &unk_1001C5408;
  v21 = _Block_copy(aBlock);

  [v18 checkAvailabilityWithTicketNumber:v19 timeout:0 exitWhenDone:v21 completion:30.0];
  _Block_release(v21);
}

uint64_t sub_1000E8138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_1001FC7C0 != -1)
  {
    v11 = a2;
    swift_once();
    a2 = v11;
  }

  if (a3)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0x6C6172656E6567;
  }

  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = off_100200F00;
  off_100200F00 = 0x8000000000000000;
  sub_100142160(a1, v7, v8, isUniquelyReferenced_nonNull_native);

  off_100200F00 = v12;
  swift_endAccess();
  return a4(a1);
}

uint64_t sub_1000E8258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if ((a1 - 1) > 1u)
  {
    if (qword_1001FC7E8 != -1)
    {
      swift_once();
    }

    if (SessionManager.currentSession.getter())
    {
      Session.status.getter();
      v11 = SessionStatus.rawValue.getter();
      if (v11 == SessionStatus.rawValue.getter())
      {
        v12 = 0;
      }

      else
      {
        if (qword_1001FC7C0 != -1)
        {
          swift_once();
        }

        if (a3)
        {
          v13 = a2;
        }

        else
        {
          v13 = 0x6C6172656E6567;
        }

        if (a3)
        {
          v14 = a3;
        }

        else
        {
          v14 = 0xE700000000000000;
        }

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = off_100200F00;
        off_100200F00 = 0x8000000000000000;
        v12 = 3;
        sub_100142160(3, v13, v14, isUniquelyReferenced_nonNull_native);

        off_100200F00 = v17;
        swift_endAccess();
      }

      sub_1000E8138(v12, a2, a3, a4);
    }

    else
    {

      return sub_1000E8138(0, a2, a3, a4);
    }
  }

  else
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a3)
    {
      v8 = a3;
    }

    else
    {
      a2 = 0x6C6172656E6567;
      v8 = 0xE700000000000000;
    }

    swift_beginAccess();

    v9 = swift_isUniquelyReferenced_nonNull_native();
    v16 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(a1, a2, v8, v9);

    off_100200F00 = v16;
    swift_endAccess();
    return a4(a1);
  }
}

void sub_1000E851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v12 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v16 = objc_opt_self();

  if ([v16 isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v17 = a2;
    }

    else
    {
      a1 = 0x6C6172656E6567;
      v17 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, a1, v17, isUniquelyReferenced_nonNull_native);

    off_100200F00 = v28;
    swift_endAccess();
    sub_1000E8258(2, a3, a4, a5);
    goto LABEL_13;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v19 = qword_10020A508;
  if (qword_10020A508)
  {
    v20 = qword_10020A500;

    if (sub_1000E6AB8())
    {
      v21 = type metadata accessor for TaskPriority();
      (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v20;
      v22[5] = v19;
      v22[6] = sub_1000E938C;
      v22[7] = v15;

      sub_1000539D8(0, 0, v14, &unk_100183D20, v22);

LABEL_13:

      return;
    }
  }

  v23 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
  if (qword_10020A508)
  {

    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = sub_1000E938C;
  v25[5] = v15;
  aBlock[4] = sub_1000E961C;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E73D8;
  aBlock[3] = &unk_1001C52C8;
  v26 = _Block_copy(aBlock);

  [v23 checkAvailabilityWithTicketNumber:v24 timeout:0 exitWhenDone:v26 completion:30.0];
  _Block_release(v26);
}

void sub_1000E8994(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = objc_opt_self();
  v11 = a3;
  if ([v10 isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      a1 = 0x6C6172656E6567;
      v12 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, a1, v12, isUniquelyReferenced_nonNull_native);

    off_100200F00 = v23;
    swift_endAccess();
    sub_1000F64F4(2u, v11);
    goto LABEL_13;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v14 = qword_10020A508;
  if (qword_10020A508)
  {
    v15 = qword_10020A500;

    if (sub_1000E6AB8())
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v15;
      v17[5] = v14;
      v17[6] = sub_1000E9370;
      v17[7] = v9;

      sub_1000539D8(0, 0, v8, &unk_100183D18, v17);

LABEL_13:

      return;
    }
  }

  v18 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
  if (qword_10020A508)
  {

    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = sub_1000E9370;
  v20[5] = v9;
  aBlock[4] = sub_1000E961C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E73D8;
  aBlock[3] = &unk_1001C51D8;
  v21 = _Block_copy(aBlock);

  [v18 checkAvailabilityWithTicketNumber:v19 timeout:0 exitWhenDone:v21 completion:30.0];
  _Block_release(v21);
}

void sub_1000E8DD8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = objc_opt_self();
  v11 = a3;
  if ([v10 isSSRBootIntentSet])
  {
    if (qword_1001FC7C0 != -1)
    {
      swift_once();
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      a1 = 0x6C6172656E6567;
      v12 = 0xE700000000000000;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = off_100200F00;
    off_100200F00 = 0x8000000000000000;
    sub_100142160(2, a1, v12, isUniquelyReferenced_nonNull_native);

    off_100200F00 = v23;
    swift_endAccess();
    *(*&v11[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager] + OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly) = 1;
    sub_100151130();
    goto LABEL_13;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v14 = qword_10020A508;
  if (qword_10020A508)
  {
    v15 = qword_10020A500;

    if (sub_1000E6AB8())
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v15;
      v17[5] = v14;
      v17[6] = sub_1000E9270;
      v17[7] = v9;

      sub_1000539D8(0, 0, v8, &unk_100183D10, v17);

LABEL_13:

      return;
    }
  }

  v18 = [objc_allocWithZone(DADiagnosticsSessionAvailability) init];
  if (qword_10020A508)
  {

    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = sub_1000E9270;
  v20[5] = v9;
  aBlock[4] = sub_1000E9278;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E73D8;
  aBlock[3] = &unk_1001C5138;
  v21 = _Block_copy(aBlock);

  [v18 checkAvailabilityWithTicketNumber:v19 timeout:0 exitWhenDone:v21 completion:30.0];
  _Block_release(v21);
}

uint64_t sub_1000E9238()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E9284(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E929C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000494BC;

  return sub_1000E6D14(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000E9398()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000E93E8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000E9428()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000E9470(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003DEC8;

  return sub_1000E6D14(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1000E9568()
{
  result = qword_100200F10;
  if (!qword_100200F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100200F10);
  }

  return result;
}

id sub_1000E9708()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseStackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000E9760(double a1, double a2, double a3)
{
  v4 = v3;
  v10 = *(v3 + 16);
  v8 = (v3 + 16);
  v9 = v10;
  if (*(v10 + 16) == 10)
  {
    sub_10003D33C(0, 1);
    v9 = *v8;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1000D4D64(0, *(v9 + 2) + 1, 1, v9);
    *v8 = v9;
  }

  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  if (v13 >= v12 >> 1)
  {
    v9 = sub_1000D4D64((v12 > 1), v13 + 1, 1, v9);
  }

  *(v9 + 2) = v13 + 1;
  v14 = &v9[24 * v13];
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  *v8 = v9;
  if (v13 != 9)
  {
    return 2;
  }

  __asm { FMOV            V1.2D, #10.0 }

  v20 = vmovn_s64(vcgtq_f64(vdivq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(vaddq_f64(*(v9 + 2), 0), *(v9 + 56)), *(v9 + 5)), *(v9 + 104)), *(v9 + 8)), *(v9 + 152)), *(v9 + 11)), *(v9 + 200)), *(v9 + 14)), *(v9 + 248)), _Q1), vdupq_n_s64(0x3F847AE147AE147BuLL)));
  if ((v20.i32[0] | v20.i32[1]))
  {
    v21 = (v4 + 24);
    if (*(v4 + 24))
    {
      goto LABEL_13;
    }

LABEL_16:
    result = 1;
    goto LABEL_17;
  }

  v21 = (v4 + 24);
  if ((*(v9 + 6) + 0.0 + *(v9 + 9) + *(v9 + 12) + *(v9 + 15) + *(v9 + 18) + *(v9 + 21) + *(v9 + 24) + *(v9 + 27) + *(v9 + 30) + *(v9 + 33)) / 10.0 <= 0.01)
  {
    if ((*(v4 + 24) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 2;
  }

  if ((*(v4 + 24) & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  result = 0;
LABEL_17:
  *v21 = result;
  return result;
}

uint64_t sub_1000E997C()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for UserAccelerationBuffer.UserAcceleration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UserAccelerationBuffer.UserAcceleration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_1000E9D04(void *a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for CardStackView();
  if (UIFocusEnvironment.contains(_:)())
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();

    os_log(_:dso:log:type:_:)();
  }

  else
  {
    [a1 setClipsToBounds:1];
    [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
    type metadata accessor for CardStackSubviewContainer();
    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v8[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_animated] = a3 & 1;
    v9 = *&v8[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
    *&v8[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView] = a1;
    v10 = a1;
    sub_100135EA4(v9);
    sub_10013630C();

    sub_1000EADFC(v8, a2);
    v13.receiver = v3;
    v13.super_class = v7;
    objc_msgSendSuper2(&v13, "insertArrangedSubview:atIndex:", v8, a2);
    v11 = *&v3[OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler];
    if (v11)
    {

      v11(v12);
      sub_10003C52C(v11);
    }
  }
}

void sub_1000E9EE4(void *a1, char a2)
{
  v3 = [v2 arrangedSubviews];
  v46 = sub_1000EB998();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_31;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v44 = v2;
  if (!v5)
  {
LABEL_32:

    goto LABEL_33;
  }

LABEL_3:
  v6 = 0;
  v7 = v4 & 0xC000000000000001;
  v47 = (v4 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v7)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= v47[2])
      {
        goto LABEL_30;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      v44 = v2;
      if (!v5)
      {
        goto LABEL_32;
      }

      goto LABEL_3;
    }

    type metadata accessor for CardStackSubviewContainer();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v2 = *(v11 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
      if (v2)
      {
        v12 = v9;
        v13 = v4;
        v14 = v7;
        v15 = v5;
        v16 = v2;
        v17 = a1;
        v2 = static NSObject.== infix(_:_:)();

        v5 = v15;
        v7 = v14;
        v4 = v13;

        if (v2)
        {
          break;
        }
      }
    }

    ++v6;
    if (v10 == v5)
    {
      goto LABEL_32;
    }
  }

  v18 = v17;

  v19 = swift_dynamicCastClass();
  v20 = v12;
  if (!v19)
  {
    goto LABEL_41;
  }

  v21 = v19;
  v22 = v44;
  v23 = [v44 arrangedSubviews];
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (!v25)
    {
      goto LABEL_39;
    }

LABEL_17:
    v42 = v20;
    v48 = v21;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v25 < 0)
    {
      __break(1u);
      return;
    }

    v26 = v25;
    v27 = 0;
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v24 + 8 * v27 + 32);
      }

      v28 = v29;
      v30 = [objc_allocWithZone(UIView) init];
      v31 = swift_dynamicCastClass();
      if (v31)
      {
        v32 = *(v31 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
        v32;

        if (!v32)
        {
          goto LABEL_21;
        }

        v28 = v30;
      }

LABEL_21:
      ++v27;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v26 == v27)
      {

        v21 = v48;
        v22 = v44;
        v20 = v42;
        goto LABEL_40;
      }
    }
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25)
  {
    goto LABEL_17;
  }

LABEL_39:

LABEL_40:
  v35 = sub_100150864(v18, _swiftEmptyArrayStorage);
  v37 = v36;

  if (v37)
  {
LABEL_41:

LABEL_33:
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10017EC00;
    *(v33 + 56) = v46;
    *(v33 + 64) = sub_1000EBAC0();
    *(v33 + 32) = a1;
    v34 = a1;
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v49 = [objc_allocWithZone(UIView) init];
    [v49 setClipsToBounds:1];
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = swift_allocObject();
    *(v38 + 2) = v22;
    *(v38 + 3) = v21;
    *(v38 + 4) = v35;
    v39 = &v21[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
    v40 = *&v21[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
    *v39 = sub_1000EBB9C;
    v39[1] = v38;
    v41 = v20;
    v22;
    sub_10003C52C(v40);
    sub_1000EA498(v49, v18, a2 & 1);
  }
}

uint64_t sub_1000EA430(uint64_t a1, char *a2, unint64_t a3)
{
  sub_1000EB558(a2, a3);
  [a2 removeFromSuperview];
  v4 = &a2[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
  v5 = *&a2[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
  *v4 = 0;
  *(v4 + 1) = 0;

  return sub_10003C52C(v5);
}

void sub_1000EA498(void *a1, void *a2, int a3)
{
  v76 = a3;
  v80 = a2;
  v77 = a1;
  v4 = [v3 arrangedSubviews];
  v81 = sub_1000EB998();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    goto LABEL_32;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_33:

    goto LABEL_34;
  }

LABEL_3:
  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  v79 = v5;
  while (1)
  {
    if (v8)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v9 + 16))
      {
        goto LABEL_31;
      }

      v10 = *(v5 + 8 * v7 + 32);
    }

    v11 = v10;
    v12 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (!v6)
      {
        goto LABEL_33;
      }

      goto LABEL_3;
    }

    v82 = type metadata accessor for CardStackSubviewContainer();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
      if (v14)
      {
        v15 = v11;
        v16 = v9;
        v17 = v8;
        v18 = v6;
        v19 = v14;
        v20 = v80;
        v21 = static NSObject.== infix(_:_:)();

        v6 = v18;
        v8 = v17;
        v9 = v16;
        v5 = v79;

        if (v21)
        {
          break;
        }
      }
    }

    ++v7;
    if (v12 == v6)
    {
      goto LABEL_33;
    }
  }

  v22 = v20;

  v23 = v82;
  v24 = swift_dynamicCastClass();
  if (!v24)
  {

    goto LABEL_34;
  }

  v79 = v15;
  v75 = v24;
  v25 = [v78 arrangedSubviews];
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = v26;
  if (v26 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
    v29 = v22;
    if (!v28)
    {
      goto LABEL_40;
    }

LABEL_17:
    v83 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v28 < 0)
    {
      __break(1u);
      goto LABEL_57;
    }

    v30 = v26;
    v31 = 0;
    while (1)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(v30 + 8 * v31 + 32);
      }

      v32 = v33;
      v34 = [objc_allocWithZone(UIView) init];
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        v36 = *(v35 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
        v36;

        if (!v36)
        {
          v30 = v27;
          goto LABEL_21;
        }

        v32 = v34;
        v30 = v27;
      }

LABEL_21:
      ++v31;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = v83[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v28 == v31)
      {

        v37 = v83;
        goto LABEL_41;
      }
    }
  }

  v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v29 = v22;
  if (v28)
  {
    goto LABEL_17;
  }

LABEL_40:

  v37 = _swiftEmptyArrayStorage;
LABEL_41:
  v7 = sub_100150864(v29, v37);
  v42 = v41;

  v27 = v79;
  if ((v42 & 1) == 0)
  {
    v43 = [v78 arrangedSubviews];
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v23 >> 62))
    {
      v44 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
LABEL_45:
        v27 = v7;
        v83 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if ((v44 & 0x8000000000000000) == 0)
        {
          v45 = 0;
          while (1)
          {
            if ((v23 & 0xC000000000000001) != 0)
            {
              v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v46 = *(v23 + 8 * v45 + 32);
            }

            v47 = v46;
            v48 = [objc_allocWithZone(UIView) init];
            v49 = swift_dynamicCastClass();
            if (v49)
            {
              v50 = *(v49 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
              v50;

              if (!v50)
              {
                goto LABEL_48;
              }

              v47 = v48;
            }

LABEL_48:
            ++v45;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            if (v44 == v45)
            {

              v52 = v83;
              v7 = v27;
              v27 = v79;
              goto LABEL_59;
            }
          }
        }

        __break(1u);
        goto LABEL_78;
      }

LABEL_58:

      v52 = _swiftEmptyArrayStorage;
LABEL_59:
      v6 = v77;
      v83 = v77;
      __chkstk_darwin(v51);
      v74[2] = &v83;
      v53 = sub_1000785D4(sub_1000EBB18, v74, v52);

      if ((v53 & 1) == 0)
      {
        [v6 setClipsToBounds:1];
        [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
        v67 = v75;
        v75[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_animated] = v76 & 1;
        v68 = *&v67[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
        *&v67[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView] = v6;
        v69 = v6;
        sub_100135EA4(v68);
        sub_10013630C();

        v70 = v78;
        sub_1000EB558(v67, v7);
        sub_1000EADFC(v67, v7);
        [v70 layoutIfNeeded];
        v71 = *&v70[OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler];
        if (v71)
        {

          v71(v72);
          sub_10003C52C(v71);
        }

        return;
      }

      if (qword_1001FC7B0 == -1)
      {
LABEL_61:
        v54 = qword_10020A4F8;
        v55 = static os_log_type_t.error.getter();
        sub_10003C49C(&unk_1001FEAD0);
        v56 = swift_allocObject();
        v56[1] = xmmword_10017EC10;
        *(v56 + 7) = v81;
        *(v56 + 8) = sub_1000EBAC0();
        *(v56 + 4) = v6;
        v57 = v6;
        v58 = [v78 arrangedSubviews];
        v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v59 >> 62)
        {
          v60 = _CocoaArrayWrapper.endIndex.getter();
          if (v60)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v60)
          {
LABEL_63:
            v79 = v56;
            LODWORD(v80) = v55;
            v81 = v54;
            v83 = _swiftEmptyArrayStorage;
            specialized ContiguousArray.reserveCapacity(_:)();
            if (v60 < 0)
            {
              __break(1u);
              return;
            }

            v61 = 0;
            while (1)
            {
              if ((v59 & 0xC000000000000001) != 0)
              {
                v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v62 = *(v59 + 8 * v61 + 32);
              }

              v63 = v62;
              v64 = [objc_allocWithZone(UIView) init];
              v65 = swift_dynamicCastClass();
              if (v65)
              {
                v66 = *(v65 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
                v66;

                if (!v66)
                {
                  goto LABEL_66;
                }

                v63 = v64;
              }

LABEL_66:
              ++v61;
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              if (v60 == v61)
              {

                v73 = v83;
                v56 = v79;
                goto LABEL_81;
              }
            }
          }
        }

        v73 = _swiftEmptyArrayStorage;
LABEL_81:
        *(v56 + 12) = sub_10003C49C(&qword_100201048);
        *(v56 + 13) = sub_1000EBB38();
        *(v56 + 9) = v73;
        os_log(_:dso:log:type:_:)();

        return;
      }

LABEL_78:
      swift_once();
      goto LABEL_61;
    }

LABEL_57:
    v44 = _CocoaArrayWrapper.endIndex.getter();
    if (v44)
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_34:
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  static os_log_type_t.error.getter();
  sub_10003C49C(&unk_1001FEAD0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10017EC00;
  *(v38 + 56) = v81;
  *(v38 + 64) = sub_1000EBAC0();
  v39 = v80;
  *(v38 + 32) = v80;
  v40 = v39;
  os_log(_:dso:log:type:_:)();
}

void sub_1000EADFC(char *a1, uint64_t a2)
{
  v5 = *&a1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
  if (!v5 || (v25[0] = *&a1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView], sub_1000EB998(), v6 = v5, sub_10003C49C(&qword_100201040), (swift_dynamicCast() & 1) == 0))
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_7;
  }

  if (!*(&v23 + 1))
  {
LABEL_7:
    sub_1000EB930(&v22);
    v15 = 1;
    goto LABEL_8;
  }

  v21 = v2;
  sub_100049F74(&v22, v25);
  v7 = v26;
  v8 = v27;
  sub_1000442A0(v25, v26);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = swift_allocObject();
  v10[2] = v21;
  if (v9)
  {
    v11 = v26;
    v12 = v27;
    sub_1000EB9E4(v25, v26);
    v13 = *(v12 + 40);
    v14 = v21;
    v13(sub_1000EBAB8, v10, v11, v12);
  }

  else
  {
    v10[3] = a1;
    v10[4] = a2;
    v16 = v26;
    v17 = v27;
    sub_1000EB9E4(v25, v26);
    v18 = *(v17 + 40);
    v19 = v21;
    v20 = a1;
    v18(sub_1000EBA74, v10, v16, v17);
  }

  v15 = v9 ^ 1;
  sub_100044554(v25);
LABEL_8:
  sub_1000EB0F8(a1, a2, v15 & 1);
}

uint64_t sub_1000EB018(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler);
  if (v1)
  {

    v1(v2);

    return sub_10003C52C(v1);
  }

  return result;
}

void sub_1000EB080(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1000EB320(a2, a3);
  v4 = *(a1 + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler);
  if (v4)
  {

    v4(v5);

    sub_10003C52C(v4);
  }
}

void sub_1000EB0F8(char *a1, uint64_t a2, char a3)
{
  v4 = *&a1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
  if (v4)
  {
    v8 = v4;
    v9 = [a1 heightAnchor];
    if (a3)
    {
      [v8 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      v11 = [v9 constraintEqualToConstant:v10];
    }

    else
    {
      v12 = [v8 heightAnchor];
      v11 = [v9 constraintEqualToAnchor:v12];

      v9 = v12;
    }

    v13 = v11;
    [v13 setActive:1];
    v14 = OBJC_IVAR____TtC11Diagnostics13CardStackView_heightConstraints;
    swift_beginAccess();
    v15 = *(v3 + v14);
    if (v15 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= a2)
      {
LABEL_11:
        if ((a2 & 0x8000000000000000) == 0)
        {
          sub_10003D3FC(a2, a2, v13);
          swift_endAccess();

          return;
        }

        goto LABEL_15;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (qword_1001FC7B0 != -1)
  {
LABEL_16:
    swift_once();
  }

  static os_log_type_t.error.getter();

  os_log(_:dso:log:type:_:)();
}

void sub_1000EB320(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
  if (v4)
  {
    v6 = OBJC_IVAR____TtC11Diagnostics13CardStackView_heightConstraints;
    swift_beginAccess();
    v7 = *&v2[v6];
    if (!(v7 >> 62))
    {
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        return;
      }

LABEL_4:
      v8 = *&v2[v6];
      if ((v8 & 0xC000000000000001) != 0)
      {
        v17 = v4;

        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((a2 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_22;
        }

        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
        {
          __break(1u);
          goto LABEL_24;
        }

        v9 = *(v8 + 8 * a2 + 32);
        v10 = v4;
        v11 = v9;
      }

      v3 = &off_1001EE000;
      [v11 setActive:0];

      v12 = *&v2[v6];
      if ((v12 & 0xC000000000000001) == 0)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
          {
            __break(1u);
            goto LABEL_27;
          }

          v13 = *(v12 + 8 * a2 + 32);
          goto LABEL_12;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_22:

      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_12:
      [v4 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      [v13 setConstant:v14];

      v15 = *&v2[v6];
      if ((v15 & 0xC000000000000001) == 0)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
          {
            v16 = *(v15 + 8 * a2 + 32);
LABEL_16:
            [v16 v3[446]];

            [v2 layoutIfNeeded];
            return;
          }

LABEL_28:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_25:

      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_16;
    }

    if (_CocoaArrayWrapper.endIndex.getter() > a2)
    {
      goto LABEL_4;
    }
  }
}

uint64_t sub_1000EB558(char *a1, unint64_t a2)
{
  v5 = OBJC_IVAR____TtC11Diagnostics13CardStackView_heightConstraints;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if ((v7 & 0xC000000000000001) != 0)
  {

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v8 = *(v7 + 8 * a2 + 32);
LABEL_5:
  [v8 setActive:0];
  [a1 removeConstraint:v8];
  swift_beginAccess();
  v9 = sub_100150EC4(a2);
  swift_endAccess();

  v10 = *&a1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
  if (v10)
  {
    v17[0] = v10;
    sub_1000EB998();
    v11 = v10;
    sub_10003C49C(&qword_100201040);
    if (swift_dynamicCast())
    {
      if (*(&v15 + 1))
      {
        sub_100049F74(&v14, v17);
        v12 = v18;
        v13 = v19;
        sub_1000EB9E4(v17, v18);
        (*(v13 + 40))(0, 0, v12, v13);

        return sub_100044554(v17);
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {

    v16 = 0;
    v14 = 0u;
    v15 = 0u;
  }

  return sub_1000EB930(&v14);
}

uint64_t sub_1000EB844()
{
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics13CardStackView_layoutUpdateHandler));
}

id sub_1000EB888()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardStackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000EB930(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_100201038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EB998()
{
  result = qword_1001FF090;
  if (!qword_1001FF090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FF090);
  }

  return result;
}

uint64_t sub_1000EB9E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000EBA34()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000EBA80()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000EBAC0()
{
  result = qword_1001FF730;
  if (!qword_1001FF730)
  {
    sub_1000EB998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF730);
  }

  return result;
}

unint64_t sub_1000EBB38()
{
  result = qword_100201050;
  if (!qword_100201050)
  {
    sub_10003C4E4(&qword_100201048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201050);
  }

  return result;
}

id sub_1000EBBA8()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for CardStackView();
  return objc_msgSendSuper2(&v2, "layoutSubviews");
}

uint64_t sub_1000EBBE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000EBC08()
{
  v0 = type metadata accessor for Logger();
  sub_1000EBC88(v0, qword_10020A510);
  sub_10003DAAC(v0, qword_10020A510);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_1000EBC88(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000EBCEC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EBC88(v0, qword_10020A528);
  sub_10003DAAC(v0, qword_10020A528);
  return Logger.init(subsystem:category:)();
}

Class sub_1000EBD70(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1000EC478();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_1000EBDFC(char a1)
{
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 <= 5)
  {
    v2 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) sessionID];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v5;
      v25 = v4;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    v6 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1;
    if (v6 > 5)
    {
      v23 = 0;
      v7 = 0;
    }

    else
    {
      v23 = *&aFunctioncosmet[8 * v6];
      v7 = *&aAl[8 * v6];
    }

    v8 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination];
    v9 = 0;
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        if (sub_1000660CC())
        {
          v9 = 97;
        }

        else
        {
          v9 = 99;
        }

        v10 = 0xE100000000000000;
        goto LABEL_22;
      }

      v10 = 0;
      if (v8 != 2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v8 == 3)
      {
LABEL_14:
        v10 = 0xE100000000000000;
        v9 = 100;
        goto LABEL_22;
      }

      if (v8 != 4)
      {
        v10 = 0;
        if (v8 == 5)
        {
          goto LABEL_14;
        }

LABEL_22:
        v11 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) serialNumber];
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        v16 = sub_10005CA94(a1);
        v18 = v17;
        _StringGuts.grow(_:)(24);

        v19._countAndFlagsBits = v16;
        v19._object = v18;
        String.append(_:)(v19);
        v20 = String._bridgeToObjectiveC()();

        v21 = swift_allocObject();
        v21[2] = v16;
        v21[3] = v18;
        v21[4] = 0x64616F6C3A707061;
        v21[5] = 0xE800000000000000;
        v21[6] = v25;
        v21[7] = v24;
        v21[8] = v23;
        v21[9] = v7;
        v21[10] = v9;
        v21[11] = v10;
        v21[12] = v13;
        v21[13] = v15;
        aBlock[4] = sub_1000EC56C;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000EBD70;
        aBlock[3] = &unk_1001C5810;
        v22 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v22);

        return;
      }
    }

    v10 = 0xE100000000000000;
    v9 = 98;
    goto LABEL_22;
  }
}

void sub_1000EC128(char a1)
{
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 <= 5)
  {
    v2 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) sessionID];
    if (v2)
    {
      v3 = v2;
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v5;
      v25 = v4;
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    v6 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1;
    if (v6 > 5)
    {
      v23 = 0;
      v7 = 0;
    }

    else
    {
      v23 = *&aFunctioncosmet[8 * v6];
      v7 = *&aAl[8 * v6];
    }

    v8 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination];
    v9 = 0;
    if (v8 <= 2)
    {
      if (v8 == 1)
      {
        if (sub_1000660CC())
        {
          v9 = 97;
        }

        else
        {
          v9 = 99;
        }

        v10 = 0xE100000000000000;
        goto LABEL_22;
      }

      v10 = 0;
      if (v8 != 2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v8 == 3)
      {
LABEL_14:
        v10 = 0xE100000000000000;
        v9 = 100;
        goto LABEL_22;
      }

      if (v8 != 4)
      {
        v10 = 0;
        if (v8 == 5)
        {
          goto LABEL_14;
        }

LABEL_22:
        v11 = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) serialNumber];
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        v16 = sub_10005CC84(a1);
        v18 = v17;
        _StringGuts.grow(_:)(24);

        v19._countAndFlagsBits = v16;
        v19._object = v18;
        String.append(_:)(v19);
        v20 = String._bridgeToObjectiveC()();

        v21 = swift_allocObject();
        v21[2] = v16;
        v21[3] = v18;
        v21[4] = 0x6E6576653A707061;
        v21[5] = 0xE900000000000074;
        v21[6] = v25;
        v21[7] = v24;
        v21[8] = v23;
        v21[9] = v7;
        v21[10] = v9;
        v21[11] = v10;
        v21[12] = v13;
        v21[13] = v15;
        aBlock[4] = sub_1000EC45C;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000EBD70;
        aBlock[3] = &unk_1001C57C0;
        v22 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v22);

        return;
      }
    }

    v10 = 0xE100000000000000;
    v9 = 98;
    goto LABEL_22;
  }
}

uint64_t sub_1000EC460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000EC478()
{
  result = qword_1001FCE88;
  if (!qword_1001FCE88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FCE88);
  }

  return result;
}

uint64_t sub_1000EC4C4()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000EC574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000F00F0(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10003DD84(v10, &unk_1001FFE20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10003DD84(a3, &unk_1001FFE20);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10003DD84(a3, &unk_1001FFE20);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000EC810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000F00F0(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10003DD84(v10, &unk_1001FFE20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      sub_10003C49C(&qword_1002010D8);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10003DD84(a3, &unk_1001FFE20);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10003DD84(a3, &unk_1001FFE20);
  sub_10003C49C(&qword_1002010D8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}