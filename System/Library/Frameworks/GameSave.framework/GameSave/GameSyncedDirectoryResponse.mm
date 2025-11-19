@interface GameSyncedDirectoryResponse
- (GameSyncedDirectoryResponse)init;
- (GameSyncedDirectoryResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GameSyncedDirectoryResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  GameSyncedDirectoryResponse.encode(with:)(v4);
}

- (GameSyncedDirectoryResponse)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized GameSyncedDirectoryResponse.init(coder:)(v3);

  return v4;
}

- (GameSyncedDirectoryResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end