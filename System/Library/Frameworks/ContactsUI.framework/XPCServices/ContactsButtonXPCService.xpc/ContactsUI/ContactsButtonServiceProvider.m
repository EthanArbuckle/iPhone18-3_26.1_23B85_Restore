@interface ContactsButtonServiceProvider
- (CGImage)imageWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5;
- (_TtC24ContactsButtonXPCService29ContactsButtonServiceProvider)init;
- (void)getRemoteContentForStyle:(id)a3 layerContext:(unint64_t)a4 queryString:(id)a5 currentFrame:(CGRect)a6 ignoredEmails:(id)a7 ignoredPhones:(id)a8 traitData:(id)a9 sbExtension:(id)a10 with:(id)a11;
- (void)onPrimaryTouchUpEvent:(id)a3 with:(id)a4;
- (void)sizeThatFitsWithProposalWidth:(id)a3 proposalHeight:(id)a4 with:(id)a5;
@end

@implementation ContactsButtonServiceProvider

- (void)sizeThatFitsWithProposalWidth:(id)a3 proposalHeight:(id)a4 with:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100019154(a3, a4, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)getRemoteContentForStyle:(id)a3 layerContext:(unint64_t)a4 queryString:(id)a5 currentFrame:(CGRect)a6 ignoredEmails:(id)a7 ignoredPhones:(id)a8 traitData:(id)a9 sbExtension:(id)a10 with:(id)a11
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v18 = _Block_copy(a11);
  v19 = sub_10001D30C();
  v33 = v20;
  v34 = v19;
  v21 = sub_10001D48C();
  v22 = sub_10001D48C();
  v23 = a3;
  v24 = a9;
  v25 = a10;
  v26 = self;
  v27 = sub_10001CD5C();
  v29 = v28;

  v30 = sub_10001D30C();
  v32 = v31;

  _Block_copy(v18);
  sub_1000199B4(v23, a4, v34, v33, v21, v22, x, y, width, height, v27, v29, v30, v32, v26, v18);
  _Block_release(v18);
  _Block_release(v18);

  sub_100004798(v27, v29);
}

- (void)onPrimaryTouchUpEvent:(id)a3 with:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10001B078(a3, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (CGImage)imageWithStyle:(id)a3 tag:(id)a4 forRemote:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_10001C33C(v7, v8);

  return v10;
}

- (_TtC24ContactsButtonXPCService29ContactsButtonServiceProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end