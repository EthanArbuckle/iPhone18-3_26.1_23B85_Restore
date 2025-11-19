@interface AAPSyncMetaDataItemDelete
- (AAPSyncMetaDataItemDelete)initWithAppId:(id)a3 anchor:(id)a4;
- (AAPSyncMetaDataItemDelete)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)scrapeAppInfo;
- (void)_validate;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAPSyncMetaDataItemDelete

- (AAPSyncMetaDataItemDelete)initWithAppId:(id)a3 anchor:(id)a4
{
  v8.receiver = self;
  v8.super_class = AAPSyncMetaDataItemDelete;
  v6 = [(AAPSyncMetaDataItemDelete *)&v8 init];
  if (v6)
  {
    v6->_appId = [a3 copy];
    v6->_anchor = [a4 copy];
    [(AAPSyncMetaDataItemDelete *)v6 _validate];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AAPSyncMetaDataItemDelete;
  [(AAPSyncMetaDataItemDelete *)&v3 dealloc];
}

- (void)_validate
{
  if (!self->_appId)
  {
    sub_109E8(a2, self);
  }

  if (!self->_anchor)
  {
    sub_10A44(a2, self);
  }

  v4 = objc_opt_class();
  v5 = objc_opt_class();
  appId = self->_appId;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10AA0(a2, self, v4);
  }

  anchor = self->_anchor;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_10B08(a2, self, v5);
  }
}

- (id)scrapeAppInfo
{
  v3 = objc_alloc_init(SAAppInfo);
  [v3 setIdentifier:AAPSyncInfoIdentifierForAppId(self->_appId)];

  return v3;
}

- (AAPSyncMetaDataItemDelete)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"appId"];
  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];

  return [(AAPSyncMetaDataItemDelete *)self initWithAppId:v5 anchor:v6];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_appId forKey:@"appId"];
  anchor = self->_anchor;

  [a3 encodeObject:anchor forKey:@"anchor"];
}

- (BOOL)isEqual:(id)a3
{
  v3 = self;
  if (self == a3)
  {
    LOBYTE(self) = self != 0;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      LODWORD(self) = -[NSString isEqualToString:](v3->_appId, "isEqualToString:", [a3 appId]);
      if (self)
      {
        anchor = v3->_anchor;
        v7 = [a3 anchor];

        LOBYTE(self) = [(AAPSyncAnchor *)anchor isEqualToAnchor:v7];
      }
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

@end