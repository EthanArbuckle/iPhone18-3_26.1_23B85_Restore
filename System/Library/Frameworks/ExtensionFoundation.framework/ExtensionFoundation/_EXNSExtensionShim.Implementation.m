@interface _EXNSExtensionShim.Implementation
- (_TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation)init;
- (id)beginExtensionRequest:(id)a3 error:(id *)a4;
- (void)beginExtensionRequest:(id)a3 completion:(id)a4;
- (void)cancelExtensionRequestWithIdentifier:(id)a3;
@end

@implementation _EXNSExtensionShim.Implementation

- (id)beginExtensionRequest:(id)a3 error:(id *)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  v12 = self;
  _EXNSExtensionShim.Implementation.begin(_:)(v11, v10);

  v13.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v10, v6);

  return v13.super.isa;
}

- (void)beginExtensionRequest:(id)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  v14[5] = a3;
  v14[6] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSUUID?, @unowned NSError?) -> ();
  v14[7] = v12;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in _EXNSExtensionShim.Implementation.begin(_:completion:), v14);
}

- (void)cancelExtensionRequestWithIdentifier:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  _EXNSExtensionShim.Implementation.cancelRequest(for:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (_TtCE19ExtensionFoundationCSo18_EXNSExtensionShim14Implementation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end