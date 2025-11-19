@interface ATXSuggestedPagesFilter
- (ATXSuggestedPagesFilter)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSuggestedPagesFilter

- (ATXSuggestedPagesFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ATXSuggestedPagesFilter;
  v5 = [(ATXSuggestedPagesFilter *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeUUID"];
    modeUUID = v5->_modeUUID;
    v5->_modeUUID = v6;

    v5->_pageType = [v4 decodeIntegerForKey:@"pageType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  modeUUID = self->_modeUUID;
  v5 = a3;
  [v5 encodeObject:modeUUID forKey:@"modeUUID"];
  [v5 encodeInteger:self->_pageType forKey:@"pageType"];
}

@end