@interface BKAdjustGoalModalViewController
+ (void)createAsync:(int64_t)a3 :(int64_t)a4 :(id)a5 :(id)a6;
- (BKAdjustGoalModalViewController)initWithCoder:(id)a3;
- (BKAdjustGoalModalViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation BKAdjustGoalModalViewController

+ (void)createAsync:(int64_t)a3 :(int64_t)a4 :(id)a5 :(id)a6
{
  swift_unknownObjectRetain();
  v10 = a6;
  sub_1006662F8(a3, a4, a5, v10);
  swift_unknownObjectRelease();
}

- (BKAdjustGoalModalViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_1007A2254();
    v8 = a4;
    a3 = sub_1007A2214();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(BKAdjustGoalModalViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (BKAdjustGoalModalViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(BKAdjustGoalModalViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end