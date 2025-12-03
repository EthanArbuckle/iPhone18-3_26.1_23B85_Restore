@interface AXXPCUtilities
+ (id)copyXPCMessageFromDictionary:(id)dictionary inReplyToXPCMessage:(id)message error:(id *)error;
+ (id)dictionaryFromXPCMessage:(id)message error:(id *)error;
@end

@implementation AXXPCUtilities

+ (id)dictionaryFromXPCMessage:(id)message error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v6 = messageCopy;
  if (error)
  {
    *error = 0;
    if (!messageCopy)
    {
      v7 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24 = @"XPC object was NULL";
      v8 = MEMORY[0x1E695DF20];
      v9 = &v24;
      v10 = &v23;
      goto LABEL_16;
    }
  }

  else if (!messageCopy)
  {
LABEL_18:
    error = 0;
    goto LABEL_19;
  }

  Class = object_getClass(messageCopy);
  if (Class != MEMORY[0x1E69E9E80])
  {
    if (Class == MEMORY[0x1E69E9E98])
    {
      if (!error)
      {
        goto LABEL_19;
      }

      v15 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected error: %s.", xpc_dictionary_get_string(v6, *MEMORY[0x1E69E9E28])];
      v28 = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      *error = [v15 errorWithDomain:@"AXCoreUtilitiesXPCError" code:0 userInfo:v17];

      goto LABEL_17;
    }

    if (!error)
    {
      goto LABEL_19;
    }

    v7 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26 = @"Unexpected type for XPC object";
    v8 = MEMORY[0x1E695DF20];
    v9 = &v26;
    v10 = &v25;
LABEL_16:
    v16 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    *error = [v7 errorWithDomain:@"AXCoreUtilitiesXPCError" code:0 userInfo:v16];
LABEL_17:

    goto LABEL_18;
  }

  v12 = _CFXPCCreateCFObjectFromXPCMessage();
  if (!v12)
  {
    if (!error)
    {
      goto LABEL_19;
    }

    v7 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v30 = @"Failed converting XPC object to a Foundation level dictionary";
    v8 = MEMORY[0x1E695DF20];
    v9 = &v30;
    v10 = &v29;
    goto LABEL_16;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 == CFDictionaryGetTypeID())
  {
    error = [v13 copy];
  }

  else if (error)
  {
    v20 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Converted XPC object is not a dictionary instead it has the following type ID: %lu.", v14];;
    v32[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    *error = [v20 errorWithDomain:@"AXCoreUtilitiesXPCError" code:0 userInfo:v22];

    error = 0;
  }

  CFRelease(v13);
LABEL_19:

  v18 = *MEMORY[0x1E69E9840];

  return error;
}

+ (id)copyXPCMessageFromDictionary:(id)dictionary inReplyToXPCMessage:(id)message error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  messageCopy = message;
  v9 = messageCopy;
  if (error)
  {
    *error = 0;
    if (!dictionaryCopy)
    {
      v10 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A578];
      v34[0] = @"No XPC dictionary";
      v11 = MEMORY[0x1E695DF20];
      v12 = v34;
      v13 = &v33;
LABEL_9:
      v16 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
      [v10 errorWithDomain:@"AXCoreUtilitiesXPCError" code:0 userInfo:v16];
      *error = v15 = 0;
LABEL_25:

      goto LABEL_26;
    }
  }

  else if (!dictionaryCopy)
  {
    v15 = 0;
    goto LABEL_26;
  }

  if (!messageCopy)
  {
    v15 = 0;
    goto LABEL_12;
  }

  reply = xpc_dictionary_create_reply(messageCopy);
  v15 = reply;
  if (error && !reply)
  {
    v10 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32 = @"Failed to allocate new XPC dictionary";
    v11 = MEMORY[0x1E695DF20];
    v12 = &v32;
    v13 = &v31;
    goto LABEL_9;
  }

  if (reply)
  {
LABEL_12:
    v17 = _CFXPCCreateXPCMessageWithCFObject();
    v16 = v17;
    if (v17)
    {
      if (object_getClass(v17) == MEMORY[0x1E69E9E80])
      {
        if (v9)
        {
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __73__AXXPCUtilities_copyXPCMessageFromDictionary_inReplyToXPCMessage_error___block_invoke;
          v25[3] = &unk_1E735BEC8;
          v15 = v15;
          v26 = v15;
          xpc_dictionary_apply(v16, v25);
        }

        else
        {
          v16 = v16;
          v15 = v16;
        }

        goto LABEL_25;
      }

      if (!error)
      {
LABEL_20:
        if (v15)
        {

          v15 = 0;
        }

        goto LABEL_25;
      }

      v18 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      v30 = @"Unexpected type for XPC object after conversion from Foundation level dictionary";
      v19 = MEMORY[0x1E695DF20];
      v20 = &v30;
      v21 = &v29;
    }

    else
    {
      if (!error)
      {
        goto LABEL_20;
      }

      v18 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v28 = @"Failed converting Foundation level dictionary to an XPC object";
      v19 = MEMORY[0x1E695DF20];
      v20 = &v28;
      v21 = &v27;
    }

    v22 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
    *error = [v18 errorWithDomain:@"AXCoreUtilitiesXPCError" code:0 userInfo:v22];

    goto LABEL_20;
  }

LABEL_26:

  v23 = *MEMORY[0x1E69E9840];
  return v15;
}

@end