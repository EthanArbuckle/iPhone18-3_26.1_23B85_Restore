@interface BuddyChoiceTapGestureRecognizer
- (BuddyChoiceTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action choice:(id)choice;
@end

@implementation BuddyChoiceTapGestureRecognizer

- (BuddyChoiceTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action choice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, target);
  actionCopy = action;
  obj = 0;
  objc_storeStrong(&obj, choice);
  v7 = selfCopy;
  selfCopy = 0;
  v11.receiver = v7;
  v11.super_class = BuddyChoiceTapGestureRecognizer;
  v8 = [(BuddyChoiceTapGestureRecognizer *)&v11 initWithTarget:location[0] action:actionCopy];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(selfCopy + 1, obj);
  }

  v9 = selfCopy;
  objc_storeStrong(&obj, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

@end