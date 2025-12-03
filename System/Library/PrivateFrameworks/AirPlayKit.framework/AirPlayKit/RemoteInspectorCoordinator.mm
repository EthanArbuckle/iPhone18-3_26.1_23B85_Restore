@interface RemoteInspectorCoordinator
- (void)CSSAgent:(APKRemoteInspectorCSSAgent *)agent onComputedStylesRequestWithIdentifier:(int)identifier completion:(id)completion;
- (void)CSSAgent:(APKRemoteInspectorCSSAgent *)agent onInlineStylesRequestWithIdentifier:(int)identifier completion:(id)completion;
- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onAttributesRequestWithIdentifier:(int)identifier completion:(id)completion;
- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onChildNodeRequestWithParentIdentifier:(int)identifier depth:(int)depth completion:(id)completion;
- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onDocumentWithCompletion:(id)completion;
- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onOuterHTMLRequestWithIdentifier:(int)identifier completion:(id)completion;
- (void)pageAgent:(APKRemoteInspectorPageAgent *)agent onResourceContentRequestWithIdentifier:(NSString *)identifier completion:(id)completion;
- (void)pageAgent:(APKRemoteInspectorPageAgent *)agent onResourcesRequestWithCompletion:(id)completion;
@end

@implementation RemoteInspectorCoordinator

- (void)CSSAgent:(APKRemoteInspectorCSSAgent *)agent onInlineStylesRequestWithIdentifier:(int)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = agent;
  *(v14 + 24) = identifier;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_23E900A74();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E904658;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23E904660;
  v17[5] = v16;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v12, &unk_23E904668, v17);
}

- (void)CSSAgent:(APKRemoteInspectorCSSAgent *)agent onComputedStylesRequestWithIdentifier:(int)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = agent;
  *(v14 + 24) = identifier;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_23E900A74();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E904618;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23E904620;
  v17[5] = v16;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v12, &unk_23E904628, v17);
}

- (void)pageAgent:(APKRemoteInspectorPageAgent *)agent onResourcesRequestWithCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = agent;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E900A74();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E906C58;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E906C60;
  v15[5] = v14;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v10, &unk_23E906C68, v15);
}

- (void)pageAgent:(APKRemoteInspectorPageAgent *)agent onResourceContentRequestWithIdentifier:(NSString *)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = agent;
  v14[3] = identifier;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_23E900A74();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E906C40;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23E904620;
  v17[5] = v16;
  agentCopy = agent;
  identifierCopy = identifier;

  sub_23E8DBC78(0, 0, v12, &unk_23E904628, v17);
}

- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onDocumentWithCompletion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = agent;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23E900A74();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23E906EB8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23E906EC0;
  v15[5] = v14;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v10, &unk_23E906EC8, v15);
}

- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onOuterHTMLRequestWithIdentifier:(int)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = agent;
  *(v14 + 24) = identifier;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_23E900A74();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E906E90;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23E906E98;
  v17[5] = v16;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v12, &unk_23E906EA0, v17);
}

- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onAttributesRequestWithIdentifier:(int)identifier completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = agent;
  *(v14 + 24) = identifier;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_23E900A74();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23E906E68;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23E906E70;
  v17[5] = v16;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v12, &unk_23E906E78, v17);
}

- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)agent onChildNodeRequestWithParentIdentifier:(int)identifier depth:(int)depth completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  *(v16 + 16) = agent;
  *(v16 + 24) = identifier;
  *(v16 + 28) = depth;
  *(v16 + 32) = v15;
  *(v16 + 40) = self;
  v17 = sub_23E900A74();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_23E906E28;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_23E904620;
  v19[5] = v18;
  agentCopy = agent;

  sub_23E8DBC78(0, 0, v14, &unk_23E904628, v19);
}

@end