@interface BKPageHostingControllerProvider
- (BKPageHostingControllerProvider)init;
- (void)create:(id)create :(BOOL)a4 :(id)a5 :(id)a6;
- (void)createPage:(id)page :(id)a4 :(id)a5 :(id)a6;
@end

@implementation BKPageHostingControllerProvider

- (void)create:(id)create :(BOOL)a4 :(id)a5 :(id)a6
{
  v10 = sub_2C57E8();
  v11 = a5;
  v12 = a6;
  selfCopy = self;
  PageHostingControllerProvider.create(_:_:_:_:)(v10, a4, v11, v12);
}

- (void)createPage:(id)page :(id)a4 :(id)a5 :(id)a6
{
  v9 = sub_6620C(&unk_3BDBB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_2C57E8();
  v13 = sub_2C57E8();
  v14 = sub_2C5C58();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  sub_2C5C18();
  v15 = a4;
  v16 = a6;
  selfCopy = self;
  v18 = v15;
  v19 = v16;
  v20 = sub_2C5C08();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v12;
  v21[5] = selfCopy;
  v21[6] = v13;
  v21[7] = v18;
  v21[8] = v19;
  sub_249B98(0, 0, v11, &unk_2F07D0, v21);
}

- (BKPageHostingControllerProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end