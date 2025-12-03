@interface BMBaseDonor
- (BMBaseDonor)initWithType:(id)type;
- (BOOL)isObservedBy:(id)by;
- (NSArray)eventConfigurations;
- (NSString)type;
- (void)addDonorObserver:(id)observer;
- (void)donateWithConfiguration:(id)configuration context:(id)context donationCompleteBlock:(id)block;
- (void)propertyDidChange:(id)change propertyConfiguration:(id)configuration;
- (void)removeDonorObserver:(id)observer;
- (void)setEventConfigurations:(id)configurations;
- (void)setType:(id)type;
@end

@implementation BMBaseDonor

- (BMBaseDonor)initWithType:(id)type
{
  typeCopy = type;
  v8.receiver = self;
  v8.super_class = BMBaseDonor;
  v5 = [(BMBaseDonor *)&v8 init];
  if (v5)
  {
    v6 = [[_TtC19EngagementCollector9BaseDonor alloc] initWithType:typeCopy];
    [(BMBaseDonor *)v5 setDonor:v6];
  }

  return v5;
}

- (NSString)type
{
  donor = [(BMBaseDonor *)self donor];
  type = [donor type];

  return type;
}

- (NSArray)eventConfigurations
{
  donor = [(BMBaseDonor *)self donor];
  eventConfigurations = [donor eventConfigurations];

  return eventConfigurations;
}

- (void)setType:(id)type
{
  typeCopy = type;
  donor = [(BMBaseDonor *)self donor];
  [donor setType:typeCopy];
}

- (void)setEventConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  donor = [(BMBaseDonor *)self donor];
  [donor setEventConfigurations:configurationsCopy];
}

- (void)donateWithConfiguration:(id)configuration context:(id)context donationCompleteBlock:(id)block
{
  blockCopy = block;
  contextCopy = context;
  configurationCopy = configuration;
  donor = [(BMBaseDonor *)self donor];
  [donor donateWithConfiguration:configurationCopy context:contextCopy donationCompleteBlock:blockCopy];
}

- (void)addDonorObserver:(id)observer
{
  observerCopy = observer;
  donor = [(BMBaseDonor *)self donor];
  [donor addDonorObserver:observerCopy];
}

- (void)removeDonorObserver:(id)observer
{
  observerCopy = observer;
  donor = [(BMBaseDonor *)self donor];
  [donor removeDonorObserver:observerCopy];
}

- (BOOL)isObservedBy:(id)by
{
  byCopy = by;
  donor = [(BMBaseDonor *)self donor];
  v6 = [donor isObservedBy:byCopy];

  return v6;
}

- (void)propertyDidChange:(id)change propertyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  donor = [(BMBaseDonor *)self donor];
  [donor propertyDidChange:self propertyConfiguration:configurationCopy];
}

@end