@interface AFSyncInfo
- (AFSyncInfo)initWithAnchor:(id)a3 forcingReset:(BOOL)a4;
- (AFSyncInfo)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSyncInfo

- (AFSyncInfo)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = AFSyncInfo;
  v5 = [(AFSyncInfo *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_validity"];
    validity = v5->_validity;
    v5->_validity = v8;

    v5->_count = [v4 decodeIntegerForKey:@"_count"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
    key = v5->_key;
    v5->_key = v10;

    v5->_targetIsLocal = [v4 decodeBoolForKey:@"_targetIsLocal"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_appMetadata"];
    appMetadata = v5->_appMetadata;
    v5->_appMetadata = v12;

    v5->_forVerification = [v4 decodeBoolForKey:@"_forVerification"];
    v14 = MEMORY[0x1E695DFD8];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v16 = [v14 setWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_reasons"];
    reasons = v5->_reasons;
    v5->_reasons = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  anchor = self->_anchor;
  v5 = a3;
  [v5 encodeObject:anchor forKey:@"_anchor"];
  [v5 encodeObject:self->_validity forKey:@"_validity"];
  [v5 encodeInteger:self->_count forKey:@"_count"];
  [v5 encodeObject:self->_key forKey:@"_key"];
  [v5 encodeBool:self->_targetIsLocal forKey:@"_targetIsLocal"];
  [v5 encodeObject:self->_appMetadata forKey:@"_appMetadata"];
  [v5 encodeBool:self->_forVerification forKey:@"_forVerification"];
  [v5 encodeObject:self->_reasons forKey:@"_reasons"];
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

- (AFSyncInfo)initWithAnchor:(id)a3 forcingReset:(BOOL)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = AFSyncInfo;
  v7 = [(AFSyncInfo *)&v13 init];
  if (v7)
  {
    v8 = [v6 key];
    [(AFSyncInfo *)v7 setKey:v8];

    v9 = [v6 appMetaData];
    [(AFSyncInfo *)v7 setAppMetadata:v9];

    if (!a4)
    {
      v10 = [v6 generation];
      [(AFSyncInfo *)v7 setAnchor:v10];

      v11 = [v6 validity];
      [(AFSyncInfo *)v7 setValidity:v11];

      -[AFSyncInfo setCount:](v7, "setCount:", [v6 count]);
    }
  }

  return v7;
}

@end