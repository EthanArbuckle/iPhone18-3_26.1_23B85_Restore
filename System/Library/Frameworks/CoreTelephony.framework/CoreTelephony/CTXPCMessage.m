@interface CTXPCMessage
+ (NSSet)allowedClassesForArguments;
- (NSString)ct_shortDescription;
@end

@implementation CTXPCMessage

+ (NSSet)allowedClassesForArguments
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  return [v2 setWithObjects:{v3, objc_opt_class(), 0}];
}

void __35__CTXPCMessage_ct_shortDescription__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) namedArguments];
  v6 = [v5 objectForKey:v10];

  v7 = @"nil";
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 ct_shortDescription];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v8 = [v6 description];
  }

  v7 = v8;
LABEL_6:
  if (a3)
  {
    v9 = @", %@=%@";
  }

  else
  {
    v9 = @" %@=%@";
  }

  [*(a1 + 40) appendFormat:v9, v10, v7];
}

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(CTXPCMessage *)self ct_shortName];
  v5 = [v3 stringWithFormat:@"<%@", v4];

  v6 = [(CTXPCMessage *)self namedArguments];
  v7 = [v6 allKeys];
  v8 = [v7 sortedArrayUsingSelector:sel_compare_];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__CTXPCMessage_ct_shortDescription__block_invoke;
  v12[3] = &unk_1E6A4ACC8;
  v12[4] = self;
  v9 = v5;
  v13 = v9;
  [v8 enumerateObjectsUsingBlock:v12];
  [v9 appendString:@">"];
  v10 = [v9 copy];

  return v10;
}

@end