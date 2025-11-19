@interface SNFileServer
- (void)activateWithCompletion:(id)a3;
@end

@implementation SNFileServer

- (void)activateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1C9920B38(&unk_1C9AB4D28, v5);
}

@end