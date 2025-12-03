@interface MKPublisherIcon
- (id)initUsingName:(id)name andImage:(id)image;
@end

@implementation MKPublisherIcon

- (id)initUsingName:(id)name andImage:(id)image
{
  nameCopy = name;
  imageCopy = image;
  v12.receiver = self;
  v12.super_class = MKPublisherIcon;
  v9 = [(MKPublisherIcon *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_publisherName, name);
    objc_storeStrong(p_isa + 1, image);
  }

  return p_isa;
}

@end