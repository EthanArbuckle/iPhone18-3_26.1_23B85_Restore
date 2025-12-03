@interface RequestTask
- (id)initForClient:(id)client withOptions:(id)options;
@end

@implementation RequestTask

- (id)initForClient:(id)client withOptions:(id)options
{
  clientCopy = client;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = RequestTask;
  v9 = [(Task *)&v12 init];
  p_isa = &v9->super.super.super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_client, client);
    objc_storeStrong(p_isa + 7, options);
  }

  return p_isa;
}

@end