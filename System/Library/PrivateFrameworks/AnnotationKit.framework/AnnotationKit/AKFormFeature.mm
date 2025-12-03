@interface AKFormFeature
+ (id)featureWithRect:(CGRect)rect onPage:(id)page;
- (AKFormFeature)initWithRect:(CGRect)rect onPage:(id)page;
- (AKPageController)page;
- (CGRect)rect;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation AKFormFeature

+ (id)featureWithRect:(CGRect)rect onPage:(id)page
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pageCopy = page;
  v10 = [[self alloc] initWithRect:pageCopy onPage:{x, y, width, height}];

  return v10;
}

- (AKFormFeature)initWithRect:(CGRect)rect onPage:(id)page
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pageCopy = page;
  v13.receiver = self;
  v13.super_class = AKFormFeature;
  v10 = [(AKFormFeature *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_rect.origin.x = x;
    v10->_rect.origin.y = y;
    v10->_rect.size.width = width;
    v10->_rect.size.height = height;
    objc_storeWeak(&v10->_page, pageCopy);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  size = self->_rect.size;
  *(v4 + 16) = self->_rect.origin;
  *(v4 + 32) = size;
  WeakRetained = objc_loadWeakRetained(&self->_page);
  objc_storeWeak((v4 + 8), WeakRetained);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  WeakRetained = objc_loadWeakRetained(&self->_page);
  [v3 appendFormat:@"frame = (%g %g; %g %g); ", *&self->_rect.origin.x, *&self->_rect.origin.y, *&self->_rect.size.width, *&self->_rect.size.height];
  [v3 appendFormat:@"page = %@>", WeakRetained];

  return v3;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AKPageController)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

@end