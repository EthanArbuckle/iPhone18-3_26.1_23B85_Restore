@interface ASDUpdateMetricsEvent
+ (id)relativeMetricsKeys;
- (ASDUpdateMetricsEvent)initWithCoder:(id)coder;
- (ASDUpdateMetricsEvent)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDUpdateMetricsEvent

- (ASDUpdateMetricsEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = ASDUpdateMetricsEvent;
  v5 = [(ASDUpdateMetricsEvent *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"a"];
    available = v5->_available;
    v5->_available = v6;

    v8 = [dictionaryCopy objectForKey:@"d"];
    discovery = v5->_discovery;
    v5->_discovery = v8;

    v10 = [dictionaryCopy objectForKey:@"ps"];
    purchaseStart = v5->_purchaseStart;
    v5->_purchaseStart = v10;

    v12 = [dictionaryCopy objectForKey:@"pc"];
    purchaseComplete = v5->_purchaseComplete;
    v5->_purchaseComplete = v12;

    v14 = [dictionaryCopy objectForKey:@"ds"];
    downloadStart = v5->_downloadStart;
    v5->_downloadStart = v14;

    v16 = [dictionaryCopy objectForKey:@"dc"];
    downloadComplete = v5->_downloadComplete;
    v5->_downloadComplete = v16;

    v18 = [dictionaryCopy objectForKey:@"is"];
    installStart = v5->_installStart;
    v5->_installStart = v18;

    v20 = [dictionaryCopy objectForKey:@"ic"];
    installComplete = v5->_installComplete;
    v5->_installComplete = v20;
  }

  return v5;
}

- (ASDUpdateMetricsEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = ASDUpdateMetricsEvent;
  v5 = [(ASDUpdateMetricsEvent *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"a"];
    available = v5->_available;
    v5->_available = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
    discovery = v5->_discovery;
    v5->_discovery = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ps"];
    purchaseStart = v5->_purchaseStart;
    v5->_purchaseStart = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pc"];
    purchaseComplete = v5->_purchaseComplete;
    v5->_purchaseComplete = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ds"];
    downloadStart = v5->_downloadStart;
    v5->_downloadStart = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dc"];
    downloadComplete = v5->_downloadComplete;
    v5->_downloadComplete = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"is"];
    installStart = v5->_installStart;
    v5->_installStart = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ic"];
    installComplete = v5->_installComplete;
    v5->_installComplete = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  available = self->_available;
  coderCopy = coder;
  [coderCopy encodeObject:available forKey:@"a"];
  [coderCopy encodeObject:self->_discovery forKey:@"d"];
  [coderCopy encodeObject:self->_purchaseStart forKey:@"ps"];
  [coderCopy encodeObject:self->_purchaseComplete forKey:@"pc"];
  [coderCopy encodeObject:self->_downloadStart forKey:@"ds"];
  [coderCopy encodeObject:self->_downloadComplete forKey:@"dc"];
  [coderCopy encodeObject:self->_installStart forKey:@"is"];
  [coderCopy encodeObject:self->_installComplete forKey:@"ic"];
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