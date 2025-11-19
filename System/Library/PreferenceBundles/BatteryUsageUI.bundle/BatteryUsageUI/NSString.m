@interface NSString
+ (id)chargingIntervalTypes;
+ (id)priorities;
- (BOOL)isSupported;
- (int)statePriority;
- (signed)chargingIntervalType;
@end

@implementation NSString

+ (id)priorities
{
  if (qword_187C20 != -1)
  {
    sub_114424();
  }

  v3 = qword_187C18;

  return v3;
}

+ (id)chargingIntervalTypes
{
  if (qword_187C30 != -1)
  {
    sub_114438();
  }

  v3 = qword_187C28;

  return v3;
}

- (BOOL)isSupported
{
  v3 = [objc_opt_class() chargingIntervalTypes];
  v4 = [v3 objectForKeyedSubscript:self];
  LOBYTE(self) = v4 != 0;

  return self;
}

- (int)statePriority
{
  v3 = [objc_opt_class() priorities];
  v4 = [v3 objectForKeyedSubscript:self];
  v5 = [v4 intValue];

  return v5;
}

- (signed)chargingIntervalType
{
  v3 = [objc_opt_class() chargingIntervalTypes];
  v4 = [v3 objectForKeyedSubscript:self];
  v5 = [v4 shortValue];

  return v5;
}

@end