@interface MapsDebugPanelShortcut
+ (MapsDebugPanelShortcut)shortcutWithType:(int64_t)a3 name:(id)a4 indexPaths:(id)a5;
- (BOOL)isEqual:(id)a3;
- (MapsDebugPanelShortcut)initWithCoder:(id)a3;
- (MapsDebugPanelShortcut)initWithType:(int64_t)a3 name:(id)a4 indexPaths:(id)a5;
- (id)dataRepresentation;
- (id)description;
- (id)stringRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MapsDebugPanelShortcut

- (id)stringRepresentation
{
  v2 = [(MapsDebugPanelShortcut *)self dataRepresentation];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

- (id)dataRepresentation
{
  v6 = 0;
  v2 = [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v2;
  v4 = 0;
  if (!v6)
  {
    v4 = v2;
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  if (self->_type)
  {
    v4 = [NSString stringWithFormat:@"<unknown: %ld>", self->_type];
  }

  else
  {
    v4 = @"NavigationRow";
  }

  v5 = [NSString stringWithFormat:@"<%@: %p, %@, %@, %@>", v3, self, v4, self->_name, self->_indexPaths];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MapsDebugPanelShortcut *)self type];
      if (v6 == [(MapsDebugPanelShortcut *)v5 type])
      {
        v7 = [(MapsDebugPanelShortcut *)self name];
        v8 = [(MapsDebugPanelShortcut *)v5 name];
        if ([v7 isEqualToString:v8])
        {
          v9 = [(MapsDebugPanelShortcut *)self indexPaths];
          v10 = [(MapsDebugPanelShortcut *)v5 indexPaths];
          v11 = [v9 isEqualToArray:v10];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"_type"];
  [v5 encodeObject:self->_name forKey:@"_name"];
  [v5 encodeObject:self->_indexPaths forKey:@"_indexPaths"];
}

- (MapsDebugPanelShortcut)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MapsDebugPanelShortcut;
  v5 = [(MapsDebugPanelShortcut *)&v14 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_indexPaths"];
    indexPaths = v5->_indexPaths;
    v5->_indexPaths = v10;

    v12 = v5;
  }

  return v5;
}

- (MapsDebugPanelShortcut)initWithType:(int64_t)a3 name:(id)a4 indexPaths:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = MapsDebugPanelShortcut;
  v10 = [(MapsDebugPanelShortcut *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [v9 copy];
    indexPaths = v11->_indexPaths;
    v11->_indexPaths = v14;
  }

  return v11;
}

+ (MapsDebugPanelShortcut)shortcutWithType:(int64_t)a3 name:(id)a4 indexPaths:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithType:a3 name:v9 indexPaths:v8];

  return v10;
}

@end