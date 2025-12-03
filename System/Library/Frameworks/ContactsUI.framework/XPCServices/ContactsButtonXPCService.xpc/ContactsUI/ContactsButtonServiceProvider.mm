@interface ContactsButtonServiceProvider
- (CGImage)imageWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote;
- (_TtC24ContactsButtonXPCService29ContactsButtonServiceProvider)init;
- (void)getRemoteContentForStyle:(id)style layerContext:(unint64_t)context queryString:(id)string currentFrame:(CGRect)frame ignoredEmails:(id)emails ignoredPhones:(id)phones traitData:(id)data sbExtension:(id)self0 with:(id)self1;
- (void)onPrimaryTouchUpEvent:(id)event with:(id)with;
- (void)sizeThatFitsWithProposalWidth:(id)width proposalHeight:(id)height with:(id)with;
@end

@implementation ContactsButtonServiceProvider

- (void)sizeThatFitsWithProposalWidth:(id)width proposalHeight:(id)height with:(id)with
{
  v8 = _Block_copy(with);
  _Block_copy(v8);
  widthCopy = width;
  heightCopy = height;
  selfCopy = self;
  sub_100019154(width, height, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)getRemoteContentForStyle:(id)style layerContext:(unint64_t)context queryString:(id)string currentFrame:(CGRect)frame ignoredEmails:(id)emails ignoredPhones:(id)phones traitData:(id)data sbExtension:(id)self0 with:(id)self1
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v18 = _Block_copy(with);
  v19 = sub_10001D30C();
  v33 = v20;
  v34 = v19;
  v21 = sub_10001D48C();
  v22 = sub_10001D48C();
  styleCopy = style;
  dataCopy = data;
  extensionCopy = extension;
  selfCopy = self;
  v27 = sub_10001CD5C();
  v29 = v28;

  v30 = sub_10001D30C();
  v32 = v31;

  _Block_copy(v18);
  sub_1000199B4(styleCopy, context, v34, v33, v21, v22, x, y, width, height, v27, v29, v30, v32, selfCopy, v18);
  _Block_release(v18);
  _Block_release(v18);

  sub_100004798(v27, v29);
}

- (void)onPrimaryTouchUpEvent:(id)event with:(id)with
{
  v6 = _Block_copy(with);
  _Block_copy(v6);
  eventCopy = event;
  selfCopy = self;
  sub_10001B078(event, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (CGImage)imageWithStyle:(id)style tag:(id)tag forRemote:(BOOL)remote
{
  styleCopy = style;
  tagCopy = tag;
  selfCopy = self;
  v10 = sub_10001C33C(styleCopy, tagCopy);

  return v10;
}

- (_TtC24ContactsButtonXPCService29ContactsButtonServiceProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end