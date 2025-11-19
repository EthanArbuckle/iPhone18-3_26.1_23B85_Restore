@interface JSAFileStorage
+ (_TtC5JSApp14JSAFileStorage)sharedInstance;
- (_TtC5JSApp14JSAFileStorage)init;
- (id)getItem:(id)a3;
- (void)removeItem:(id)a3;
- (void)setItem:(id)a3 :(id)a4;
@end

@implementation JSAFileStorage

+ (_TtC5JSApp14JSAFileStorage)sharedInstance
{
  if (qword_CA3E0 != -1)
  {
    swift_once();
  }

  v3 = qword_CAB78;

  return v3;
}

- (id)getItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_44DA8(v14);

  v6 = v15;
  if (v15)
  {
    v7 = sub_40E4C(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    __chkstk_darwin(v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_84BDC();
    (*(v8 + 8))(v11, v6);
    sub_371A8(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setItem:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_450B8(v6, v7);
}

- (void)removeItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_45374();
}

- (_TtC5JSApp14JSAFileStorage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end