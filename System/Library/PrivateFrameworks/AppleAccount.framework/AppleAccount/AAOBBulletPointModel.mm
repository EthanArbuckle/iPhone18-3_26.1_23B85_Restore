@interface AAOBBulletPointModel
- (AAOBBulletPointModel)initWithSymbolNamed:(id)named title:(id)title description:(id)description;
@end

@implementation AAOBBulletPointModel

- (AAOBBulletPointModel)initWithSymbolNamed:(id)named title:(id)title description:(id)description
{
  namedCopy = named;
  titleCopy = title;
  descriptionCopy = description;
  v15.receiver = self;
  v15.super_class = AAOBBulletPointModel;
  v12 = [(AAOBBulletPointModel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_symbolName, named);
    objc_storeStrong(&v13->_title, title);
    objc_storeStrong(&v13->_description, description);
  }

  return v13;
}

@end