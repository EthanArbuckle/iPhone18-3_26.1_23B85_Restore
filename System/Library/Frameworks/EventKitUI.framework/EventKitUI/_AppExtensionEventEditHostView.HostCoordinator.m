@interface _AppExtensionEventEditHostView.HostCoordinator
- (_TtCV10EventKitUI30_AppExtensionEventEditHostView15HostCoordinator)init;
- (void)didCompleteWithAction:(int64_t)a3 oldToNewObjectIDMap:(id)a4 waitUntilTimestamp:(id)a5 serializedDictionary:(id)a6 objectIDToChangeSetDictionaryMap:(id)a7 objectIDToPersistentDictionaryMap:(id)a8 eventConstraints:(id)a9;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
- (void)requestPresentViewWithName:(id)a3 viewID:(id)a4 presentationStyle:(int64_t)a5;
@end

@implementation _AppExtensionEventEditHostView.HostCoordinator

- (void)hostViewControllerDidActivate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D35C7CC8(v4);
}

- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x90);
  v7 = self;
  v6 = v5();
  [v6 invalidate];

  (*((*v4 & v7->super.isa) + 0x98))(0);
}

- (void)requestPresentViewWithName:(id)a3 viewID:(id)a4 presentationStyle:(int64_t)a5
{
  v7 = sub_1D35DF384();
  v9 = v8;
  v10 = sub_1D35DF384();
  v12 = v11;
  v13 = self;
  sub_1D35C929C(v7, v9, v10, v12, a5);
}

- (void)didCompleteWithAction:(int64_t)a3 oldToNewObjectIDMap:(id)a4 waitUntilTimestamp:(id)a5 serializedDictionary:(id)a6 objectIDToChangeSetDictionaryMap:(id)a7 objectIDToPersistentDictionaryMap:(id)a8 eventConstraints:(id)a9
{
  v13 = a4;
  if (a4)
  {
    sub_1D35A52E0(0, &qword_1EC76AD00);
    sub_1D35BC1F4();
    v13 = sub_1D35DF344();
  }

  if (a6)
  {
    a6 = sub_1D35DF344();
  }

  if (a7)
  {
    sub_1D35A52E0(0, &qword_1EC76AD00);
    sub_1D35BC1F4();
    a7 = sub_1D35DF344();
  }

  v23 = a5;
  v16 = a8;
  v17 = a9;
  v18 = self;
  if (v16)
  {
    sub_1D35A52E0(0, &qword_1EC76AD00);
    sub_1D35BC1F4();
    v19 = sub_1D35DF344();

    if (v17)
    {
LABEL_9:
      v20 = sub_1D35DEF24();
      v22 = v21;

      goto LABEL_12;
    }
  }

  else
  {
    v19 = 0;
    if (v17)
    {
      goto LABEL_9;
    }
  }

  v20 = 0;
  v22 = 0xF000000000000000;
LABEL_12:
  sub_1D35C9698(a3, v13, v23, a6, a7, v19, v20, v22);
  sub_1D35C12AC(v20, v22);
}

- (_TtCV10EventKitUI30_AppExtensionEventEditHostView15HostCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end