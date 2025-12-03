@interface NSFalsePredicate
- (NSFalsePredicate)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSFalsePredicate

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be encoded by non-keyed archivers" userInfo:0]);
  }

  v5.receiver = self;
  v5.super_class = NSFalsePredicate;
  [(NSPredicate *)&v5 encodeWithCoder:coder];
}

- (NSFalsePredicate)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSPredicates and NSExpressions cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  return &__NSTheOneFalsePredicate;
}

@end