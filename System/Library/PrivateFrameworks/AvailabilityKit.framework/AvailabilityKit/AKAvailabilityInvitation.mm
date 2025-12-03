@interface AKAvailabilityInvitation
- (AKAvailabilityInvitation)initWithAvailableDuringActivityIdentifiers:(id)identifiers unavailableDuringActivityIdentifiers:(id)activityIdentifiers;
- (AKAvailabilityInvitation)initWithStatusKitInvitationPayload:(id)payload;
- (id)_payloadDictionary;
- (id)statusKitInvitationPayloadWithDateCreated:(id)created;
@end

@implementation AKAvailabilityInvitation

- (AKAvailabilityInvitation)initWithAvailableDuringActivityIdentifiers:(id)identifiers unavailableDuringActivityIdentifiers:(id)activityIdentifiers
{
  identifiersCopy = identifiers;
  activityIdentifiersCopy = activityIdentifiers;
  v14.receiver = self;
  v14.super_class = AKAvailabilityInvitation;
  v8 = [(AKAvailabilityInvitation *)&v14 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    availableDuringActivityIdentifiers = v8->_availableDuringActivityIdentifiers;
    v8->_availableDuringActivityIdentifiers = v9;

    v11 = [activityIdentifiersCopy copy];
    unavailableDuringActivityIdentifiers = v8->_unavailableDuringActivityIdentifiers;
    v8->_unavailableDuringActivityIdentifiers = v11;
  }

  return v8;
}

- (AKAvailabilityInvitation)initWithStatusKitInvitationPayload:(id)payload
{
  payloadDictionary = [payload payloadDictionary];
  v5 = payloadDictionary;
  if (payloadDictionary)
  {
    v6 = [payloadDictionary availabilityKit_stringArrayForKey:@"a" allowEmptyString:0];
    v7 = [v5 availabilityKit_stringArrayForKey:@"u" allowEmptyString:0];
    self = [(AKAvailabilityInvitation *)self initWithAvailableDuringActivityIdentifiers:v6 unavailableDuringActivityIdentifiers:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)statusKitInvitationPayloadWithDateCreated:(id)created
{
  createdCopy = created;
  _payloadDictionary = [(AKAvailabilityInvitation *)self _payloadDictionary];
  v6 = [objc_alloc(MEMORY[0x277D680D0]) initWithDictionary:_payloadDictionary dateCreated:createdCopy];

  return v6;
}

- (id)_payloadDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  availableDuringActivityIdentifiers = [(AKAvailabilityInvitation *)self availableDuringActivityIdentifiers];
  v5 = [availableDuringActivityIdentifiers copy];

  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"a"];
  }

  unavailableDuringActivityIdentifiers = [(AKAvailabilityInvitation *)self unavailableDuringActivityIdentifiers];
  v7 = [unavailableDuringActivityIdentifiers copy];

  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"u"];
  }

  v8 = [v3 copy];

  return v8;
}

@end