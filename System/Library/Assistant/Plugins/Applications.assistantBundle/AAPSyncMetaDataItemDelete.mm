@interface AAPSyncMetaDataItemDelete
- (AAPSyncMetaDataItemDelete)initWithAppId:(id)id anchor:(id)anchor;
- (AAPSyncMetaDataItemDelete)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)scrapeAppInfo;
- (void)_validate;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAPSyncMetaDataItemDelete

- (AAPSyncMetaDataItemDelete)initWithAppId:(id)id anchor:(id)anchor
{
  v8.receiver = self;
  v8.super_class = AAPSyncMetaDataItemDelete;
  v6 = [(AAPSyncMetaDataItemDelete *)&v8 init];
  if (v6)
  {
    v6->_appId = [id copy];
    v6->_anchor = [anchor copy];
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

- (AAPSyncMetaDataItemDelete)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"appId"];
  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];

  return [(AAPSyncMetaDataItemDelete *)self initWithAppId:v5 anchor:v6];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_appId forKey:@"appId"];
  anchor = self->_anchor;

  [coder encodeObject:anchor forKey:@"anchor"];
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  if (self == equal)
  {
    LOBYTE(self) = self != 0;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      LODWORD(self) = -[NSString isEqualToString:](selfCopy->_appId, "isEqualToString:", [equal appId]);
      if (self)
      {
        anchor = selfCopy->_anchor;
        anchor = [equal anchor];

        LOBYTE(self) = [(AAPSyncAnchor *)anchor isEqualToAnchor:anchor];
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