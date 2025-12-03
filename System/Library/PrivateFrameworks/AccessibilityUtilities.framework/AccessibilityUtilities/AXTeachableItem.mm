@interface AXTeachableItem
- (AXTeachableItem)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AXTeachableItem

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  itemTitle = [(AXTeachableItem *)self itemTitle];
  [coderCopy encodeObject:itemTitle forKey:@"itemTitle"];

  itemDescription = [(AXTeachableItem *)self itemDescription];
  [coderCopy encodeObject:itemDescription forKey:@"itemDescription"];

  feature = [(AXTeachableItem *)self feature];
  [coderCopy encodeObject:feature forKey:@"feature"];

  version = [(AXTeachableItem *)self version];
  [coderCopy encodeObject:version forKey:@"version"];
}

- (AXTeachableItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_new();
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemTitle"];
  [(AXTeachableItem *)v5 setItemTitle:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemDescription"];
  [(AXTeachableItem *)v5 setItemDescription:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feature"];
  [(AXTeachableItem *)v5 setFeature:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];

  [(AXTeachableItem *)v5 setVersion:v9];
  return v5;
}

@end