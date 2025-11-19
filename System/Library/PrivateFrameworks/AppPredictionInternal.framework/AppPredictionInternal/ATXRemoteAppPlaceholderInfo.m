@interface ATXRemoteAppPlaceholderInfo
- (ATXRemoteAppPlaceholderInfo)initWithUUID:(id)a3 bundleID:(id)a4 registrationDate:(id)a5 genreID:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXRemoteAppPlaceholderInfo:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXRemoteAppPlaceholderInfo

- (ATXRemoteAppPlaceholderInfo)initWithUUID:(id)a3 bundleID:(id)a4 registrationDate:(id)a5 genreID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = ATXRemoteAppPlaceholderInfo;
  v14 = [(ATXRemoteAppPlaceholderInfo *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v17 = [v11 copy];
    bundleID = v14->_bundleID;
    v14->_bundleID = v17;

    v19 = [v12 copy];
    registrationDate = v14->_registrationDate;
    v14->_registrationDate = v19;

    v21 = [v13 copy];
    genreID = v14->_genreID;
    v14->_genreID = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXRemoteAppPlaceholderInfo *)self isEqualToATXRemoteAppPlaceholderInfo:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXRemoteAppPlaceholderInfo:(id)a3
{
  v4 = a3;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v8 == v4[2])
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
  if (v11 == v4[3])
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
  if (v15 == v4[4])
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
  v3 = [(ATXRemoteAppPlaceholderInfo *)self uuid];
  v4 = [v3 hash];

  v5 = [(ATXRemoteAppPlaceholderInfo *)self bundleID];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(ATXRemoteAppPlaceholderInfo *)self registrationDate];
  v8 = [v7 hash] - v6 + 32 * v6;

  v9 = [(ATXRemoteAppPlaceholderInfo *)self genreID];
  v10 = [v9 hash] - v8 + 32 * v8;

  return v10;
}

@end