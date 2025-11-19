@interface _EXServiceClient
+ (_EXServiceClient)sharedInstance;
- (BOOL)photoServiceAuthorizationStatusForExtensionUUID:(id)a3 error:(id *)a4;
@end

@implementation _EXServiceClient

+ (_EXServiceClient)sharedInstance
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static _EXServiceClient.shared;

  return v3;
}

- (BOOL)photoServiceAuthorizationStatusForExtensionUUID:(id)a3 error:(id *)a4
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = self;
  _EXServiceClient.photoServiceAuthorizationStatus(for:)();
  (*(v6 + 8))(v9, v5);

  return 1;
}

@end