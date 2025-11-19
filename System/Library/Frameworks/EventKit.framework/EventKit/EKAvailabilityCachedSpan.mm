@interface EKAvailabilityCachedSpan
- (EKAvailabilityCachedSpan)initWithSpan:(id)a3;
- (id)description;
@end

@implementation EKAvailabilityCachedSpan

- (EKAvailabilityCachedSpan)initWithSpan:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EKAvailabilityCachedSpan;
  v5 = [(EKAvailabilityCachedSpan *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(EKAvailabilityCachedSpan *)v5 setSpan:v4];
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

  v6 = [(EKAvailabilityCachedSpan *)self creationDate];
  [v5 setKey:@"creationDate" withDate:v6];

  v7 = [(EKAvailabilityCachedSpan *)self span];
  [v5 setKey:@"span" withObject:v7];

  v8 = [v5 build];

  return v8;
}

@end