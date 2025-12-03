@interface ATXSuggestedPagesFilter
- (ATXSuggestedPagesFilter)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSuggestedPagesFilter

- (ATXSuggestedPagesFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ATXSuggestedPagesFilter;
  v5 = [(ATXSuggestedPagesFilter *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeUUID"];
    modeUUID = v5->_modeUUID;
    v5->_modeUUID = v6;

    v5->_pageType = [coderCopy decodeIntegerForKey:@"pageType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  modeUUID = self->_modeUUID;
  coderCopy = coder;
  [coderCopy encodeObject:modeUUID forKey:@"modeUUID"];
  [coderCopy encodeInteger:self->_pageType forKey:@"pageType"];
}

@end