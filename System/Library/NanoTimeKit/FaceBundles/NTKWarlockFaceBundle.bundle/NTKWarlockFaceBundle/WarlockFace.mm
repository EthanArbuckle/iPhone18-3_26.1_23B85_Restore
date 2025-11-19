@interface WarlockFace
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)pigmentFaceDomain;
- (Class)_optionClassForCustomEditMode:(int64_t)a3;
- (Class)faceViewClass;
- (_TtC20NTKWarlockFaceBundle11WarlockFace)initWithCoder:(id)a3;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_optionAtIndex:(int64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (id)curatedGalleryBackgroundColors;
- (id)faceSharingName;
- (int64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (int64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4;
@end

@implementation WarlockFace

- (id)_customEditModes
{
  sub_2BB0C(&off_51B20);
  sub_79FC();
  v2.super.isa = sub_376A0().super.isa;

  return v2.super.isa;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a4)
  {
    sub_37530();
  }

  v6 = self;
  v7 = sub_7858(a3);

  return v7;
}

- (Class)_optionClassForCustomEditMode:(int64_t)a3
{
  if (a3 == 17)
  {
    type metadata accessor for WarlockBackgroundEditOption();
  }

  else
  {
    if (a3 != 13)
    {
      return 0;
    }

    type metadata accessor for WarlockTypefaceEditOption();
  }

  return swift_getObjCClassFromMetadata();
}

- (id)_optionAtIndex:(int64_t)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 17)
  {
    type metadata accessor for WarlockBackgroundEditOption();
    goto LABEL_5;
  }

  if (a4 == 13)
  {
    type metadata accessor for WarlockTypefaceEditOption();
LABEL_5:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = self;
    v9 = [(WarlockFace *)v8 device];
    v10 = [ObjCClassFromMetadata optionAtIndex:a3 forDevice:v9];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (int64_t)_numberOfOptionsForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 17)
  {
    type metadata accessor for WarlockBackgroundEditOption();
    goto LABEL_5;
  }

  if (a3 == 13)
  {
    type metadata accessor for WarlockTypefaceEditOption();
LABEL_5:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = self;
    v7 = [(WarlockFace *)v6 device];
    v8 = [ObjCClassFromMetadata numberOfOptionsForDevice:v7];

    return v8;
  }

  return 0;
}

- (int64_t)_indexOfOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a5)
  {
    sub_37530();
  }

  v8 = a3;
  v9 = self;
  v10 = sub_7924(a3, a4);

  return v10;
}

- (id)_faceDescriptionKey
{
  v2 = sub_37500();

  return v2;
}

- (id)_faceDescription
{
  type metadata accessor for WarlockFaceBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_37500();
  v4 = sub_37500();
  v5 = [ObjCClassFromMetadata localizedStringForKey:v3 comment:v4];

  sub_37530();
  v6 = sub_37500();

  return v6;
}

- (id)faceSharingName
{
  type metadata accessor for WarlockFaceBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_37500();
  v4 = sub_37500();
  v5 = [ObjCClassFromMetadata localizedStringForKey:v3 comment:v4];

  sub_37530();
  v6 = sub_37500();

  return v6;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v9 = &type metadata for WarlockFeatureFlags;
  v10 = sub_36BD4();
  v4 = a3;
  v5 = sub_36D00();
  result = sub_85EC(v8);
  if (v4)
  {
    v7 = [v4 supportsNapiliAligned];

    return (v5 & v7 & 1) == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC20NTKWarlockFaceBundle11WarlockFace)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WarlockFace();
  v4 = a3;
  v5 = [(WarlockFace *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

+ (id)pigmentFaceDomain
{
  v2 = sub_37500();

  return v2;
}

- (Class)faceViewClass
{
  type metadata accessor for WarlockFaceView();

  return swift_getObjCClassFromMetadata();
}

- (id)curatedGalleryBackgroundColors
{
  sub_815C(&qword_59048);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_43B90;
  result = NTKColorWithRGBA();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v2 + 32) = result;
  result = NTKColorWithRGBA();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(v2 + 40) = result;
  sub_36B88();
  v4.super.isa = sub_376A0().super.isa;

  return v4.super.isa;
}

@end