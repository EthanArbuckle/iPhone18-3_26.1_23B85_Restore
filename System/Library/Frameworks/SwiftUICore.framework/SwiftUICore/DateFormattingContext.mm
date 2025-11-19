@interface DateFormattingContext
- (DateFormattingContext)initWithReferenceDate:(id)a3 isLuminanceReduced:(BOOL)a4;
@end

@implementation DateFormattingContext

- (DateFormattingContext)initWithReferenceDate:(id)a3 isLuminanceReduced:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = DateFormattingContext;
  v8 = [(DateFormattingContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_referenceDate, a3);
    v9->_isLuminanceReduced = a4;
  }

  return v9;
}

@end