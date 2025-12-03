@interface MTRContentLauncherClusterStyleInformationStruct
- (MTRContentLauncherClusterStyleInformationStruct)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MTRContentLauncherClusterStyleInformationStruct

- (MTRContentLauncherClusterStyleInformationStruct)init
{
  v8.receiver = self;
  v8.super_class = MTRContentLauncherClusterStyleInformationStruct;
  v2 = [(MTRContentLauncherClusterStyleInformationStruct *)&v8 init];
  v3 = v2;
  if (v2)
  {
    imageURL = v2->_imageURL;
    v2->_imageURL = 0;

    color = v3->_color;
    v3->_color = 0;

    size = v3->_size;
    v3->_size = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MTRContentLauncherClusterStyleInformationStruct);
  imageURL = [(MTRContentLauncherClusterStyleInformationStruct *)self imageURL];
  [(MTRContentLauncherClusterStyleInformationStruct *)v4 setImageURL:imageURL];

  color = [(MTRContentLauncherClusterStyleInformationStruct *)self color];
  [(MTRContentLauncherClusterStyleInformationStruct *)v4 setColor:color];

  v7 = [(MTRContentLauncherClusterStyleInformationStruct *)self size];
  [(MTRContentLauncherClusterStyleInformationStruct *)v4 setSize:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: imageURL:%@ color:%@; size:%@; >", v5, self->_imageURL, self->_color, self->_size];;

  return v6;
}

@end