@interface CRLBoardLibraryViewModelWrappedNode
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (NSArray)children;
- (_TtC24FreeformSharingExtension35CRLBoardLibraryViewModelWrappedNode)init;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (void)setChildren:(id)a3;
@end

@implementation CRLBoardLibraryViewModelWrappedNode

- (NSArray)children
{
  swift_getObjectType();

  v2.super.isa = sub_10007E544().super.isa;

  return v2.super.isa;
}

- (void)setChildren:(id)a3
{
  swift_getObjectType();
  *(self + OBJC_IVAR____TtC24FreeformSharingExtension35CRLBoardLibraryViewModelWrappedNode_children) = sub_10007E554();
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_10007E784();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_10003F844(v8);

  sub_1000357F4(v8);
  return v6 & 1;
}

- (_TtC24FreeformSharingExtension35CRLBoardLibraryViewModelWrappedNode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = sub_10007DDD4();
  v9 = v8;

  sub_10007DA94();
  swift_allocObject();
  sub_10007DA84();
  sub_100040CAC(&qword_1000B3310, type metadata accessor for CRLBoardLibraryViewModelWrappedNode);
  sub_10007DA74();
  sub_100025ED8(v7, v9);

  return v11;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  _Block_copy(v5);
  v6 = self;
  v7 = sub_100041600(v6, v5);
  _Block_release(v5);
  _Block_release(v5);

  return v7;
}

@end