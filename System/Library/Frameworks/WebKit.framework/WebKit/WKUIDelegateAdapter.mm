@interface WKUIDelegateAdapter
- (_TtC6WebKit19WKUIDelegateAdapter)init;
- (void)_webView:(id)view geometryDidChange:(id)change;
- (void)webView:(WKWebView *)view requestMediaCapturePermissionForOrigin:(WKSecurityOrigin *)origin initiatedByFrame:(WKFrameInfo *)frame type:(int64_t)type decisionHandler:(id)handler;
- (void)webView:(WKWebView *)view runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(id)handler;
- (void)webView:(WKWebView *)view runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(id)handler;
- (void)webView:(WKWebView *)view runJavaScriptTextInputPanelWithPrompt:(NSString *)prompt defaultText:(NSString *)text initiatedByFrame:(WKFrameInfo *)frame completionHandler:(id)handler;
- (void)webView:(WKWebView *)view runOpenPanelWithParameters:(WKOpenPanelParameters *)parameters initiatedByFrame:(WKFrameInfo *)frame completionHandler:(id)handler;
@end

@implementation WKUIDelegateAdapter

- (void)webView:(WKWebView *)view runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = view;
  v15[3] = message;
  v15[4] = frame;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_19E6CD5D8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_19E7029D0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_19E7029D8;
  v18[5] = v17;
  viewCopy = view;
  messageCopy = message;
  frameCopy = frame;
  selfCopy = self;
  sub_19D63073C(0, 0, v13, &unk_19E7029E0, v18);
}

- (void)webView:(WKWebView *)view runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = view;
  v15[3] = message;
  v15[4] = frame;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_19E6CD5D8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_19E7029B0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_19E7029B8;
  v18[5] = v17;
  viewCopy = view;
  messageCopy = message;
  frameCopy = frame;
  selfCopy = self;
  sub_19D63073C(0, 0, v13, &unk_19E7029C0, v18);
}

- (void)webView:(WKWebView *)view runJavaScriptTextInputPanelWithPrompt:(NSString *)prompt defaultText:(NSString *)text initiatedByFrame:(WKFrameInfo *)frame completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = view;
  v17[3] = prompt;
  v17[4] = text;
  v17[5] = frame;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_19E6CD5D8();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_19E702990;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_19E702998;
  v20[5] = v19;
  viewCopy = view;
  promptCopy = prompt;
  textCopy = text;
  frameCopy = frame;
  selfCopy = self;
  sub_19D63073C(0, 0, v15, &unk_19E7029A0, v20);
}

- (void)webView:(WKWebView *)view runOpenPanelWithParameters:(WKOpenPanelParameters *)parameters initiatedByFrame:(WKFrameInfo *)frame completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = view;
  v15[3] = parameters;
  v15[4] = frame;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_19E6CD5D8();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_19E702970;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_19E702978;
  v18[5] = v17;
  viewCopy = view;
  parametersCopy = parameters;
  frameCopy = frame;
  selfCopy = self;
  sub_19D63073C(0, 0, v13, &unk_19E702980, v18);
}

- (void)webView:(WKWebView *)view requestMediaCapturePermissionForOrigin:(WKSecurityOrigin *)origin initiatedByFrame:(WKFrameInfo *)frame type:(int64_t)type decisionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB017A40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = view;
  v17[3] = origin;
  v17[4] = frame;
  v17[5] = type;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_19E6CD5D8();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_19E702938;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_19E702948;
  v20[5] = v19;
  viewCopy = view;
  originCopy = origin;
  frameCopy = frame;
  selfCopy = self;
  sub_19D63073C(0, 0, v15, &unk_19E702958, v20);
}

- (void)_webView:(id)view geometryDidChange:(id)change
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  changeCopy = change;
  selfCopy = self;
  sub_19D636230(changeCopy);
}

- (_TtC6WebKit19WKUIDelegateAdapter)init
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end