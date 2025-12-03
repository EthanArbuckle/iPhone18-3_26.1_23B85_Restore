@interface ClockPosterExtensionController
- (void)dealloc;
@end

@implementation ClockPosterExtensionController

- (void)dealloc
{
  v3 = sub_100008A28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008A68();
  selfCopy = self;
  sub_1000089F8();
  v14 = &OBJC_PROTOCOL___PREditingDelegate;
  v9 = swift_dynamicCastObjCProtocolConditional();
  v10 = &enum case for ClockLogger.Role.render(_:);
  if (v9)
  {
    v10 = &enum case for ClockLogger.Role.edit(_:);
  }

  (*(v4 + 104))(v7, *v10, v3);
  sub_100008A48();

  (*(v4 + 8))(v7, v3);
  v11 = type metadata accessor for ClockPosterExtensionController();
  v13.receiver = selfCopy;
  v13.super_class = v11;
  [(ClockPosterExtensionController *)&v13 dealloc];
}

@end