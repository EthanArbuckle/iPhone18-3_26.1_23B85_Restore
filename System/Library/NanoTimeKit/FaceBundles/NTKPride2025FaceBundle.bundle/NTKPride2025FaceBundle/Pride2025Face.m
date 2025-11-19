@interface Pride2025Face
+ (BOOL)isRestrictedForDevice:(id)a3;
+ (id)_complicationSlotDescriptors;
+ (id)_orderedComplicationSlots;
+ (id)_richComplicationSlotsForDevice:(id)a3;
- (Class)faceViewClass;
- (_TtC22NTKPride2025FaceBundle13Pride2025Face)initWithCoder:(id)a3;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)faceSharingName;
@end

@implementation Pride2025Face

- (id)faceSharingName
{
  type metadata accessor for Pride2025FaceBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = sub_12774();
  v4 = sub_12774();
  v5 = [ObjCClassFromMetadata localizedStringForKey:v3 comment:v4];

  sub_12784();
  v6 = sub_12774();

  return v6;
}

- (id)_faceDescriptionKey
{
  v2 = sub_12774();

  return v2;
}

- (id)_faceDescription
{
  v2 = self;
  sub_3734();
  v4 = v3;

  if (v4)
  {
    v5 = sub_12774();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isRestrictedForDevice:(id)a3
{
  v3 = a3;
  result = NTKGizmoOrCompanionAreRussian();
  if (v3)
  {
    v5 = result;
    v6 = pride2025SupportsDeviceCapability(v3);
    v7 = pride2025FeatureFlagEnabled();

    return v5 || (v6 & v7 & 1) == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC22NTKPride2025FaceBundle13Pride2025Face)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for Pride2025Face();
  v4 = a3;
  v5 = [(Pride2025Face *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (Class)faceViewClass
{
  type metadata accessor for Pride2025FaceView();

  return swift_getObjCClassFromMetadata();
}

+ (id)_complicationSlotDescriptors
{
  sub_4020();
  if (v2)
  {
    sub_4568(0, &qword_1E4B0, NSObject_ptr);
    v3.super.isa = sub_12764().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

+ (id)_richComplicationSlotsForDevice:(id)a3
{
  sub_3EA8(&qword_1E4A8, &qword_14580);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_14540;
  *(v3 + 32) = sub_12784();
  *(v3 + 40) = v4;
  v5.super.isa = sub_127D4().super.isa;

  return v5.super.isa;
}

+ (id)_orderedComplicationSlots
{
  sub_3EA8(&qword_1E920, &qword_148C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_14540;
  v3 = sub_12784();
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5.super.isa = sub_127D4().super.isa;

  return v5.super.isa;
}

- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a4)
  {
    sub_12784();
  }

  v5 = self;
  v6 = sub_12774();
  v7 = sub_12774();
  v8 = NTKClockFaceLocalizedString();

  if (v8)
  {
    sub_12784();

    v9 = sub_12774();
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

@end