@interface HKSharingRecipientIdentifier
+ (id)sharingRecipientIdentifierFromStringRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKSharingRecipientIdentifier)initWithCoder:(id)a3;
- (id)_initWithRecipientIdentifierType:(unint64_t)a3 invitationUUID:(id)a4 clinicalAccountIdentifier:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSharingRecipientIdentifier

- (id)_initWithRecipientIdentifierType:(unint64_t)a3 invitationUUID:(id)a4 clinicalAccountIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = HKSharingRecipientIdentifier;
  v10 = [(HKSharingRecipientIdentifier *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v8 copy];
    invitationUUID = v11->_invitationUUID;
    v11->_invitationUUID = v12;

    v14 = [v9 copy];
    clinicalAccountIdentifier = v11->_clinicalAccountIdentifier;
    v11->_clinicalAccountIdentifier = v14;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"Clinical Account";
  if (!self->_type)
  {
    v7 = @"Shared Summary";
  }

  v8 = [v3 stringWithFormat:@"<%@:%p %@ %@ %@>", v5, self, v7, self->_invitationUUID, self->_clinicalAccountIdentifier];

  return v8;
}

- (unint64_t)hash
{
  type = self->_type;
  v4 = [(NSUUID *)self->_invitationUUID hash]^ type;
  return v4 ^ [(NSString *)self->_clinicalAccountIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (self->_type != v4[1])
  {
    goto LABEL_9;
  }

  invitationUUID = self->_invitationUUID;
  v6 = v4[2];
  if (invitationUUID != v6 && (!v6 || ![(NSUUID *)invitationUUID isEqual:?]))
  {
    goto LABEL_9;
  }

  clinicalAccountIdentifier = self->_clinicalAccountIdentifier;
  v8 = v4[3];
  if (clinicalAccountIdentifier == v8)
  {
    v9 = 1;
    goto LABEL_10;
  }

  if (v8)
  {
    v9 = [(NSString *)clinicalAccountIdentifier isEqual:?];
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"Type"];
  [v5 encodeObject:self->_invitationUUID forKey:@"InvitationUUID"];
  [v5 encodeObject:self->_clinicalAccountIdentifier forKey:@"ClinicalAccountIdentifier"];
}

- (HKSharingRecipientIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"Type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InvitationUUID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClinicalAccountIdentifier"];

  v8 = [(HKSharingRecipientIdentifier *)self _initWithRecipientIdentifierType:v5 invitationUUID:v6 clinicalAccountIdentifier:v7];
  return v8;
}

+ (id)sharingRecipientIdentifierFromStringRepresentation:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"SharedSummary-"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"SharedSummary-", "length")}];
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
    v6 = [[HKSharingRecipientIdentifier alloc] initForInvitationUUID:v5];

LABEL_5:
    goto LABEL_7;
  }

  if ([v3 hasPrefix:@"ClinicalAccount-"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"ClinicalAccount-", "length")}];
    v6 = [[HKSharingRecipientIdentifier alloc] initForClinicalAccountIdentifier:v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end