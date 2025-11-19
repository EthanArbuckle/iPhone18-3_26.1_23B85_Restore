@interface NEFilterVerdict
- (NEFilterVerdict)initWithCoder:(id)a3;
- (NEFilterVerdict)initWithDrop:(BOOL)a3 remediate:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)filterAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEFilterVerdict

- (int64_t)filterAction
{
  if ([(NEFilterVerdict *)self drop]&& (!self || !self->_remediate))
  {
    return 2;
  }

  v3 = [(NEFilterVerdict *)self drop];
  result = 0;
  if (self && v3)
  {
    if (self->_remediate)
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (NEFilterVerdict)initWithDrop:(BOOL)a3 remediate:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = NEFilterVerdict;
  result = [(NEFilterVerdict *)&v7 init];
  if (result)
  {
    result->_drop = a3;
    result->_remediate = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setDrop:{-[NEFilterVerdict drop](self, "drop")}];
  if (self)
  {
    remediate = self->_remediate;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  remediate = 0;
  if (v4)
  {
LABEL_3:
    v4[11] = remediate;
  }

LABEL_4:
  if (self)
  {
    urlAppendString = self->_urlAppendString;
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  urlAppendString = 0;
  if (v4)
  {
LABEL_6:
    v4[12] = urlAppendString;
  }

LABEL_7:
  if (self)
  {
    Property = objc_getProperty(self, v5, 16, 1);
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  Property = 0;
  if (v4)
  {
LABEL_9:
    objc_setProperty_atomic(v4, v5, Property, 16);
  }

LABEL_10:
  if (self)
  {
    v9 = objc_getProperty(self, v5, 24, 1);
    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = 0;
  if (v4)
  {
LABEL_12:
    objc_setProperty_atomic(v4, v5, v9, 24);
  }

LABEL_13:
  if (!self)
  {
    v10 = 0;
    if (!v4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v10 = objc_getProperty(self, v5, 32, 1);
  if (v4)
  {
LABEL_15:
    objc_setProperty_atomic(v4, v5, v10, 32);
  }

LABEL_16:
  [v4 setNeedRules:{-[NEFilterVerdict needRules](self, "needRules", v10)}];
  [v4 setShouldReport:{-[NEFilterVerdict shouldReport](self, "shouldReport")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeBool:-[NEFilterVerdict drop](self forKey:{"drop"), @"Drop"}];
  if (self)
  {
    [v8 encodeBool:self->_remediate forKey:@"Remediate"];
    [v8 encodeBool:self->_urlAppendString forKey:@"URLAppendString"];
    [v8 encodeObject:objc_getProperty(self forKey:{v4, 16, 1), @"RemediationURLMapKey"}];
    [v8 encodeObject:objc_getProperty(self forKey:{v5, 24, 1), @"RemediationButtonTextMapKey"}];
    Property = objc_getProperty(self, v6, 32, 1);
  }

  else
  {
    [v8 encodeBool:0 forKey:@"Remediate"];
    [v8 encodeBool:0 forKey:@"URLAppendString"];
    [v8 encodeObject:0 forKey:@"RemediationURLMapKey"];
    [v8 encodeObject:0 forKey:@"RemediationButtonTextMapKey"];
    Property = 0;
  }

  [v8 encodeObject:Property forKey:@"URLAppendStringKey"];
  [v8 encodeBool:-[NEFilterVerdict needRules](self forKey:{"needRules"), @"NeedRules"}];
  [v8 encodeBool:-[NEFilterVerdict shouldReport](self forKey:{"shouldReport"), @"ShouldReport"}];
}

- (NEFilterVerdict)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NEFilterVerdict;
  v5 = [(NEFilterVerdict *)&v13 init];
  if (v5)
  {
    v5->_drop = [v4 decodeBoolForKey:@"Drop"];
    v5->_remediate = [v4 decodeBoolForKey:@"Remediate"];
    v5->_urlAppendString = [v4 decodeBoolForKey:@"URLAppendString"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RemediationURLMapKey"];
    remediationURLMapKey = v5->_remediationURLMapKey;
    v5->_remediationURLMapKey = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RemediationButtonTextMapKey"];
    remediationButtonTextMapKey = v5->_remediationButtonTextMapKey;
    v5->_remediationButtonTextMapKey = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URLAppendStringKey"];
    urlAppendStringMapKey = v5->_urlAppendStringMapKey;
    v5->_urlAppendStringMapKey = v10;

    v5->_needRules = [v4 decodeBoolForKey:@"NeedRules"];
    v5->_shouldReport = [v4 decodeBoolForKey:@"ShouldReport"];
  }

  return v5;
}

@end