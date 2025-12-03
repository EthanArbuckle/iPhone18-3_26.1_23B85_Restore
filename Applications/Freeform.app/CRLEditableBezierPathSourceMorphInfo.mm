@interface CRLEditableBezierPathSourceMorphInfo
- (CRLEditableBezierPathSourceMorphInfo)initWithEditableBezierPathSource:(id)source;
- (id)originalNodeForNode:(id)node;
- (id)originalSmoothNodeForNode:(id)node;
- (unint64_t)originalNodeIndexForNode:(id)node;
- (unint64_t)originalSubpathIndexForNode:(id)node;
@end

@implementation CRLEditableBezierPathSourceMorphInfo

- (CRLEditableBezierPathSourceMorphInfo)initWithEditableBezierPathSource:(id)source
{
  sourceCopy = source;
  v33.receiver = self;
  v33.super_class = CRLEditableBezierPathSourceMorphInfo;
  v5 = [(CRLEditableBezierPathSourceMorphInfo *)&v33 init];
  if (v5)
  {
    v6 = [sourceCopy copy];
    v7 = [sourceCopy copy];
    [v7 updateSmoothNodes];
    v27 = v6;
    objc_storeStrong(&v5->mOriginal, v6);
    v26 = v7;
    objc_storeStrong(&v5->mSmoothOriginal, v7);
    v8 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    mOriginalNodeIndexMapping = v5->mOriginalNodeIndexMapping;
    v5->mOriginalNodeIndexMapping = v8;

    subpaths = [sourceCopy subpaths];
    v11 = [subpaths count];

    v29 = v11;
    if (v11)
    {
      v12 = 0;
      v13 = &_s10Foundation9IndexPathVSHAAMc_ptr;
      v28 = sourceCopy;
      do
      {
        subpaths2 = [sourceCopy subpaths];
        v15 = [subpaths2 objectAtIndexedSubscript:v12];

        v30 = v15;
        nodes = [v15 nodes];
        v17 = [nodes count];
        if (v17)
        {
          v18 = 0;
          v31 = v17;
          v32 = v12;
          do
          {
            v19 = v5->mOriginalNodeIndexMapping;
            v20 = [v13[90] numberWithUnsignedInteger:v12];
            v34[0] = v20;
            v21 = [v13[90] numberWithUnsignedInteger:v18];
            v34[1] = v21;
            [NSArray arrayWithObjects:v34 count:2];
            v23 = v22 = v13;
            v24 = [nodes objectAtIndexedSubscript:v18];
            [(NSMapTable *)v19 setObject:v23 forKey:v24];

            v13 = v22;
            v12 = v32;
            ++v18;
          }

          while (v31 != v18);
        }

        ++v12;
        sourceCopy = v28;
      }

      while (v12 != v29);
    }
  }

  return v5;
}

- (id)originalNodeForNode:(id)node
{
  v4 = [(NSMapTable *)self->mOriginalNodeIndexMapping objectForKeyedSubscript:node];
  if (v4)
  {
    subpaths = [(CRLEditableBezierPathSource *)self->mOriginal subpaths];
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [subpaths objectAtIndexedSubscript:{objc_msgSend(v6, "unsignedIntegerValue")}];

    nodes = [v7 nodes];
    v9 = [v4 objectAtIndexedSubscript:1];
    v10 = [nodes objectAtIndexedSubscript:{objc_msgSend(v9, "unsignedIntegerValue")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)originalSubpathIndexForNode:(id)node
{
  v3 = [(NSMapTable *)self->mOriginalNodeIndexMapping objectForKeyedSubscript:node];
  v4 = [v3 objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)originalNodeIndexForNode:(id)node
{
  v3 = [(NSMapTable *)self->mOriginalNodeIndexMapping objectForKeyedSubscript:node];
  v4 = [v3 objectAtIndexedSubscript:1];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)originalSmoothNodeForNode:(id)node
{
  v4 = [(NSMapTable *)self->mOriginalNodeIndexMapping objectForKeyedSubscript:node];
  if (v4)
  {
    subpaths = [(CRLEditableBezierPathSource *)self->mSmoothOriginal subpaths];
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [subpaths objectAtIndexedSubscript:{objc_msgSend(v6, "unsignedIntegerValue")}];

    nodes = [v7 nodes];
    v9 = [v4 objectAtIndexedSubscript:1];
    v10 = [nodes objectAtIndexedSubscript:{objc_msgSend(v9, "unsignedIntegerValue")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end