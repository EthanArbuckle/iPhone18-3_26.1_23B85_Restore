@interface SHUpdatedGroupLocalGroupPair
- (SHUpdatedGroupLocalGroupPair)initWithUpdatedGroup:(id)a3 localGroup:(id)a4;
@end

@implementation SHUpdatedGroupLocalGroupPair

- (SHUpdatedGroupLocalGroupPair)initWithUpdatedGroup:(id)a3 localGroup:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SHUpdatedGroupLocalGroupPair;
  v9 = [(SHUpdatedGroupLocalGroupPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_updatedGroup, a3);
    objc_storeStrong(&v10->_localGroup, a4);
  }

  return v10;
}

@end