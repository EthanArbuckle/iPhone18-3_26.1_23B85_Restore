@interface JSTreatmentStore
- (_TtC11AppStoreKit16JSTreatmentStore)init;
- (id)treatmentForArea:(id)a3;
- (id)treatmentsForAreas:(id)a3;
@end

@implementation JSTreatmentStore

- (id)treatmentForArea:(id)a3
{
  v4 = sub_1E1AF5DFC();
  v6 = v5;
  v7 = self;
  v8 = sub_1E17F1A4C(v4, v6);

  return v8;
}

- (id)treatmentsForAreas:(id)a3
{
  v4 = sub_1E1AF621C();
  v5 = self;
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