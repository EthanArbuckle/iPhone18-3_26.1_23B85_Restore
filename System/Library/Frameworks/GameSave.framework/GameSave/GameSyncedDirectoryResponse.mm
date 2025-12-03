@interface GameSyncedDirectoryResponse
- (GameSyncedDirectoryResponse)init;
- (GameSyncedDirectoryResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GameSyncedDirectoryResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  GameSyncedDirectoryResponse.encode(with:)(coderCopy);
}

- (GameSyncedDirectoryResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized GameSyncedDirectoryResponse.init(coder:)(coderCopy);

  return v4;
}

- (GameSyncedDirectoryResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end