@interface _AKScheduledRequest
+ (id)scheduledRequestForRequest:(id)request info:(id)info;
@end

@implementation _AKScheduledRequest

+ (id)scheduledRequestForRequest:(id)request info:(id)info
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v8 = 0;
  objc_storeStrong(&v8, info);
  v7 = objc_alloc_init(selfCopy);
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