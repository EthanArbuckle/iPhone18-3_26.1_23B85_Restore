@interface NEFilterVerdict
- (NEFilterVerdict)initWithCoder:(id)coder;
- (NEFilterVerdict)initWithDrop:(BOOL)drop remediate:(BOOL)remediate;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)filterAction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEFilterVerdict

- (int64_t)filterAction
{
  if ([(NEFilterVerdict *)self drop]&& (!self || !self->_remediate))
  {
    return 2;
  }

  drop = [(NEFilterVerdict *)self drop];
  result = 0;
  if (self && drop)
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

- (NEFilterVerdict)initWithDrop:(BOOL)drop remediate:(BOOL)remediate
{
  v7.receiver = self;
  v7.super_class = NEFilterVerdict;
  result = [(NEFilterVerdict *)&v7 init];
  if (result)
  {
    result->_drop = drop;
    result->_remediate = remediate;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NEFilterVerdict drop](self forKey:{"drop"), @"Drop"}];
  if (self)
  {
    [coderCopy encodeBool:self->_remediate forKey:@"Remediate"];
    [coderCopy encodeBool:self->_urlAppendString forKey:@"URLAppendString"];
    [coderCopy encodeObject:objc_getProperty(self forKey:{v4, 16, 1), @"RemediationURLMapKey"}];
    [coderCopy encodeObject:objc_getProperty(self forKey:{v5, 24, 1), @"RemediationButtonTextMapKey"}];
    Property = objc_getProperty(self, v6, 32, 1);
  }

  else
  {
    [coderCopy encodeBool:0 forKey:@"Remediate"];
    [coderCopy encodeBool:0 forKey:@"URLAppendString"];
    [coderCopy encodeObject:0 forKey:@"RemediationURLMapKey"];
    [coderCopy encodeObject:0 forKey:@"RemediationButtonTextMapKey"];
    Property = 0;
  }

  [coderCopy encodeObject:Property forKey:@"URLAppendStringKey"];
  [coderCopy encodeBool:-[NEFilterVerdict needRules](self forKey:{"needRules"), @"NeedRules"}];
  [coderCopy encodeBool:-[NEFilterVerdict shouldReport](self forKey:{"shouldReport"), @"ShouldReport"}];
}

- (NEFilterVerdict)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NEFilterVerdict;
  v5 = [(NEFilterVerdict *)&v13 init];
  if (v5)
  {
    v5->_drop = [coderCopy decodeBoolForKey:@"Drop"];
    v5->_remediate = [coderCopy decodeBoolForKey:@"Remediate"];
    v5->_urlAppendString = [coderCopy decodeBoolForKey:@"URLAppendString"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RemediationURLMapKey"];
    remediationURLMapKey = v5->_remediationURLMapKey;
    v5->_remediationURLMapKey = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RemediationButtonTextMapKey"];
    remediationButtonTextMapKey = v5->_remediationButtonTextMapKey;
    v5->_remediationButtonTextMapKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URLAppendStringKey"];
    urlAppendStringMapKey = v5->_urlAppendStringMapKey;
    v5->_urlAppendStringMapKey = v10;

    v5->_needRules = [coderCopy decodeBoolForKey:@"NeedRules"];
    v5->_shouldReport = [coderCopy decodeBoolForKey:@"ShouldReport"];
  }

  return v5;
}

@end