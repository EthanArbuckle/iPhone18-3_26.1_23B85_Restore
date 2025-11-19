@interface QLWebItemTransformer
+ (id)allowedOutputClasses;
- (id)transformedContentsFromData:(id)a3 context:(id)a4 error:(id *)a5;
@end

@implementation QLWebItemTransformer

+ (id)allowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

- (id)transformedContentsFromData:(id)a3 context:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 contentType];

  if (v8)
  {
    v9 = [QLGeneratedPreviewParts alloc];
    v10 = [v7 stringEncoding];
    v11 = MEMORY[0x277CE1CB8];
    v12 = [v7 contentType];
    v13 = [v11 typeWithIdentifier:v12];
    v14 = [v13 preferredMIMEType];
    v15 = [v7 attachments];
    v8 = [(QLGeneratedPreviewParts *)v9 initWithData:v6 encoding:v10 mimeType:v14 attachments:v15];
  }

  return v8;
}

@end