@interface CTSIMToolkitItemList
- (CTSIMToolkitItemList)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSIMToolkitItemList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTSIMToolkitItemList *)self itemList];
  [v3 appendFormat:@", ItemCount=%lu", objc_msgSend(v4, "count")];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CTSIMToolkitItemList *)self itemList];
  v7 = [v6 copyWithZone:a3];
  [v5 setItemList:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTSIMToolkitItemList *)self itemList];
  [v4 encodeObject:v5 forKey:@"kItemListKey"];
}

- (CTSIMToolkitItemList)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTSIMToolkitItemList;
  v5 = [(CTSIMToolkitItemList *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"kItemListKey"];
    itemList = v5->_itemList;
    v5->_itemList = v10;
  }

  return v5;
}

@end