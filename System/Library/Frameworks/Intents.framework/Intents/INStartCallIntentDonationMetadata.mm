@interface INStartCallIntentDonationMetadata
- (BOOL)isEqual:(id)a3;
- (INStartCallIntentDonationMetadata)init;
- (INStartCallIntentDonationMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INStartCallIntentDonationMetadata

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INStartCallIntentDonationMetadata;
  v4 = a3;
  [(INIntentDonationMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"callDuration" forKey:{self->_callDuration, v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"timeToEstablish" forKey:self->_timeToEstablish];
  [v4 encodeObject:self->_recentCallStatus forKey:@"recentCallStatus"];
  [v4 encodeObject:self->_disconnectedReason forKey:@"disconnectedReason"];
}

- (INStartCallIntentDonationMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = INStartCallIntentDonationMetadata;
  v5 = [(INIntentDonationMetadata *)&v14 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"callDuration"];
    v5->_callDuration = v6;
    [v4 decodeDoubleForKey:@"timeToEstablish"];
    v5->_timeToEstablish = v7;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recentCallStatus"];
    recentCallStatus = v5->_recentCallStatus;
    v5->_recentCallStatus = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disconnectedReason"];
    disconnectedReason = v5->_disconnectedReason;
    v5->_disconnectedReason = v10;

    v12 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = INStartCallIntentDonationMetadata;
  v4 = [(INIntentDonationMetadata *)&v8 copyWithZone:a3];
  [(INStartCallIntentDonationMetadata *)self callDuration];
  [v4 setCallDuration:?];
  [(INStartCallIntentDonationMetadata *)self timeToEstablish];
  [v4 setTimeToEstablish:?];
  v5 = [(INStartCallIntentDonationMetadata *)self recentCallStatus];
  [v4 setRecentCallStatus:v5];

  v6 = [(INStartCallIntentDonationMetadata *)self disconnectedReason];
  [v4 setDisconnectedReason:v6];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
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

        v13 = [(INStartCallIntentDonationMetadata *)self recentCallStatus];
        v14 = [(INStartCallIntentDonationMetadata *)v6 recentCallStatus];
        if (v13 == v14)
        {
          v16 = [(INStartCallIntentDonationMetadata *)self disconnectedReason];
          v17 = [(INStartCallIntentDonationMetadata *)v6 disconnectedReason];
          v15 = v16 == v17;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
        v13 = v6;
        v6 = 0;
      }
    }

    else
    {
      v13 = 0;
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