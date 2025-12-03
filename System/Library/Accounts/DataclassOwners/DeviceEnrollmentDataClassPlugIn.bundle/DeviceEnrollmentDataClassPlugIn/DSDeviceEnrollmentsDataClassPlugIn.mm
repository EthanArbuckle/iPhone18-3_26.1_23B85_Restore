@interface DSDeviceEnrollmentsDataClassPlugIn
+ (id)dataclasses;
- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass;
- (DSDeviceEnrollmentsDataClassPlugIn)init;
@end

@implementation DSDeviceEnrollmentsDataClassPlugIn

+ (id)dataclasses
{
  sub_12B4(&qword_C3C0, &unk_6C70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_6C20;
  v3 = ACAccountDataclassDeviceEnrollments;
  *(v2 + 32) = ACAccountDataclassDeviceEnrollments;
  type metadata accessor for Dataclass();
  v4 = v3;
  v5.super.isa = sub_6528().super.isa;

  return v5.super.isa;
}

- (BOOL)performAction:(id)action forAccount:(id)account withChildren:(id)children forDataclass:(id)dataclass
{
  if (children)
  {
    sub_6538();
  }

  actionCopy = action;
  accountCopy = account;
  dataclassCopy = dataclass;
  selfCopy = self;
  v14 = _s31DeviceEnrollmentDataClassPlugIn0a11EnrollmentscdeF0C7perform_3for12withChildren0I9DataclassSbSo17ACDataclassActionCSg_So9ACAccountCSgSayypGSgSo0oL0aSgtF_0(action);

  return v14 & 1;
}

- (DSDeviceEnrollmentsDataClassPlugIn)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeviceEnrollmentsDataClassPlugIn();
  return [(DSDeviceEnrollmentsDataClassPlugIn *)&v3 init];
}

@end