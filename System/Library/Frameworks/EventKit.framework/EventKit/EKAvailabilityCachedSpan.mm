@interface EKAvailabilityCachedSpan
- (EKAvailabilityCachedSpan)initWithSpan:(id)span;
- (id)description;
@end

@implementation EKAvailabilityCachedSpan

- (EKAvailabilityCachedSpan)initWithSpan:(id)span
{
  spanCopy = span;
  v9.receiver = self;
  v9.super_class = EKAvailabilityCachedSpan;
  v5 = [(EKAvailabilityCachedSpan *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(EKAvailabilityCachedSpan *)v5 setSpan:spanCopy];
    v7 = objc_opt_new();
    [(EKAvailabilityCachedSpan *)v6 setCreationDate:v7];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E6992F88]);
  v10.receiver = self;
  v10.super_class = EKAvailabilityCachedSpan;
  v4 = [(EKAvailabilityCachedSpan *)&v10 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  creationDate = [(EKAvailabilityCachedSpan *)self creationDate];
  [v5 setKey:@"creationDate" withDate:creationDate];

  span = [(EKAvailabilityCachedSpan *)self span];
  [v5 setKey:@"span" withObject:span];

  build = [v5 build];

  return build;
}

@end