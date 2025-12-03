@interface HKUserDomainConceptQueryConfiguration
- (HKUserDomainConceptQueryConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKUserDomainConceptQueryConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = HKUserDomainConceptQueryConfiguration;
  v4 = [(HKQueryServerConfiguration *)&v8 copyWithZone:zone];
  v5 = [(HKQueryAnchor *)self->_anchor copy];
  [v4 setAnchor:v5];

  v6 = [(NSArray *)self->_sortDescriptors copy];
  [v4 setSortDescriptors:v6];

  [v4 setLimit:self->_limit];
  return v4;
}

- (HKUserDomainConceptQueryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKUserDomainConceptQueryConfiguration;
  v5 = [(HKQueryServerConfiguration *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v6;

    v5->_limit = [coderCopy decodeIntegerForKey:@"limit"];
    v8 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKUserDomainConceptQueryConfiguration;
  coderCopy = coder;
  [(HKQueryServerConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_anchor forKey:{@"anchor", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_sortDescriptors forKey:@"sortDescriptors"];
  [coderCopy encodeInteger:self->_limit forKey:@"limit"];
}

@end