@interface JSTreatmentStore
- (_TtC11AppStoreKit16JSTreatmentStore)init;
- (id)treatmentForArea:(id)area;
- (id)treatmentsForAreas:(id)areas;
@end

@implementation JSTreatmentStore

- (id)treatmentForArea:(id)area
{
  v4 = sub_1E1AF5DFC();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1E17F1A4C(v4, v6);

  return v8;
}

- (id)treatmentsForAreas:(id)areas
{
  v4 = sub_1E1AF621C();
  selfCopy = self;
  v6 = sub_1E17F1F00(v4);

  return v6;
}

- (_TtC11AppStoreKit16JSTreatmentStore)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSTreatmentStore *)&v3 init];
}

@end