@interface ViewGraphHostEnvironmentWrapper
- (BOOL)isEqual:(id)equal;
- (_TtC7SwiftUI31ViewGraphHostEnvironmentWrapper)init;
- (_TtC7SwiftUI31ViewGraphHostEnvironmentWrapper)initWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = ViewGraphHostEnvironmentWrapper.isEqual(_:)(v8);

  outlined destroy of Any?(v8);
  return v6;
}

- (_TtC7SwiftUI31ViewGraphHostEnvironmentWrapper)initWithCoder:(id)coder
{
  EnvironmentValues.init()((self + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment));
  *(&self->super.isa + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase) = 0;

  type metadata accessor for ViewGraphHostEnvironmentWrapper();
  swift_deallocPartialClassInstance();
  return 0;
}

@end