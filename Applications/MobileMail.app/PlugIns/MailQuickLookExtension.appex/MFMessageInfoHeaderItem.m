@interface MFMessageInfoHeaderItem
- (MFMessageInfoHeaderItem)initWithName:(id)a3 identifier:(id)a4;
@end

@implementation MFMessageInfoHeaderItem

- (MFMessageInfoHeaderItem)initWithName:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MFMessageInfoHeaderItem;
  v9 = [(MFMessageInfoHeaderItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sectionName, a3);
    objc_storeStrong(&v10->_identifier, a4);
  }

  return v10;
}

@end