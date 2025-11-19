@interface WidgetExtensionXPCServer.ExportedObject
- (_TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject)init;
- (void)attachPreviewAgentWithFrameworkPath:(id)a3 endpoint:(id)a4 handler:(id)a5;
- (void)getAppIntentsXPCListenerEndpointWithCompletion:(id)a3;
- (void)getPlaceholdersWithRequests:(id)a3 completion:(id)a4;
- (void)getTimelinesWithRequests:(id)a3 isPreview:(BOOL)a4 completion:(id)a5;
- (void)getWidgetRelevancesWithRequest:(id)a3 completion:(id)a4;
- (void)handleURLSessionEventsFor:(id)a3 completion:(id)a4;
- (void)pushTokensDidChange:(id)a3 completion:(id)a4;
- (void)setControlState:(id)a3 completion:(id)a4;
- (void)widgetPushTokensDidChange:(id)a3 completion:(id)a4;
@end

@implementation WidgetExtensionXPCServer.ExportedObject

- (void)handleURLSessionEventsFor:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_192227960();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_19209DB40(v6, v8, sub_1920B3960, v9);
}

- (void)getPlaceholdersWithRequests:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for PlaceholderRequest();
  v6 = sub_192227B70();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_1920AC908(v6, sub_1920B3B48, v7);
}

- (void)getTimelinesWithRequests:(id)a3 isPreview:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = _Block_copy(a5);
  type metadata accessor for TimelineRequest();
  v8 = sub_192227B70();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  sub_1920A118C(v8, v5, 0, sub_1920B3B48, v9);
}

- (void)getAppIntentsXPCListenerEndpointWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1920B1490(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)getWidgetRelevancesWithRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1920B15E0(v8, sub_1920B3B6C, v7);
}

- (void)attachPreviewAgentWithFrameworkPath:(id)a3 endpoint:(id)a4 handler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_192227960();
  v10 = v9;
  _Block_copy(v7);
  swift_unknownObjectRetain();
  v11 = self;
  sub_1920B18D8(v8, v10, a4, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
  swift_unknownObjectRelease();
}

- (_TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)pushTokensDidChange:(id)a3 completion:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  sub_192227CD0();
  v13 = sub_192227CF0();
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  sub_192227CC0();
  v14 = v12;

  v15 = sub_192227CB0();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = v14;
  v16[5] = sub_1920B3B48;
  v16[6] = v11;
  sub_19211CA04(0, 0, v9, &unk_19222B5E8, v16);
}

- (void)setControlState:(id)a3 completion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = self;
  sub_192227CD0();
  v15 = sub_192227CF0();
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  sub_192227CC0();
  v16 = v13;
  v17 = v14;

  v18 = sub_192227CB0();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  v19[5] = v16;
  v19[6] = sub_1920B3B48;
  v19[7] = v12;
  sub_19211CA04(0, 0, v10, &unk_19222B5D0, v19);
}

- (void)widgetPushTokensDidChange:(id)a3 completion:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_192227CF0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_192227CC0();
  v13 = a3;

  v14 = sub_192227CB0();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  v15[5] = sub_1920B3B48;
  v15[6] = v11;
  sub_19211CA04(0, 0, v9, &unk_19222B5C0, v15);
}

@end