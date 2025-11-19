@interface QLContactItemTransformer
+ (id)allowedOutputClasses;
- (id)transformedContentsFromData:(id)a3 context:(id)a4 error:(id *)a5;
@end

@implementation QLContactItemTransformer

+ (id)allowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)transformedContentsFromData:(id)a3 context:(id)a4 error:(id *)a5
{
  v12 = 0;
  v6 = [MEMORY[0x277CBDAC8] contactsWithData:a3 error:&v12];
  v7 = v12;
  v8 = v7;
  if (v7)
  {
    if (a5)
    {
      v9 = v7;
      v10 = 0;
      *a5 = v8;
      goto LABEL_9;
    }
  }

  else
  {
    if ([v6 count])
    {
      v10 = [v6 firstObject];
      goto LABEL_9;
    }

    if (a5)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.contactItemTransformer" code:1 userInfo:0];
      *a5 = v10 = 0;
      goto LABEL_9;
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

@end