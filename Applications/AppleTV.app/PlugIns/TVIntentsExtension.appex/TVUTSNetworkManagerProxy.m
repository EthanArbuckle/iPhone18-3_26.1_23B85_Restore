@interface TVUTSNetworkManagerProxy
+ (void)cancel:(NSURLRequest *)a3 completion:(id)a4;
+ (void)executeRequest:(NSURLRequest *)a3 completion:(id)a4;
+ (void)fetchConfiguration:(BOOL)a3 completion:(id)a4;
- (_TtC18TVIntentsExtension24TVUTSNetworkManagerProxy)init;
@end

@implementation TVUTSNetworkManagerProxy

+ (void)executeRequest:(NSURLRequest *)a3 completion:(id)a4
{
  v7 = (*(*(sub_100002C2C(&qword_10000C7B0, &qword_100006450) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
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
  v15 = a3;
  sub_100003108(0, 0, v9, &unk_100006598, v14);
}

+ (void)cancel:(NSURLRequest *)a3 completion:(id)a4
{
  v7 = (*(*(sub_100002C2C(&qword_10000C7B0, &qword_100006450) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
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
  v15 = a3;
  sub_100003108(0, 0, v9, &unk_100006578, v14);
}

+ (void)fetchConfiguration:(BOOL)a3 completion:(id)a4
{
  v7 = (*(*(sub_100002C2C(&qword_10000C7B0, &qword_100006450) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = a1;
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