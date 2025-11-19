@interface MAPreferencesViewProvider
+ (id)getSwiftUIViewWithAccountStore:(id)a3 appleAccount:(id)a4 delegate:(id)a5;
- (_TtC18icloudMailSettings25MAPreferencesViewProvider)init;
@end

@implementation MAPreferencesViewProvider

+ (id)getSwiftUIViewWithAccountStore:(id)a3 appleAccount:(id)a4 delegate:(id)a5
{
  v8 = objc_allocWithZone(type metadata accessor for MAPreferencesController());
  v9 = a3;
  v10 = a4;
  swift_unknownObjectRetain();
  v11 = sub_7BDE0(v9, v10, a5);

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