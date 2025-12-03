@interface VGVirtualGarageService
- (void)getEvChargingMetadata:(id)metadata;
@end

@implementation VGVirtualGarageService

- (void)getEvChargingMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = +[VGVirtualGarageService sharedService];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100C32E3C;
  v6[3] = &unk_10164E2B8;
  v7 = metadataCopy;
  v5 = metadataCopy;
  [v4 virtualGarageGetGarageWithReply:v6];
}

@end