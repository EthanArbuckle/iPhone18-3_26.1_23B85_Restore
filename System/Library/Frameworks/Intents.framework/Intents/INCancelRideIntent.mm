@interface INCancelRideIntent
+ (id)intentDescription;
- (INCancelRideIntent)initWithCoder:(id)coder;
- (INCancelRideIntent)initWithRideIdentifier:(NSString *)rideIdentifier;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation INCancelRideIntent

- (id)_dictionaryRepresentation
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"rideIdentifier";
  rideIdentifier = self->_rideIdentifier;
  null = rideIdentifier;
  if (!rideIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v8[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  if (!rideIdentifier)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (INCancelRideIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rideIdentifier"];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F01E0850;
  }

  v7 = [(INCancelRideIntent *)self initWithRideIdentifier:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  rideIdentifier = self->_rideIdentifier;

  return [v4 initWithRideIdentifier:rideIdentifier];
}

- (INCancelRideIntent)initWithRideIdentifier:(NSString *)rideIdentifier
{
  v5 = rideIdentifier;
  v9.receiver = self;
  v9.super_class = INCancelRideIntent;
  v6 = [(INIntent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rideIdentifier, rideIdentifier);
  }

  return v7;
}

+ (id)intentDescription
{
  if (intentDescription_onceToken_31776 != -1)
  {
    dispatch_once(&intentDescription_onceToken_31776, &__block_literal_global_31777);
  }

  v3 = intentDescription_intentDescription_31778;

  return v3;
}

uint64_t __39__INCancelRideIntent_intentDescription__block_invoke()
{
  v0 = [[INIntentDescription alloc] initWithName:@"CancelRideIntent" responseName:@"CancelRideIntentResponse" facadeClass:objc_opt_class() dataClass:0 type:0 isPrivate:0 handleSelector:sel_handleCancelRide_completion_ confirmSelector:sel_confirmCancelRide_completion_ slotsByName:0];
  v1 = intentDescription_intentDescription_31778;
  intentDescription_intentDescription_31778 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end