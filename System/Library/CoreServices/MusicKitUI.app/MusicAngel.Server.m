@interface MusicAngel.Server
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)subscriptionOffer_updateOptionsWithClientID:(NSString *)a3 encodedOptions:(NSData *)a4 completionHandler:(id)a5;
@end

@implementation MusicAngel.Server

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_10000B9E4(v10, v9, a5);

  swift_unknownObjectRelease();
}

- (void)subscriptionOffer_updateOptionsWithClientID:(NSString *)a3 encodedOptions:(NSData *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_100013F80(&unk_100018450, v9);
}

@end