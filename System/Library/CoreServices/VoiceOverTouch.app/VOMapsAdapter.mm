@interface VOMapsAdapter
+ (void)describeMapsWithElements:(NSArray *)elements focusedElement:(VOTElement *)element completionHandler:(id)handler;
- (_TtC3vot13VOMapsAdapter)init;
@end

@implementation VOMapsAdapter

+ (void)describeMapsWithElements:(NSArray *)elements focusedElement:(VOTElement *)element completionHandler:(id)handler
{
  v9 = sub_100117630(&qword_1001FE868);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = elements;
  v13[3] = element;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10017EAB8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10017E9F0;
  v16[5] = v15;
  elementsCopy = elements;
  elementCopy = element;
  sub_100126474(0, 0, v11, &unk_10017E9F8, v16);
}

- (_TtC3vot13VOMapsAdapter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VOMapsAdapter();
  return [(VOMapsAdapter *)&v3 init];
}

@end