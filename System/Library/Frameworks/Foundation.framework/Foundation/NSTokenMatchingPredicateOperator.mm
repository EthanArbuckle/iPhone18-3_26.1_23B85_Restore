@interface NSTokenMatchingPredicateOperator
- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject;
- (id)symbol;
@end

@implementation NSTokenMatchingPredicateOperator

- (id)symbol
{
  _modifierString = [(NSStringPredicateOperator *)self _modifierString];

  return [@"TOKENMATCHES" stringByAppendingString:_modifierString];
}

- (BOOL)performPrimitiveOperationUsingObject:(id)object andObject:(id)andObject
{
  if (!object || !andObject)
  {
    return 0;
  }

  flags = [(NSStringPredicateOperator *)self flags];
  if ((flags & 4) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = flags & 3;
    if ((flags & 8) != 0)
    {
      v8 = +[_NSPredicateOperatorUtilities retainedLocale];
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:
  if (_NSIsNSString())
  {
    v10 = [_NSPredicateUtilities _processAndTokenize:object flags:v7 locale:v8];
  }

  else
  {
    if ((_NSIsNSArray() & 1) == 0 && (_NSIsNSSet() & 1) == 0 && !_NSIsNSOrderedSet())
    {
      goto LABEL_24;
    }

    v10 = [_NSPredicateUtilities _collapseAndTokenize:object flags:v7 locale:v8];
  }

  v11 = v10;
  if (!_NSIsNSString())
  {
    if ((_NSIsNSArray() & 1) != 0 || (_NSIsNSSet() & 1) != 0 || _NSIsNSOrderedSet())
    {
      v12 = [_NSPredicateUtilities _collapseAndTokenize:andObject flags:v7 locale:v8];
      goto LABEL_21;
    }

LABEL_24:

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Unable to tokenize : %@", 0), 0}]);
  }

  v12 = [_NSPredicateUtilities _processAndTokenize:andObject flags:v7 locale:v8];
LABEL_21:
  v13 = v12;

  return [v11 intersectsSet:v13];
}

@end