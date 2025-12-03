@interface EKMapSearchCompletion
- (EKMapSearchCompletion)initWithMapSearchCompletion:(id)completion;
- (id)description;
@end

@implementation EKMapSearchCompletion

- (EKMapSearchCompletion)initWithMapSearchCompletion:(id)completion
{
  completionCopy = completion;
  v9.receiver = self;
  v9.super_class = EKMapSearchCompletion;
  v6 = [(EKMapSearchCompletion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapSearchCompletion, completion);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  calClassName = [(EKMapSearchCompletion *)self CalClassName];
  title = [(EKMapSearchCompletion *)self title];
  subtitle = [(EKMapSearchCompletion *)self subtitle];
  v7 = [v3 stringWithFormat:@"<%@: %p> { title = %@, subtitle = %@ }", calClassName, self, title, subtitle];

  return v7;
}

@end