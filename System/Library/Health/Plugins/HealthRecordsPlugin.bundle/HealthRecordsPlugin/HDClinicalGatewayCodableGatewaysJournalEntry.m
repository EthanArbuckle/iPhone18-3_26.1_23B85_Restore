@interface HDClinicalGatewayCodableGatewaysJournalEntry
- (HDClinicalGatewayCodableGatewaysJournalEntry)initWithCodableResources:(id)a3 syncProvencance:(int64_t)a4;
- (HDClinicalGatewayCodableGatewaysJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalGatewayCodableGatewaysJournalEntry

- (HDClinicalGatewayCodableGatewaysJournalEntry)initWithCodableResources:(id)a3 syncProvencance:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = HDClinicalGatewayCodableGatewaysJournalEntry;
  v7 = [(HDClinicalGatewayCodableGatewaysJournalEntry *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    codableResources = v7->_codableResources;
    v7->_codableResources = v8;

    v7->_syncProvenance = a4;
  }

  return v7;
}

- (HDClinicalGatewayCodableGatewaysJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"resources"];
  if (v7 && ([v4 containsValueForKey:@"provenance"] & 1) != 0)
  {
    v12.receiver = self;
    v12.super_class = HDClinicalGatewayCodableGatewaysJournalEntry;
    v8 = [(HDClinicalGatewayCodableGatewaysJournalEntry *)&v12 initWithCoder:v4];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_codableResources, v7);
      v9->_syncProvenance = [v4 decodeInt64ForKey:@"provenance"];
    }

    self = v9;
    v10 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  codableResources = self->_codableResources;
  v5 = a3;
  [v5 encodeObject:codableResources forKey:@"resources"];
  [v5 encodeInt64:self->_syncProvenance forKey:@"provenance"];
  v6.receiver = self;
  v6.super_class = HDClinicalGatewayCodableGatewaysJournalEntry;
  [(HDClinicalGatewayCodableGatewaysJournalEntry *)&v6 encodeWithCoder:v5];
}

@end