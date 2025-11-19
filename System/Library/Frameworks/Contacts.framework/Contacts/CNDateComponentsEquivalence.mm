@interface CNDateComponentsEquivalence
+ (BOOL)canUnifyComponents:(id)a3 withComponents:(id)a4;
+ (BOOL)isCalendar:(id)a3 equivalentToCalendar:(id)a4;
+ (BOOL)isComponent:(int64_t)a3 equivalentToComponent:(int64_t)a4;
@end

@implementation CNDateComponentsEquivalence

+ (BOOL)canUnifyComponents:(id)a3 withComponents:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isComponent:objc_msgSend(v6 equivalentToComponent:{"era"), objc_msgSend(v7, "era")}] && objc_msgSend(a1, "isComponent:equivalentToComponent:", objc_msgSend(v6, "year"), objc_msgSend(v7, "year")) && objc_msgSend(a1, "isComponent:equivalentToComponent:", objc_msgSend(v6, "month"), objc_msgSend(v7, "month")) && (v8 = objc_msgSend(v6, "isLeapMonth"), v8 == objc_msgSend(v7, "isLeapMonth")) && objc_msgSend(a1, "isComponent:equivalentToComponent:", objc_msgSend(v6, "day"), objc_msgSend(v7, "day")))
  {
    v9 = [v6 calendar];
    v10 = [v7 calendar];
    v11 = [a1 isCalendar:v9 equivalentToCalendar:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)isComponent:(int64_t)a3 equivalentToComponent:(int64_t)a4
{
  if (a3 == a4)
  {
    return 1;
  }

  else
  {
    return (a3 == 0x7FFFFFFFFFFFFFFFLL) ^ (a4 == 0x7FFFFFFFFFFFFFFFLL);
  }
}

+ (BOOL)isCalendar:(id)a3 equivalentToCalendar:(id)a4
{
  if ((a3 == 0) == (a4 != 0))
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:a4];
  }
}

@end