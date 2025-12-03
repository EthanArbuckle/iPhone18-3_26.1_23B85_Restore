@interface MAPreferencesViewProvider
+ (id)getSwiftUIViewWithAccountStore:(id)store appleAccount:(id)account delegate:(id)delegate;
- (_TtC18icloudMailSettings25MAPreferencesViewProvider)init;
@end

@implementation MAPreferencesViewProvider

+ (id)getSwiftUIViewWithAccountStore:(id)store appleAccount:(id)account delegate:(id)delegate
{
  v8 = objc_allocWithZone(type metadata accessor for MAPreferencesController());
  storeCopy = store;
  accountCopy = account;
  swift_unknownObjectRetain();
  v11 = sub_7BDE0(storeCopy, accountCopy, delegate);

  swift_unknownObjectRelease();

  return v11;
}

- (_TtC18icloudMailSettings25MAPreferencesViewProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MAPreferencesViewProvider();
  return [(MAPreferencesViewProvider *)&v3 init];
}

@end