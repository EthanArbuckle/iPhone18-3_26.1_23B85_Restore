@interface ATXInstalledSuggestedPage
- (ATXInstalledSuggestedPage)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXInstalledSuggestedPage

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXInstalledSuggestedPage *)self isEqualToATXInstalledSuggestedPage:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_pageType forKey:@"type"];
  [v5 encodeObject:self->_modeUUID forKey:@"modeUUID"];
}

- (ATXInstalledSuggestedPage)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ATXInstalledSuggestedPage;
  v5 = [(ATXInstalledSuggestedPage *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_pageType = [v4 decodeIntegerForKey:@"type"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeUUID"];
    modeUUID = v5->_modeUUID;
    v5->_modeUUID = v8;

    v10 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(ATXInstalledSuggestedPage *)self identifier];
  v5 = [(ATXInstalledSuggestedPage *)self modeUUID];
  v6 = [v3 initWithFormat:@"<ATXInstalledSuggestedPage identifier=%@ modeUUID=%@ type=%ld>", v4, v5, -[ATXInstalledSuggestedPage pageType](self, "pageType")];

  return v6;
}

@end