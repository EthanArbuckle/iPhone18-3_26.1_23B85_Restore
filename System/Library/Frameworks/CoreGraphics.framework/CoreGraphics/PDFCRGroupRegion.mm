@interface PDFCRGroupRegion
- (PDFCRGroupRegion)initWithBoundingQuad:(id)quad layoutDirection:(unint64_t)direction subregions:(id)subregions parent:(id)parent;
- (PDFCRGroupRegion)parent;
- (void)removeSubregion:(id)subregion;
@end

@implementation PDFCRGroupRegion

- (PDFCRGroupRegion)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)removeSubregion:(id)subregion
{
  subregionCopy = subregion;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_subregions];
  [v4 removeObject:subregionCopy];
  if ([v4 count])
  {
    v5 = v4;
    subregions = self->_subregions;
    self->_subregions = v5;
  }

  else
  {
    subregions = objc_loadWeakRetained(&self->_parent);
    [subregions removeChild:self];
  }
}

- (PDFCRGroupRegion)initWithBoundingQuad:(id)quad layoutDirection:(unint64_t)direction subregions:(id)subregions parent:(id)parent
{
  quadCopy = quad;
  subregionsCopy = subregions;
  parentCopy = parent;
  v19.receiver = self;
  v19.super_class = PDFCRGroupRegion;
  v14 = [(PDFCRGroupRegion *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_boundingQuad, quad);
    v15->_layoutDirection = direction;
    objc_storeStrong(&v15->_subregions, subregions);
    v16 = objc_opt_new();
    children = v15->_children;
    v15->_children = v16;

    objc_storeWeak(&v15->_parent, parentCopy);
    v15->_type = 5;
  }

  return v15;
}

@end