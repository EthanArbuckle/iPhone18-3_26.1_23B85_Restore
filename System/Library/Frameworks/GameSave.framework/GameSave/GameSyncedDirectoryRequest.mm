@interface GameSyncedDirectoryRequest
- (GameSyncedDirectoryRequest)init;
- (GameSyncedDirectoryRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GameSyncedDirectoryRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  GameSyncedDirectoryRequest.encode(with:)(coderCopy);
}

- (GameSyncedDirectoryRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized GameSyncedDirectoryRequest.init(coder:)(coderCopy);

  return v4;
}

- (GameSyncedDirectoryRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end