@interface CTPendingPlan
- (BOOL)isEqual:(id)a3;
- (CTPendingPlan)initWithCoder:(id)a3;
- (CTPendingPlan)initWithSmdpURL:(id)a3 matchingID:(id)a4 iccidHash:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTPendingPlan

- (CTPendingPlan)initWithSmdpURL:(id)a3 matchingID:(id)a4 iccidHash:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CTPendingPlan;
  v12 = [(CTPendingPlan *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_smdpURL, a3);
    objc_storeStrong(&v13->_matchingID, a4);
    objc_storeStrong(&v13->_iccidHash, a5);
  }

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", smdpURL=%@", self->_smdpURL];
  if (self->_matchingID)
  {
    [v3 appendFormat:@", matchingID=%@", self->_matchingID];
  }

  if (self->_iccidHash)
  {
    [v3 appendFormat:@", iccidHash=%@", self->_iccidHash];
  }

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v27.receiver = self;
  v27.super_class = CTPendingPlan;
  if ([(CTPlan *)&v27 isEqual:v6])
  {
    v7 = [(CTPendingPlan *)self smdpURL];
    v8 = [v6 smdpURL];
    if (v7 != v8)
    {
      v3 = [(CTPendingPlan *)self smdpURL];
      v4 = [v6 smdpURL];
      if (![v3 isEqual:v4])
      {
        v9 = 0;
        goto LABEL_16;
      }
    }

    v10 = [(CTPendingPlan *)self matchingID];
    v11 = [v6 matchingID];
    if (v10 != v11)
    {
      v12 = [(CTPendingPlan *)self matchingID];
      v13 = [v6 matchingID];
      if (![v12 isEqual:v13])
      {
        v9 = 0;
        goto LABEL_14;
      }

      v25 = v13;
      v26 = v12;
    }

    v14 = [(CTPendingPlan *)self iccidHash];
    v15 = [v6 iccidHash];
    v16 = v15;
    if (v14 == v15)
    {

      v9 = 1;
    }

    else
    {
      [(CTPendingPlan *)self iccidHash];
      v17 = v24 = v3;
      [v6 iccidHash];
      v23 = v10;
      v18 = v8;
      v19 = v7;
      v21 = v20 = v4;
      v9 = [v17 isEqual:v21];

      v4 = v20;
      v7 = v19;
      v8 = v18;
      v10 = v23;

      v3 = v24;
    }

    v13 = v25;
    v12 = v26;
    if (v10 == v11)
    {
LABEL_15:

      if (v7 == v8)
      {
LABEL_17:

        goto LABEL_18;
      }

LABEL_16:

      goto LABEL_17;
    }

LABEL_14:

    goto LABEL_15;
  }

  v9 = 0;
LABEL_18:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_smdpURL copyWithZone:a3];
  v7 = [(NSString *)self->_matchingID copyWithZone:a3];
  v8 = [(NSString *)self->_iccidHash copyWithZone:a3];
  v9 = [v5 initWithSmdpURL:v6 matchingID:v7 iccidHash:v8];

  return v9;
}

- (CTPendingPlan)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTPendingPlan;
  v5 = [(CTPlan *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smdpURL"];
    smdpURL = v5->_smdpURL;
    v5->_smdpURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchingID"];
    matchingID = v5->_matchingID;
    v5->_matchingID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iccidHash"];
    iccidHash = v5->_iccidHash;
    v5->_iccidHash = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTPendingPlan;
  [(CTPlan *)&v7 encodeWithCoder:v4];
  [v4 encodeObject:self->_smdpURL forKey:@"smdpURL"];
  matchingID = self->_matchingID;
  if (matchingID)
  {
    [v4 encodeObject:matchingID forKey:@"matchingID"];
  }

  iccidHash = self->_iccidHash;
  if (iccidHash)
  {
    [v4 encodeObject:iccidHash forKey:@"iccidHash"];
  }
}

@end