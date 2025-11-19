@interface BLSAlwaysOnTimelineEntry
- (BLSAlwaysOnTimelineEntry)initWithPresentationTime:(id)a3 requestedFidelity:(int64_t)a4 animated:(BOOL)a5 duration:(double)a6 timelineIdentifier:(id)a7 userObject:(id)a8;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation BLSAlwaysOnTimelineEntry

- (BLSAlwaysOnTimelineEntry)initWithPresentationTime:(id)a3 requestedFidelity:(int64_t)a4 animated:(BOOL)a5 duration:(double)a6 timelineIdentifier:(id)a7 userObject:(id)a8
{
  v15 = a3;
  v16 = a7;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = BLSAlwaysOnTimelineEntry;
  v18 = [(BLSAlwaysOnTimelineEntry *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_presentationTime, a3);
    v19->_requestedFidelity = a4;
    v19->_animated = a5;
    v19->_duration = a6;
    objc_storeStrong(&v19->_timelineIdentifier, a7);
    objc_storeStrong(&v19->_userObject, a8);
  }

  return v19;
}

- (int64_t)compare:(id)a3
{
  presentationTime = self->_presentationTime;
  v4 = [a3 presentationTime];
  v5 = [(NSDate *)presentationTime compare:v4];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NSDate *)self->_presentationTime bls_shortLoggingString];
  [v3 appendString:v4 withName:@"time"];

  v5 = [v3 appendBool:self->_animated withName:@"animated" ifEqualTo:1];
  if (self->_animated)
  {
    v6 = [v3 appendDouble:@"duration" withName:3 decimalPrecision:self->_duration];
  }

  v7 = [v3 appendObject:self->_timelineIdentifier withName:@"timeline" skipIfNil:0];
  v8 = NSStringFromBLSUpdateFidelity(self->_requestedFidelity);
  v9 = [v3 appendObject:v8 withName:@"fidelity"];

  v10 = [v3 appendObject:self->_userObject withName:@"userObject" skipIfNil:1];
  v11 = [v3 build];

  return v11;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NSDate *)self->_presentationTime bls_loggingString];
  [v3 appendString:v4 withName:@"time"];

  v5 = [v3 appendBool:self->_animated withName:@"animated"];
  if (self->_animated)
  {
    v6 = [v3 appendDouble:@"duration" withName:3 decimalPrecision:self->_duration];
  }

  v7 = [v3 appendObject:self->_timelineIdentifier withName:@"timeline" skipIfNil:0];
  v8 = NSStringFromBLSUpdateFidelity(self->_requestedFidelity);
  v9 = [v3 appendObject:v8 withName:@"fidelity"];

  v10 = [self->_userObject debugDescription];
  v11 = [v3 appendObject:v10 withName:@"userObject" skipIfNil:1];

  v12 = [v3 build];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 userObject];
    presentationTime = self->_presentationTime;
    v7 = [v4 presentationTime];
    if ([(NSDate *)presentationTime isEqual:v7])
    {
      timelineIdentifier = self->_timelineIdentifier;
      v9 = [v4 timelineIdentifier];
      if ([timelineIdentifier isEqual:v9])
      {
        userObject = self->_userObject;
        if (v5 | userObject)
        {
          v11 = [userObject isEqual:v5];
        }

        else
        {
          v11 = 1;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_presentationTime hash];
  v4 = [self->_timelineIdentifier hash]^ v3;
  return v4 ^ [self->_userObject hash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BLSAlwaysOnTimelineEntry alloc];
  presentationTime = self->_presentationTime;
  requestedFidelity = self->_requestedFidelity;
  animated = self->_animated;
  duration = self->_duration;
  timelineIdentifier = self->_timelineIdentifier;
  userObject = self->_userObject;

  return [(BLSAlwaysOnTimelineEntry *)v4 initWithPresentationTime:presentationTime requestedFidelity:requestedFidelity animated:animated duration:timelineIdentifier timelineIdentifier:userObject userObject:duration];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BLSAlwaysOnTimelineUnconfiguredEntry alloc];
  presentationTime = self->_presentationTime;
  requestedFidelity = self->_requestedFidelity;
  animated = self->_animated;
  duration = self->_duration;
  timelineIdentifier = self->_timelineIdentifier;
  userObject = self->_userObject;

  return [(BLSAlwaysOnTimelineUnconfiguredEntry *)v4 initWithPresentationTime:presentationTime requestedFidelity:requestedFidelity animated:animated duration:timelineIdentifier timelineIdentifier:userObject userObject:duration];
}

@end