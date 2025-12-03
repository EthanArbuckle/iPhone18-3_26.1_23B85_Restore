@interface MTREndpointInfo
- (BOOL)isEqual:(id)equal;
- (MTREndpointInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTREndpointInfo

- (MTREndpointInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MTREndpointInfo;
  v5 = [(MTREndpointInfo *)&v14 init];
  v5->_endpointID = [coderCopy decodeIntegerForKey:@"id"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"dt"];
  deviceTypes = v5->_deviceTypes;
  v5->_deviceTypes = v6;

  if (!v5->_deviceTypes)
  {
    goto LABEL_5;
  }

  v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"pl"];
  partsList = v5->_partsList;
  v5->_partsList = v8;

  if (!v5->_partsList)
  {
    goto LABEL_5;
  }

  v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"ch"];
  children = v5->_children;
  v5->_children = v10;

  if (v5->_children)
  {
    v12 = v5;
  }

  else
  {
LABEL_5:
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_endpointID forKey:@"id"];
  [coderCopy encodeObject:self->_deviceTypes forKey:@"dt"];
  [coderCopy encodeObject:self->_partsList forKey:@"pl"];
  [coderCopy encodeObject:self->_children forKey:@"ch"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    if (self->_endpointID == *(v7 + 4) && ([(NSArray *)self->_deviceTypes isEqual:v7[2]]& 1) != 0)
    {
      v6 = [(NSArray *)self->_partsList isEqual:v7[3]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end