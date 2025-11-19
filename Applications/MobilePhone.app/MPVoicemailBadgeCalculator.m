@interface MPVoicemailBadgeCalculator
- (MPVoicemailBadgeCalculator)init;
- (id)listenWithHandler:(id)a3;
@end

@implementation MPVoicemailBadgeCalculator

- (id)listenWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned PhoneBadge) -> ();
  *(v6 + 24) = v5;
  v7 = *((swift_isaMask & self->super.isa) + 0xD8);
  v8 = self;

  v9 = v7(&thunk for @escaping @callee_guaranteed (@unowned PhoneBadge) -> ()partial apply, v6);

  return v9;
}

- (MPVoicemailBadgeCalculator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end