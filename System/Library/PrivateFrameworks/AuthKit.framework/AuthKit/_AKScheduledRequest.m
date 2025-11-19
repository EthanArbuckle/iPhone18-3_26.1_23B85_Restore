@interface _AKScheduledRequest
+ (id)scheduledRequestForRequest:(id)a3 info:(id)a4;
@end

@implementation _AKScheduledRequest

+ (id)scheduledRequestForRequest:(id)a3 info:(id)a4
{
  v10 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = objc_alloc_init(v10);
  if (v7)
  {
    objc_storeStrong(v7 + 1, location[0]);
    objc_storeStrong(v7 + 2, v8);
  }

  v5 = _objc_retain(v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end