@interface HKSharingRecipientIdentifier
+ (id)sharingRecipientIdentifierFromStringRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (HKSharingRecipientIdentifier)initWithCoder:(id)coder;
- (id)_initWithRecipientIdentifierType:(unint64_t)type invitationUUID:(id)d clinicalAccountIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSharingRecipientIdentifier

- (id)_initWithRecipientIdentifierType:(unint64_t)type invitationUUID:(id)d clinicalAccountIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = HKSharingRecipientIdentifier;
  v10 = [(HKSharingRecipientIdentifier *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [dCopy copy];
    invitationUUID = v11->_invitationUUID;
    v11->_invitationUUID = v12;

    v14 = [identifierCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (self->_type != equalCopy[1])
  {
    goto LABEL_9;
  }

  invitationUUID = self->_invitationUUID;
  v6 = equalCopy[2];
  if (invitationUUID != v6 && (!v6 || ![(NSUUID *)invitationUUID isEqual:?]))
  {
    goto LABEL_9;
  }

  clinicalAccountIdentifier = self->_clinicalAccountIdentifier;
  v8 = equalCopy[3];
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

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"Type"];
  [coderCopy encodeObject:self->_invitationUUID forKey:@"InvitationUUID"];
  [coderCopy encodeObject:self->_clinicalAccountIdentifier forKey:@"ClinicalAccountIdentifier"];
}

- (HKSharingRecipientIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"Type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InvitationUUID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClinicalAccountIdentifier"];

  v8 = [(HKSharingRecipientIdentifier *)self _initWithRecipientIdentifierType:v5 invitationUUID:v6 clinicalAccountIdentifier:v7];
  return v8;
}

+ (id)sharingRecipientIdentifierFromStringRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy hasPrefix:@"SharedSummary-"])
  {
    v4 = [representationCopy substringFromIndex:{objc_msgSend(@"SharedSummary-", "length")}];
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
    v6 = [[HKSharingRecipientIdentifier alloc] initForInvitationUUID:v5];

LABEL_5:
    goto LABEL_7;
  }

  if ([representationCopy hasPrefix:@"ClinicalAccount-"])
  {
    v4 = [representationCopy substringFromIndex:{objc_msgSend(@"ClinicalAccount-", "length")}];
    v6 = [[HKSharingRecipientIdentifier alloc] initForClinicalAccountIdentifier:v4];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

@end