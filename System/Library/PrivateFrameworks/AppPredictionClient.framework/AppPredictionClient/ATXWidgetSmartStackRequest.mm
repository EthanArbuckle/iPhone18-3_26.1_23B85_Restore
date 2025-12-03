@interface ATXWidgetSmartStackRequest
- (ATXWidgetSmartStackRequest)initWithClientIdentity:(id)identity;
- (ATXWidgetSmartStackRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXWidgetSmartStackRequest

- (ATXWidgetSmartStackRequest)initWithClientIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = ATXWidgetSmartStackRequest;
  v6 = [(ATXWidgetSmartStackRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientIdentity, identity);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientIdentity = [(ATXWidgetSmartStackRequest *)self clientIdentity];
  [coderCopy encodeObject:clientIdentity forKey:@"clientIdentity"];

  [coderCopy encodeInteger:-[ATXWidgetSmartStackRequest smartStackVariant](self forKey:{"smartStackVariant"), @"smartStackVariant"}];
  [coderCopy encodeInteger:-[ATXWidgetSmartStackRequest stackLayoutSize](self forKey:{"stackLayoutSize"), @"stackLayoutSize"}];
  numberOfStacks = [(ATXWidgetSmartStackRequest *)self numberOfStacks];
  [coderCopy encodeObject:numberOfStacks forKey:@"numberOfStacks"];

  maximumWidgetsPerStack = [(ATXWidgetSmartStackRequest *)self maximumWidgetsPerStack];
  [coderCopy encodeObject:maximumWidgetsPerStack forKey:@"maximumWidgetsPerStack"];

  denyListOfExtensions = [(ATXWidgetSmartStackRequest *)self denyListOfExtensions];
  [coderCopy encodeObject:denyListOfExtensions forKey:@"denyListOfExtensions"];
}

- (ATXWidgetSmartStackRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentity"];
  if (v5)
  {
    v6 = [(ATXWidgetSmartStackRequest *)self initWithClientIdentity:v5];
    if (v6)
    {
      v6->_smartStackVariant = [coderCopy decodeIntegerForKey:@"smartStackVariant"];
      v6->_stackLayoutSize = [coderCopy decodeIntegerForKey:@"stackLayoutSize"];
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfStacks"];
      numberOfStacks = v6->_numberOfStacks;
      v6->_numberOfStacks = v7;

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumWidgetsPerStack"];
      maximumWidgetsPerStack = v6->_maximumWidgetsPerStack;
      v6->_maximumWidgetsPerStack = v9;

      v11 = MEMORY[0x1E695DFD8];
      v12 = objc_opt_class();
      v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"denyListOfExtensions"];
      denyListOfExtensions = v6->_denyListOfExtensions;
      v6->_denyListOfExtensions = v14;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end