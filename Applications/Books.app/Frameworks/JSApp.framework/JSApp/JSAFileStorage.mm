@interface JSAFileStorage
+ (_TtC5JSApp14JSAFileStorage)sharedInstance;
- (_TtC5JSApp14JSAFileStorage)init;
- (id)getItem:(id)item;
- (void)removeItem:(id)item;
- (void)setItem:(id)item :(id)a4;
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

- (id)getItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
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

- (void)setItem:(id)item :(id)a4
{
  itemCopy = item;
  v7 = a4;
  selfCopy = self;
  sub_450B8(itemCopy, v7);
}

- (void)removeItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  sub_45374();
}

- (_TtC5JSApp14JSAFileStorage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end