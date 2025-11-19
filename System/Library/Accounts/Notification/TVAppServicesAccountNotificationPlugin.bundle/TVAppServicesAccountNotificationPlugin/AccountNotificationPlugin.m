@interface AccountNotificationPlugin
- (_TtC38TVAppServicesAccountNotificationPlugin25AccountNotificationPlugin)init;
- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6;
@end

@implementation AccountNotificationPlugin

- (void)account:(id)a3 didChangeWithType:(int)a4 inStore:(id)a5 oldAccount:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = self;
  sub_13B0(a3, a6);
  sub_13B4(a3, a6);
}

- (_TtC38TVAppServicesAccountNotificationPlugin25AccountNotificationPlugin)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AccountNotificationPlugin();
  return [(AccountNotificationPlugin *)&v3 init];
}

@end