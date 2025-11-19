@interface BMBaseDonor
- (BMBaseDonor)initWithType:(id)a3;
- (BOOL)isObservedBy:(id)a3;
- (NSArray)eventConfigurations;
- (NSString)type;
- (void)addDonorObserver:(id)a3;
- (void)donateWithConfiguration:(id)a3 context:(id)a4 donationCompleteBlock:(id)a5;
- (void)propertyDidChange:(id)a3 propertyConfiguration:(id)a4;
- (void)removeDonorObserver:(id)a3;
- (void)setEventConfigurations:(id)a3;
- (void)setType:(id)a3;
@end

@implementation BMBaseDonor

- (BMBaseDonor)initWithType:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BMBaseDonor;
  v5 = [(BMBaseDonor *)&v8 init];
  if (v5)
  {
    v6 = [[_TtC19EngagementCollector9BaseDonor alloc] initWithType:v4];
    [(BMBaseDonor *)v5 setDonor:v6];
  }

  return v5;
}

- (NSString)type
{
  v2 = [(BMBaseDonor *)self donor];
  v3 = [v2 type];

  return v3;
}

- (NSArray)eventConfigurations
{
  v2 = [(BMBaseDonor *)self donor];
  v3 = [v2 eventConfigurations];

  return v3;
}

- (void)setType:(id)a3
{
  v4 = a3;
  v5 = [(BMBaseDonor *)self donor];
  [v5 setType:v4];
}

- (void)setEventConfigurations:(id)a3
{
  v4 = a3;
  v5 = [(BMBaseDonor *)self donor];
  [v5 setEventConfigurations:v4];
}

- (void)donateWithConfiguration:(id)a3 context:(id)a4 donationCompleteBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BMBaseDonor *)self donor];
  [v11 donateWithConfiguration:v10 context:v9 donationCompleteBlock:v8];
}

- (void)addDonorObserver:(id)a3
{
  v4 = a3;
  v5 = [(BMBaseDonor *)self donor];
  [v5 addDonorObserver:v4];
}

- (void)removeDonorObserver:(id)a3
{
  v4 = a3;
  v5 = [(BMBaseDonor *)self donor];
  [v5 removeDonorObserver:v4];
}

- (BOOL)isObservedBy:(id)a3
{
  v4 = a3;
  v5 = [(BMBaseDonor *)self donor];
  v6 = [v5 isObservedBy:v4];

  return v6;
}

- (void)propertyDidChange:(id)a3 propertyConfiguration:(id)a4
{
  v5 = a4;
  v6 = [(BMBaseDonor *)self donor];
  [v6 propertyDidChange:self propertyConfiguration:v5];
}

@end