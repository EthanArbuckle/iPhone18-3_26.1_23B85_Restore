@interface BKAdjustGoalModalViewController
+ (void)createAsync:(int64_t)async :(int64_t)a4 :(id)a5 :(id)a6;
- (BKAdjustGoalModalViewController)initWithCoder:(id)coder;
- (BKAdjustGoalModalViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation BKAdjustGoalModalViewController

+ (void)createAsync:(int64_t)async :(int64_t)a4 :(id)a5 :(id)a6
{
  swift_unknownObjectRetain();
  v10 = a6;
  sub_1006662F8(async, a4, a5, v10);
  swift_unknownObjectRelease();
}

- (BKAdjustGoalModalViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_1007A2254();
    bundleCopy = bundle;
    name = sub_1007A2214();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(BKAdjustGoalModalViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (BKAdjustGoalModalViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(BKAdjustGoalModalViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end