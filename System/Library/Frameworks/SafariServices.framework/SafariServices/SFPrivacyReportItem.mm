@interface SFPrivacyReportItem
- (BOOL)isEqual:(id)equal;
- (SFPrivacyReportItem)initWithType:(int64_t)type userInfo:(id)info;
@end

@implementation SFPrivacyReportItem

- (SFPrivacyReportItem)initWithType:(int64_t)type userInfo:(id)info
{
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = SFPrivacyReportItem;
  v8 = [(SFPrivacyReportItem *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_userInfo, info);
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = self->_type;
    if (type == [v5 type])
    {
      userInfo = self->_userInfo;
      userInfo = [v5 userInfo];
      if (userInfo == userInfo)
      {
        v11 = 1;
      }

      else
      {
        v9 = self->_userInfo;
        userInfo2 = [v5 userInfo];
        v11 = [v9 isEqual:userInfo2];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end