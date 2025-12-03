@interface ASSyncBeginInfo
- (id)description;
@end

@implementation ASSyncBeginInfo

- (id)description
{
  v7.receiver = self;
  v7.super_class = ASSyncBeginInfo;
  v3 = [(ASSyncBeginInfo *)&v7 description];
  resetValidity = [(ASSyncBeginInfo *)self resetValidity];
  v5 = [v3 stringByAppendingFormat:@" reset validity: %@", resetValidity];

  return v5;
}

@end