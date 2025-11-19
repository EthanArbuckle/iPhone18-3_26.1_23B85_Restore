@interface ATXFaceSuggestionFocusMode
- (ATXFaceSuggestionFocusMode)initWithCoder:(id)a3;
- (ATXFaceSuggestionFocusMode)initWithType:(int64_t)a3 uuid:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXFaceSuggestionFocusMode

- (ATXFaceSuggestionFocusMode)initWithType:(int64_t)a3 uuid:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = ATXFaceSuggestionFocusMode;
  v7 = [(ATXFaceSuggestionFocusMode *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [v6 copy];
    uuid = v8->_uuid;
    v8->_uuid = v9;
  }

  return v8;
}

- (ATXFaceSuggestionFocusMode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];

  v7 = [(ATXFaceSuggestionFocusMode *)self initWithType:v5 uuid:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[ATXFaceSuggestionFocusMode type](self forKey:{"type"), @"type"}];
  v5 = [(ATXFaceSuggestionFocusMode *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];
}

@end