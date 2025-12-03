@interface _HKWorkoutEffortRelationshipQueryServerConfiguration
- (_HKWorkoutEffortRelationshipQueryServerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKWorkoutEffortRelationshipQueryServerConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _HKWorkoutEffortRelationshipQueryServerConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v6 copyWithZone:zone];
  [v4 setAnchor:self->_anchor];
  [v4 setOptions:self->_options];
  return v4;
}

- (_HKWorkoutEffortRelationshipQueryServerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _HKWorkoutEffortRelationshipQueryServerConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"query_anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v6;

    v5->_options = [coderCopy decodeInt64ForKey:@"query_options"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKWorkoutEffortRelationshipQueryServerConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_anchor forKey:{@"query_anchor", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_options forKey:@"query_options"];
}

@end