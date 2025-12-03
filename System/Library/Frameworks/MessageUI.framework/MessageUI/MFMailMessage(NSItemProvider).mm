@interface MFMailMessage(NSItemProvider)
+ (id)writableTypeIdentifiersForItemProvider;
+ (uint64_t)dragItemsAreAllMessages:()NSItemProvider;
- (id)_attributedSubject;
- (id)_loadFileRepresentationOfTypeIdentifier:()NSItemProvider forItemProviderCompletionHandler:;
- (id)loadDataWithTypeIdentifier:()NSItemProvider forItemProviderCompletionHandler:;
- (uint64_t)_preferredRepresentationForItemProviderWritableTypeIdentifier:()NSItemProvider;
- (void)_loadMessageDataWithCompletion:()NSItemProvider;
@end

@implementation MFMailMessage(NSItemProvider)

+ (id)writableTypeIdentifiersForItemProvider
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:@"com.apple.mobilemail.internalMessageTransfer"];
  externalDataTypeIdentifiers = [MEMORY[0x1E699AD30] externalDataTypeIdentifiers];
  [array addObjectsFromArray:externalDataTypeIdentifiers];

  return array;
}

- (id)loadDataWithTypeIdentifier:()NSItemProvider forItemProviderCompletionHandler:
{
  v33[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E6982C40] typeWithIdentifier:v6];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __93__MFMailMessage_NSItemProvider__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
  v30 = &unk_1E806FE40;
  v9 = v8;
  v31 = v9;
  v10 = _Block_copy(&v27);
  subject = [self subject];
  if ([subject length])
  {
    subject2 = [self subject];
    [subject2 subjectString];
  }

  else
  {
    subject2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.messageui"];
    [subject2 localizedStringForKey:@"NO_SUBJECT" value:&stru_1F3CF3758 table:@"Main"];
  }
  v13 = ;

  if ([v9 conformsToType:*MEMORY[0x1E6982DA8]])
  {
    [self _loadMessageDataWithCompletion:v7];
LABEL_6:
    v14 = 0;
    goto LABEL_12;
  }

  writableTypeIdentifiersForItemProvider = [MEMORY[0x1E69636A8] writableTypeIdentifiersForItemProvider];
  v16 = [writableTypeIdentifiersForItemProvider containsObject:v6];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x1E69636A8]);
    v18 = *MEMORY[0x1E69ADCA8];
    globalMessageURL2 = [v17 initWithActivityType:*MEMORY[0x1E69ADCA8]];
    [globalMessageURL2 setTitle:v13];
    v20 = *MEMORY[0x1E69ADCB0];
    v33[0] = v18;
    v21 = *MEMORY[0x1E69ADC58];
    v32[0] = v20;
    v32[1] = v21;
    globalMessageURL = [self globalMessageURL];
    absoluteString = [globalMessageURL absoluteString];
    v33[1] = absoluteString;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    [globalMessageURL2 setUserInfo:v24];

    v25 = [globalMessageURL2 loadDataWithTypeIdentifier:v6 forItemProviderCompletionHandler:v7];
LABEL_11:
    v14 = v25;

    goto LABEL_12;
  }

  if ([v9 conformsToType:*MEMORY[0x1E6983030]])
  {
    globalMessageURL2 = [self globalMessageURL];
    [globalMessageURL2 _setTitle:v13];
    v25 = [globalMessageURL2 loadDataWithTypeIdentifier:v6 forItemProviderCompletionHandler:v7];
    goto LABEL_11;
  }

  if (!v10[2](v10, v13))
  {
    goto LABEL_6;
  }

  v14 = [v13 loadDataWithTypeIdentifier:v6 forItemProviderCompletionHandler:v7];
LABEL_12:

  return v14;
}

- (uint64_t)_preferredRepresentationForItemProviderWritableTypeIdentifier:()NSItemProvider
{
  v3 = a3;
  v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:v3];
  writableTypeIdentifiersForItemProvider = [MEMORY[0x1E696AAB0] writableTypeIdentifiersForItemProvider];
  if (![writableTypeIdentifiersForItemProvider containsObject:v3] || (objc_msgSend(v4, "conformsToType:", *MEMORY[0x1E6982DA8]) & 1) != 0)
  {
    goto LABEL_5;
  }

  readableTypeIdentifiersForItemProvider = [MEMORY[0x1E69636A8] readableTypeIdentifiersForItemProvider];
  if ([readableTypeIdentifiersForItemProvider containsObject:v3])
  {

LABEL_5:
    goto LABEL_6;
  }

  v9 = [v4 conformsToType:*MEMORY[0x1E6983030]];

  if ((v9 & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAB0] _preferredRepresentationForItemProviderWritableTypeIdentifier:v3];
    goto LABEL_7;
  }

LABEL_6:
  v7 = 0;
LABEL_7:

  return v7;
}

- (id)_loadFileRepresentationOfTypeIdentifier:()NSItemProvider forItemProviderCompletionHandler:
{
  v7 = a3;
  v8 = a4;
  writableTypeIdentifiersForItemProvider = [MEMORY[0x1E696AAB0] writableTypeIdentifiersForItemProvider];
  v10 = [writableTypeIdentifiersForItemProvider containsObject:v7];

  if ((v10 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFMailMessage+NSItemProvider.m" lineNumber:102 description:@"Attempting to load file representation for an incompatible type."];
  }

  _attributedSubject = [self _attributedSubject];
  v12 = [_attributedSubject _loadFileRepresentationOfTypeIdentifier:v7 forItemProviderCompletionHandler:v8];

  return v12;
}

- (id)_attributedSubject
{
  v10[1] = *MEMORY[0x1E69E9840];
  subject = [self subject];
  if ([subject length])
  {
    subject2 = [self subject];
    [subject2 subjectString];
  }

  else
  {
    subject2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.messageui"];
    [subject2 localizedStringForKey:@"NO_SUBJECT" value:&stru_1F3CF3758 table:@"Main"];
  }
  v4 = ;

  globalMessageURL = [self globalMessageURL];
  v6 = 0;
  if ([v4 length] && globalMessageURL)
  {
    v9 = *MEMORY[0x1E69DB670];
    v10[0] = globalMessageURL;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v7];
  }

  return v6;
}

- (void)_loadMessageDataWithCompletion:()NSItemProvider
{
  v4 = a3;
  messageStore = [self messageStore];
  v11 = 0;
  v6 = objc_alloc_init(MEMORY[0x1E69AD698]);
  v7 = [messageStore headerDataForMessage:self downloadIfNecessary:1];
  [v6 appendData:v7];

  v8 = [messageStore fullBodyDataForMessage:self andHeaderDataIfReadilyAvailable:0 isComplete:&v11 downloadIfNecessary:1 didDownload:0];
  [v6 appendData:v8];

  [v6 done];
  if (v11 == 1)
  {
    data = [v6 data];
    v4[2](v4, data, 0);
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    data = [v10 initWithDomain:*MEMORY[0x1E69B1560] code:1030 userInfo:0];
    (v4)[2](v4, 0, data);
  }
}

+ (uint64_t)dragItemsAreAllMessages:()NSItemProvider
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        itemProvider = [*(*(&v13 + 1) + 8 * v6) itemProvider];
        registeredTypeIdentifiers = [itemProvider registeredTypeIdentifiers];
        firstObject = [registeredTypeIdentifiers firstObject];
        v10 = [firstObject isEqualToString:@"com.apple.mobilemail.internalMessageTransfer"];

        if ((v10 & 1) == 0)
        {
          v11 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

@end