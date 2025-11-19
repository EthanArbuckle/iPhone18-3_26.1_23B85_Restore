@interface AVTimeRangeMark
+ (id)bufferedTimeRangeMarkWithStartValue:(float)a3 endValue:(float)a4;
- (AVTimeRangeMark)initWithStartValue:(float)a3 endValue:(float)a4 identifier:(id)a5;
- (AVTimeRangeMark)initWithStartValue:(float)a3 endValue:(float)a4 identifier:(id)a5 markUIProvider:(id)a6;
- (AVTimeRangeMarkUIProvider)markUIProvider;
@end

@implementation AVTimeRangeMark

- (AVTimeRangeMarkUIProvider)markUIProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_markUIProvider);

  return WeakRetained;
}

- (AVTimeRangeMark)initWithStartValue:(float)a3 endValue:(float)a4 identifier:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = AVTimeRangeMark;
  v10 = [(AVTimeRangeMark *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_startValue = a3;
    v10->_endValue = a4;
    objc_storeStrong(&v10->_identifer, a5);
  }

  return v11;
}

- (AVTimeRangeMark)initWithStartValue:(float)a3 endValue:(float)a4 identifier:(id)a5 markUIProvider:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = AVTimeRangeMark;
  v13 = [(AVTimeRangeMark *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_startValue = a3;
    v13->_endValue = a4;
    objc_storeStrong(&v13->_identifer, a5);
    objc_storeWeak(&v14->_markUIProvider, v12);
  }

  return v14;
}

+ (id)bufferedTimeRangeMarkWithStartValue:(float)a3 endValue:(float)a4
{
  v6 = [AVTimeRangeMark alloc];
  *&v7 = a3;
  *&v8 = a4;
  v9 = [(AVTimeRangeMark *)v6 initWithStartValue:@"com.apple.avkit.AVTimeRangeMark.BufferedRange.ID" endValue:v7 identifier:v8];

  return v9;
}

@end