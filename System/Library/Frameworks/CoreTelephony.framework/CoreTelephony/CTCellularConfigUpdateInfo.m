@interface CTCellularConfigUpdateInfo
- (CTCellularConfigUpdateInfo)init;
- (CTCellularConfigUpdateInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(CTCellularConfigUpdateInfo *)self configType];
  [v3 appendFormat:@", config type=%@", v4];

  v5 = [(CTCellularConfigUpdateInfo *)self updatedTime];
  [v3 appendFormat:@", updated time=%@", v5];

  v6 = [(CTCellularConfigUpdateInfo *)self updatedDetails];
  [v3 appendFormat:@", updated details=%@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTCellularConfigUpdateInfo *)self configType];
  v6 = [v5 copy];
  [v4 setConfigType:v6];

  v7 = [(CTCellularConfigUpdateInfo *)self updatedTime];
  v8 = [v7 copy];
  [v4 setUpdatedTime:v8];

  v9 = [(CTCellularConfigUpdateInfo *)self updatedDetails];
  v10 = [v9 copy];
  [v4 setUpdatedDetails:v10];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTCellularConfigUpdateInfo *)self configType];
  [v4 encodeObject:v5 forKey:@"configTypeKey"];

  v6 = [(CTCellularConfigUpdateInfo *)self updatedTime];
  [v4 encodeObject:v6 forKey:@"updatedTimeKey"];

  v7 = [(CTCellularConfigUpdateInfo *)self updatedDetails];
  [v4 encodeObject:v7 forKey:@"updatedDetailsKey"];
}

- (CTCellularConfigUpdateInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTCellularConfigUpdateInfo;
  v5 = [(CTCellularConfigUpdateInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configTypeKey"];
    configType = v5->_configType;
    v5->_configType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updatedTimeKey"];
    updatedTime = v5->_updatedTime;
    v5->_updatedTime = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updatedDetailsKey"];
    updatedDetails = v5->_updatedDetails;
    v5->_updatedDetails = v10;
  }

  return v5;
}

@end