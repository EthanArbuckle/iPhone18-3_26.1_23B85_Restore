@interface TVUTSNetworkManagerProxy
+ (void)cancel:(NSURLRequest *)a3 completion:(id)a4;
+ (void)executeRequest:(NSURLRequest *)a3 completion:(id)a4;
+ (void)fetchConfiguration:(BOOL)a3 completion:(id)a4;
- (_TtC17TVWidgetExtension24TVUTSNetworkManagerProxy)init;
@end

@implementation TVUTSNetworkManagerProxy

+ (void)executeRequest:(NSURLRequest *)a3 completion:(id)a4
{
  v7 = sub_100006334(&qword_100125288);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_1000D372C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000EDAD8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000EDAE0;
  v14[5] = v13;
  v15 = a3;
  sub_1000CEE14(0, 0, v9, &unk_1000EDAE8, v14);
}

+ (void)cancel:(NSURLRequest *)a3 completion:(id)a4
{
  v7 = sub_100006334(&qword_100125288);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = sub_1000D372C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000EDAB8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000EDAC0;
  v14[5] = v13;
  v15 = a3;
  sub_1000CEE14(0, 0, v9, &unk_1000EDAC8, v14);
}

+ (void)fetchConfiguration:(BOOL)a3 completion:(id)a4
{
  v7 = sub_100006334(&qword_100125288);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = a1;
  v12 = sub_1000D372C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000EDA70;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000EDA80;
  v14[5] = v13;
  sub_1000CEE14(0, 0, v9, &unk_1000E6730, v14);
}

- (_TtC17TVWidgetExtension24TVUTSNetworkManagerProxy)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TVUTSNetworkManagerProxy();
  return [(TVUTSNetworkManagerProxy *)&v3 init];
}

@end