@interface AVTUICapabilities
- (void)requestAccessForCameraWithCompletionHandler:(id)a3;
@end

@implementation AVTUICapabilities

- (void)requestAccessForCameraWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E6987608];
  v5 = [MEMORY[0x1E69870A0] authorizationStatusForMediaType:*MEMORY[0x1E6987608]];
  if (v5)
  {
    v3[2](v3, v5 == 3);
  }

  else
  {
    v6 = MEMORY[0x1E69870A0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__AVTUICapabilities_requestAccessForCameraWithCompletionHandler___block_invoke;
    v7[3] = &unk_1E7F3AC00;
    v8 = v3;
    [v6 requestAccessForMediaType:v4 completionHandler:v7];
  }
}

@end