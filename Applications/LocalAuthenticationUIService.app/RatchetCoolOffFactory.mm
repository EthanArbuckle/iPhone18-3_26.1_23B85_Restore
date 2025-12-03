@interface RatchetCoolOffFactory
+ (id)makeViewControllerWith:(id)with delegate:(id)delegate;
- (_TtC28LocalAuthenticationUIService21RatchetCoolOffFactory)init;
@end

@implementation RatchetCoolOffFactory

- (_TtC28LocalAuthenticationUIService21RatchetCoolOffFactory)init
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (id)makeViewControllerWith:(id)with delegate:(id)delegate
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for RatchetCoolOffContentViewModel(0);
  swift_unknownObjectRetain_n();
  v5 = RatchetCoolOffContentViewModel.__allocating_init(with:delegate:)(v4);
  type metadata accessor for RatchetCoolOffContentViewController();
  v6 = lazy protocol witness table accessor for type RatchetCoolOffContentViewModel and conformance RatchetCoolOffContentViewModel();
  v7 = v5;
  v8 = RatchetCoolOffContentViewController.__allocating_init(viewModel:)(v7, v6);

  swift_unknownObjectRelease();

  return v8;
}

@end