@interface AAOBBulletPointModel
- (AAOBBulletPointModel)initWithSymbolNamed:(id)a3 title:(id)a4 description:(id)a5;
@end

@implementation AAOBBulletPointModel

- (AAOBBulletPointModel)initWithSymbolNamed:(id)a3 title:(id)a4 description:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AAOBBulletPointModel;
  v12 = [(AAOBBulletPointModel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_symbolName, a3);
    objc_storeStrong(&v13->_title, a4);
    objc_storeStrong(&v13->_description, a5);
  }

  return v13;
}

@end