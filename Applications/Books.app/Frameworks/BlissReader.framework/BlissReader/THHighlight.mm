@interface THHighlight
- (void)dealloc;
@end

@implementation THHighlight

- (void)dealloc
{
  [(THHighlight *)self setAnnotation:0];
  [(THHighlight *)self setLines:0];
  v3.receiver = self;
  v3.super_class = THHighlight;
  [(THHighlight *)&v3 dealloc];
}

@end