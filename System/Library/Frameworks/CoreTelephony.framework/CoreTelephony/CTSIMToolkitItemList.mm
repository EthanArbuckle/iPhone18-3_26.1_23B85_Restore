@interface CTSIMToolkitItemList
- (CTSIMToolkitItemList)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSIMToolkitItemList

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  itemList = [(CTSIMToolkitItemList *)self itemList];
  [v3 appendFormat:@", ItemCount=%lu", objc_msgSend(itemList, "count")];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  itemList = [(CTSIMToolkitItemList *)self itemList];
  v7 = [itemList copyWithZone:zone];
  [v5 setItemList:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  itemList = [(CTSIMToolkitItemList *)self itemList];
  [coderCopy encodeObject:itemList forKey:@"kItemListKey"];
}

- (CTSIMToolkitItemList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTSIMToolkitItemList;
  v5 = [(CTSIMToolkitItemList *)&v13 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"kItemListKey"];
    itemList = v5->_itemList;
    v5->_itemList = v10;
  }

  return v5;
}

@end