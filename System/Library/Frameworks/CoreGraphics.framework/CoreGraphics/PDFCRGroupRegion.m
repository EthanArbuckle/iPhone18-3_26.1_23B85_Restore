@interface PDFCRGroupRegion
- (PDFCRGroupRegion)initWithBoundingQuad:(id)a3 layoutDirection:(unint64_t)a4 subregions:(id)a5 parent:(id)a6;
- (PDFCRGroupRegion)parent;
- (void)removeSubregion:(id)a3;
@end

@implementation PDFCRGroupRegion

- (PDFCRGroupRegion)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)removeSubregion:(id)a3
{
  v7 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_subregions];
  [v4 removeObject:v7];
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

- (PDFCRGroupRegion)initWithBoundingQuad:(id)a3 layoutDirection:(unint64_t)a4 subregions:(id)a5 parent:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = PDFCRGroupRegion;
  v14 = [(PDFCRGroupRegion *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_boundingQuad, a3);
    v15->_layoutDirection = a4;
    objc_storeStrong(&v15->_subregions, a5);
    v16 = objc_opt_new();
    children = v15->_children;
    v15->_children = v16;

    objc_storeWeak(&v15->_parent, v13);
    v15->_type = 5;
  }

  return v15;
}

@end