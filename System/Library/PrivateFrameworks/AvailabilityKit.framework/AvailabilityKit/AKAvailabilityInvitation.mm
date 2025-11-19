@interface AKAvailabilityInvitation
- (AKAvailabilityInvitation)initWithAvailableDuringActivityIdentifiers:(id)a3 unavailableDuringActivityIdentifiers:(id)a4;
- (AKAvailabilityInvitation)initWithStatusKitInvitationPayload:(id)a3;
- (id)_payloadDictionary;
- (id)statusKitInvitationPayloadWithDateCreated:(id)a3;
@end

@implementation AKAvailabilityInvitation

- (AKAvailabilityInvitation)initWithAvailableDuringActivityIdentifiers:(id)a3 unavailableDuringActivityIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AKAvailabilityInvitation;
  v8 = [(AKAvailabilityInvitation *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    availableDuringActivityIdentifiers = v8->_availableDuringActivityIdentifiers;
    v8->_availableDuringActivityIdentifiers = v9;

    v11 = [v7 copy];
    unavailableDuringActivityIdentifiers = v8->_unavailableDuringActivityIdentifiers;
    v8->_unavailableDuringActivityIdentifiers = v11;
  }

  return v8;
}

- (AKAvailabilityInvitation)initWithStatusKitInvitationPayload:(id)a3
{
  v4 = [a3 payloadDictionary];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 availabilityKit_stringArrayForKey:@"a" allowEmptyString:0];
    v7 = [v5 availabilityKit_stringArrayForKey:@"u" allowEmptyString:0];
    self = [(AKAvailabilityInvitation *)self initWithAvailableDuringActivityIdentifiers:v6 unavailableDuringActivityIdentifiers:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)statusKitInvitationPayloadWithDateCreated:(id)a3
{
  v4 = a3;
  v5 = [(AKAvailabilityInvitation *)self _payloadDictionary];
  v6 = [objc_alloc(MEMORY[0x277D680D0]) initWithDictionary:v5 dateCreated:v4];

  return v6;
}

- (id)_payloadDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(AKAvailabilityInvitation *)self availableDuringActivityIdentifiers];
  v5 = [v4 copy];

  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"a"];
  }

  v6 = [(AKAvailabilityInvitation *)self unavailableDuringActivityIdentifiers];
  v7 = [v6 copy];

  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"u"];
  }

  v8 = [v3 copy];

  return v8;
}

@end