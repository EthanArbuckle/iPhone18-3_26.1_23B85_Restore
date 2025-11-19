@interface HKConceptIdentifier
+ (HKConceptIdentifier)diastolicBloodPressure;
+ (HKConceptIdentifier)identifierWithNumber:(id)a3;
+ (HKConceptIdentifier)identifierWithRawIdentifier:(int64_t)a3;
+ (HKConceptIdentifier)inMemoryConceptIdentifier;
+ (HKConceptIdentifier)medication;
+ (HKConceptIdentifier)root;
+ (HKConceptIdentifier)systolicBloodPressure;
- (BOOL)isEqual:(id)a3;
- (HKConceptIdentifier)init;
- (HKConceptIdentifier)initWithCoder:(id)a3;
- (HKConceptIdentifier)initWithRawIdentifier:(int64_t)a3;
@end

@implementation HKConceptIdentifier

- (HKConceptIdentifier)initWithRawIdentifier:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HKConceptIdentifier;
  result = [(HKConceptIdentifier *)&v5 init];
  if (result)
  {
    result->_rawIdentifier = a3;
  }

  return result;
}

- (HKConceptIdentifier)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (HKConceptIdentifier)identifierWithRawIdentifier:(int64_t)a3
{
  v3 = [[HKConceptIdentifier alloc] initWithRawIdentifier:a3];

  return v3;
}

+ (HKConceptIdentifier)identifierWithNumber:(id)a3
{
  v3 = a3;
  v4 = [HKConceptIdentifier alloc];
  v5 = [v3 longLongValue];

  v6 = [(HKConceptIdentifier *)v4 initWithRawIdentifier:v5];

  return v6;
}

+ (HKConceptIdentifier)inMemoryConceptIdentifier
{
  v2 = [[HKConceptIdentifier alloc] initWithRawIdentifier:0x7FFFFFFFFFFFFFFFLL];

  return v2;
}

+ (HKConceptIdentifier)root
{
  v2 = [[HKConceptIdentifier alloc] initWithRawIdentifier:105];

  return v2;
}

+ (HKConceptIdentifier)medication
{
  v2 = [[HKConceptIdentifier alloc] initWithRawIdentifier:1001];

  return v2;
}

+ (HKConceptIdentifier)diastolicBloodPressure
{
  v2 = [[HKConceptIdentifier alloc] initWithRawIdentifier:27146];

  return v2;
}

+ (HKConceptIdentifier)systolicBloodPressure
{
  v2 = [[HKConceptIdentifier alloc] initWithRawIdentifier:10793];

  return v2;
}

- (HKConceptIdentifier)initWithCoder:(id)a3
{
  v4 = [a3 decodeInt64ForKey:@"identifier"];

  return [(HKConceptIdentifier *)self initWithRawIdentifier:v4];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKConceptIdentifier *)v4 rawIdentifier]== self->_rawIdentifier;
  }

  return v5;
}

@end