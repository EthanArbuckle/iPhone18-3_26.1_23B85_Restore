@interface FMOOSContextState
- (FMOOSContextState)initWithStartTime:(id)time subscriptionID:(id)d registrationState:(id)state homeMcc:(id)mcc homeMnc:(id)mnc;
@end

@implementation FMOOSContextState

- (FMOOSContextState)initWithStartTime:(id)time subscriptionID:(id)d registrationState:(id)state homeMcc:(id)mcc homeMnc:(id)mnc
{
  timeCopy = time;
  dCopy = d;
  stateCopy = state;
  mccCopy = mcc;
  mncCopy = mnc;
  v17 = mncCopy;
  selfCopy = 0;
  if (dCopy && stateCopy && mccCopy && mncCopy)
  {
    v21.receiver = self;
    v21.super_class = FMOOSContextState;
    self = [(FMContextState *)&v21 initWithStartTime:timeCopy];
    if (self)
    {
      v19 = objc_alloc_init(NSMutableArray);
      [(FMOOSContextState *)self setPrevCells:v19];

      [(FMOOSContextState *)self setSubscriptionID:dCopy];
      [(FMOOSContextState *)self setRegistrationState:stateCopy];
      [(FMOOSContextState *)self setHomeMcc:mccCopy];
      [(FMOOSContextState *)self setHomeMnc:v17];
      [(FMOOSContextState *)self setOosAreaEntry:0];
      [(FMOOSContextState *)self setClientPrediction:0];
      [(FMOOSContextState *)self setPreviousCrowdsourcedOOSInsights:0];
      [(FMOOSContextState *)self setPredictionSuppressionReason:0];
      self = self;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end