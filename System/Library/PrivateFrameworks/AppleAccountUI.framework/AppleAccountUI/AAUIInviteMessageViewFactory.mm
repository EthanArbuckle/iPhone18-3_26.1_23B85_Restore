@interface AAUIInviteMessageViewFactory
+ (id)createInviteMessageViewUIWithUrlComponents:(id)components;
@end

@implementation AAUIInviteMessageViewFactory

+ (id)createInviteMessageViewUIWithUrlComponents:(id)components
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](components);
  swift_getObjCClassMetadata();
  v5 = static InviteMessageViewFactory.createInviteMessageViewUI(urlComponents:)(components);
  MEMORY[0x1E69E5920](components);

  return v5;
}

@end