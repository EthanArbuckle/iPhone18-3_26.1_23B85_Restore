@interface RAPPlaceClosureIssue
- (id)_initWithKind:(int64_t)a3 localizedName:(id)a4;
@end

@implementation RAPPlaceClosureIssue

- (id)_initWithKind:(int64_t)a3 localizedName:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = RAPPlaceClosureIssue;
  v7 = [(RAPPlaceClosureIssue *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_kind = a3;
    v9 = [v6 copy];
    localizedName = v8->_localizedName;
    v8->_localizedName = v9;
  }

  return v8;
}

@end