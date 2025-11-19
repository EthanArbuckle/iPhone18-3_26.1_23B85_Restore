@interface AuthorizationViewModel
- (_TtC28LocalAuthenticationUIService22AuthorizationViewModel)init;
- (void)authenticationResult:(id)a3 error:(id)a4 context:(id)a5;
- (void)biometricNoMatch;
- (void)biometryDidBecomeIdle;
@end

@implementation AuthorizationViewModel

- (_TtC28LocalAuthenticationUIService22AuthorizationViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)authenticationResult:(id)a3 error:(id)a4 context:(id)a5
{
  if (a3)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v10 = a4;
  v8 = a5;
  v9 = self;
  specialized AuthorizationViewModel.authenticationResult(_:error:context:)(a4);
}

- (void)biometricNoMatch
{
  v2 = self;
  AuthorizationViewModel.biometricNoMatch()();
}

- (void)biometryDidBecomeIdle
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v9 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()partial apply, v8);
}

@end