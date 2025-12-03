@interface AVTimeRangeMark
+ (id)bufferedTimeRangeMarkWithStartValue:(float)value endValue:(float)endValue;
- (AVTimeRangeMark)initWithStartValue:(float)value endValue:(float)endValue identifier:(id)identifier;
- (AVTimeRangeMark)initWithStartValue:(float)value endValue:(float)endValue identifier:(id)identifier markUIProvider:(id)provider;
- (AVTimeRangeMarkUIProvider)markUIProvider;
@end

@implementation AVTimeRangeMark

- (AVTimeRangeMarkUIProvider)markUIProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_markUIProvider);

  return WeakRetained;
}

- (AVTimeRangeMark)initWithStartValue:(float)value endValue:(float)endValue identifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = AVTimeRangeMark;
  v10 = [(AVTimeRangeMark *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_startValue = value;
    v10->_endValue = endValue;
    objc_storeStrong(&v10->_identifer, identifier);
  }

  return v11;
}

- (AVTimeRangeMark)initWithStartValue:(float)value endValue:(float)endValue identifier:(id)identifier markUIProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = AVTimeRangeMark;
  v13 = [(AVTimeRangeMark *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_startValue = value;
    v13->_endValue = endValue;
    objc_storeStrong(&v13->_identifer, identifier);
    objc_storeWeak(&v14->_markUIProvider, providerCopy);
  }

  return v14;
}

+ (id)bufferedTimeRangeMarkWithStartValue:(float)value endValue:(float)endValue
{
  v6 = [AVTimeRangeMark alloc];
  *&v7 = value;
  *&v8 = endValue;
  v9 = [(AVTimeRangeMark *)v6 initWithStartValue:@"com.apple.avkit.AVTimeRangeMark.BufferedRange.ID" endValue:v7 identifier:v8];

  return v9;
}

@end