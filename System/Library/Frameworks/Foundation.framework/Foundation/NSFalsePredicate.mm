@interface NSFalsePredicate
- (NSFalsePredicate)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSFalsePredicate

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSFalsePredicate;
  [(NSPredicate *)&v5 encodeWithCoder:a3];
}

- (NSFalsePredicate)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  return &__NSTheOneFalsePredicate;
}

@end