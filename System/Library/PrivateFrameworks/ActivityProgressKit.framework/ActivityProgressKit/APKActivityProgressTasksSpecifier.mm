@interface APKActivityProgressTasksSpecifier
- (APKActivityProgressTasksSpecifier)initWithCoder:(id)a3;
- (APKActivityProgressTasksSpecifier)initWithTaskIdentifiers:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APKActivityProgressTasksSpecifier

- (APKActivityProgressTasksSpecifier)initWithTaskIdentifiers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APKActivityProgressTasksSpecifier;
  v6 = [(APKActivityProgressTasksSpecifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskIdentifiers, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(APKActivityProgressTasksSpecifier *)self taskIdentifiers];
  [v4 encodeObject:v5 forKey:@"taskIdentifiers"];
}

- (APKActivityProgressTasksSpecifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"taskIdentifiers"];

  v6 = [(APKActivityProgressTasksSpecifier *)self initWithTaskIdentifiers:v5];
  return v6;
}

@end