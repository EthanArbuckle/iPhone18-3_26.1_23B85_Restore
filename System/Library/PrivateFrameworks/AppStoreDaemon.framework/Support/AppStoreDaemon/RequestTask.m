@interface RequestTask
- (id)initForClient:(id)a3 withOptions:(id)a4;
@end

@implementation RequestTask

- (id)initForClient:(id)a3 withOptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RequestTask;
  v9 = [(Task *)&v12 init];
  p_isa = &v9->super.super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_client, a3);
    objc_storeStrong(p_isa + 7, a4);
  }

  return p_isa;
}

@end