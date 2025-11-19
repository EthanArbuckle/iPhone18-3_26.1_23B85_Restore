@interface MPReorderQueueCommand
- (id)newCommandEventWithInsertingContentItemID:(id)a3 afterContentItemID:(id)a4;
@end

@implementation MPReorderQueueCommand

- (id)newCommandEventWithInsertingContentItemID:(id)a3 afterContentItemID:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [MPReorderQueueCommandEvent alloc];
  v9 = [(MPRemoteCommand *)self mediaRemoteCommandType];
  v10 = &stru_1F149ECA8;
  v11 = *MEMORY[0x1E69B1130];
  v16[0] = *MEMORY[0x1E69B10C8];
  v16[1] = v11;
  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = &stru_1F149ECA8;
  }

  if (v6)
  {
    v10 = v6;
  }

  v17[0] = v12;
  v17[1] = v10;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v14 = [(MPReorderQueueCommandEvent *)v8 initWithCommand:self mediaRemoteType:v9 options:v13];
  return v14;
}

@end