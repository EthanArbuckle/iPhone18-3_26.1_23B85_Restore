@interface NSDate
- (id)fba_toString;
@end

@implementation NSDate

- (id)fba_toString
{
  if (qword_10010AF58 != -1)
  {
    sub_100092200();
  }

  v3 = qword_10010AF50;

  return [v3 stringFromDate:self];
}

@end