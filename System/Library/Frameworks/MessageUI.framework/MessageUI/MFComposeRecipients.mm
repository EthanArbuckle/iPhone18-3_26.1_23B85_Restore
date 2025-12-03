@interface MFComposeRecipients
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
- (MFComposeRecipients)initWithRecipients:(id)recipients;
@end

@implementation MFComposeRecipients

- (MFComposeRecipients)initWithRecipients:(id)recipients
{
  recipientsCopy = recipients;
  v9.receiver = self;
  v9.super_class = MFComposeRecipients;
  v6 = [(MFComposeRecipients *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipients, recipients);
  }

  return v7;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  readableTypeIdentifiersForItemProvider = [MEMORY[0x1E696AEC0] readableTypeIdentifiersForItemProvider];
  readableTypeIdentifiersForItemProvider2 = [MEMORY[0x1E695DFF8] readableTypeIdentifiersForItemProvider];
  v4 = [readableTypeIdentifiersForItemProvider arrayByAddingObjectsFromArray:readableTypeIdentifiersForItemProvider2];

  return v4;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  readableTypeIdentifiersForItemProvider = [MEMORY[0x1E695DFF8] readableTypeIdentifiersForItemProvider];
  LODWORD(identifier) = [readableTypeIdentifiersForItemProvider containsObject:identifierCopy];

  if (identifier)
  {
    v38 = 0;
    v9 = [MEMORY[0x1E695DFF8] objectWithItemProviderData:dataCopy typeIdentifier:identifierCopy error:{&v38, self}];
    v10 = v38;
    v11 = v9;
  }

  else
  {
    readableTypeIdentifiersForItemProvider2 = [MEMORY[0x1E696AEC0] readableTypeIdentifiersForItemProvider];
    v13 = [readableTypeIdentifiersForItemProvider2 containsObject:identifierCopy];

    if (v13)
    {
      v37 = 0;
      v14 = [MEMORY[0x1E696AEC0] objectWithItemProviderData:dataCopy typeIdentifier:identifierCopy error:&v37];
      v10 = v37;
      v15 = [MEMORY[0x1E695DFF8] URLWithString:v14];
      v11 = v15;
      if (v14)
      {
        scheme = [v15 scheme];

        if (scheme)
        {
          v17 = v14;
        }

        else
        {
          v18 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];
          uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
          v20 = [v18 stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

          v17 = [@"mailto:" stringByAppendingString:v20];

          v21 = [MEMORY[0x1E695DFF8] URLWithString:v17];

          v11 = v21;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }
  }

  scheme2 = [v11 scheme];
  v23 = [scheme2 caseInsensitiveCompare:*MEMORY[0x1E699A7C8]];

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v25 = [MEMORY[0x1E699AD10] componentsWithURL:v11];
    toRecipients = [v25 toRecipients];
    ccRecipients = [v25 ccRecipients];
    v28 = [toRecipients arrayByAddingObjectsFromArray:ccRecipients];
    bccRecipients = [v25 bccRecipients];
    v30 = [v28 arrayByAddingObjectsFromArray:bccRecipients];

    v31 = [v30 ef_map:&__block_literal_global_9];
    v24 = [[v35 alloc] initWithRecipients:v31];
  }

  if (!(v24 | v10))
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

  if (error && v10)
  {
    v32 = v10;
    *error = v10;
  }

  return v24;
}

id __71__MFComposeRecipients_objectWithItemProviderData_typeIdentifier_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MFComposeRecipient recipientWithProperty:*MEMORY[0x1E698A340] address:a2];

  return v2;
}

@end