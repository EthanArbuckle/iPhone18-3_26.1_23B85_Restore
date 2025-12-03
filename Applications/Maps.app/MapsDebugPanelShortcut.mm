@interface MapsDebugPanelShortcut
+ (MapsDebugPanelShortcut)shortcutWithType:(int64_t)type name:(id)name indexPaths:(id)paths;
- (BOOL)isEqual:(id)equal;
- (MapsDebugPanelShortcut)initWithCoder:(id)coder;
- (MapsDebugPanelShortcut)initWithType:(int64_t)type name:(id)name indexPaths:(id)paths;
- (id)dataRepresentation;
- (id)description;
- (id)stringRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MapsDebugPanelShortcut

- (id)stringRepresentation
{
  dataRepresentation = [(MapsDebugPanelShortcut *)self dataRepresentation];
  v3 = [dataRepresentation base64EncodedStringWithOptions:0];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(MapsDebugPanelShortcut *)self type];
      if (type == [(MapsDebugPanelShortcut *)v5 type])
      {
        name = [(MapsDebugPanelShortcut *)self name];
        name2 = [(MapsDebugPanelShortcut *)v5 name];
        if ([name isEqualToString:name2])
        {
          indexPaths = [(MapsDebugPanelShortcut *)self indexPaths];
          indexPaths2 = [(MapsDebugPanelShortcut *)v5 indexPaths];
          v11 = [indexPaths isEqualToArray:indexPaths2];
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

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"_type"];
  [coderCopy encodeObject:self->_name forKey:@"_name"];
  [coderCopy encodeObject:self->_indexPaths forKey:@"_indexPaths"];
}

- (MapsDebugPanelShortcut)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MapsDebugPanelShortcut;
  v5 = [(MapsDebugPanelShortcut *)&v14 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_indexPaths"];
    indexPaths = v5->_indexPaths;
    v5->_indexPaths = v10;

    v12 = v5;
  }

  return v5;
}

- (MapsDebugPanelShortcut)initWithType:(int64_t)type name:(id)name indexPaths:(id)paths
{
  nameCopy = name;
  pathsCopy = paths;
  v17.receiver = self;
  v17.super_class = MapsDebugPanelShortcut;
  v10 = [(MapsDebugPanelShortcut *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [pathsCopy copy];
    indexPaths = v11->_indexPaths;
    v11->_indexPaths = v14;
  }

  return v11;
}

+ (MapsDebugPanelShortcut)shortcutWithType:(int64_t)type name:(id)name indexPaths:(id)paths
{
  pathsCopy = paths;
  nameCopy = name;
  v10 = [[self alloc] initWithType:type name:nameCopy indexPaths:pathsCopy];

  return v10;
}

@end