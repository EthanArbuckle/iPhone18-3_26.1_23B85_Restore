@interface EmptyViewFactory.MissingLayer
- (_TtCV7SwiftUI16EmptyViewFactoryP33_7A45621CE16223183E03CAC88E8C5E6012MissingLayer)init;
- (_TtCV7SwiftUI16EmptyViewFactoryP33_7A45621CE16223183E03CAC88E8C5E6012MissingLayer)initWithCoder:(id)coder;
- (_TtCV7SwiftUI16EmptyViewFactoryP33_7A45621CE16223183E03CAC88E8C5E6012MissingLayer)initWithLayer:(id)layer;
- (void)drawInContext:(CGContext *)context;
@end

@implementation EmptyViewFactory.MissingLayer

- (void)drawInContext:(CGContext *)context
{
  selfCopy = self;
  contextCopy = context;
  EnvironmentValues.init()(&v7);
  v6 = v7;
  specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(contextCopy, &v6, 0, 1, selfCopy);
}

- (_TtCV7SwiftUI16EmptyViewFactoryP33_7A45621CE16223183E03CAC88E8C5E6012MissingLayer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(EmptyViewFactory.MissingLayer *)&v3 init];
}

- (_TtCV7SwiftUI16EmptyViewFactoryP33_7A45621CE16223183E03CAC88E8C5E6012MissingLayer)initWithLayer:(id)layer
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(EmptyViewFactory.MissingLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v6;
}

- (_TtCV7SwiftUI16EmptyViewFactoryP33_7A45621CE16223183E03CAC88E8C5E6012MissingLayer)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(EmptyViewFactory.MissingLayer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end