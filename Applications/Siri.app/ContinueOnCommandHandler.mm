@interface ContinueOnCommandHandler
- (_TtC4Siri24ContinueOnCommandHandler)init;
- (void)cancelActiveRequests;
- (void)handle:(SABaseClientBoundCommand *)handle completionHandler:(id)handler;
@end

@implementation ContinueOnCommandHandler

- (_TtC4Siri24ContinueOnCommandHandler)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC4Siri24ContinueOnCommandHandler_activeTask);
  v4 = type metadata accessor for ContinueOnCommandHandler();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(ContinueOnCommandHandler *)&v6 init];
}

- (void)handle:(SABaseClientBoundCommand *)handle completionHandler:(id)handler
{
  v7 = sub_100093B6C(&qword_10018DFE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = handle;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000F7158;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000F7160;
  v14[5] = v13;
  handleCopy = handle;
  selfCopy = self;
  sub_1000A80AC(0, 0, v9, &unk_1000F7550, v14);
}

- (void)cancelActiveRequests
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC4Siri24ContinueOnCommandHandler_activeTask);
  if (v2)
  {
    selfCopy = self;
    sub_10009682C(v2);
    v4 = v2;
    sub_10009686C(v2);
    [v4 cancel];
  }
}

@end