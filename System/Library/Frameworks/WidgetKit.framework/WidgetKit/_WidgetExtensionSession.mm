@interface _WidgetExtensionSession
- (int)pid;
- (void)attachPreviewAgentWithFrameworkPath:(id)path endpoint:(id)endpoint handler:(id)handler;
- (void)controlPushTokensDidChange:(id)change completion:(id)completion;
- (void)getAppIntentsXPCListenerEndpointWithCompletion:(id)completion;
- (void)getDescriptorsWithCompletion:(id)completion;
- (void)getPlaceholdersForRequests:(id)requests inEnvironment:(id)environment completion:(id)completion;
- (void)getPlaceholdersWithEnvironment:(id)environment for:(id)for completion:(id)completion;
- (void)getTimelineFor:(id)for into:(id)into environment:(id)environment isPreview:(BOOL)preview completion:(id)completion;
- (void)getTimelinesWithRequests:(id)requests isPreview:(BOOL)preview completion:(id)completion;
- (void)getWidgetRelevancesWithRequest:(id)request completion:(id)completion;
- (void)handleURLSessionEventsFor:(id)for completion:(id)completion;
- (void)invalidate;
- (void)setBoostToForegroundPriority:(BOOL)priority;
- (void)setControlState:(id)state completion:(id)completion;
- (void)widgetPushTokensDidChange:(id)change completion:(id)completion;
@end

@implementation _WidgetExtensionSession

- (void)invalidate
{

  sub_19203977C();
}

- (void)getTimelinesWithRequests:(id)requests isPreview:(BOOL)preview completion:(id)completion
{
  v7 = _Block_copy(completion);
  type metadata accessor for TimelineRequest();
  v8 = sub_192227B70();
  _Block_copy(v7);

  sub_192078470(v8, preview, self, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)setBoostToForegroundPriority:(BOOL)priority
{

  sub_1921BC998(priority);
}

- (void)getDescriptorsWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_1921C67EC(v5, sub_1921C92AC, v4);
}

- (void)getPlaceholdersWithEnvironment:(id)environment for:(id)for completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_19202A7A8(0, qword_1ED74B2A8, 0x1E6994218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BC0, &qword_192240528);
  sub_1921C907C(&qword_1ED74A160, qword_1ED74B2A8, 0x1E6994218);
  v8 = sub_192227840();
  _Block_copy(v7);
  environmentCopy = environment;

  v9 = sub_1921BDAC8(v8);

  sub_1921C72D0(v9, environmentCopy, self, v7);
  _Block_release(v7);

  _Block_release(v7);
}

- (void)getPlaceholdersForRequests:(id)requests inEnvironment:(id)environment completion:(id)completion
{
  v7 = _Block_copy(completion);
  sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1BC0, &qword_192240528);
  sub_1921C907C(&qword_1ED749178, &qword_1ED74C500, 0x1E6994388);
  v8 = sub_192227840();
  _Block_copy(v7);
  environmentCopy = environment;

  sub_1921C72D0(v8, environmentCopy, self, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)handleURLSessionEventsFor:(id)for completion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = sub_192227960();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v11 = 6;
  v12 = 4;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = sub_1920B3B6C;
  v9[5] = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1920B3B6C;
  *(v10 + 24) = v8;
  swift_retain_n();

  sub_192031418(&v11, sub_1921C8FA8, v9, sub_1921C940C, v10);
}

- (void)attachPreviewAgentWithFrameworkPath:(id)path endpoint:(id)endpoint handler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_192227960();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  v13 = 7;
  v14 = 4;
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v9;
  v11[4] = endpoint;
  v11[5] = sub_1921C93A8;
  v11[6] = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1921C93A8;
  *(v12 + 24) = v10;
  swift_unknownObjectRetain_n();
  swift_retain_n();

  sub_192031418(&v13, sub_1921C8F2C, v11, sub_1921C8F3C, v12);

  swift_unknownObjectRelease();
}

- (void)controlPushTokensDidChange:(id)change completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v11 = 10;
  v12 = 4;
  v7 = swift_allocObject();
  v7[2] = change;
  v7[3] = sub_1920B3B6C;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1920B3B6C;
  *(v8 + 24) = v6;
  changeCopy = change;
  swift_retain_n();
  v10 = changeCopy;

  sub_192031418(&v11, sub_1921C8E98, v7, sub_1921C940C, v8);
}

- (void)widgetPushTokensDidChange:(id)change completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v11 = 10;
  v12 = 4;
  v7 = swift_allocObject();
  v7[2] = change;
  v7[3] = sub_1920B3B6C;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1920B3B6C;
  *(v8 + 24) = v6;
  changeCopy = change;
  swift_retain_n();
  v10 = changeCopy;

  sub_192031418(&v11, sub_1921C8E04, v7, sub_1921C940C, v8);
}

- (void)setControlState:(id)state completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v11 = 3;
  v12 = 4;
  v7 = swift_allocObject();
  v7[2] = state;
  v7[3] = sub_1920B3B6C;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1920B3B6C;
  *(v8 + 24) = v6;
  stateCopy = state;
  swift_retain_n();
  v10 = stateCopy;

  sub_192031418(&v11, sub_1921C8D70, v7, sub_1921C940C, v8);
}

- (void)getTimelineFor:(id)for into:(id)into environment:(id)environment isPreview:(BOOL)preview completion:(id)completion
{
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v21 = 8;
  v22 = 4;
  v13 = swift_allocObject();
  *(v13 + 16) = for;
  *(v13 + 24) = environment;
  *(v13 + 32) = into;
  *(v13 + 40) = preview;
  *(v13 + 48) = sub_1920B3B6C;
  *(v13 + 56) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1920B3B6C;
  *(v14 + 24) = v12;
  forCopy = for;
  intoCopy = into;
  environmentCopy = environment;
  swift_retain_n();
  v18 = forCopy;
  v19 = environmentCopy;
  v20 = intoCopy;

  sub_192031418(&v21, sub_1921C8C7C, v13, sub_1921C940C, v14);
}

- (void)getAppIntentsXPCListenerEndpointWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v7 = 9;
  v8 = 4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1921C8BF4;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1921C8BF4;
  *(v6 + 24) = v4;
  swift_retain_n();

  sub_192031418(&v7, sub_1921C8BFC, v5, sub_1921C8C04, v6);
}

- (void)getWidgetRelevancesWithRequest:(id)request completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v11 = 12;
  v12 = 4;
  v7 = swift_allocObject();
  v7[2] = request;
  v7[3] = sub_1920B2DA4;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1920B2DA4;
  *(v8 + 24) = v6;
  requestCopy = request;
  swift_retain_n();
  v10 = requestCopy;

  sub_192031418(&v11, sub_1921C8B3C, v7, sub_1921C8B48, v8);
}

- (int)pid
{

  v11 = sub_1922255D0();
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  initWithAuditToken_ = [objc_allocWithZone(MEMORY[0x1E698E620]) initWithAuditToken_];
  v9 = [initWithAuditToken_ pid];

  return v9;
}

@end