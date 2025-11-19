@interface ActivityClass
- (OS_xpc_object)rawCriteria;
- (_TtC9appstored13ActivityClass)init;
@end

@implementation ActivityClass

- (OS_xpc_object)rawCriteria
{
  v3 = type metadata accessor for XPCDictionary();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((swift_isaMask & self->super.isa) + 0x50);
  v8 = self;
  v7();
  sub_100085D40(&qword_10059C808);
  XPCDictionary.withUnsafeUnderlyingDictionary<A>(_:)();

  (*(v4 + 8))(v6, v3);
  v9 = v11[1];

  return v9;
}

- (_TtC9appstored13ActivityClass)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivityClass();
  return [(ActivityClass *)&v3 init];
}

@end