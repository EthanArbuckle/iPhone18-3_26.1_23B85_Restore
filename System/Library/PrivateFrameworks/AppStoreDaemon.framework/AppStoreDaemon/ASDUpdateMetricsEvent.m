@interface ASDUpdateMetricsEvent
+ (id)relativeMetricsKeys;
- (ASDUpdateMetricsEvent)initWithCoder:(id)a3;
- (ASDUpdateMetricsEvent)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDUpdateMetricsEvent

- (ASDUpdateMetricsEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ASDUpdateMetricsEvent;
  v5 = [(ASDUpdateMetricsEvent *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"a"];
    available = v5->_available;
    v5->_available = v6;

    v8 = [v4 objectForKey:@"d"];
    discovery = v5->_discovery;
    v5->_discovery = v8;

    v10 = [v4 objectForKey:@"ps"];
    purchaseStart = v5->_purchaseStart;
    v5->_purchaseStart = v10;

    v12 = [v4 objectForKey:@"pc"];
    purchaseComplete = v5->_purchaseComplete;
    v5->_purchaseComplete = v12;

    v14 = [v4 objectForKey:@"ds"];
    downloadStart = v5->_downloadStart;
    v5->_downloadStart = v14;

    v16 = [v4 objectForKey:@"dc"];
    downloadComplete = v5->_downloadComplete;
    v5->_downloadComplete = v16;

    v18 = [v4 objectForKey:@"is"];
    installStart = v5->_installStart;
    v5->_installStart = v18;

    v20 = [v4 objectForKey:@"ic"];
    installComplete = v5->_installComplete;
    v5->_installComplete = v20;
  }

  return v5;
}

- (ASDUpdateMetricsEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ASDUpdateMetricsEvent;
  v5 = [(ASDUpdateMetricsEvent *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"a"];
    available = v5->_available;
    v5->_available = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    discovery = v5->_discovery;
    v5->_discovery = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ps"];
    purchaseStart = v5->_purchaseStart;
    v5->_purchaseStart = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pc"];
    purchaseComplete = v5->_purchaseComplete;
    v5->_purchaseComplete = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
    downloadStart = v5->_downloadStart;
    v5->_downloadStart = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dc"];
    downloadComplete = v5->_downloadComplete;
    v5->_downloadComplete = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"is"];
    installStart = v5->_installStart;
    v5->_installStart = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ic"];
    installComplete = v5->_installComplete;
    v5->_installComplete = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  available = self->_available;
  v5 = a3;
  [v5 encodeObject:available forKey:@"a"];
  [v5 encodeObject:self->_discovery forKey:@"d"];
  [v5 encodeObject:self->_purchaseStart forKey:@"ps"];
  [v5 encodeObject:self->_purchaseComplete forKey:@"pc"];
  [v5 encodeObject:self->_downloadStart forKey:@"ds"];
  [v5 encodeObject:self->_downloadComplete forKey:@"dc"];
  [v5 encodeObject:self->_installStart forKey:@"is"];
  [v5 encodeObject:self->_installComplete forKey:@"ic"];
}

+ (id)relativeMetricsKeys
{
  v5[7] = *MEMORY[0x1E69E9840];
  v5[0] = @"d";
  v5[1] = @"ps";
  v5[2] = @"pc";
  v5[3] = @"ds";
  v5[4] = @"dc";
  v5[5] = @"is";
  v5[6] = @"ic";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end