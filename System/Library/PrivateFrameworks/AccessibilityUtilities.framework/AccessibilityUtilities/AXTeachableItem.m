@interface AXTeachableItem
- (AXTeachableItem)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXTeachableItem

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXTeachableItem *)self itemTitle];
  [v4 encodeObject:v5 forKey:@"itemTitle"];

  v6 = [(AXTeachableItem *)self itemDescription];
  [v4 encodeObject:v6 forKey:@"itemDescription"];

  v7 = [(AXTeachableItem *)self feature];
  [v4 encodeObject:v7 forKey:@"feature"];

  v8 = [(AXTeachableItem *)self version];
  [v4 encodeObject:v8 forKey:@"version"];
}

- (AXTeachableItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemTitle"];
  [(AXTeachableItem *)v5 setItemTitle:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemDescription"];
  [(AXTeachableItem *)v5 setItemDescription:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feature"];
  [(AXTeachableItem *)v5 setFeature:v8];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];

  [(AXTeachableItem *)v5 setVersion:v9];
  return v5;
}

@end