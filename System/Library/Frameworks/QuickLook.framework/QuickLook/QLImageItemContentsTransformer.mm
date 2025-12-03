@interface QLImageItemContentsTransformer
+ (id)allowedOutputClasses;
- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error;
- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error;
@end

@implementation QLImageItemContentsTransformer

+ (id)allowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (id)transformedContentsFromURL:(id)l context:(id)context error:(id *)error
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = QLImageItemContentsTransformer;
  v9 = [(QLImageItemTransformer *)&v13 transformedContentsFromURL:lCopy context:context error:error];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x277D43F50] imageItemContentsWithImage:v9 imageURL:lCopy];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v11;
}

- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = QLImageItemContentsTransformer;
  v9 = [(QLImageItemTransformer *)&v13 transformedContentsFromData:dataCopy context:context error:error];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x277D43F48] imageItemContentsWithImage:v9 imageData:dataCopy];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v11;
}

@end