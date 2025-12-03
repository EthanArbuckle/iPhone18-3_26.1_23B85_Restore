@interface INStartCallIntentDonationMetadata
- (BOOL)isEqual:(id)equal;
- (INStartCallIntentDonationMetadata)init;
- (INStartCallIntentDonationMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INStartCallIntentDonationMetadata

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INStartCallIntentDonationMetadata;
  coderCopy = coder;
  [(INIntentDonationMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"callDuration" forKey:{self->_callDuration, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"timeToEstablish" forKey:self->_timeToEstablish];
  [coderCopy encodeObject:self->_recentCallStatus forKey:@"recentCallStatus"];
  [coderCopy encodeObject:self->_disconnectedReason forKey:@"disconnectedReason"];
}

- (INStartCallIntentDonationMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = INStartCallIntentDonationMetadata;
  v5 = [(INIntentDonationMetadata *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"callDuration"];
    v5->_callDuration = v6;
    [coderCopy decodeDoubleForKey:@"timeToEstablish"];
    v5->_timeToEstablish = v7;
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recentCallStatus"];
    recentCallStatus = v5->_recentCallStatus;
    v5->_recentCallStatus = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disconnectedReason"];
    disconnectedReason = v5->_disconnectedReason;
    v5->_disconnectedReason = v10;

    v12 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = INStartCallIntentDonationMetadata;
  v4 = [(INIntentDonationMetadata *)&v8 copyWithZone:zone];
  [(INStartCallIntentDonationMetadata *)self callDuration];
  [v4 setCallDuration:?];
  [(INStartCallIntentDonationMetadata *)self timeToEstablish];
  [v4 setTimeToEstablish:?];
  recentCallStatus = [(INStartCallIntentDonationMetadata *)self recentCallStatus];
  [v4 setRecentCallStatus:recentCallStatus];

  disconnectedReason = [(INStartCallIntentDonationMetadata *)self disconnectedReason];
  [v4 setDisconnectedReason:disconnectedReason];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(INStartCallIntentDonationMetadata *)self callDuration];
        v8 = v7;
        [(INStartCallIntentDonationMetadata *)v6 callDuration];
        if (v8 != v9 || ([(INStartCallIntentDonationMetadata *)self timeToEstablish], v11 = v10, [(INStartCallIntentDonationMetadata *)v6 timeToEstablish], v11 != v12))
        {
          v15 = 0;
LABEL_15:

          goto LABEL_16;
        }

        recentCallStatus = [(INStartCallIntentDonationMetadata *)self recentCallStatus];
        recentCallStatus2 = [(INStartCallIntentDonationMetadata *)v6 recentCallStatus];
        if (recentCallStatus == recentCallStatus2)
        {
          disconnectedReason = [(INStartCallIntentDonationMetadata *)self disconnectedReason];
          disconnectedReason2 = [(INStartCallIntentDonationMetadata *)v6 disconnectedReason];
          v15 = disconnectedReason == disconnectedReason2;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
        recentCallStatus = v6;
        v6 = 0;
      }
    }

    else
    {
      recentCallStatus = 0;
      v15 = 0;
    }

    goto LABEL_15;
  }

  v15 = 1;
LABEL_16:

  return v15;
}

- (unint64_t)hash
{
  v11.receiver = self;
  v11.super_class = INStartCallIntentDonationMetadata;
  v3 = [(INStartCallIntentDonationMetadata *)&v11 hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_callDuration];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timeToEstablish];
  v7 = [v6 hash];
  v8 = v5 ^ v7 ^ [(NSNumber *)self->_recentCallStatus hash];
  v9 = [(NSNumber *)self->_disconnectedReason hash];

  return v8 ^ v9;
}

- (INStartCallIntentDonationMetadata)init
{
  v3.receiver = self;
  v3.super_class = INStartCallIntentDonationMetadata;
  return [(INIntentDonationMetadata *)&v3 _init];
}

@end