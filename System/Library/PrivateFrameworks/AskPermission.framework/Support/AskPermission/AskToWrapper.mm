@interface AskToWrapper
+ (_TtC19AskPermissionDaemon12AskToWrapper)shared;
+ (void)canAskWithCompletionHandler:(id)handler;
- (_TtC19AskPermissionDaemon12AskToWrapper)init;
- (void)askWithUuid:(NSUUID *)uuid type:(int64_t)type title:(NSString *)title message:(NSString *)message bundleIdentifier:(NSString *)identifier preApprove:(NSString *)approve postApprove:(NSString *)postApprove preDecline:(NSString *)self0 postDecline:(NSString *)self1 responseBundleIdentifier:(NSString *)self2 metadata:(APAskToAgeRestrictionMetadata *)self3 fallbackURL:(NSURL *)self4 delegateCallback:(id)self5 completionHandler:;
@end

@implementation AskToWrapper

+ (_TtC19AskPermissionDaemon12AskToWrapper)shared
{
  if (qword_100063D70 != -1)
  {
    swift_once();
  }

  v3 = qword_100063E58;

  return v3;
}

+ (void)canAskWithCompletionHandler:(id)handler
{
  v5 = (*(*(sub_10002D464(&qword_100063AD8, &qword_100042A90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000429B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000429B8;
  v12[5] = v11;
  sub_10002C91C(0, 0, v7, &unk_1000429C0, v12);
}

- (void)askWithUuid:(NSUUID *)uuid type:(int64_t)type title:(NSString *)title message:(NSString *)message bundleIdentifier:(NSString *)identifier preApprove:(NSString *)approve postApprove:(NSString *)postApprove preDecline:(NSString *)self0 postDecline:(NSString *)self1 responseBundleIdentifier:(NSString *)self2 metadata:(APAskToAgeRestrictionMetadata *)self3 fallbackURL:(NSURL *)self4 delegateCallback:(id)self5 completionHandler:
{
  messageCopy = message;
  approveCopy = approve;
  typeCopy = type;
  selfCopy = self;
  identifierCopy = identifier;
  lCopy = l;
  declineCopy = decline;
  uuidCopy = uuid;
  postApproveCopy = postApprove;
  v17 = (*(*(sub_10002D464(&qword_100063AD8, &qword_100042A90) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v43 = &v43 - v18;
  v19 = _Block_copy(callback);
  v20 = _Block_copy(v53);
  v21 = swift_allocObject();
  v22 = typeCopy;
  v21[2] = uuid;
  v21[3] = v22;
  v23 = messageCopy;
  v21[4] = title;
  v21[5] = v23;
  v24 = approveCopy;
  v21[6] = identifierCopy;
  v21[7] = v24;
  v21[8] = postApprove;
  v21[9] = decline;
  v21[10] = postDecline;
  v21[11] = bundleIdentifier;
  v25 = lCopy;
  v21[12] = metadata;
  v21[13] = v25;
  v21[14] = v19;
  v21[15] = v20;
  v26 = selfCopy;
  v21[16] = selfCopy;
  v27 = type metadata accessor for TaskPriority();
  v28 = v43;
  (*(*(v27 - 8) + 56))(v43, 1, 1, v27);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = &unk_100042968;
  v29[5] = v21;
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = &unk_100042978;
  v30[5] = v29;
  v31 = uuidCopy;
  titleCopy = title;
  v33 = messageCopy;
  v34 = identifierCopy;
  v35 = approveCopy;
  v36 = postApproveCopy;
  v37 = declineCopy;
  postDeclineCopy = postDecline;
  bundleIdentifierCopy = bundleIdentifier;
  metadataCopy = metadata;
  v41 = lCopy;
  v42 = v26;
  sub_10002C91C(0, 0, v28, &unk_100042988, v30);
}

- (_TtC19AskPermissionDaemon12AskToWrapper)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC19AskPermissionDaemon12AskToWrapper_completionHandler);
  v4 = type metadata accessor for AskToWrapper();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(AskToWrapper *)&v6 init];
}

@end