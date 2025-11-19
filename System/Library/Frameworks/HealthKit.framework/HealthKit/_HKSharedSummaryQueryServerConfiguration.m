@interface _HKSharedSummaryQueryServerConfiguration
- (_HKSharedSummaryQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKSharedSummaryQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKSharedSummaryQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setTransaction:self->_transaction];
  [v4 setPackage:self->_package];
  [v4 setIncludedIdentifiers:self->_includedIdentifiers];
  [v4 setIncludedObjectTypes:self->_includedObjectTypes];
  return v4;
}

- (_HKSharedSummaryQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _HKSharedSummaryQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transaction"];
    transaction = v5->_transaction;
    v5->_transaction = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"package"];
    package = v5->_package;
    v5->_package = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"included-identifiers"];
    includedIdentifiers = v5->_includedIdentifiers;
    v5->_includedIdentifiers = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"included-objecttypes"];
    includedObjectTypes = v5->_includedObjectTypes;
    v5->_includedObjectTypes = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKSharedSummaryQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_transaction forKey:{@"transaction", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_package forKey:@"package"];
  [v4 encodeObject:self->_includedIdentifiers forKey:@"included-identifiers"];
  [v4 encodeObject:self->_includedObjectTypes forKey:@"included-objecttypes"];
}

@end