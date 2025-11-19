@interface OS_la_object
- (NSString)description;
- (OS_la_object)init;
- (void)dealloc;
@end

@implementation OS_la_object

- (OS_la_object)init
{
  v3.receiver = self;
  v3.super_class = OS_la_object;

  return 0;
}

- (void)dealloc
{
  la_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_la_object;
  [(OS_la_object *)&v3 dealloc];
}

- (NSString)description
{
  v9 = *MEMORY[0x277D85DE8];
  result = objc_lookUpClass("NSString");
  if (result)
  {
    v4 = result;
    v5 = la_matrix_cols(&self->super.super);
    v6 = la_matrix_rows(&self->super.super);
    __sprintf_chk(v8, 0, 0x800uLL, "%ld %ld\n", v6, v5);
    result = [(NSString *)v4 stringWithFormat:[(NSString *)v4 stringWithUTF8String:"%s"], v8];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end