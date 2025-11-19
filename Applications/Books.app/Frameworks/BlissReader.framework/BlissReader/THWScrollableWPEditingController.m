@interface THWScrollableWPEditingController
- (void)setSelection:(id)a3 withFlags:(unint64_t)a4;
@end

@implementation THWScrollableWPEditingController

- (void)setSelection:(id)a3 withFlags:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = THWScrollableWPEditingController;
  [(THWScrollableWPEditingController *)&v4 setSelection:a3 withFlags:a4 & 0xFFFFFFFFFFFFFFAFLL];
}

@end