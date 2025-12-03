@interface ATXBiomeSuggestedHomePageEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXBiomeSuggestedHomePageEvent)initWithCoder:(id)coder;
- (ATXBiomeSuggestedHomePageEvent)initWithPageType:(int64_t)type identifier:(id)identifier action:(int64_t)action;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXBiomeSuggestedHomePageEvent

- (void)encodeWithCoder:(id)coder
{
  pageType = self->_pageType;
  coderCopy = coder;
  [coderCopy encodeInteger:pageType forKey:@"ATXBiomeSuggestedHomePageEventPageType"];
  [coderCopy encodeObject:self->_identifier forKey:@"ATXBiomeSuggestedHomePageEventIdentifier"];
  [coderCopy encodeInteger:self->_action forKey:@"ATXBiomeSuggestedHomePageEventAction"];
}

- (ATXBiomeSuggestedHomePageEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"ATXBiomeSuggestedHomePageEventPageType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ATXBiomeSuggestedHomePageEventIdentifier"];
  v7 = [coderCopy decodeIntegerForKey:@"ATXBiomeSuggestedHomePageEventAction"];

  v8 = [[ATXBiomeSuggestedHomePageEvent alloc] initWithPageType:v5 identifier:v6 action:v7];
  return v8;
}

- (ATXBiomeSuggestedHomePageEvent)initWithPageType:(int64_t)type identifier:(id)identifier action:(int64_t)action
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = ATXBiomeSuggestedHomePageEvent;
  v10 = [(ATXBiomeSuggestedHomePageEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_pageType = type;
    objc_storeStrong(&v10->_identifier, identifier);
    v11->_action = action;
  }

  return v11;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E696ACD0];
    dataCopy = data;
    v9 = 0;
    v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v9];

    v7 = 0;
    if (!v9)
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)serialize
{
  v3 = objc_autoreleasePoolPush();
  v8 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v8];
  v5 = v8;
  objc_autoreleasePoolPop(v3);
  v6 = 0;
  if (!v5)
  {
    v6 = v4;
  }

  return v6;
}

@end