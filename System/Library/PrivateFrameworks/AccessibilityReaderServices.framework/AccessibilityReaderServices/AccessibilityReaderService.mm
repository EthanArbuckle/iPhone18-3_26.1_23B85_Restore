@interface AccessibilityReaderService
+ (_TtC27AccessibilityReaderServices26AccessibilityReaderService)sharedInstance;
- (BOOL)hideAccessibilityReaderUIViewAndReturnError:(id *)error;
- (BOOL)showAccessibilityReaderUIViewAndReturnError:(id *)error;
- (BOOL)startAccessibilityReaderAndReturnError:(id *)error;
- (BOOL)stopAccessibilityReaderAndReturnError:(id *)error;
- (_TtC27AccessibilityReaderServices26AccessibilityReaderService)init;
@end

@implementation AccessibilityReaderService

+ (_TtC27AccessibilityReaderServices26AccessibilityReaderService)sharedInstance
{
  if (qword_2814FBAD8 != -1)
  {
    swift_once();
  }

  v3 = qword_2814FBAE0;

  return v3;
}

- (_TtC27AccessibilityReaderServices26AccessibilityReaderService)init
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for AccessibilityReaderServiceAXUIService();
  v5 = [objc_allocWithZone(v4) init];
  v6 = (&self->super.isa + OBJC_IVAR____TtC27AccessibilityReaderServices26AccessibilityReaderService_serviceImpl);
  v6[3] = v4;
  v6[4] = &off_284FD1D68;
  *v6 = v5;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(AccessibilityReaderService *)&v8 init];
}

- (BOOL)startAccessibilityReaderAndReturnError:(id *)error
{
  sub_23D826DDC(self + OBJC_IVAR____TtC27AccessibilityReaderServices26AccessibilityReaderService_serviceImpl, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return 1;
}

- (BOOL)stopAccessibilityReaderAndReturnError:(id *)error
{
  sub_23D826DDC(self + OBJC_IVAR____TtC27AccessibilityReaderServices26AccessibilityReaderService_serviceImpl, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 16))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return 1;
}

- (BOOL)showAccessibilityReaderUIViewAndReturnError:(id *)error
{
  sub_23D826DDC(self + OBJC_IVAR____TtC27AccessibilityReaderServices26AccessibilityReaderService_serviceImpl, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 24))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return 1;
}

- (BOOL)hideAccessibilityReaderUIViewAndReturnError:(id *)error
{
  sub_23D826DDC(self + OBJC_IVAR____TtC27AccessibilityReaderServices26AccessibilityReaderService_serviceImpl, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 32))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v6);
  return 1;
}

@end