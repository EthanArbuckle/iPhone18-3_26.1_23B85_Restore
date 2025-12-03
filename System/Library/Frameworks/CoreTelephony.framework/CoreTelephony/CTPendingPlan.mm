@interface CTPendingPlan
- (BOOL)isEqual:(id)equal;
- (CTPendingPlan)initWithCoder:(id)coder;
- (CTPendingPlan)initWithSmdpURL:(id)l matchingID:(id)d iccidHash:(id)hash;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTPendingPlan

- (CTPendingPlan)initWithSmdpURL:(id)l matchingID:(id)d iccidHash:(id)hash
{
  lCopy = l;
  dCopy = d;
  hashCopy = hash;
  v15.receiver = self;
  v15.super_class = CTPendingPlan;
  v12 = [(CTPendingPlan *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_smdpURL, l);
    objc_storeStrong(&v13->_matchingID, d);
    objc_storeStrong(&v13->_iccidHash, hash);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v27.receiver = self;
  v27.super_class = CTPendingPlan;
  if ([(CTPlan *)&v27 isEqual:equalCopy])
  {
    smdpURL = [(CTPendingPlan *)self smdpURL];
    smdpURL2 = [equalCopy smdpURL];
    if (smdpURL != smdpURL2)
    {
      smdpURL3 = [(CTPendingPlan *)self smdpURL];
      smdpURL4 = [equalCopy smdpURL];
      if (![smdpURL3 isEqual:smdpURL4])
      {
        v9 = 0;
        goto LABEL_16;
      }
    }

    matchingID = [(CTPendingPlan *)self matchingID];
    matchingID2 = [equalCopy matchingID];
    if (matchingID != matchingID2)
    {
      matchingID3 = [(CTPendingPlan *)self matchingID];
      matchingID4 = [equalCopy matchingID];
      if (![matchingID3 isEqual:matchingID4])
      {
        v9 = 0;
        goto LABEL_14;
      }

      v25 = matchingID4;
      v26 = matchingID3;
    }

    iccidHash = [(CTPendingPlan *)self iccidHash];
    iccidHash2 = [equalCopy iccidHash];
    v16 = iccidHash2;
    if (iccidHash == iccidHash2)
    {

      v9 = 1;
    }

    else
    {
      [(CTPendingPlan *)self iccidHash];
      v17 = v24 = smdpURL3;
      [equalCopy iccidHash];
      v23 = matchingID;
      v18 = smdpURL2;
      v19 = smdpURL;
      v21 = v20 = smdpURL4;
      v9 = [v17 isEqual:v21];

      smdpURL4 = v20;
      smdpURL = v19;
      smdpURL2 = v18;
      matchingID = v23;

      smdpURL3 = v24;
    }

    matchingID4 = v25;
    matchingID3 = v26;
    if (matchingID == matchingID2)
    {
LABEL_15:

      if (smdpURL == smdpURL2)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_smdpURL copyWithZone:zone];
  v7 = [(NSString *)self->_matchingID copyWithZone:zone];
  v8 = [(NSString *)self->_iccidHash copyWithZone:zone];
  v9 = [v5 initWithSmdpURL:v6 matchingID:v7 iccidHash:v8];

  return v9;
}

- (CTPendingPlan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTPendingPlan;
  v5 = [(CTPlan *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smdpURL"];
    smdpURL = v5->_smdpURL;
    v5->_smdpURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchingID"];
    matchingID = v5->_matchingID;
    v5->_matchingID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iccidHash"];
    iccidHash = v5->_iccidHash;
    v5->_iccidHash = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTPendingPlan;
  [(CTPlan *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_smdpURL forKey:@"smdpURL"];
  matchingID = self->_matchingID;
  if (matchingID)
  {
    [coderCopy encodeObject:matchingID forKey:@"matchingID"];
  }

  iccidHash = self->_iccidHash;
  if (iccidHash)
  {
    [coderCopy encodeObject:iccidHash forKey:@"iccidHash"];
  }
}

@end