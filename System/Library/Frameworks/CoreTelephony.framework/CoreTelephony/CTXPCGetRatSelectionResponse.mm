@interface CTXPCGetRatSelectionResponse
+ (id)allowedClassesForArguments;
- (CTRatSelection)selection;
- (CTXPCGetRatSelectionResponse)initWithRATSelection:(id)selection;
@end

@implementation CTXPCGetRatSelectionResponse

- (CTXPCGetRatSelectionResponse)initWithRATSelection:(id)selection
{
  v11[1] = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  v10 = @"selection";
  v11[0] = selectionCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetRatSelectionResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CTRatSelection)selection
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"selection"];
  v4 = CTThrowingCastIfClass<CTRatSelection>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetRatSelectionResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end