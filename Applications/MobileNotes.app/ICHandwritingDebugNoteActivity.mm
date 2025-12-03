@interface ICHandwritingDebugNoteActivity
- (ICHandwritingDebugNoteActivity)initWithShowHandwritingDebugBlock:(id)block;
@end

@implementation ICHandwritingDebugNoteActivity

- (ICHandwritingDebugNoteActivity)initWithShowHandwritingDebugBlock:(id)block
{
  v4.receiver = self;
  v4.super_class = ICHandwritingDebugNoteActivity;
  return [(ICHandwritingDebugNoteActivity *)&v4 initWithPerformActivity:block];
}

@end