@interface ATXWidgetClientIdentity
- (ATXWidgetClientIdentity)initWithClientSessionIdentifier:(id)a3 widgetClient:(unint64_t)a4;
- (ATXWidgetClientIdentity)initWithCoder:(id)a3;
- (id)description;
- (id)stringForWidgetClient;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXWidgetClientIdentity

- (ATXWidgetClientIdentity)initWithClientSessionIdentifier:(id)a3 widgetClient:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ATXWidgetClientIdentity;
  v7 = [(ATXWidgetClientIdentity *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    clientSessionIdentifier = v7->_clientSessionIdentifier;
    v7->_clientSessionIdentifier = v8;

    v7->_widgetClient = a4;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(ATXWidgetClientIdentity *)self clientSessionIdentifier];
  [v5 encodeObject:v4 forKey:@"clientSessionIdentifier"];

  [v5 encodeInteger:-[ATXWidgetClientIdentity widgetClient](self forKey:{"widgetClient"), @"widgetClient"}];
}

- (ATXWidgetClientIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientSessionIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"widgetClient"];

  v7 = [(ATXWidgetClientIdentity *)self initWithClientSessionIdentifier:v5 widgetClient:v6];
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ATXWidgetClientIdentity *)self clientSessionIdentifier];
  v7 = [(ATXWidgetClientIdentity *)self stringForWidgetClient];
  v8 = [v3 stringWithFormat:@"<%@: %p clientSessionIdentifier = %@; widgetClient = %@>", v5, self, v6, v7];;

  return v8;
}

- (id)stringForWidgetClient
{
  v3 = [(ATXWidgetClientIdentity *)self widgetClient];
  if (v3 >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%lu)", -[ATXWidgetClientIdentity widgetClient](self, "widgetClient")];
  }

  else
  {
    v4 = off_1E80C58C8[v3];
  }

  return v4;
}

@end