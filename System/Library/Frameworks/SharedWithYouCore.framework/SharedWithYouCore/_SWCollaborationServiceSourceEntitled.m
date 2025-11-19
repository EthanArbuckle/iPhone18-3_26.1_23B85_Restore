@interface _SWCollaborationServiceSourceEntitled
- (void)performAction:(id)a3 completionHandler:(id)a4;
@end

@implementation _SWCollaborationServiceSourceEntitled

- (void)performAction:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SWBaseCollaborationSource *)self extension];
  v9 = [v8 conformsToProtocol:&unk_1F4E1F618];

  if (!v9)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(_SWBaseCollaborationSource *)self extension];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __73___SWCollaborationServiceSourceEntitled_performAction_completionHandler___block_invoke_2;
      v17 = &unk_1E84124D8;
      v18 = v7;
      [v6 setResponseHandlerBlock:&v14];
      v13 = [SWCollaborationCoordinator sharedCoordinator:v14];
      [v10 collaborationCoordinator:v13 handleUpdateCollaborationParticipantsAction:v6];

      v12 = v18;
      goto LABEL_6;
    }

LABEL_7:
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
    (*(v7 + 2))(v7, 0, v10);
    goto LABEL_8;
  }

  v10 = [(_SWBaseCollaborationSource *)self extension];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73___SWCollaborationServiceSourceEntitled_performAction_completionHandler___block_invoke;
  v19[3] = &unk_1E84124D8;
  v20 = v7;
  [v6 setResponseHandlerBlock:v19];
  v11 = +[SWCollaborationCoordinator sharedCoordinator];
  [v10 collaborationCoordinator:v11 handleStartCollaborationAction:v6];

  v12 = v20;
LABEL_6:

LABEL_8:
}

@end