@interface AFSyncInfo
- (AFSyncInfo)initWithAnchor:(id)anchor forcingReset:(BOOL)reset;
- (AFSyncInfo)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSyncInfo

- (AFSyncInfo)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = AFSyncInfo;
  v5 = [(AFSyncInfo *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_validity"];
    validity = v5->_validity;
    v5->_validity = v8;

    v5->_count = [coderCopy decodeIntegerForKey:@"_count"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
    key = v5->_key;
    v5->_key = v10;

    v5->_targetIsLocal = [coderCopy decodeBoolForKey:@"_targetIsLocal"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_appMetadata"];
    appMetadata = v5->_appMetadata;
    v5->_appMetadata = v12;

    v5->_forVerification = [coderCopy decodeBoolForKey:@"_forVerification"];
    v14 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"_reasons"];
    reasons = v5->_reasons;
    v5->_reasons = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  anchor = self->_anchor;
  coderCopy = coder;
  [coderCopy encodeObject:anchor forKey:@"_anchor"];
  [coderCopy encodeObject:self->_validity forKey:@"_validity"];
  [coderCopy encodeInteger:self->_count forKey:@"_count"];
  [coderCopy encodeObject:self->_key forKey:@"_key"];
  [coderCopy encodeBool:self->_targetIsLocal forKey:@"_targetIsLocal"];
  [coderCopy encodeObject:self->_appMetadata forKey:@"_appMetadata"];
  [coderCopy encodeBool:self->_forVerification forKey:@"_forVerification"];
  [coderCopy encodeObject:self->_reasons forKey:@"_reasons"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7.receiver = self;
  v7.super_class = AFSyncInfo;
  v4 = [(AFSyncInfo *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ anchor: %@ validity: %@ count: %zd key: %@ targetIsLocal: %d appMetadata: %@ reasons: %@", v4, self->_anchor, self->_validity, self->_count, self->_key, self->_targetIsLocal, self->_appMetadata, self->_reasons];

  return v5;
}

- (AFSyncInfo)initWithAnchor:(id)anchor forcingReset:(BOOL)reset
{
  anchorCopy = anchor;
  v13.receiver = self;
  v13.super_class = AFSyncInfo;
  v7 = [(AFSyncInfo *)&v13 init];
  if (v7)
  {
    v8 = [anchorCopy key];
    [(AFSyncInfo *)v7 setKey:v8];

    appMetaData = [anchorCopy appMetaData];
    [(AFSyncInfo *)v7 setAppMetadata:appMetaData];

    if (!reset)
    {
      generation = [anchorCopy generation];
      [(AFSyncInfo *)v7 setAnchor:generation];

      validity = [anchorCopy validity];
      [(AFSyncInfo *)v7 setValidity:validity];

      -[AFSyncInfo setCount:](v7, "setCount:", [anchorCopy count]);
    }
  }

  return v7;
}

@end