@interface SQLiteCursor
- (void)dealloc;
@end

@implementation SQLiteCursor

- (void)dealloc
{
  free(self->_columnDeclaredTypes);
  v3.receiver = self;
  v3.super_class = SQLiteCursor;
  [(SQLiteCursor *)&v3 dealloc];
}

@end