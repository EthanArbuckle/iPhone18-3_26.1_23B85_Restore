@interface MKPublisherIcon
- (id)initUsingName:(id)a3 andImage:(id)a4;
@end

@implementation MKPublisherIcon

- (id)initUsingName:(id)a3 andImage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MKPublisherIcon;
  v9 = [(MKPublisherIcon *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_publisherName, a3);
    objc_storeStrong(p_isa + 1, a4);
  }

  return p_isa;
}

@end