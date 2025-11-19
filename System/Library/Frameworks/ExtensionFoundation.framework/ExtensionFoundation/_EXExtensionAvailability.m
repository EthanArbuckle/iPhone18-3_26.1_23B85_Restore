@interface _EXExtensionAvailability
+ (id)addChangeObserver:(id)a3;
+ (void)removeChangeObserver:(id)a3;
- (_EXExtensionAvailability)init;
- (_EXExtensionAvailability)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _EXExtensionAvailability

- (_EXExtensionAvailability)init
{
  *(&self->super.isa + OBJC_IVAR____EXExtensionAvailability_enabledCount) = 0;
  *(&self->super.isa + OBJC_IVAR____EXExtensionAvailability_disabledCount) = 0;
  *(&self->super.isa + OBJC_IVAR____EXExtensionAvailability_unelectedCount) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for _EXExtensionAvailability();
  return [(_EXExtensionAvailability *)&v3 init];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  _EXExtensionAvailability.encode(with:)(v4);
}

- (_EXExtensionAvailability)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized _EXExtensionAvailability.init(coder:)(v3);

  return v4;
}

+ (id)addChangeObserver:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  static _EXExtensionAvailability.add(changeObserver:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned _EXExtensionAvailability) -> (), v4, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v7);

  return v5;
}

+ (void)removeChangeObserver:(id)a3
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(v4, v3);
  type metadata accessor for _EXExtensionAvailabilityObserver();
  if (swift_dynamicCast())
  {
    _EXExtensionAvailabilityObserver.invalidate()();

    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

@end