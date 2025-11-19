@interface ATXWidgetSmartStackRequest
- (ATXWidgetSmartStackRequest)initWithClientIdentity:(id)a3;
- (ATXWidgetSmartStackRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXWidgetSmartStackRequest

- (ATXWidgetSmartStackRequest)initWithClientIdentity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXWidgetSmartStackRequest;
  v6 = [(ATXWidgetSmartStackRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientIdentity, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXWidgetSmartStackRequest *)self clientIdentity];
  [v4 encodeObject:v5 forKey:@"clientIdentity"];

  [v4 encodeInteger:-[ATXWidgetSmartStackRequest smartStackVariant](self forKey:{"smartStackVariant"), @"smartStackVariant"}];
  [v4 encodeInteger:-[ATXWidgetSmartStackRequest stackLayoutSize](self forKey:{"stackLayoutSize"), @"stackLayoutSize"}];
  v6 = [(ATXWidgetSmartStackRequest *)self numberOfStacks];
  [v4 encodeObject:v6 forKey:@"numberOfStacks"];

  v7 = [(ATXWidgetSmartStackRequest *)self maximumWidgetsPerStack];
  [v4 encodeObject:v7 forKey:@"maximumWidgetsPerStack"];

  v8 = [(ATXWidgetSmartStackRequest *)self denyListOfExtensions];
  [v4 encodeObject:v8 forKey:@"denyListOfExtensions"];
}

- (ATXWidgetSmartStackRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentity"];
  if (v5)
  {
    v6 = [(ATXWidgetSmartStackRequest *)self initWithClientIdentity:v5];
    if (v6)
    {
      v6->_smartStackVariant = [v4 decodeIntegerForKey:@"smartStackVariant"];
      v6->_stackLayoutSize = [v4 decodeIntegerForKey:@"stackLayoutSize"];
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfStacks"];
      numberOfStacks = v6->_numberOfStacks;
      v6->_numberOfStacks = v7;

      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumWidgetsPerStack"];
      maximumWidgetsPerStack = v6->_maximumWidgetsPerStack;
      v6->_maximumWidgetsPerStack = v9;

      v11 = MEMORY[0x1E695DFD8];
      v12 = objc_opt_class();
      v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      v14 = [v4 decodeObjectOfClasses:v13 forKey:@"denyListOfExtensions"];
      denyListOfExtensions = v6->_denyListOfExtensions;
      v6->_denyListOfExtensions = v14;
    }

    self = v6;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end