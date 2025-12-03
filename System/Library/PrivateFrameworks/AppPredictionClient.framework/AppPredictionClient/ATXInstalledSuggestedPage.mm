@interface ATXInstalledSuggestedPage
- (ATXInstalledSuggestedPage)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInstalledSuggestedPage

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXInstalledSuggestedPage *)self isEqualToATXInstalledSuggestedPage:v5];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_pageType forKey:@"type"];
  [coderCopy encodeObject:self->_modeUUID forKey:@"modeUUID"];
}

- (ATXInstalledSuggestedPage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ATXInstalledSuggestedPage;
  v5 = [(ATXInstalledSuggestedPage *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_pageType = [coderCopy decodeIntegerForKey:@"type"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeUUID"];
    modeUUID = v5->_modeUUID;
    v5->_modeUUID = v8;

    v10 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(ATXInstalledSuggestedPage *)self identifier];
  modeUUID = [(ATXInstalledSuggestedPage *)self modeUUID];
  v6 = [v3 initWithFormat:@"<ATXInstalledSuggestedPage identifier=%@ modeUUID=%@ type=%ld>", identifier, modeUUID, -[ATXInstalledSuggestedPage pageType](self, "pageType")];

  return v6;
}

@end