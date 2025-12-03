@interface WarlockFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)pigmentFaceDomain;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (Class)faceViewClass;
- (_TtC20NTKWarlockFaceBundle11WarlockFace)initWithCoder:(id)coder;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_optionAtIndex:(int64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)curatedGalleryBackgroundColors;
- (id)faceSharingName;
- (int64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (int64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
@end

@implementation WarlockFace

- (id)_customEditModes
{
  sub_2BB0C(&off_51B20);
  sub_79FC();
  v2.super.isa = sub_376A0().super.isa;

  return v2.super.isa;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (slot)
  {
    sub_37530();
  }

  selfCopy = self;
  v7 = sub_7858(mode);

  return v7;
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode == 17)
  {
    type metadata accessor for WarlockBackgroundEditOption();
  }

  else
  {
    if (mode != 13)
    {
      return 0;
    }

    type metadata accessor for WarlockTypefaceEditOption();
  }

  return swift_getObjCClassFromMetadata();
}

- (id)_optionAtIndex:(int64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 17)
  {
    type metadata accessor for WarlockBackgroundEditOption();
    goto LABEL_5;
  }

  if (mode == 13)
  {
    type metadata accessor for WarlockTypefaceEditOption();
LABEL_5:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    selfCopy = self;
    device = [(WarlockFace *)selfCopy device];
    v10 = [ObjCClassFromMetadata optionAtIndex:index forDevice:device];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (int64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 17)
  {
    type metadata accessor for WarlockBackgroundEditOption();
    goto LABEL_5;
  }

  if (mode == 13)
  {
    type metadata accessor for WarlockTypefaceEditOption();
LABEL_5:
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    selfCopy = self;
    device = [(WarlockFace *)selfCopy device];
    v8 = [ObjCClassFromMetadata numberOfOptionsForDevice:device];

    return v8;
  }

  return 0;
}

- (int64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (slot)
  {
    sub_37530();
  }

  optionCopy = option;
  selfCopy = self;
  v10 = sub_7924(option, mode);

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

+ (BOOL)isRestrictedForDevice:(id)device
{
  v9 = &type metadata for WarlockFeatureFlags;
  v10 = sub_36BD4();
  deviceCopy = device;
  v5 = sub_36D00();
  result = sub_85EC(v8);
  if (deviceCopy)
  {
    supportsNapiliAligned = [deviceCopy supportsNapiliAligned];

    return (v5 & supportsNapiliAligned & 1) == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC20NTKWarlockFaceBundle11WarlockFace)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WarlockFace();
  coderCopy = coder;
  v5 = [(WarlockFace *)&v7 initWithCoder:coderCopy];

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