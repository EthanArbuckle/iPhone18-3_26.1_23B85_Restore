@interface MAGAngelProxy
- (_TtC14MagnifierAngel13MAGAngelProxy)init;
- (void)finishWithCompletionHandler:(id)a3;
- (void)startWithCompletionHandler:(id)a3;
@end

@implementation MAGAngelProxy

- (void)startWithCompletionHandler:(id)a3
{
  v5 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100039BF0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100039BF8;
  v13[5] = v12;
  v14 = self;
  sub_10002EA70(0, 0, v8, &unk_100039C00, v13);
}

- (void)finishWithCompletionHandler:(id)a3
{
  v5 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100039BA8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100039BB8;
  v13[5] = v12;
  v14 = self;
  sub_10002EA70(0, 0, v8, &unk_100039BC8, v13);
}

- (_TtC14MagnifierAngel13MAGAngelProxy)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MAGAngelProxy();
  return [(MAGAngelProxy *)&v3 init];
}

@end