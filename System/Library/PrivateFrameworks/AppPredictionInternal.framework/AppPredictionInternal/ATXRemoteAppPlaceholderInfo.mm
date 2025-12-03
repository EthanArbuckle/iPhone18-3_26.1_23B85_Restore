@interface ATXRemoteAppPlaceholderInfo
- (ATXRemoteAppPlaceholderInfo)initWithUUID:(id)d bundleID:(id)iD registrationDate:(id)date genreID:(id)genreID;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXRemoteAppPlaceholderInfo:(id)info;
- (unint64_t)hash;
@end

@implementation ATXRemoteAppPlaceholderInfo

- (ATXRemoteAppPlaceholderInfo)initWithUUID:(id)d bundleID:(id)iD registrationDate:(id)date genreID:(id)genreID
{
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  genreIDCopy = genreID;
  v24.receiver = self;
  v24.super_class = ATXRemoteAppPlaceholderInfo;
  v14 = [(ATXRemoteAppPlaceholderInfo *)&v24 init];
  if (v14)
  {
    v15 = [dCopy copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v17 = [iDCopy copy];
    bundleID = v14->_bundleID;
    v14->_bundleID = v17;

    v19 = [dateCopy copy];
    registrationDate = v14->_registrationDate;
    v14->_registrationDate = v19;

    v21 = [genreIDCopy copy];
    genreID = v14->_genreID;
    v14->_genreID = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXRemoteAppPlaceholderInfo *)self isEqualToATXRemoteAppPlaceholderInfo:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXRemoteAppPlaceholderInfo:(id)info
{
  infoCopy = info;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == infoCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v8 = self->_bundleID;
  v9 = v8;
  if (v8 == infoCopy[2])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = self->_registrationDate;
  v12 = v11;
  if (v11 == infoCopy[3])
  {
  }

  else
  {
    v13 = [(NSDate *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_17;
    }
  }

  v15 = self->_genreID;
  v16 = v15;
  if (v15 == infoCopy[4])
  {
    v14 = 1;
  }

  else
  {
    v14 = [(NSNumber *)v15 isEqual:?];
  }

LABEL_17:
  return v14;
}

- (unint64_t)hash
{
  uuid = [(ATXRemoteAppPlaceholderInfo *)self uuid];
  v4 = [uuid hash];

  bundleID = [(ATXRemoteAppPlaceholderInfo *)self bundleID];
  v6 = [bundleID hash] - v4 + 32 * v4;

  registrationDate = [(ATXRemoteAppPlaceholderInfo *)self registrationDate];
  v8 = [registrationDate hash] - v6 + 32 * v6;

  genreID = [(ATXRemoteAppPlaceholderInfo *)self genreID];
  v10 = [genreID hash] - v8 + 32 * v8;

  return v10;
}

@end