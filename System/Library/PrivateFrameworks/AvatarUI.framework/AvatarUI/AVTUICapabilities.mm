@interface AVTUICapabilities
- (void)requestAccessForCameraWithCompletionHandler:(id)handler;
@end

@implementation AVTUICapabilities

- (void)requestAccessForCameraWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = *MEMORY[0x1E6987608];
  v5 = [MEMORY[0x1E69870A0] authorizationStatusForMediaType:*MEMORY[0x1E6987608]];
  if (v5)
  {
    handlerCopy[2](handlerCopy, v5 == 3);
  }

  else
  {
    v6 = MEMORY[0x1E69870A0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__AVTUICapabilities_requestAccessForCameraWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E7F3AC00;
    v8 = handlerCopy;
    [v6 requestAccessForMediaType:v4 completionHandler:v7];
  }
}

@end