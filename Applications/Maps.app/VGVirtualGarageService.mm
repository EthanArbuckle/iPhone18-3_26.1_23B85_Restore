@interface VGVirtualGarageService
- (void)getEvChargingMetadata:(id)a3;
@end

@implementation VGVirtualGarageService

- (void)getEvChargingMetadata:(id)a3
{
  v3 = a3;
  v4 = +[VGVirtualGarageService sharedService];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100C32E3C;
  v6[3] = &unk_10164E2B8;
  v7 = v3;
  v5 = v3;
  [v4 virtualGarageGetGarageWithReply:v6];
}

@end