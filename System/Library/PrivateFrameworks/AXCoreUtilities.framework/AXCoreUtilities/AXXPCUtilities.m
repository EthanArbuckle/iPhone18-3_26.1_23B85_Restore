@interface AXXPCUtilities
+ (id)copyXPCMessageFromDictionary:(id)a3 inReplyToXPCMessage:(id)a4 error:(id *)a5;
+ (id)dictionaryFromXPCMessage:(id)a3 error:(id *)a4;
@end

@implementation AXXPCUtilities

+ (id)dictionaryFromXPCMessage:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    *a4 = 0;
    if (!v5)
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

  else if (!v5)
  {
LABEL_18:
    a4 = 0;
    goto LABEL_19;
  }

  Class = object_getClass(v5);
  if (Class != MEMORY[0x1E69E9E80])
  {
    if (Class == MEMORY[0x1E69E9E98])
    {
      if (!a4)
      {
        goto LABEL_19;
      }

      v15 = MEMORY[0x1E696ABC0];
      v27 = *MEMORY[0x1E696A578];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected error: %s.", xpc_dictionary_get_string(v6, *MEMORY[0x1E69E9E28])];
      v28 = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      *a4 = [v15 errorWithDomain:@"AXCoreUtilitiesXPCError" code:0 userInfo:v17];

      goto LABEL_17;
    }

    if (!a4)
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
    *a4 = [v7 errorWithDomain:@"AXCoreUtilitiesXPCError" code:0 userInfo:v16];
LABEL_17:

    goto LABEL_18;
  }

  v12 = _CFXPCCreateCFObjectFromXPCMessage();
  if (!v12)
  {
    if (!a4)
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
    a4 = [v13 copy];
  }

  else if (a4)
  {
    v20 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Converted XPC object is not a dictionary instead it has the following type ID: %lu.", v14];;
    v32[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    *a4 = [v20 errorWithDomain:@"AXCoreUtilitiesXPCError" code:0 userInfo:v22];

    a4 = 0;
  }

  CFRelease(v13);
LABEL_19:

  v18 = *MEMORY[0x1E69E9840];

  return a4;
}

+ (id)copyXPCMessageFromDictionary:(id)a3 inReplyToXPCMessage:(id)a4 error:(id *)a5
{
  v34[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a5)
  {
    *a5 = 0;
    if (!v7)
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
      *a5 = v15 = 0;
LABEL_25:

      goto LABEL_26;
    }
  }

  else if (!v7)
  {
    v15 = 0;
    goto LABEL_26;
  }

  if (!v8)
  {
    v15 = 0;
    goto LABEL_12;
  }

  reply = xpc_dictionary_create_reply(v8);
  v15 = reply;
  if (a5 && !reply)
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

      if (!a5)
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
      if (!a5)
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
    *a5 = [v18 errorWithDomain:@"AXCoreUtilitiesXPCError" code:0 userInfo:v22];

    goto LABEL_20;
  }

LABEL_26:

  v23 = *MEMORY[0x1E69E9840];
  return v15;
}

@end