@interface AVSEnrollmentCoordinatorFactory
+ (id)createWithCompletionHandler:(id)handler;
- (_TtC21AccessibilitySettings31AVSEnrollmentCoordinatorFactory)init;
@end

@implementation AVSEnrollmentCoordinatorFactory

+ (id)createWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_171400(sub_170444, v4);

  return v5;
}

- (_TtC21AccessibilitySettings31AVSEnrollmentCoordinatorFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AVSEnrollmentCoordinatorFactory();
  return [(AVSEnrollmentCoordinatorFactory *)&v3 init];
}

@end