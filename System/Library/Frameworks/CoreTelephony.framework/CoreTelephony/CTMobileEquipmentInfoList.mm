@interface CTMobileEquipmentInfoList
- (BOOL)isEqual:(id)equal;
- (CTMobileEquipmentInfoList)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTMobileEquipmentInfoList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  meInfoList = [(CTMobileEquipmentInfoList *)self meInfoList];
  [v3 appendFormat:@" meInfoList=%@", meInfoList];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    meInfoList = self->_meInfoList;
    meInfoList = [equalCopy meInfoList];
    v7 = [(NSArray *)meInfoList isEqualToArray:meInfoList];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  meInfoList = [(CTMobileEquipmentInfoList *)self meInfoList];
  v6 = [meInfoList copy];
  [v4 setMeInfoList:v6];

  return v4;
}

- (CTMobileEquipmentInfoList)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTMobileEquipmentInfoList;
  v5 = [(CTMobileEquipmentInfoList *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"meInfoList"];
    meInfoList = v5->_meInfoList;
    v5->_meInfoList = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

@end