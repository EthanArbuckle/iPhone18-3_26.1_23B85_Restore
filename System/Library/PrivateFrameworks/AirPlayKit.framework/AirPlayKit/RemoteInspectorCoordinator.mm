@interface RemoteInspectorCoordinator
- (void)CSSAgent:(APKRemoteInspectorCSSAgent *)a3 onComputedStylesRequestWithIdentifier:(int)a4 completion:(id)a5;
- (void)CSSAgent:(APKRemoteInspectorCSSAgent *)a3 onInlineStylesRequestWithIdentifier:(int)a4 completion:(id)a5;
- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)a3 onAttributesRequestWithIdentifier:(int)a4 completion:(id)a5;
- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)a3 onChildNodeRequestWithParentIdentifier:(int)a4 depth:(int)a5 completion:(id)a6;
- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)a3 onDocumentWithCompletion:(id)a4;
- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)a3 onOuterHTMLRequestWithIdentifier:(int)a4 completion:(id)a5;
- (void)pageAgent:(APKRemoteInspectorPageAgent *)a3 onResourceContentRequestWithIdentifier:(NSString *)a4 completion:(id)a5;
- (void)pageAgent:(APKRemoteInspectorPageAgent *)a3 onResourcesRequestWithCompletion:(id)a4;
@end

@implementation RemoteInspectorCoordinator

- (void)CSSAgent:(APKRemoteInspectorCSSAgent *)a3 onInlineStylesRequestWithIdentifier:(int)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
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
  v18 = a3;

  sub_23E8DBC78(0, 0, v12, &unk_23E904668, v17);
}

- (void)CSSAgent:(APKRemoteInspectorCSSAgent *)a3 onComputedStylesRequestWithIdentifier:(int)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
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
  v18 = a3;

  sub_23E8DBC78(0, 0, v12, &unk_23E904628, v17);
}

- (void)pageAgent:(APKRemoteInspectorPageAgent *)a3 onResourcesRequestWithCompletion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;

  sub_23E8DBC78(0, 0, v10, &unk_23E906C68, v15);
}

- (void)pageAgent:(APKRemoteInspectorPageAgent *)a3 onResourceContentRequestWithIdentifier:(NSString *)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;

  sub_23E8DBC78(0, 0, v12, &unk_23E904628, v17);
}

- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)a3 onDocumentWithCompletion:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;

  sub_23E8DBC78(0, 0, v10, &unk_23E906EC8, v15);
}

- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)a3 onOuterHTMLRequestWithIdentifier:(int)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
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
  v18 = a3;

  sub_23E8DBC78(0, 0, v12, &unk_23E906EA0, v17);
}

- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)a3 onAttributesRequestWithIdentifier:(int)a4 completion:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
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
  v18 = a3;

  sub_23E8DBC78(0, 0, v12, &unk_23E906E78, v17);
}

- (void)DOMAgent:(APKRemoteInspectorDOMAgent *)a3 onChildNodeRequestWithParentIdentifier:(int)a4 depth:(int)a5 completion:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 28) = a5;
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
  v20 = a3;

  sub_23E8DBC78(0, 0, v14, &unk_23E904628, v19);
}

@end