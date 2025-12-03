@interface QLContactItemTransformer
+ (id)allowedOutputClasses;
- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error;
@end

@implementation QLContactItemTransformer

+ (id)allowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)transformedContentsFromData:(id)data context:(id)context error:(id *)error
{
  v12 = 0;
  v6 = [MEMORY[0x277CBDAC8] contactsWithData:data error:&v12];
  v7 = v12;
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      firstObject = 0;
      *error = v8;
      goto LABEL_9;
    }
  }

  else
  {
    if ([v6 count])
    {
      firstObject = [v6 firstObject];
      goto LABEL_9;
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.contactItemTransformer" code:1 userInfo:0];
      *error = firstObject = 0;
      goto LABEL_9;
    }
  }

  firstObject = 0;
LABEL_9:

  return firstObject;
}

@end