@interface TVUTSNetworkManagerProxy
+ (void)cancel:(NSURLRequest *)cancel completion:(id)completion;
+ (void)executeRequest:(NSURLRequest *)request completion:(id)completion;
+ (void)fetchConfiguration:(BOOL)configuration completion:(id)completion;
- (_TtC18TVIntentsExtension24TVUTSNetworkManagerProxy)init;
@end

@implementation TVUTSNetworkManagerProxy

+ (void)executeRequest:(NSURLRequest *)request completion:(id)completion
{
  v7 = (*(*(sub_100002C2C(&qword_10000C7B0, &qword_100006450) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000056F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100006588;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100006590;
  v14[5] = v13;
  requestCopy = request;
  sub_100003108(0, 0, v9, &unk_100006598, v14);
}

+ (void)cancel:(NSURLRequest *)cancel completion:(id)completion
{
  v7 = (*(*(sub_100002C2C(&qword_10000C7B0, &qword_100006450) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = cancel;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1000056F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100006568;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100006570;
  v14[5] = v13;
  cancelCopy = cancel;
  sub_100003108(0, 0, v9, &unk_100006578, v14);
}

+ (void)fetchConfiguration:(BOOL)configuration completion:(id)completion
{
  v7 = (*(*(sub_100002C2C(&qword_10000C7B0, &qword_100006450) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = configuration;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_1000056F8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100006520;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100006530;
  v14[5] = v13;
  sub_100003108(0, 0, v9, &unk_100006540, v14);
}

- (_TtC18TVIntentsExtension24TVUTSNetworkManagerProxy)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TVUTSNetworkManagerProxy();
  return [(TVUTSNetworkManagerProxy *)&v3 init];
}

@end