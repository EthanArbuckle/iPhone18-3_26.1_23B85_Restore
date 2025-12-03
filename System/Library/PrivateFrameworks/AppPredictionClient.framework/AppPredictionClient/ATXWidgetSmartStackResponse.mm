@interface ATXWidgetSmartStackResponse
- (ATXWidgetSmartStackResponse)initWithCoder:(id)coder;
- (ATXWidgetSmartStackResponse)initWithStacks:(id)stacks;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXWidgetSmartStackResponse

- (ATXWidgetSmartStackResponse)initWithStacks:(id)stacks
{
  stacksCopy = stacks;
  v9.receiver = self;
  v9.super_class = ATXWidgetSmartStackResponse;
  v5 = [(ATXWidgetSmartStackResponse *)&v9 init];
  if (v5)
  {
    v6 = [stacksCopy copy];
    stacks = v5->_stacks;
    v5->_stacks = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stacks = [(ATXWidgetSmartStackResponse *)self stacks];
  [coderCopy encodeObject:stacks forKey:@"stacks"];
}

- (ATXWidgetSmartStackResponse)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"stacks"];

  v9 = [(ATXWidgetSmartStackResponse *)self initWithStacks:v8];
  return v9;
}

@end