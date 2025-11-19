@interface ATXBiomeSuggestedHomePageEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXBiomeSuggestedHomePageEvent)initWithCoder:(id)a3;
- (ATXBiomeSuggestedHomePageEvent)initWithPageType:(int64_t)a3 identifier:(id)a4 action:(int64_t)a5;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXBiomeSuggestedHomePageEvent

- (void)encodeWithCoder:(id)a3
{
  pageType = self->_pageType;
  v5 = a3;
  [v5 encodeInteger:pageType forKey:@"ATXBiomeSuggestedHomePageEventPageType"];
  [v5 encodeObject:self->_identifier forKey:@"ATXBiomeSuggestedHomePageEventIdentifier"];
  [v5 encodeInteger:self->_action forKey:@"ATXBiomeSuggestedHomePageEventAction"];
}

- (ATXBiomeSuggestedHomePageEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"ATXBiomeSuggestedHomePageEventPageType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ATXBiomeSuggestedHomePageEventIdentifier"];
  v7 = [v4 decodeIntegerForKey:@"ATXBiomeSuggestedHomePageEventAction"];

  v8 = [[ATXBiomeSuggestedHomePageEvent alloc] initWithPageType:v5 identifier:v6 action:v7];
  return v8;
}

- (ATXBiomeSuggestedHomePageEvent)initWithPageType:(int64_t)a3 identifier:(id)a4 action:(int64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = ATXBiomeSuggestedHomePageEvent;
  v10 = [(ATXBiomeSuggestedHomePageEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_pageType = a3;
    objc_storeStrong(&v10->_identifier, a4);
    v11->_action = a5;
  }

  return v11;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = a3;
    v9 = 0;
    v6 = [v4 unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v9];

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