@interface ATXWidgetSmartStackResponse
- (ATXWidgetSmartStackResponse)initWithCoder:(id)a3;
- (ATXWidgetSmartStackResponse)initWithStacks:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXWidgetSmartStackResponse

- (ATXWidgetSmartStackResponse)initWithStacks:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXWidgetSmartStackResponse;
  v5 = [(ATXWidgetSmartStackResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    stacks = v5->_stacks;
    v5->_stacks = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXWidgetSmartStackResponse *)self stacks];
  [v4 encodeObject:v5 forKey:@"stacks"];
}

- (ATXWidgetSmartStackResponse)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"stacks"];

  v9 = [(ATXWidgetSmartStackResponse *)self initWithStacks:v8];
  return v9;
}

@end