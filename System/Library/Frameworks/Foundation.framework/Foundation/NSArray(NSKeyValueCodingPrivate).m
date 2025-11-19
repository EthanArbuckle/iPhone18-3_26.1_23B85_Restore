@interface NSArray(NSKeyValueCodingPrivate)
- (uint64_t)_mutableArrayValueForKeyPath:()NSKeyValueCodingPrivate ofObjectAtIndex:;
- (uint64_t)_mutableOrderedSetValueForKeyPath:()NSKeyValueCodingPrivate ofObjectAtIndex:;
- (uint64_t)_mutableSetValueForKeyPath:()NSKeyValueCodingPrivate ofObjectAtIndex:;
- (uint64_t)_setValue:()NSKeyValueCodingPrivate forKeyPath:ofObjectAtIndex:;
- (uint64_t)_validateValue:()NSKeyValueCodingPrivate forKeyPath:ofObjectAtIndex:error:;
- (uint64_t)_valueForKeyPath:()NSKeyValueCodingPrivate ofObjectAtIndex:;
@end

@implementation NSArray(NSKeyValueCodingPrivate)

- (uint64_t)_valueForKeyPath:()NSKeyValueCodingPrivate ofObjectAtIndex:
{
  v5 = [a1 objectAtIndex:a4];

  return [v5 valueForKeyPath:a3];
}

- (uint64_t)_mutableArrayValueForKeyPath:()NSKeyValueCodingPrivate ofObjectAtIndex:
{
  v5 = [a1 objectAtIndex:a4];

  return [v5 mutableArrayValueForKeyPath:a3];
}

- (uint64_t)_mutableOrderedSetValueForKeyPath:()NSKeyValueCodingPrivate ofObjectAtIndex:
{
  v5 = [a1 objectAtIndex:a4];

  return [v5 mutableOrderedSetValueForKeyPath:a3];
}

- (uint64_t)_mutableSetValueForKeyPath:()NSKeyValueCodingPrivate ofObjectAtIndex:
{
  v5 = [a1 objectAtIndex:a4];

  return [v5 mutableSetValueForKeyPath:a3];
}

- (uint64_t)_setValue:()NSKeyValueCodingPrivate forKeyPath:ofObjectAtIndex:
{
  v7 = [a1 objectAtIndex:a5];

  return [v7 setValue:a3 forKeyPath:a4];
}

- (uint64_t)_validateValue:()NSKeyValueCodingPrivate forKeyPath:ofObjectAtIndex:error:
{
  v9 = [a1 objectAtIndex:a5];

  return [v9 validateValue:a3 forKeyPath:a4 error:a6];
}

@end