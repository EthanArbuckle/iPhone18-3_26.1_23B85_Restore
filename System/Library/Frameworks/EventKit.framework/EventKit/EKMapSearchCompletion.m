@interface EKMapSearchCompletion
- (EKMapSearchCompletion)initWithMapSearchCompletion:(id)a3;
- (id)description;
@end

@implementation EKMapSearchCompletion

- (EKMapSearchCompletion)initWithMapSearchCompletion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EKMapSearchCompletion;
  v6 = [(EKMapSearchCompletion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapSearchCompletion, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(EKMapSearchCompletion *)self CalClassName];
  v5 = [(EKMapSearchCompletion *)self title];
  v6 = [(EKMapSearchCompletion *)self subtitle];
  v7 = [v3 stringWithFormat:@"<%@: %p> { title = %@, subtitle = %@ }", v4, self, v5, v6];

  return v7;
}

@end