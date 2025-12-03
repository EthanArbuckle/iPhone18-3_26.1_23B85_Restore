@interface MPReorderQueueCommand
- (id)newCommandEventWithInsertingContentItemID:(id)d afterContentItemID:(id)iD;
@end

@implementation MPReorderQueueCommand

- (id)newCommandEventWithInsertingContentItemID:(id)d afterContentItemID:(id)iD
{
  v17[2] = *MEMORY[0x1E69E9840];
  iDCopy = iD;
  dCopy = d;
  v8 = [MPReorderQueueCommandEvent alloc];
  mediaRemoteCommandType = [(MPRemoteCommand *)self mediaRemoteCommandType];
  v10 = &stru_1F149ECA8;
  v11 = *MEMORY[0x1E69B1130];
  v16[0] = *MEMORY[0x1E69B10C8];
  v16[1] = v11;
  if (dCopy)
  {
    v12 = dCopy;
  }

  else
  {
    v12 = &stru_1F149ECA8;
  }

  if (iDCopy)
  {
    v10 = iDCopy;
  }

  v17[0] = v12;
  v17[1] = v10;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v14 = [(MPReorderQueueCommandEvent *)v8 initWithCommand:self mediaRemoteType:mediaRemoteCommandType options:v13];
  return v14;
}

@end