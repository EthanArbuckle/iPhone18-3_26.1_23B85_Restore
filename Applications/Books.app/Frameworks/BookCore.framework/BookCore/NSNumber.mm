@interface NSNumber
- (id)bc_assertClampedToMinimum:(id)minimum maximum:(id)maximum;
- (id)bc_clampedToMinimum:(id)minimum maximum:(id)maximum;
- (id)bc_clampedToMinimum:(id)minimum maximum:(id)maximum orSubstitute:(id)substitute;
@end

@implementation NSNumber

- (id)bc_clampedToMinimum:(id)minimum maximum:(id)maximum
{
  minimumCopy = minimum;
  maximumCopy = maximum;
  selfCopy = self;
  if ([(NSNumber *)selfCopy compare:minimumCopy]== NSOrderedAscending)
  {
    v9 = minimumCopy;

    selfCopy = v9;
  }

  if ([(NSNumber *)selfCopy compare:maximumCopy]== &dword_0 + 1)
  {
    v10 = maximumCopy;

    selfCopy = v10;
  }

  return selfCopy;
}

- (id)bc_assertClampedToMinimum:(id)minimum maximum:(id)maximum
{
  minimumCopy = minimum;
  maximumCopy = maximum;
  if (([(NSNumber *)self compare:minimumCopy]== NSOrderedAscending || [(NSNumber *)self compare:maximumCopy]== &dword_0 + 1) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1ED990(minimumCopy, maximumCopy, self);
  }

  v8 = [(NSNumber *)self bc_clampedToMinimum:minimumCopy maximum:maximumCopy];

  return v8;
}

- (id)bc_clampedToMinimum:(id)minimum maximum:(id)maximum orSubstitute:(id)substitute
{
  maximumCopy = maximum;
  substituteCopy = substitute;
  selfCopy = self;
  if ([(NSNumber *)selfCopy compare:minimum]== NSOrderedAscending || [(NSNumber *)selfCopy compare:maximumCopy]== &dword_0 + 1)
  {
    v11 = substituteCopy;

    selfCopy = v11;
  }

  return selfCopy;
}

@end