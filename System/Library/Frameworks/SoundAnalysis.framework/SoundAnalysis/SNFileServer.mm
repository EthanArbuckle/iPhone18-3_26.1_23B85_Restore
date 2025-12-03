@interface SNFileServer
- (void)activateWithCompletion:(id)completion;
@end

@implementation SNFileServer

- (void)activateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1C9920B38(&unk_1C9AB4D28, v5);
}

@end