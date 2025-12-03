@interface BLSAlwaysOnTimelineEntry
- (BLSAlwaysOnTimelineEntry)initWithPresentationTime:(id)time requestedFidelity:(int64_t)fidelity animated:(BOOL)animated duration:(double)duration timelineIdentifier:(id)identifier userObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation BLSAlwaysOnTimelineEntry

- (BLSAlwaysOnTimelineEntry)initWithPresentationTime:(id)time requestedFidelity:(int64_t)fidelity animated:(BOOL)animated duration:(double)duration timelineIdentifier:(id)identifier userObject:(id)object
{
  timeCopy = time;
  identifierCopy = identifier;
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = BLSAlwaysOnTimelineEntry;
  v18 = [(BLSAlwaysOnTimelineEntry *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_presentationTime, time);
    v19->_requestedFidelity = fidelity;
    v19->_animated = animated;
    v19->_duration = duration;
    objc_storeStrong(&v19->_timelineIdentifier, identifier);
    objc_storeStrong(&v19->_userObject, object);
  }

  return v19;
}

- (int64_t)compare:(id)compare
{
  presentationTime = self->_presentationTime;
  presentationTime = [compare presentationTime];
  v5 = [(NSDate *)presentationTime compare:presentationTime];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bls_shortLoggingString = [(NSDate *)self->_presentationTime bls_shortLoggingString];
  [v3 appendString:bls_shortLoggingString withName:@"time"];

  v5 = [v3 appendBool:self->_animated withName:@"animated" ifEqualTo:1];
  if (self->_animated)
  {
    v6 = [v3 appendDouble:@"duration" withName:3 decimalPrecision:self->_duration];
  }

  v7 = [v3 appendObject:self->_timelineIdentifier withName:@"timeline" skipIfNil:0];
  v8 = NSStringFromBLSUpdateFidelity(self->_requestedFidelity);
  v9 = [v3 appendObject:v8 withName:@"fidelity"];

  v10 = [v3 appendObject:self->_userObject withName:@"userObject" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bls_loggingString = [(NSDate *)self->_presentationTime bls_loggingString];
  [v3 appendString:bls_loggingString withName:@"time"];

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

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userObject = [equalCopy userObject];
    presentationTime = self->_presentationTime;
    presentationTime = [equalCopy presentationTime];
    if ([(NSDate *)presentationTime isEqual:presentationTime])
    {
      timelineIdentifier = self->_timelineIdentifier;
      timelineIdentifier = [equalCopy timelineIdentifier];
      if ([timelineIdentifier isEqual:timelineIdentifier])
      {
        userObject = self->_userObject;
        if (userObject | userObject)
        {
          v11 = [userObject isEqual:userObject];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (id)mutableCopyWithZone:(_NSZone *)zone
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