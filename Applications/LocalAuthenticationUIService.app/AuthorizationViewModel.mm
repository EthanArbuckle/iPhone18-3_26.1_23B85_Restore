@interface AuthorizationViewModel
- (_TtC28LocalAuthenticationUIService22AuthorizationViewModel)init;
- (void)authenticationResult:(id)result error:(id)error context:(id)context;
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

- (void)authenticationResult:(id)result error:(id)error context:(id)context
{
  if (result)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  errorCopy = error;
  contextCopy = context;
  selfCopy = self;
  specialized AuthorizationViewModel.authenticationResult(_:error:context:)(error);
}

- (void)biometricNoMatch
{
  selfCopy = self;
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
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in AuthorizationViewModel.biometryDidBecomeIdle()partial apply, v8);
}

@end