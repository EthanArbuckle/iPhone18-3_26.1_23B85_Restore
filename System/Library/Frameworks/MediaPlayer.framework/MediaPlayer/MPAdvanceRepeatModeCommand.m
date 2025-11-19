@interface MPAdvanceRepeatModeCommand
- (id)newCommandEventWithPreservesRepeatMode:(BOOL)a3;
@end

@implementation MPAdvanceRepeatModeCommand

- (id)newCommandEventWithPreservesRepeatMode:(BOOL)a3
{
  v3 = a3;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [(MPRemoteCommand *)self mediaRemoteCommandType];
  v10 = *MEMORY[0x1E69B0CE0];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(MPRemoteCommand *)self newCommandEventWithCommandType:v5 options:v7];

  return v8;
}

@end