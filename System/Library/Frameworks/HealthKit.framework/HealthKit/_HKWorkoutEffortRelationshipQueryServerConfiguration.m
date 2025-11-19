@interface _HKWorkoutEffortRelationshipQueryServerConfiguration
- (_HKWorkoutEffortRelationshipQueryServerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKWorkoutEffortRelationshipQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _HKWorkoutEffortRelationshipQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:a3];
  [v4 setAnchor:self->_anchor];
  [v4 setOptions:self->_options];
  return v4;
}

- (_HKWorkoutEffortRelationshipQueryServerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _HKWorkoutEffortRelationshipQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"query_anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v6;

    v5->_options = [v4 decodeInt64ForKey:@"query_options"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKWorkoutEffortRelationshipQueryServerConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_anchor forKey:{@"query_anchor", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_options forKey:@"query_options"];
}

@end