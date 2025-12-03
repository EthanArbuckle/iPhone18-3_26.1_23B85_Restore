@interface CTCellularConfigUpdateInfo
- (CTCellularConfigUpdateInfo)init;
- (CTCellularConfigUpdateInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCellularConfigUpdateInfo

- (CTCellularConfigUpdateInfo)init
{
  v8.receiver = self;
  v8.super_class = CTCellularConfigUpdateInfo;
  v2 = [(CTCellularConfigUpdateInfo *)&v8 init];
  v3 = v2;
  if (v2)
  {
    configType = v2->_configType;
    v2->_configType = &stru_1EF016BD0;

    updatedTime = v3->_updatedTime;
    v3->_updatedTime = &stru_1EF016BD0;

    updatedDetails = v3->_updatedDetails;
    v3->_updatedDetails = &stru_1EF016BD0;
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  configType = [(CTCellularConfigUpdateInfo *)self configType];
  [v3 appendFormat:@", config type=%@", configType];

  updatedTime = [(CTCellularConfigUpdateInfo *)self updatedTime];
  [v3 appendFormat:@", updated time=%@", updatedTime];

  updatedDetails = [(CTCellularConfigUpdateInfo *)self updatedDetails];
  [v3 appendFormat:@", updated details=%@", updatedDetails];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  configType = [(CTCellularConfigUpdateInfo *)self configType];
  v6 = [configType copy];
  [v4 setConfigType:v6];

  updatedTime = [(CTCellularConfigUpdateInfo *)self updatedTime];
  v8 = [updatedTime copy];
  [v4 setUpdatedTime:v8];

  updatedDetails = [(CTCellularConfigUpdateInfo *)self updatedDetails];
  v10 = [updatedDetails copy];
  [v4 setUpdatedDetails:v10];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  configType = [(CTCellularConfigUpdateInfo *)self configType];
  [coderCopy encodeObject:configType forKey:@"configTypeKey"];

  updatedTime = [(CTCellularConfigUpdateInfo *)self updatedTime];
  [coderCopy encodeObject:updatedTime forKey:@"updatedTimeKey"];

  updatedDetails = [(CTCellularConfigUpdateInfo *)self updatedDetails];
  [coderCopy encodeObject:updatedDetails forKey:@"updatedDetailsKey"];
}

- (CTCellularConfigUpdateInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTCellularConfigUpdateInfo;
  v5 = [(CTCellularConfigUpdateInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configTypeKey"];
    configType = v5->_configType;
    v5->_configType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updatedTimeKey"];
    updatedTime = v5->_updatedTime;
    v5->_updatedTime = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updatedDetailsKey"];
    updatedDetails = v5->_updatedDetails;
    v5->_updatedDetails = v10;
  }

  return v5;
}

@end