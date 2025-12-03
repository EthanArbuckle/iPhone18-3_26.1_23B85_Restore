@interface VNFrameworkResourceDescriptor
+ (id)descriptorForFrameworkContainingClass:(Class)class error:(id *)error;
+ (id)descriptorForFrameworkContainingClassNamed:(id)named error:(id *)error;
+ (id)descriptorForFrameworkIdentifier:(id)identifier error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (VNFrameworkResourceDescriptor)initWithBundle:(id)bundle;
- (id)description;
- (unint64_t)hash;
@end

@implementation VNFrameworkResourceDescriptor

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      frameworkBundle = [(VNFrameworkResourceDescriptor *)self frameworkBundle];
      frameworkBundle2 = [(VNFrameworkResourceDescriptor *)v5 frameworkBundle];

      v8 = [frameworkBundle isEqual:frameworkBundle2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  frameworkBundle = [(VNFrameworkResourceDescriptor *)self frameworkBundle];
  v3 = [frameworkBundle hash];

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = VNFrameworkResourceDescriptor;
  v3 = [(VNFrameworkResourceDescriptor *)&v8 description];
  frameworkBundle = [(VNFrameworkResourceDescriptor *)self frameworkBundle];
  bundlePath = [frameworkBundle bundlePath];
  v6 = [v3 stringByAppendingFormat:@" %@", bundlePath];

  return v6;
}

- (VNFrameworkResourceDescriptor)initWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v9.receiver = self;
  v9.super_class = VNFrameworkResourceDescriptor;
  _init = [(VNResourceDescriptor *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, bundle);
  }

  return v7;
}

+ (id)descriptorForFrameworkContainingClassNamed:(id)named error:(id *)error
{
  namedCopy = named;
  v7 = NSClassFromString(namedCopy);
  if (v7)
  {
    error = [self descriptorForFrameworkContainingClass:v7 error:error];
  }

  else if (error)
  {
    namedCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The class %@ could not be resolved at runtime", namedCopy];
    *error = [VNError errorForDataUnavailableWithLocalizedDescription:namedCopy];

    error = 0;
  }

  return error;
}

+ (id)descriptorForFrameworkContainingClass:(Class)class error:(id *)error
{
  v7 = [MEMORY[0x1E696AAE8] bundleForClass:?];
  if (v7)
  {
    error = [[self alloc] initWithBundle:v7];
  }

  else if (error)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = NSStringFromClass(class);
    v10 = [v8 initWithFormat:@"Could not locate framework containing %@", v9];

    *error = [VNError errorForDataUnavailableWithLocalizedDescription:v10];

    error = 0;
  }

  return error;
}

+ (id)descriptorForFrameworkIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:identifierCopy];
  if (v7)
  {
    error = [[self alloc] initWithBundle:v7];
  }

  else if (error)
  {
    identifierCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not locate framework with identifier %@", identifierCopy];
    *error = [VNError errorForDataUnavailableWithLocalizedDescription:identifierCopy];

    error = 0;
  }

  return error;
}

@end