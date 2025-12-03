@interface HDClinicalGatewayCodableGatewaysJournalEntry
- (HDClinicalGatewayCodableGatewaysJournalEntry)initWithCodableResources:(id)resources syncProvencance:(int64_t)provencance;
- (HDClinicalGatewayCodableGatewaysJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalGatewayCodableGatewaysJournalEntry

- (HDClinicalGatewayCodableGatewaysJournalEntry)initWithCodableResources:(id)resources syncProvencance:(int64_t)provencance
{
  resourcesCopy = resources;
  v11.receiver = self;
  v11.super_class = HDClinicalGatewayCodableGatewaysJournalEntry;
  v7 = [(HDClinicalGatewayCodableGatewaysJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [resourcesCopy copy];
    codableResources = v7->_codableResources;
    v7->_codableResources = v8;

    v7->_syncProvenance = provencance;
  }

  return v7;
}

- (HDClinicalGatewayCodableGatewaysJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"resources"];
  if (v7 && ([coderCopy containsValueForKey:@"provenance"] & 1) != 0)
  {
    v12.receiver = self;
    v12.super_class = HDClinicalGatewayCodableGatewaysJournalEntry;
    v8 = [(HDClinicalGatewayCodableGatewaysJournalEntry *)&v12 initWithCoder:coderCopy];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_codableResources, v7);
      v9->_syncProvenance = [coderCopy decodeInt64ForKey:@"provenance"];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  codableResources = self->_codableResources;
  coderCopy = coder;
  [coderCopy encodeObject:codableResources forKey:@"resources"];
  [coderCopy encodeInt64:self->_syncProvenance forKey:@"provenance"];
  v6.receiver = self;
  v6.super_class = HDClinicalGatewayCodableGatewaysJournalEntry;
  [(HDClinicalGatewayCodableGatewaysJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end