@interface FMOOSContextState
- (FMOOSContextState)initWithStartTime:(id)a3 subscriptionID:(id)a4 registrationState:(id)a5 homeMcc:(id)a6 homeMnc:(id)a7;
@end

@implementation FMOOSContextState

- (FMOOSContextState)initWithStartTime:(id)a3 subscriptionID:(id)a4 registrationState:(id)a5 homeMcc:(id)a6 homeMnc:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  v18 = 0;
  if (v13 && v14 && v15 && v16)
  {
    v21.receiver = self;
    v21.super_class = FMOOSContextState;
    self = [(FMContextState *)&v21 initWithStartTime:v12];
    if (self)
    {
      v19 = objc_alloc_init(NSMutableArray);
      [(FMOOSContextState *)self setPrevCells:v19];

      [(FMOOSContextState *)self setSubscriptionID:v13];
      [(FMOOSContextState *)self setRegistrationState:v14];
      [(FMOOSContextState *)self setHomeMcc:v15];
      [(FMOOSContextState *)self setHomeMnc:v17];
      [(FMOOSContextState *)self setOosAreaEntry:0];
      [(FMOOSContextState *)self setClientPrediction:0];
      [(FMOOSContextState *)self setPreviousCrowdsourcedOOSInsights:0];
      [(FMOOSContextState *)self setPredictionSuppressionReason:0];
      self = self;
      v18 = self;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

@end