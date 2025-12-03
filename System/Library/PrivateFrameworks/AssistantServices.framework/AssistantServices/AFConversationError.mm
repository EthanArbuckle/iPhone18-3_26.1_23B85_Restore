@interface AFConversationError
+ (id)errorWithCode:(int64_t)code localizedFailureReason:(id)reason;
+ (id)errorWithCode:(int64_t)code userInfo:(id)info;
- (AFConversationError)initWithCode:(int64_t)code localizedFailureReason:(id)reason;
@end

@implementation AFConversationError

+ (id)errorWithCode:(int64_t)code localizedFailureReason:(id)reason
{
  reasonCopy = reason;
  v7 = [[self alloc] initWithCode:code localizedFailureReason:reasonCopy];

  return v7;
}

+ (id)errorWithCode:(int64_t)code userInfo:(id)info
{
  infoCopy = info;
  v7 = [[self alloc] initWithCode:code userInfo:infoCopy];

  return v7;
}

- (AFConversationError)initWithCode:(int64_t)code localizedFailureReason:(id)reason
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E696A588];
  v13[0] = reason;
  v6 = MEMORY[0x1E695DF20];
  reasonCopy = reason;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [(AFConversationError *)self initWithCode:code userInfo:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end