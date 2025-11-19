@interface BNPresentableIdentification
+ (id)genericIdentificationForPresentable:(id)a3;
+ (id)identificationWithRequesterIdentifier:(id)a3;
+ (id)identificationWithRequesterIdentifier:(id)a3 requestIdentifier:(id)a4;
+ (id)identificationWithRequesterIdentifier:(id)a3 requestIdentifier:(id)a4 uniqueIdentifier:(id)a5;
+ (id)requesterIdentificationForPresentable:(id)a3;
+ (id)uniqueIdentificationForPresentable:(id)a3;
- (BNPresentableIdentification)initWithBSXPCCoder:(id)a3;
- (BNPresentableIdentification)initWithRequesterIdentifier:(id)a3 requestIdentifier:(id)a4 uniqueIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation BNPresentableIdentification

+ (id)identificationWithRequesterIdentifier:(id)a3 requestIdentifier:(id)a4 uniqueIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithRequesterIdentifier:v10 requestIdentifier:v9 uniqueIdentifier:v8];

  return v11;
}

+ (id)identificationWithRequesterIdentifier:(id)a3 requestIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithRequesterIdentifier:v7 requestIdentifier:v6 uniqueIdentifier:0];

  return v8;
}

+ (id)identificationWithRequesterIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithRequesterIdentifier:v4 requestIdentifier:0 uniqueIdentifier:0];

  return v5;
}

+ (id)uniqueIdentificationForPresentable:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 requesterIdentifier];
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 requestIdentifier];
  }

  else
  {
    v6 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v4 uniquePresentableIdentifier];
    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  if (!v6 && !v7)
  {
    v8 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v8 = [[a1 alloc] initWithRequesterIdentifier:v5 requestIdentifier:v6 uniqueIdentifier:v7];
LABEL_15:

  return v8;
}

+ (id)genericIdentificationForPresentable:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 requesterIdentifier];
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 requestIdentifier];
  }

  else
  {
    v6 = 0;
  }

  if (v5 | v6)
  {
    v7 = [[a1 alloc] initWithRequesterIdentifier:v5 requestIdentifier:v6 uniqueIdentifier:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)requesterIdentificationForPresentable:(id)a3
{
  v4 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 requesterIdentifier], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [[a1 alloc] initWithRequesterIdentifier:v5 requestIdentifier:0 uniqueIdentifier:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BNPresentableIdentification)initWithRequesterIdentifier:(id)a3 requestIdentifier:(id)a4 uniqueIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [BNPresentableIdentification initWithRequesterIdentifier:a2 requestIdentifier:self uniqueIdentifier:?];
  }

  v20.receiver = self;
  v20.super_class = BNPresentableIdentification;
  v12 = [(BNPresentableIdentification *)&v20 init];
  if (v12)
  {
    v13 = [v9 copy];
    requesterIdentifier = v12->_requesterIdentifier;
    v12->_requesterIdentifier = v13;

    v15 = [v10 copy];
    requestIdentifier = v12->_requestIdentifier;
    v12->_requestIdentifier = v15;

    v17 = [v11 copy];
    uniquePresentableIdentifier = v12->_uniquePresentableIdentifier;
    v12->_uniquePresentableIdentifier = v17;
  }

  return v12;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  requesterIdentifier = self->_requesterIdentifier;
  v5 = a3;
  [v5 encodeObject:requesterIdentifier forKey:@"requesterIdentifier"];
  [v5 encodeObject:self->_requestIdentifier forKey:@"requestIdentifier"];
  [v5 encodeObject:self->_uniquePresentableIdentifier forKey:@"uniquePresentableIdentifier"];
}

- (BNPresentableIdentification)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BNPresentableIdentification;
  v5 = [(BNPresentableIdentification *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requesterIdentifier"];
    requesterIdentifier = v5->_requesterIdentifier;
    v5->_requesterIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniquePresentableIdentifier"];
    uniquePresentableIdentifier = v5->_uniquePresentableIdentifier;
    v5->_uniquePresentableIdentifier = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  requesterIdentifier = self->_requesterIdentifier;
  requestIdentifier = self->_requestIdentifier;
  uniquePresentableIdentifier = self->_uniquePresentableIdentifier;

  return [v4 initWithRequesterIdentifier:requesterIdentifier requestIdentifier:requestIdentifier uniqueIdentifier:uniquePresentableIdentifier];
}

- (void)initWithRequesterIdentifier:(uint64_t)a1 requestIdentifier:(uint64_t)a2 uniqueIdentifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNPresentableIdentification.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"requesterID"}];
}

@end