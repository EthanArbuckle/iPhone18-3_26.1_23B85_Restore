@interface SFPrivacyReportItem
- (BOOL)isEqual:(id)a3;
- (SFPrivacyReportItem)initWithType:(int64_t)a3 userInfo:(id)a4;
@end

@implementation SFPrivacyReportItem

- (SFPrivacyReportItem)initWithType:(int64_t)a3 userInfo:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SFPrivacyReportItem;
  v8 = [(SFPrivacyReportItem *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_userInfo, a4);
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    type = self->_type;
    if (type == [v5 type])
    {
      userInfo = self->_userInfo;
      v8 = [v5 userInfo];
      if (userInfo == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = self->_userInfo;
        v10 = [v5 userInfo];
        v11 = [v9 isEqual:v10];
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