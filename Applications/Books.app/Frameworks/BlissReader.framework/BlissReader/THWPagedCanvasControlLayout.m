@interface THWPagedCanvasControlLayout
- (void)validate;
@end

@implementation THWPagedCanvasControlLayout

- (void)validate
{
  v3.receiver = self;
  v3.super_class = THWPagedCanvasControlLayout;
  [(THWControlLayout *)&v3 validate];
  [(THWPagedCanvasControlLayoutDelegate *)self->_delegate pagedCanvasControlLayoutDidValidate:self];
}

@end