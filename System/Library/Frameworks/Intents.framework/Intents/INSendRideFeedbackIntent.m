@interface INSendRideFeedbackIntent
+ (id)intentDescription;
- (INSendRideFeedbackIntent)initWithCoder:(id)a3;
- (INSendRideFeedbackIntent)initWithRideIdentifier:(NSString *)rideIdentifier;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INSendRideFeedbackIntent

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"rideIdentifier";
  rideIdentifier = self->_rideIdentifier;
  v4 = rideIdentifier;
  if (!rideIdentifier)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"rating";
  rating = self->_rating;
  v6 = rating;
  if (!rating)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"tip";
  tip = self->_tip;
  v8 = tip;
  if (!tip)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (tip)
  {
    if (rating)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (rideIdentifier)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!rating)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (rideIdentifier)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  rideIdentifier = self->_rideIdentifier;
  v5 = a3;
  [v5 encodeObject:rideIdentifier forKey:@"rideIdentifier"];
  [v5 encodeObject:self->_rating forKey:@"rating"];
  [v5 encodeObject:self->_tip forKey:@"tip"];
}

- (INSendRideFeedbackIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rideIdentifier"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F01E0850;
  }

  v8 = [(INSendRideFeedbackIntent *)self initWithRideIdentifier:v7];

  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rating"];
    rating = v8->_rating;
    v8->_rating = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tip"];
    tip = v8->_tip;
    v8->_tip = v11;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithRideIdentifier:", self->_rideIdentifier}];
  [v4 setRating:self->_rating];
  [v4 setTip:self->_tip];
  return v4;
}

- (INSendRideFeedbackIntent)initWithRideIdentifier:(NSString *)rideIdentifier
{
  v4 = rideIdentifier;
  v9.receiver = self;
  v9.super_class = INSendRideFeedbackIntent;
  v5 = [(INIntent *)&v9 init];
  if (v5)
  {
    v6 = [(NSString *)v4 copy];
    v7 = v5->_rideIdentifier;
    v5->_rideIdentifier = v6;
  }

  return v5;
}

+ (id)intentDescription
{
  if (intentDescription_onceToken_68452 != -1)
  {
    dispatch_once(&intentDescription_onceToken_68452, &__block_literal_global_68453);
  }

  v3 = intentDescription_intentDescription_68454;

  return v3;
}

uint64_t __45__INSendRideFeedbackIntent_intentDescription__block_invoke()
{
  v0 = [[INIntentDescription alloc] initWithName:@"SendRideFeedbackIntent" responseName:@"SendRideFeedbackIntentResponse" facadeClass:objc_opt_class() dataClass:0 type:0 isPrivate:0 handleSelector:sel_handleSendRideFeedback_completion_ confirmSelector:sel_confirmSendRideFeedback_completion_ slotsByName:0];
  v1 = intentDescription_intentDescription_68454;
  intentDescription_intentDescription_68454 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end