@interface BKPageCurlConfiguration
- (BKPageCurlConfiguration)initWithContext:(id)context;
- (IMFrameEnvironment)context;
- (double)heightAllowanceScalar;
- (void)_setupDefault;
- (void)_setupPortraitCompactWidth;
@end

@implementation BKPageCurlConfiguration

- (BKPageCurlConfiguration)initWithContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = BKPageCurlConfiguration;
  v5 = [(BKPageCurlConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_context, contextCopy);
    [(BKPageCurlConfiguration *)v6 _setupPortraitCompactWidth];
    [(BKPageCurlConfiguration *)v6 _setupDefault];
  }

  return v6;
}

- (double)heightAllowanceScalar
{
  context = [(BKPageCurlConfiguration *)self context];
  [(BKPageCurlConfiguration *)self floatForKey:@"heightAllowanceScalar" context:context];
  v5 = v4;

  return v5;
}

- (void)_setupPortraitCompactWidth
{
  v3 = +[IMConfigurationPredicate portraitPredicate];
  [(BKPageCurlConfiguration *)self addWithPredicate:v3 adder:&stru_1E43A0];
}

- (void)_setupDefault
{
  v3 = +[IMConfigurationPredicate defaultPredicate];
  [(BKPageCurlConfiguration *)self addWithPredicate:v3 adder:&stru_1E4500];
}

- (IMFrameEnvironment)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end