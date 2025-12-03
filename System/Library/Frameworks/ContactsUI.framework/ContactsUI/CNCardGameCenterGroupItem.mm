@interface CNCardGameCenterGroupItem
- (CNCardGameCenterGroupItem)initWithRelationshipResult:(id)result;
@end

@implementation CNCardGameCenterGroupItem

- (CNCardGameCenterGroupItem)initWithRelationshipResult:(id)result
{
  resultCopy = result;
  v10.receiver = self;
  v10.super_class = CNCardGameCenterGroupItem;
  v6 = [(CNCardGameCenterGroupItem *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_relationshipResult, result);
    v8 = v7;
  }

  return v7;
}

@end