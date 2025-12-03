@interface APKActivityProgressTasksSpecifier
- (APKActivityProgressTasksSpecifier)initWithCoder:(id)coder;
- (APKActivityProgressTasksSpecifier)initWithTaskIdentifiers:(id)identifiers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APKActivityProgressTasksSpecifier

- (APKActivityProgressTasksSpecifier)initWithTaskIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = APKActivityProgressTasksSpecifier;
  v6 = [(APKActivityProgressTasksSpecifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskIdentifiers, identifiers);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  taskIdentifiers = [(APKActivityProgressTasksSpecifier *)self taskIdentifiers];
  [coderCopy encodeObject:taskIdentifiers forKey:@"taskIdentifiers"];
}

- (APKActivityProgressTasksSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"taskIdentifiers"];

  v6 = [(APKActivityProgressTasksSpecifier *)self initWithTaskIdentifiers:v5];
  return v6;
}

@end