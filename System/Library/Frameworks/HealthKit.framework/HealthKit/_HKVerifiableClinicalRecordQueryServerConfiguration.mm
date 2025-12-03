@interface _HKVerifiableClinicalRecordQueryServerConfiguration
- (_HKVerifiableClinicalRecordQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKVerifiableClinicalRecordQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKVerifiableClinicalRecordQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setRecordTypes:self->_recordTypes];
  [v4 setSourceTypes:self->_sourceTypes];
  return v4;
}

- (_HKVerifiableClinicalRecordQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _HKVerifiableClinicalRecordQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v8 forKey:@"recordTypes"];
    recordTypes = v5->_recordTypes;
    v5->_recordTypes = v12;

    v14 = [coderCopy decodeObjectOfClasses:v11 forKey:@"sourceTypes"];
    sourceTypes = v5->_sourceTypes;
    v5->_sourceTypes = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKVerifiableClinicalRecordQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_recordTypes forKey:{@"recordTypes", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_sourceTypes forKey:@"sourceTypes"];
}

@end