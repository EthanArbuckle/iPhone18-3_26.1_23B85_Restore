@interface ISStreamsProvider
- (ISStreamsProvider)init;
- (id)connectedComponentGroupsWithWindowLength:(double)a3;
- (id)eventGraphs;
- (id)eventGraphsWithWindowLength:(double)a3;
- (id)events;
- (id)siriConversations;
- (id)siriTurns;
- (void)searchForEventGraphWithComponentIdentifier:(ISComponentIdentifier *)a3 completionHandler:(id)a4;
- (void)searchForEventGraphWithComponentIdentifier:(ISComponentIdentifier *)a3 windowLength:(double)a4 completionHandler:(id)a5;
@end

@implementation ISStreamsProvider

- (id)events
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF80, &unk_23C87D2F0);
  v4 = *(v3 - 8);
  v21 = v3;
  v22 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB668, &qword_23C87B0B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 16];
  v14 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR___ISStreamsProvider_provider), v13);
  v15 = *(v14 + 128);
  v20 = self;
  v15(v13, v14);
  type metadata accessor for TimestampedEventBridge();
  sub_23C66298C();
  sub_23C870BC4();
  v16 = v21;
  v17 = sub_23C870B84();

  (*(v22 + 8))(v7, v16);
  (*(v9 + 8))(v12, v8);

  return v17;
}

- (id)eventGraphsWithWindowLength:(double)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 16];
  v11 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR___ISStreamsProvider_provider), v10);
  v12 = *(v11 + 136);
  v13 = self;
  v12(v10, v11, a3);
  v14 = sub_23C870BE4();

  (*(v6 + 8))(v9, v5);

  return v14;
}

- (id)eventGraphs
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 16];
  v9 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR___ISStreamsProvider_provider), v8);
  v10 = self;
  InstrumentationStreamsProviderProtocol.eventGraphs()(v8, v9);
  v11 = sub_23C870BE4();

  (*(v4 + 8))(v7, v3);

  return v11;
}

- (id)connectedComponentGroupsWithWindowLength:(double)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB688, &qword_23C87B190);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 16];
  v10 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR___ISStreamsProvider_provider), v9);
  v11 = self;
  InstrumentationStreamsProviderProtocol.connectedComponentGroups(windowLength:)(v9, v10);
  v12 = sub_23C870BE4();

  (*(v5 + 8))(v8, v4);

  return v12;
}

- (id)siriTurns
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FB6C0, &qword_23C87B180);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 16];
  v9 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR___ISStreamsProvider_provider), v8);
  v10 = *(v9 + 144);
  v11 = self;
  v10(v8, v9);
  v12 = sub_23C870BE4();

  (*(v4 + 8))(v7, v3);

  return v12;
}

- (id)siriConversations
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF90, qword_23C87D300);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 16];
  v9 = *&self->provider[OBJC_IVAR___ISStreamsProvider_provider + 24];
  __swift_project_boxed_opaque_existential_0((&self->super.isa + OBJC_IVAR___ISStreamsProvider_provider), v8);
  v10 = *(v9 + 152);
  v11 = self;
  v10(v8, v9);
  v12 = sub_23C870BE4();

  (*(v4 + 8))(v7, v3);

  return v12;
}

- (void)searchForEventGraphWithComponentIdentifier:(ISComponentIdentifier *)a3 windowLength:(double)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_23C8719A4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23C87D3C0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23C87D3C8;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_23C664E14(0, 0, v12, &unk_23C87D3D0, v17);
}

- (void)searchForEventGraphWithComponentIdentifier:(ISComponentIdentifier *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23C8719A4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23C87D378;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23C87D280;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_23C664E14(0, 0, v10, &unk_23C87D288, v15);
}

- (ISStreamsProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end