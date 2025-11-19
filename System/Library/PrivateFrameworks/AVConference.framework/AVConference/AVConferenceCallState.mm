@interface AVConferenceCallState
- (void)dealloc;
@end

@implementation AVConferenceCallState

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVConferenceCallState;
  [(AVConferenceCallState *)&v3 dealloc];
}

@end