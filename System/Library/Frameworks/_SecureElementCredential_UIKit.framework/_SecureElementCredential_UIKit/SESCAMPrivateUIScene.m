@interface SESCAMPrivateUIScene
- (NSString)magicString;
- (_TtC30_SecureElementCredential_UIKit20SESCAMPrivateUIScene)initWithSession:(id)a3 connectionOptions:(id)a4;
- (void)setMagicString:(id)a3;
@end

@implementation SESCAMPrivateUIScene

- (NSString)magicString
{
  v2 = (self + OBJC_IVAR____TtC30_SecureElementCredential_UIKit20SESCAMPrivateUIScene_magicString);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_23B969564();

  return v5;
}

- (void)setMagicString:(id)a3
{
  v4 = sub_23B969574();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC30_SecureElementCredential_UIKit20SESCAMPrivateUIScene_magicString);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (_TtC30_SecureElementCredential_UIKit20SESCAMPrivateUIScene)initWithSession:(id)a3 connectionOptions:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = (self + OBJC_IVAR____TtC30_SecureElementCredential_UIKit20SESCAMPrivateUIScene_magicString);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(SESCAMPrivateUIScene *)&v10 initWithSession:a3 connectionOptions:a4];
}

@end