@interface ATXFaceSuggestionFocusMode
- (ATXFaceSuggestionFocusMode)initWithCoder:(id)coder;
- (ATXFaceSuggestionFocusMode)initWithType:(int64_t)type uuid:(id)uuid;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXFaceSuggestionFocusMode

- (ATXFaceSuggestionFocusMode)initWithType:(int64_t)type uuid:(id)uuid
{
  uuidCopy = uuid;
  v12.receiver = self;
  v12.super_class = ATXFaceSuggestionFocusMode;
  v7 = [(ATXFaceSuggestionFocusMode *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [uuidCopy copy];
    uuid = v8->_uuid;
    v8->_uuid = v9;
  }

  return v8;
}

- (ATXFaceSuggestionFocusMode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];

  v7 = [(ATXFaceSuggestionFocusMode *)self initWithType:v5 uuid:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[ATXFaceSuggestionFocusMode type](self forKey:{"type"), @"type"}];
  uuid = [(ATXFaceSuggestionFocusMode *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];
}

@end