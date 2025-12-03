@interface _SWCollaborationServiceSourceEntitled
- (void)performAction:(id)action completionHandler:(id)handler;
@end

@implementation _SWCollaborationServiceSourceEntitled

- (void)performAction:(id)action completionHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  extension = [(_SWBaseCollaborationSource *)self extension];
  v9 = [extension conformsToProtocol:&unk_1F4E1F618];

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
      extension2 = [(_SWBaseCollaborationSource *)self extension];
      v14 = MEMORY[0x1E69E9820];
      v15 = 3221225472;
      v16 = __73___SWCollaborationServiceSourceEntitled_performAction_completionHandler___block_invoke_2;
      v17 = &unk_1E84124D8;
      v18 = handlerCopy;
      [actionCopy setResponseHandlerBlock:&v14];
      v13 = [SWCollaborationCoordinator sharedCoordinator:v14];
      [extension2 collaborationCoordinator:v13 handleUpdateCollaborationParticipantsAction:actionCopy];

      v12 = v18;
      goto LABEL_6;
    }

LABEL_7:
    extension2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, extension2);
    goto LABEL_8;
  }

  extension2 = [(_SWBaseCollaborationSource *)self extension];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73___SWCollaborationServiceSourceEntitled_performAction_completionHandler___block_invoke;
  v19[3] = &unk_1E84124D8;
  v20 = handlerCopy;
  [actionCopy setResponseHandlerBlock:v19];
  v11 = +[SWCollaborationCoordinator sharedCoordinator];
  [extension2 collaborationCoordinator:v11 handleStartCollaborationAction:actionCopy];

  v12 = v20;
LABEL_6:

LABEL_8:
}

@end