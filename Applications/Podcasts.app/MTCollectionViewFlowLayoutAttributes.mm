@interface MTCollectionViewFlowLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (CGRect)naturalRect;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation MTCollectionViewFlowLayoutAttributes

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = MTCollectionViewFlowLayoutAttributes;
  v3 = [(MTCollectionViewFlowLayoutAttributes *)&v7 hash];
  v4 = self->_floating - v3 + 32 * v3;
  v5 = self->_open - v4 + 32 * v4;
  return self->_showsSeperator - v5 + 32 * v5 + 923521;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v23.receiver = self, v23.super_class = MTCollectionViewFlowLayoutAttributes, -[MTCollectionViewFlowLayoutAttributes isEqual:](&v23, "isEqual:", equalCopy)) && (v5 = [equalCopy isFloating], v5 == -[MTCollectionViewFlowLayoutAttributes isFloating](self, "isFloating")) && (v6 = objc_msgSend(equalCopy, "isPartiallyOffTheTop"), v6 == -[MTCollectionViewFlowLayoutAttributes isPartiallyOffTheTop](self, "isPartiallyOffTheTop")) && (v7 = objc_msgSend(equalCopy, "isOpen"), v7 == -[MTCollectionViewFlowLayoutAttributes isOpen](self, "isOpen")) && (v8 = objc_msgSend(equalCopy, "showsSeperator"), v8 == -[MTCollectionViewFlowLayoutAttributes showsSeperator](self, "showsSeperator")))
  {
    [equalCopy naturalRect];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [(MTCollectionViewFlowLayoutAttributes *)self naturalRect];
    v25.origin.x = v19;
    v25.origin.y = v20;
    v25.size.width = v21;
    v25.size.height = v22;
    v24.origin.x = v12;
    v24.origin.y = v14;
    v24.size.width = v16;
    v24.size.height = v18;
    v9 = CGRectEqualToRect(v24, v25);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = MTCollectionViewFlowLayoutAttributes;
  v4 = [(MTCollectionViewFlowLayoutAttributes *)&v6 copyWithZone:zone];
  [v4 setFloating:{-[MTCollectionViewFlowLayoutAttributes isFloating](self, "isFloating")}];
  [v4 setOpen:{-[MTCollectionViewFlowLayoutAttributes isOpen](self, "isOpen")}];
  [v4 setShowsSeperator:{-[MTCollectionViewFlowLayoutAttributes showsSeperator](self, "showsSeperator")}];
  return v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = MTCollectionViewFlowLayoutAttributes;
  v3 = [(MTCollectionViewFlowLayoutAttributes *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" Floating %i, Open %i, Shows Seperator %i", -[MTCollectionViewFlowLayoutAttributes isFloating](self, "isFloating"), -[MTCollectionViewFlowLayoutAttributes isOpen](self, "isOpen"), -[MTCollectionViewFlowLayoutAttributes showsSeperator](self, "showsSeperator")];

  return v4;
}

- (CGRect)naturalRect
{
  x = self->_naturalRect.origin.x;
  y = self->_naturalRect.origin.y;
  width = self->_naturalRect.size.width;
  height = self->_naturalRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end