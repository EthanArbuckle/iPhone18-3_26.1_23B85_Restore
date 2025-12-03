@interface ATXWidgetClientIdentity
- (ATXWidgetClientIdentity)initWithClientSessionIdentifier:(id)identifier widgetClient:(unint64_t)client;
- (ATXWidgetClientIdentity)initWithCoder:(id)coder;
- (id)description;
- (id)stringForWidgetClient;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXWidgetClientIdentity

- (ATXWidgetClientIdentity)initWithClientSessionIdentifier:(id)identifier widgetClient:(unint64_t)client
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = ATXWidgetClientIdentity;
  v7 = [(ATXWidgetClientIdentity *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    clientSessionIdentifier = v7->_clientSessionIdentifier;
    v7->_clientSessionIdentifier = v8;

    v7->_widgetClient = client;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientSessionIdentifier = [(ATXWidgetClientIdentity *)self clientSessionIdentifier];
  [coderCopy encodeObject:clientSessionIdentifier forKey:@"clientSessionIdentifier"];

  [coderCopy encodeInteger:-[ATXWidgetClientIdentity widgetClient](self forKey:{"widgetClient"), @"widgetClient"}];
}

- (ATXWidgetClientIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientSessionIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"widgetClient"];

  v7 = [(ATXWidgetClientIdentity *)self initWithClientSessionIdentifier:v5 widgetClient:v6];
  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  clientSessionIdentifier = [(ATXWidgetClientIdentity *)self clientSessionIdentifier];
  stringForWidgetClient = [(ATXWidgetClientIdentity *)self stringForWidgetClient];
  v8 = [v3 stringWithFormat:@"<%@: %p clientSessionIdentifier = %@; widgetClient = %@>", v5, self, clientSessionIdentifier, stringForWidgetClient];;

  return v8;
}

- (id)stringForWidgetClient
{
  widgetClient = [(ATXWidgetClientIdentity *)self widgetClient];
  if (widgetClient >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%lu)", -[ATXWidgetClientIdentity widgetClient](self, "widgetClient")];
  }

  else
  {
    v4 = off_1E80C58C8[widgetClient];
  }

  return v4;
}

@end