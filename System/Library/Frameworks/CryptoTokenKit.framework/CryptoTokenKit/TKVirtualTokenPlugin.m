@interface TKVirtualTokenPlugin
+ (id)virtualTokenUUID;
- (TKVirtualTokenPlugin)init;
@end

@implementation TKVirtualTokenPlugin

+ (id)virtualTokenUUID
{
  v2 = sub_100009E14();
  v3 = [v2 dataUsingEncoding:4];

  LODWORD(v7) = 0;
  ccsha1_di();
  [v3 length];
  [v3 bytes];
  ccdigest();
  v4 = [[NSUUID alloc] initWithUUIDBytes:&v6];

  return v4;
}

- (TKVirtualTokenPlugin)init
{
  v11.receiver = self;
  v11.super_class = TKVirtualTokenPlugin;
  v2 = [(TKVirtualTokenPlugin *)&v11 init];
  if (v2)
  {
    v3 = +[TKVirtualTokenPlugin virtualTokenUUID];
    uuid = v2->_uuid;
    v2->_uuid = v3;

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 bundleURL];
    url = v2->_url;
    v2->_url = v6;

    v8 = sub_100009FD8();
    identifier = v2->_identifier;
    v2->_identifier = v8;
  }

  return v2;
}

@end