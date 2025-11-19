@interface TelephonyDelegateEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesDelegate:(id)a3;
@end

@implementation TelephonyDelegateEntry

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 == self)
    {
      v7 = 1;
    }

    else
    {
      v5 = [(TelephonyDelegateEntry *)self delegate];
      v6 = [(TelephonyDelegateEntry *)v4 delegate];
      v7 = v5 == v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)matchesDelegate:(id)a3
{
  v4 = a3;
  v5 = [(TelephonyDelegateEntry *)self delegate];

  v6 = 0;
  if (v4 && v5)
  {
    v7 = [(TelephonyDelegateEntry *)self delegate];
    v6 = v7 == v4;
  }

  return v6;
}

@end