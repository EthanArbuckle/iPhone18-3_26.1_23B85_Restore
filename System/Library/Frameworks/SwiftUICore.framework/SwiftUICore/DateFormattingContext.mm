@interface DateFormattingContext
- (DateFormattingContext)initWithReferenceDate:(id)date isLuminanceReduced:(BOOL)reduced;
@end

@implementation DateFormattingContext

- (DateFormattingContext)initWithReferenceDate:(id)date isLuminanceReduced:(BOOL)reduced
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = DateFormattingContext;
  v8 = [(DateFormattingContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_referenceDate, date);
    v9->_isLuminanceReduced = reduced;
  }

  return v9;
}

@end