@interface AFConversationError
+ (id)errorWithCode:(int64_t)a3 localizedFailureReason:(id)a4;
+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4;
- (AFConversationError)initWithCode:(int64_t)a3 localizedFailureReason:(id)a4;
@end

@implementation AFConversationError

+ (id)errorWithCode:(int64_t)a3 localizedFailureReason:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithCode:a3 localizedFailureReason:v6];

  return v7;
}

+ (id)errorWithCode:(int64_t)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithCode:a3 userInfo:v6];

  return v7;
}

- (AFConversationError)initWithCode:(int64_t)a3 localizedFailureReason:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E696A588];
  v13[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [(AFConversationError *)self initWithCode:a3 userInfo:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end