@interface MFComposeRecipients
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (MFComposeRecipients)initWithRecipients:(id)a3;
@end

@implementation MFComposeRecipients

- (MFComposeRecipients)initWithRecipients:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFComposeRecipients;
  v6 = [(MFComposeRecipients *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recipients, a3);
  }

  return v7;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v2 = [MEMORY[0x1E696AEC0] readableTypeIdentifiersForItemProvider];
  v3 = [MEMORY[0x1E695DFF8] readableTypeIdentifiersForItemProvider];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v36 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFF8] readableTypeIdentifiersForItemProvider];
  LODWORD(a4) = [v8 containsObject:v7];

  if (a4)
  {
    v38 = 0;
    v9 = [MEMORY[0x1E695DFF8] objectWithItemProviderData:v36 typeIdentifier:v7 error:{&v38, a1}];
    v10 = v38;
    v11 = v9;
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] readableTypeIdentifiersForItemProvider];
    v13 = [v12 containsObject:v7];

    if (v13)
    {
      v37 = 0;
      v14 = [MEMORY[0x1E696AEC0] objectWithItemProviderData:v36 typeIdentifier:v7 error:&v37];
      v10 = v37;
      v15 = [MEMORY[0x1E695DFF8] URLWithString:v14];
      v11 = v15;
      if (v14)
      {
        v16 = [v15 scheme];

        if (v16)
        {
          v17 = v14;
        }

        else
        {
          v18 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];
          v19 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
          v20 = [v18 stringByAddingPercentEncodingWithAllowedCharacters:v19];

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

  v22 = [v11 scheme];
  v23 = [v22 caseInsensitiveCompare:*MEMORY[0x1E699A7C8]];

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v25 = [MEMORY[0x1E699AD10] componentsWithURL:v11];
    v26 = [v25 toRecipients];
    v27 = [v25 ccRecipients];
    v28 = [v26 arrayByAddingObjectsFromArray:v27];
    v29 = [v25 bccRecipients];
    v30 = [v28 arrayByAddingObjectsFromArray:v29];

    v31 = [v30 ef_map:&__block_literal_global_9];
    v24 = [[v35 alloc] initWithRecipients:v31];
  }

  if (!(v24 | v10))
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  }

  if (a5 && v10)
  {
    v32 = v10;
    *a5 = v10;
  }

  return v24;
}

id __71__MFComposeRecipients_objectWithItemProviderData_typeIdentifier_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MFComposeRecipient recipientWithProperty:*MEMORY[0x1E698A340] address:a2];

  return v2;
}

@end