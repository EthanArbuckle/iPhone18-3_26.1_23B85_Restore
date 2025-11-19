@interface AAUIInviteMessageViewFactory
+ (id)createInviteMessageViewUIWithUrlComponents:(id)a3;
@end

@implementation AAUIInviteMessageViewFactory

+ (id)createInviteMessageViewUIWithUrlComponents:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  swift_getObjCClassMetadata();
  v5 = static InviteMessageViewFactory.createInviteMessageViewUI(urlComponents:)(a3);
  MEMORY[0x1E69E5920](a3);

  return v5;
}

@end