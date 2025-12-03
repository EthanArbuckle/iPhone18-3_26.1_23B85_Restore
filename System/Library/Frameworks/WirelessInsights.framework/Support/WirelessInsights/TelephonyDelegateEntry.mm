@interface TelephonyDelegateEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesDelegate:(id)delegate;
@end

@implementation TelephonyDelegateEntry

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (equalCopy == self)
    {
      v7 = 1;
    }

    else
    {
      delegate = [(TelephonyDelegateEntry *)self delegate];
      delegate2 = [(TelephonyDelegateEntry *)equalCopy delegate];
      v7 = delegate == delegate2;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)matchesDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(TelephonyDelegateEntry *)self delegate];

  v6 = 0;
  if (delegateCopy && delegate)
  {
    delegate2 = [(TelephonyDelegateEntry *)self delegate];
    v6 = delegate2 == delegateCopy;
  }

  return v6;
}

@end