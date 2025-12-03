@interface CTXPCGetHiddenTransferPlansResponse
+ (id)allowedClassesForArguments;
- (CTDisplayPlanList)planList;
- (CTXPCGetHiddenTransferPlansResponse)initWithList:(id)list;
@end

@implementation CTXPCGetHiddenTransferPlansResponse

- (CTXPCGetHiddenTransferPlansResponse)initWithList:(id)list
{
  v13[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  v5 = listCopy;
  if (listCopy)
  {
    v12 = @"plans";
    v13[0] = listCopy;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10.receiver = self;
    v10.super_class = CTXPCGetHiddenTransferPlansResponse;
    v7 = [(CTXPCMessage *)&v10 initWithNamedArguments:v6];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CTXPCGetHiddenTransferPlansResponse;
    v7 = [(CTXPCMessage *)&v11 init];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (CTDisplayPlanList)planList
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"plans"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetHiddenTransferPlansResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end