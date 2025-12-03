@interface THWScrollableWPEditingController
- (void)setSelection:(id)selection withFlags:(unint64_t)flags;
@end

@implementation THWScrollableWPEditingController

- (void)setSelection:(id)selection withFlags:(unint64_t)flags
{
  v4.receiver = self;
  v4.super_class = THWScrollableWPEditingController;
  [(THWScrollableWPEditingController *)&v4 setSelection:selection withFlags:flags & 0xFFFFFFFFFFFFFFAFLL];
}

@end