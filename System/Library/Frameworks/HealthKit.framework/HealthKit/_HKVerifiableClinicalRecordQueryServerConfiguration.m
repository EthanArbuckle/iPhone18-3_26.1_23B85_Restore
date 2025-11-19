@interface _HKVerifiableClinicalRecordQueryServerConfiguration
- (_HKVerifiableClinicalRecordQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKVerifiableClinicalRecordQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKVerifiableClinicalRecordQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setRecordTypes:self->_recordTypes];
  [v4 setSourceTypes:self->_sourceTypes];
  return v4;
}

- (_HKVerifiableClinicalRecordQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _HKVerifiableClinicalRecordQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v8 forKey:@"recordTypes"];
    recordTypes = v5->_recordTypes;
    v5->_recordTypes = v12;

    v14 = [v4 decodeObjectOfClasses:v11 forKey:@"sourceTypes"];
    sourceTypes = v5->_sourceTypes;
    v5->_sourceTypes = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKVerifiableClinicalRecordQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_recordTypes forKey:{@"recordTypes", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_sourceTypes forKey:@"sourceTypes"];
}

@end