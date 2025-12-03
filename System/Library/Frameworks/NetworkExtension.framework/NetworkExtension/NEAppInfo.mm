@interface NEAppInfo
- (NEAppInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEAppInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v4;
  if (self)
  {
    pid = self->_pid;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  pid = 0;
  if (v4)
  {
LABEL_3:
    v4[2] = pid;
  }

LABEL_4:
  if (self)
  {
    uuid = self->_uuid;
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  uuid = 0;
  if (v4)
  {
LABEL_6:
    objc_setProperty_nonatomic_copy(v4, v5, uuid, 16);
  }

LABEL_7:
  if (self)
  {
    bundleID = self->_bundleID;
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  bundleID = 0;
  if (v6)
  {
LABEL_9:
    objc_setProperty_nonatomic_copy(v6, v5, bundleID, 24);
  }

LABEL_10:
  if (self)
  {
    appVersion = self->_appVersion;
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  appVersion = 0;
  if (v6)
  {
LABEL_12:
    objc_setProperty_nonatomic_copy(v6, v5, appVersion, 32);
  }

LABEL_13:
  if (!self)
  {
    cdHash = 0;
    if (!v6)
    {
      return v6;
    }

    goto LABEL_15;
  }

  cdHash = self->_cdHash;
  if (v6)
  {
LABEL_15:
    objc_setProperty_nonatomic_copy(v6, v5, cdHash, 40);
  }

  return v6;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    pid = self->_pid;
    v5 = self->_uuid;
    v6 = self->_bundleID;
    v7 = self->_appVersion;
    v8 = self->_cdHash;
    v9 = self->_cdHash != 0;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    pid = 0;
    v5 = 0;
    v7 = 0;
    v9 = 0;
  }

  v10 = [v3 initWithFormat:@"\nNEAppInfo:\n\tPid:\t\t%d\n\tUUID:\t\t%@\n\tBundle ID:\t%@\n\tApp Version:\t%@\n\tCDHash:\t\t%@\n\tComplete:\t%d\n", pid, v5, v6, v7, v8, v9];

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    pid = self->_pid;
    v5 = self->_uuid;
    v6 = self->_bundleID;
    v7 = self->_appVersion;
    v8 = self->_cdHash;
    v9 = self->_cdHash != 0;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    pid = 0;
    v5 = 0;
    v7 = 0;
    v9 = 0;
  }

  v10 = [v3 initWithFormat:@"\nNEAppInfo:\n\tPid:\t\t%d\n\tUUID:\t\t%@\n\tBundle ID:\t%@\n\tApp Version:\t%@\n\tCDHash:\t\t%@\n\tComplete:\t%d\n", pid, v5, v6, v7, v8, v9];

  return v10;
}

- (NEAppInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = NEAppInfo;
  v5 = [(NEAppInfo *)&v15 init];
  if (v5)
  {
    v5->_pid = [coderCopy decodeIntForKey:@"Pid"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    objc_setProperty_nonatomic_copy(v5, v7, v6, 16);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleID"];
    objc_setProperty_nonatomic_copy(v5, v9, v8, 24);

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppVersion"];
    objc_setProperty_nonatomic_copy(v5, v11, v10, 32);

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CDHash"];
    objc_setProperty_nonatomic_copy(v5, v13, v12, 40);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    [coderCopy encodeInt:self->_pid forKey:@"Pid"];
    [coderCopy encodeObject:self->_uuid forKey:@"UUID"];
    [coderCopy encodeObject:self->_bundleID forKey:@"BundleID"];
    [coderCopy encodeObject:self->_appVersion forKey:@"AppVersion"];
    cdHash = self->_cdHash;
  }

  else
  {
    [coderCopy encodeInt:0 forKey:@"Pid"];
    [coderCopy encodeObject:0 forKey:@"UUID"];
    [coderCopy encodeObject:0 forKey:@"BundleID"];
    [coderCopy encodeObject:0 forKey:@"AppVersion"];
    cdHash = 0;
  }

  [coderCopy encodeObject:cdHash forKey:@"CDHash"];
}

@end