@interface ShouldShowBlockParameters
- (ShouldShowBlockParameters)initWithEvents:(id)a3 presentationController:(id)a4;
@end

@implementation ShouldShowBlockParameters

- (ShouldShowBlockParameters)initWithEvents:(id)a3 presentationController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ShouldShowBlockParameters;
  v9 = [(ShouldShowBlockParameters *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_events, a3);
    objc_storeStrong(&v10->_presentationController, a4);
  }

  return v10;
}

@end