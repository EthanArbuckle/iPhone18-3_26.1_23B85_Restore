@interface NSMutableURLRequest(AskPermission)
- (void)ap_setNullableValue:()AskPermission forHTTPHeaderField:;
@end

@implementation NSMutableURLRequest(AskPermission)

- (void)ap_setNullableValue:()AskPermission forHTTPHeaderField:
{
  if (a3)
  {
    return [self setValue:? forHTTPHeaderField:?];
  }

  return self;
}

@end