@interface BuddyChoiceTapGestureRecognizer
- (BuddyChoiceTapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 choice:(id)a5;
@end

@implementation BuddyChoiceTapGestureRecognizer

- (BuddyChoiceTapGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4 choice:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  obj = 0;
  objc_storeStrong(&obj, a5);
  v7 = v15;
  v15 = 0;
  v11.receiver = v7;
  v11.super_class = BuddyChoiceTapGestureRecognizer;
  v8 = [(BuddyChoiceTapGestureRecognizer *)&v11 initWithTarget:location[0] action:v13];
  v15 = v8;
  objc_storeStrong(&v15, v8);
  if (v8)
  {
    objc_storeStrong(v15 + 1, obj);
  }

  v9 = v15;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v9;
}

@end