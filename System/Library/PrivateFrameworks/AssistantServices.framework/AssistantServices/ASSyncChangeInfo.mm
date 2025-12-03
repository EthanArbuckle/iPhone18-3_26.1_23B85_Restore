@interface ASSyncChangeInfo
- (id)description;
@end

@implementation ASSyncChangeInfo

- (id)description
{
  v9.receiver = self;
  v9.super_class = ASSyncChangeInfo;
  v3 = [(ASSyncChangeInfo *)&v9 description];
  if ([(ASSyncChangeInfo *)self isDelete])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  postAnchor = [(ASSyncChangeInfo *)self postAnchor];
  object = [(ASSyncChangeInfo *)self object];
  v7 = [v3 stringByAppendingFormat:@" isDelete: %@, postAnchor: %@, change: %@", v4, postAnchor, objc_opt_class()];

  return v7;
}

@end