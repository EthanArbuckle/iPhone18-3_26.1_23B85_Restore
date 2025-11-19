@interface HKUserDomainConceptQueryConfiguration
- (HKUserDomainConceptQueryConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKUserDomainConceptQueryConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = HKUserDomainConceptQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v8 copyWithZone:a3];
  v5 = [(HKQueryAnchor *)self->_anchor copy];
  [v4 setAnchor:v5];

  v6 = [(NSArray *)self->_sortDescriptors copy];
  [v4 setSortDescriptors:v6];

  [v4 setLimit:self->_limit];
  return v4;
}

- (HKUserDomainConceptQueryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKUserDomainConceptQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v6;

    v5->_limit = [v4 decodeIntegerForKey:@"limit"];
    v8 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKUserDomainConceptQueryConfiguration;
  v4 = a3;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_anchor forKey:{@"anchor", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_sortDescriptors forKey:@"sortDescriptors"];
  [v4 encodeInteger:self->_limit forKey:@"limit"];
}

@end