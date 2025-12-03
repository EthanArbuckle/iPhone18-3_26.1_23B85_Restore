@interface AX_CVML_Error
+ (id)createNSErrorWithStatus:(int64_t)status andMessage:(id)message;
+ (id)createNSExceptionWithStatus:(int64_t)status andMessage:(id)message;
@end

@implementation AX_CVML_Error

+ (id)createNSErrorWithStatus:(int64_t)status andMessage:(id)message
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (status == 128)
  {
    v4 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    messageCopy = message;
    v8 = [v6 stringWithUTF8String:CVML_getModuleDescription(status)];
    v9 = [v6 stringWithFormat:@"com.apple.cvml.%@", v8];

    v17[0] = *MEMORY[0x1E696A578];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [mainBundle localizedStringForKey:messageCopy value:&stru_1F23EA908 table:0];

    v18[0] = v11;
    v17[1] = *MEMORY[0x1E696A588];
    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CVML_getStatusDescription(status)];
    v14 = [mainBundle2 localizedStringForKey:v13 value:&stru_1F23EA908 table:0];
    v18[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:v9 code:status userInfo:v15];
  }

  return v4;
}

+ (id)createNSExceptionWithStatus:(int64_t)status andMessage:(id)message
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (status == 128)
  {
    v4 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    messageCopy = message;
    v8 = [v6 stringWithUTF8String:CVML_getModuleDescription(status)];
    v9 = [v6 stringWithFormat:@"CVML module = %@", v8];

    v18 = *MEMORY[0x1E696A578];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [mainBundle localizedStringForKey:v9 value:&stru_1F23EA908 table:0];
    v19[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

    v13 = MEMORY[0x1E695DF30];
    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CVML_getStatusDescription(status)];
    v16 = [mainBundle2 localizedStringForKey:v15 value:&stru_1F23EA908 table:0];
    v4 = [v13 exceptionWithName:v16 reason:messageCopy userInfo:v12];
  }

  return v4;
}

@end