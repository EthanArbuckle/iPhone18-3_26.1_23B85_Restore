@interface RAPPlaceClosureIssue
- (id)_initWithKind:(int64_t)kind localizedName:(id)name;
@end

@implementation RAPPlaceClosureIssue

- (id)_initWithKind:(int64_t)kind localizedName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = RAPPlaceClosureIssue;
  v7 = [(RAPPlaceClosureIssue *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_kind = kind;
    v9 = [nameCopy copy];
    localizedName = v8->_localizedName;
    v8->_localizedName = v9;
  }

  return v8;
}

@end