@interface GameSyncedDirectoryRequest
- (GameSyncedDirectoryRequest)init;
- (GameSyncedDirectoryRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GameSyncedDirectoryRequest

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  GameSyncedDirectoryRequest.encode(with:)(v4);
}

- (GameSyncedDirectoryRequest)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized GameSyncedDirectoryRequest.init(coder:)(v3);

  return v4;
}

- (GameSyncedDirectoryRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end