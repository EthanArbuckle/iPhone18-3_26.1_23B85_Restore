@interface QLImageItemContentsTransformer
+ (id)allowedOutputClasses;
- (id)transformedContentsFromData:(id)a3 context:(id)a4 error:(id *)a5;
- (id)transformedContentsFromURL:(id)a3 context:(id)a4 error:(id *)a5;
@end

@implementation QLImageItemContentsTransformer

+ (id)allowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (id)transformedContentsFromURL:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = QLImageItemContentsTransformer;
  v9 = [(QLImageItemTransformer *)&v13 transformedContentsFromURL:v8 context:a4 error:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x277D43F50] imageItemContentsWithImage:v9 imageURL:v8];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v11;
}

- (id)transformedContentsFromData:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = QLImageItemContentsTransformer;
  v9 = [(QLImageItemTransformer *)&v13 transformedContentsFromData:v8 context:a4 error:a5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x277D43F48] imageItemContentsWithImage:v9 imageData:v8];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  return v11;
}

@end