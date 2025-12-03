@interface QLWebItemTransformer
+ (id)allowedOutputClasses;
- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error;
@end

@implementation QLWebItemTransformer

+ (id)allowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error
{
  dataCopy = data;
  contextCopy = context;
  contentType = [contextCopy contentType];

  if (contentType)
  {
    v9 = [QLGeneratedPreviewParts alloc];
    stringEncoding = [contextCopy stringEncoding];
    v11 = MEMORY[0x277CE1CB8];
    contentType2 = [contextCopy contentType];
    v13 = [v11 typeWithIdentifier:contentType2];
    preferredMIMEType = [v13 preferredMIMEType];
    attachments = [contextCopy attachments];
    contentType = [(QLGeneratedPreviewParts *)v9 initWithData:dataCopy encoding:stringEncoding mimeType:preferredMIMEType attachments:attachments];
  }

  return contentType;
}

@end