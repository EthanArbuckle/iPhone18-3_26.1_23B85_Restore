@interface ViewGraphHostEnvironmentWrapper
- (BOOL)isEqual:(id)a3;
- (_TtC7SwiftUI31ViewGraphHostEnvironmentWrapper)init;
- (_TtC7SwiftUI31ViewGraphHostEnvironmentWrapper)initWithCoder:(id)a3;
@end

@implementation ViewGraphHostEnvironmentWrapper

- (_TtC7SwiftUI31ViewGraphHostEnvironmentWrapper)init
{
  EnvironmentValues.init()((self + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment));
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for ViewGraphHostEnvironmentWrapper();
  return [(ViewGraphHostEnvironmentWrapper *)&v4 init];
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = ViewGraphHostEnvironmentWrapper.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6;
}

- (_TtC7SwiftUI31ViewGraphHostEnvironmentWrapper)initWithCoder:(id)a3
{
  EnvironmentValues.init()((self + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment));
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase) = 0;

  type metadata accessor for ViewGraphHostEnvironmentWrapper();
  swift_deallocPartialClassInstance();
  return 0;
}

@end